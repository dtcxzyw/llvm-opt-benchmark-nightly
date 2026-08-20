inline.NumInlined: 616
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_Z9PlaneTestRK7btPlaneRK9btVector3:bb.a
  %i.r = fcmp ogt float %i.p, %i.q
  %i.s = fneg float %i.q
  %i.t = fcmp olt float %i.p, %i.s
  %i.u = zext i1 %i.t to i32
  %i.v = select i1 %i.r, i32 2, i32 %i.u
  ret i32 %i.v
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 4) i32 @_Z9SplitTestR7ConvexHRK7btPlane(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 9 uses
  %i.f = load float, ptr %1, align 4, !tbaa !9    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !9  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !9  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load float, ptr %i.k, align 4, !tbaa !11 ; 2 uses
  %i.m = load float, ptr @planetestepsilon, align 4, !tbaa !9 ; 3 uses
  %i.n = fneg float %i.m                          ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.o = and i64 %wide.trip.count, 7              ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = select i1 %i.p, i64 8, i64 %i.o
  %n.vec = sub nsw i64 %wide.trip.count, %i.q     ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert11 = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat12 = shufflevector <4 x float> %broadcast.splatinsert11, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert13 = insertelement <4 x float> poison, float %i.j, i64 0
  %broadcast.splat14 = shufflevector <4 x float> %broadcast.splatinsert13, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert15 = insertelement <4 x float> poison, float %i.l, i64 0
  %broadcast.splat16 = shufflevector <4 x float> %broadcast.splatinsert15, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert17 = insertelement <4 x float> poison, float %i.m, i64 0
  %broadcast.splat18 = shufflevector <4 x float> %broadcast.splatinsert17, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert19 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat20 = shufflevector <4 x float> %broadcast.splatinsert19, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.di, %vector.body ]
  %vec.phi21 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dj, %vector.body ]
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.ag = load float, ptr %i.r, align 4, !tbaa !9
  %i.ah = load float, ptr %i.t, align 4, !tbaa !9
  %i.ai = load float, ptr %i.v, align 4, !tbaa !9
  %i.aj = load float, ptr %i.x, align 4, !tbaa !9
  %i.ak = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 1
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 2
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 3
  %i.ao = load float, ptr %i.z, align 4, !tbaa !9
  %i.ap = load float, ptr %i.ab, align 4, !tbaa !9
  %i.aq = load float, ptr %i.ad, align 4, !tbaa !9
  %i.ar = load float, ptr %i.af, align 4, !tbaa !9
  %i.as = insertelement <4 x float> poison, float %i.ao, i64 0
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 1
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 2
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 84
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 100
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 116
  %i.be = load float, ptr %i.aw, align 4, !tbaa !9
  %i.bf = load float, ptr %i.ax, align 4, !tbaa !9
  %i.bg = load float, ptr %i.ay, align 4, !tbaa !9
  %i.bh = load float, ptr %i.az, align 4, !tbaa !9
  %i.bi = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 1
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 2
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 3
  %i.bm = load float, ptr %i.ba, align 4, !tbaa !9
  %i.bn = load float, ptr %i.bb, align 4, !tbaa !9
  %i.bo = load float, ptr %i.bc, align 4, !tbaa !9
  %i.bp = load float, ptr %i.bd, align 4, !tbaa !9
  %i.bq = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 2
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 3
  %i.bu = fmul <4 x float> %i.bl, %broadcast.splat12
  %i.bv = fmul <4 x float> %i.bt, %broadcast.splat12
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.an, <4 x float> %broadcast.splat, <4 x float> %i.bu)
  %i.bx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %broadcast.splat, <4 x float> %i.bv)
  %i.by = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.cg = load float, ptr %i.by, align 4, !tbaa !9
  %i.ch = load float, ptr %i.bz, align 4, !tbaa !9
  %i.ci = load float, ptr %i.ca, align 4, !tbaa !9
  %i.cj = load float, ptr %i.cb, align 4, !tbaa !9
  %i.ck = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 1
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 2
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 3
  %i.co = load float, ptr %i.cc, align 4, !tbaa !9
  %i.cp = load float, ptr %i.cd, align 4, !tbaa !9
  %i.cq = load float, ptr %i.ce, align 4, !tbaa !9
  %i.cr = load float, ptr %i.cf, align 4, !tbaa !9
  %i.cs = insertelement <4 x float> poison, float %i.co, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 1
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 2
  %i.cv = insertelement <4 x float> %i.cu, float %i.cr, i64 3
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %broadcast.splat14, <4 x float> %i.bw)
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %broadcast.splat14, <4 x float> %i.bx)
  %i.cy = fadd <4 x float> %i.cw, %broadcast.splat16 ; 2 uses
  %i.cz = fadd <4 x float> %i.cx, %broadcast.splat16 ; 2 uses
  %i.da = fcmp ogt <4 x float> %i.cy, %broadcast.splat18
  %i.db = fcmp ogt <4 x float> %i.cz, %broadcast.splat18
  %i.dc = fcmp olt <4 x float> %i.cy, %broadcast.splat20
  %i.dd = fcmp olt <4 x float> %i.cz, %broadcast.splat20
  %i.de = zext <4 x i1> %i.dc to <4 x i32>
  %i.df = zext <4 x i1> %i.dd to <4 x i32>
  %i.dg = select <4 x i1> %i.da, <4 x i32> splat (i32 2), <4 x i32> %i.de
  %i.dh = select <4 x i1> %i.db, <4 x i32> splat (i32 2), <4 x i32> %i.df
  %i.di = or <4 x i32> %i.dg, %vec.phi            ; 2 uses
  %i.dj = or <4 x i32> %i.dh, %vec.phi21          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.dj, %i.di
  %i.dl = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.078.ph = phi i32 [ 0, %.lr.ph ], [ %i.dl, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %i.ea, %scalar.ph ]
  ret i32 %.07.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.078 = phi i32 [ %i.ea, %scalar.ph ], [ %.078.ph, %scalar.ph.preheader ]
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !9
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !9
  %i.dq = fmul float %i.dp, %i.h
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.f, float %i.dq)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !9
  %i.du = tail call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.j, float %i.dr)
  %i.dv = fadd float %i.du, %i.l                  ; 2 uses
  %i.dw = fcmp ogt float %i.dv, %i.m
  %i.dx = fcmp olt float %i.dv, %i.n
  %i.dy = zext i1 %i.dx to i32
  %i.dz = select i1 %i.dw, i32 2, i32 %i.dy
  %i.ea = or i32 %i.dz, %.078                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !53
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_Z4orthRK9btVector3(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %0, align 4, !tbaa !9    ; 4 uses
  %i.c = fneg float %i.b
  %i.d = fmul float %i.b, -0.000000e+00
  %i.e = load <2 x float>, ptr %i.a, align 4, !tbaa !9 ; 3 uses
  %i.f = extractelement <2 x float> %i.e, i64 1   ; 3 uses
  %i.g = fmul float %i.f, 0.000000e+00
  %i.h = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %i.i = fsub float %i.h, %i.g                    ; 2 uses
  %1 = tail call float @llvm.fmuladd.f32(float %i.f, float 0.000000e+00, float %i.c) ; 2 uses
  %i.j = fmul float %i.h, -0.000000e+00           ; 2 uses
  %2 = tail call float @llvm.fmuladd.f32(float %i.b, float 0.000000e+00, float %i.j) ; 2 uses
  %i.k = fneg float %i.f
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.d, i64 1
  %i.n = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> zeroinitializer, <2 x float> %i.m) ; 3 uses
  %i.o = fadd float %i.j, %i.b                    ; 2 uses
  %i.p = insertelement <2 x float> %i.n, float %1, i64 0 ; 2 uses
  %i.q = fmul <2 x float> %i.p, %i.p
  %i.r = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.s = insertelement <2 x float> %i.r, float %i.i, i64 0 ; 2 uses
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.s, <2 x float> %i.q)
  %3 = insertelement <2 x float> poison, float %2, i64 0
  %i.u = insertelement <2 x float> %3, float %i.o, i64 1 ; 2 uses
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.u, <2 x float> %i.t)
  %i.w = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.v) ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0   ; 2 uses
  %i.y = extractelement <2 x float> %i.w, i64 1   ; 2 uses
  %i.z = fcmp ogt float %i.x, %i.y                ; 3 uses
  %sqrt.i.sqrt.i8 = select i1 %i.z, float %i.x, float %i.y
  %i.aa = insertelement <2 x i1> poison, i1 %i.z, i64 0
  %i.ab = shufflevector <2 x i1> %i.aa, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ac = insertelement <2 x float> poison, float %i.i, i64 0
  %4 = insertelement <2 x float> %i.ac, float %1, i64 1
  %5 = select <2 x i1> %i.ab, <2 x float> %4, <2 x float> %i.n
  %.46 = select i1 %i.z, float %2, float %i.o
  %i.ad = fdiv float 1.000000e+00, %sqrt.i.sqrt.i8 ; 2 uses
  %i.ae = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %5, %i.af
  %i.ah = fmul float %.46, %i.ad
  %.sroa.8.8.vec.insert.i18 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ah, i64 0
  %.fca.0.insert.i.pn = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ag, 0
  %.pn = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.pn, <2 x float> %.sroa.8.8.vec.insert.i18, 1
  ret { <2 x float>, <2 x float> } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZeqRK4int3S1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !54
  %i.b = load i32, ptr %1, align 4, !tbaa !54
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !54
  %.not.1 = icmp eq i32 %i.d, %i.f
  br i1 %.not.1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !54
  %.not.2 = icmp eq i32 %i.h, %i.j
  %spec.select = zext i1 %.not.2 to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.c ], [ 0, %bb.b ]
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z5aboveP9btVector3RK4int3RKS_f(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, float noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !54
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !54
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [16 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !54
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [16 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.l = load float, ptr %i.g, align 4, !tbaa !9
  %i.m = load float, ptr %i.c, align 4, !tbaa !9  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.p = load float, ptr %i.k, align 4, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.r = load <2 x float>, ptr %i.n, align 4, !tbaa !9 ; 3 uses
  %i.s = load <2 x float>, ptr %i.o, align 4, !tbaa !9 ; 3 uses
  %i.t = fsub <2 x float> %i.r, %i.s              ; 2 uses
  %i.u = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.v = insertelement <2 x float> %i.u, float %i.l, i64 1 ; 2 uses
  %i.w = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.x = insertelement <2 x float> %i.w, float %i.m, i64 1
  %i.y = fsub <2 x float> %i.v, %i.x              ; 2 uses
  %i.z = load <2 x float>, ptr %i.q, align 4, !tbaa !9 ; 2 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ab = insertelement <2 x float> %i.aa, float %i.p, i64 1
  %i.ac = fsub <2 x float> %i.ab, %i.v            ; 2 uses
  %i.ad = fsub <2 x float> %i.z, %i.r             ; 2 uses
  %i.ae = fneg <2 x float> %i.ad
  %i.af = fmul <2 x float> %i.y, %i.ae
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.ac, <2 x float> %i.af) ; 4 uses
  %i.ah = extractelement <2 x float> %i.ac, i64 1
  %i.ai = fneg float %i.ah
  %i.aj = extractelement <2 x float> %i.t, i64 0
  %i.ak = fmul float %i.aj, %i.ai
  %i.al = extractelement <2 x float> %i.y, i64 1
  %i.am = extractelement <2 x float> %i.ad, i64 0
  %i.an = tail call float @llvm.fmuladd.f32(float %i.al, float %i.am, float %i.ak) ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.ag, %i.ag
  %i.ao = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ap = extractelement <2 x float> %i.ag, i64 0 ; 2 uses
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.ao)
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.an, float %i.an, float %i.aq) ; 2 uses
  %i.as = fcmp oeq float %i.ar, 0.000000e+00
  br i1 %i.as, label %_Z9TriNormalRK9btVector3S1_S1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ar)
  %i.at = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.au = insertelement <2 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fmul <2 x float> %i.ag, %i.av
  %i.ax = fmul float %i.an, %i.at
  %.sroa.3.12.vec.insert.i13.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ax, i64 0
  br label %_Z9TriNormalRK9btVector3S1_S1_.exit

