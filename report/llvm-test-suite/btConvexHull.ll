inline.NumInlined: 627
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_Z9PlaneTestRK7btPlaneRK9btVector3:bb.a
  %i.r = fcmp ogt float %i.p, %i.q
  %i.s = fneg float %i.q
  %i.t = fcmp olt float %i.p, %i.s
  %i.u = zext i1 %i.t to i32
  %i.v = select i1 %i.r, i32 2, i32 %i.u
  ret i32 %i.v
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 4) i32 @_Z9SplitTestR7ConvexHRK7btPlane(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 9 uses
  %i.f = load float, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !8  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !8  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load float, ptr %i.k, align 4, !tbaa !11 ; 2 uses
  %i.m = load float, ptr @planetestepsilon, align 4, !tbaa !8 ; 3 uses
  %i.n = fneg float %i.m                          ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.mod.vf = and i64 %wide.trip.count, 7         ; 2 uses
  %i.o = icmp eq i64 %n.mod.vf, 0
  %i.p = select i1 %i.o, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count, %i.p     ; 2 uses
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
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dh, %vector.body ]
  %vec.phi21 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.di, %vector.body ]
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  %i.af = load float, ptr %i.q, align 4, !tbaa !8
  %i.ag = load float, ptr %i.s, align 4, !tbaa !8
  %i.ah = load float, ptr %i.u, align 4, !tbaa !8
  %i.ai = load float, ptr %i.w, align 4, !tbaa !8
  %i.aj = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 1
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 2
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 3
  %i.an = load float, ptr %i.y, align 4, !tbaa !8
  %i.ao = load float, ptr %i.aa, align 4, !tbaa !8
  %i.ap = load float, ptr %i.ac, align 4, !tbaa !8
  %i.aq = load float, ptr %i.ae, align 4, !tbaa !8
  %i.ar = insertelement <4 x float> poison, float %i.an, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 68
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 84
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 100
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 116
  %i.bd = load float, ptr %i.av, align 4, !tbaa !8
  %i.be = load float, ptr %i.aw, align 4, !tbaa !8
  %i.bf = load float, ptr %i.ax, align 4, !tbaa !8
  %i.bg = load float, ptr %i.ay, align 4, !tbaa !8
  %i.bh = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 3
  %i.bl = load float, ptr %i.az, align 4, !tbaa !8
  %i.bm = load float, ptr %i.ba, align 4, !tbaa !8
  %i.bn = load float, ptr %i.bb, align 4, !tbaa !8
  %i.bo = load float, ptr %i.bc, align 4, !tbaa !8
  %i.bp = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bq = insertelement <4 x float> %i.bp, float %i.bm, i64 1
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 2
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 3
  %i.bt = fmul <4 x float> %i.bk, %broadcast.splat12
  %i.bu = fmul <4 x float> %i.bs, %broadcast.splat12
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> %broadcast.splat, <4 x float> %i.bt)
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> %broadcast.splat, <4 x float> %i.bu)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.cb = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.cc = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  %i.cf = load float, ptr %i.bx, align 4, !tbaa !8
  %i.cg = load float, ptr %i.by, align 4, !tbaa !8
  %i.ch = load float, ptr %i.bz, align 4, !tbaa !8
  %i.ci = load float, ptr %i.ca, align 4, !tbaa !8
  %i.cj = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 2
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 3
  %i.cn = load float, ptr %i.cb, align 4, !tbaa !8
  %i.co = load float, ptr %i.cc, align 4, !tbaa !8
  %i.cp = load float, ptr %i.cd, align 4, !tbaa !8
  %i.cq = load float, ptr %i.ce, align 4, !tbaa !8
  %i.cr = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 3
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> %broadcast.splat14, <4 x float> %i.bv)
  %i.cw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %broadcast.splat14, <4 x float> %i.bw)
  %i.cx = fadd <4 x float> %i.cv, %broadcast.splat16 ; 2 uses
  %i.cy = fadd <4 x float> %i.cw, %broadcast.splat16 ; 2 uses
  %i.cz = fcmp ogt <4 x float> %i.cx, %broadcast.splat18
  %i.da = fcmp ogt <4 x float> %i.cy, %broadcast.splat18
  %i.db = fcmp olt <4 x float> %i.cx, %broadcast.splat20
  %i.dc = fcmp olt <4 x float> %i.cy, %broadcast.splat20
  %i.dd = zext <4 x i1> %i.db to <4 x i32>
  %i.de = zext <4 x i1> %i.dc to <4 x i32>
  %i.df = select <4 x i1> %i.cz, <4 x i32> splat (i32 2), <4 x i32> %i.dd
  %i.dg = select <4 x i1> %i.da, <4 x i32> splat (i32 2), <4 x i32> %i.de
  %i.dh = or <4 x i32> %i.df, %vec.phi            ; 2 uses
  %i.di = or <4 x i32> %i.dg, %vec.phi21          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.di, %i.dh
  %i.dk = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.078.ph = phi i32 [ 0, %.lr.ph ], [ %i.dk, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %i.dz, %scalar.ph ]
  ret i32 %.07.lcssa

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.078 = phi i32 [ %i.dz, %scalar.ph ], [ %.078.ph, %scalar.ph.preheader ]
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !8
  %i.dp = fmul float %i.do, %i.h
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.f, float %i.dp)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !8
  %i.dt = tail call noundef float @llvm.fmuladd.f32(float %i.ds, float %i.j, float %i.dq)
  %i.du = fadd float %i.dt, %i.l                  ; 2 uses
  %i.dv = fcmp ogt float %i.du, %i.m
  %i.dw = fcmp olt float %i.du, %i.n
  %i.dx = zext i1 %i.dw to i32
  %i.dy = select i1 %i.dv, i32 2, i32 %i.dx
  %i.dz = or i32 %i.dy, %.078                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_Z4orthRK9btVector3(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %0, align 4, !tbaa !8    ; 4 uses
  %i.c = fneg float %i.b
  %i.d = fmul float %i.b, -0.000000e+00
  %i.e = load <2 x float>, ptr %i.a, align 4, !tbaa !8 ; 3 uses
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
  %.48 = select i1 %i.z, float %2, float %i.o
  %i.ad = fdiv float 1.000000e+00, %sqrt.i.sqrt.i8 ; 2 uses
  %i.ae = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %5, %i.af
  %i.ah = fmul float %.48, %i.ad
  %.sroa.3.12.vec.insert.i.i.i12 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ah, i64 0
  %.fca.0.insert.i.i.i.pn = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ag, 0
  %.pn = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i.i.pn, <2 x float> %.sroa.3.12.vec.insert.i.i.i12, 1
  ret { <2 x float>, <2 x float> } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZeqRK4int3S1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
  %i.b = load i32, ptr %1, align 4, !tbaa !4
  %.not = icmp eq i32 %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %.not.1 = icmp eq i32 %i.d, %i.f
  br i1 %.not.1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
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
  %i.a = load i32, ptr %1, align 4, !tbaa !4
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [16 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [16 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.l = load float, ptr %i.g, align 4, !tbaa !8
  %i.m = load float, ptr %i.c, align 4, !tbaa !8  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.p = load float, ptr %i.k, align 4, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.r = load <2 x float>, ptr %i.n, align 4, !tbaa !8 ; 3 uses
  %i.s = load <2 x float>, ptr %i.o, align 4, !tbaa !8 ; 4 uses
  %i.t = fsub <2 x float> %i.r, %i.s              ; 2 uses
  %i.u = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.v = insertelement <2 x float> %i.u, float %i.l, i64 1 ; 2 uses
  %i.w = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.x = insertelement <2 x float> %i.w, float %i.m, i64 1
  %i.y = fsub <2 x float> %i.v, %i.x              ; 2 uses
  %i.z = load <2 x float>, ptr %i.q, align 4, !tbaa !8 ; 2 uses
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
  %i.ay = load float, ptr %2, align 4, !tbaa !8
  %i.az = fsub float %i.ay, %i.m
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !8
  %i.bc = extractelement <2 x float> %i.s, i64 0
  %i.bd = fsub float %i.bb, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load float, ptr %i.be, align 4, !tbaa !8
  %i.bg = extractelement <2 x float> %i.s, i64 1
  %i.bh = fsub float %i.bf, %i.bg
  %.sroa.012.0.vec.extract = extractelement <2 x float> %.sroa.028.0.i, i64 0
  %.sroa.012.4.vec.extract = extractelement <2 x float> %.sroa.028.0.i, i64 1
  %i.bi = fmul float %.sroa.012.4.vec.extract, %i.bd
  %i.bj = tail call float @llvm.fmuladd.f32(float %.sroa.012.0.vec.extract, float %i.az, float %i.bi)
  %.sroa.513.8.vec.extract = extractelement <2 x float> %.sroa.4.0.i, i64 0
  %i.bk = tail call noundef float @llvm.fmuladd.f32(float %.sroa.513.8.vec.extract, float %i.bh, float %i.bj)
  %i.bl = fcmp ogt float %i.bk, %3
  %i.bm = zext i1 %i.bl to i32
  ret i32 %i.bm
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z7hasedgeRK4int3ii(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4      ; 2 uses
  %i.b = icmp eq i32 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4    ; 2 uses
  %i.e = icmp eq i32 %i.d, %2
  %or.cond = select i1 %i.b, i1 %i.e, i1 false
  br i1 %or.cond, label %.critedge.2, label %.critedge

.critedge:                                        ; preds = %bb.a
  %i.f = icmp eq i32 %i.d, %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4    ; 2 uses
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
define dso_local noundef range(i32 0, 2) i32 @_Z7hasvertRK4int3i(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !4
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
define dso_local noundef range(i32 0, 2) i32 @_Z9shareedgeRK4int3S1_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4    ; 5 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !4      ; 5 uses
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
end_hunk_0
begin_hunk_1_@_ZN11HullLibrary7extrudeEP14btHullTrianglei:bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !56
  %i.em = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.en = sext i32 %i.el to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.en
  store ptr null, ptr %i.eo, align 8, !tbaa !54
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.dw)
  %.pre95 = load ptr, ptr %i.j, align 8, !tbaa !49
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ep = phi ptr [ %.pre95, %bb.u ], [ %i.ds, %bb.t ]
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !56
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.es
  store ptr null, ptr %i.et, align 8, !tbaa !54
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %1)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define dso_local noundef ptr @_ZN11HullLibrary10extrudableEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, float noundef %1) local_unnamed_addr #13 align 2 {
.lr.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !64   ; 4 uses
  %i.c = icmp sgt i32 %i.b, 0
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %i.b, 1
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge15.1, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %._crit_edge15.1 ] ; 3 uses
  %.013 = phi ptr [ null, %.lr.ph.new ], [ %.1.1, %._crit_edge15.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %._crit_edge15.1 ]
  %.not = icmp eq ptr %.013, null
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !54 ; 4 uses
  br i1 %.not, label %._crit_edge15, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not11 = icmp eq ptr %.pre, null
  br i1 %.not11, label %._crit_edge15, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.013, i64 32
  %i.h = load float, ptr %i.g, align 4, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.j = load float, ptr %i.i, align 4, !tbaa !63
  %i.k = fcmp olt float %i.h, %i.j
  br i1 %i.k, label %bb.d, label %._crit_edge15

bb.d:                                             ; preds = %bb.c
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.1 = phi ptr [ %.013, %bb.b ], [ %.013, %bb.c ], [ %.pre, %bb.d ], [ %.pre, %bb.a ] ; 4 uses
  %.not.1 = icmp eq ptr %.1, null
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %.phi.trans.insert.1 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre.1 = load ptr, ptr %.phi.trans.insert.1, align 8, !tbaa !54 ; 4 uses
  br i1 %.not.1, label %._crit_edge15.1, label %bb.e

bb.e:                                             ; preds = %._crit_edge15
  %.not11.1 = icmp eq ptr %.pre.1, null
  br i1 %.not11.1, label %._crit_edge15.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.n = load float, ptr %i.m, align 4, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %.pre.1, i64 32
  %i.p = load float, ptr %i.o, align 4, !tbaa !63
  %i.q = fcmp olt float %i.n, %i.p
  br i1 %i.q, label %bb.g, label %._crit_edge15.1

bb.g:                                             ; preds = %bb.f
  br label %._crit_edge15.1

._crit_edge15.1:                                  ; preds = %bb.g, %bb.f, %bb.e, %._crit_edge15
  %.1.1 = phi ptr [ %.1, %bb.e ], [ %.1, %bb.f ], [ %.pre.1, %bb.g ], [ %.pre.1, %._crit_edge15 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.a

._crit_edge.unr-lcssa:                            ; preds = %._crit_edge15.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.013.epil.init = phi ptr [ null, %.lr.ph ], [ %.1.1, %._crit_edge.unr-lcssa ] ; 4 uses
  %lcmp.mod17 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %.not.epil = icmp eq ptr %.013.epil.init, null
  %.phi.trans.insert.epil = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %.pre.epil = load ptr, ptr %.phi.trans.insert.epil, align 8, !tbaa !54 ; 4 uses
  br i1 %.not.epil, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  %.not11.epil = icmp eq ptr %.pre.epil, null
  br i1 %.not11.epil, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.013.epil.init, i64 32
  %i.s = load float, ptr %i.r, align 4, !tbaa !63
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.epil, i64 32
  %i.u = load float, ptr %i.t, align 4, !tbaa !63
  %i.v = fcmp olt float %i.s, %i.u
  br i1 %i.v, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.h, %bb.i, %bb.j, %._crit_edge.unr-lcssa
  %.1.lcssa = phi ptr [ %.1.1, %._crit_edge.unr-lcssa ], [ %.013.epil.init, %bb.h ], [ %.013.epil.init, %bb.i ], [ %.pre.epil, %bb.j ], [ %.pre.epil, %.epil.preheader ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 32
  %i.x = load float, ptr %i.w, align 4, !tbaa !63
  %i.y = fcmp ogt float %i.x, %1
  %i.z = select i1 %i.y, ptr %.1.lcssa, ptr null
  ret ptr %i.z
}

; Function Attrs: uwtable
define dso_local { i64, i64 } @_ZN11HullLibrary11FindSimplexEP9btVector3iR20btAlignedObjectArrayIiE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #14 align 2 {
bb.a:
  %4 = alloca [3 x %class.btVector3], align 16    ; 13 uses
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %.sroa.4156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.5157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <4 x float> <float f0x3C23D70A, float 2.000000e-02, float 1.000000e+00, float 0.000000e+00>, ptr %4, align 16
  %i.a = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.b = load <2 x float>, ptr %4, align 16, !tbaa !8
  %i.c = fneg <2 x float> %i.b
  %i.d = load float, ptr %.sroa.5157.0..sroa_idx, align 8, !tbaa !8
  %i.e = fneg float %i.d
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.e, i64 0
  store <2 x float> %i.c, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.f, align 8
  %i.g = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.h = sext i32 %i.a to i64
  %i.i = getelementptr inbounds [16 x i8], ptr %1, i64 %i.h ; 5 uses
  %i.j = sext i32 %i.g to i64
  %i.k = getelementptr inbounds [16 x i8], ptr %1, i64 %i.j ; 4 uses
  %i.l = load float, ptr %i.i, align 4, !tbaa !8
  %i.m = load float, ptr %i.k, align 4, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !8
  %i.r = fsub float %i.o, %i.q                    ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !8
  %i.w = insertelement <2 x float> poison, float %i.t, i64 0
  %i.x = insertelement <2 x float> %i.w, float %i.l, i64 1
  %i.y = insertelement <2 x float> poison, float %i.v, i64 0
  %i.z = insertelement <2 x float> %i.y, float %i.m, i64 1
  %i.aa = fsub <2 x float> %i.x, %i.z             ; 6 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.0.4.vec.insert.i68 = insertelement <2 x float> %i.ab, float %i.r, i64 1
  %i.ac = insertelement <2 x float> %i.aa, float 0.000000e+00, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i68, ptr %4, align 16
  store <2 x float> %i.ac, ptr %.sroa.5157.0..sroa_idx, align 8, !tbaa !14
  %i.ad = icmp eq i32 %i.a, %i.g
  br i1 %i.ad, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = extractelement <2 x float> %i.aa, i64 0 ; 3 uses
  %i.af = fcmp oeq float %i.ae, 0.000000e+00
  %i.ag = fcmp oeq float %i.r, 0.000000e+00
  %or.cond167 = select i1 %i.af, i1 %i.ag, i1 false
  %i.ah = extractelement <2 x float> %i.aa, i64 1 ; 4 uses
  %i.ai = fcmp oeq float %i.ah, 0.000000e+00
  %or.cond169 = select i1 %or.cond167, i1 %i.ai, i1 false
  br i1 %or.cond169, label %.critedge, label %_ZNK9btVector3eqERKS_.exit.thread

_ZNK9btVector3eqERKS_.exit.thread:                ; preds = %bb.b
  %i.aj = fmul float %i.r, -0.000000e+00          ; 2 uses
  %i.ak = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.al = fneg <2 x float> %i.aa
  %i.am = shufflevector <2 x float> %i.ak, <2 x float> %i.al, <2 x i32> <i32 0, i32 2>
  %i.an = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> <float 2.000000e-02, float 0.000000e+00>, <2 x float> %i.am) ; 3 uses
  %i.ao = fneg float %i.ah
  %i.ap = fmul float %i.ah, 2.000000e-02
  %8 = fsub float %i.r, %i.ap                     ; 3 uses
  %.sroa.3.12.vec.insert.i.i.a = insertelement <2 x float> <float poison, float 0.000000e+00>, float %8, i64 0
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %.sroa.46.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i.a, ptr %.sroa.46.0..sroa_idx.a, align 8, !tbaa !14
  %9 = fadd float %i.ae, %i.aj                    ; 2 uses
  %i.ar = fmul float %i.ae, 2.000000e-02
  %i.as = call float @llvm.fmuladd.f32(float %i.ah, float 0.000000e+00, float %i.ar) ; 2 uses
  %i.at = call float @llvm.fmuladd.f32(float %i.r, float -2.000000e-02, float %i.ao) ; 2 uses
  %.sroa.0.0.vec.insert.i.i72 = insertelement <2 x float> poison, float %9, i64 0
  %.sroa.0.4.vec.insert.i.i73 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i72, float %i.as, i64 1
  %.sroa.3.12.vec.insert.i.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.at, i64 0
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i73, ptr %10, align 16
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i74, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !14
  %i.au = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.av = insertelement <2 x float> %i.au, float %i.as, i64 1 ; 2 uses
  %i.aw = fmul <2 x float> %i.av, %i.av
  %i.ax = insertelement <2 x float> %i.an, float %9, i64 1 ; 2 uses
  %i.ay = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.ax, <2 x float> %i.aw)
  %i.az = insertelement <2 x float> poison, float %8, i64 0
  %i.ba = insertelement <2 x float> %i.az, float %i.at, i64 1 ; 2 uses
  %i.bb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.ba, <2 x float> %i.ay)
  %i.bc = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bb) ; 2 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.be = extractelement <2 x float> %i.bc, i64 1
  %i.bf = fcmp ogt float %i.bd, %i.be
  br i1 %i.bf, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, ptr noundef nonnull align 16 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !38
  %i.bg = load <2 x float>, ptr %i.aq, align 16, !tbaa !8 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.bg, %i.bg
  %i.bh = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bi = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bj = call float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %i.bh)
  %i.bk = load float, ptr %.sroa.46.0..sroa_idx.a, align 8, !tbaa !8 ; 3 uses
  %i.bl = call noundef float @llvm.fmuladd.f32(float %i.bk, float %i.bk, float %i.bj)
  %sqrt.i.i78 = call noundef float @llvm.sqrt.f32(float %i.bl)
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9btVector3eqERKS_.exit.thread, %bb.c
  %sqrt.i.i78.sink = phi float [ %sqrt.i.i78, %bb.c ], [ %i.bd, %_ZNK9btVector3eqERKS_.exit.thread ]
  %.sink177 = phi float [ %i.bk, %bb.c ], [ %8, %_ZNK9btVector3eqERKS_.exit.thread ]
  %i.bm = phi <2 x float> [ %i.bg, %bb.c ], [ %i.an, %_ZNK9btVector3eqERKS_.exit.thread ]
  %i.bn = fdiv float 1.000000e+00, %sqrt.i.i78.sink ; 2 uses
  %i.bo = fmul float %.sink177, %i.bn
  %i.bp = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x float> %i.bm, %i.bq
  store <2 x float> %i.br, ptr %i.aq, align 16, !tbaa !8
  store float %i.bo, ptr %.sroa.46.0..sroa_idx.a, align 8, !tbaa !8
  %i.bs = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 3 uses
  %i.bt = icmp eq i32 %i.bs, %i.a
  %i.bu = icmp eq i32 %i.bs, %i.g
  %or.cond = or i1 %i.bt, %i.bu
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.bv = load <2 x float>, ptr %i.aq, align 16, !tbaa !8
  %i.bw = fneg <2 x float> %i.bv
  %i.bx = load float, ptr %.sroa.46.0..sroa_idx.a, align 8, !tbaa !8
  %i.by = fneg float %i.bx
  %.sroa.3.12.vec.insert.i81 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.by, i64 0
  store <2 x float> %i.bw, ptr %6, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i81, ptr %i.bz, align 8
  %i.ca = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i32 [ %i.ca, %bb.e ], [ %i.bs, %bb.d ] ; 7 uses
  %i.cb = icmp eq i32 %.0, %i.a
  %i.cc = icmp eq i32 %.0, %i.g
  %or.cond60 = or i1 %i.cb, %i.cc
  br i1 %or.cond60, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = sext i32 %.0 to i64
  %i.ce = getelementptr inbounds [16 x i8], ptr %1, i64 %i.cd ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load <2 x float>, ptr %i.ce, align 4, !tbaa !8
  %i.ch = load <2 x float>, ptr %i.i, align 4, !tbaa !8
  %i.ci = fsub <2 x float> %i.cg, %i.ch           ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !8
  %i.cl = load float, ptr %i.s, align 4, !tbaa !8
  %i.cm = fsub float %i.ck, %i.cl                 ; 3 uses
  %.sroa.3.12.vec.insert.i86 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cm, i64 0
  store <2 x float> %i.ci, ptr %i.aq, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i86, ptr %.sroa.46.0..sroa_idx.a, align 8, !tbaa !14
  %i.cn = extractelement <2 x float> %i.ci, i64 1
  %i.co = load float, ptr %4, align 16, !tbaa !8  ; 2 uses
  %i.cp = extractelement <2 x float> %i.ci, i64 0
  %i.cq = fneg float %i.co
  %i.cr = fmul float %i.cn, %i.cq
  %i.cs = load <2 x float>, ptr %.sroa.4156.0..sroa_idx, align 4, !tbaa !8 ; 3 uses
  %i.ct = fneg <2 x float> %i.cs
  %i.cu = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cv = insertelement <2 x float> %i.cu, float %i.cm, i64 0
  %i.cw = fmul <2 x float> %i.cv, %i.ct
  %i.cx = insertelement <2 x float> %i.cu, float %i.cm, i64 1
  %i.cy = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cz = insertelement <2 x float> %i.cy, float %i.co, i64 1
  %i.da = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cz, <2 x float> %i.cw) ; 4 uses
  %i.db = extractelement <2 x float> %i.cs, i64 0
  %i.dc = call float @llvm.fmuladd.f32(float %i.cp, float %i.db, float %i.cr) ; 3 uses
  %foldExtExtBinop183 = fmul <2 x float> %i.da, %i.da
  %i.dd = extractelement <2 x float> %foldExtExtBinop183, i64 1
  %i.de = extractelement <2 x float> %i.da, i64 0 ; 2 uses
  %i.df = call float @llvm.fmuladd.f32(float %i.de, float %i.de, float %i.dd)
  %i.dg = call noundef float @llvm.fmuladd.f32(float %i.dc, float %i.dc, float %i.df)
  %sqrt.i.i94 = call noundef float @llvm.sqrt.f32(float %i.dg)
  %i.dh = fdiv float 1.000000e+00, %sqrt.i.i94    ; 2 uses
  %i.di = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fmul <2 x float> %i.da, %i.dj
  %i.dl = fmul float %i.dc, %i.dh
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dl, i64 0
  store <2 x float> %i.dk, ptr %10, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !14
  %i.dm = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(25) %3) ; 4 uses
  %i.dn = icmp eq i32 %i.dm, %i.a
  %i.do = icmp eq i32 %i.dm, %i.g
  %or.cond61 = or i1 %i.dn, %i.do
  %i.dp = icmp eq i32 %i.dm, %.0
  %or.cond63 = or i1 %i.dp, %or.cond61
  br i1 %or.cond63, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.dq = load <2 x float>, ptr %10, align 16, !tbaa !8
  %i.dr = fneg <2 x float> %i.dq
  %i.ds = load float, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !8
  %i.dt = fneg float %i.ds
  %.sroa.3.12.vec.insert.i97 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dt, i64 0
  store <2 x float> %i.dr, ptr %7, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i97, ptr %i.du, align 8
  %i.dv = call noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0162 = phi i32 [ %i.dv, %bb.h ], [ %i.dm, %bb.g ] ; 6 uses
  %i.dw = icmp eq i32 %.0162, %i.a
  %i.dx = icmp eq i32 %.0162, %i.g
  %or.cond64 = or i1 %i.dw, %i.dx
  %i.dy = icmp eq i32 %.0162, %.0
  %or.cond66 = or i1 %i.dy, %or.cond64
  br i1 %or.cond66, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dz = sext i32 %.0162 to i64
  %i.ea = getelementptr inbounds [16 x i8], ptr %1, i64 %i.dz ; 3 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !8
  %i.ec = load float, ptr %i.i, align 4, !tbaa !8 ; 3 uses
  %i.ed = fsub float %i.eb, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !8
  %i.eg = load float, ptr %i.n, align 4, !tbaa !8 ; 3 uses
  %i.eh = fsub float %i.ef, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !8
  %i.ek = load float, ptr %i.s, align 4, !tbaa !8 ; 3 uses
  %i.el = fsub float %i.ej, %i.ek
  %i.em = load float, ptr %i.k, align 4, !tbaa !8
  %i.en = fsub float %i.em, %i.ec                 ; 2 uses
  %i.eo = load float, ptr %i.p, align 4, !tbaa !8
  %i.ep = fsub float %i.eo, %i.eg                 ; 2 uses
  %i.eq = load float, ptr %i.u, align 4, !tbaa !8
  %i.er = fsub float %i.eq, %i.ek                 ; 2 uses
  %i.es = load float, ptr %i.ce, align 4, !tbaa !8
  %i.et = fsub float %i.es, %i.ec                 ; 2 uses
  %i.eu = load float, ptr %i.cf, align 4, !tbaa !8
  %i.ev = fsub float %i.eu, %i.eg                 ; 2 uses
  %i.ew = load float, ptr %i.cj, align 4, !tbaa !8
  %i.ex = fsub float %i.ew, %i.ek                 ; 2 uses
  %i.ey = fneg float %i.ev
  %i.ez = fmul float %i.er, %i.ey
  %i.fa = call float @llvm.fmuladd.f32(float %i.ep, float %i.ex, float %i.ez)
  %i.fb = fneg float %i.ex
  %i.fc = fmul float %i.en, %i.fb
  %i.fd = call float @llvm.fmuladd.f32(float %i.er, float %i.et, float %i.fc)
  %i.fe = fneg float %i.et
  %i.ff = fmul float %i.ep, %i.fe
  %i.fg = call float @llvm.fmuladd.f32(float %i.en, float %i.ev, float %i.ff)
  %i.fh = fmul float %i.eh, %i.fd
  %i.fi = call float @llvm.fmuladd.f32(float %i.ed, float %i.fa, float %i.fh)
  %i.fj = call noundef float @llvm.fmuladd.f32(float %i.el, float %i.fg, float %i.fi)
  %i.fk = fcmp olt float %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.f, %bb.j, %bb.k, %bb.i, %bb.a
  %.sroa.0159.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.a, %bb.k ], [ %i.a, %bb.j ]
  %.sroa.5160.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %i.g, %bb.k ], [ %i.g, %bb.j ]
  %.sroa.9161.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %.0162, %bb.k ], [ %.0, %bb.j ]
  %.sroa.14.2 = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.i ], [ %.0, %bb.k ], [ %.0162, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.sroa.5160.0.insert.ext = zext i32 %.sroa.5160.2 to i64
  %.sroa.5160.0.insert.shift = shl nuw i64 %.sroa.5160.0.insert.ext, 32
  %.sroa.0159.0.insert.ext = zext i32 %.sroa.0159.2 to i64
  %.sroa.0159.0.insert.insert = or disjoint i64 %.sroa.5160.0.insert.shift, %.sroa.0159.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0159.0.insert.insert, 0
  %.sroa.14.8.insert.ext = zext i32 %.sroa.14.2 to i64
  %.sroa.14.8.insert.shift = shl nuw i64 %.sroa.14.8.insert.ext, 32
  %.sroa.9161.8.insert.ext = zext i32 %.sroa.9161.2 to i64
  %.sroa.9161.8.insert.insert = or disjoint i64 %.sroa.14.8.insert.shift, %.sroa.9161.8.insert.ext
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.9161.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef i32 @_Z12maxdirsteridI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(25) %3) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = icmp sgt i32 %1, 0                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 3 uses
  %i.f = load float, ptr %i.d, align 4            ; 7 uses
  %i.g = load float, ptr %i.e, align 4            ; 6 uses
  %i.h = fmul float %i.g, 0.000000e+00
  %4 = fsub float %i.f, %i.h                      ; 2 uses
  %i.i = load float, ptr %2, align 4              ; 7 uses
  %i.j = fneg float %i.i                          ; 2 uses
  %i.k = fmul float %i.f, -0.000000e+00           ; 2 uses
  %i.l = tail call float @llvm.fmuladd.f32(float %i.i, float 0.000000e+00, float %i.k) ; 2 uses
  %i.m = fneg float %i.g                          ; 2 uses
  %5 = tail call float @llvm.fmuladd.f32(float %i.f, float 0.000000e+00, float %i.m) ; 2 uses
  %6 = fmul float %i.i, -0.000000e+00
  %7 = fadd float %i.k, %i.i                      ; 2 uses
  %i.n = insertelement <2 x float> poison, float %i.g, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = insertelement <2 x float> poison, float %i.j, i64 0
  %i.q = insertelement <2 x float> %i.p, float %6, i64 1
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> zeroinitializer, <2 x float> %i.q) ; 4 uses
  %i.s = fmul <2 x float> %i.r, %i.r
  %i.t = insertelement <2 x float> poison, float %4, i64 0
  %i.u = insertelement <2 x float> %i.t, float %5, i64 1 ; 2 uses
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.u, <2 x float> %i.s)
  %i.w = insertelement <2 x float> poison, float %i.l, i64 0
  %i.x = insertelement <2 x float> %i.w, float %7, i64 1 ; 2 uses
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.x, <2 x float> %i.v)
  %i.z = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.y) ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0  ; 2 uses
  %i.ab = extractelement <2 x float> %i.z, i64 1  ; 2 uses
  %i.ac = fcmp ogt float %i.aa, %i.ab             ; 4 uses
  %sqrt.i.sqrt.i8.i = select i1 %i.ac, float %i.aa, float %i.ab
  %..i = select i1 %i.ac, float %4, float %5
  %i.ad = extractelement <2 x float> %i.r, i64 0
  %i.ae = extractelement <2 x float> %i.r, i64 1
  %.47.i = select i1 %i.ac, float %i.ad, float %i.ae
  %.48.i = select i1 %i.ac, float %i.l, float %7
  %i.af = fdiv float 1.000000e+00, %sqrt.i.sqrt.i8.i ; 3 uses
  %i.ag = fmul float %..i, %i.af                  ; 4 uses
  %i.ah = fmul float %.47.i, %i.af                ; 4 uses
  %i.ai = fmul float %.48.i, %i.af                ; 4 uses
  %i.aj = fneg float %i.f
  %i.ak = fmul float %i.ai, %i.aj
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.g, float %i.ak) ; 2 uses
  %i.am = fmul float %i.ag, %i.m
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.i, float %i.am) ; 2 uses
  %i.ao = fmul float %i.ah, %i.j
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.f, float %i.ao) ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread208
  br i1 %i.a, label %.lr.ph.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.aq = load float, ptr %2, align 4
  %i.ar = load float, ptr %i.d, align 4
  %i.as = load float, ptr %i.e, align 4
  %i.at = insertelement <2 x float> poison, float %i.as, i64 0
  %i.au = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> zeroinitializer
  %i.av = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ax = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 4 uses
  %.01314.i = phi i32 [ -1, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %.not.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = icmp eq i32 %.01314.i, -1
  br i1 %i.bb, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load float, ptr %i.bd, align 4, !tbaa !8
  %i.bf = sext i32 %.01314.i to i64
  %i.bg = getelementptr inbounds [16 x i8], ptr %0, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !8
  %i.bj = load <2 x float>, ptr %i.bc, align 4, !tbaa !8 ; 2 uses
  %i.bk = load <2 x float>, ptr %i.bg, align 4, !tbaa !8 ; 2 uses
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> %i.bk, <2 x i32> <i32 1, i32 3>
  %i.bm = fmul <2 x float> %i.ay, %i.bl
  %i.bn = shufflevector <2 x float> %i.bj, <2 x float> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.aw, <2 x float> %i.bm)
  %i.bp = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bq = insertelement <2 x float> %i.bp, float %i.bi, i64 1
  %i.br = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.au, <2 x float> %i.bo) ; 2 uses
  %i.bs = extractelement <2 x float> %i.br, i64 0
  %i.bt = extractelement <2 x float> %i.br, i64 1
  %i.bu = fcmp ogt float %i.bs, %i.bt
  br i1 %i.bu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bv = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.1.i = phi i32 [ %i.bv, %bb.f ], [ %.01314.i, %bb.e ], [ %.01314.i, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit, label %bb.c

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit: ; preds = %bb.g, %bb.b
  %.013.lcssa.i = phi i32 [ -1, %bb.b ], [ %.1.i, %bb.g ] ; 7 uses
  %i.bw = sext i32 %.013.lcssa.i to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bw ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = icmp eq i32 %i.by, 3
  br i1 %i.bz, label %.critedge, label %.preheader

.preheader:                                       ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit
  %or.cond79198 = icmp eq i32 %.013.lcssa.i, -1
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %.thread193
  %.067221.int = phi i32 [ 0, %.preheader ], [ %.int, %.thread193 ] ; 5 uses
  %.068220 = phi i32 [ -1, %.preheader ], [ %.013.lcssa.i100, %.thread193 ] ; 4 uses
  %indvar.conv = uitofp nneg i32 %.067221.int to float ; 5 uses
  %i.ca = fmul nnan float %indvar.conv, f0x3C8EFA35 ; 2 uses
  %i.cb = tail call noundef float @sinf(float noundef %i.ca) #19, !tbaa !4 ; 3 uses
  %i.cc = tail call noundef float @cosf(float noundef %i.ca) #19, !tbaa !4 ; 3 uses
  %i.cd = fmul float %i.ag, %i.cb
  %i.ce = fmul float %i.ah, %i.cb
  %i.cf = fmul float %i.ai, %i.cb
  %i.cg = fmul float %i.al, %i.cc
  %i.ch = fmul float %i.an, %i.cc
  %i.ci = fmul float %i.ap, %i.cc
  %i.cj = fadd float %i.cd, %i.cg
  %i.ck = fadd float %i.ce, %i.ch
  %i.cl = fadd float %i.cf, %i.ci
  %i.cm = fmul float %i.cj, 2.500000e-02
  %i.cn = fmul float %i.ck, 2.500000e-02
  %i.co = fmul float %i.cl, 2.500000e-02
  %i.cp = fadd float %i.i, %i.cm
  %i.cq = fadd float %i.f, %i.cn
  %i.cr = fadd float %i.g, %i.co
  br i1 %i.a, label %.lr.ph.i101.preheader, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109

.lr.ph.i101.preheader:                            ; preds = %bb.h
  %i.cs = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %.lr.ph.i101.preheader, %bb.l
  %indvars.iv.i103 = phi i64 [ %indvars.iv.next.i107, %bb.l ], [ 0, %.lr.ph.i101.preheader ] ; 4 uses
  %.01314.i104 = phi i32 [ %.1.i106, %bb.l ], [ -1, %.lr.ph.i101.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i103
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  %.not.i105 = icmp eq i32 %i.cz, 0
  br i1 %.not.i105, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i101
  %i.da = icmp eq i32 %.01314.i104, -1
  br i1 %i.da, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i103 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !8
  %i.de = sext i32 %.01314.i104 to i64
  %i.df = getelementptr inbounds [16 x i8], ptr %0, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !8
  %i.di = load <2 x float>, ptr %i.db, align 4, !tbaa !8 ; 2 uses
  %i.dj = load <2 x float>, ptr %i.df, align 4, !tbaa !8 ; 2 uses
  %i.dk = shufflevector <2 x float> %i.di, <2 x float> %i.dj, <2 x i32> <i32 1, i32 3>
  %i.dl = fmul <2 x float> %i.ct, %i.dk
  %i.dm = shufflevector <2 x float> %i.di, <2 x float> %i.dj, <2 x i32> <i32 0, i32 2>
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.cv, <2 x float> %i.dl)
  %i.do = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.dh, i64 1
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.cx, <2 x float> %i.dn) ; 2 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0
  %i.ds = extractelement <2 x float> %i.dq, i64 1
  %i.dt = fcmp ogt float %i.dr, %i.ds
  br i1 %i.dt, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.du = trunc nuw nsw i64 %indvars.iv.i103 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph.i101
  %.1.i106 = phi i32 [ %i.du, %bb.k ], [ %.01314.i104, %bb.j ], [ %.01314.i104, %.lr.ph.i101 ] ; 2 uses
  %indvars.iv.next.i107 = add nuw nsw i64 %indvars.iv.i103, 1 ; 2 uses
  %exitcond.not.i108 = icmp eq i64 %indvars.iv.next.i107, %wide.trip.count.i
  br i1 %exitcond.not.i108, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109, label %.lr.ph.i101

