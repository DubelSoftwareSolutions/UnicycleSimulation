#include <cvodes/cvodes.h>           
#include <nvector/nvector_serial.h>  
#include <cvodes/cvodes_dense.h>           

#define TB       RCONST(0.0)  // start time [s]  
#define T        RCONST(1.0)  // time horizon [s]

#define RELTOL   RCONST(1.0e-3)
#define ABSTOL   RCONST(1.0e-4)

#define Q0_1     RCONST(10.0)       
#define Q0_2     RCONST(0.0)
#define Q0_3     RCONST(M_PI/2)

#define U0_1     RCONST(2.0)  // Initial control 
#define U0_2     RCONST(1.0)

#define M        2            // control dimention
#define N        3            // state dimention

typedef struct {
  realtype u[M];
} sPrm;

static int  fun(realtype t, N_Vector q, N_Vector dq, void *prm);

int main(){
  N_Vector  q;

  realtype *data, t, x, y, phi;
  void     *cvode_mem;
  int       err;
  sPrm      prm;

  /* Allocate state vector q */
  q = N_VNew_Serial(N);
  if(q == NULL){
    exit(EXIT_FAILURE);
  }
  data = NV_DATA_S(q);
  data[0] = Q0_1;
  data[1] = Q0_2;
  data[2] = Q0_3;
  prm.u[0] = U0_1;
  prm.u[1] = U0_2;

  cvode_mem = CVodeCreate(CV_ADAMS, CV_FUNCTIONAL);
  if(cvode_mem == NULL){
    exit(EXIT_FAILURE);
  }

  err = CVodeInit(cvode_mem, fun, TB, q);
  err = CVodeSStolerances(cvode_mem, RELTOL, ABSTOL);
  err = CVodeSetUserData(cvode_mem, &prm);
  err = CVDense(cvode_mem, N);
  err = CVode(cvode_mem, T, q, &t, CV_NORMAL);  
  x = NV_Ith_S(q,0);
  y = NV_Ith_S(q,1);
  phi = NV_Ith_S(q,2);
  N_VDestroy_Serial(q);
  CVodeFree(&cvode_mem);
}


int fun(realtype t, N_Vector q, N_Vector dq, void *prm)
{
  realtype  x, y, phi;
  realtype  dx, dy, dphi;
  realtype  u1, u2;
  sPrm     *lprm;
  
  x = NV_Ith_S(q,0);
  y = NV_Ith_S(q,1);
  phi = NV_Ith_S(q,2);

  lprm = (sPrm*)prm;
  u1 = lprm->u[0];
  u2 = lprm->u[1];

  dx = cos(phi) * u1;
  dy = sin(phi) * u1;
  dphi = u2;

  NV_Ith_S(dq,0) = dx;
  NV_Ith_S(dq,1) = dy;
  NV_Ith_S(dq,2) = dphi;
  return 0;
}