_Z9TriNormalRK9btVector3S1_S1_.exit:              ; preds = %bb.a, %bb.b
  %.sroa.028.0.i = phi <2 x float> [ %i.aw, %bb.b ], [ <float 1.000000e+00, float 0.000000e+00>, %bb.a ] ; 2 uses
  %.sroa.4.0.i = phi <2 x float> [ %.sroa.3.12.vec.insert.i13.i, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.ay = load float, ptr %2, align 4, !tbaa !9
  %i.az = fsub float %i.ay, %i.m
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = load <2 x float>, ptr %i.ba, align 4, !tbaa !9
  %i.bc = fsub <2 x float> %i.bb, %i.s            ; 2 uses
  %.sroa.012.0.vec.extract = extractelement <2 x float> %.sroa.028.0.i, i64 0
  %shift = shufflevector <2 x float> %.sroa.028.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop15 = fmul <2 x float> %shift, %i.bc
  %i.bd = extractelement <2 x float> %foldExtExtBinop15, i64 0
  %i.be = tail call float @llvm.fmuladd.f32(float %.sroa.012.0.vec.extract, float %i.az, float %i.bd)
  %.sroa.513.8.vec.extract = extractelement <2 x float> %.sroa.4.0.i, i64 0
  %i.bf = extractelement <2 x float> %i.bc, i64 1
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %.sroa.513.8.vec.extract, float %i.bf, float %i.be)
  %i.bh = fcmp ogt float %i.bg, %3
  %i.bi = zext i1 %i.bh to i32
  ret i32 %i.bi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z7hasedgeRK4int3ii(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !54     ; 2 uses
  %i.b = icmp eq i32 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !54   ; 2 uses
  %i.e = icmp eq i32 %i.d, %2
  %or.cond = select i1 %i.b, i1 %i.e, i1 false
  br i1 %or.cond, label %.critedge.2, label %.critedge

.critedge:                                        ; preds = %bb.a
  %i.f = icmp eq i32 %i.d, %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !54   ; 2 uses
  %i.i = icmp eq i32 %i.h, %2
  %or.cond20 = select i1 %i.f, i1 %i.i, i1 false
  br i1 %or.cond20, label %.critedge.2, label %.critedge.1

.critedge.1:                                      ; preds = %.critedge
  %i.j = icmp eq i32 %i.h, %1
  %i.k = icmp eq i32 %i.a, %2
  %or.cond21 = and i1 %i.j, %i.k
  %spec.select = zext i1 %or.cond21 to i32
  br label %.critedge.2

.critedge.2:                                      ; preds = %.critedge.1, %.critedge, %bb.a
  %i.l = phi i32 [ 1, %bb.a ], [ %spec.select, %.critedge.1 ], [ 1, %.critedge ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z7hasvertRK4int3i(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !54
  %i.b = icmp eq i32 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %1
  %or.cond = select i1 %i.b, i1 true, i1 %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, %1
  %narrow = select i1 %or.cond, i1 true, i1 %i.h
  %i.i = zext i1 %narrow to i32
  ret i32 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z9shareedgeRK4int3S1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !54   ; 5 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !54     ; 5 uses
  %i.i = icmp eq i32 %i.a, %i.g
  %i.j = icmp eq i32 %i.c, %i.h                   ; 2 uses
  %or.cond.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond.i, label %_Z7hasedgeRK4int3ii.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %bb.a
  %i.k = icmp eq i32 %i.c, %i.g                   ; 2 uses
  %i.l = icmp eq i32 %i.e, %i.h
  %or.cond20.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond20.i, label %_Z7hasedgeRK4int3ii.exit.thread, label %_Z7hasedgeRK4int3ii.exit

_Z7hasedgeRK4int3ii.exit:                         ; preds = %.critedge.i
  %i.m = icmp ne i32 %i.e, %i.g
  %i.n = icmp ne i32 %i.a, %i.h
  %or.cond21.i.not = or i1 %i.n, %i.m
  br i1 %or.cond21.i.not, label %bb.b, label %_Z7hasedgeRK4int3ii.exit.thread

bb.b:                                             ; preds = %_Z7hasedgeRK4int3ii.exit
end_hunk_0
begin_hunk_1_@_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE:bb.a
  %i.bl = phi <2 x float> [ %i.bf, %bb.c ], [ %i.an, %_ZNK9btVector3eqERKS_.exit.thread ]
  %i.bm = fdiv float 1.000000e+00, %sqrt.i.i78.sink ; 2 uses
  %i.bn = fmul float %.sink180, %i.bm
  %i.bo = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.bl, %i.bp
  store <2 x float> %i.bq, ptr %i.ar, align 16, !tbaa !9
  store float %i.bn, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !9
  %i.br = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 3 uses
  %i.bs = icmp eq i32 %i.br, %i.a
  %i.bt = icmp eq i32 %i.br, %i.g
  %or.cond = or i1 %i.bs, %i.bt
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bu = load <2 x float>, ptr %i.ar, align 16, !tbaa !9
  %i.bv = fneg <2 x float> %i.bu
  %i.bw = load float, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !9
  %i.bx = fneg float %i.bw
  %.sroa.3.12.vec.insert.i81 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bx, i64 0
  store <2 x float> %i.bv, ptr %6, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i81, ptr %i.by, align 8
  %i.bz = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0165 = phi i32 [ %i.bz, %bb.e ], [ %i.br, %bb.d ] ; 7 uses
  %i.ca = icmp eq i32 %.0165, %i.a
  %i.cb = icmp eq i32 %.0165, %i.g
  %or.cond60 = or i1 %i.ca, %i.cb
  br i1 %or.cond60, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = sext i32 %.0165 to i64
  %i.cd = getelementptr inbounds [16 x i8], ptr %1, i64 %i.cc ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load <2 x float>, ptr %i.cd, align 4, !tbaa !9
  %i.cg = load <2 x float>, ptr %i.i, align 4, !tbaa !9
  %i.ch = fsub <2 x float> %i.cf, %i.cg           ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !9
  %i.ck = load float, ptr %i.s, align 4, !tbaa !9
  %i.cl = fsub float %i.cj, %i.ck                 ; 3 uses
  %.sroa.3.12.vec.insert.i86 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cl, i64 0
  store <2 x float> %i.ch, ptr %i.ar, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i86, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !14
  %i.cm = extractelement <2 x float> %i.ch, i64 1
  %i.cn = load float, ptr %4, align 16, !tbaa !9  ; 2 uses
  %i.co = extractelement <2 x float> %i.ch, i64 0
  %i.cp = fneg float %i.cn
  %i.cq = fmul float %i.cm, %i.cp
  %i.cr = load <2 x float>, ptr %.sroa.4159.0..sroa_idx, align 4, !tbaa !9 ; 3 uses
  %i.cs = fneg <2 x float> %i.cr
  %i.ct = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cu = insertelement <2 x float> %i.ct, float %i.cl, i64 0
  %i.cv = fmul <2 x float> %i.cu, %i.cs
  %i.cw = insertelement <2 x float> %i.ct, float %i.cl, i64 1
  %i.cx = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cy = insertelement <2 x float> %i.cx, float %i.cn, i64 1
  %i.cz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.cy, <2 x float> %i.cv) ; 4 uses
  %i.da = extractelement <2 x float> %i.cr, i64 0
  %i.db = call float @llvm.fmuladd.f32(float %i.co, float %i.da, float %i.cq) ; 3 uses
  %foldExtExtBinop188 = fmul <2 x float> %i.cz, %i.cz
  %i.dc = extractelement <2 x float> %foldExtExtBinop188, i64 1
  %i.dd = extractelement <2 x float> %i.cz, i64 0 ; 2 uses
  %i.de = call float @llvm.fmuladd.f32(float %i.dd, float %i.dd, float %i.dc)
  %i.df = call noundef float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.de)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.df)
  %i.dg = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.dh = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.cz, %i.di
  %i.dk = fmul float %i.db, %i.dg
  %.sroa.8.8.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dk, i64 0
  store <2 x float> %i.dj, ptr %i.aw, align 16
  store <2 x float> %.sroa.8.8.vec.insert.i, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !14
  %i.dl = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 4 uses
  %i.dm = icmp eq i32 %i.dl, %i.a
  %i.dn = icmp eq i32 %i.dl, %i.g
  %or.cond61 = or i1 %i.dm, %i.dn
  %i.do = icmp eq i32 %i.dl, %.0165
  %or.cond63 = or i1 %i.do, %or.cond61
  br i1 %or.cond63, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.dp = load <2 x float>, ptr %i.aw, align 16, !tbaa !9
  %i.dq = fneg <2 x float> %i.dp
  %i.dr = load float, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !9
  %i.ds = fneg float %i.dr
  %.sroa.3.12.vec.insert.i100 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ds, i64 0
  store <2 x float> %i.dq, ptr %7, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i100, ptr %i.dt, align 8
  %i.du = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i32 [ %i.du, %bb.h ], [ %i.dl, %bb.g ] ; 6 uses
  %i.dv = icmp eq i32 %.0, %i.a
  %i.dw = icmp eq i32 %.0, %i.g
  %or.cond64 = or i1 %i.dv, %i.dw
  %i.dx = icmp eq i32 %.0, %.0165
  %or.cond66 = or i1 %i.dx, %or.cond64
  br i1 %or.cond66, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dy = sext i32 %.0 to i64
  %i.dz = getelementptr inbounds [16 x i8], ptr %1, i64 %i.dy ; 3 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !9
  %i.eb = load float, ptr %i.i, align 4, !tbaa !9 ; 3 uses
  %i.ec = fsub float %i.ea, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !9
  %i.ef = load float, ptr %i.n, align 4, !tbaa !9 ; 3 uses
  %i.eg = fsub float %i.ee, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !9
  %i.ej = load float, ptr %i.s, align 4, !tbaa !9 ; 3 uses
  %i.ek = fsub float %i.ei, %i.ej
  %i.el = load float, ptr %i.k, align 4, !tbaa !9
  %i.em = fsub float %i.el, %i.eb                 ; 2 uses
  %i.en = load float, ptr %i.p, align 4, !tbaa !9
  %i.eo = fsub float %i.en, %i.ef                 ; 2 uses
  %i.ep = load float, ptr %i.u, align 4, !tbaa !9
  %i.eq = fsub float %i.ep, %i.ej                 ; 2 uses
  %i.er = load float, ptr %i.cd, align 4, !tbaa !9
  %i.es = fsub float %i.er, %i.eb                 ; 2 uses
  %i.et = load float, ptr %i.ce, align 4, !tbaa !9
  %i.eu = fsub float %i.et, %i.ef                 ; 2 uses
  %i.ev = load float, ptr %i.ci, align 4, !tbaa !9
  %i.ew = fsub float %i.ev, %i.ej                 ; 2 uses
  %i.ex = fneg float %i.eu
  %i.ey = fmul float %i.eq, %i.ex
  %i.ez = call float @llvm.fmuladd.f32(float %i.eo, float %i.ew, float %i.ey)
  %i.fa = fneg float %i.ew
  %i.fb = fmul float %i.em, %i.fa
  %i.fc = call float @llvm.fmuladd.f32(float %i.eq, float %i.es, float %i.fb)
  %i.fd = fneg float %i.es
  %i.fe = fmul float %i.eo, %i.fd
  %i.ff = call float @llvm.fmuladd.f32(float %i.em, float %i.eu, float %i.fe)
  %i.fg = fmul float %i.eg, %i.fc
  %i.fh = call float @llvm.fmuladd.f32(float %i.ec, float %i.ez, float %i.fg)
  %i.fi = call noundef float @llvm.fmuladd.f32(float %i.ek, float %i.ff, float %i.fh)
  %i.fj = fcmp olt float %i.fi, 0.000000e+00
  br i1 %i.fj, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.f, %bb.j, %bb.k, %bb.i, %bb.a
  %.sroa.0162.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.a, %bb.k ], [ %i.a, %bb.j ]
  %.sroa.5163.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.g, %bb.k ], [ %i.g, %bb.j ]
  %.sroa.9164.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %.0, %bb.k ], [ %.0165, %bb.j ]
  %.sroa.14.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %.0165, %bb.k ], [ %.0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.sroa.5163.0.insert.ext = zext i32 %.sroa.5163.2 to i64
  %.sroa.5163.0.insert.shift = shl nuw i64 %.sroa.5163.0.insert.ext, 32
  %.sroa.0162.0.insert.ext = zext i32 %.sroa.0162.2 to i64
  %.sroa.0162.0.insert.insert = or disjoint i64 %.sroa.5163.0.insert.shift, %.sroa.0162.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0162.0.insert.insert, 0
  %.sroa.14.8.insert.ext = zext i32 %.sroa.14.2 to i64
  %.sroa.14.8.insert.shift = shl nuw i64 %.sroa.14.8.insert.ext, 32
  %.sroa.9164.8.insert.ext = zext i32 %.sroa.9164.2 to i64
  %.sroa.9164.8.insert.insert = or disjoint i64 %.sroa.14.8.insert.shift, %.sroa.9164.8.insert.ext
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.9164.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = icmp sgt i32 %1, 0                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %i.f = load <2 x float>, ptr %i.d, align 4      ; 7 uses
  %i.g = extractelement <2 x float> %i.f, i64 1   ; 2 uses
  %i.h = fmul float %i.g, 0.000000e+00
  %i.i = load float, ptr %2, align 4              ; 7 uses
  %i.j = extractelement <2 x float> %i.f, i64 0   ; 4 uses
  %i.k = fmul float %i.j, -0.000000e+00           ; 2 uses
  %i.l = fmul float %i.i, -0.000000e+00
  %i.m = fadd float %i.k, %i.i                    ; 2 uses
  %i.n = fsub float %i.j, %i.h                    ; 2 uses
  %i.o = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.q = insertelement <2 x float> poison, float %i.n, i64 0
  %i.r = tail call float @llvm.fmuladd.f32(float %i.i, float 0.000000e+00, float %i.k) ; 2 uses
  %i.s = insertelement <2 x float> poison, float %i.r, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.m, i64 1 ; 2 uses
  %i.u = fneg float %i.j
  %i.v = insertelement <2 x float> %i.o, float %i.i, i64 1
  %i.w = fneg <2 x float> %i.v                    ; 3 uses
  %4 = extractelement <2 x float> %i.w, i64 0
  %5 = tail call float @llvm.fmuladd.f32(float %i.j, float 0.000000e+00, float %4) ; 2 uses
  %6 = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %7 = insertelement <2 x float> %6, float %i.l, i64 1
  %8 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> zeroinitializer, <2 x float> %7) ; 4 uses
  %9 = fmul <2 x float> %8, %8
  %i.x = insertelement <2 x float> %i.q, float %5, i64 1 ; 2 uses
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.x, <2 x float> %9)
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.t, <2 x float> %i.y)
  %i.aa = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.z) ; 2 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ad = fcmp ogt float %i.ab, %i.ac             ; 3 uses
  %sqrt.i.sqrt.i8.i = select i1 %i.ad, float %i.ab, float %i.ac
  %i.ae = insertelement <2 x i1> poison, i1 %i.ad, i64 0
  %i.af = shufflevector <2 x i1> %i.ae, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x float> %8, float %i.r, i64 1
  %i.ah = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ai = insertelement <2 x float> %i.ah, float %i.m, i64 1
  %i.aj = select <2 x i1> %i.af, <2 x float> %i.ag, <2 x float> %i.ai
  %..i = select i1 %i.ad, float %i.n, float %5
  %i.ak = fdiv float 1.000000e+00, %sqrt.i.sqrt.i8.i ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.aj, %i.am           ; 6 uses
  %i.ao = fmul float %..i, %i.ak                  ; 4 uses
  %i.ap = extractelement <2 x float> %i.an, i64 1
  %i.aq = fmul float %i.ap, %i.u
  %i.ar = extractelement <2 x float> %i.an, i64 0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.g, float %i.aq) ; 2 uses
  %i.at = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.au = insertelement <2 x float> %i.at, float %i.ao, i64 0
  %i.av = fmul <2 x float> %i.au, %i.w
  %i.aw = shufflevector <2 x float> %i.an, <2 x float> %i.f, <2 x i32> <i32 1, i32 2>
  %i.ax = insertelement <2 x float> poison, float %i.i, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.ao, i64 1
  %i.az = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.ay, <2 x float> %i.av) ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread208
  br i1 %i.a, label %.lr.ph.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.ba = load float, ptr %2, align 4
  %i.bb = load float, ptr %i.d, align 4
  %i.bc = load float, ptr %i.e, align 4
  %i.bd = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 4 uses
  %.01314.i = phi i32 [ -1, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !54
  %.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = icmp eq i32 %.01314.i, -1
  br i1 %i.bl, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !9
  %i.bp = sext i32 %.01314.i to i64
  %i.bq = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load float, ptr %i.br, align 4, !tbaa !9
  %i.bt = load <2 x float>, ptr %i.bm, align 4, !tbaa !9 ; 2 uses
  %i.bu = load <2 x float>, ptr %i.bq, align 4, !tbaa !9 ; 2 uses
  %i.bv = shufflevector <2 x float> %i.bt, <2 x float> %i.bu, <2 x i32> <i32 1, i32 3>
  %i.bw = fmul <2 x float> %i.bi, %i.bv
  %i.bx = shufflevector <2 x float> %i.bt, <2 x float> %i.bu, <2 x i32> <i32 0, i32 2>
  %i.by = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bg, <2 x float> %i.bw)
  %i.bz = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.ca = insertelement <2 x float> %i.bz, float %i.bs, i64 1
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> %i.be, <2 x float> %i.by) ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0
  %i.cd = extractelement <2 x float> %i.cb, i64 1
  %i.ce = fcmp ogt float %i.cc, %i.cd
  br i1 %i.ce, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cf = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.1.i = phi i32 [ %i.cf, %bb.f ], [ %.01314.i, %bb.e ], [ %.01314.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit, label %bb.c, !llvm.loop !82

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit: ; preds = %bb.g, %bb.b
  %.013.lcssa.i = phi i32 [ -1, %bb.b ], [ %.1.i, %bb.g ] ; 7 uses
  %i.cg = sext i32 %.013.lcssa.i to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cg ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !54
  %i.cj = icmp eq i32 %i.ci, 3
  br i1 %i.cj, label %.critedge, label %.preheader

.preheader:                                       ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit
  %or.cond79198 = icmp eq i32 %.013.lcssa.i, -1
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %.thread193
  %.063221.int = phi i32 [ 0, %.preheader ], [ %.int, %.thread193 ] ; 5 uses
  %.064220 = phi i32 [ -1, %.preheader ], [ %.013.lcssa.i100, %.thread193 ] ; 4 uses
  %indvar.conv = uitofp nneg i32 %.063221.int to float ; 5 uses
  %i.ck = fmul nnan float %indvar.conv, f0x3C8EFA35 ; 2 uses
  %i.cl = tail call noundef float @sinf(float noundef %i.ck) #19 ; 2 uses
  %i.cm = tail call noundef float @cosf(float noundef %i.ck) #19 ; 2 uses
  %i.cn = fmul float %i.ao, %i.cl
  %i.co = fmul float %i.as, %i.cm
  %i.cp = fadd float %i.cn, %i.co
  %i.cq = fmul float %i.cp, 2.500000e-02
  %i.cr = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ct = fmul <2 x float> %i.an, %i.cs
  %i.cu = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = fmul <2 x float> %i.az, %i.cv
  %i.cx = fadd <2 x float> %i.ct, %i.cw
  %i.cy = fmul <2 x float> %i.cx, splat (float 2.500000e-02)
  %i.cz = fadd float %i.i, %i.cq
  %i.da = fadd <2 x float> %i.f, %i.cy            ; 2 uses
  br i1 %i.a, label %.lr.ph.i101.preheader, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109

.lr.ph.i101.preheader:                            ; preds = %bb.h
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %.lr.ph.i101.preheader, %bb.l
  %indvars.iv.i103 = phi i64 [ %indvars.iv.next.i107, %bb.l ], [ 0, %.lr.ph.i101.preheader ] ; 4 uses
  %.01314.i104 = phi i32 [ %.1.i106, %bb.l ], [ -1, %.lr.ph.i101.preheader ] ; 4 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i103
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !54
  %.not.i105 = icmp eq i32 %i.dg, 0
  br i1 %.not.i105, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i101
  %i.dh = icmp eq i32 %.01314.i104, -1
  br i1 %i.dh, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i103 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !9
  %i.dl = sext i32 %.01314.i104 to i64
  %i.dm = getelementptr inbounds [16 x i8], ptr %0, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load float, ptr %i.dn, align 4, !tbaa !9
  %i.dp = load <2 x float>, ptr %i.di, align 4, !tbaa !9 ; 2 uses
  %i.dq = load <2 x float>, ptr %i.dm, align 4, !tbaa !9 ; 2 uses
  %i.dr = shufflevector <2 x float> %i.dp, <2 x float> %i.dq, <2 x i32> <i32 1, i32 3>
  %i.ds = fmul <2 x float> %i.db, %i.dr
  %i.dt = shufflevector <2 x float> %i.dp, <2 x float> %i.dq, <2 x i32> <i32 0, i32 2>
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dt, <2 x float> %i.dd, <2 x float> %i.ds)
  %i.dv = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dw = insertelement <2 x float> %i.dv, float %i.do, i64 1
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.de, <2 x float> %i.du) ; 2 uses
  %i.dy = extractelement <2 x float> %i.dx, i64 0
  %i.dz = extractelement <2 x float> %i.dx, i64 1
  %i.ea = fcmp ogt float %i.dy, %i.dz
  br i1 %i.ea, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.eb = trunc nuw nsw i64 %indvars.iv.i103 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph.i101
  %.1.i106 = phi i32 [ %i.eb, %bb.k ], [ %.01314.i104, %bb.j ], [ %.01314.i104, %.lr.ph.i101 ] ; 2 uses
  %indvars.iv.next.i107 = add nuw nsw i64 %indvars.iv.i103, 1 ; 2 uses
  %exitcond.not.i108 = icmp eq i64 %indvars.iv.next.i107, %wide.trip.count.i
  br i1 %exitcond.not.i108, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109, label %.lr.ph.i101, !llvm.loop !82

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109: ; preds = %bb.l, %bb.h
  %.013.lcssa.i100 = phi i32 [ -1, %bb.h ], [ %.1.i106, %bb.l ] ; 3 uses
  %i.ec = icmp eq i32 %.064220, %.013.lcssa.i
  %i.ed = icmp eq i32 %.013.lcssa.i100, %.013.lcssa.i
  %or.cond = and i1 %i.ec, %i.ed
  br i1 %or.cond, label %.critedge.sink.split, label %bb.m

