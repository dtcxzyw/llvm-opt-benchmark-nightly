inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 283
begin_hunk_0_@_ZN10ImDrawList10PrimRectUVERK6ImVec2S2_S2_S2_j:bb.a
  %i.r = add i16 %i.o, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i16 %i.r, ptr %i.s, align 2, !tbaa !93
  %i.t = add i16 %i.o, 2                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i16 %i.t, ptr %i.u, align 2, !tbaa !93
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 6
  store i16 %i.o, ptr %i.v, align 2, !tbaa !93
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i16 %i.t, ptr %i.w, align 2, !tbaa !93
  %i.x = add i16 %i.o, 3
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 10
  store i16 %i.x, ptr %i.y, align 2, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 11 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !88
  %i.ab = load i64, ptr %1, align 4
  store i64 %i.ab, ptr %i.aa, align 4
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !88
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %3, align 4
  store i64 %i.ae, ptr %i.ad, align 4
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !88  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i32 %5, ptr %i.ag, align 4, !tbaa !95
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  store i32 %i.a, ptr %i.ah, align 4
  %.sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 %i.c, ptr %.sroa_idx29, align 4
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !88  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 %i.g, ptr %i.aj, align 4
  %.sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store i32 %i.i, ptr %.sroa_idx23, align 4
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !88  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store i32 %5, ptr %i.al, align 4, !tbaa !95
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.an = load i64, ptr %2, align 4
  store i64 %i.an, ptr %i.am, align 4
  %i.ao = load ptr, ptr %i.z, align 8, !tbaa !88
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load i64, ptr %4, align 4
  store i64 %i.aq, ptr %i.ap, align 4
  %i.ar = load ptr, ptr %i.z, align 8, !tbaa !88  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store i32 %5, ptr %i.as, align 4, !tbaa !95
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 60
  store i32 %i.d, ptr %i.at, align 4
  %.sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store i32 %i.f, ptr %.sroa_idx26, align 4
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !88  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 68
  store i32 %i.j, ptr %i.av, align 4
  %.sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store i32 %i.l, ptr %.sroa_idx22, align 4
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !55
  %i.ax = add i32 %i.aw, 4
  store i32 %i.ax, ptr %i.m, align 4, !tbaa !55
  %i.ay = load <2 x ptr>, ptr %i.z, align 8, !tbaa !85
  %i.az = load ptr, ptr %i.z, align 8, !tbaa !88
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 76
  store i32 %5, ptr %i.ba, align 4, !tbaa !95
  %i.bb = getelementptr inbounds nuw i8, <2 x ptr> %i.ay, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.bb, ptr %i.z, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10ImDrawList10PrimQuadUVERK6ImVec2S2_S2_S2_S2_S2_S2_S2_j(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %8, i32 noundef %9) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !55
  %i.c = trunc i32 %i.b to i16                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90   ; 6 uses
  store i16 %i.c, ptr %i.e, align 2, !tbaa !93
  %i.f = add i16 %i.c, 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 %i.f, ptr %i.g, align 2, !tbaa !93
  %i.h = add i16 %i.c, 2                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i16 %i.h, ptr %i.i, align 2, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i16 %i.c, ptr %i.j, align 2, !tbaa !93
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i16 %i.h, ptr %i.k, align 2, !tbaa !93
  %i.l = add i16 %i.c, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  store i16 %i.l, ptr %i.m, align 2, !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 11 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.p = load i64, ptr %1, align 4
  store i64 %i.p, ptr %i.o, align 4
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %5, align 4
  store i64 %i.s, ptr %i.r, align 4
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !88   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 %9, ptr %i.u, align 4, !tbaa !95
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.w = load i64, ptr %2, align 4
  store i64 %i.w, ptr %i.v, align 4
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.z = load i64, ptr %6, align 4
  store i64 %i.z, ptr %i.y, align 4
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !88  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  store i32 %9, ptr %i.ab, align 4, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ad = load i64, ptr %3, align 4
  store i64 %i.ad, ptr %i.ac, align 4
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load i64, ptr %7, align 4
  store i64 %i.ag, ptr %i.af, align 4
  %i.ah = load ptr, ptr %i.n, align 8, !tbaa !88  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i32 %9, ptr %i.ai, align 4, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 60
  %i.ak = load i64, ptr %4, align 4
  store i64 %i.ak, ptr %i.aj, align 4
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  %i.an = load i64, ptr %8, align 4
  store i64 %i.an, ptr %i.am, align 4
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !55
  %i.ap = add i32 %i.ao, 4
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !55
  %i.aq = load <2 x ptr>, ptr %i.n, align 8, !tbaa !85
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  store i32 %9, ptr %i.as, align 4, !tbaa !95
  %i.at = getelementptr inbounds nuw i8, <2 x ptr> %i.aq, <2 x i64> <i64 80, i64 12>
  store <2 x ptr> %i.at, ptr %i.n, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijif(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(196) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 2
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %4, 1
  %.not444 = icmp eq i32 %i.b, 0                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = load i64, ptr %i.d, align 8              ; 11 uses
  %i.f = add nsw i32 %2, -1                       ; 4 uses
  %i.g = select i1 %.not444, i32 %i.f, i32 %2     ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load float, ptr %i.h, align 8, !tbaa !67 ; 8 uses
  %i.j = fcmp ogt float %5, %i.i                  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !54   ; 2 uses
  %i.m = and i32 %i.l, 1
  %.not445 = icmp eq i32 %i.m, 0
  br i1 %.not445, label %.lr.ph630, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = and i32 %3, 16777215                     ; 4 uses
  %i.o = fcmp oge float %5, 1.000000e+00
  %i.p = select i1 %i.o, float %5, float 1.000000e+00 ; 6 uses
  %i.q = fptosi float %i.p to i32                 ; 3 uses
  %i.r = sitofp i32 %i.q to float
  %i.s = fsub float %i.p, %i.r
  %i.t = and i32 %i.l, 2
  %i.u = icmp eq i32 %i.t, 0
  %i.v = icmp sgt i32 %i.q, 62
  %or.cond.not454 = select i1 %i.u, i1 true, i1 %i.v
  %i.w = fcmp ugt float %i.s, f0x3727C5AC
  %or.cond3.not451 = select i1 %or.cond.not454, i1 true, i1 %i.w
  %i.x = fcmp une float %i.i, 1.000000e+00
  %.not449 = select i1 %or.cond3.not451, i1 true, i1 %i.x ; 8 uses
  %.v = select i1 %i.j, i32 18, i32 12
  %.v602 = select i1 %.not449, i32 %.v, i32 6
  %i.y = mul nsw i32 %.v602, %i.g
  br i1 %.not449, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = shl nuw nsw i32 %2, 1
  br label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.c
  %i.aa = shl nsw i32 %2, 2
  %i.ab = mul nuw nsw i32 %2, 3
  %i.ac = select i1 %i.j, i32 %i.aa, i32 %i.ab
  %i.ad = select i1 %i.j, i32 5, i32 3
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d, %bb.e
  %.not447 = phi i32 [ 3, %bb.d ], [ %i.ad, %bb.e ]
  %i.ae = phi i32 [ %i.z, %bb.d ], [ %i.ac, %bb.e ] ; 2 uses
  tail call void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(196) %0, i32 noundef %i.y, i32 noundef %i.ae)
  %i.af = mul nuw nsw i32 %.not447, %2
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = alloca i8, i64 %i.ah, align 16          ; 10 uses
  %i.aj = zext nneg i32 %2 to i64                 ; 4 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ai, i64 %i.aj ; 15 uses
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g
  br i1 %.not444, label %bb.h, label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.al = icmp eq i64 %indvars.iv.next, %i.aj
  %i.am = select i1 %i.al, i64 0, i64 %indvars.iv.next
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ap = load <2 x float>, ptr %i.an, align 4, !tbaa !9
  %i.aq = load <2 x float>, ptr %i.ao, align 4, !tbaa !9
  %i.ar = fsub <2 x float> %i.ap, %i.aq           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.ar, %i.ar
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.at = extractelement <2 x float> %i.ar, i64 0 ; 2 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.as) ; 2 uses
  %i.av = fcmp ogt float %i.au, 0.000000e+00
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.aw = insertelement <4 x float> poison, float %i.au, i64 0
  %i.ax = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.aw)
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %i.ar, %i.ay
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.ba = phi <2 x float> [ %i.az, %bb.f ], [ %i.ar, %.lr.ph ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv ; 2 uses
  %i.bc = extractelement <2 x float> %i.ba, i64 1
  store float %i.bc, ptr %i.bb, align 8, !tbaa !91
  %i.bd = extractelement <2 x float> %i.ba, i64 0
  %i.be = fneg float %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store float %i.be, ptr %i.bf, align 4, !tbaa !92
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !97

bb.h:                                             ; preds = %._crit_edge
  %i.bg = getelementptr i8, ptr %i.ak, i64 -16
  %i.bh = zext nneg i32 %i.f to i64               ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.bh ; 7 uses
  %i.bj = load i64, ptr %i.bg, align 8
  store i64 %i.bj, ptr %i.bi, align 8
  %or.cond5 = select i1 %.not449, i1 %i.j, i1 false
  br i1 %or.cond5, label %bb.o, label %bb.i

.thread:                                          ; preds = %._crit_edge
  %or.cond5599 = select i1 %.not449, i1 %i.j, i1 false
  br i1 %or.cond5599, label %.thread601, label %.thread600

.thread601:                                       ; preds = %.thread
  %i.bk = fsub float %i.p, %i.i
  %i.bl = fmul float %i.bk, 5.000000e-01
  br label %.lr.ph625

.thread600:                                       ; preds = %.thread
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.p, float 5.000000e-01, float 1.000000e+00)
  %i.bn = select i1 %.not449, float %i.i, float %i.bm
  br label %.lr.ph615