_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109: ; preds = %bb.l, %bb.h
  %.013.lcssa.i100 = phi i32 [ -1, %bb.h ], [ %.1.i106, %bb.l ] ; 3 uses
  %i.dv = icmp eq i32 %.068220, %.013.lcssa.i
  %i.dw = icmp eq i32 %.013.lcssa.i100, %.013.lcssa.i
  %or.cond = and i1 %i.dv, %i.dw
  br i1 %or.cond, label %.critedge.sink.split, label %bb.m

bb.m:                                             ; preds = %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit109
  %.not = icmp eq i32 %.068220, -1
  %.not77 = icmp eq i32 %.068220, %.013.lcssa.i100
  %or.cond78 = or i1 %.not, %.not77
  br i1 %or.cond78, label %.thread193, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dx = add nsw i32 %.067221.int, -40
  %i.dy = sitofp i32 %i.dx to float               ; 3 uses
  %i.dz = fcmp ugt float %i.dy, %indvar.conv
  br i1 %i.dz, label %.thread193, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  br i1 %i.a, label %.lr.ph.i136.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.ea = fmul nnan float %i.dy, f0x3C8EFA35      ; 2 uses
  %i.eb = tail call noundef float @sinf(float noundef %i.ea) #19, !tbaa !4 ; 0 uses
  %i.ec = tail call noundef float @cosf(float noundef %i.ea) #19, !tbaa !4 ; 0 uses
  %i.ed = add nsw i32 %.067221.int, -35
  %i.ee = sitofp i32 %i.ed to float               ; 2 uses
  %i.ef = fcmp ugt float %i.ee, %indvar.conv
  br i1 %i.ef, label %.thread193, label %_Z14maxdirfilteredI9btVector3EiPKT_iRS2_R20btAlignedObjectArrayIiE.exit144.thread

.lr.ph.i136.us:                                   ; preds = %.lr.ph, %bb.u
  %.062218.us = phi float [ %i.gd, %bb.u ], [ %i.dy, %.lr.ph ] ; 2 uses
  %.063217.us = phi i32 [ %.1.i141.us, %bb.u ], [ %.068220, %.lr.ph ]
  %i.eg = fmul float %.062218.us, f0x3C8EFA35     ; 2 uses
  %i.eh = tail call noundef float @sinf(float noundef %i.eg) #19, !tbaa !4 ; 3 uses
  %i.ei = tail call noundef float @cosf(float noundef %i.eg) #19, !tbaa !4 ; 3 uses
  %i.ej = fmul float %i.ag, %i.eh
  %i.ek = fmul float %i.ah, %i.eh
end_hunk_1
