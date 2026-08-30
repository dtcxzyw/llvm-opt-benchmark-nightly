Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/PixelGrid?download=true
inline.NumInlined: 51
inline.NumDeleted: 25
begin_hunk_0_@_ZN8facebook4yoga21roundValueToPixelGridEddbb:bb.a

bb.c:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29
  %i.k = fsub double %i.a, %.0
  %i.l = fadd double %i.k, 1.000000e+00
  br label %bb.i

_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread: ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread, %_ZN8facebook4yoga13inexactEqualsEdd.exit29
  %i.m = fsub double %i.a, %.0                    ; 3 uses
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread
  %i.n = fadd double %i.m, 1.000000e+00
  br label %bb.i

bb.e:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread
  br i1 %3, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = fcmp uno double %.0, 0.000000e+00
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = fcmp ogt double %.0, 5.000000e-01
  br i1 %i.p, label %bb.h, label %_ZN8facebook4yoga13inexactEqualsEdd.exit32

_ZN8facebook4yoga13inexactEqualsEdd.exit32:       ; preds = %bb.g
  %i.q = fadd double %.0, -5.000000e-01
  %i.r = tail call noundef double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp olt double %i.r, 1.000000e-04
  %i.t = select i1 %i.s, double 1.000000e+00, double 0.000000e+00
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN8facebook4yoga13inexactEqualsEdd.exit32, %bb.f
  %i.u = phi double [ 0.000000e+00, %bb.f ], [ 1.000000e+00, %bb.g ], [ %i.t, %_ZN8facebook4yoga13inexactEqualsEdd.exit32 ]
  %i.v = fadd double %i.m, %i.u
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.c, %bb.h, %bb.d, %bb.b
  %.025 = phi double [ %i.g, %bb.b ], [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.v, %bb.h ], [ %i.m, %bb.e ] ; 2 uses
  %or.cond36 = fcmp uno double %.025, %1
  %i.w = fdiv double %.025, %1
  %i.x = fptrunc double %i.w to float
  %i.y = select i1 %or.cond36, float +qnan, float %i.x
  ret float %i.y
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8facebook4yoga29roundLayoutResultsToPixelGridEPNS0_4NodeEdd(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = tail call noundef float @_ZNK8facebook4yoga6Config19getPointScaleFactorEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.e = load float, ptr %i.d, align 8, !tbaa !66
  %i.f = fpext float %i.e to double               ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.h = load float, ptr %i.g, align 4, !tbaa !66
  %i.i = fpext float %i.h to double               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 2 uses
  %i.l = fadd double %1, %i.f                     ; 3 uses
  %i.m = fadd double %2, %i.i                     ; 3 uses
  %i.n = fcmp une float %i.c, 0.000000e+00
  br i1 %i.n, label %bb.b, label %bb.ao

bb.b:                                             ; preds = %bb.a
  %i.o = load float, ptr %i.k, align 4, !tbaa !66
  %i.p = load float, ptr %i.j, align 8, !tbaa !66
  %i.q = fpext float %i.c to double               ; 20 uses
  %i.r = fpext float %i.o to double               ; 2 uses
  %i.s = fadd double %i.m, %i.r
  %i.t = fpext float %i.p to double               ; 2 uses
  %i.u = fadd double %i.l, %i.t
  %i.v = load i8, ptr %0, align 8
  %i.w = and i8 %i.v, 16
  %i.x = icmp ne i8 %i.w, 0                       ; 8 uses
  %i.y = fmul double %i.q, %i.f                   ; 4 uses
  %i.z = tail call double @fmod(double noundef %i.y, double noundef 1.000000e+00) #5 ; 3 uses
  %i.aa = fcmp olt double %i.z, 0.000000e+00
  %i.ab = fadd double %i.z, 1.000000e+00
  %.0.i = select i1 %i.aa, double %i.ab, double %i.z ; 9 uses
  %i.ac = tail call double @llvm.fabs.f64(double %.0.i)
  %i.ad = fcmp olt double %i.ac, 1.000000e-04
  br i1 %i.ad, label %bb.c, label %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.ae = fsub double %i.y, %.0.i
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit

_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i: ; preds = %bb.b
  %or.cond.i27.i = fcmp ord double %.0.i, 0.000000e+00
  br i1 %or.cond.i27.i, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i

_ZN8facebook4yoga13inexactEqualsEdd.exit29.i:     ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i
  %i.af = fadd double %.0.i, -1.000000e+00
  %i.ag = tail call noundef double @llvm.fabs.f64(double %i.af)
  %i.ah = fcmp olt double %i.ag, 1.000000e-04
  br i1 %i.ah, label %bb.d, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i

bb.d:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i
  %i.ai = fsub double %i.y, %.0.i
  %i.aj = fadd double %i.ai, 1.000000e+00
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit

_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i: ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i, %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i
  %i.ak = fsub double %i.y, %.0.i                 ; 2 uses
  br i1 %i.x, label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i
  %i.al = fcmp uno double %.0.i, 0.000000e+00
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = fcmp ogt double %.0.i, 5.000000e-01
  br i1 %i.am, label %bb.g, label %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i

_ZN8facebook4yoga13inexactEqualsEdd.exit32.i:     ; preds = %bb.f
  %i.an = fadd double %.0.i, -5.000000e-01
  %i.ao = tail call noundef double @llvm.fabs.f64(double %i.an)
  %i.ap = fcmp olt double %i.ao, 1.000000e-04
  %i.aq = select i1 %i.ap, double 1.000000e+00, double 0.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i, %bb.f, %bb.e
  %i.ar = phi double [ 0.000000e+00, %bb.e ], [ 1.000000e+00, %bb.f ], [ %i.aq, %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i ]
  %i.as = fadd double %i.ak, %i.ar
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit

_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit: ; preds = %bb.c, %bb.d, %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i, %bb.g
  %.025.i = phi double [ %i.ae, %bb.c ], [ %i.aj, %bb.d ], [ %i.ak, %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i ], [ %i.as, %bb.g ] ; 2 uses
  %or.cond36.i = fcmp uno double %.025.i, %i.q
  %i.at = fdiv double %.025.i, %i.q
  %i.au = fptrunc double %i.at to float
  %i.av = select i1 %or.cond36.i, float +qnan, float %i.au
  tail call void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %0, float noundef %i.av, i32 noundef 0)
  %i.aw = fmul double %i.q, %i.i                  ; 4 uses
  %i.ax = tail call double @fmod(double noundef %i.aw, double noundef 1.000000e+00) #5 ; 3 uses
  %i.ay = fcmp olt double %i.ax, 0.000000e+00
  %i.az = fadd double %i.ax, 1.000000e+00
  %.0.i58 = select i1 %i.ay, double %i.az, double %i.ax ; 9 uses
  %i.ba = tail call double @llvm.fabs.f64(double %.0.i58)
  %i.bb = fcmp olt double %i.ba, 1.000000e-04
  br i1 %i.bb, label %bb.h, label %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i59

