Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/bilateral?download=true
inline.NumInlined: 16
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dt_bilateral_memory_use:bb.a
  %i.s = extractelement <2 x float> %i.r, i64 0   ; 2 uses
  %i.t = extractelement <2 x float> %i.r, i64 1   ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn ogt float %i.s, %i.t
  %..i = select reassoc nsz arcp contract afn i1 %i.u, float %i.s, float %i.t
  %i.v = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %..i ; 2 uses
  %i.w = extractelement <2 x float> %i.d, i64 1
  %i.x = fmul reassoc nsz arcp contract afn float %i.v, %i.w
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.x)
  %i.z = fptosi float %i.y to i32
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = extractelement <2 x float> %i.d, i64 0
  %i.ad = fmul reassoc nsz arcp contract afn float %i.v, %i.ac
  %i.ae = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ad)
  %i.af = fptosi float %i.ae to i32
  %i.ag = sext i32 %i.af to i64
  %i.ah = add nsw i64 %i.ag, 4
  %i.ai = shl nuw nsw i32 %i.i, 2
  %i.aj = add nuw nsw i32 %i.ai, 4
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = mul nsw i64 %i.ak, %i.ab
  %i.am = mul i64 %i.al, %i.ah
  ret i64 %i.am
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @dt_bilateral_memory_use2(i32 noundef %0, i32 noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = fcmp reassoc nsz arcp contract afn olt float %2, 5.000000e-01
  %.0.i.i = select nsz i1 %i.a, float 5.000000e-01, float %2
  %i.b = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.c = insertelement <2 x i32> %i.b, i32 %0, i64 1
  %i.d = sitofp <2 x i32> %i.c to <2 x float>     ; 4 uses
  %i.e = fdiv reassoc nsz arcp contract afn float 1.000000e+02, %3
  %i.f = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.e)
  %i.g = fptosi float %i.f to i32
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.g, i32 4)
  %i.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 50)
  %i.j = insertelement <2 x float> poison, float %.0.i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fdiv reassoc nsz arcp contract afn <2 x float> %i.d, %i.k
  %i.m = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.l)
  %i.n = fptosi <2 x float> %i.m to <2 x i32>
  %i.o = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.n, <2 x i32> splat (i32 4))
  %i.p = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.o, <2 x i32> splat (i32 3000))
  %i.q = uitofp nneg <2 x i32> %i.p to <2 x float>
  %i.r = fdiv reassoc nsz arcp contract afn <2 x float> %i.d, %i.q ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0   ; 2 uses
  %i.t = extractelement <2 x float> %i.r, i64 1   ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn ogt float %i.s, %i.t
  %..i.i = select reassoc nsz arcp contract afn i1 %i.u, float %i.s, float %i.t
  %i.v = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %..i.i ; 2 uses
  %i.w = extractelement <2 x float> %i.d, i64 1
  %i.x = fmul reassoc nsz arcp contract afn float %i.v, %i.w
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.x)
  %i.z = fptosi float %i.y to i32
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = extractelement <2 x float> %i.d, i64 0
  %i.ad = fmul reassoc nsz arcp contract afn float %i.v, %i.ac
  %i.ae = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ad)
  %i.af = fptosi float %i.ae to i32
  %i.ag = sext i32 %i.af to i64
  %i.ah = add nsw i64 %i.ag, 4
  %i.ai = shl nuw nsw i32 %i.i, 2
  %i.aj = add nuw nsw i32 %i.ai, 4
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = mul nsw i64 %i.ab, %i.ak
  %i.am = mul i64 %i.al, %i.ah
  ret i64 %i.am
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 0, -3) i64 @dt_bilateral_singlebuffer_size(i32 noundef %0, i32 noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = fcmp reassoc nsz arcp contract afn olt float %2, 5.000000e-01
  %.0.i = select nsz i1 %i.a, float 5.000000e-01, float %2
  %i.b = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.c = insertelement <2 x i32> %i.b, i32 %0, i64 1
  %i.d = sitofp <2 x i32> %i.c to <2 x float>     ; 4 uses
  %i.e = fdiv reassoc nsz arcp contract afn float 1.000000e+02, %3
  %i.f = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.e)
  %i.g = fptosi float %i.f to i32
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.g, i32 4)
  %i.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 50)
  %i.j = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fdiv reassoc nsz arcp contract afn <2 x float> %i.d, %i.k
  %i.m = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.l)
  %i.n = fptosi <2 x float> %i.m to <2 x i32>
  %i.o = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.n, <2 x i32> splat (i32 4))
  %i.p = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.o, <2 x i32> splat (i32 3000))
  %i.q = uitofp nneg <2 x i32> %i.p to <2 x float>
  %i.r = fdiv reassoc nsz arcp contract afn <2 x float> %i.d, %i.q ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0   ; 2 uses
  %i.t = extractelement <2 x float> %i.r, i64 1   ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn ogt float %i.s, %i.t
  %..i = select reassoc nsz arcp contract afn i1 %i.u, float %i.s, float %i.t
  %i.v = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %..i ; 2 uses
  %i.w = extractelement <2 x float> %i.d, i64 1
  %i.x = fmul reassoc nsz arcp contract afn float %i.v, %i.w
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.x)
  %i.z = fptosi float %i.y to i32
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = extractelement <2 x float> %i.d, i64 0
  %i.ad = fmul reassoc nsz arcp contract afn float %i.v, %i.ac
  %i.ae = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ad)
  %i.af = fptosi float %i.ae to i32
  %i.ag = sext i32 %i.af to i64
  %i.ah = add nsw i64 %i.ag, 4
  %i.ai = shl nuw nsw i32 %i.i, 2
  %i.aj = add nuw nsw i32 %i.ai, 4
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = mul nsw i64 %i.ak, %i.ab
  %i.am = mul i64 %i.al, %i.ah
  ret i64 %i.am
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @dt_bilateral_singlebuffer_size2(i32 noundef %0, i32 noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = fcmp reassoc nsz arcp contract afn olt float %2, 5.000000e-01
  %.0.i.i = select nsz i1 %i.a, float 5.000000e-01, float %2
  %i.b = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.c = insertelement <2 x i32> %i.b, i32 %0, i64 1
  %i.d = sitofp <2 x i32> %i.c to <2 x float>     ; 4 uses
  %i.e = fdiv reassoc nsz arcp contract afn float 1.000000e+02, %3
  %i.f = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.e)
  %i.g = fptosi float %i.f to i32
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.g, i32 4)
  %i.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 50)
  %i.j = insertelement <2 x float> poison, float %.0.i.i, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fdiv reassoc nsz arcp contract afn <2 x float> %i.d, %i.k
  %i.m = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.l)
  %i.n = fptosi <2 x float> %i.m to <2 x i32>
  %i.o = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.n, <2 x i32> splat (i32 4))
  %i.p = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.o, <2 x i32> splat (i32 3000))
  %i.q = uitofp nneg <2 x i32> %i.p to <2 x float>
  %i.r = fdiv reassoc nsz arcp contract afn <2 x float> %i.d, %i.q ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0   ; 2 uses
  %i.t = extractelement <2 x float> %i.r, i64 1   ; 2 uses
  %i.u = fcmp reassoc nsz arcp contract afn ogt float %i.s, %i.t
  %..i.i = select reassoc nsz arcp contract afn i1 %i.u, float %i.s, float %i.t
  %i.v = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %..i.i ; 2 uses
  %i.w = extractelement <2 x float> %i.d, i64 1
  %i.x = fmul reassoc nsz arcp contract afn float %i.v, %i.w
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.x)
  %i.z = fptosi float %i.y to i32
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = extractelement <2 x float> %i.d, i64 0
  %i.ad = fmul reassoc nsz arcp contract afn float %i.v, %i.ac
  %i.ae = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ad)
  %i.af = fptosi float %i.ae to i32
  %i.ag = sext i32 %i.af to i64
  %i.ah = add nsw i64 %i.ag, 4
  %i.ai = shl nuw nsw i32 %i.i, 2
  %i.aj = add nuw nsw i32 %i.ai, 4
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = mul nsw i64 %i.ab, %i.ak
  %i.am = mul i64 %i.al, %i.ah
  ret i64 %i.am
}