bb.i:                                             ; preds = %bb.h
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.p, float 5.000000e-01, float 1.000000e+00)
  %i.bp = select i1 %.not449, float %i.i, float %i.bo ; 4 uses
  %.val476 = load float, ptr %i.ai, align 16, !tbaa !91
  %6 = getelementptr i8, ptr %i.ai, i64 4
  %.val477 = load float, ptr %6, align 4, !tbaa !92
  %7 = fmul float %i.bp, %.val476                 ; 2 uses
  %8 = fmul float %i.bp, %.val477                 ; 2 uses
  %.val498 = load float, ptr %1, align 4, !tbaa !91 ; 2 uses
  %9 = getelementptr i8, ptr %1, i64 4
  %.val499 = load float, ptr %9, align 4, !tbaa !92 ; 2 uses
  %10 = fadd float %7, %.val498
  %11 = fadd float %8, %.val499
  %.sroa.0.0.vec.insert.i526 = insertelement <2 x float> poison, float %10, i64 0
  %.sroa.0.4.vec.insert.i527 = insertelement <2 x float> %.sroa.0.0.vec.insert.i526, float %11, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i527, ptr %i.ak, align 8
  %12 = fsub float %.val498, %7
  %13 = fsub float %.val499, %8
  %.sroa.0.0.vec.insert.i530 = insertelement <2 x float> poison, float %12, i64 0
  %.sroa.0.4.vec.insert.i531 = insertelement <2 x float> %.sroa.0.0.vec.insert.i530, float %13, i64 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store <2 x float> %.sroa.0.4.vec.insert.i531, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bh
  %i.bs = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %14 = insertelement <2 x float> poison, float %i.bp, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bt = fmul <2 x float> %15, %i.bs
  %i.bu = load <2 x float>, ptr %i.br, align 4, !tbaa !9 ; 2 uses
  %i.bv = fadd <2 x float> %i.bt, %i.bu
  %i.bw = shl nuw nsw i32 %i.f, 1
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bx ; 2 uses
  store <2 x float> %i.bv, ptr %i.by, align 8
  %i.bz = load <2 x float>, ptr %i.bi, align 8, !tbaa !9
  %i.ca = fmul <2 x float> %15, %i.bz
  %i.cb = fsub <2 x float> %i.bu, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store <2 x float> %i.cb, ptr %i.cc, align 8
  br label %.lr.ph615