bb.m:                                             ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109
  %.not = icmp eq i32 %.064220, -1
  %.not77 = icmp eq i32 %.064220, %.013.lcssa.i100
  %or.cond78 = or i1 %.not, %.not77
  br i1 %or.cond78, label %.thread193, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = add nsw i32 %.063221.int, -40
  %i.ef = sitofp i32 %i.ee to float               ; 3 uses
  %i.eg = fcmp ugt float %i.ef, %indvar.conv
  br i1 %i.eg, label %.thread193, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  br i1 %i.a, label %.lr.ph.i136.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.eh = fmul nnan float %i.ef, f0x3C8EFA35      ; 2 uses
  %i.ei = tail call noundef float @sinf(float noundef %i.eh) #19 ; 0 uses
  %i.ej = tail call noundef float @cosf(float noundef %i.eh) #19 ; 0 uses
  %i.ek = add nsw i32 %.063221.int, -35
  %i.el = sitofp i32 %i.ek to float               ; 2 uses
  %i.em = fcmp ugt float %i.el, %indvar.conv
  br i1 %i.em, label %.thread193, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit144.thread

.lr.ph.i136.us:                                   ; preds = %.lr.ph, %bb.u
  %.0218.us = phi float [ %i.gh, %bb.u ], [ %i.ef, %.lr.ph ] ; 2 uses
  %.062217.us = phi i32 [ %.1.i141.us, %bb.u ], [ %.064220, %.lr.ph ]
  %i.en = fmul float %.0218.us, f0x3C8EFA35       ; 2 uses
  %i.eo = tail call noundef float @sinf(float noundef %i.en) #19 ; 2 uses
  %i.ep = tail call noundef float @cosf(float noundef %i.en) #19 ; 2 uses
end_hunk_1