; Function Attrs: nounwind uwtable
define noundef ptr @dt_bilateral_init(i32 noundef %0, i32 noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #14 ; 16 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp reassoc nsz arcp contract afn olt float %2, 5.000000e-01
  %.0.i = select nsz i1 %i.b, float 5.000000e-01, float %2
  %i.c = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.d = insertelement <2 x i32> %i.c, i32 %0, i64 1
  %i.e = sitofp <2 x i32> %i.d to <2 x float>     ; 3 uses
  %i.f = fdiv reassoc nsz arcp contract afn float 1.000000e+02, %3
  %i.g = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.f)
  %i.h = fptosi float %i.g to i32
  %i.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 4)
  %i.j = tail call i32 @llvm.umin.i32(i32 %i.i, i32 50)
  %i.k = uitofp nneg i32 %i.j to float
  %i.l = insertelement <2 x float> poison, float %.0.i, i64 0
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.n = fdiv reassoc nsz arcp contract afn <2 x float> %i.e, %i.m
  %i.o = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.n)
  %i.p = fptosi <2 x float> %i.o to <2 x i32>
  %i.q = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.p, <2 x i32> splat (i32 4))
  %i.r = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.q, <2 x i32> splat (i32 3000))
  %i.s = uitofp nneg <2 x i32> %i.r to <2 x float>
  %i.t = fdiv reassoc nsz arcp contract afn <2 x float> %i.e, %i.s ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 0   ; 2 uses
  %i.v = extractelement <2 x float> %i.t, i64 1   ; 2 uses
  %i.w = fcmp reassoc nsz arcp contract afn ogt float %i.u, %i.v
  %..i = select reassoc nsz arcp contract afn i1 %i.w, float %i.u, float %i.v ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store float %..i, ptr %i.x, align 4, !tbaa !11
  %4 = fdiv reassoc nsz arcp contract afn float 1.000000e+02, %i.k ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store float %4, ptr %5, align 16, !tbaa !17
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %7 = insertelement <2 x float> poison, float %..i, i64 0
  %8 = insertelement <2 x float> %7, float %4, i64 1
  %9 = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %8 ; 3 uses
  store <2 x float> %9, ptr %6, align 4, !tbaa !18
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul reassoc nsz arcp contract afn <2 x float> %10, %i.e
  %i.z = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.y)
  %i.aa = fptosi <2 x float> %i.z to <2 x i32>    ; 2 uses
  %i.ab = add nsw <2 x i32> %i.aa, splat (i32 1)  ; 2 uses
  %i.ac = extractelement <2 x i32> %i.ab, i64 1   ; 3 uses
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  store i64 %i.ad, ptr %i.a, align 64, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = extractelement <2 x i32> %i.ab, i64 0   ; 3 uses
  %i.ag = sext i32 %i.af to i64
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !22
  %11 = extractelement <2 x float> %9, i64 1
  %i.ah = fmul reassoc nnan nsz arcp contract afn float %11, 1.000000e+02
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ah)
  %i.aj = fptosi float %i.ai to i32
  %i.ak = add nsw i32 %i.aj, 1
  %i.al = sext i32 %i.ak to i64                   ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.al, ptr %i.am, align 16, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %0, ptr %i.an, align 8, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %1, ptr %i.ao, align 4, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %i.ap, align 32, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 %1, ptr %i.aq, align 4, !tbaa !26
  %i.ar = extractelement <2 x i32> %i.aa, i64 0
  %i.as = add i32 %i.ar, 3                        ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %i.as, ptr %i.at, align 8, !tbaa !27
  %i.au = sext i32 %i.as to i64
  %i.av = shl nsw i64 %i.al, 2
  %i.aw = mul i64 %i.av, %i.ad
  %i.ax = mul i64 %i.aw, %i.au                    ; 2 uses
  %i.ay = tail call ptr @dt_alloc_aligned(i64 noundef %i.ax) #15 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ay, i64 64) ]
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.az = sext i32 %i.af to i64
  %i.ba = sext i32 %i.ac to i64
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str, i64 noundef %i.ba, i64 noundef %i.az, i64 noundef %i.al) #15
  tail call void @free(ptr noundef nonnull %i.a) #15
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.ay, i8 0, i64 %i.ax, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.ay, ptr %i.bb, align 64, !tbaa !28
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !29
  %i.bd = and i32 %i.bc, 4
  %.not39 = icmp eq i32 %i.bd, 0
  br i1 %.not39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = fpext reassoc nsz arcp contract afn float %..i to double
  %i.bf = fpext reassoc nsz arcp contract afn float %2 to double
  %i.bg = fpext reassoc nsz arcp contract afn float %4 to double
  %i.bh = fpext reassoc nsz arcp contract afn float %3 to double
  %i.bi = sext i32 %i.af to i64
  %i.bj = sext i32 %i.ac to i64
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.1, i64 noundef %i.bj, i64 noundef %i.bi, i64 noundef %i.al, double noundef %i.be, double noundef %i.bf, double noundef %i.bg, double noundef %i.bh) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.a, %bb.e ], [ %i.a, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @dt_bilateral_splat(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 64, !tbaa !28  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 64, !tbaa !21    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 16, !tbaa !20  ; 6 uses
  %i.f = mul i64 %i.e, %i.c                       ; 3 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = trunc i64 %i.e to i32
  %sext128 = shl i64 %i.f, 32
  %i.i = ashr exact i64 %sext128, 32              ; 2 uses
  %i.j = add nsw i32 %i.g, 1                      ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = add nsw i32 %i.j, %i.h
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 32, !tbaa !25  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph157, label %._crit_edge

.lr.ph157:                                        ; preds = %bb.b
  %sext = shl i64 %i.e, 32                        ; 2 uses
  %sext130 = add i64 %sext, 4294967296
  %i.q = add i64 %i.f, %i.e
  %sext129 = shl i64 %i.q, 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load float, ptr %i.r, align 4, !tbaa !11 ; 2 uses
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !26   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %i.ae = insertelement <2 x i64> %i.ad, i64 %i.e, i64 1 ; 2 uses
  %i.af = add <2 x i64> %i.ae, splat (i64 -1)
  %i.ag = uitofp <2 x i64> %i.af to <2 x float>   ; 2 uses
  %i.ah = add <2 x i64> %i.ae, splat (i64 -2)     ; 2 uses
  %i.ai = trunc <2 x i64> %i.ah to <2 x i32>
  %i.aj = sext i32 %i.v to i64
  %i.ak = ashr exact i64 %sext, 30
  %i.al = ashr exact i64 %sext130, 30
  %i.am = ashr exact i64 %sext129, 30
  %i.an = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.t
  %i.ao = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.t
  %i.ap = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.t
  %i.aq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.t
  br label %bb.c

.loopexit:                                        ; preds = %._crit_edge.us, %.lr.ph, %bb.c
  %indvars.iv.next162 = add nsw i64 %indvars.iv161, %i.aj
  %exitcond166.not = icmp eq i32 %i.as, %i.o
  br i1 %exitcond166.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph157, %.loopexit
  %indvars.iv161 = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next162, %.loopexit ] ; 2 uses
  %.0119156 = phi i32 [ 0, %.lr.ph157 ], [ %i.as, %.loopexit ] ; 3 uses
  %i.ar = mul nsw i32 %i.v, %.0119156             ; 2 uses
  %i.as = add nuw nsw i32 %.0119156, 1            ; 3 uses
  %i.at = mul nsw i32 %i.v, %i.as
  %. = tail call i32 @llvm.smin.i32(i32 %i.at, i32 %i.x) ; 2 uses
  %i.au = mul nsw i32 %i.z, %.0119156
  %i.av = sitofp reassoc nsz arcp contract afn i32 %i.ar to float
  %i.aw = load float, ptr %i.aa, align 4, !tbaa !74
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.av
  %i.ay = fptosi float %i.ax to i32
  %i.az = sub i32 %i.au, %i.ay
  %i.ba = icmp slt i32 %i.ar, %.
  br i1 %i.ba, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.bb = load i64, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %i.bc = add i64 %i.bb, -2                       ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = load i32, ptr %i.ac, align 8, !tbaa !23 ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.split.us.preheader, label %.loopexit

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.bg = sext i32 %. to i64
  %i.bh = zext nneg i32 %i.be to i64
  %i.bi = add i64 %i.bb, -1
  %i.bj = uitofp reassoc nsz arcp contract afn i64 %i.bi to float ; 2 uses
  %wide.trip.count = zext nneg i32 %i.be to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge.us
  %indvars.iv163 = phi i64 [ %indvars.iv161, %.lr.ph.split.us.preheader ], [ %indvars.iv.next164, %._crit_edge.us ] ; 3 uses
  %i.bk = trunc nsw i64 %indvars.iv163 to i32
  %i.bl = sitofp reassoc nsz arcp contract afn i32 %i.bk to float
  %i.bm = load float, ptr %i.aa, align 4, !tbaa !74
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.bl ; 3 uses
  %i.bo = fcmp reassoc nsz arcp contract afn ogt float %i.bn, 0.000000e+00
  %i.bp = fcmp reassoc nsz arcp contract afn olt float %i.bn, %i.bj
  %.131.us = select reassoc nsz arcp contract afn i1 %i.bp, float %i.bn, float %i.bj
  %i.bq = select reassoc nsz arcp contract afn i1 %i.bo, float %.131.us, float 0.000000e+00 ; 2 uses
  %i.br = fptosi float %i.bq to i32               ; 2 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = icmp ugt i64 %i.bc, %i.bs
  %i.bu = select i1 %i.bt, i32 %i.br, i32 %i.bd   ; 2 uses
  %i.bv = sitofp reassoc nsz arcp contract afn i32 %i.bu to float
  %i.bw = fsub reassoc nsz arcp contract afn float %i.bq, %i.bv ; 2 uses
  %i.bx = add nsw i32 %i.az, %i.bu
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul nsw i64 %i.i, %i.by
  %i.ca = mul nsw i64 %indvars.iv163, %i.bh
  %i.cb = fmul reassoc nnan nsz arcp contract afn float %i.bw, 1.000000e+02
  %i.cc = fsub reassoc nsz arcp contract afn float 1.000000e+02, %i.cb ; 2 uses
  %i.cd = fmul reassoc nnan nsz arcp contract afn float %i.bw, 1.000000e+02 ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %i.b, i64 %i.bz
  br label %image_to_relgrid.exit.us

image_to_relgrid.exit.us:                         ; preds = %.lr.ph.split.us, %image_to_relgrid.exit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us ], [ %indvars.iv.next, %image_to_relgrid.exit.us ] ; 3 uses
  %i.cf = add nsw i64 %i.ca, %indvars.iv
  %.idx = shl nsw i64 %i.cf, 4
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !18
  %i.ci = trunc nuw nsw i64 %indvars.iv to i32
  %i.cj = uitofp nneg i32 %i.ci to float
  %i.ck = load <2 x float>, ptr %i.aa, align 4, !tbaa !18
  %i.cl = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cm = insertelement <2 x float> %i.cl, float %i.ch, i64 1
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.ck, %i.cm ; 3 uses
  %i.co = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.cn, zeroinitializer
  %i.cp = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.cn, %i.ag
  %i.cq = select <2 x i1> %i.cp, <2 x float> %i.cn, <2 x float> %i.ag
  %i.cr = select <2 x i1> %i.co, <2 x float> %i.cq, <2 x float> zeroinitializer ; 3 uses
  %i.cs = fptosi <2 x float> %i.cr to <2 x i32>   ; 2 uses
  %i.ct = sext <2 x i32> %i.cs to <2 x i64>
  %i.cu = icmp ugt <2 x i64> %i.ah, %i.ct
  %i.cv = select <2 x i1> %i.cu, <2 x i32> %i.cs, <2 x i32> %i.ai ; 3 uses
  %i.cw = sitofp <2 x i32> %i.cv to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.cr, %i.cw
  %i.cx = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop176 = fsub reassoc nsz arcp contract afn <2 x float> %i.cr, %i.cw ; 2 uses
  %i.cy = extractelement <2 x float> %foldExtExtBinop176, i64 1 ; 4 uses
  %i.cz = extractelement <2 x i32> %i.cv, i64 0
  %i.da = sext i32 %i.cz to i64
  %i.db = mul i64 %i.e, %i.da
  %i.dc = extractelement <2 x i32> %i.cv, i64 1
  %i.dd = sext i32 %i.dc to i64
  %i.de = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cx ; 2 uses
  %i.df = fmul reassoc nsz arcp contract afn float %i.cc, %i.de
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, %i.an
  %i.dh = fmul reassoc nsz arcp contract afn float %i.cc, %i.cx
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.ao ; 2 uses
  %i.dj = fmul reassoc nsz arcp contract afn float %i.cd, %i.de
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.ap ; 2 uses
  %i.dl = fmul reassoc nsz arcp contract afn float %i.cd, %i.cx
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dl, %i.aq ; 2 uses
  %i.dn = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cy ; 4 uses
  %i.do = getelementptr [4 x i8], ptr %i.ce, i64 %i.db
  %i.dp = getelementptr [4 x i8], ptr %i.do, i64 %i.dd ; 8 uses
  %i.dq = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = insertelement <2 x float> %foldExtExtBinop176, float %i.dn, i64 0
  %i.dt = fmul reassoc nsz arcp contract afn <2 x float> %i.dr, %i.ds
  %i.du = load <2 x float>, ptr %i.dp, align 4, !tbaa !18
  %i.dv = fadd reassoc nsz arcp contract afn <2 x float> %i.du, %i.dt
  store <2 x float> %i.dv, ptr %i.dp, align 4, !tbaa !18
  %i.dw = fmul reassoc nsz arcp contract afn float %i.di, %i.dn
  %i.dx = getelementptr i8, ptr %i.dp, i64 %i.ak  ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !18
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, %i.dw
  store float %i.dz, ptr %i.dx, align 4, !tbaa !18
  %i.ea = fmul reassoc nsz arcp contract afn float %i.di, %i.cy
  %i.eb = getelementptr i8, ptr %i.dp, i64 %i.al  ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !18
  %i.ed = fadd reassoc nsz arcp contract afn float %i.ec, %i.ea
  store float %i.ed, ptr %i.eb, align 4, !tbaa !18
  %i.ee = fmul reassoc nsz arcp contract afn float %i.dk, %i.dn
  %i.ef = getelementptr [4 x i8], ptr %i.dp, i64 %i.i ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !18
  %i.eh = fadd reassoc nsz arcp contract afn float %i.eg, %i.ee
  store float %i.eh, ptr %i.ef, align 4, !tbaa !18
  %i.ei = fmul reassoc nsz arcp contract afn float %i.dk, %i.cy
  %i.ej = getelementptr [4 x i8], ptr %i.dp, i64 %i.k ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !18
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, %i.ei
  store float %i.el, ptr %i.ej, align 4, !tbaa !18
  %i.em = fmul reassoc nsz arcp contract afn float %i.dm, %i.dn
  %i.en = getelementptr i8, ptr %i.dp, i64 %i.am  ; 2 uses
  %i.eo = load float, ptr %i.en, align 4, !tbaa !18
  %i.ep = fadd reassoc nsz arcp contract afn float %i.eo, %i.em
  store float %i.ep, ptr %i.en, align 4, !tbaa !18
  %i.eq = fmul reassoc nsz arcp contract afn float %i.dm, %i.cy
  %i.er = getelementptr [4 x i8], ptr %i.dp, i64 %i.m ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !18
  %i.et = fadd reassoc nsz arcp contract afn float %i.es, %i.eq
  store float %i.et, ptr %i.er, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %image_to_relgrid.exit.us