.lr.ph615:                                        ; preds = %bb.i, %.thread600
  %i.cd = phi float [ %i.bn, %.thread600 ], [ %i.bp, %bb.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !55 ; 2 uses
  %i.cg = select i1 %.not449, i32 3, i32 2
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %wide.trip.count637 = zext nneg i32 %i.g to i64 ; 2 uses
  %i.ci = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <4 x i32> zeroinitializer
  %.promoted703 = load ptr, ptr %i.ch, align 8, !tbaa !90
  br label %.backedge

.lr.ph621:                                        ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %wide.trip.count648 = zext nneg i32 %2 to i64
  %.pre666 = load ptr, ptr %i.ck, align 8, !tbaa !88
  br label %bb.n

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph615
  %i.cl = phi ptr [ %.promoted703, %.lr.ph615 ], [ %i.em, %.backedge.backedge ] ; 13 uses
  %indvars.iv634 = phi i64 [ 0, %.lr.ph615 ], [ %indvars.iv.next635, %.backedge.backedge ] ; 2 uses
  %.0420613 = phi i32 [ %i.cf, %.lr.ph615 ], [ %i.cq, %.backedge.backedge ] ; 3 uses
  %indvars.iv.next635 = add nuw nsw i64 %indvars.iv634, 1 ; 5 uses
  %i.cm = icmp eq i64 %indvars.iv.next635, %i.aj  ; 2 uses
  %i.cn = trunc nuw nsw i64 %indvars.iv.next635 to i32
  %i.co = select i1 %i.cm, i32 0, i32 %i.cn       ; 2 uses
  %i.cp = add i32 %.0420613, %i.cg
  %i.cq = select i1 %i.cm, i32 %i.cf, i32 %i.cp   ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv634
  %i.cs = zext nneg i32 %i.co to i64              ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.cs
  %i.cu = load <2 x float>, ptr %i.cr, align 8, !tbaa !9
  %i.cv = load <2 x float>, ptr %i.ct, align 8, !tbaa !9
  %i.cw = fadd <2 x float> %i.cu, %i.cv
  %i.cx = fmul <2 x float> %i.cw, splat (float 5.000000e-01) ; 5 uses
  %foldExtExtBinop686 = fmul <2 x float> %i.cx, %i.cx
  %i.cy = extractelement <2 x float> %foldExtExtBinop686, i64 1
  %i.cz = extractelement <2 x float> %i.cx, i64 0 ; 2 uses
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.cz, float %i.cy) ; 2 uses
  %i.db = fcmp ogt float %i.da, f0x358637BD
  br i1 %i.db, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.backedge
  %i.dc = fdiv float 1.000000e+00, %i.da          ; 2 uses
  %i.dd = fcmp ogt float %i.dc, 1.000000e+02
  %.0426 = select i1 %i.dd, float 1.000000e+02, float %i.dc
  %i.de = insertelement <2 x float> poison, float %.0426, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x float> %i.cx, %i.df
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.backedge
  %i.dh = phi <2 x float> [ %i.dg, %bb.j ], [ %i.cx, %.backedge ]
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dj = fmul <4 x float> %i.cj, %i.di           ; 2 uses
  %i.dk = shl nuw nsw i32 %i.co, 1
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.dl
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cs
  %i.do = load <2 x float>, ptr %i.dn, align 4, !tbaa !9
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.dq = fadd <4 x float> %i.dp, %i.dj
  %i.dr = fsub <4 x float> %i.dp, %i.dj
  %i.ds = shufflevector <4 x float> %i.dq, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ds, ptr %i.dm, align 8, !tbaa !9
  %i.dt = trunc i32 %i.cq to i16                  ; 4 uses
  store i16 %i.dt, ptr %i.cl, align 2, !tbaa !93
  %i.du = trunc i32 %.0420613 to i16              ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  store i16 %i.du, ptr %i.dv, align 2, !tbaa !93
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  br i1 %.not449, label %bb.l, label %.thread678