bb.h:                                             ; preds = %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit
  %i.bc = fsub double %i.aw, %.0.i58
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit66

_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i59: ; preds = %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit
  %or.cond.i27.i60 = fcmp ord double %.0.i58, 0.000000e+00
  br i1 %or.cond.i27.i60, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i65, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i61

_ZN8facebook4yoga13inexactEqualsEdd.exit29.i65:   ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i59
  %i.bd = fadd double %.0.i58, -1.000000e+00
  %i.be = tail call noundef double @llvm.fabs.f64(double %i.bd)
  %i.bf = fcmp olt double %i.be, 1.000000e-04
  br i1 %i.bf, label %bb.i, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i61

bb.i:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i65
  %i.bg = fsub double %i.aw, %.0.i58
  %i.bh = fadd double %i.bg, 1.000000e+00
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit66

_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i61: ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i65, %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i59
  %i.bi = fsub double %i.aw, %.0.i58              ; 2 uses
  br i1 %i.x, label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit66, label %bb.j

bb.j:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i61
  %i.bj = fcmp uno double %.0.i58, 0.000000e+00
  br i1 %i.bj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = fcmp ogt double %.0.i58, 5.000000e-01
  br i1 %i.bk, label %bb.l, label %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i62

_ZN8facebook4yoga13inexactEqualsEdd.exit32.i62:   ; preds = %bb.k
  %i.bl = fadd double %.0.i58, -5.000000e-01
  %i.bm = tail call noundef double @llvm.fabs.f64(double %i.bl)
  %i.bn = fcmp olt double %i.bm, 1.000000e-04
  %i.bo = select i1 %i.bn, double 1.000000e+00, double 0.000000e+00
  br label %bb.l

