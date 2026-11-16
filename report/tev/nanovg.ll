Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/nanovg?download=true
inline.NumInlined: 893
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 56
begin_hunk_0_@nvgReset:bb.a
  %.sroa.3.0..sroa_idx7.i = getelementptr i8, ptr %i.d, i64 -52
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.3.0..sroa_idx7.i, align 4, !tbaa !38
  %i.l = getelementptr i8, ptr %i.d, i64 -40
  %i.m = getelementptr i8, ptr %i.d, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.m, i8 0, i64 52, i1 false)
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !81
  %i.n = getelementptr i8, ptr %i.d, i64 -32
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.n, align 4, !tbaa !81
  %i.o = getelementptr i8, ptr %i.d, i64 -20
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !81
  %i.p = getelementptr i8, ptr %i.d, i64 -4
  store float 1.000000e+00, ptr %i.p, align 4, !tbaa !227
  %.sroa.3.0..sroa_idx.i23 = getelementptr i8, ptr %i.d, i64 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.3.0..sroa_idx.i23, align 4, !tbaa !38
  %.sroa.3.0..sroa_idx7.i24 = getelementptr i8, ptr %i.d, i64 24
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.3.0..sroa_idx7.i24, align 4, !tbaa !38
  store i64 549755813890, ptr %i.e, align 4, !tbaa !70
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %i.d, i64 -128
  store i64 549755813890, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !70
  %i.q = getelementptr i8, ptr %i.d, i64 -120
  store i32 1, ptr %i.q, align 4, !tbaa !231
  %i.r = getelementptr i8, ptr %i.d, i64 36
  store <2 x float> <float 1.000000e+00, float 1.000000e+01>, ptr %i.r, align 4, !tbaa !81
  %i.s = getelementptr i8, ptr %i.d, i64 44
  store i32 4, ptr %i.s, align 4, !tbaa !232
  %i.t = getelementptr i8, ptr %i.d, i64 52
  store <2 x float> splat (float 1.000000e+00), ptr %i.t, align 4, !tbaa !81
  %i.u = getelementptr i8, ptr %i.d, i64 64
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.u, align 4, !tbaa !81
  %i.v = getelementptr i8, ptr %i.d, i64 76
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !81
  %i.w = getelementptr i8, ptr %i.d, i64 104
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float 1.600000e+01, float 0.000000e+00>, ptr %i.w, align 4, !tbaa !81
  %i.x = getelementptr i8, ptr %i.d, i64 120
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.x, align 4, !tbaa !81
  %i.y = getelementptr i8, ptr %i.d, i64 128
  store i32 65, ptr %i.y, align 4, !tbaa !233
  %i.z = getelementptr i8, ptr %i.d, i64 132
  store i32 0, ptr %i.z, align 4, !tbaa !234
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nvgDeleteInternal(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !210  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.c) #40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8848
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !222  ; 5 uses
  %.not25 = icmp eq ptr %i.e, null
  br i1 %.not25, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !217  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.f) #40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !219  ; 2 uses
  %.not11.i = icmp eq ptr %i.h, null
  br i1 %.not11.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.h) #40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !221  ; 2 uses
  %.not12.i = icmp eq ptr %i.j, null
  br i1 %.not12.i, label %nvg__deletePathCache.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.j) #40
  br label %nvg__deletePathCache.exit

nvg__deletePathCache.exit:                        ; preds = %bb.i, %bb.j
  tail call void @free(ptr noundef nonnull %i.e) #40
  br label %bb.k