bb.l:                                             ; preds = %bb.k
  %i.dy = trunc i32 %i.cq to i16
  %i.dz = insertelement <2 x i16> poison, i16 %i.dy, i64 0
  %i.ea = trunc i32 %.0420613 to i16
  %i.eb = insertelement <2 x i16> %i.dz, i16 %i.ea, i64 1
  %i.ec = shufflevector <2 x i16> %i.eb, <2 x i16> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ed = add i16 %i.du, 2                        ; 2 uses
  store i16 %i.ed, ptr %i.dw, align 2, !tbaa !93
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cl, i64 6
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !93
  %i.ef = add <4 x i16> %i.ec, <i16 2, i16 0, i16 1, i16 1> ; 2 uses
  store <4 x i16> %i.ef, ptr %i.dx, align 2, !tbaa !93
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i16 %i.du, ptr %i.eg, align 2, !tbaa !93
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cl, i64 18
  store i16 %i.du, ptr %i.eh, align 2, !tbaa !93
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  store i16 %i.dt, ptr %i.ei, align 2, !tbaa !93
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cl, i64 22
  %i.ek = extractelement <4 x i16> %i.ef, i64 2
  store i16 %i.ek, ptr %i.ej, align 2, !tbaa !93
  %i.el = getelementptr inbounds nuw i8, ptr %i.cl, i64 24 ; 2 uses
  store ptr %i.el, ptr %i.ch, align 8, !tbaa !90
  %exitcond638.not = icmp eq i64 %indvars.iv.next635, %wide.trip.count637
  br i1 %exitcond638.not, label %.lr.ph621, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.l, %.thread678
  %i.em = phi ptr [ %i.el, %bb.l ], [ %i.er, %.thread678 ]
  br label %.backedge, !llvm.loop !98