bb.l:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i62, %bb.k, %bb.j
  %i.bp = phi double [ 0.000000e+00, %bb.j ], [ 1.000000e+00, %bb.k ], [ %i.bo, %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i62 ]
  %i.bq = fadd double %i.bi, %i.bp
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit66

_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit66: ; preds = %bb.h, %bb.i, %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i61, %bb.l
  %.025.i63 = phi double [ %i.bc, %bb.h ], [ %i.bh, %bb.i ], [ %i.bi, %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i61 ], [ %i.bq, %bb.l ] ; 2 uses
  %or.cond36.i64 = fcmp uno double %.025.i63, %i.q
  %i.br = fdiv double %.025.i63, %i.q
  %i.bs = fptrunc double %i.br to float
  %i.bt = select i1 %or.cond36.i64, float +qnan, float %i.bs
  tail call void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744) %0, float noundef %i.bt, i32 noundef 1)
  %i.bu = fmul double %i.q, %i.t                  ; 4 uses
  %i.bv = tail call double @llvm.round.f64(double %i.bu) ; 3 uses
  %or.cond.i = fcmp ord double %i.bv, %i.bu
  br i1 %or.cond.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit66
  %i.bw = fsub double %i.bv, %i.bu
  %i.bx = tail call noundef double @llvm.fabs.f64(double %i.bw)
  %i.by = fcmp olt double %i.bx, 1.000000e-04
  br label %_ZN8facebook4yoga13inexactEqualsEdd.exit

bb.n:                                             ; preds = %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit66
  %3 = fcmp uno double %i.bv, 0.000000e+00
  %i.bz = fcmp uno double %i.bu, 0.000000e+00
  %spec.select.i = and i1 %i.bz, %3
  br label %_ZN8facebook4yoga13inexactEqualsEdd.exit

_ZN8facebook4yoga13inexactEqualsEdd.exit:         ; preds = %bb.m, %bb.n
  %.0.i67 = phi i1 [ %i.by, %bb.m ], [ %spec.select.i, %bb.n ] ; 2 uses
  %i.ca = xor i1 %.0.i67, true
  %i.cb = fmul double %i.q, %i.r                  ; 4 uses
  %i.cc = tail call double @llvm.round.f64(double %i.cb) ; 3 uses
  %or.cond.i68 = fcmp ord double %i.cc, %i.cb
  br i1 %or.cond.i68, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit
  %i.cd = fsub double %i.cc, %i.cb
  %i.ce = tail call noundef double @llvm.fabs.f64(double %i.cd)
  %i.cf = fcmp olt double %i.ce, 1.000000e-04
  br label %_ZN8facebook4yoga13inexactEqualsEdd.exit70

bb.p:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit
  %4 = fcmp uno double %i.cc, 0.000000e+00
  %i.cg = fcmp uno double %i.cb, 0.000000e+00
  %spec.select.i69 = and i1 %i.cg, %4
  br label %_ZN8facebook4yoga13inexactEqualsEdd.exit70

_ZN8facebook4yoga13inexactEqualsEdd.exit70:       ; preds = %bb.o, %bb.p
  %.0.i70 = phi i1 [ %i.cf, %bb.o ], [ %spec.select.i69, %bb.p ] ; 2 uses
  %i.ch = xor i1 %.0.i70, true
  %i.ci = and i1 %i.x, %i.ca
  %i.cj = and i1 %i.x, %.0.i67
  %i.ck = fmul double %i.u, %i.q                  ; 4 uses
  %i.cl = tail call double @fmod(double noundef %i.ck, double noundef 1.000000e+00) #5 ; 3 uses
  %i.cm = fcmp olt double %i.cl, 0.000000e+00
  %i.cn = fadd double %i.cl, 1.000000e+00
  %.0.i71 = select i1 %i.cm, double %i.cn, double %i.cl ; 9 uses
  %i.co = tail call double @llvm.fabs.f64(double %.0.i71)
  %i.cp = fcmp olt double %i.co, 1.000000e-04
  br i1 %i.cp, label %bb.q, label %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i72

