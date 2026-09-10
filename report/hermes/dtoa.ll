Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/dtoa?download=true
inline.NumInlined: 101
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@hermes_g_strtod:bb.a
._crit_edge904.loopexit.i.unr-lcssa:              ; preds = %.lr.ph903.i
  %lcmp.mod678.not = icmp eq i32 %xtraiter676, 0
  br i1 %lcmp.mod678.not, label %._crit_edge904.loopexit.i, label %.lr.ph903.i.epil.preheader

.lr.ph903.i.epil.preheader:                       ; preds = %._crit_edge904.loopexit.i.unr-lcssa, %.lr.ph903.i.preheader
  %.4424901.i.epil.init = phi i32 [ %.2422.i, %.lr.ph903.i.preheader ], [ %.5425.i.1, %._crit_edge904.loopexit.i.unr-lcssa ] ; 2 uses
  %.4430900.i.epil.init = phi i32 [ %.2428.i, %.lr.ph903.i.preheader ], [ %.5431.i.1, %._crit_edge904.loopexit.i.unr-lcssa ] ; 2 uses
  %.3482899.i.epil.init = phi i32 [ %.1480.i, %.lr.ph903.i.preheader ], [ %i.cc, %._crit_edge904.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod681 = trunc i32 %.1468.i to i1
  call void @llvm.assume(i1 %lcmp.mod681)
  %i.ci = icmp slt i32 %.3482899.i.epil.init, 9
  %i.cj = mul i32 %.4430900.i.epil.init, 10
  %i.ck = mul i32 %.4424901.i.epil.init, 10
  %.5431.i.epil = select i1 %i.ci, i32 %i.cj, i32 %.4430900.i.epil.init
  %i.cl = add i32 %.3482899.i.epil.init, -17
  %i.cm = icmp ult i32 %i.cl, -8
  %.5425.i.epil = select i1 %i.cm, i32 %.4424901.i.epil.init, i32 %i.ck
  br label %._crit_edge904.loopexit.i

._crit_edge904.loopexit.i:                        ; preds = %._crit_edge904.loopexit.i.unr-lcssa, %.lr.ph903.i.epil.preheader
  %.5431.i.lcssa = phi i32 [ %.5431.i.1, %._crit_edge904.loopexit.i.unr-lcssa ], [ %.5431.i.epil, %.lr.ph903.i.epil.preheader ]
  %.5425.i.lcssa = phi i32 [ %.5425.i.1, %._crit_edge904.loopexit.i.unr-lcssa ], [ %.5425.i.epil, %.lr.ph903.i.epil.preheader ]
  %i.cn = add i32 %.1468.i, %.1480.i
  br label %._crit_edge904.i

._crit_edge904.i:                                 ; preds = %._crit_edge904.loopexit.i, %bb.l
  %.3482.lcssa.i = phi i32 [ %.1480.i, %bb.l ], [ %i.cn, %._crit_edge904.loopexit.i ] ; 3 uses
  %.4430.lcssa.i = phi i32 [ %.2428.i, %bb.l ], [ %.5431.i.lcssa, %._crit_edge904.loopexit.i ] ; 3 uses
  %.4424.lcssa.i = phi i32 [ %.2422.i, %bb.l ], [ %.5425.i.lcssa, %._crit_edge904.loopexit.i ] ; 3 uses
  %i.co = add nsw i32 %.3482.lcssa.i, 1           ; 3 uses
  %i.cp = icmp slt i32 %.3482.lcssa.i, 9
  br i1 %i.cp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge904.i.thread, %._crit_edge904.i
  %i.cq = phi i32 [ 1, %._crit_edge904.i.thread ], [ %i.co, %._crit_edge904.i ]
  %.4424.lcssa.i62 = phi i32 [ 0, %._crit_edge904.i.thread ], [ %.4424.lcssa.i, %._crit_edge904.i ]
  %.4430.lcssa.i61 = phi i32 [ 0, %._crit_edge904.i.thread ], [ %.4430.lcssa.i, %._crit_edge904.i ]
  %i.cr = phi i32 [ %i.bt, %._crit_edge904.i.thread ], [ %i.bm, %._crit_edge904.i ]
  %.1444.i274360 = phi ptr [ %.5451.lcssa.i, %._crit_edge904.i.thread ], [ %.0443.i, %._crit_edge904.i ]
  %.7453.i254459 = phi ptr [ %.5451.lcssa.i, %._crit_edge904.i.thread ], [ %.6452.i, %._crit_edge904.i ]
  %.sroa.0.1.i204558 = phi i32 [ %i.br, %._crit_edge904.i.thread ], [ %.sroa.0.0.i, %._crit_edge904.i ]
  %.sroa.6.1.i184657 = phi i32 [ %i.bs, %._crit_edge904.i.thread ], [ %.sroa.6.0.i, %._crit_edge904.i ]
  %.0479.lcssa115711741184.i164756 = phi i32 [ 0, %._crit_edge904.i.thread ], [ %.0479.lcssa115711741185.i, %._crit_edge904.i ]
  %i.cs = phi i32 [ 1, %._crit_edge904.i.thread ], [ %i.bl, %._crit_edge904.i ]
  %i.ct = phi i32 [ %i.bu, %._crit_edge904.i.thread ], [ %i.bv, %._crit_edge904.i ]
  %i.cu = mul i32 %.4430.lcssa.i61, 10
  %i.cv = add i32 %i.cu, %i.cr
  br label %bb.p

bb.n:                                             ; preds = %._crit_edge904.i
  %i.cw = icmp samesign ult i32 %.3482.lcssa.i, 17
  br i1 %i.cw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cx = mul i32 %.4424.lcssa.i, 10
  %i.cy = add i32 %i.cx, %i.bm
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %.1444.i28 = phi ptr [ %.0443.i, %bb.k ], [ %.0443.i, %bb.n ], [ %.0443.i, %bb.o ], [ %.1444.i274360, %bb.m ]
  %.7453.i26 = phi ptr [ %.6452.i, %bb.k ], [ %.6452.i, %bb.n ], [ %.6452.i, %bb.o ], [ %.7453.i254459, %bb.m ]
  %.sroa.0.1.i21 = phi i32 [ %.sroa.0.0.i, %bb.k ], [ %.sroa.0.0.i, %bb.n ], [ %.sroa.0.0.i, %bb.o ], [ %.sroa.0.1.i204558, %bb.m ]
  %.sroa.6.1.i19 = phi i32 [ %.sroa.6.0.i, %bb.k ], [ %.sroa.6.0.i, %bb.n ], [ %.sroa.6.0.i, %bb.o ], [ %.sroa.6.1.i184657, %bb.m ]
  %.0479.lcssa115711741184.i17 = phi i32 [ %.0479.lcssa115711741185.i, %bb.k ], [ %.0479.lcssa115711741185.i, %bb.n ], [ %.0479.lcssa115711741185.i, %bb.o ], [ %.0479.lcssa115711741184.i164756, %bb.m ]
  %i.cz = phi i32 [ %i.bl, %bb.k ], [ %i.bl, %bb.n ], [ %i.bl, %bb.o ], [ %i.cs, %bb.m ]
  %.4483.i = phi i32 [ %.1480.i, %bb.k ], [ %i.co, %bb.n ], [ %i.co, %bb.o ], [ %i.cq, %bb.m ]
  %.2474.i = phi i32 [ %.0472.i, %bb.k ], [ %i.bv, %bb.n ], [ %i.bv, %bb.o ], [ %i.ct, %bb.m ]
  %.3470.i = phi i32 [ %i.bo, %bb.k ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.m ]
  %.3464.i = phi i32 [ %.1462.i, %bb.k ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.m ]
  %.7433.i = phi i32 [ %.2428.i, %bb.k ], [ %.4430.lcssa.i, %bb.n ], [ %.4430.lcssa.i, %bb.o ], [ %i.cv, %bb.m ]
  %.7.i = phi i32 [ %.2422.i, %bb.k ], [ %.4424.lcssa.i, %bb.n ], [ %i.cy, %bb.o ], [ %.4424.lcssa.i62, %bb.m ]
  %i.da = getelementptr inbounds nuw i8, ptr %.7453.i26, i64 1
  br label %bb.j, !llvm.loop !34

bb.q:                                             ; preds = %bb.j, %._crit_edge893.i, %.critedge.thread.i, %.critedge.i
  %.0479.lcssa11571173.i = phi i32 [ %.0479.lcssa115711741185.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %i.ad, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 2 uses
  %.sroa.12.0.i = phi i32 [ %i.bl, %bb.j ], [ 1, %._crit_edge893.i ], [ 0, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 3 uses
  %.sroa.6.2.i = phi i32 [ %.sroa.6.0.i, %bb.j ], [ 1, %._crit_edge893.i ], [ %i.am, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 3 uses
  %.sroa.0.2.i = phi i32 [ %.sroa.0.0.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %i.am, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %.3509.i = phi i32 [ %.1507.i, %bb.j ], [ %.0506.lcssa.i, %._crit_edge893.i ], [ %i.ag, %.critedge.i ], [ %i.r, %.critedge.thread.i ]
  %.5484.i = phi i32 [ %.1480.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %i.ad, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 14 uses
  %.3475.i = phi i32 [ %.0472.i, %bb.j ], [ 0, %._crit_edge893.i ], [ 0, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %.4471.i = phi i32 [ %.1468.i, %bb.j ], [ %.0467.lcssa.i, %._crit_edge893.i ], [ 0, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 2 uses
  %.4465.i = phi i32 [ %.1462.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %.0461.lcssa.i.ph, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %.8454.i = phi ptr [ %.6452.i, %bb.j ], [ %.5451.lcssa.i, %._crit_edge893.i ], [ %i.ae, %.critedge.i ], [ %.3449.i, %.critedge.thread.i ] ; 7 uses
  %.2445.i = phi ptr [ %.0443.i, %bb.j ], [ %.3449.i, %._crit_edge893.i ], [ %.3449.i, %.critedge.i ], [ %.3449.i, %.critedge.thread.i ] ; 15 uses
  %.8434.i = phi i32 [ %.2428.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %.1427.i, %.critedge.i ], [ 0, %.critedge.thread.i ] ; 5 uses
  %.8.i = phi i32 [ %.2422.i, %bb.j ], [ 0, %._crit_edge893.i ], [ %.1421.i, %.critedge.i ], [ 0, %.critedge.thread.i ]
  %i.db = and i32 %.3509.i, -33
  %or.cond3.i = icmp eq i32 %i.db, 69
  br i1 %or.cond3.i, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.dc = icmp ne i32 %.5484.i, 0
  %i.dd = icmp ne i32 %.4471.i, 0
  %or.cond5.i = select i1 %i.dc, i1 true, i1 %i.dd
  %or.cond7.i = or i1 %i.n, %or.cond5.i
  br i1 %or.cond7.i, label %bb.s, label %.loopexit750.i

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr inbounds nuw i8, ptr %.8454.i, i64 1 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !19  ; 2 uses
  switch i8 %i.df, label %bb.v [
    i8 45, label %bb.t
    i8 43, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dg = phi i1 [ false, %bb.t ], [ true, %bb.s ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.8454.i, i64 2 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !19
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.4510.in.i = phi i8 [ %i.df, %bb.s ], [ %i.di, %bb.u ] ; 3 uses
  %.1500.i = phi i1 [ true, %bb.s ], [ %i.dg, %bb.u ]
  %.9455.i = phi ptr [ %i.de, %bb.s ], [ %i.dh, %bb.u ] ; 2 uses
  %i.dj = add i8 %.4510.in.i, -48
  %or.cond9.i = icmp ult i8 %i.dj, 10
  br i1 %or.cond9.i, label %.preheader746.i, label %bb.x

.preheader746.i:                                  ; preds = %bb.v
  %i.dk = icmp eq i8 %.4510.in.i, 48
  br i1 %i.dk, label %.lr.ph909.i, label %._crit_edge910.i

.lr.ph909.i:                                      ; preds = %.preheader746.i, %.lr.ph909.i
  %.10456908.i = phi ptr [ %i.dl, %.lr.ph909.i ], [ %.9455.i, %.preheader746.i ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.10456908.i, i64 1 ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !19  ; 2 uses
  %i.dn = icmp eq i8 %i.dm, 48
  br i1 %i.dn, label %.lr.ph909.i, label %._crit_edge910.i, !llvm.loop !35

._crit_edge910.i:                                 ; preds = %.lr.ph909.i, %.preheader746.i
  %.5511.in.lcssa.i = phi i8 [ %.4510.in.i, %.preheader746.i ], [ %i.dm, %.lr.ph909.i ] ; 2 uses
  %.10456.lcssa.i = phi ptr [ %.9455.i, %.preheader746.i ], [ %i.dl, %.lr.ph909.i ] ; 3 uses
  %i.do = add i8 %.5511.in.lcssa.i, -49
  %or.cond11.i = icmp ult i8 %i.do, 9
  br i1 %or.cond11.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge910.i
  %narrow.i = add nsw i8 %.5511.in.lcssa.i, -48
  %i.dp = zext nneg i8 %narrow.i to i32           ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.10456.lcssa.i, i64 1 ; 3 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !19  ; 2 uses
  %i.ds = add i8 %i.dr, -48
  %i.dt = icmp ult i8 %i.ds, 10
  br i1 %i.dt, label %.lr.ph915.i, label %._crit_edge916.i

.lr.ph915.i:                                      ; preds = %bb.w, %.lr.ph915.i
  %i.du = phi i8 [ %i.eb, %.lr.ph915.i ], [ %i.dr, %bb.w ]
  %i.dv = phi ptr [ %i.ea, %.lr.ph915.i ], [ %i.dq, %bb.w ]
  %.0435913.i = phi i32 [ %i.dz, %.lr.ph915.i ], [ %i.dp, %bb.w ]
  %i.dw = zext nneg i8 %i.du to i32
  %i.dx = mul i32 %.0435913.i, 10
  %i.dy = add nsw i32 %i.dw, -48
  %i.dz = add i32 %i.dy, %i.dx                    ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 3 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !19  ; 2 uses
  %i.ec = add i8 %i.eb, -48
  %i.ed = icmp ult i8 %i.ec, 10
  br i1 %i.ed, label %.lr.ph915.i, label %._crit_edge916.loopexit.i, !llvm.loop !36

._crit_edge916.loopexit.i:                        ; preds = %.lr.ph915.i
  %i.ee = call i32 @llvm.umin.i32(i32 %i.dz, i32 19999)
  br label %._crit_edge916.i

._crit_edge916.i:                                 ; preds = %._crit_edge916.loopexit.i, %bb.w
  %.0435.lcssa.i = phi i32 [ %i.dp, %bb.w ], [ %i.ee, %._crit_edge916.loopexit.i ]
  %.lcssa861.i = phi ptr [ %i.dq, %bb.w ], [ %i.ea, %._crit_edge916.loopexit.i ] ; 2 uses
  %i.ef = ptrtoint ptr %.lcssa861.i to i64
  %i.eg = ptrtoint ptr %.10456.lcssa.i to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = icmp sgt i64 %i.eh, 8
  %..0435.i = select i1 %i.ei, i32 19999, i32 %.0435.lcssa.i ; 2 uses
  %i.ej = sub nsw i32 0, %..0435.i
  %spec.select606.i = select i1 %.1500.i, i32 %..0435.i, i32 %i.ej
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge916.i, %._crit_edge910.i, %bb.v, %bb.q
  %.0521.i = phi ptr [ %.8454.i, %bb.v ], [ %.8454.i, %._crit_edge916.i ], [ %0, %bb.q ], [ %.8454.i, %._crit_edge910.i ]
  %.1504.i = phi i32 [ 0, %bb.v ], [ %spec.select606.i, %._crit_edge916.i ], [ 0, %bb.q ], [ 0, %._crit_edge910.i ]
  %.12.i = phi ptr [ %.8454.i, %bb.v ], [ %.lcssa861.i, %._crit_edge916.i ], [ %.8454.i, %bb.q ], [ %.10456.lcssa.i, %._crit_edge910.i ] ; 9 uses
  %.not556.i = icmp eq i32 %.5484.i, 0
  br i1 %.not556.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ek = icmp ne i32 %.4471.i, 0
  %or.cond15.i = or i1 %i.n, %i.ek                ; 2 uses
  %spec.select607.i = select i1 %or.cond15.i, i32 %.1459.i, i32 0
  %spec.select608.i = select i1 %or.cond15.i, ptr %.12.i, ptr %.0521.i
  br label %.loopexit750.i

bb.z:                                             ; preds = %bb.x
  %i.el = sub nsw i32 %.1504.i, %.3475.i          ; 12 uses
  %.not557.i = icmp eq i32 %.0479.lcssa11571173.i, 0
  %spec.select597.i = select i1 %.not557.i, i32 %.5484.i, i32 %.0479.lcssa11571173.i ; 6 uses
  %i.em = call i32 @llvm.smin.i32(i32 %.5484.i, i32 17) ; 2 uses
  %i.en = uitofp i32 %.8434.i to double           ; 3 uses
  store double %i.en, ptr %2, align 8, !tbaa !19
  %i.eo = icmp sgt i32 %.5484.i, 9
  br i1 %i.eo, label %bb.aa, label %.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.ep = zext nneg i32 %i.em to i64
  %i.eq = getelementptr [8 x i8], ptr @tens, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 -72
  %i.es = load double, ptr %i.er, align 8, !tbaa !21
  %i.et = uitofp i32 %.8.i to double
  %i.eu = call double @llvm.fmuladd.f64(double %i.es, double %i.en, double %i.et) ; 3 uses
  store double %i.eu, ptr %2, align 8, !tbaa !19
  %i.ev = icmp samesign ult i32 %.5484.i, 16
  br i1 %i.ev, label %.thread.i, label %bb.aj

.thread.i:                                        ; preds = %bb.aa, %bb.z
  %i.ew = phi double [ %i.en, %bb.z ], [ %i.eu, %bb.aa ] ; 6 uses
  %i.ex = call i32 @llvm.get.rounding()
  %i.ey = icmp eq i32 %i.ex, 1
  br i1 %i.ey, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %.thread.i
  %.not558.i = icmp eq i32 %i.el, 0
  br i1 %.not558.i, label %.loopexit750.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ez = icmp sgt i32 %i.el, 0
  br i1 %i.ez, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.fa = icmp samesign ult i32 %i.el, 23
  br i1 %i.fa, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fb = zext nneg i32 %i.el to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.fb
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !21
  %i.fe = fmul double %i.ew, %i.fd
  store double %i.fe, ptr %2, align 8, !tbaa !19
  br label %.loopexit750.i

bb.af:                                            ; preds = %bb.ad
  %i.ff = sub i32 37, %.5484.i
  %.not559.i = icmp sgt i32 %i.el, %i.ff
  br i1 %.not559.i, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fg = sub nsw i32 15, %.5484.i                ; 2 uses
  %i.fh = sub nuw nsw i32 %i.el, %i.fg
  %i.fi = zext nneg i32 %i.fg to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.fi
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !21
  %i.fl = fmul double %i.ew, %i.fk
  %i.fm = zext nneg i32 %i.fh to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.fm
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !21
  %i.fp = fmul double %i.fl, %i.fo
  store double %i.fp, ptr %2, align 8, !tbaa !19
  br label %.loopexit750.i

bb.ah:                                            ; preds = %bb.ac
  %i.fq = icmp samesign ugt i32 %i.el, -23
  br i1 %i.fq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fr = sub nsw i32 0, %i.el
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !21
  %i.fv = fdiv double %i.ew, %i.fu
  store double %i.fv, ptr %2, align 8, !tbaa !19
  br label %.loopexit750.i

bb.aj:                                            ; preds = %bb.ah, %bb.af, %.thread.i, %bb.aa
  %i.fw = phi double [ %i.ew, %bb.af ], [ %i.ew, %bb.ah ], [ %i.ew, %.thread.i ], [ %i.eu, %bb.aa ] ; 4 uses
  %i.fx = sub nsw i32 %.5484.i, %i.em
  %i.fy = add nsw i32 %i.el, %i.fx                ; 7 uses
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %bb.ak, label %bb.bk

bb.ak:                                            ; preds = %bb.aj
  %i.ga = and i32 %i.fy, 15                       ; 2 uses
  %.not566.i = icmp eq i32 %i.ga, 0
  br i1 %.not566.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.gb
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !21
  %i.ge = fmul double %i.fw, %i.gd                ; 2 uses
  store double %i.ge, ptr %2, align 8, !tbaa !19
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.promoted1337.i = phi double [ %i.ge, %bb.al ], [ %i.fw, %bb.ak ] ; 2 uses
  %i.gf = and i32 %i.fy, 2147483632               ; 2 uses
  %.not567.i = icmp eq i32 %i.gf, 0
  br i1 %.not567.i, label %bb.cb, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gg = icmp samesign ugt i32 %i.gf, 308
  br i1 %i.gg, label %.loopexit.i, label %bb.be

.loopexit.i:                                      ; preds = %bb.fi, %bigcomp.exit.i, %bb.ej, %._crit_edge926.i, %bb.an
  %.0415.i = phi ptr [ undef, %bb.an ], [ undef, %._crit_edge926.i ], [ %.4419.i, %bigcomp.exit.i ], [ %.4419.i, %bb.ej ], [ %.4419.i, %bb.fi ]
  %.0410.i = phi ptr [ undef, %bb.an ], [ undef, %._crit_edge926.i ], [ %.4414.i, %bigcomp.exit.i ], [ %.4414.i, %bb.ej ], [ %.4414.i, %bb.fi ]
  %.0407.i = phi ptr [ null, %bb.an ], [ null, %._crit_edge926.i ], [ null, %bigcomp.exit.i ], [ %.231.lcssa.i.i, %bb.ej ], [ %.231.lcssa.i.i, %bb.fi ]
  %.0402.i = phi ptr [ undef, %bb.an ], [ undef, %._crit_edge926.i ], [ %.4406.i, %bigcomp.exit.i ], [ %.4406.i, %bb.ej ], [ %.4406.i, %bb.fi ]
  %.0401.i = phi ptr [ undef, %bb.an ], [ undef, %._crit_edge926.i ], [ %.5.i, %bigcomp.exit.i ], [ %i.td, %bb.ej ], [ %i.td, %bb.fi ]
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 2146435072, ptr %i.gh, align 4, !tbaa !19
  store i32 0, ptr %2, align 8, !tbaa !19
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ca, %.loopexit.i
  %.1416.i = phi ptr [ %.0415.i, %.loopexit.i ], [ %.2417.i, %bb.ca ] ; 5 uses
  %.1411.i = phi ptr [ %.0410.i, %.loopexit.i ], [ %.2412.i, %bb.ca ] ; 5 uses
  %.1408.i = phi ptr [ %.0407.i, %.loopexit.i ], [ %.2409.i, %bb.ca ] ; 5 uses
  %.1403.i = phi ptr [ %.0402.i, %.loopexit.i ], [ %.2404.i, %bb.ca ] ; 5 uses
  %.1.i = phi ptr [ %.0401.i, %.loopexit.i ], [ %.2.i, %bb.ca ] ; 5 uses
  %.not592.i = icmp eq ptr %.1408.i, null
  br i1 %.not592.i, label %Bfree.exit622.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not.i.i = icmp eq ptr %.1416.i, null
  br i1 %.not.i.i, label %Bfree.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gi = getelementptr inbounds nuw i8, ptr %.1416.i, i64 8
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !22 ; 2 uses
  %i.gk = icmp sgt i32 %i.gj, 7
  br i1 %i.gk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @free(ptr noundef nonnull %.1416.i) #17
  br label %Bfree.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gm = sext i32 %i.gj to i64
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gl, i64 %i.gm ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !15
  store ptr %i.go, ptr %.1416.i, align 8, !tbaa !17
  store ptr %.1416.i, ptr %i.gn, align 8, !tbaa !15
  br label %Bfree.exit.i

Bfree.exit.i:                                     ; preds = %bb.as, %bb.ar, %bb.ap
  %.not.i615.i = icmp eq ptr %.1411.i, null
  br i1 %.not.i615.i, label %Bfree.exit616.i, label %bb.at

bb.at:                                            ; preds = %Bfree.exit.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.1411.i, i64 8
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !22 ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, 7
  br i1 %i.gr, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %.1411.i) #17
  br label %Bfree.exit616.i

bb.av:                                            ; preds = %bb.at
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gt = sext i32 %i.gq to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.gt ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !15
  store ptr %i.gv, ptr %.1411.i, align 8, !tbaa !17
  store ptr %.1411.i, ptr %i.gu, align 8, !tbaa !15
  br label %Bfree.exit616.i

Bfree.exit616.i:                                  ; preds = %bb.av, %bb.au, %Bfree.exit.i
  %.not.i617.i = icmp eq ptr %.1403.i, null
  br i1 %.not.i617.i, label %Bfree.exit618.i, label %bb.aw

bb.aw:                                            ; preds = %Bfree.exit616.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.1403.i, i64 8
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !22 ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, 7
  br i1 %i.gy, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @free(ptr noundef nonnull %.1403.i) #17
  br label %Bfree.exit618.i

bb.ay:                                            ; preds = %bb.aw
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ha = sext i32 %i.gx to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.ha ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !15
  store ptr %i.hc, ptr %.1403.i, align 8, !tbaa !17
  store ptr %.1403.i, ptr %i.hb, align 8, !tbaa !15
  br label %Bfree.exit618.i

Bfree.exit618.i:                                  ; preds = %bb.ay, %bb.ax, %Bfree.exit616.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.1408.i, i64 8
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !22 ; 2 uses
  %i.hf = icmp sgt i32 %i.he, 7
  br i1 %i.hf, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %Bfree.exit618.i
  call void @free(ptr noundef nonnull %.1408.i) #17
  br label %Bfree.exit620.i

bb.ba:                                            ; preds = %Bfree.exit618.i
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.hh = sext i32 %i.he to i64
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.hg, i64 %i.hh ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !15
  store ptr %i.hj, ptr %.1408.i, align 8, !tbaa !17
  store ptr %.1408.i, ptr %i.hi, align 8, !tbaa !15
  br label %Bfree.exit620.i

Bfree.exit620.i:                                  ; preds = %bb.ba, %bb.az
  %.not.i621.i = icmp eq ptr %.1.i, null
  br i1 %.not.i621.i, label %Bfree.exit622.i, label %bb.bb

bb.bb:                                            ; preds = %Bfree.exit620.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !22 ; 2 uses
  %i.hm = icmp sgt i32 %i.hl, 7
  br i1 %i.hm, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef nonnull %.1.i) #17
  br label %Bfree.exit622.i

bb.bd:                                            ; preds = %bb.bb
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ho = sext i32 %i.hl to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.ho ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !15
  store ptr %i.hq, ptr %.1.i, align 8, !tbaa !17
  store ptr %.1.i, ptr %i.hp, align 8, !tbaa !15
  br label %Bfree.exit622.i

Bfree.exit622.i:                                  ; preds = %bb.bd, %bb.bc, %Bfree.exit620.i, %bb.ao
  %i.hr = tail call ptr @__errno_location() #18
  store i32 34, ptr %i.hr, align 4, !tbaa !7
  br label %.loopexit750.i

bb.be:                                            ; preds = %bb.an
  %i.hs = icmp samesign ugt i32 %i.fy, 31
  br i1 %i.hs, label %.lr.ph925.preheader.i, label %._crit_edge926.i

.lr.ph925.preheader.i:                            ; preds = %bb.be
  %i.ht = lshr i32 %i.fy, 4
  br label %.lr.ph925.i

.lr.ph925.i:                                      ; preds = %bb.bg, %.lr.ph925.preheader.i
  %indvars.iv1055.i = phi i64 [ 0, %.lr.ph925.preheader.i ], [ %indvars.iv.next1056.i, %bb.bg ] ; 2 uses
  %.0501922.i = phi i32 [ %i.ht, %.lr.ph925.preheader.i ], [ %i.ia, %bb.bg ] ; 3 uses
  %i.hu = phi double [ %.promoted1337.i, %.lr.ph925.preheader.i ], [ %i.hz, %bb.bg ] ; 2 uses
  %i.hv = and i32 %.0501922.i, 1
  %.not591.i = icmp eq i32 %i.hv, 0
  br i1 %.not591.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph925.i
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %indvars.iv1055.i
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !21
  %i.hy = fmul double %i.hu, %i.hx
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.lr.ph925.i
  %i.hz = phi double [ %i.hu, %.lr.ph925.i ], [ %i.hy, %bb.bf ] ; 2 uses
  %indvars.iv.next1056.i = add nuw nsw i64 %indvars.iv1055.i, 1 ; 2 uses
  %i.ia = lshr i32 %.0501922.i, 1
  %i.ib = icmp samesign ugt i32 %.0501922.i, 3
  br i1 %i.ib, label %.lr.ph925.i, label %._crit_edge926.i, !llvm.loop !37

._crit_edge926.i:                                 ; preds = %bb.bg, %bb.be
  %.lcssa923.i = phi double [ %.promoted1337.i, %bb.be ], [ %i.hz, %bb.bg ] ; 2 uses
  %.0486.lcssa.i = phi i64 [ 0, %bb.be ], [ %indvars.iv.next1056.i, %bb.bg ]
  store double %.lcssa923.i, ptr %2, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %4 = bitcast double %.lcssa923.i to i64
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  %i.id = add i32 %6, -55574528
  store i32 %i.id, ptr %i.ic, align 4, !tbaa !19
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr @bigtens, i64 %.0486.lcssa.i
  %i.if = load double, ptr %i.ie, align 8, !tbaa !21
  %i.ig = load double, ptr %2, align 8, !tbaa !19
  %i.ih = fmul double %i.if, %i.ig                ; 2 uses
  store double %i.ih, ptr %2, align 8, !tbaa !19
  %i.ii = bitcast double %i.ih to i64
  %i.ij = lshr i64 %i.ii, 32
  %i.ik = trunc nuw i64 %i.ij to i32              ; 2 uses
  %i.il = and i32 %i.ik, 2146435072               ; 2 uses
  %i.im = icmp samesign ugt i32 %i.il, 2090860544
  br i1 %i.im, label %.loopexit.i, label %bb.bh

bb.bh:                                            ; preds = %._crit_edge926.i
  %i.in = icmp samesign ugt i32 %i.il, 2089811968
  br i1 %i.in, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 2146435071, ptr %i.ic, align 4, !tbaa !19
  store i32 -1, ptr %2, align 8, !tbaa !19
  br label %bb.cb

bb.bj:                                            ; preds = %bb.bh
  %i.io = add i32 %i.ik, 55574528
  store i32 %i.io, ptr %i.ic, align 4, !tbaa !19
  br label %bb.cb

bb.bk:                                            ; preds = %bb.aj
  %i.ip = icmp slt i32 %i.fy, 0
  br i1 %i.ip, label %bb.bl, label %bb.cb

bb.bl:                                            ; preds = %bb.bk
  %i.iq = sub nsw i32 0, %i.fy                    ; 4 uses
  %i.ir = and i32 %i.iq, 15                       ; 2 uses
  %.not560.i = icmp eq i32 %i.ir, 0
  br i1 %.not560.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr @tens, i64 %i.is
  %i.iu = load double, ptr %i.it, align 8, !tbaa !21
  %i.iv = fdiv double %i.fw, %i.iu                ; 2 uses
  store double %i.iv, ptr %2, align 8, !tbaa !19
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.promoted1335.i = phi double [ %i.iv, %bb.bm ], [ %i.fw, %bb.bl ]
  %i.iw = lshr i32 %i.iq, 4                       ; 2 uses
  %.not561.i = icmp eq i32 %i.iw, 0
  br i1 %.not561.i, label %bb.cb, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ix = icmp samesign ugt i32 %i.iq, 511
  br i1 %i.ix, label %bb.ca, label %.preheader

.preheader:                                       ; preds = %bb.bo, %bb.bq
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.bq ], [ 0, %bb.bo ] ; 2 uses
  %.1502919.i = phi i32 [ %i.je, %bb.bq ], [ %i.iw, %bb.bo ] ; 2 uses
  %i.iy = phi double [ %i.jd, %bb.bq ], [ %.promoted1335.i, %bb.bo ] ; 2 uses
  %i.iz = and i32 %.1502919.i, 1
  %.not565.i = icmp eq i32 %i.iz, 0
  br i1 %.not565.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.preheader
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr @tinytens, i64 %indvars.iv.i
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !21
  %i.jc = fmul double %i.iy, %i.jb
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.preheader
  %i.jd = phi double [ %i.iy, %.preheader ], [ %i.jc, %bb.bp ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.je = lshr i32 %.1502919.i, 1                 ; 2 uses
  %.not563.i = icmp eq i32 %i.je, 0
  br i1 %.not563.i, label %bb.br, label %.preheader, !llvm.loop !38

bb.br:                                            ; preds = %bb.bq
  %.not562.i = icmp samesign ult i32 %i.iq, 256   ; 2 uses
  %spec.select731.i = select i1 %.not562.i, i32 0, i32 106
  store double %i.jd, ptr %2, align 8
  %7 = bitcast double %i.jd to i64                ; 2 uses
  %8 = lshr i64 %7, 32
  %9 = trunc nuw i64 %8 to i32                    ; 2 uses
  %10 = trunc i64 %7 to i32
  br i1 %.not562.i, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.jg = lshr i32 %9, 20
  %i.jh = and i32 %i.jg, 2047                     ; 6 uses
  %i.ji = sub nuw nsw i32 107, %i.jh
  %i.jj = icmp samesign ult i32 %i.jh, 107
  br i1 %i.jj, label %bb.bt, label %thread-pre-split

bb.bt:                                            ; preds = %bb.bs
  %i.jk = icmp samesign ult i32 %i.jh, 76
  br i1 %i.jk, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.jl = icmp samesign ult i32 %i.jh, 53
  br i1 %i.jl, label %bb.ca, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %2, align 8, !tbaa !19
  %i.jm = icmp samesign ult i32 %i.jh, 55
  br i1 %i.jm, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 57671680, ptr %i.jf, align 4, !tbaa !19
  br label %thread-pre-split

bb.bx:                                            ; preds = %bb.bv
  %i.jn = sub nuw nsw i32 75, %i.jh
  %i.jo = shl nsw i32 -1, %i.jn
  %i.jp = and i32 %i.jo, %9
  store i32 %i.jp, ptr %i.jf, align 4, !tbaa !19
  br label %thread-pre-split

bb.by:                                            ; preds = %bb.bt
  %i.jq = shl nsw i32 -1, %i.ji
  %i.jr = and i32 %i.jq, %10
  store i32 %i.jr, ptr %2, align 8, !tbaa !19
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bs
  %.pr = load double, ptr %2, align 8, !tbaa !19
  br label %bb.bz

bb.bz:                                            ; preds = %thread-pre-split, %bb.br
  %i.js = phi double [ %.pr, %thread-pre-split ], [ %i.jd, %bb.br ]
  %i.jt = fcmp une double %i.js, 0.000000e+00
  br i1 %i.jt, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.iw, %bb.fd, %sulp.exit653.i, %.loopexit, %bb.bz, %bb.bu, %bb.bo
  %.2417.i = phi ptr [ %.4419.i, %bb.iw ], [ %.4419.i, %.loopexit ], [ undef, %bb.bz ], [ %.4419.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4419.i, %sulp.exit653.i ]
  %.2412.i = phi ptr [ %.4414.i, %bb.iw ], [ %.4414.i, %.loopexit ], [ undef, %bb.bz ], [ %.4414.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4414.i, %sulp.exit653.i ]
  %.2409.i = phi ptr [ null, %bb.iw ], [ %.231.lcssa.i.i, %.loopexit ], [ null, %bb.bz ], [ %.231.lcssa.i.i, %bb.fd ], [ null, %bb.bo ], [ null, %bb.bu ], [ %.231.lcssa.i.i, %sulp.exit653.i ]
  %.2404.i = phi ptr [ %.4406.i, %bb.iw ], [ %.4406.i, %.loopexit ], [ undef, %bb.bz ], [ %.4406.i, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %.4406.i, %sulp.exit653.i ]
  %.2.i = phi ptr [ %.5.i, %bb.iw ], [ %i.td, %.loopexit ], [ undef, %bb.bz ], [ %i.td, %bb.fd ], [ undef, %bb.bo ], [ undef, %bb.bu ], [ %i.td, %sulp.exit653.i ]
  store double 0.000000e+00, ptr %2, align 8, !tbaa !19
  br label %bb.ao

bb.cb:                                            ; preds = %bb.bz, %bb.bn, %bb.bk, %bb.bj, %bb.bi, %bb.am
  %.sroa.44710.1.i = phi i32 [ 0, %bb.am ], [ 0, %bb.bi ], [ 0, %bb.bj ], [ 0, %bb.bn ], [ %spec.select731.i, %bb.bz ], [ 0, %bb.bk ] ; 6 uses
  %i.ju = sub nsw i32 %.5484.i, %.4465.i          ; 6 uses
  %i.jv = icmp sgt i32 %.5484.i, 40
  br i1 %i.jv, label %bb.cc, label %.loopexit744.i

bb.cc:                                            ; preds = %bb.cb
  %i.jw = icmp slt i32 %spec.select597.i, 18
  %i.jx = add nsw i32 %.sroa.12.0.i, 18
  %.2488.i = select i1 %i.jw, i32 %i.jx, i32 18
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %bb.cc
  %.1494.i = phi i32 [ 18, %bb.cc ], [ %i.kb, %bb.cd ] ; 12 uses
  %.3489.i = phi i32 [ %.2488.i, %bb.cc ], [ %.4490.i, %bb.cd ] ; 3 uses
  %.not568.i = icmp sgt i32 %.3489.i, %.sroa.6.2.i
  %spec.select598.i = call i32 @llvm.smin.i32(i32 %.3489.i, i32 %.sroa.0.2.i)
  %.4490.in.i = select i1 %.not568.i, i32 %.3489.i, i32 %spec.select598.i
  %.4490.i = add nsw i32 %.4490.in.i, -1          ; 2 uses
  %i.jy = sext i32 %.4490.i to i64
  %i.jz = getelementptr inbounds i8, ptr %.2445.i, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !19
  %.not570.i = icmp eq i8 %i.ka, 48
  %i.kb = add nsw i32 %.1494.i, -1
  br i1 %.not570.i, label %bb.cd, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kc = sub nsw i32 %.5484.i, %.1494.i
  %i.kd = add nsw i32 %i.kc, %i.el                ; 4 uses
  %spec.select599.i = call i32 @llvm.smin.i32(i32 %spec.select597.i, i32 %.1494.i) ; 9 uses
  %i.ke = icmp slt i32 %.1494.i, 9
  br i1 %i.ke, label %.preheader745.i, label %.loopexit744.i

.preheader745.i:                                  ; preds = %bb.ce
  %i.kf = icmp sgt i32 %spec.select599.i, 0
  br i1 %i.kf, label %.lr.ph930.preheader.i, label %.preheader.i

.lr.ph930.preheader.i:                            ; preds = %.preheader745.i
  %wide.trip.count.i = zext nneg i32 %spec.select599.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.kg = icmp ult i32 %spec.select599.i, 4
  br i1 %i.kg, label %.lr.ph930.i.epil.preheader, label %.lr.ph930.preheader.i.new

.lr.ph930.preheader.i.new:                        ; preds = %.lr.ph930.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph930.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph930.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph930.i.epil.preheader

.lr.ph930.i.epil.preheader:                       ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph930.preheader.i
  %indvars.iv1058.i.epil.init = phi i64 [ 0, %.lr.ph930.preheader.i ], [ %indvars.iv.next1059.i.3, %.preheader.i.loopexit.unr-lcssa ]
  %.9929.i.epil.init = phi i32 [ 0, %.lr.ph930.preheader.i ], [ %i.lz, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod673 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod673)
  br label %.lr.ph930.i.epil

.lr.ph930.i.epil:                                 ; preds = %.lr.ph930.i.epil, %.lr.ph930.i.epil.preheader
  %indvars.iv1058.i.epil = phi i64 [ %indvars.iv1058.i.epil.init, %.lr.ph930.i.epil.preheader ], [ %indvars.iv.next1059.i.epil, %.lr.ph930.i.epil ] ; 2 uses
  %.9929.i.epil = phi i32 [ %.9929.i.epil.init, %.lr.ph930.i.epil.preheader ], [ %i.km, %.lr.ph930.i.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph930.i.epil.preheader ], [ %epil.iter.next, %.lr.ph930.i.epil ]
  %i.kh = mul i32 %.9929.i.epil, 10
  %i.ki = getelementptr inbounds nuw i8, ptr %.2445.i, i64 %indvars.iv1058.i.epil
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !19
  %i.kk = sext i8 %i.kj to i32
  %i.kl = add i32 %i.kh, -48
  %i.km = add i32 %i.kl, %i.kk                    ; 2 uses
  %indvars.iv.next1059.i.epil = add nuw nsw i64 %indvars.iv1058.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph930.i.epil, !llvm.loop !39

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph930.i.epil, %.preheader745.i
  %.2495.lcssa.i = phi i32 [ 0, %.preheader745.i ], [ %spec.select599.i, %.lr.ph930.i.epil ], [ %spec.select599.i, %.preheader.i.loopexit.unr-lcssa ] ; 5 uses
  %.9.lcssa.i = phi i32 [ 0, %.preheader745.i ], [ %i.lz, %.preheader.i.loopexit.unr-lcssa ], [ %i.km, %.lr.ph930.i.epil ] ; 3 uses
  %i.kn = icmp slt i32 %.2495.lcssa.i, %.1494.i
  br i1 %i.kn, label %.lr.ph936.preheader.i, label %._crit_edge.thread.i.i.thread

.lr.ph936.preheader.i:                            ; preds = %.preheader.i
  %i.ko = sext i32 %.sroa.6.2.i to i64            ; 2 uses
  %i.kp = sub i32 %.1494.i, %.2495.lcssa.i
  %xtraiter674 = and i32 %i.kp, 3                 ; 2 uses
  %lcmp.mod675.not = icmp eq i32 %xtraiter674, 0
  br i1 %lcmp.mod675.not, label %.lr.ph936.i.prol.loopexit, label %.lr.ph936.i.prol

.lr.ph936.i.prol:                                 ; preds = %.lr.ph936.preheader.i, %.lr.ph936.i.prol
  %indvars.iv1063.i.prol = phi i64 [ %indvars.iv.next1064.i.prol, %.lr.ph936.i.prol ], [ %i.ko, %.lr.ph936.preheader.i ] ; 2 uses
  %.10935.i.prol = phi i32 [ %i.kv, %.lr.ph936.i.prol ], [ %.9.lcssa.i, %.lr.ph936.preheader.i ]
  %.3496933.i.prol = phi i32 [ %i.kw, %.lr.ph936.i.prol ], [ %.2495.lcssa.i, %.lr.ph936.preheader.i ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph936.i.prol ], [ 0, %.lr.ph936.preheader.i ]
  %i.kq = mul i32 %.10935.i.prol, 10
  %indvars.iv.next1064.i.prol = add nsw i64 %indvars.iv1063.i.prol, 1 ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %.2445.i, i64 %indvars.iv1063.i.prol
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !19
  %i.kt = sext i8 %i.ks to i32
  %i.ku = add i32 %i.kq, -48
  %i.kv = add i32 %i.ku, %i.kt                    ; 3 uses
  %i.kw = add nuw nsw i32 %.3496933.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter674
  br i1 %prol.iter.cmp.not, label %.lr.ph936.i.prol.loopexit, label %.lr.ph936.i.prol, !llvm.loop !40

.lr.ph936.i.prol.loopexit:                        ; preds = %.lr.ph936.i.prol, %.lr.ph936.preheader.i
  %.lcssa640.unr = phi i32 [ poison, %.lr.ph936.preheader.i ], [ %i.kv, %.lr.ph936.i.prol ]
  %indvars.iv1063.i.unr = phi i64 [ %i.ko, %.lr.ph936.preheader.i ], [ %indvars.iv.next1064.i.prol, %.lr.ph936.i.prol ]
  %.10935.i.unr = phi i32 [ %.9.lcssa.i, %.lr.ph936.preheader.i ], [ %i.kv, %.lr.ph936.i.prol ]
  %.3496933.i.unr = phi i32 [ %.2495.lcssa.i, %.lr.ph936.preheader.i ], [ %i.kw, %.lr.ph936.i.prol ]
  %i.kx = sub i32 %.2495.lcssa.i, %.1494.i
  %i.ky = icmp ugt i32 %i.kx, -4
  br i1 %i.ky, label %._crit_edge.thread.i.i.thread, label %.lr.ph936.i

.lr.ph930.i:                                      ; preds = %.lr.ph930.i, %.lr.ph930.preheader.i.new
  %indvars.iv1058.i = phi i64 [ 0, %.lr.ph930.preheader.i.new ], [ %indvars.iv.next1059.i.3, %.lr.ph930.i ] ; 5 uses
  %.9929.i = phi i32 [ 0, %.lr.ph930.preheader.i.new ], [ %i.lz, %.lr.ph930.i ]
  %niter = phi i64 [ 0, %.lr.ph930.preheader.i.new ], [ %niter.next.3, %.lr.ph930.i ]
  %i.kz = mul i32 %.9929.i, 10
  %i.la = getelementptr inbounds nuw i8, ptr %.2445.i, i64 %indvars.iv1058.i
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !19
  %i.lc = sext i8 %i.lb to i32
  %i.ld = add i32 %i.kz, -48
  %i.le = add i32 %i.ld, %i.lc
  %i.lf = mul i32 %i.le, 10
  %i.lg = getelementptr inbounds nuw i8, ptr %.2445.i, i64 %indvars.iv1058.i
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !19
  %i.lj = sext i8 %i.li to i32
  %i.lk = add i32 %i.lf, -48
  %i.ll = add i32 %i.lk, %i.lj
  %i.lm = mul i32 %i.ll, 10
  %i.ln = getelementptr inbounds nuw i8, ptr %.2445.i, i64 %indvars.iv1058.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 2
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !19
  %i.lq = sext i8 %i.lp to i32
  %i.lr = add i32 %i.lm, -48
  %i.ls = add i32 %i.lr, %i.lq
  %i.lt = mul i32 %i.ls, 10
  %i.lu = getelementptr inbounds nuw i8, ptr %.2445.i, i64 %indvars.iv1058.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 3
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !19
  %i.lx = sext i8 %i.lw to i32
  %i.ly = add i32 %i.lt, -48
  %i.lz = add i32 %i.ly, %i.lx                    ; 3 uses
  %indvars.iv.next1059.i.3 = add nuw nsw i64 %indvars.iv1058.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph930.i, !llvm.loop !41

.lr.ph936.i:                                      ; preds = %.lr.ph936.i.prol.loopexit, %.lr.ph936.i
  %indvars.iv1063.i = phi i64 [ %indvars.iv.next1064.i.3, %.lr.ph936.i ], [ %indvars.iv1063.i.unr, %.lr.ph936.i.prol.loopexit ] ; 5 uses
  %.10935.i = phi i32 [ %i.na, %.lr.ph936.i ], [ %.10935.i.unr, %.lr.ph936.i.prol.loopexit ]
  %.3496933.i = phi i32 [ %i.nb, %.lr.ph936.i ], [ %.3496933.i.unr, %.lr.ph936.i.prol.loopexit ]
  %i.ma = mul i32 %.10935.i, 10
  %i.mb = getelementptr inbounds i8, ptr %.2445.i, i64 %indvars.iv1063.i
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !19
  %i.md = sext i8 %i.mc to i32
  %i.me = add i32 %i.ma, -48
  %i.mf = add i32 %i.me, %i.md
  %i.mg = mul i32 %i.mf, 10
  %i.mh = getelementptr i8, ptr %.2445.i, i64 %indvars.iv1063.i
  %i.mi = getelementptr i8, ptr %i.mh, i64 1
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !19
  %i.mk = sext i8 %i.mj to i32
  %i.ml = add i32 %i.mg, -48
  %i.mm = add i32 %i.ml, %i.mk
  %i.mn = mul i32 %i.mm, 10
  %i.mo = getelementptr i8, ptr %.2445.i, i64 %indvars.iv1063.i
  %i.mp = getelementptr i8, ptr %i.mo, i64 2
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !19
  %i.mr = sext i8 %i.mq to i32
  %i.ms = add i32 %i.mn, -48
  %i.mt = add i32 %i.ms, %i.mr
  %i.mu = mul i32 %i.mt, 10
  %indvars.iv.next1064.i.3 = add nsw i64 %indvars.iv1063.i, 4
  %i.mv = getelementptr i8, ptr %.2445.i, i64 %indvars.iv1063.i
  %i.mw = getelementptr i8, ptr %i.mv, i64 3
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !19
  %i.my = sext i8 %i.mx to i32
  %i.mz = add i32 %i.mu, -48
  %i.na = add i32 %i.mz, %i.my                    ; 2 uses
  %i.nb = add nuw nsw i32 %.3496933.i, 4          ; 2 uses
  %exitcond1067.not.i.3 = icmp eq i32 %i.nb, %.1494.i
  br i1 %exitcond1067.not.i.3, label %._crit_edge.thread.i.i.thread, label %.lr.ph936.i, !llvm.loop !42

.loopexit744.i:                                   ; preds = %bb.ce, %bb.cb
  %.2505.i = phi i32 [ %i.el, %bb.cb ], [ %i.kd, %bb.ce ] ; 4 uses
  %.6485.i = phi i32 [ %.5484.i, %bb.cb ], [ %.1494.i, %bb.ce ] ; 6 uses
  %.2478.i = phi i32 [ %spec.select597.i, %bb.cb ], [ %spec.select599.i, %bb.ce ] ; 4 uses
end_hunk_0