.thread678:                                       ; preds = %bb.k
  %i.en = getelementptr inbounds nuw i8, ptr %i.cl, i64 10
  %i.eo = add i16 %i.du, 1                        ; 2 uses
  store i16 %i.eo, ptr %i.dw, align 2, !tbaa !93
  %i.ep = add i16 %i.dt, 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cl, i64 6
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !93
  store i16 %i.eo, ptr %i.dx, align 2, !tbaa !93
  store i16 %i.dt, ptr %i.en, align 2, !tbaa !93
  %i.er = getelementptr inbounds nuw i8, ptr %i.cl, i64 12 ; 2 uses
  store ptr %i.er, ptr %i.ch, align 8, !tbaa !90
  %exitcond638.not680 = icmp eq i64 %indvars.iv.next635, %wide.trip.count637
  br i1 %exitcond638.not680, label %.lr.ph619, label %.backedge.backedge

.lr.ph619:                                        ; preds = %.thread678
  %i.es = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 504
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !99
  %i.ev = sext i32 %i.q to i64
  %i.ew = getelementptr inbounds [16 x i8], ptr %i.eu, i64 %i.ev ; 2 uses
  %i.ex = load <2 x i32>, ptr %i.ew, align 4, !tbaa !9
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load <2 x i32>, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !9
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %wide.trip.count642 = zext nneg i32 %2 to i64
  %.pre = load ptr, ptr %i.ez, align 8, !tbaa !88
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph619, %bb.m
  %i.fa = phi ptr [ %.pre, %.lr.ph619 ], [ %i.fo, %bb.m ]
  %indvars.iv639 = phi i64 [ 0, %.lr.ph619 ], [ %indvars.iv.next640, %bb.m ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv639, 4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8
  store i64 %i.fc, ptr %i.fa, align 4
  %i.fd = load ptr, ptr %i.ez, align 8, !tbaa !88
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store <2 x i32> %i.ex, ptr %i.fe, align 4
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !88 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store i32 %3, ptr %i.fg, align 4, !tbaa !95
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 20
  %i.fj = load i64, ptr %i.fh, align 8
  store i64 %i.fj, ptr %i.fi, align 4
  %i.fk = load ptr, ptr %i.ez, align 8, !tbaa !88
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 28
  store <2 x i32> %i.ey, ptr %i.fl, align 4
  %i.fm = load ptr, ptr %i.ez, align 8, !tbaa !88 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 36
  store i32 %3, ptr %i.fn, align 4, !tbaa !95
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 40 ; 2 uses
  store ptr %i.fo, ptr %i.ez, align 8, !tbaa !88
  %indvars.iv.next640 = add nuw nsw i64 %indvars.iv639, 1 ; 2 uses
  %exitcond643.not = icmp eq i64 %indvars.iv.next640, %wide.trip.count642
  br i1 %exitcond643.not, label %.loopexit607, label %bb.m, !llvm.loop !100

bb.n:                                             ; preds = %.lr.ph621, %bb.n
  %i.fp = phi ptr [ %.pre666, %.lr.ph621 ], [ %i.gk, %bb.n ]
  %indvars.iv644 = phi i64 [ 0, %.lr.ph621 ], [ %indvars.iv.next645, %bb.n ] ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv644
  %i.fr = load i64, ptr %i.fq, align 4
  store i64 %i.fr, ptr %i.fp, align 4
  %i.fs = load ptr, ptr %i.ck, align 8, !tbaa !88
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 %i.e, ptr %i.ft, align 4
  %i.fu = load ptr, ptr %i.ck, align 8, !tbaa !88 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store i32 %3, ptr %i.fv, align 4, !tbaa !95
  %.idx676 = shl nuw nsw i64 %indvars.iv644, 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx676 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 20
  %i.fy = load i64, ptr %i.fw, align 8
  store i64 %i.fy, ptr %i.fx, align 4
  %i.fz = load ptr, ptr %i.ck, align 8, !tbaa !88
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 28
  store i64 %i.e, ptr %i.ga, align 4
  %i.gb = load ptr, ptr %i.ck, align 8, !tbaa !88 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 36
  store i32 %i.n, ptr %i.gc, align 4, !tbaa !95
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 40
  %i.gf = load i64, ptr %i.gd, align 8
  store i64 %i.gf, ptr %i.ge, align 4
  %i.gg = load ptr, ptr %i.ck, align 8, !tbaa !88
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  store i64 %i.e, ptr %i.gh, align 4
  %i.gi = load ptr, ptr %i.ck, align 8, !tbaa !88 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  store i32 %i.n, ptr %i.gj, align 4, !tbaa !95
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 60 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZL21stbtt__csctx_rmove_toP12stbtt__csctxff:bb.a

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !580
  %i.u = extractelement <2 x i32> %i.k, i64 1     ; 4 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !579
  %.not20.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not20.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 %i.u, ptr %i.s, align 4, !tbaa !580
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !581
  %i.aa = icmp sgt i32 %i.z, %i.o
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !579
  %.not21.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not21.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.o, ptr %i.y, align 8, !tbaa !581
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !582
  %i.af = icmp sgt i32 %i.ae, %i.u
  br i1 %i.af, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !579
  %.not22.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not22.i.i.i, label %bb.n, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 %i.u, ptr %i.ad, align 8, !tbaa !582
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i: ; preds = %bb.n, %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ai, align 4, !tbaa !579
  %.phi.trans.insert7.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre8.i = load i32, ptr %.phi.trans.insert7.i, align 8, !tbaa !583
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !584
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !583 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [14 x i8], ptr %i.ak, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i8 2, ptr %i.ap, align 2, !tbaa !406
  %i.aq = trunc <2 x i32> %i.k to <2 x i16>
  store <2 x i16> %i.aq, ptr %i.ao, align 2, !tbaa !93
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i64 0, ptr %i.ar, align 2
  %.pre.pre = load float, ptr %i.b, align 8, !tbaa !596
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i

_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i: ; preds = %bb.o, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i
  %.pre = phi float [ %i.c, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i ], [ %.pre.pre, %bb.o ]
  %i.as = phi i32 [ %.pre8.i, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i.i ], [ %i.am, %bb.o ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = add nsw i32 %i.as, 1
  store i32 %i.au, ptr %i.at, align 8, !tbaa !583
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre13 = load float, ptr %.phi.trans.insert, align 4, !tbaa !597
  br label %_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit

_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit: ; preds = %bb.b, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i
  %i.av = phi float [ %i.h, %bb.b ], [ %.pre13, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i ]
  %i.aw = phi float [ %i.c, %bb.b ], [ %.pre, %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit.i ]
  %i.ax = fadd float %1, %i.aw                    ; 3 uses
  store float %i.ax, ptr %i.b, align 8, !tbaa !596
  store float %i.ax, ptr %i.a, align 8, !tbaa !598
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.az = fadd float %2, %i.av                    ; 3 uses
  store float %i.az, ptr %i.ay, align 4, !tbaa !597
  store float %i.az, ptr %.phi.trans.insert.i, align 4, !tbaa !599
  %i.ba = fptosi float %i.ax to i32               ; 5 uses
  %i.bb = fptosi float %i.az to i32               ; 5 uses
  %i.bc = load i32, ptr %0, align 8, !tbaa !576
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !578
  %i.bf = icmp slt i32 %i.be, %i.ba
  br i1 %i.bf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !579
  %.not.i.i12 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i12, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !578
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !580
  %i.bk = icmp slt i32 %i.bj, %i.bb
  br i1 %i.bk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !579
  %.not20.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not20.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !580
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !581
  %i.bp = icmp sgt i32 %i.bo, %i.ba
  br i1 %i.bp, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !579
  %.not21.i.i = icmp eq i32 %i.br, 0
  br i1 %.not21.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  store i32 %i.ba, ptr %i.bn, align 8, !tbaa !581
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !582
  %i.bu = icmp sgt i32 %i.bt, %i.bb
  br i1 %i.bu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !579
  %.not22.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not22.i.i, label %bb.aa, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i32 %i.bb, ptr %i.bs, align 8, !tbaa !582
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i: ; preds = %bb.aa, %bb.z
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.bx, align 4, !tbaa !579
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre15 = load i32, ptr %.phi.trans.insert14, align 8, !tbaa !583
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit

bb.ab:                                            ; preds = %_ZL24stbtt__csctx_close_shapeP12stbtt__csctx.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !584
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !583 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [14 x i8], ptr %i.bz, i64 %i.cc ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i8 1, ptr %i.ce, align 2, !tbaa !406
  %i.cf = trunc i32 %i.ba to i16
  store i16 %i.cf, ptr %i.cd, align 2, !tbaa !415
  %i.cg = trunc i32 %i.bb to i16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !416
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  store i64 0, ptr %i.ci, align 2
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit

_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit:   ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i, %bb.ab
  %i.cj = phi i32 [ %.pre15, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i ], [ %i.cb, %bb.ab ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cl = add nsw i32 %i.cj, 1
  store i32 %i.cl, ptr %i.ck, align 8, !tbaa !583
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL23stbtt__csctx_rccurve_toP12stbtt__csctxffffff(ptr nofree noundef nonnull captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %7 = load float, ptr %i.a, align 8, !tbaa !596
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %9 = load float, ptr %8, align 4, !tbaa !597
  %10 = fadd float %1, %7                         ; 2 uses
  %i.b = fadd float %2, %9                        ; 2 uses
  %11 = fadd float %3, %10                        ; 2 uses
  %i.c = fadd float %4, %i.b                      ; 2 uses
  %i.d = fadd float %5, %11                       ; 2 uses
  store float %i.d, ptr %i.a, align 8, !tbaa !596
  %i.e = fadd float %6, %i.c                      ; 2 uses
  store float %i.e, ptr %8, align 4, !tbaa !597
  %i.f = insertelement <4 x float> poison, float %i.d, i64 0
  %i.g = insertelement <4 x float> %i.f, float %i.e, i64 1
  %12 = insertelement <4 x float> %i.g, float %10, i64 2
  %13 = insertelement <4 x float> %12, float %i.b, i64 3
  %i.h = fptosi <4 x float> %13 to <4 x i32>      ; 5 uses
  %i.i = fptosi float %11 to i32                  ; 5 uses
  %i.j = fptosi float %i.c to i32                 ; 5 uses
  %i.k = load i32, ptr %0, align 8, !tbaa !576
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !578  ; 2 uses
  %i.n = extractelement <4 x i32> %i.h, i64 0     ; 6 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !579
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 %i.n, ptr %i.l, align 4, !tbaa !578
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi i32 [ %i.n, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !580  ; 2 uses
  %i.u = extractelement <4 x i32> %i.h, i64 1     ; 6 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !579
  %.not20.i.i = icmp eq i32 %i.x, 0
  br i1 %.not20.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 %i.u, ptr %i.s, align 4, !tbaa !580
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi i32 [ %i.u, %bb.g ], [ %i.t, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !581 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, %i.n
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !579
  %.not21.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not21.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 %i.n, ptr %i.z, align 8, !tbaa !581
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = phi i32 [ %i.n, %bb.j ], [ %i.aa, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !582 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, %i.u
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !579
  %.not22.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not22.i.i, label %bb.m, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 %i.u, ptr %i.af, align 8, !tbaa !582
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i: ; preds = %bb.m, %bb.l
  %i.ak = phi i32 [ %i.ag, %bb.l ], [ %i.u, %bb.m ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 1, ptr %i.al, align 4, !tbaa !579
  %i.am = extractelement <4 x i32> %i.h, i64 2    ; 6 uses
  %i.an = icmp slt i32 %i.r, %i.am
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i
  store i32 %i.am, ptr %i.l, align 4, !tbaa !578
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i
  %i.ao = phi i32 [ %i.r, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit.i ], [ %i.am, %bb.n ]
  %i.ap = extractelement <4 x i32> %i.h, i64 3    ; 6 uses
  %i.aq = icmp slt i32 %i.y, %i.ap
  br i1 %i.aq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.ap, ptr %i.s, align 4, !tbaa !580
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ar = phi i32 [ %i.y, %bb.o ], [ %i.ap, %bb.p ]
  %i.as = icmp sgt i32 %i.ae, %i.am
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.am, ptr %i.z, align 8, !tbaa !581
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.at = phi i32 [ %i.ae, %bb.q ], [ %i.am, %bb.r ]
  %i.au = icmp sgt i32 %i.ak, %i.ap
  br i1 %i.au, label %bb.t, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i

bb.t:                                             ; preds = %bb.s
  store i32 %i.ap, ptr %i.af, align 8, !tbaa !582
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i: ; preds = %bb.t, %bb.s
  %i.av = phi i32 [ %i.ak, %bb.s ], [ %i.ap, %bb.t ]
  %i.aw = icmp slt i32 %i.ao, %i.i
  br i1 %i.aw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i
  store i32 %i.i, ptr %i.l, align 4, !tbaa !578
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit28.i
  %i.ax = icmp slt i32 %i.ar, %i.j
  br i1 %i.ax, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %i.j, ptr %i.s, align 4, !tbaa !580
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ay = icmp sgt i32 %i.at, %i.i
  br i1 %i.ay, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 %i.i, ptr %i.z, align 8, !tbaa !581
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.az = icmp sgt i32 %i.av, %i.j
  br i1 %i.az, label %bb.aa, label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i

bb.aa:                                            ; preds = %bb.z
  store i32 %i.j, ptr %i.af, align 8, !tbaa !582
  br label %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i

_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i: ; preds = %bb.aa, %bb.z
  store i32 1, ptr %i.al, align 4, !tbaa !579
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !583
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit

bb.ab:                                            ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !584
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !583 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [14 x i8], ptr %i.bb, i64 %i.be ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i8 4, ptr %i.bg, align 2, !tbaa !406
  %i.bh = trunc <4 x i32> %i.h to <4 x i16>
  store <4 x i16> %i.bh, ptr %i.bf, align 2, !tbaa !93
  %i.bi = trunc i32 %i.i to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !413
  %i.bk = trunc i32 %i.j to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 10
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !414
  br label %_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit

_ZL14stbtt__csctx_vP12stbtt__csctxhiiiiii.exit:   ; preds = %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i, %bb.ab
  %i.bm = phi i32 [ %.pre, %_ZL19stbtt__track_vertexP12stbtt__csctxii.exit33.i ], [ %i.bd, %bb.ab ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bo = add nsw i32 %i.bm, 1
  store i32 %i.bo, ptr %i.bn, align 8, !tbaa !583
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL24stbtt__csctx_close_shapeP12stbtt__csctx(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load float, ptr %i.b, align 8, !tbaa !596
  %i.d = load <2 x float>, ptr %i.a, align 8, !tbaa !9 ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 0
  %i.f = fcmp une float %i.e, %i.c
  br i1 %i.f, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !597
  %i.i = extractelement <2 x float> %i.d, i64 1
  %i.j = fcmp une float %i.i, %i.h
  br i1 %i.j, label %._crit_edge, label %bb.p

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.k = fptosi <2 x float> %i.d to <2 x i32>     ; 3 uses
end_hunk_1