bb.q:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit70
  %i.cq = fsub double %i.ck, %.0.i71
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit79

_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i72: ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit70
  %or.cond.i27.i73 = fcmp ord double %.0.i71, 0.000000e+00
  br i1 %or.cond.i27.i73, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i78, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i74

_ZN8facebook4yoga13inexactEqualsEdd.exit29.i78:   ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i72
  %i.cr = fadd double %.0.i71, -1.000000e+00
  %i.cs = tail call noundef double @llvm.fabs.f64(double %i.cr)
  %i.ct = fcmp olt double %i.cs, 1.000000e-04
  br i1 %i.ct, label %bb.r, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i74

bb.r:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i78
  %i.cu = fsub double %i.ck, %.0.i71
  %i.cv = fadd double %i.cu, 1.000000e+00
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit79

_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i74: ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i78, %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i72
  %i.cw = fsub double %i.ck, %.0.i71              ; 3 uses
  br i1 %i.ci, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i74
  %i.cx = fadd double %i.cw, 1.000000e+00
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit79

bb.t:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i74
  br i1 %i.cj, label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit79, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = fcmp uno double %.0.i71, 0.000000e+00
  br i1 %i.cy, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = fcmp ogt double %.0.i71, 5.000000e-01
  br i1 %i.cz, label %bb.w, label %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i75

_ZN8facebook4yoga13inexactEqualsEdd.exit32.i75:   ; preds = %bb.v
  %i.da = fadd double %.0.i71, -5.000000e-01
  %i.db = tail call noundef double @llvm.fabs.f64(double %i.da)
  %i.dc = fcmp olt double %i.db, 1.000000e-04
  %i.dd = select i1 %i.dc, double 1.000000e+00, double 0.000000e+00
  br label %bb.w

bb.w:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i75, %bb.v, %bb.u
  %i.de = phi double [ 0.000000e+00, %bb.u ], [ 1.000000e+00, %bb.v ], [ %i.dd, %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i75 ]
  %i.df = fadd double %i.cw, %i.de
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit79

_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit79: ; preds = %bb.q, %bb.r, %bb.s, %bb.t, %bb.w
  %.025.i76 = phi double [ %i.cq, %bb.q ], [ %i.cv, %bb.r ], [ %i.cx, %bb.s ], [ %i.df, %bb.w ], [ %i.cw, %bb.t ] ; 2 uses
  %or.cond36.i77 = fcmp uno double %.025.i76, %i.q
  %i.dg = fdiv double %.025.i76, %i.q
  %i.dh = fptrunc double %i.dg to float
  %i.di = select i1 %or.cond36.i77, float +qnan, float %i.dh
  %i.dj = fmul double %i.l, %i.q                  ; 4 uses
  %i.dk = tail call double @fmod(double noundef %i.dj, double noundef 1.000000e+00) #5 ; 3 uses
  %i.dl = fcmp olt double %i.dk, 0.000000e+00
  %i.dm = fadd double %i.dk, 1.000000e+00
  %.0.i80 = select i1 %i.dl, double %i.dm, double %i.dk ; 9 uses
  %i.dn = tail call double @llvm.fabs.f64(double %.0.i80)
  %i.do = fcmp olt double %i.dn, 1.000000e-04
  br i1 %i.do, label %bb.x, label %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i81

bb.x:                                             ; preds = %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit79
  %i.dp = fsub double %i.dj, %.0.i80
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit88

_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i81: ; preds = %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit79
  %or.cond.i27.i82 = fcmp ord double %.0.i80, 0.000000e+00
  br i1 %or.cond.i27.i82, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i87, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i83

_ZN8facebook4yoga13inexactEqualsEdd.exit29.i87:   ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i81
  %i.dq = fadd double %.0.i80, -1.000000e+00
  %i.dr = tail call noundef double @llvm.fabs.f64(double %i.dq)
  %i.ds = fcmp olt double %i.dr, 1.000000e-04
  br i1 %i.ds, label %bb.y, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i83