._crit_edge.us:                                   ; preds = %image_to_relgrid.exit.us
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.eu = icmp slt i64 %indvars.iv.next164, %i.bg
  br i1 %i.eu, label %.lr.ph.split.us, label %.loopexit

._crit_edge:                                      ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @dt_bilateral_blur(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %blur_line_z.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 64, !tbaa !28  ; 2 uses
  %.not23 = icmp eq ptr %i.b, null
  br i1 %.not23, label %blur_line_z.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 16, !tbaa !20  ; 3 uses
  %i.e = trunc i64 %i.d to i32                    ; 3 uses
  %i.f = load i64, ptr %0, align 64, !tbaa !21    ; 2 uses
  %i.g = mul i64 %i.f, %i.d                       ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22
  %i.k = trunc i64 %i.j to i32
  %i.l = trunc i64 %i.f to i32
  tail call fastcc void @blur_line(ptr noundef nonnull %i.b, i32 noundef %i.h, i32 noundef %i.e, i32 noundef %i.e, i32 noundef %i.k, i32 noundef %i.l)
  %i.m = load ptr, ptr %i.a, align 64, !tbaa !28
  %i.n = load i64, ptr %i.c, align 16, !tbaa !20
  %i.o = trunc i64 %i.n to i32
  %i.p = load i64, ptr %0, align 64, !tbaa !21
  %i.q = trunc i64 %i.p to i32
  %i.r = load i64, ptr %i.i, align 8, !tbaa !22
  %i.s = trunc i64 %i.r to i32
  tail call fastcc void @blur_line(ptr noundef %i.m, i32 noundef %i.e, i32 noundef %i.h, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.s)
  %i.t = load ptr, ptr %i.a, align 64, !tbaa !28  ; 9 uses
  %i.u = load i64, ptr %0, align 64, !tbaa !21    ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = load i64, ptr %i.i, align 8, !tbaa !22   ; 2 uses
  %i.x = trunc i64 %i.w to i32                    ; 5 uses
  %i.y = load i64, ptr %i.c, align 16, !tbaa !20  ; 3 uses
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %i.aa = icmp sgt i32 %i.v, 0
  br i1 %i.aa, label %.lr.ph.i, label %blur_line_z.exit

.lr.ph.i:                                         ; preds = %bb.c
  %sext = shl i64 %i.d, 32
  %i.ab = ashr exact i64 %sext, 32                ; 2 uses
  %i.ac = icmp sgt i32 %i.x, 0
  %i.ad = sub i64 %i.g, %i.y
  %sext24 = shl i64 %i.ad, 32
  %i.ae = ashr exact i64 %sext24, 32
  %i.af = add nsw i64 %i.ae, 2                    ; 3 uses
  br i1 %i.ac, label %.lr.ph.split.i, label %blur_line_z.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ag = icmp sgt i32 %i.z, 4
  %wide.trip.count100.i = and i64 %i.u, 2147483647 ; 2 uses
  br i1 %i.ag, label %.lr.ph86.us.preheader.i, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %.lr.ph.split.i
  %xtraiter = and i32 %i.x, 1
  %i.ah = icmp eq i32 %i.x, 1
  %unroll_iter = and i32 %i.x, 2147483646
  %invariant.op = add i64 2, %i.af
  %invariant.op77 = add i64 2, %i.af
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod71 = trunc i64 %i.w to i1
  br label %.lr.ph86.i

.lr.ph86.us.preheader.i:                          ; preds = %.lr.ph.split.i
  %i.ai = add nsw i32 %i.z, -3
  %i.aj = add i64 %i.y, 4294967292                ; 2 uses
  %i.ak = and i64 %i.aj, 4294967295               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ak, 32
  %n.vec = and i64 %i.aj, 4294967264              ; 4 uses
  %i.al = trunc nuw i64 %n.vec to i32
  %i.am = or disjoint i32 %i.al, 2
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br label %.lr.ph86.us.i

.lr.ph86.us.i:                                    ; preds = %._crit_edge87.split.us.us.i, %.lr.ph86.us.preheader.i
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph86.us.preheader.i ], [ %indvars.iv.next98.i, %._crit_edge87.split.us.us.i ] ; 2 uses
  %i.an = mul nsw i64 %indvars.iv97.i, %i.ab
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.lr.ph86.us.i
  %.07484.us.us.i = phi i32 [ 0, %.lr.ph86.us.i ], [ %i.ed, %._crit_edge.us.us.i ]
  %.07583.us.us.i = phi i64 [ %i.an, %.lr.ph86.us.i ], [ %i.ec, %._crit_edge.us.us.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.07583.us.us.i ; 4 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !18 ; 3 uses
  %i.aq = getelementptr i8, ptr %i.ao, i64 4
  %i.ar = load <2 x float>, ptr %i.aq, align 4, !tbaa !18 ; 5 uses
  %i.as = extractelement <2 x float> %i.ar, i64 1 ; 2 uses
  %i.at = add i64 %.07583.us.us.i, 2              ; 3 uses
  %i.au = fsub reassoc nsz arcp contract afn float %i.as, %i.ap
  %i.av = getelementptr i8, ptr %i.ao, i64 12
  %i.aw = load float, ptr %i.av, align 4, !tbaa !18
  %i.ax = insertelement <2 x float> %i.ar, float %i.au, i64 1
  %i.ay = fmul reassoc nsz arcp contract afn <2 x float> %i.ax, splat (float 2.500000e-01)
  %i.az = fmul reassoc nsz arcp contract afn float %i.aw, 1.250000e-01
  %i.ba = fmul reassoc nsz arcp contract afn float %i.as, 1.250000e-01
  %i.bb = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.az, i64 1
  %i.bd = fadd reassoc nsz arcp contract afn <2 x float> %i.bc, %i.ay
  store <2 x float> %i.bd, ptr %i.ao, align 4, !tbaa !18
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.i
  %i.be = add i64 %i.at, %n.vec                   ; 2 uses
  %i.bf = shufflevector <2 x float> %i.ar, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1>
  %i.bg = shufflevector <2 x float> %i.ar, <2 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>
  %vector.recur.init51 = insertelement <8 x float> poison, float %i.ap, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <8 x float> [ %i.bf, %vector.ph ], [ %wide.load55, %vector.body ]
  %vector.recur50 = phi <8 x float> [ %i.bg, %vector.ph ], [ %i.bp, %vector.body ]
  %vector.recur52 = phi <8 x float> [ %vector.recur.init51, %vector.ph ], [ %i.bt, %vector.body ]
  %i.bh = add i64 %i.at, %index                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.bh ; 8 uses
  %i.bj = getelementptr [4 x i8], ptr %i.t, i64 %i.bh ; 4 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  %i.bl = getelementptr i8, ptr %i.bj, i64 36
  %i.bm = getelementptr i8, ptr %i.bj, i64 68
  %i.bn = getelementptr i8, ptr %i.bj, i64 100
  %wide.load = load <8 x float>, ptr %i.bk, align 4, !tbaa !18 ; 3 uses
  %wide.load53 = load <8 x float>, ptr %i.bl, align 4, !tbaa !18 ; 4 uses
  %wide.load54 = load <8 x float>, ptr %i.bm, align 4, !tbaa !18 ; 6 uses
  %wide.load55 = load <8 x float>, ptr %i.bn, align 4, !tbaa !18 ; 9 uses
  %i.bo = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 poison>
  %i.bp = shufflevector <8 x float> %wide.load54, <8 x float> %wide.load55, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bq = shufflevector <8 x float> %vector.recur50, <8 x float> %i.bo, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 3 uses
  %i.br = shufflevector <8 x float> %wide.load, <8 x float> %wide.load53, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13> ; 2 uses
  %i.bs = shufflevector <8 x float> %wide.load53, <8 x float> %wide.load54, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.bt = shufflevector <8 x float> %wide.load54, <8 x float> %wide.load55, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13> ; 2 uses
  %i.bu = shufflevector <8 x float> %vector.recur52, <8 x float> %i.bq, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bv = shufflevector <8 x float> %i.bq, <8 x float> %i.br, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bw = shufflevector <8 x float> %wide.load53, <8 x float> %wide.load54, <8 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %i.bx = shufflevector <8 x float> %wide.load54, <8 x float> %wide.load55, <8 x i32> <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>
  %i.by = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %i.bq
  %i.bz = fsub reassoc nsz arcp contract afn <8 x float> %wide.load53, %i.br
  %i.ca = fsub reassoc nsz arcp contract afn <8 x float> %wide.load54, %i.bs
  %i.cb = fsub reassoc nsz arcp contract afn <8 x float> %wide.load55, %i.bt
  %i.cc = fmul reassoc nsz arcp contract afn <8 x float> %i.by, splat (float 2.500000e-01)
  %i.cd = fmul reassoc nsz arcp contract afn <8 x float> %i.bz, splat (float 2.500000e-01)
  %i.ce = fmul reassoc nsz arcp contract afn <8 x float> %i.ca, splat (float 2.500000e-01)
  %i.cf = fmul reassoc nsz arcp contract afn <8 x float> %i.cb, splat (float 2.500000e-01)
  %i.cg = getelementptr i8, ptr %i.bi, i64 8
  %i.ch = getelementptr i8, ptr %i.bi, i64 40
  %i.ci = getelementptr i8, ptr %i.bi, i64 72
  %i.cj = getelementptr i8, ptr %i.bi, i64 104
  %wide.load56 = load <8 x float>, ptr %i.cg, align 4, !tbaa !18
  %wide.load57 = load <8 x float>, ptr %i.ch, align 4, !tbaa !18
  %wide.load58 = load <8 x float>, ptr %i.ci, align 4, !tbaa !18
  %wide.load59 = load <8 x float>, ptr %i.cj, align 4, !tbaa !18 ; 2 uses
  %i.ck = fsub reassoc nsz arcp contract afn <8 x float> %wide.load56, %i.bu
  %i.cl = fsub reassoc nsz arcp contract afn <8 x float> %wide.load57, %i.bv
  %i.cm = fsub reassoc nsz arcp contract afn <8 x float> %wide.load58, %i.bw
  %i.cn = fsub reassoc nsz arcp contract afn <8 x float> %wide.load59, %i.bx
  %i.co = fmul reassoc nsz arcp contract afn <8 x float> %i.ck, splat (float 1.250000e-01)
  %i.cp = fmul reassoc nsz arcp contract afn <8 x float> %i.cl, splat (float 1.250000e-01)
  %i.cq = fmul reassoc nsz arcp contract afn <8 x float> %i.cm, splat (float 1.250000e-01)
  %i.cr = fmul reassoc nsz arcp contract afn <8 x float> %i.cn, splat (float 1.250000e-01)
  %i.cs = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %i.cc
  %i.ct = fadd reassoc nsz arcp contract afn <8 x float> %i.cp, %i.cd
  %i.cu = fadd reassoc nsz arcp contract afn <8 x float> %i.cq, %i.ce
  %i.cv = fadd reassoc nsz arcp contract afn <8 x float> %i.cr, %i.cf
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  store <8 x float> %i.cs, ptr %i.bi, align 4, !tbaa !18
  store <8 x float> %i.ct, ptr %i.cw, align 4, !tbaa !18
  store <8 x float> %i.cu, ptr %i.cx, align 4, !tbaa !18
  store <8 x float> %i.cv, ptr %i.cy, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x float> %wide.load55, i64 7
  %vector.recur.extract62 = extractelement <8 x float> %wide.load55, i64 5
  %i.da = extractelement <8 x float> %wide.load59, i64 7
  %i.db = shufflevector <8 x float> %wide.load55, <8 x float> poison, <2 x i32> <i32 5, i32 6>
  %i.dc = shufflevector <8 x float> %wide.load55, <8 x float> poison, <2 x i32> <i32 6, i32 7>
  br i1 %cmp.n, label %._crit_edge.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.i, %middle.block
  %.080.us.us.i.ph = phi i32 [ 2, %.lr.ph.us.us.i ], [ %i.am, %middle.block ]
  %.07378.us.us.i.ph = phi float [ %i.ap, %.lr.ph.us.us.i ], [ %vector.recur.extract62, %middle.block ]
  %.177.us.us.i.ph = phi i64 [ %i.at, %.lr.ph.us.us.i ], [ %i.be, %middle.block ]
  %.ph = phi <2 x float> [ %i.ar, %.lr.ph.us.us.i ], [ %i.dc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.080.us.us.i = phi i32 [ %i.dq, %scalar.ph ], [ %.080.us.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.07378.us.us.i = phi float [ %i.di, %scalar.ph ], [ %.07378.us.us.i.ph, %scalar.ph.preheader ]
  %.177.us.us.i = phi i64 [ %i.df, %scalar.ph ], [ %.177.us.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dd = phi <2 x float> [ %i.ds, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.177.us.us.i ; 2 uses
  %i.df = add i64 %.177.us.us.i, 1                ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !18 ; 3 uses
  %i.di = extractelement <2 x float> %i.dd, i64 0 ; 2 uses
  %i.dj = fsub reassoc nsz arcp contract afn float %i.dh, %i.di
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, 2.500000e-01
  %i.dl = getelementptr i8, ptr %i.de, i64 8
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !18 ; 2 uses
  %i.dn = fsub reassoc nsz arcp contract afn float %i.dm, %.07378.us.us.i
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, 1.250000e-01
  %i.dp = fadd reassoc nsz arcp contract afn float %i.do, %i.dk
  store float %i.dp, ptr %i.de, align 4, !tbaa !18
  %i.dq = add nuw nsw i32 %.080.us.us.i, 1
  %exitcond95.not.i = icmp eq i32 %.080.us.us.i, %i.ai
  %i.dr = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ds = insertelement <2 x float> %i.dr, float %i.dh, i64 1
  br i1 %exitcond95.not.i, label %._crit_edge.us.us.i, label %scalar.ph, !llvm.loop !78

._crit_edge.us.us.i:                              ; preds = %scalar.ph, %middle.block
  %.lcssa47 = phi i64 [ %i.be, %middle.block ], [ %i.df, %scalar.ph ] ; 2 uses
  %.lcssa46 = phi float [ %vector.recur.extract, %middle.block ], [ %i.dh, %scalar.ph ]
  %.lcssa = phi float [ %i.da, %middle.block ], [ %i.dm, %scalar.ph ]
  %i.dt = phi <2 x float> [ %i.db, %middle.block ], [ %i.dd, %scalar.ph ] ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.lcssa47
  %i.dv = extractelement <2 x float> %i.dt, i64 1
  %i.dw = fsub reassoc nsz arcp contract afn float %.lcssa, %i.dv
  %i.dx = fmul reassoc nsz arcp contract afn <2 x float> %i.dt, splat (float 1.250000e-01)
  %i.dy = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %.lcssa46, i64 1
  %i.ea = fmul reassoc nsz arcp contract afn <2 x float> %i.dz, <float 2.500000e-01, float -2.500000e-01>
  %i.eb = fsub reassoc nsz arcp contract afn <2 x float> %i.ea, %i.dx
  store <2 x float> %i.eb, ptr %i.du, align 4, !tbaa !18
  %i.ec = add i64 %.lcssa47, %i.af
  %i.ed = add nuw nsw i32 %.07484.us.us.i, 1      ; 2 uses
  %exitcond96.not.i = icmp eq i32 %i.ed, %i.x
  br i1 %exitcond96.not.i, label %._crit_edge87.split.us.us.i, label %.lr.ph.us.us.i

._crit_edge87.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %exitcond101.not.i = icmp eq i64 %indvars.iv.next98.i, %wide.trip.count100.i
  br i1 %exitcond101.not.i, label %blur_line_z.exit, label %.lr.ph86.us.i

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.preheader, %._crit_edge87.split.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge87.split.i ], [ 0, %.lr.ph86.i.preheader ] ; 2 uses
  %i.ee = mul nsw i64 %indvars.iv.i, %i.ab        ; 2 uses
  br i1 %i.ah, label %.epil.preheader, label %.lr.ph86.i.new

._crit_edge87.split.i.unr-lcssa:                  ; preds = %.lr.ph86.i.new
  br i1 %lcmp.mod.not, label %._crit_edge87.split.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge87.split.i.unr-lcssa, %.lr.ph86.i
  %.07583.i.epil.init = phi i64 [ %i.ee, %.lr.ph86.i ], [ %.reass78, %._crit_edge87.split.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.07583.i.epil.init ; 2 uses
  %i.eg = load <4 x float>, ptr %i.ef, align 4, !tbaa !18 ; 4 uses
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ei = fsub reassoc nsz arcp contract afn <4 x float> %i.eh, %i.eg
  %i.ej = shufflevector <4 x float> %i.eg, <4 x float> %i.ei, <4 x i32> <i32 1, i32 4, i32 5, i32 2>
  %i.ek = fmul reassoc nsz arcp contract afn <4 x float> %i.ej, <float 2.500000e-01, float 2.500000e-01, float 2.500000e-01, float -2.500000e-01> ; 2 uses
  %i.el = fmul reassoc nsz arcp contract afn <4 x float> %i.eg, splat (float 1.250000e-01)
  %i.em = shufflevector <4 x float> %i.el, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.en = fadd reassoc nsz arcp contract afn <4 x float> %i.ek, %i.em
  %i.eo = fsub reassoc nsz arcp contract afn <4 x float> %i.ek, %i.em
  %i.ep = shufflevector <4 x float> %i.en, <4 x float> %i.eo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ep, ptr %i.ef, align 4, !tbaa !18
  br label %._crit_edge87.split.i

._crit_edge87.split.i:                            ; preds = %._crit_edge87.split.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond94.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count100.i
  br i1 %exitcond94.not.i, label %blur_line_z.exit, label %.lr.ph86.i

.lr.ph86.i.new:                                   ; preds = %.lr.ph86.i, %.lr.ph86.i.new
  %.07583.i = phi i64 [ %.reass78, %.lr.ph86.i.new ], [ %i.ee, %.lr.ph86.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %.lr.ph86.i.new ], [ 0, %.lr.ph86.i ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.07583.i ; 2 uses
  %i.er = load <4 x float>, ptr %i.eq, align 4, !tbaa !18 ; 4 uses
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.et = fsub reassoc nsz arcp contract afn <4 x float> %i.es, %i.er
  %i.eu = shufflevector <4 x float> %i.er, <4 x float> %i.et, <4 x i32> <i32 1, i32 4, i32 5, i32 2>
  %i.ev = fmul reassoc nsz arcp contract afn <4 x float> %i.eu, <float 2.500000e-01, float 2.500000e-01, float 2.500000e-01, float -2.500000e-01> ; 2 uses
  %i.ew = fmul reassoc nsz arcp contract afn <4 x float> %i.er, splat (float 1.250000e-01)
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.ey = fadd reassoc nsz arcp contract afn <4 x float> %i.ev, %i.ex
  %i.ez = fsub reassoc nsz arcp contract afn <4 x float> %i.ev, %i.ex
  %i.fa = shufflevector <4 x float> %i.ey, <4 x float> %i.ez, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.fa, ptr %i.eq, align 4, !tbaa !18
  %.reass = add i64 %.07583.i, %invariant.op      ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.reass ; 2 uses
  %i.fc = load <4 x float>, ptr %i.fb, align 4, !tbaa !18 ; 4 uses
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.fe = fsub reassoc nsz arcp contract afn <4 x float> %i.fd, %i.fc
  %i.ff = shufflevector <4 x float> %i.fc, <4 x float> %i.fe, <4 x i32> <i32 1, i32 4, i32 5, i32 2>
  %i.fg = fmul reassoc nsz arcp contract afn <4 x float> %i.ff, <float 2.500000e-01, float 2.500000e-01, float 2.500000e-01, float -2.500000e-01> ; 2 uses
  %i.fh = fmul reassoc nsz arcp contract afn <4 x float> %i.fc, splat (float 1.250000e-01)
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.fj = fadd reassoc nsz arcp contract afn <4 x float> %i.fg, %i.fi
  %i.fk = fsub reassoc nsz arcp contract afn <4 x float> %i.fg, %i.fi
  %i.fl = shufflevector <4 x float> %i.fj, <4 x float> %i.fk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.fl, ptr %i.fb, align 4, !tbaa !18
  %.reass78 = add i64 %.reass, %invariant.op77    ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge87.split.i.unr-lcssa, label %.lr.ph86.i.new

blur_line_z.exit:                                 ; preds = %._crit_edge87.split.i, %._crit_edge87.split.us.us.i, %.lr.ph.i, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @blur_line(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #9 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 0
  %i.c = sext i32 %2 to i64                       ; 10 uses
  %i.d = shl nsw i32 %2, 1
  %i.e = sext i32 %i.d to i64                     ; 8 uses
  %i.f = mul nsw i32 %5, %2
  %i.g = sub nsw i32 %1, %i.f
  %i.h = sext i32 %i.g to i64
  %i.i = add nsw i64 %i.h, %i.c                   ; 2 uses
  br i1 %i.b, label %.lr.ph.split, label %._crit_edge.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.j = icmp sgt i32 %5, 4
  %wide.trip.count110 = zext nneg i32 %3 to i64   ; 2 uses
  br i1 %i.j, label %.lr.ph96.us.preheader, label %.lr.ph96

.lr.ph96.us.preheader:                            ; preds = %.lr.ph.split
  %i.k = add nsw i32 %5, -3
  %i.l = add nsw i32 %5, -4                       ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %min.iters.check = icmp ugt i32 %i.l, 31
  %ident.check.not = icmp eq i32 %2, 1
  %or.cond = and i1 %min.iters.check, %ident.check.not
  %n.vec = and i64 %i.m, 4294967264               ; 4 uses
  %i.n = trunc nuw i64 %n.vec to i32
  %i.o = or disjoint i32 %i.n, 2
  %cmp.n = icmp eq i64 %n.vec, %i.m
  %i.p = add nsw i32 %5, -4
  br label %.lr.ph96.us

.lr.ph96.us:                                      ; preds = %.lr.ph96.us.preheader, %._crit_edge97.split.us.us
  %indvars.iv107 = phi i64 [ 0, %.lr.ph96.us.preheader ], [ %indvars.iv.next108, %._crit_edge97.split.us.us ] ; 2 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph96.us
  %.08494.us.us = phi i32 [ 0, %.lr.ph96.us ], [ %i.fa, %._crit_edge.us.us ]
  %.08593.us.us = phi i64 [ %indvars.iv107, %.lr.ph96.us ], [ %i.ez, %._crit_edge.us.us ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08593.us.us ; 3 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !18 ; 4 uses
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, 3.750000e-01
  %i.t = add i64 %.08593.us.us, %i.c              ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t ; 4 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !18
  %i.w = fmul reassoc nsz arcp contract afn float %i.v, 2.500000e-01
  %i.x = fadd reassoc nsz arcp contract afn float %i.w, %i.s
  %i.y = getelementptr [4 x i8], ptr %i.q, i64 %i.e
  %i.z = load float, ptr %i.y, align 4, !tbaa !18
  %i.aa = fmul reassoc nsz arcp contract afn float %i.z, 6.250000e-02
  %i.ab = fadd reassoc nsz arcp contract afn float %i.x, %i.aa
  store float %i.ab, ptr %i.q, align 4, !tbaa !18
  %i.ac = load float, ptr %i.u, align 4, !tbaa !18 ; 3 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, 3.750000e-01
  %i.ae = add i64 %i.t, %i.c                      ; 4 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !18
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ag, %i.r
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, 2.500000e-01
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, %i.ad
  %i.ak = getelementptr [4 x i8], ptr %i.u, i64 %i.e
  %i.al = load float, ptr %i.ak, align 4, !tbaa !18
  %i.am = fmul reassoc nsz arcp contract afn float %i.al, 6.250000e-02
  %i.an = fadd reassoc nsz arcp contract afn float %i.aj, %i.am
  store float %i.an, ptr %i.u, align 4, !tbaa !18
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph.us.us
  %i.ao = add i64 %i.ae, %n.vec                   ; 2 uses
  %vector.recur.init = insertelement <8 x float> poison, float %i.ac, i64 7
  %vector.recur.init3 = insertelement <8 x float> poison, float %i.r, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <8 x float> [ %vector.recur.init, %vector.ph ], [ %wide.load7, %vector.body ]
  %vector.recur4 = phi <8 x float> [ %vector.recur.init3, %vector.ph ], [ %i.ax, %vector.body ]
  %i.ap = add i64 %i.ae, %index                   ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ap ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.aq, align 4, !tbaa !18 ; 4 uses
  %wide.load5 = load <8 x float>, ptr %i.ar, align 4, !tbaa !18 ; 5 uses
  %wide.load6 = load <8 x float>, ptr %i.as, align 4, !tbaa !18 ; 5 uses
  %wide.load7 = load <8 x float>, ptr %i.at, align 4, !tbaa !18 ; 7 uses
  %i.au = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.av = shufflevector <8 x float> %wide.load, <8 x float> %wide.load5, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.aw = shufflevector <8 x float> %wide.load5, <8 x float> %wide.load6, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ax = shufflevector <8 x float> %wide.load6, <8 x float> %wide.load7, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14> ; 2 uses
  %i.ay = shufflevector <8 x float> %vector.recur4, <8 x float> %i.au, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.az = shufflevector <8 x float> %wide.load, <8 x float> %wide.load5, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.ba = shufflevector <8 x float> %wide.load5, <8 x float> %wide.load6, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.bb = shufflevector <8 x float> %wide.load6, <8 x float> %wide.load7, <8 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13>
  %i.bc = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, splat (float 3.750000e-01)
  %i.bd = fmul reassoc nsz arcp contract afn <8 x float> %wide.load5, splat (float 3.750000e-01)
  %i.be = fmul reassoc nsz arcp contract afn <8 x float> %wide.load6, splat (float 3.750000e-01)
  %i.bf = fmul reassoc nsz arcp contract afn <8 x float> %wide.load7, splat (float 3.750000e-01)
  %i.bg = getelementptr [4 x i8], ptr %0, i64 %i.ap ; 4 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %i.bi = getelementptr i8, ptr %i.bg, i64 36
  %i.bj = getelementptr i8, ptr %i.bg, i64 68
  %i.bk = getelementptr i8, ptr %i.bg, i64 100
  %wide.load8 = load <8 x float>, ptr %i.bh, align 4, !tbaa !18
  %wide.load9 = load <8 x float>, ptr %i.bi, align 4, !tbaa !18
  %wide.load10 = load <8 x float>, ptr %i.bj, align 4, !tbaa !18
  %wide.load11 = load <8 x float>, ptr %i.bk, align 4, !tbaa !18
  %i.bl = fadd reassoc nsz arcp contract afn <8 x float> %wide.load8, %i.au
  %i.bm = fadd reassoc nsz arcp contract afn <8 x float> %wide.load9, %i.av
  %i.bn = fadd reassoc nsz arcp contract afn <8 x float> %wide.load10, %i.aw
  %i.bo = fadd reassoc nsz arcp contract afn <8 x float> %wide.load11, %i.ax
  %i.bp = fmul reassoc nsz arcp contract afn <8 x float> %i.bl, splat (float 2.500000e-01)
  %i.bq = fmul reassoc nsz arcp contract afn <8 x float> %i.bm, splat (float 2.500000e-01)
  %i.br = fmul reassoc nsz arcp contract afn <8 x float> %i.bn, splat (float 2.500000e-01)
  %i.bs = fmul reassoc nsz arcp contract afn <8 x float> %i.bo, splat (float 2.500000e-01)
  %i.bt = fadd reassoc nsz arcp contract afn <8 x float> %i.bp, %i.bc
  %i.bu = fadd reassoc nsz arcp contract afn <8 x float> %i.bq, %i.bd
  %i.bv = fadd reassoc nsz arcp contract afn <8 x float> %i.br, %i.be
  %i.bw = fadd reassoc nsz arcp contract afn <8 x float> %i.bs, %i.bf
  %i.bx = getelementptr [4 x i8], ptr %i.aq, i64 %i.e ; 4 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 32
  %i.bz = getelementptr i8, ptr %i.bx, i64 64
  %i.ca = getelementptr i8, ptr %i.bx, i64 96
  %wide.load12 = load <8 x float>, ptr %i.bx, align 4, !tbaa !18
  %wide.load13 = load <8 x float>, ptr %i.by, align 4, !tbaa !18
  %wide.load14 = load <8 x float>, ptr %i.bz, align 4, !tbaa !18
  %wide.load15 = load <8 x float>, ptr %i.ca, align 4, !tbaa !18
  %i.cb = fadd reassoc nsz arcp contract afn <8 x float> %wide.load12, %i.ay
  %i.cc = fadd reassoc nsz arcp contract afn <8 x float> %wide.load13, %i.az
  %i.cd = fadd reassoc nsz arcp contract afn <8 x float> %wide.load14, %i.ba
  %i.ce = fadd reassoc nsz arcp contract afn <8 x float> %wide.load15, %i.bb
  %i.cf = fmul reassoc nsz arcp contract afn <8 x float> %i.cb, splat (float 6.250000e-02)
  %i.cg = fmul reassoc nsz arcp contract afn <8 x float> %i.cc, splat (float 6.250000e-02)
  %i.ch = fmul reassoc nsz arcp contract afn <8 x float> %i.cd, splat (float 6.250000e-02)
  %i.ci = fmul reassoc nsz arcp contract afn <8 x float> %i.ce, splat (float 6.250000e-02)
  %i.cj = fadd reassoc nsz arcp contract afn <8 x float> %i.bt, %i.cf
  %i.ck = fadd reassoc nsz arcp contract afn <8 x float> %i.bu, %i.cg
  %i.cl = fadd reassoc nsz arcp contract afn <8 x float> %i.bv, %i.ch
  %i.cm = fadd reassoc nsz arcp contract afn <8 x float> %i.bw, %i.ci
  store <8 x float> %i.cj, ptr %i.aq, align 4, !tbaa !18
  store <8 x float> %i.ck, ptr %i.ar, align 4, !tbaa !18
  store <8 x float> %i.cl, ptr %i.as, align 4, !tbaa !18
  store <8 x float> %i.cm, ptr %i.at, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract.for.phi = extractelement <8 x float> %wide.load7, i64 6
  %vector.recur.extract = extractelement <8 x float> %wide.load7, i64 7 ; 2 uses
  %vector.recur.extract16 = extractelement <8 x float> %wide.load7, i64 6
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us, %middle.block
  %.090.us.us.ph = phi i32 [ 2, %.lr.ph.us.us ], [ %i.o, %middle.block ] ; 4 uses
  %.08289.us.us.ph = phi float [ %i.ac, %.lr.ph.us.us ], [ %vector.recur.extract, %middle.block ] ; 4 uses
  %.08388.us.us.ph = phi float [ %i.r, %.lr.ph.us.us ], [ %vector.recur.extract16, %middle.block ] ; 2 uses
  %.187.us.us.ph = phi i64 [ %i.ae, %.lr.ph.us.us ], [ %i.ao, %middle.block ] ; 3 uses
  %i.co = sub i32 %5, %.090.us.us.ph
  %xtraiter = and i32 %i.co, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.187.us.us.ph ; 3 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !18 ; 3 uses
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, 3.750000e-01
  %i.cs = add i64 %.187.us.us.ph, %i.c            ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !18
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, %.08289.us.us.ph
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, 2.500000e-01
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, %i.cr
  %i.cy = getelementptr [4 x i8], ptr %i.cp, i64 %i.e
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !18
  %i.da = fadd reassoc nsz arcp contract afn float %i.cz, %.08388.us.us.ph
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, 6.250000e-02
  %i.dc = fadd reassoc nsz arcp contract afn float %i.cx, %i.db
  store float %i.dc, ptr %i.cp, align 4, !tbaa !18
  %i.dd = add nuw nsw i32 %.090.us.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa20.unr = phi float [ poison, %scalar.ph.preheader ], [ %i.cq, %scalar.ph.prol ]
  %.lcssa19.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cs, %scalar.ph.prol ]
  %.090.us.us.unr = phi i32 [ %.090.us.us.ph, %scalar.ph.preheader ], [ %i.dd, %scalar.ph.prol ]
  %.08289.us.us.unr = phi float [ %.08289.us.us.ph, %scalar.ph.preheader ], [ %i.cq, %scalar.ph.prol ]
  %.08388.us.us.unr = phi float [ %.08388.us.us.ph, %scalar.ph.preheader ], [ %.08289.us.us.ph, %scalar.ph.prol ]
  %.187.us.us.unr = phi i64 [ %.187.us.us.ph, %scalar.ph.preheader ], [ %i.cs, %scalar.ph.prol ]
  %i.de = icmp eq i32 %i.k, %.090.us.us.ph
  br i1 %i.de, label %._crit_edge.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.090.us.us = phi i32 [ %i.eh, %scalar.ph ], [ %.090.us.us.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.08289.us.us = phi float [ %i.du, %scalar.ph ], [ %.08289.us.us.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.08388.us.us = phi float [ %i.dg, %scalar.ph ], [ %.08388.us.us.unr, %scalar.ph.prol.loopexit ]
  %.187.us.us = phi i64 [ %i.dw, %scalar.ph ], [ %.187.us.us.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.187.us.us ; 3 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !18 ; 4 uses
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, 3.750000e-01
  %i.di = add i64 %.187.us.us, %i.c               ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.di
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !18
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dk, %.08289.us.us
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dl, 2.500000e-01
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dm, %i.dh
  %i.do = getelementptr [4 x i8], ptr %i.df, i64 %i.e
  %i.dp = load float, ptr %i.do, align 4, !tbaa !18
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dp, %.08388.us.us
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dq, 6.250000e-02
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dn, %i.dr
  store float %i.ds, ptr %i.df, align 4, !tbaa !18
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.di ; 3 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !18 ; 3 uses
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, 3.750000e-01
  %i.dw = add i64 %i.di, %i.c                     ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !18
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, %i.dg
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, 2.500000e-01
  %i.eb = fadd reassoc nsz arcp contract afn float %i.ea, %i.dv
  %i.ec = getelementptr [4 x i8], ptr %i.dt, i64 %i.e
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !18
  %i.ee = fadd reassoc nsz arcp contract afn float %i.ed, %.08289.us.us
  %i.ef = fmul reassoc nsz arcp contract afn float %i.ee, 6.250000e-02
  %i.eg = fadd reassoc nsz arcp contract afn float %i.eb, %i.ef
  store float %i.eg, ptr %i.dt, align 4, !tbaa !18
  %i.eh = add nuw nsw i32 %.090.us.us, 2
  %exitcond105.not.1 = icmp eq i32 %.090.us.us, %i.p
  br i1 %exitcond105.not.1, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !80

._crit_edge.us.us:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.08289.us.us.lcssa = phi float [ %vector.recur.extract.for.phi, %middle.block ], [ %.08289.us.us.ph, %scalar.ph.prol.loopexit ], [ %i.dg, %scalar.ph ]
  %.lcssa2 = phi float [ %vector.recur.extract, %middle.block ], [ %.lcssa20.unr, %scalar.ph.prol.loopexit ], [ %i.du, %scalar.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.ao, %middle.block ], [ %.lcssa19.unr, %scalar.ph.prol.loopexit ], [ %i.dw, %scalar.ph ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.lcssa ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !18 ; 2 uses
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, 3.750000e-01
  %i.el = add i64 %.lcssa, %i.c                   ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.el ; 3 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !18
  %i.eo = fadd reassoc nsz arcp contract afn float %i.en, %.lcssa2
  %i.ep = fmul reassoc nsz arcp contract afn float %i.eo, 2.500000e-01
  %i.eq = fmul reassoc nsz arcp contract afn float %.08289.us.us.lcssa, 6.250000e-02
  %i.er = fadd reassoc nsz arcp contract afn float %i.ek, %i.eq
  %i.es = fadd reassoc nsz arcp contract afn float %i.er, %i.ep
  store float %i.es, ptr %i.ei, align 4, !tbaa !18
  %i.et = load float, ptr %i.em, align 4, !tbaa !18
  %i.eu = fmul reassoc nsz arcp contract afn float %i.et, 3.750000e-01
  %i.ev = fmul reassoc nsz arcp contract afn float %i.ej, 2.500000e-01
  %i.ew = fmul reassoc nsz arcp contract afn float %.lcssa2, 6.250000e-02
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ev, %i.ew
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ex, %i.eu
  store float %i.ey, ptr %i.em, align 4, !tbaa !18
  %i.ez = add i64 %i.i, %i.el
  %i.fa = add nuw nsw i32 %.08494.us.us, 1        ; 2 uses
  %exitcond106.not = icmp eq i32 %i.fa, %4
  br i1 %exitcond106.not, label %._crit_edge97.split.us.us, label %.lr.ph.us.us

._crit_edge97.split.us.us:                        ; preds = %._crit_edge.us.us
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge.split, label %.lr.ph96.us

._crit_edge.split:                                ; preds = %._crit_edge97.split, %._crit_edge97.split.us.us, %.lr.ph, %bb.a
  ret void

.lr.ph96:                                         ; preds = %.lr.ph.split, %._crit_edge97.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge97.split ], [ 0, %.lr.ph.split ] ; 2 uses
  br label %bb.b

._crit_edge97.split:                              ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next, %wide.trip.count110
  br i1 %exitcond104.not, label %._crit_edge.split, label %.lr.ph96

bb.b:                                             ; preds = %.lr.ph96, %bb.b
  %.08494 = phi i32 [ 0, %.lr.ph96 ], [ %i.gq, %bb.b ]
  %.08593 = phi i64 [ %indvars.iv, %.lr.ph96 ], [ %i.gp, %bb.b ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.08593 ; 3 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !18 ; 3 uses
  %i.fd = fmul reassoc nsz arcp contract afn float %i.fc, 3.750000e-01
  %i.fe = add i64 %.08593, %i.c                   ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fe ; 4 uses
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !18
  %i.fh = fmul reassoc nsz arcp contract afn float %i.fg, 2.500000e-01
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fh, %i.fd
  %i.fj = getelementptr [4 x i8], ptr %i.fb, i64 %i.e
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !18
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, 6.250000e-02
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fi, %i.fl
  store float %i.fm, ptr %i.fb, align 4, !tbaa !18
  %i.fn = load float, ptr %i.ff, align 4, !tbaa !18 ; 3 uses
  %i.fo = fmul reassoc nsz arcp contract afn float %i.fn, 3.750000e-01
  %i.fp = add i64 %i.fe, %i.c                     ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fp ; 3 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !18
  %i.fs = fadd reassoc nsz arcp contract afn float %i.fr, %i.fc
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fs, 2.500000e-01
  %i.fu = fadd reassoc nsz arcp contract afn float %i.ft, %i.fo
  %i.fv = getelementptr [4 x i8], ptr %i.ff, i64 %i.e
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !18
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fw, 6.250000e-02
  %i.fy = fadd reassoc nsz arcp contract afn float %i.fu, %i.fx
  store float %i.fy, ptr %i.ff, align 4, !tbaa !18
  %i.fz = load float, ptr %i.fq, align 4, !tbaa !18 ; 2 uses
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fz, 3.750000e-01
  %i.gb = add i64 %i.fp, %i.c                     ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gb ; 3 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !18
  %i.ge = fadd reassoc nsz arcp contract afn float %i.gd, %i.fn
  %i.gf = fmul reassoc nsz arcp contract afn float %i.ge, 2.500000e-01
  %i.gg = fmul reassoc nsz arcp contract afn float %i.fc, 6.250000e-02
  %i.gh = fadd reassoc nsz arcp contract afn float %i.ga, %i.gg
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gh, %i.gf
  store float %i.gi, ptr %i.fq, align 4, !tbaa !18
  %i.gj = load float, ptr %i.gc, align 4, !tbaa !18
  %i.gk = fmul reassoc nsz arcp contract afn float %i.gj, 3.750000e-01
  %i.gl = fmul reassoc nsz arcp contract afn float %i.fz, 2.500000e-01
  %i.gm = fmul reassoc nsz arcp contract afn float %i.fn, 6.250000e-02
  %i.gn = fadd reassoc nsz arcp contract afn float %i.gl, %i.gm
  %i.go = fadd reassoc nsz arcp contract afn float %i.gn, %i.gk
  store float %i.go, ptr %i.gc, align 4, !tbaa !18
  %i.gp = add i64 %i.i, %i.gb
  %i.gq = add nuw nsw i32 %.08494, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.gq, %4
  br i1 %exitcond.not, label %._crit_edge97.split, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @dt_bilateral_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, float noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 16, !tbaa !20  ; 4 uses
  %i.c = load i64, ptr %0, align 64, !tbaa !21    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 64, !tbaa !28  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %.not = icmp ne ptr %i.e, null
  %i.j = icmp sgt i32 %i.i, 0
  %or.cond = select i1 %.not, i1 %i.j, i1 false
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load float, ptr %i.k, align 16, !tbaa !17
  %factor.op.fmul76 = fmul reassoc nsz arcp contract afn float %3, 4.000000e-02
  %factor.op.mul75 = shl i64 %i.b, 32             ; 2 uses
  %factor.op.mul.reass = mul i64 %factor.op.mul75, %i.c
  %factor.op.fmul.reass = fmul reassoc nsz arcp contract afn float %factor.op.fmul76, %i.l
  %i.m = icmp sgt i32 %i.g, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = add i64 %i.c, -1
  %i.p = uitofp reassoc nsz arcp contract afn i64 %i.o to float
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = add i64 %i.b, -1
  %i.s = uitofp reassoc nsz arcp contract afn i64 %i.r to float ; 2 uses
  %i.t = add i64 %i.c, -2                         ; 2 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = add i64 %i.b, -2                         ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = ashr exact i64 %factor.op.mul75, 32
  %i.y = ashr exact i64 %factor.op.mul.reass, 30
  %invariant.gep = getelementptr i8, ptr %i.e, i64 %i.y ; 2 uses
  br i1 %i.m, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !22  ; 2 uses
  %i.ab = add i64 %i.aa, -2                       ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = zext nneg i32 %i.g to i64               ; 2 uses
  %wide.trip.count82 = zext nneg i32 %i.i to i64
  %i.ae = add i64 %i.aa, -1
  %i.af = uitofp reassoc nsz arcp contract afn i64 %i.ae to float
  %i.ag = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.p, i64 1 ; 2 uses
  %i.ai = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %i.aj = insertelement <2 x i64> %i.ai, i64 %i.t, i64 1
  %i.ak = insertelement <2 x i32> poison, i32 %i.ac, i64 0
  %i.al = insertelement <2 x i32> %i.ak, i32 %i.u, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv79 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next80, %._crit_edge ] ; 3 uses
  %i.am = mul nuw nsw i64 %indvars.iv79, %i.ad
  %i.an = trunc nuw nsw i64 %indvars.iv79 to i32
  %i.ao = uitofp nneg i32 %i.an to float
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 0
  br label %image_to_grid.exit

._crit_edge:                                      ; preds = %image_to_grid.exit
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %.loopexit, label %.preheader

image_to_grid.exit:                               ; preds = %.preheader, %image_to_grid.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %image_to_grid.exit ] ; 3 uses
  %i.aq = add nuw nsw i64 %indvars.iv, %i.am
  %i.ar = shl i64 %i.aq, 2
  %i.as = and i64 %i.ar, 4294967292               ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !18 ; 2 uses
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  %i.aw = uitofp nneg i32 %i.av to float
  %i.ax = load float, ptr %i.n, align 4, !tbaa !74
  %i.ay = load float, ptr %i.q, align 8, !tbaa !81
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.au ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 0.000000e+00
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.az, %i.s
  %.61.i = select reassoc nsz arcp contract afn i1 %i.bb, float %i.az, float %i.s
  %i.bc = select reassoc nsz arcp contract afn i1 %i.ba, float %.61.i, float 0.000000e+00 ; 2 uses
  %i.bd = fptosi float %i.bc to i32               ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp ugt i64 %i.v, %i.be
  %i.bg = select i1 %i.bf, i32 %i.bd, i32 %i.w    ; 2 uses
  %i.bh = sitofp reassoc nsz arcp contract afn i32 %i.bg to float
  %i.bi = fsub reassoc nsz arcp contract afn float %i.bc, %i.bh
  %i.bj = sext i32 %i.bg to i64
  %i.bk = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = insertelement <2 x float> %i.ap, float %i.aw, i64 1
  %i.bn = fmul reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bm ; 3 uses
  %i.bo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bn, zeroinitializer
  %i.bp = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.bn, %i.ah
  %i.bq = select <2 x i1> %i.bp, <2 x float> %i.bn, <2 x float> %i.ah
  %i.br = select <2 x i1> %i.bo, <2 x float> %i.bq, <2 x float> zeroinitializer ; 2 uses
  %i.bs = fptosi <2 x float> %i.br to <2 x i32>   ; 2 uses
  %i.bt = sext <2 x i32> %i.bs to <2 x i64>
  %i.bu = icmp ugt <2 x i64> %i.aj, %i.bt
  %i.bv = select <2 x i1> %i.bu, <2 x i32> %i.bs, <2 x i32> %i.al ; 3 uses
  %i.bw = sitofp <2 x i32> %i.bv to <2 x float>
  %i.bx = fsub reassoc nsz arcp contract afn <2 x float> %i.br, %i.bw ; 4 uses
  %i.by = extractelement <2 x i32> %i.bv, i64 1
  %i.bz = sext i32 %i.by to i64
  %i.ca = extractelement <2 x i32> %i.bv, i64 0
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul i64 %i.c, %i.cb
  %i.cd = add i64 %i.cc, %i.bz
  %i.ce = mul i64 %i.cd, %i.b
  %i.cf = add i64 %i.ce, %i.bj                    ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cf ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !18
  %i.ci = extractelement <2 x float> %i.bx, i64 1 ; 4 uses
  %i.cj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ci ; 4 uses
  %i.ck = fmul reassoc nsz arcp contract afn float %i.ch, %i.cj
  %i.cl = add i64 %i.cf, %i.x                     ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cl ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !18
  %i.co = extractelement <2 x float> %i.bx, i64 1
  %i.cp = fmul reassoc nsz arcp contract afn float %i.cn, %i.co
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, %i.ck
  %i.cr = extractelement <2 x float> %i.bx, i64 0
  %i.cs = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cr ; 3 uses
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %i.cq
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cf ; 2 uses
  %i.cu = load float, ptr %gep, align 4, !tbaa !18
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, %i.cj
  %gep74 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cl ; 2 uses
  %i.cw = load float, ptr %gep74, align 4, !tbaa !18
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, %i.ci
  %reass.add = fadd reassoc nsz arcp contract afn float %i.cx, %i.cv
  %i.cy = extractelement <2 x float> %i.bx, i64 0 ; 2 uses
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %i.cy
  %i.cz = fadd reassoc nsz arcp contract afn float %reass.mul, %i.ct ; 2 uses
  %i.da = getelementptr i8, ptr %i.cg, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !18
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, %i.cj
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.cs
  %i.de = fsub reassoc nsz arcp contract afn float %i.dd, %i.cz
  %i.df = getelementptr i8, ptr %i.cm, i64 4
  %i.dg = load float, ptr %i.df, align 4, !tbaa !18
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, %i.ci
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.cs
  %i.dj = getelementptr i8, ptr %gep, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !18
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.cj
  %i.dm = getelementptr i8, ptr %gep74, i64 4
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !18
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.ci
  %reass.add66 = fadd reassoc nsz arcp contract afn float %i.do, %i.dl
  %reass.mul67 = fmul reassoc nsz arcp contract afn float %reass.add66, %i.cy
  %reass.add64 = fadd reassoc nsz arcp contract afn float %i.di, %i.de
  %reass.add68 = fadd reassoc nsz arcp contract afn float %reass.add64, %reass.mul67
  %reass.mul69 = fmul reassoc nsz arcp contract afn float %reass.add68, %i.bi
  %i.dp = fadd reassoc nsz arcp contract afn float %reass.mul69, %i.cz
  %i.dq = fmul reassoc nsz arcp contract afn float %factor.op.fmul.reass, %i.dp
  %i.dr = fsub reassoc nsz arcp contract afn float %i.au, %i.dq
  %i.ds = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dr, float 0.000000e+00)
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.as ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dt, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa !18, !alias.scope !82
  store float %i.ds, ptr %i.dt, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ad
  br i1 %exitcond.not, label %._crit_edge, label %image_to_grid.exit

.loopexit:                                        ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @dt_bilateral_slice_to_output(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, float noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 16, !tbaa !20  ; 4 uses
  %i.c = load i64, ptr %0, align 64, !tbaa !21    ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 64, !tbaa !28  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !23   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24   ; 2 uses
  %.not = icmp ne ptr %i.e, null
  %i.j = icmp sgt i32 %i.i, 0
  %or.cond = select i1 %.not, i1 %i.j, i1 false
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load float, ptr %i.k, align 16, !tbaa !17
  %factor.op.fmul77 = fmul reassoc nsz arcp contract afn float %3, 4.000000e-02
  %factor.op.mul76 = shl i64 %i.b, 32             ; 2 uses
  %factor.op.mul.reass = mul i64 %factor.op.mul76, %i.c
  %factor.op.fmul.reass = fmul reassoc nsz arcp contract afn float %factor.op.fmul77, %i.l
  %i.m = icmp sgt i32 %i.g, 0
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.o = add i64 %i.c, -1
  %i.p = uitofp reassoc nsz arcp contract afn i64 %i.o to float
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = add i64 %i.b, -1
  %i.s = uitofp reassoc nsz arcp contract afn i64 %i.r to float ; 2 uses
  %i.t = add i64 %i.c, -2                         ; 2 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = add i64 %i.b, -2                         ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = ashr exact i64 %factor.op.mul76, 32
  %i.y = ashr exact i64 %factor.op.mul.reass, 30
  %invariant.gep = getelementptr i8, ptr %i.e, i64 %i.y ; 2 uses
  br i1 %i.m, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !22  ; 2 uses
  %i.ab = add i64 %i.aa, -2                       ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = zext nneg i32 %i.g to i64               ; 2 uses
  %wide.trip.count83 = zext nneg i32 %i.i to i64
  %i.ae = add i64 %i.aa, -1
  %i.af = uitofp reassoc nsz arcp contract afn i64 %i.ae to float
  %i.ag = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.p, i64 1 ; 2 uses
  %i.ai = insertelement <2 x i64> poison, i64 %i.ab, i64 0
  %i.aj = insertelement <2 x i64> %i.ai, i64 %i.t, i64 1
  %i.ak = insertelement <2 x i32> poison, i32 %i.ac, i64 0
  %i.al = insertelement <2 x i32> %i.ak, i32 %i.u, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %indvars.iv80 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next81, %._crit_edge ] ; 3 uses
  %i.am = mul nuw nsw i64 %indvars.iv80, %i.ad
  %i.an = trunc nuw nsw i64 %indvars.iv80 to i32
  %i.ao = uitofp nneg i32 %i.an to float
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 0
  br label %image_to_grid.exit

._crit_edge:                                      ; preds = %image_to_grid.exit
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %.loopexit, label %.preheader

image_to_grid.exit:                               ; preds = %.preheader, %image_to_grid.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %image_to_grid.exit ] ; 3 uses
  %i.aq = add nuw nsw i64 %indvars.iv, %i.am
  %i.ar = shl i64 %i.aq, 2
  %i.as = and i64 %i.ar, 4294967292               ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !18
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  %i.aw = uitofp nneg i32 %i.av to float
  %i.ax = load float, ptr %i.n, align 4, !tbaa !74
  %i.ay = load float, ptr %i.q, align 8, !tbaa !81
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.au ; 3 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 0.000000e+00
  %i.bb = fcmp reassoc nsz arcp contract afn olt float %i.az, %i.s
  %.61.i = select reassoc nsz arcp contract afn i1 %i.bb, float %i.az, float %i.s
  %i.bc = select reassoc nsz arcp contract afn i1 %i.ba, float %.61.i, float 0.000000e+00 ; 2 uses
  %i.bd = fptosi float %i.bc to i32               ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp ugt i64 %i.v, %i.be
  %i.bg = select i1 %i.bf, i32 %i.bd, i32 %i.w    ; 2 uses
  %i.bh = sitofp reassoc nsz arcp contract afn i32 %i.bg to float
  %i.bi = fsub reassoc nsz arcp contract afn float %i.bc, %i.bh
  %i.bj = sext i32 %i.bg to i64
  %i.bk = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = insertelement <2 x float> %i.ap, float %i.aw, i64 1
  %i.bn = fmul reassoc nsz arcp contract afn <2 x float> %i.bl, %i.bm ; 3 uses
  %i.bo = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.bn, zeroinitializer
  %i.bp = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.bn, %i.ah
  %i.bq = select <2 x i1> %i.bp, <2 x float> %i.bn, <2 x float> %i.ah
  %i.br = select <2 x i1> %i.bo, <2 x float> %i.bq, <2 x float> zeroinitializer ; 2 uses
  %i.bs = fptosi <2 x float> %i.br to <2 x i32>   ; 2 uses
  %i.bt = sext <2 x i32> %i.bs to <2 x i64>
  %i.bu = icmp ugt <2 x i64> %i.aj, %i.bt
  %i.bv = select <2 x i1> %i.bu, <2 x i32> %i.bs, <2 x i32> %i.al ; 3 uses
  %i.bw = sitofp <2 x i32> %i.bv to <2 x float>
  %i.bx = fsub reassoc nsz arcp contract afn <2 x float> %i.br, %i.bw ; 4 uses
  %i.by = extractelement <2 x i32> %i.bv, i64 1
  %i.bz = sext i32 %i.by to i64
  %i.ca = extractelement <2 x i32> %i.bv, i64 0
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul i64 %i.c, %i.cb
  %i.cd = add i64 %i.cc, %i.bz
  %i.ce = mul i64 %i.cd, %i.b
  %i.cf = add i64 %i.ce, %i.bj                    ; 3 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cf ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !18
  %i.ci = extractelement <2 x float> %i.bx, i64 1 ; 4 uses
  %i.cj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ci ; 4 uses
  %i.ck = fmul reassoc nsz arcp contract afn float %i.ch, %i.cj
  %i.cl = add i64 %i.cf, %i.x                     ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cl ; 2 uses
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !18
  %i.co = extractelement <2 x float> %i.bx, i64 1
  %i.cp = fmul reassoc nsz arcp contract afn float %i.cn, %i.co
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, %i.ck
  %i.cr = extractelement <2 x float> %i.bx, i64 0
  %i.cs = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cr ; 3 uses
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %i.cq
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cf ; 2 uses
  %i.cu = load float, ptr %gep, align 4, !tbaa !18
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, %i.cj
  %gep75 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cl ; 2 uses
  %i.cw = load float, ptr %gep75, align 4, !tbaa !18
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, %i.ci
  %reass.add = fadd reassoc nsz arcp contract afn float %i.cx, %i.cv
  %i.cy = extractelement <2 x float> %i.bx, i64 0 ; 2 uses
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %i.cy
  %i.cz = fadd reassoc nsz arcp contract afn float %reass.mul, %i.ct ; 2 uses
  %i.da = getelementptr i8, ptr %i.cg, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !18
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, %i.cj
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.cs
  %i.de = fsub reassoc nsz arcp contract afn float %i.dd, %i.cz
  %i.df = getelementptr i8, ptr %i.cm, i64 4
  %i.dg = load float, ptr %i.df, align 4, !tbaa !18
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, %i.ci
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.cs
  %i.dj = getelementptr i8, ptr %gep, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !18
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.cj
  %i.dm = getelementptr i8, ptr %gep75, i64 4
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !18
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, %i.ci
  %reass.add67 = fadd reassoc nsz arcp contract afn float %i.do, %i.dl
  %reass.mul68 = fmul reassoc nsz arcp contract afn float %reass.add67, %i.cy
  %reass.add65 = fadd reassoc nsz arcp contract afn float %i.di, %i.de
  %reass.add69 = fadd reassoc nsz arcp contract afn float %reass.add65, %reass.mul68
  %reass.mul70 = fmul reassoc nsz arcp contract afn float %reass.add69, %i.bi
  %i.dp = fadd reassoc nsz arcp contract afn float %reass.mul70, %i.cz
  %i.dq = fmul reassoc nsz arcp contract afn float %factor.op.fmul.reass, %i.dp
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.as ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !18
  %i.dt = fsub reassoc nsz arcp contract afn float %i.ds, %i.dq ; 2 uses
  %i.du = fcmp reassoc nsz arcp contract afn olt float %i.dt, 0.000000e+00
  %i.dv = select reassoc nsz arcp contract afn i1 %i.du, float 0.000000e+00, float %i.dt
  store float %i.dv, ptr %i.dr, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ad
  br i1 %exitcond.not, label %._crit_edge, label %image_to_grid.exit

.loopexit:                                        ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @dt_bilateral_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #11 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 64, !tbaa !28
  tail call void @free(ptr noundef %i.b) #15
  tail call void @free(ptr noundef nonnull %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !14, i64 44}
!12 = !{!"dt_bilateral_t", !13, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !15, i64 64}
!13 = !{!"long", !9, i64 0}
!14 = !{!"float", !9, i64 0}
!15 = !{!"p1 float", !16, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!12, !14, i64 48}
!18 = !{!14, !14, i64 0}
!19 = !{!13, !13, i64 0}
!20 = !{!12, !13, i64 16}
!21 = !{!12, !13, i64 0}
!22 = !{!12, !13, i64 8}
!23 = !{!12, !8, i64 24}
!24 = !{!12, !8, i64 28}
!25 = !{!12, !8, i64 32}
!26 = !{!12, !8, i64 36}
!27 = !{!12, !8, i64 40}
!28 = !{!12, !15, i64 64}
!29 = !{!30, !8, i64 8}
!30 = !{!"darktable_t", !31, i64 0, !8, i64 4, !8, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !33, i64 48, !34, i64 56, !35, i64 64, !36, i64 72, !37, i64 80, !38, i64 88, !39, i64 96, !40, i64 104, !41, i64 112, !42, i64 120, !43, i64 128, !44, i64 136, !45, i64 144, !46, i64 152, !47, i64 160, !48, i64 168, !49, i64 176, !50, i64 184, !51, i64 192, !52, i64 200, !53, i64 208, !54, i64 216, !55, i64 224, !9, i64 232, !56, i64 2792, !56, i64 2832, !56, i64 2872, !56, i64 2912, !56, i64 2952, !56, i64 2992, !57, i64 3032, !57, i64 3040, !57, i64 3048, !57, i64 3056, !57, i64 3064, !57, i64 3072, !57, i64 3080, !57, i64 3088, !57, i64 3096, !57, i64 3104, !57, i64 3112, !57, i64 3120, !57, i64 3128, !58, i64 3136, !32, i64 3288, !65, i64 3296, !32, i64 3304, !8, i64 3312, !9, i64 3316, !8, i64 3512, !8, i64 3516, !66, i64 3520, !67, i64 3528, !68, i64 3536, !70, i64 3576, !71, i64 3600, !72, i64 3632, !8, i64 3672}
!31 = !{!"dt_codepath_t", !8, i64 0}
!32 = !{!"p1 _ZTS6_GList", !16, i64 0}
!33 = !{!"p1 _ZTS11_JsonParser", !16, i64 0}
!34 = !{!"p1 _ZTS9dt_conf_t", !16, i64 0}
!35 = !{!"p1 _ZTS12dt_develop_t", !16, i64 0}
!36 = !{!"p1 _ZTS8dt_lib_t", !16, i64 0}
!37 = !{!"p1 _ZTS17dt_view_manager_t", !16, i64 0}
!38 = !{!"p1 _ZTS12dt_control_t", !16, i64 0}
!39 = !{!"p1 _ZTS19dt_control_signal_t", !16, i64 0}
!40 = !{!"p1 _ZTS12dt_gui_gtk_t", !16, i64 0}
!41 = !{!"p1 _ZTS17dt_mipmap_cache_t", !16, i64 0}
!42 = !{!"p1 _ZTS16dt_image_cache_t", !16, i64 0}
!43 = !{!"p1 _ZTS12dt_bauhaus_t", !16, i64 0}
!44 = !{!"p1 _ZTS13dt_database_t", !16, i64 0}
!45 = !{!"p1 _ZTS14dt_pwstorage_t", !16, i64 0}
!46 = !{!"p1 _ZTS11dt_camctl_t", !16, i64 0}
!47 = !{!"p1 _ZTS15dt_collection_t", !16, i64 0}
!48 = !{!"p1 _ZTS14dt_selection_t", !16, i64 0}
!49 = !{!"p1 _ZTS11dt_points_t", !16, i64 0}
!50 = !{!"p1 _ZTS12dt_imageio_t", !16, i64 0}
!51 = !{!"p1 _ZTS11dt_opencl_t", !16, i64 0}
!52 = !{!"p1 _ZTS9dt_dbus_t", !16, i64 0}
!53 = !{!"p1 _ZTS9dt_undo_t", !16, i64 0}
!54 = !{!"p1 _ZTS16dt_colorspaces_t", !16, i64 0}
!55 = !{!"p1 _ZTS9dt_l10n_t", !16, i64 0}
!56 = !{!"dt_pthread_mutex_t", !9, i64 0}
!57 = !{!"p1 omnipotent char", !16, i64 0}
!58 = !{!"", !59, i64 0, !56, i64 8, !9, i64 48, !60, i64 96, !60, i64 97, !61, i64 104, !62, i64 112, !63, i64 120, !64, i64 128, !64, i64 136, !64, i64 144}
!59 = !{!"p1 _ZTS9lua_State", !16, i64 0}
!60 = !{!"_Bool", !9, i64 0}
!61 = !{!"p1 _ZTS10_GMainLoop", !16, i64 0}
!62 = !{!"p1 _ZTS13_GMainContext", !16, i64 0}
!63 = !{!"p1 _ZTS12_GThreadPool", !16, i64 0}
!64 = !{!"p1 _ZTS12_GAsyncQueue", !16, i64 0}
!65 = !{!"double", !9, i64 0}
!66 = !{!"p1 _ZTS10_GTimeZone", !16, i64 0}
!67 = !{!"p1 _ZTS10_GDateTime", !16, i64 0}
!68 = !{!"dt_sys_resources_t", !13, i64 0, !13, i64 8, !69, i64 16, !69, i64 24, !8, i64 32}
!69 = !{!"p1 int", !16, i64 0}
!70 = !{!"dt_backthumb_t", !65, i64 0, !65, i64 8, !8, i64 16, !8, i64 20}
!71 = !{!"dt_gimp_t", !8, i64 0, !57, i64 8, !57, i64 16, !8, i64 24, !8, i64 28}
!72 = !{!"dt_splash_t", !73, i64 0, !73, i64 8, !73, i64 16, !73, i64 24, !8, i64 32}
!73 = !{!"p1 _ZTS10_GtkWidget", !16, i64 0}
!74 = !{!12, !14, i64 52}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = distinct !{!78, !77, !76}
!79 = distinct !{!79, !76, !77}
!80 = distinct !{!80, !76}
!81 = !{!12, !14, i64 56}
!82 = !{!83, !85}
!83 = distinct !{!83, !84, !"copy_pixel: argument 0"}
!84 = distinct !{!84, !"copy_pixel"}
!85 = distinct !{!85, !84, !"copy_pixel: argument 1"}
end_hunk_0
