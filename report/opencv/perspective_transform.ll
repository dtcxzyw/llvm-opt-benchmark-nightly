Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/perspective_transform?download=true
inline.NumInlined: 59
inline.NumDeleted: 10
begin_hunk_0_@_ZN5zxing20PerspectiveTransform21squareToQuadrilateralEffffffff:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %.sink92, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing20PerspectiveTransformE, i64 16), ptr %.sink92, align 8, !tbaa !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.sink92, i64 12
  store <2 x float> %i.bj, ptr %i.bn, align 4, !tbaa !28
  %i.bo = getelementptr inbounds nuw i8, ptr %.sink92, i64 20
  %i.bp = extractelement <2 x float> %i.bl, i64 1
  store float %i.bp, ptr %i.bo, align 4, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.sink92, i64 24
  store <2 x float> %i.bk, ptr %i.bq, align 8, !tbaa !28
  %i.br = getelementptr inbounds nuw i8, ptr %.sink92, i64 32
  %i.bs = extractelement <2 x float> %i.bl, i64 0
  store float %i.bs, ptr %i.br, align 8, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %.sink92, i64 36
  store float %1, ptr %i.bt, align 4, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %.sink92, i64 40
  %i.bv = insertelement <2 x float> <float poison, float 1.000000e+00>, float %2, i64 0
  store <2 x float> %i.bv, ptr %i.bu, align 8, !tbaa !28
  store i32 1, ptr %i.bm, align 8, !tbaa !10
  store ptr %.sink92, ptr %0, align 8, !tbaa !27
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5zxing20PerspectiveTransform5timesENS_3RefIS0_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.zxing::Ref") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr nofree noundef readonly align 8 captures(none) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #11 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load ptr, ptr %2, align 8, !tbaa !27     ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing20PerspectiveTransformE, i64 16), ptr %i.a, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.r = load <4 x float>, ptr %i.d, align 4, !tbaa !28 ; 3 uses
  %i.s = load float, ptr %i.g, align 8, !tbaa !18
  %i.t = load <2 x float>, ptr %i.h, align 4, !tbaa !28 ; 2 uses
  %i.u = load <3 x float>, ptr %i.e, align 8, !tbaa !28 ; 3 uses
  %i.v = shufflevector <3 x float> %i.u, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.w = load float, ptr %i.n, align 4, !tbaa !19
  %i.x = load <3 x float>, ptr %i.b, align 4, !tbaa !28 ; 3 uses
  %i.y = shufflevector <3 x float> %i.x, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.z = load float, ptr %i.m, align 8, !tbaa !16
  %i.aa = load <3 x float>, ptr %i.f, align 4, !tbaa !28 ; 3 uses
  %i.ab = shufflevector <3 x float> %i.aa, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ac = load float, ptr %i.o, align 8, !tbaa !22
  %i.ad = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ae = shufflevector <4 x float> %i.r, <4 x float> %i.ad, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %i.af = fmul <4 x float> %i.v, %i.ae
  %i.ag = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.y, <4 x float> %i.ag, <4 x float> %i.af)
  %i.ai = shufflevector <4 x float> %i.r, <4 x float> %i.ad, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.aj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> %i.ai, <4 x float> %i.ah)
  %i.ak = extractelement <3 x float> %i.u, i64 2
  %i.al = extractelement <3 x float> %i.x, i64 2
  %i.am = extractelement <3 x float> %i.aa, i64 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ao = load <4 x float>, ptr %i.i, align 8, !tbaa !28 ; 3 uses
  %i.ap = load float, ptr %i.l, align 4, !tbaa !23
  %i.aq = load float, ptr %i.k, align 8, !tbaa !22
  %i.ar = load float, ptr %i.j, align 4, !tbaa !21
  %i.as = shufflevector <4 x float> %i.ao, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.at = shufflevector <2 x float> %i.t, <2 x float> %i.as, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.au = shufflevector <3 x float> %i.u, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.av = insertelement <4 x float> poison, float %i.w, i64 0
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> %i.au, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ay = fmul <4 x float> %i.at, %i.ax
  %i.az = shufflevector <3 x float> %i.x, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.ba = insertelement <4 x float> poison, float %i.z, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> %i.az, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.bd = shufflevector <4 x float> %i.ao, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.be = insertelement <2 x float> %i.bd, float %i.s, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bc, <4 x float> %i.bf, <4 x float> %i.ay)
  %i.bh = shufflevector <3 x float> %i.aa, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.bi = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> %i.bh, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.bl = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.bm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bk, <4 x float> %i.bl, <4 x float> %i.bg)
  %i.bn = fmul float %i.aq, %i.ak
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.al, float %i.ar, float %i.bn)
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ap, float %i.bo)
  store <4 x float> %i.aj, ptr %i.q, align 4, !tbaa !28
  %i.bq = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.bq, ptr %i.an, align 4, !tbaa !28
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store float %i.bp, ptr %i.br, align 4, !tbaa !23
  store i32 1, ptr %i.p, align 8, !tbaa !10
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5zxing20PerspectiveTransform12buildAdjointEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.zxing::Ref") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #11 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !15 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing20PerspectiveTransformE, i64 16), ptr %i.a, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.k = load <4 x float>, ptr %i.c, align 8, !tbaa !28 ; 6 uses
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 0, i32 1> ; 2 uses
  %i.m = load <4 x float>, ptr %i.f, align 8, !tbaa !28 ; 5 uses
  %i.n = load float, ptr %i.b, align 4, !tbaa !19 ; 2 uses
  %i.o = shufflevector <4 x float> %i.k, <4 x float> %i.m, <4 x i32> <i32 2, i32 3, i32 7, i32 3>
  %i.p = fneg <4 x float> %i.o                    ; 2 uses
  %i.q = extractelement <4 x float> %i.m, i64 0
  %i.r = shufflevector <4 x float> %i.k, <4 x float> %i.m, <4 x i32> <i32 0, i32 4, i32 5, i32 6>
  %i.s = fmul <4 x float> %i.r, %i.p
  %i.t = shufflevector <4 x float> %i.m, <4 x float> %i.k, <4 x i32> <i32 3, i32 1, i32 0, i32 4>
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> %i.l, <4 x float> %i.s)
  store <4 x float> %i.u, ptr %i.j, align 4, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.w = load <2 x float>, ptr %i.e, align 4, !tbaa !28 ; 3 uses
  %i.x = load float, ptr %i.d, align 8, !tbaa !18
  %i.y = fneg <4 x float> %i.k
  %i.z = shufflevector <2 x float> %i.w, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.aa = insertelement <3 x float> %i.z, float %i.h, i64 1
  %i.ab = insertelement <3 x float> %i.aa, float %i.n, i64 2
  %i.ac = shufflevector <3 x float> %i.ab, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ad = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.ae = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> %i.ad, <4 x i32> <i32 0, i32 1, i32 0, i32 7>
  %i.ag = fmul <4 x float> %i.ac, %i.af
  %i.ah = shufflevector <4 x float> %i.k, <4 x float> %i.m, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.ai = insertelement <4 x float> %i.ah, float %i.h, i64 0
  %i.aj = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ak = shufflevector <4 x float> %i.ai, <4 x float> %i.aj, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %i.al = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.am = shufflevector <4 x float> %i.l, <4 x float> %i.al, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.an = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ak, <4 x float> %i.am, <4 x float> %i.ag)
  %i.ao = fneg float %i.x
  %i.ap = fmul float %i.q, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.h, float %i.n, float %i.ap)
  store <4 x float> %i.an, ptr %i.v, align 4, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store float %i.aq, ptr %i.ar, align 4, !tbaa !23
  store i32 1, ptr %i.i, align 8, !tbaa !10
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5zxing20PerspectiveTransform15transformPointsERSt6vectorIfSaIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !43     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2                   ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %.not = icmp eq ptr %i.b, %i.c
  %spec.select = select i1 %.not, ptr null, ptr %i.c ; 4 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = and i64 %i.g, 2147483647                 ; 4 uses
  %i.t = tail call i64 @llvm.umax.i64(i64 %i.s, i64 2)
  %i.u = add nsw i64 %i.t, -1
  %i.v = lshr i64 %i.u, 1
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.s, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.x = shl nuw nsw i64 %i.s, 2
  %2 = add nsw i64 %i.x, -4
  %i.y = and i64 %2, -8
  %i.z = getelementptr i8, ptr %spec.select, i64 %i.y
  %scevgep = getelementptr i8, ptr %i.z, i64 8
  %scevgep26 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %bound0 = icmp ult ptr %spec.select, %scevgep26
  %bound1 = icmp ult ptr %i.m, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775804      ; 3 uses
  %i.aa = shl nuw i64 %n.vec, 1
  %i.ab = load <4 x float>, ptr %i.j, align 4
  %broadcast.splat29 = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ac = load <4 x float>, ptr %i.k, align 8
  %broadcast.splat = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ad = load float, ptr %i.l, align 4, !tbaa !23, !alias.scope !44
  %broadcast.splatinsert30 = insertelement <4 x float> poison, float %i.ad, i64 0
  %broadcast.splat31 = shufflevector <4 x float> %broadcast.splatinsert30, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ae = load <4 x float>, ptr %i.m, align 4
  %broadcast.splat35 = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> zeroinitializer
  %i.af = load <4 x float>, ptr %i.n, align 8
  %broadcast.splat33 = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ag = load float, ptr %i.o, align 4, !tbaa !21, !alias.scope !44
  %broadcast.splatinsert36 = insertelement <4 x float> poison, float %i.ag, i64 0
  %broadcast.splat37 = shufflevector <4 x float> %broadcast.splatinsert36, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = load <4 x float>, ptr %i.p, align 8
  %broadcast.splat41 = shufflevector <4 x float> %i.ah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = load <4 x float>, ptr %i.q, align 4
  %broadcast.splat39 = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = load float, ptr %i.r, align 8, !tbaa !22, !alias.scope !44
  %broadcast.splatinsert42 = insertelement <4 x float> poison, float %i.aj, i64 0
  %broadcast.splat43 = shufflevector <4 x float> %broadcast.splatinsert42, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %spec.select, i64 %.idx ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.ak, align 4, !tbaa !28, !alias.scope !45, !noalias !44 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 3 uses
  %strided.vec27 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 3 uses
  %i.al = fmul <4 x float> %strided.vec27, %broadcast.splat
  %i.am = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat29, <4 x float> %strided.vec, <4 x float> %i.al)
  %i.an = fadd <4 x float> %broadcast.splat31, %i.am
  %i.ao = fdiv <4 x float> splat (float 1.000000e+00), %i.an ; 2 uses
  %i.ap = fmul <4 x float> %strided.vec27, %broadcast.splat33
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat35, <4 x float> %strided.vec, <4 x float> %i.ap)
  %i.ar = fadd <4 x float> %broadcast.splat37, %i.aq
  %i.as = fmul <4 x float> %i.ao, %i.ar
  %i.at = fmul <4 x float> %strided.vec27, %broadcast.splat39
  %i.au = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat41, <4 x float> %strided.vec, <4 x float> %i.at)
  %i.av = fadd <4 x float> %broadcast.splat43, %i.au
  %i.aw = fmul <4 x float> %i.ao, %i.av
  %interleaved.vec = shufflevector <4 x float> %i.as, <4 x float> %i.aw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.ak, align 4, !tbaa !28, !alias.scope !45, !noalias !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.aa, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %spec.select, i64 %indvars.iv ; 3 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !28 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !28 ; 3 uses
  %i.bc = load float, ptr %i.j, align 4, !tbaa !17
  %i.bd = load float, ptr %i.k, align 8, !tbaa !20
  %i.be = fmul float %i.bb, %i.bd
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.az, float %i.be)
  %i.bg = load float, ptr %i.l, align 4, !tbaa !23
  %i.bh = fadd float %i.bg, %i.bf
  %i.bi = fdiv float 1.000000e+00, %i.bh          ; 2 uses
  %i.bj = load float, ptr %i.m, align 4, !tbaa !15
  %i.bk = load float, ptr %i.n, align 8, !tbaa !18
  %i.bl = fmul float %i.bb, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.az, float %i.bl)
  %i.bn = load float, ptr %i.o, align 4, !tbaa !21
  %i.bo = fadd float %i.bn, %i.bm
  %i.bp = fmul float %i.bi, %i.bo
  store float %i.bp, ptr %i.ay, align 4, !tbaa !28
  %i.bq = load float, ptr %i.p, align 8, !tbaa !16
  %i.br = load float, ptr %i.q, align 4, !tbaa !19
  %i.bs = fmul float %i.bb, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.az, float %i.bs)
  %i.bu = load float, ptr %i.r, align 8, !tbaa !22
  %i.bv = fadd float %i.bu, %i.bt
  %i.bw = fmul float %i.bi, %i.bv
  store float %i.bw, ptr %i.ba, align 4, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bx = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.bx, label %scalar.ph, label %._crit_edge, !llvm.loop !39
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5zxing7CountedD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5zxing20PerspectiveTransformD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #12
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTSN5zxing7CountedE", !6, i64 8}
!10 = !{!9, !6, i64 8}
!11 = !{!"vtable pointer", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"float", !5, i64 0}
!14 = !{!"_ZTSN5zxing20PerspectiveTransformE", !9, i64 0, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44}
!15 = !{!14, !13, i64 12}
!16 = !{!14, !13, i64 16}
!17 = !{!14, !13, i64 20}
!18 = !{!14, !13, i64 24}
!19 = !{!14, !13, i64 28}
!20 = !{!14, !13, i64 32}
!21 = !{!14, !13, i64 36}
!22 = !{!14, !13, i64 40}
!23 = !{!14, !13, i64 44}
!24 = !{!"any pointer", !5, i64 0}
!25 = !{!"p1 _ZTSN5zxing20PerspectiveTransformE", !24, i64 0}
!26 = !{!"_ZTSN5zxing3RefINS_20PerspectiveTransformEEE", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!13, !13, i64 0}
!29 = distinct !{!29, !"_ZN5zxing20PerspectiveTransform5timesENS_3RefIS0_EE"}
!30 = distinct !{!30, !29, !"_ZN5zxing20PerspectiveTransform5timesENS_3RefIS0_EE: argument 0"}
!31 = !{!30}
!32 = distinct !{!32, !"_ZN5zxing20PerspectiveTransform12buildAdjointEv"}
!33 = distinct !{!33, !32, !"_ZN5zxing20PerspectiveTransform12buildAdjointEv: argument 0"}
!34 = !{!33}
!35 = distinct !{!35, !"LVerDomain"}
!36 = distinct !{!36, !35}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !46, !47, !48}
!39 = distinct !{!39, !46, !47}
!40 = !{!"p1 float", !24, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!41, !40, i64 8}
!43 = !{!41, !40, i64 0}
!44 = !{!36}
!45 = !{!37}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