bb.y:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i87
  %i.dt = fsub double %i.dj, %.0.i80
  %i.du = fadd double %i.dt, 1.000000e+00
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit88

_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i83: ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i87, %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i81
  %i.dv = fsub double %i.dj, %.0.i80              ; 2 uses
  br i1 %i.x, label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit88, label %bb.z

bb.z:                                             ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i83
  %i.dw = fcmp uno double %.0.i80, 0.000000e+00
  br i1 %i.dw, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dx = fcmp ogt double %.0.i80, 5.000000e-01
  br i1 %i.dx, label %bb.ab, label %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i84

_ZN8facebook4yoga13inexactEqualsEdd.exit32.i84:   ; preds = %bb.aa
  %i.dy = fadd double %.0.i80, -5.000000e-01
  %i.dz = tail call noundef double @llvm.fabs.f64(double %i.dy)
  %i.ea = fcmp olt double %i.dz, 1.000000e-04
  %i.eb = select i1 %i.ea, double 1.000000e+00, double 0.000000e+00
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i84, %bb.aa, %bb.z
  %i.ec = phi double [ 0.000000e+00, %bb.z ], [ 1.000000e+00, %bb.aa ], [ %i.eb, %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i84 ]
  %i.ed = fadd double %i.dv, %i.ec
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit88

_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit88: ; preds = %bb.x, %bb.y, %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i83, %bb.ab
  %.025.i85 = phi double [ %i.dp, %bb.x ], [ %i.du, %bb.y ], [ %i.dv, %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i83 ], [ %i.ed, %bb.ab ] ; 2 uses
  %or.cond36.i86 = fcmp uno double %.025.i85, %i.q
  %i.ee = fdiv double %.025.i85, %i.q
  %i.ef = fptrunc double %i.ee to float
  %i.eg = select i1 %or.cond36.i86, float +qnan, float %i.ef
  %i.eh = fsub float %i.di, %i.eg
  store float %i.eh, ptr %i.j, align 8, !tbaa !66
  %i.ei = and i1 %i.x, %i.ch
  %i.ej = and i1 %i.x, %.0.i70
  %i.ek = fmul double %i.s, %i.q                  ; 4 uses
  %i.el = tail call double @fmod(double noundef %i.ek, double noundef 1.000000e+00) #5 ; 3 uses
  %i.em = fcmp olt double %i.el, 0.000000e+00
  %i.en = fadd double %i.el, 1.000000e+00
  %.0.i89 = select i1 %i.em, double %i.en, double %i.el ; 9 uses
  %i.eo = tail call double @llvm.fabs.f64(double %.0.i89)
  %i.ep = fcmp olt double %i.eo, 1.000000e-04
  br i1 %i.ep, label %bb.ac, label %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i90

bb.ac:                                            ; preds = %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit88
  %i.eq = fsub double %i.ek, %.0.i89
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit97

_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i90: ; preds = %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit88
  %or.cond.i27.i91 = fcmp ord double %.0.i89, 0.000000e+00
  br i1 %or.cond.i27.i91, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i96, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i92

_ZN8facebook4yoga13inexactEqualsEdd.exit29.i96:   ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i90
  %i.er = fadd double %.0.i89, -1.000000e+00
  %i.es = tail call noundef double @llvm.fabs.f64(double %i.er)
  %i.et = fcmp olt double %i.es, 1.000000e-04
  br i1 %i.et, label %bb.ad, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i92

bb.ad:                                            ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i96
  %i.eu = fsub double %i.ek, %.0.i89
  %i.ev = fadd double %i.eu, 1.000000e+00
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit97

_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i92: ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i96, %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i90
  %i.ew = fsub double %i.ek, %.0.i89              ; 3 uses
  br i1 %i.ei, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i92
  %i.ex = fadd double %i.ew, 1.000000e+00
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit97

bb.af:                                            ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i92
  br i1 %i.ej, label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit97, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ey = fcmp uno double %.0.i89, 0.000000e+00
  br i1 %i.ey, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ez = fcmp ogt double %.0.i89, 5.000000e-01
  br i1 %i.ez, label %bb.ai, label %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i93