bb.k:                                             ; preds = %nvg__deletePathCache.exit, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8872
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !236  ; 2 uses
  %.not26 = icmp eq ptr %i.l, null
  br i1 %.not26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @fonsDeleteInternal(ptr noundef nonnull %i.l)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8880 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !70   ; 2 uses
  %.not28 = icmp eq i32 %i.o, 0
  br i1 %.not28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.q = load ptr, ptr %0, align 8, !tbaa !235
  %i.r = tail call i32 %i.p(ptr noundef %i.q, i32 noundef %i.o) #40, !inline_history !240 ; 0 uses
  store i32 0, ptr %i.m, align 8, !tbaa !70
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8884 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !70   ; 2 uses
  %.not28.1 = icmp eq i32 %i.t, 0
  br i1 %.not28.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.v = load ptr, ptr %0, align 8, !tbaa !235
  %i.w = tail call i32 %i.u(ptr noundef %i.v, i32 noundef %i.t) #40, !inline_history !240 ; 0 uses
  store i32 0, ptr %i.s, align 4, !tbaa !70
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8888 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !70   ; 2 uses
  %.not28.2 = icmp eq i32 %i.y, 0
  br i1 %.not28.2, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.aa = load ptr, ptr %0, align 8, !tbaa !235
  %i.ab = tail call i32 %i.z(ptr noundef %i.aa, i32 noundef %i.y) #40, !inline_history !240 ; 0 uses
  store i32 0, ptr %i.x, align 8, !tbaa !70
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8892 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !70 ; 2 uses
  %.not28.3 = icmp eq i32 %i.ad, 0
  br i1 %.not28.3, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.af = load ptr, ptr %0, align 8, !tbaa !235
  %i.ag = tail call i32 %i.ae(ptr noundef %i.af, i32 noundef %i.ad) #40, !inline_history !240 ; 0 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !70
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !447 ; 2 uses
  %.not27 = icmp eq ptr %i.ai, null
  br i1 %.not27, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = load ptr, ptr %0, align 8, !tbaa !235
  tail call void %i.ai(ptr noundef %i.aj) #40
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  tail call void @free(ptr noundef nonnull %0) #40
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %bb.w
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef ptr @nvgInternalParams(ptr nofree noundef readnone returned captures(ret: address, provenance) %0) local_unnamed_addr #7 {
bb.a:
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local void @nvgDeleteImage(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !239
  %i.c = load ptr, ptr %0, align 8, !tbaa !235
  %i.d = tail call i32 %i.b(ptr noundef %i.c, i32 noundef %1) #40 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @nvgSetDevicePixelRatio(ptr nofree noundef writeonly captures(none) initializes((8856, 8872)) %0, float noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8856
  %i.b = insertelement <4 x float> <float 2.500000e-01, float f0x3C23D70A, float 1.000000e+00, float poison>, float %1, i64 3 ; 2 uses
  %2 = shufflevector <4 x float> %i.b, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.c = fdiv <4 x float> %i.b, %2
  store <4 x float> %i.c, ptr %i.a, align 8, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nvgBeginFrame(ptr nofree noundef captures(none) initializes((136, 408), (8840, 8844), (8856, 8872), (8900, 8916)) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #24 {
nvgSave.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  store i32 1, ptr %i.a, align 8, !tbaa !224
  %i.b = getelementptr i8, ptr %0, i64 136
  %i.c = getelementptr i8, ptr %0, i64 156
  %i.d = getelementptr i8, ptr %0, i64 180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.d, i8 0, i64 196, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.c, align 4, !tbaa !81
  %i.e = getelementptr i8, ptr %0, i64 172
  store <2 x float> zeroinitializer, ptr %i.e, align 4, !tbaa !81
  %i.f = getelementptr i8, ptr %0, i64 192
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !227
  %i.g = getelementptr i8, ptr %0, i64 196
  store <2 x float> splat (float 1.000000e+00), ptr %i.g, align 4
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %0, i64 204
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !38
  %i.h = getelementptr i8, ptr %0, i64 212
  store <2 x float> splat (float 1.000000e+00), ptr %i.h, align 4
  %.sroa.3.0..sroa_idx7.i.i = getelementptr i8, ptr %0, i64 220
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.3.0..sroa_idx7.i.i, align 4, !tbaa !38
  %i.i = getelementptr i8, ptr %0, i64 232
  %i.j = getelementptr i8, ptr %0, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.j, i8 0, i64 52, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !81
  %i.k = getelementptr i8, ptr %0, i64 244
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !81
  %i.l = getelementptr i8, ptr %0, i64 268
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !227
  %.sroa.3.0..sroa_idx.i23.i = getelementptr i8, ptr %0, i64 280
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.3.0..sroa_idx.i23.i, align 8, !tbaa !38
  %.sroa.3.0..sroa_idx7.i24.i = getelementptr i8, ptr %0, i64 296
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.3.0..sroa_idx7.i24.i, align 8, !tbaa !38
  store i64 549755813890, ptr %i.b, align 8, !tbaa !70
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %0, i64 144
  store i64 549755813890, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !70
  %i.m = getelementptr i8, ptr %0, i64 152
  store i32 1, ptr %i.m, align 8, !tbaa !231
  %i.n = getelementptr i8, ptr %0, i64 308
  store <2 x float> <float 1.000000e+00, float 1.000000e+01>, ptr %i.n, align 4, !tbaa !81
  %i.o = getelementptr i8, ptr %0, i64 316
  store i32 4, ptr %i.o, align 4, !tbaa !232
  %i.p = getelementptr i8, ptr %0, i64 324
  store <2 x float> splat (float 1.000000e+00), ptr %i.p, align 4, !tbaa !81
  %i.q = getelementptr i8, ptr %0, i64 340
  store float 1.000000e+00, ptr %i.q, align 4, !tbaa !81
  %i.r = getelementptr i8, ptr %0, i64 376
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float 1.600000e+01, float 0.000000e+00>, ptr %i.r, align 8, !tbaa !81
  %i.s = getelementptr i8, ptr %0, i64 392
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.s, align 8, !tbaa !81
  %i.t = getelementptr i8, ptr %0, i64 400
  store i32 65, ptr %i.t, align 8, !tbaa !233
  %i.u = getelementptr i8, ptr %0, i64 404
  store i32 0, ptr %i.u, align 4, !tbaa !234
  %i.v = insertelement <2 x float> poison, float %3, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fdiv <2 x float> <float 2.500000e-01, float f0x3C23D70A>, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8856
  store <2 x float> %i.x, ptr %i.y, align 8, !tbaa !81
  %i.z = fdiv float 1.000000e+00, %3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8864
  store float %i.z, ptr %i.aa, align 8, !tbaa !241
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8868
  store float %3, ptr %i.ab, align 4, !tbaa !242
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !448
  %i.ae = load ptr, ptr %0, align 8, !tbaa !235
  tail call void %i.ad(ptr noundef %i.ae, float noundef %1, float noundef %2, float noundef %3) #40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8900
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nvgCancelFrame(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !449
  %i.c = load ptr, ptr %0, align 8, !tbaa !235
  tail call void %i.b(ptr noundef %i.c) #40
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nvgEndFrame(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !451
  %i.g = load ptr, ptr %0, align 8, !tbaa !235
  tail call void %i.f(ptr noundef %i.g) #40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8896 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !238  ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8880 ; 6 uses
  %i.k = sext i32 %i.i to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !70   ; 3 uses
  store i32 0, ptr %i.l, align 4, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !243
  %i.q = load ptr, ptr %0, align 8, !tbaa !235
  %i.r = call i32 %i.p(ptr noundef %i.q, i32 noundef %i.m, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #40, !inline_history !244 ; 0 uses
  %i.s = load i32, ptr %i.h, align 8, !tbaa !238  ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %i.v = phi i32 [ %i.s, %.lr.ph ], [ %i.an, %bb.j ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.036 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.j ]  ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !70   ; 4 uses
  %.not34 = icmp eq i32 %i.x, 0
  br i1 %.not34, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  store i32 0, ptr %i.w, align 4, !tbaa !70
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !243
  %i.z = load ptr, ptr %0, align 8, !tbaa !235
  %i.aa = call i32 %i.y(ptr noundef %i.z, i32 noundef %i.x, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #40, !inline_history !244 ; 0 uses
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !70
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !70
  %i.ad = icmp slt i32 %i.ab, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i32, ptr %i.d, align 4, !tbaa !70
  %i.af = load i32, ptr %i.b, align 4, !tbaa !70
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !239
  %i.ai = load ptr, ptr %0, align 8, !tbaa !235
  %i.aj = call i32 %i.ah(ptr noundef %i.ai, i32 noundef %i.x) #40, !inline_history !240 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ak = add nsw i32 %.036, 1
  %i.al = sext i32 %.036 to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.al
  store i32 %i.x, ptr %i.am, align 4, !tbaa !70
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i32 [ %.036, %bb.g ], [ %i.ak, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  %.pre = load i32, ptr %i.h, align 8, !tbaa !238
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i
  %i.an = phi i32 [ %.pre, %bb.i ], [ %i.v, %bb.d ] ; 2 uses
  %.2 = phi i32 [ %.1, %bb.i ], [ %.036, %bb.d ]  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %i.ap, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !450

._crit_edge.loopexit:                             ; preds = %bb.j
  %i.aq = sext i32 %.2 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.aq, %._crit_edge.loopexit ]
  %i.ar = load i32, ptr %i.j, align 8, !tbaa !70
  %i.as = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.0.lcssa
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !70
  store i32 %i.m, ptr %i.j, align 8, !tbaa !70
  store i32 0, ptr %i.h, align 8, !tbaa !238
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.l

end_hunk_0
begin_hunk_1_@nvgFillPaint:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [272 x i8], ptr %0, i64 %i.c ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -116     ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.e, ptr noundef nonnull align 8 dereferenceable(76) %1, i64 76, i1 false), !tbaa.struct !249
  %i.f = getelementptr i8, ptr %i.d, i64 56
  %i.g = getelementptr i8, ptr %i.d, i64 64
  %i.h = getelementptr i8, ptr %i.d, i64 -100     ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 72
  %i.j = load <2 x float>, ptr %i.g, align 4, !tbaa !81 ; 2 uses
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.l = load <2 x float>, ptr %i.f, align 4, !tbaa !81 ; 2 uses
  %i.m = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.n = load <2 x float>, ptr %i.h, align 4, !tbaa !81 ; 2 uses
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.p = fmul <2 x float> %i.o, %i.j
  %i.q = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.l, <2 x float> %i.p)
  %i.s = load <2 x float>, ptr %i.i, align 4, !tbaa !81
  %i.t = fadd <2 x float> %i.s, %i.r
  %i.u = load <4 x float>, ptr %i.e, align 4, !tbaa !81 ; 2 uses
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.w = fmul <4 x float> %i.k, %i.v
  %i.x = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.y = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.m, <4 x float> %i.w)
  store <4 x float> %i.y, ptr %i.e, align 4, !tbaa !81
  store <2 x float> %i.t, ptr %i.h, align 4, !tbaa !81
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @nvgCreateImage(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  tail call void @stbi_set_unpremultiply_on_load(i32 noundef 1) #40
  tail call void @stbi_convert_iphone_png_to_rgb(i32 noundef 1) #40
  %i.d = call ptr @stbi_load(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 4) #40 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !70
  %i.g = load i32, ptr %i.b, align 4, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !237
  %i.j = load ptr, ptr %0, align 8, !tbaa !235
  %i.k = call i32 %i.i(ptr noundef %i.j, i32 noundef 2, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %2, ptr noundef nonnull %i.d) #40, !inline_history !250
  call void @stbi_image_free(ptr noundef nonnull %i.d) #40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i32 %.0
}

declare void @stbi_set_unpremultiply_on_load(i32 noundef) local_unnamed_addr #31

declare void @stbi_convert_iphone_png_to_rgb(i32 noundef) local_unnamed_addr #31

declare ptr @stbi_load(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #31

; Function Attrs: nounwind uwtable
define dso_local i32 @nvgCreateImageRGBA(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237
  %i.c = load ptr, ptr %0, align 8, !tbaa !235
  %i.d = tail call i32 %i.b(ptr noundef %i.c, i32 noundef 2, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #40
  ret i32 %i.d
}

declare void @stbi_image_free(ptr noundef) local_unnamed_addr #31

; Function Attrs: nounwind uwtable
define dso_local i32 @nvgCreateImageMem(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.d = call ptr @stbi_load_from_memory(ptr noundef %2, i32 noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 4) #40 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 4, !tbaa !70
  %i.g = load i32, ptr %i.b, align 4, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !237
  %i.j = load ptr, ptr %0, align 8, !tbaa !235
  %i.k = call i32 %i.i(ptr noundef %i.j, i32 noundef 2, i32 noundef %i.f, i32 noundef %i.g, i32 noundef %1, ptr noundef nonnull %i.d) #40, !inline_history !250
  call void @stbi_image_free(ptr noundef nonnull %i.d) #40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i32 %.0
}

declare ptr @stbi_load_from_memory(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #31

; Function Attrs: nounwind uwtable
define dso_local void @nvgUpdateImage(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !243
  %i.e = load ptr, ptr %0, align 8, !tbaa !235
  %i.f = call i32 %i.d(ptr noundef %i.e, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #40 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !251
  %i.i = load ptr, ptr %0, align 8, !tbaa !235
  %i.j = load i32, ptr %i.a, align 4, !tbaa !70
  %i.k = load i32, ptr %i.b, align 4, !tbaa !70
  %i.l = call i32 %i.h(ptr noundef %i.i, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %i.j, i32 noundef %i.k, ptr noundef %2) #40 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @nvgLinearGradient(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.NVGpaint) align 4 captures(none) initializes((0, 76)) %0, ptr nofree noundef readnone captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, <2 x float> %6, <2 x float> %7, <2 x float> %8, <2 x float> %9) local_unnamed_addr #32 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.a, align 4
  %i.b = insertelement <2 x float> poison, float %4, i64 0
  %i.c = insertelement <2 x float> %i.b, float %5, i64 1
  %i.d = insertelement <2 x float> poison, float %2, i64 0
  %i.e = insertelement <2 x float> %i.d, float %3, i64 1 ; 2 uses
  %i.f = fsub <2 x float> %i.c, %i.e              ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.f, %i.f
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.h = extractelement <2 x float> %i.f, i64 0   ; 2 uses
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.g)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.i) ; 5 uses
  %i.j = fcmp ogt float %sqrt, f0x38D1B717
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = insertelement <2 x float> poison, float %sqrt, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fdiv <2 x float> %i.f, %i.o
  %i.q = insertelement <2 x i1> poison, i1 %i.j, i64 0
  %i.r = shufflevector <2 x i1> %i.q, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.s = select <2 x i1> %i.r, <2 x float> %i.p, <2 x float> <float 0.000000e+00, float 1.000000e+00> ; 3 uses
  %i.t = extractelement <2 x float> %i.s, i64 1
  store float %i.t, ptr %0, align 4, !tbaa !81
  %i.u = fneg <2 x float> %i.s                    ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 0
  store float %i.v, ptr %i.k, align 4, !tbaa !81
  store <2 x float> %i.s, ptr %i.l, align 4, !tbaa !81
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> splat (float 1.000000e+05), <2 x float> %i.e)
  store <2 x float> %i.w, ptr %i.m, align 4, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float 1.000000e+05, ptr %i.x, align 4, !tbaa !81
  %i.y = tail call float @llvm.fmuladd.f32(float %sqrt, float 5.000000e-01, float 1.000000e+05)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.y, ptr %i.z, align 4, !tbaa !81
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 0.000000e+00, ptr %i.aa, align 4, !tbaa !252
  %i.ab = fcmp olt float %sqrt, 1.000000e+00
  %i.ac = select i1 %i.ab, float 1.000000e+00, float %sqrt
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ac, ptr %i.ad, align 4, !tbaa !227
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %6, ptr %i.ae, align 4
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %7, ptr %.sroa.224.0..sroa_idx, align 4, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %8, ptr %i.af, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x float> %9, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @nvgRadialGradient(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.NVGpaint) align 4 captures(none) initializes((0, 76)) %0, ptr nofree noundef readnone captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, <2 x float> %6, <2 x float> %7, <2 x float> %8, <2 x float> %9) local_unnamed_addr #32 {
bb.a:
  %i.a = fadd float %4, %5
  %i.b = fsub float %5, %4                        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.c, align 4
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %0, align 4, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %2, ptr %i.d, align 4, !tbaa !81
  store float %3, ptr %i.e, align 4, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %10 = fcmp olt float %i.b, 1.000000e+00
  %11 = select i1 %10, float 1.000000e+00, float %i.b
  %12 = insertelement <2 x float> poison, float %i.a, i64 0
  %13 = insertelement <2 x float> %12, float %11, i64 1
  %14 = fmul <2 x float> %13, <float 5.000000e-01, float 1.000000e+00>
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %15, ptr %i.f, align 4, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %6, ptr %i.g, align 4
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %7, ptr %.sroa.211.0..sroa_idx, align 4, !tbaa !38
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %8, ptr %i.h, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x float> %9, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @nvgBoxGradient(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.NVGpaint) align 4 captures(none) initializes((0, 76)) %0, ptr nofree noundef readnone captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, <2 x float> %8, <2 x float> %9, ptr nofree noundef readonly byval(%struct.NVGcolor) align 8 captures(none) %10) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.a, align 4
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %0, align 4, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = insertelement <2 x float> poison, float %4, i64 0
  %i.d = insertelement <2 x float> %i.c, float %5, i64 1 ; 2 uses
  %i.e = insertelement <2 x float> poison, float %2, i64 0
  %i.f = insertelement <2 x float> %i.e, float %3, i64 1
  %i.g = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> splat (float 5.000000e-01), <2 x float> %i.f)
  store <2 x float> %i.g, ptr %i.b, align 4, !tbaa !81
  %i.h = fmul <2 x float> %i.d, splat (float 5.000000e-01)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %i.h, ptr %i.i, align 4, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %6, ptr %i.j, align 4, !tbaa !252
  %i.k = fcmp olt float %7, 1.000000e+00
  %i.l = select i1 %i.k, float 1.000000e+00, float %7
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.l, ptr %i.m, align 4, !tbaa !227
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %8, ptr %i.n, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %9, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !253
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @nvgImagePattern(ptr dead_on_unwind noalias nofree writable sret(%struct.NVGpaint) align 4 captures(none) initializes((0, 76)) %0, ptr nofree noundef readnone captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, i32 noundef %7, float noundef %8) local_unnamed_addr #33 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call float @cosf(float noundef %6) #40 ; 2 uses
  %i.c = tail call float @sinf(float noundef %6) #40 ; 2 uses
  store float %i.b, ptr %0, align 4, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.c, ptr %i.d, align 4, !tbaa !81
  %i.e = fneg float %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.e, ptr %i.f, align 4, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.b, ptr %i.g, align 4, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %2, ptr %i.h, align 4, !tbaa !81
  store float %3, ptr %i.i, align 4, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %4, ptr %i.j, align 4, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %5, ptr %i.k, align 4, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %7, ptr %i.l, align 4, !tbaa !254
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float 1.000000e+00, float poison>, float %8, i64 1
  store <2 x float> splat (float 1.000000e+00), ptr %i.n, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !253
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @nvgScissor(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [272 x i8], ptr %0, i64 %i.c ; 8 uses
  %i.e = insertelement <2 x float> poison, float %3, i64 0
  %i.f = insertelement <2 x float> %i.e, float %4, i64 1 ; 2 uses
  %i.g = fcmp olt <2 x float> %i.f, zeroinitializer
  %i.h = getelementptr i8, ptr %i.d, i64 80
  %i.i = getelementptr i8, ptr %i.d, i64 88
  %i.j = getelementptr i8, ptr %i.d, i64 96
  %i.k = getelementptr i8, ptr %i.d, i64 56
  %i.l = getelementptr i8, ptr %i.d, i64 64
  %i.m = getelementptr i8, ptr %i.d, i64 72
  %i.n = getelementptr i8, ptr %i.d, i64 60
  %i.o = load <4 x float>, ptr %i.k, align 4, !tbaa !81 ; 3 uses
  %i.p = load float, ptr %i.n, align 4, !tbaa !81
  %i.q = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.r = insertelement <4 x float> %i.o, float %1, i64 0
  %i.s = insertelement <4 x float> %i.r, float %2, i64 1
  %i.t = load <2 x float>, ptr %i.l, align 4, !tbaa !81 ; 2 uses
  %i.u = fmul <2 x float> %i.t, zeroinitializer
  %i.v = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.w = insertelement <2 x float> %i.v, float %i.p, i64 1 ; 2 uses
  %i.x = fadd <2 x float> %i.w, %i.u
  store <2 x float> %i.x, ptr %i.h, align 4, !tbaa !81
  %i.y = load <2 x float>, ptr %i.m, align 4, !tbaa !81
  %i.z = getelementptr i8, ptr %i.d, i64 104
  %i.aa = select <2 x i1> %i.g, <2 x float> zeroinitializer, <2 x float> %i.f ; 2 uses
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> <float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.s) ; 3 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %i.ae, ptr %i.i, align 4, !tbaa !81
  %i.af = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = fmul <2 x float> %i.af, %i.t
  %i.ah = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.w, <2 x float> %i.ag)
  %i.aj = fadd <2 x float> %i.y, %i.ai
  store <2 x float> %i.aj, ptr %i.j, align 4, !tbaa !81
  %i.ak = fmul <2 x float> %i.aa, splat (float 5.000000e-01)
  store <2 x float> %i.ak, ptr %i.z, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @nvgIntersectScissor(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [272 x i8], ptr %0, i64 %i.c ; 18 uses
  %i.e = getelementptr i8, ptr %i.d, i64 104
  %i.f = load float, ptr %i.e, align 4, !tbaa !81 ; 2 uses
  %i.g = fcmp olt float %i.f, 0.000000e+00
  %i.h = getelementptr i8, ptr %i.d, i64 96       ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = insertelement <2 x float> poison, float %3, i64 0
  %i.j = insertelement <2 x float> %i.i, float %4, i64 1 ; 2 uses
  %i.k = fcmp olt <2 x float> %i.j, zeroinitializer
  %i.l = select <2 x i1> %i.k, <2 x float> zeroinitializer, <2 x float> %i.j ; 2 uses
  %i.m = getelementptr i8, ptr %i.d, i64 80
  %i.n = getelementptr i8, ptr %i.d, i64 88
  %i.o = getelementptr i8, ptr %i.d, i64 56
  %i.p = getelementptr i8, ptr %i.d, i64 64
  %i.q = getelementptr i8, ptr %i.d, i64 72
  %i.r = getelementptr i8, ptr %i.d, i64 60
  %i.s = load <4 x float>, ptr %i.o, align 4, !tbaa !81 ; 4 uses
  %i.t = load float, ptr %i.r, align 4, !tbaa !81 ; 2 uses
  %i.u = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.v = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.w = shufflevector <4 x float> %i.v, <4 x float> %i.u, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.x = insertelement <4 x float> %i.s, float %1, i64 0
  %i.y = insertelement <4 x float> %i.x, float %2, i64 1
  %i.z = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.w, <4 x float> <float 5.000000e-01, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.y) ; 3 uses
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %i.aa, ptr %i.n, align 4, !tbaa !81
  %i.ab = load <2 x float>, ptr %i.p, align 4, !tbaa !81 ; 2 uses
  %i.ac = shufflevector <4 x float> %i.z, <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 6, i32 7>
  %i.ad = shufflevector <4 x float> %i.s, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 poison, i32 6, i32 7>
  %i.ae = insertelement <4 x float> %i.ad, float %i.t, i64 1
  %i.af = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.ag = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ah = fmul <4 x float> %i.af, %i.ag
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> <float poison, float poison, float 5.000000e-01, float 5.000000e-01>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %i.ae, <4 x float> %i.ai) ; 2 uses
  %i.ak = load <2 x float>, ptr %i.q, align 4, !tbaa !81
  %i.al = fmul <2 x float> %i.ab, zeroinitializer
  %i.am = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.an = insertelement <2 x float> %i.am, float %i.t, i64 1
  %i.ao = fadd <2 x float> %i.an, %i.al
  store <2 x float> %i.ao, ptr %i.m, align 4, !tbaa !81
  %i.ap = shufflevector <2 x float> %i.ak, <2 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.aq = fadd <4 x float> %i.ap, %i.aj
  %i.ar = fmul <4 x float> %i.ap, %i.aj
  %i.as = shufflevector <4 x float> %i.aq, <4 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.at = getelementptr i8, ptr %i.d, i64 80      ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %i.d, i64 88 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr i8, ptr %i.d, i64 92
  %.sroa.1836.0..sroa_idx = getelementptr i8, ptr %i.d, i64 100
  %i.au = load <4 x float>, ptr %i.at, align 4    ; 2 uses
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %i.av = load <2 x float>, ptr %i.h, align 4     ; 2 uses
  %.sroa.1836.0.copyload = load float, ptr %.sroa.1836.0..sroa_idx, align 4
  %i.aw = getelementptr i8, ptr %i.d, i64 108
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !81
  %i.ay = getelementptr i8, ptr %i.d, i64 56
  %i.az = getelementptr i8, ptr %i.d, i64 64
  %i.ba = getelementptr i8, ptr %i.d, i64 60
  %i.bb = load <4 x float>, ptr %i.ay, align 4, !tbaa !81 ; 5 uses
  %i.bc = load <2 x float>, ptr %i.az, align 4, !tbaa !81 ; 3 uses
  %i.bd = load <2 x float>, ptr %i.ba, align 4, !tbaa !81
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.bf = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> %i.bb, <2 x i32> <i32 1, i32 4>
end_hunk_1