_ZN8facebook4yoga13inexactEqualsEdd.exit32.i93:   ; preds = %bb.ah
  %i.fa = fadd double %.0.i89, -5.000000e-01
  %i.fb = tail call noundef double @llvm.fabs.f64(double %i.fa)
  %i.fc = fcmp olt double %i.fb, 1.000000e-04
  %i.fd = select i1 %i.fc, double 1.000000e+00, double 0.000000e+00
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i93, %bb.ah, %bb.ag
  %i.fe = phi double [ 0.000000e+00, %bb.ag ], [ 1.000000e+00, %bb.ah ], [ %i.fd, %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i93 ]
  %i.ff = fadd double %i.ew, %i.fe
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit97

_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit97: ; preds = %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ai
  %.025.i94 = phi double [ %i.eq, %bb.ac ], [ %i.ev, %bb.ad ], [ %i.ex, %bb.ae ], [ %i.ff, %bb.ai ], [ %i.ew, %bb.af ] ; 2 uses
  %or.cond36.i95 = fcmp uno double %.025.i94, %i.q
  %i.fg = fdiv double %.025.i94, %i.q
  %i.fh = fptrunc double %i.fg to float
  %i.fi = select i1 %or.cond36.i95, float +qnan, float %i.fh
  %i.fj = fmul double %i.m, %i.q                  ; 4 uses
  %i.fk = tail call double @fmod(double noundef %i.fj, double noundef 1.000000e+00) #5 ; 3 uses
  %i.fl = fcmp olt double %i.fk, 0.000000e+00
  %i.fm = fadd double %i.fk, 1.000000e+00
  %.0.i98 = select i1 %i.fl, double %i.fm, double %i.fk ; 9 uses
  %i.fn = tail call double @llvm.fabs.f64(double %.0.i98)
  %i.fo = fcmp olt double %i.fn, 1.000000e-04
  br i1 %i.fo, label %bb.aj, label %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i99

bb.aj:                                            ; preds = %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit97
  %i.fp = fsub double %i.fj, %.0.i98
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit106

_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i99: ; preds = %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit97
  %or.cond.i27.i100 = fcmp ord double %.0.i98, 0.000000e+00
  br i1 %or.cond.i27.i100, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i105, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i101

_ZN8facebook4yoga13inexactEqualsEdd.exit29.i105:  ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i99
  %i.fq = fadd double %.0.i98, -1.000000e+00
  %i.fr = tail call noundef double @llvm.fabs.f64(double %i.fq)
  %i.fs = fcmp olt double %i.fr, 1.000000e-04
  br i1 %i.fs, label %bb.ak, label %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i101

bb.ak:                                            ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i105
  %i.ft = fsub double %i.fj, %.0.i98
  %i.fu = fadd double %i.ft, 1.000000e+00
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit106

_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i101: ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.i105, %_ZN8facebook4yoga13inexactEqualsEdd.exit.thread.i99
  %i.fv = fsub double %i.fj, %.0.i98              ; 2 uses
  br i1 %i.x, label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit106, label %bb.al

bb.al:                                            ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i101
  %i.fw = fcmp uno double %.0.i98, 0.000000e+00
  br i1 %i.fw, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fx = fcmp ogt double %.0.i98, 5.000000e-01
  br i1 %i.fx, label %bb.an, label %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i102

_ZN8facebook4yoga13inexactEqualsEdd.exit32.i102:  ; preds = %bb.am
  %i.fy = fadd double %.0.i98, -5.000000e-01
  %i.fz = tail call noundef double @llvm.fabs.f64(double %i.fy)
  %i.ga = fcmp olt double %i.fz, 1.000000e-04
  %i.gb = select i1 %i.ga, double 1.000000e+00, double 0.000000e+00
  br label %bb.an

bb.an:                                            ; preds = %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i102, %bb.am, %bb.al
  %i.gc = phi double [ 0.000000e+00, %bb.al ], [ 1.000000e+00, %bb.am ], [ %i.gb, %_ZN8facebook4yoga13inexactEqualsEdd.exit32.i102 ]
  %i.gd = fadd double %i.fv, %i.gc
  br label %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit106

_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit106: ; preds = %bb.aj, %bb.ak, %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i101, %bb.an
  %.025.i103 = phi double [ %i.fp, %bb.aj ], [ %i.fu, %bb.ak ], [ %i.fv, %_ZN8facebook4yoga13inexactEqualsEdd.exit29.thread.i101 ], [ %i.gd, %bb.an ] ; 2 uses
  %or.cond36.i104 = fcmp uno double %.025.i103, %i.q
  %i.ge = fdiv double %.025.i103, %i.q
  %i.gf = fptrunc double %i.ge to float
  %i.gg = select i1 %or.cond36.i104, float +qnan, float %i.gf
  %i.gh = fsub float %i.fi, %i.gg
  store float %i.gh, ptr %i.k, align 4, !tbaa !66
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN8facebook4yoga21roundValueToPixelGridEddbb.exit106, %bb.a
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !67 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !67 ; 2 uses
  %i.gm = icmp eq ptr %i.gj, %i.gl
  br i1 %i.gm, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.aq, %bb.ao
  ret void

.lr.ph:                                           ; preds = %bb.ao, %bb.aq
  %.sroa.0107.0110 = phi ptr [ %i.gq, %bb.aq ], [ %i.gj, %bb.ao ] ; 2 uses
  %i.gn = load ptr, ptr %.sroa.0107.0110, align 8, !tbaa !68 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 688
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !69
  %.not = icmp eq ptr %i.gp, %0
  br i1 %.not, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph
  tail call void @_ZN8facebook4yoga29roundLayoutResultsToPixelGridEPNS0_4NodeEdd(ptr noundef nonnull %i.gn, double noundef %i.l, double noundef %i.m)
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph, %bb.ap
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0107.0110, i64 8 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.gl
  br i1 %i.gr, label %._crit_edge, label %.lr.ph
}

declare noundef float @_ZNK8facebook4yoga6Config19getPointScaleFactorEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare void @_ZN8facebook4yoga4Node17setLayoutPositionEfNS0_12PhysicalEdgeE(ptr noundef nonnull align 8 dereferenceable(744), float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !64, i64 720}
!10 = !{!"_ZTSN8facebook4yoga4NodeE", !11, i64 0, !11, i64 0, !11, i64 0, !11, i64 0, !12, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !14, i64 32, !14, i64 36, !13, i64 40, !13, i64 48, !16, i64 56, !51, i64 336, !43, i64 672, !43, i64 680, !57, i64 688, !58, i64 696, !64, i64 720, !65, i64 728}
!11 = !{!"bool", !7, i64 0}
!12 = !{!"_ZTSN8facebook4yoga8NodeTypeE", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"_ZTSN8facebook4yoga13FloatOptionalE", !15, i64 0}
!15 = !{!"float", !7, i64 0}
!16 = !{!"_ZTSN8facebook4yoga5StyleE", !17, i64 0, !18, i64 0, !19, i64 0, !19, i64 1, !19, i64 1, !20, i64 2, !20, i64 2, !20, i64 3, !21, i64 3, !22, i64 3, !23, i64 4, !24, i64 4, !25, i64 4, !26, i64 5, !26, i64 7, !26, i64 9, !26, i64 11, !28, i64 13, !28, i64 31, !28, i64 49, !28, i64 67, !29, i64 85, !30, i64 91, !30, i64 95, !30, i64 99, !26, i64 103, !31, i64 112, !31, i64 136, !31, i64 160, !31, i64 184, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !38, i64 240}
!17 = !{!"_ZTSN8facebook4yoga9DirectionE", !7, i64 0}
!18 = !{!"_ZTSN8facebook4yoga13FlexDirectionE", !7, i64 0}
!19 = !{!"_ZTSN8facebook4yoga7JustifyE", !7, i64 0}
!20 = !{!"_ZTSN8facebook4yoga5AlignE", !7, i64 0}
!21 = !{!"_ZTSN8facebook4yoga12PositionTypeE", !7, i64 0}
!22 = !{!"_ZTSN8facebook4yoga4WrapE", !7, i64 0}
end_hunk_0
