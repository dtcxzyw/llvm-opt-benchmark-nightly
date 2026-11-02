Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/scene?download=true
inline.NumInlined: 8765
inline.NumDeleted: 2913
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_ZN4pbrt17BasicSceneBuilder9TransformEPfNS_7FileLocE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !908
  %i.g = load <16 x float>, ptr %1, align 4, !tbaa !107, !noalias !908 ; 3 uses
  %i.h = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.h, ptr %4, align 4, !tbaa !107, !noalias !908
  %i.i = shufflevector <16 x float> %i.g, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.i, ptr %i.c, align 4, !tbaa !107, !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !908
  call void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.288") align 4 %3, ptr noundef nonnull align 4 dereferenceable(64) %4), !noalias !908
  %i.j = load i8, ptr %i.d, align 4, !tbaa !348, !range !211, !noalias !908, !noundef !212
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.i, label %_ZN4pbrt12TransformSetixEi.exit5.i

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.i: ; preds = %_ZN4pbrt12TransformSetixEi.exit.i
  %i.l = load <14 x float>, ptr %3, align 4, !noalias !908
  %i.m = shufflevector <14 x float> %i.l, <14 x float> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13>
  %i.n = load <14 x float>, ptr %.sroa.26.64..sroa_idx.i.i, align 4, !noalias !908
  %i.o = shufflevector <14 x float> %i.n, <14 x float> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13>
  %i.p = shufflevector <8 x float> %i.m, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.q = shufflevector <8 x float> %i.o, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  br label %_ZN4pbrt12TransformSetixEi.exit5.i

_ZN4pbrt12TransformSetixEi.exit5.i:               ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.i, %_ZN4pbrt12TransformSetixEi.exit.i
  %i.r = phi <8 x float> [ %i.p, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.i ], [ splat (float +snan(0x200000)), %_ZN4pbrt12TransformSetixEi.exit.i ]
  %i.s = phi <8 x float> [ %i.q, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.i ], [ splat (float +snan(0x200000)), %_ZN4pbrt12TransformSetixEi.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !908
  %i.t = shufflevector <16 x float> %i.g, <16 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %i.t, ptr %i.b, align 32
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 864
  store <8 x float> %i.r, ptr %.sroa.19.0..sroa_idx.i, align 32
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 896
  store <8 x float> %i.s, ptr %.sroa.27.0..sroa_idx.i, align 64
  %.pre.i = load i32, ptr %i.a, align 32, !tbaa !108
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pbrt12TransformSetixEi.exit5.i, %bb.a
  %i.u = phi i32 [ %i.e, %bb.a ], [ %.pre.i, %_ZN4pbrt12TransformSetixEi.exit5.i ]
  %i.v = and i32 %i.u, 2
  %.not.1.i = icmp eq i32 %i.v, 0
  br i1 %.not.1.i, label %"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_9TransformEPfNS_7FileLocEE3$_0EEvT_.exit", label %_ZN4pbrt12TransformSetixEi.exit.1.i

_ZN4pbrt12TransformSetixEi.exit.1.i:              ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 928
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !908
  %i.x = load <16 x float>, ptr %1, align 4, !tbaa !107, !noalias !908 ; 3 uses
  %i.y = shufflevector <16 x float> %i.x, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.y, ptr %4, align 4, !tbaa !107, !noalias !908
  %i.z = shufflevector <16 x float> %i.x, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.z, ptr %i.c, align 4, !tbaa !107, !noalias !908
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !908
  call void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.288") align 4 %3, ptr noundef nonnull align 4 dereferenceable(64) %4), !noalias !908
  %i.aa = load i8, ptr %i.d, align 4, !tbaa !348, !range !211, !noalias !908, !noundef !212
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.1.i, label %_ZN4pbrt12TransformSetixEi.exit5.1.i

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.1.i: ; preds = %_ZN4pbrt12TransformSetixEi.exit.1.i
  %i.ac = load <14 x float>, ptr %3, align 4, !noalias !908
  %i.ad = shufflevector <14 x float> %i.ac, <14 x float> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13>
  %i.ae = load <14 x float>, ptr %.sroa.26.64..sroa_idx.i.i, align 4, !noalias !908
  %i.af = shufflevector <14 x float> %i.ae, <14 x float> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13>
  %i.ag = shufflevector <8 x float> %i.ad, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.ah = shufflevector <8 x float> %i.af, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  br label %_ZN4pbrt12TransformSetixEi.exit5.1.i

_ZN4pbrt12TransformSetixEi.exit5.1.i:             ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.1.i, %_ZN4pbrt12TransformSetixEi.exit.1.i
  %i.ai = phi <8 x float> [ %i.ag, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.1.i ], [ splat (float +snan(0x200000)), %_ZN4pbrt12TransformSetixEi.exit.1.i ]
  %i.aj = phi <8 x float> [ %i.ah, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.1.i ], [ splat (float +snan(0x200000)), %_ZN4pbrt12TransformSetixEi.exit.1.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !908
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !908
  %i.ak = shufflevector <16 x float> %i.x, <16 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %i.ak, ptr %i.w, align 32
  %.sroa.19.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %0, i64 992
  store <8 x float> %i.ai, ptr %.sroa.19.0..sroa_idx.1.i, align 32
  %.sroa.27.0..sroa_idx.1.i = getelementptr inbounds nuw i8, ptr %0, i64 1024
  store <8 x float> %i.aj, ptr %.sroa.27.0..sroa_idx.1.i, align 64
  br label %"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_9TransformEPfNS_7FileLocEE3$_0EEvT_.exit"

"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_9TransformEPfNS_7FileLocEE3$_0EEvT_.exit": ; preds = %bb.b, %_ZN4pbrt12TransformSetixEi.exit5.1.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder15ConcatTransformEPfNS_7FileLocE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(3544) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone byval(%"struct.pbrt::FileLoc") align 8 captures(none) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.pstd::optional.288", align 4 ; 10 uses
  %4 = alloca %"class.pbrt::Transform", align 4   ; 10 uses
  %5 = alloca %"class.pbrt::SquareMatrix.7", align 4 ; 9 uses
  %6 = alloca %"class.pbrt::Transform", align 8   ; 8 uses
  %7 = alloca %"class.pbrt::Transform", align 4   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %.sroa.26.64..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.f = load i32, ptr %i.a, align 32, !tbaa !108 ; 2 uses
  %i.g = and i32 %i.f, 1
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_ZN4pbrt12TransformSetixEi.exit.i

_ZN4pbrt12TransformSetixEi.exit.i:                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 32 dereferenceable(128) %i.b, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !913
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !913
  %i.h = load <16 x float>, ptr %1, align 4, !tbaa !107, !noalias !913 ; 3 uses
  %i.i = shufflevector <16 x float> %i.h, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.i, ptr %5, align 4, !tbaa !107, !noalias !913
  %i.j = shufflevector <16 x float> %i.h, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.j, ptr %i.c, align 4, !tbaa !107, !noalias !913
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !913
  call void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.288") align 4 %3, ptr noundef nonnull align 4 dereferenceable(64) %5), !noalias !913
  %i.k = load i8, ptr %i.d, align 4, !tbaa !348, !range !211, !noalias !913, !noundef !212
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.i, label %_ZN4pbrt12TransformSetixEi.exit5.i

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.i: ; preds = %_ZN4pbrt12TransformSetixEi.exit.i
  %i.m = load <14 x float>, ptr %3, align 4, !noalias !913
  %i.n = shufflevector <14 x float> %i.m, <14 x float> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13>
  %i.o = load <14 x float>, ptr %.sroa.26.64..sroa_idx.i.i, align 4, !noalias !913
  %i.p = shufflevector <14 x float> %i.o, <14 x float> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13>
  %i.q = shufflevector <8 x float> %i.n, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.r = shufflevector <8 x float> %i.p, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  br label %_ZN4pbrt12TransformSetixEi.exit5.i

_ZN4pbrt12TransformSetixEi.exit5.i:               ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.i, %_ZN4pbrt12TransformSetixEi.exit.i
  %i.s = phi <8 x float> [ %i.q, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.i ], [ splat (float +snan(0x200000)), %_ZN4pbrt12TransformSetixEi.exit.i ]
  %i.t = phi <8 x float> [ %i.r, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.i ], [ splat (float +snan(0x200000)), %_ZN4pbrt12TransformSetixEi.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !913
  %i.u = shufflevector <16 x float> %i.h, <16 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %i.u, ptr %4, align 4, !alias.scope !914, !noalias !913
  store <8 x float> %i.s, ptr %i.e, align 4, !alias.scope !914, !noalias !913
  store <8 x float> %i.t, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !alias.scope !914, !noalias !913
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %7, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 4 dereferenceable(128) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !913
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !913
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.b, ptr noundef nonnull align 4 dereferenceable(128) %7, i64 128, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %.pre.i = load i32, ptr %i.a, align 32, !tbaa !108
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pbrt12TransformSetixEi.exit5.i, %bb.a
  %i.v = phi i32 [ %i.f, %bb.a ], [ %.pre.i, %_ZN4pbrt12TransformSetixEi.exit5.i ]
  %i.w = and i32 %i.v, 2
  %.not.1.i = icmp eq i32 %i.w, 0
  br i1 %.not.1.i, label %"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_15ConcatTransformEPfNS_7FileLocEE3$_0EEvT_.exit", label %_ZN4pbrt12TransformSetixEi.exit.1.i

_ZN4pbrt12TransformSetixEi.exit.1.i:              ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 32 dereferenceable(128) %i.x, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !913
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !913
  %i.y = load <16 x float>, ptr %1, align 4, !tbaa !107, !noalias !913 ; 3 uses
  %i.z = shufflevector <16 x float> %i.y, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.z, ptr %5, align 4, !tbaa !107, !noalias !913
  %i.aa = shufflevector <16 x float> %i.y, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.aa, ptr %i.c, align 4, !tbaa !107, !noalias !913
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !913
  call void @_ZN4pbrt7InverseILi4EEEN4pstd8optionalINS_12SquareMatrixIXT_EEEEERKS4_(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.288") align 4 %3, ptr noundef nonnull align 4 dereferenceable(64) %5), !noalias !913
  %i.ab = load i8, ptr %i.d, align 4, !tbaa !348, !range !211, !noalias !913, !noundef !212
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.1.i, label %_ZN4pbrt12TransformSetixEi.exit5.1.i

_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.1.i: ; preds = %_ZN4pbrt12TransformSetixEi.exit.1.i
  %i.ad = load <14 x float>, ptr %3, align 4, !noalias !913
  %i.ae = shufflevector <14 x float> %i.ad, <14 x float> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13>
  %i.af = load <14 x float>, ptr %.sroa.26.64..sroa_idx.i.i, align 4, !noalias !913
  %i.ag = shufflevector <14 x float> %i.af, <14 x float> poison, <8 x i32> <i32 0, i32 1, i32 4, i32 5, i32 8, i32 9, i32 12, i32 13>
  %i.ah = shufflevector <8 x float> %i.ae, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  %i.ai = shufflevector <8 x float> %i.ag, <8 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  br label %_ZN4pbrt12TransformSetixEi.exit5.1.i

_ZN4pbrt12TransformSetixEi.exit5.1.i:             ; preds = %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.1.i, %_ZN4pbrt12TransformSetixEi.exit.1.i
  %i.aj = phi <8 x float> [ %i.ah, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.1.i ], [ splat (float +snan(0x200000)), %_ZN4pbrt12TransformSetixEi.exit.1.i ]
  %i.ak = phi <8 x float> [ %i.ai, %_ZN4pstd8optionalIN4pbrt12SquareMatrixILi4EEEEdeEv.exit.i.i.1.i ], [ splat (float +snan(0x200000)), %_ZN4pbrt12TransformSetixEi.exit.1.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !913
  %i.al = shufflevector <16 x float> %i.y, <16 x float> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %i.al, ptr %4, align 4, !alias.scope !914, !noalias !913
  store <8 x float> %i.aj, ptr %i.e, align 4, !alias.scope !914, !noalias !913
  store <8 x float> %i.ak, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !alias.scope !914, !noalias !913
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %7, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 4 dereferenceable(128) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !913
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !913
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.x, ptr noundef nonnull align 4 dereferenceable(128) %7, i64 128, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_15ConcatTransformEPfNS_7FileLocEE3$_0EEvT_.exit"

"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_15ConcatTransformEPfNS_7FileLocEE3$_0EEvT_.exit": ; preds = %bb.b, %_ZN4pbrt12TransformSetixEi.exit5.1.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder6RotateEffffNS_7FileLocE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(3544) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, ptr nofree noundef readnone byval(%"struct.pbrt::FileLoc") align 8 captures(none) %5) unnamed_addr #10 align 2 {
bb.a:
  %sincos.sin.i.i.i = alloca float, align 4       ; 8 uses
  %sincos.cos.i.i.i = alloca float, align 4       ; 8 uses
  %6 = alloca %"class.pbrt::Transform", align 4   ; 27 uses
  %7 = alloca %"class.pbrt::Transform", align 8   ; 8 uses
  %8 = alloca %"class.pbrt::Transform", align 4   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.b = fmul float %1, f0x3C8EFA35               ; 2 uses
  %i.c = fmul float %2, %2
  %i.d = fmul float %3, %3
  %i.e = fadd float %i.c, %i.d
  %i.f = fmul float %4, %4
  %i.g = fadd float %i.f, %i.e
  %sqrt.i.i.i.i.i.i = tail call float @llvm.sqrt.f32(float %i.g) ; 3 uses
  %i.h = fdiv float %2, %sqrt.i.i.i.i.i.i         ; 6 uses
  %i.i = fdiv float %3, %sqrt.i.i.i.i.i.i         ; 6 uses
  %i.j = fdiv float %4, %sqrt.i.i.i.i.i.i         ; 6 uses
  %i.k = fmul float %i.h, %i.h                    ; 3 uses
  %i.l = fsub float 1.000000e+00, %i.k            ; 2 uses
  %i.m = fmul float %i.h, %i.i                    ; 2 uses
  %i.n = fmul float %i.h, %i.j                    ; 2 uses
  %i.o = fmul float %i.i, %i.i                    ; 3 uses
  %i.p = fsub float 1.000000e+00, %i.o            ; 2 uses
  %i.q = fmul float %i.i, %i.j                    ; 2 uses
  %i.r = fmul float %i.j, %i.j                    ; 3 uses
  %i.s = fsub float 1.000000e+00, %i.r            ; 2 uses
  %.sroa.5.0..sroa_idx115.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %.sroa.7.0..sroa_idx116.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.13.0..sroa_idx120.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %.sroa.16.0..sroa_idx121.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  %.sroa.18.0..sroa_idx122.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %.sroa.19.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %.sroa.21.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %.sroa.24.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 2 uses
  %.sroa.30.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 76 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 84 ; 2 uses
  %.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 100 ; 2 uses
  %.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %.sroa.14.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 108 ; 2 uses
  %.sroa.18.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 124 ; 2 uses
  %i.u = load i32, ptr %i.a, align 32, !tbaa !108 ; 2 uses
  %i.v = and i32 %i.u, 1
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.b, label %_ZN4pbrt12TransformSetixEi.exit5.i

_ZN4pbrt12TransformSetixEi.exit5.i:               ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 32 dereferenceable(128) %i.w, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !923
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i.i.i), !noalias !923
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i.i.i), !noalias !923
  call void @sincosf(float %i.b, ptr nonnull %sincos.sin.i.i.i, ptr nonnull %sincos.cos.i.i.i), !noalias !925
  %sin.i.i.i = load float, ptr %sincos.sin.i.i.i, align 4, !noalias !925 ; 3 uses
  %cos.i.i.i = load float, ptr %sincos.cos.i.i.i, align 4, !noalias !925 ; 4 uses
  %i.x = fmul float %i.l, %cos.i.i.i
  %i.y = fadd float %i.k, %i.x                    ; 2 uses
  %i.z = fsub float 1.000000e+00, %cos.i.i.i      ; 3 uses
  %i.aa = fmul float %i.j, %sin.i.i.i             ; 2 uses
  %i.ab = fmul float %i.i, %sin.i.i.i             ; 2 uses
  %i.ac = fmul float %i.h, %sin.i.i.i             ; 2 uses
  %i.ad = fmul float %i.s, %cos.i.i.i
  %i.ae = fadd float %i.r, %i.ad                  ; 2 uses
  store float %i.y, ptr %6, align 4, !alias.scope !926, !noalias !923
  %i.af = fmul float %i.m, %i.z                   ; 2 uses
  %i.ag = fsub float %i.af, %i.aa                 ; 2 uses
  %i.ah = fadd float %i.aa, %i.af                 ; 2 uses
  store float %i.ag, ptr %.sroa.5.0..sroa_idx115.i.i.i.i, align 4, !alias.scope !926, !noalias !923
  store float 0.000000e+00, ptr %.sroa.16.0..sroa_idx121.i.i.i.i, align 4, !alias.scope !926, !noalias !923
  store float %i.ae, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 4, !alias.scope !926, !noalias !923
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.24.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !926, !noalias !923
  store float 1.000000e+00, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 4, !tbaa !88, !alias.scope !926, !noalias !923
  store float %i.y, ptr %i.t, align 4, !alias.scope !926, !noalias !923
  store float %i.ah, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !alias.scope !926, !noalias !923
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 4, !alias.scope !926, !noalias !923
  store float %i.ag, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 4, !alias.scope !926, !noalias !923
  %i.ai = fmul float %i.q, %i.z                   ; 2 uses
  %i.aj = fsub float %i.ai, %i.ac                 ; 2 uses
  %i.ak = fadd float %i.ac, %i.ai                 ; 2 uses
  %i.al = fmul float %i.n, %i.z                   ; 2 uses
  %i.am = fadd float %i.ab, %i.al                 ; 2 uses
  %i.an = fmul float %i.p, %cos.i.i.i
  %i.ao = fadd float %i.o, %i.an                  ; 2 uses
  %i.ap = fsub float %i.al, %i.ab                 ; 2 uses
  %i.aq = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.am, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %i.ah, i64 2
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 3
  store <4 x float> %i.as, ptr %.sroa.7.0..sroa_idx116.i.i.i.i, align 4, !alias.scope !926, !noalias !923
  store float %i.aj, ptr %.sroa.13.0..sroa_idx120.i.i.i.i, align 4, !alias.scope !926, !noalias !923
  store float %i.ap, ptr %.sroa.18.0..sroa_idx122.i.i.i.i, align 4, !alias.scope !926, !noalias !923
  store float %i.ak, ptr %.sroa.19.0..sroa_idx.i.i.i.i, align 4, !alias.scope !926, !noalias !923
  store float %i.ap, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4, !alias.scope !926, !noalias !923
  %i.at = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.ao, i64 0
  %i.au = insertelement <4 x float> %i.at, float %i.ak, i64 1
  %i.av = insertelement <4 x float> %i.au, float %i.am, i64 3
  store <4 x float> %i.av, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 4, !alias.scope !926, !noalias !923
  store float %i.aj, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 4, !alias.scope !926, !noalias !923
  store float %i.ae, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 4, !alias.scope !926, !noalias !923
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !926, !noalias !923
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx.i.i.i.i, align 4, !tbaa !88, !alias.scope !926, !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i.i.i), !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i.i.i), !noalias !923
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %8, ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 4 dereferenceable(128) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.w, ptr noundef nonnull align 4 dereferenceable(128) %8, i64 128, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %.pre.i = load i32, ptr %i.a, align 32, !tbaa !108
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pbrt12TransformSetixEi.exit5.i, %bb.a
  %i.aw = phi i32 [ %i.u, %bb.a ], [ %.pre.i, %_ZN4pbrt12TransformSetixEi.exit5.i ]
  %i.ax = and i32 %i.aw, 2
  %.not.1.i = icmp eq i32 %i.ax, 0
  br i1 %.not.1.i, label %"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_6RotateEffffNS_7FileLocEE3$_0EEvT_.exit", label %_ZN4pbrt12TransformSetixEi.exit5.1.i

_ZN4pbrt12TransformSetixEi.exit5.1.i:             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 32 dereferenceable(128) %i.ay, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !923
  call void @llvm.experimental.noalias.scope.decl(metadata !927)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i.i.i), !noalias !923
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i.i.i), !noalias !923
  call void @sincosf(float %i.b, ptr nonnull %sincos.sin.i.i.i, ptr nonnull %sincos.cos.i.i.i), !noalias !928
  %sin.i.i.1.i = load float, ptr %sincos.sin.i.i.i, align 4, !noalias !928 ; 3 uses
  %cos.i.i.1.i = load float, ptr %sincos.cos.i.i.i, align 4, !noalias !928 ; 4 uses
  %i.az = fmul float %i.l, %cos.i.i.1.i
  %i.ba = fadd float %i.k, %i.az                  ; 2 uses
  %i.bb = fsub float 1.000000e+00, %cos.i.i.1.i   ; 3 uses
  %i.bc = fmul float %i.j, %sin.i.i.1.i           ; 2 uses
  %i.bd = fmul float %i.i, %sin.i.i.1.i           ; 2 uses
  %i.be = fmul float %i.h, %sin.i.i.1.i           ; 2 uses
  %i.bf = fmul float %i.s, %cos.i.i.1.i
  %i.bg = fadd float %i.r, %i.bf                  ; 2 uses
  store float %i.ba, ptr %6, align 4, !alias.scope !929, !noalias !923
  %i.bh = fmul float %i.m, %i.bb                  ; 2 uses
  %i.bi = fsub float %i.bh, %i.bc                 ; 2 uses
  %i.bj = fadd float %i.bc, %i.bh                 ; 2 uses
  store float %i.bi, ptr %.sroa.5.0..sroa_idx115.i.i.i.i, align 4, !alias.scope !929, !noalias !923
  store float 0.000000e+00, ptr %.sroa.16.0..sroa_idx121.i.i.i.i, align 4, !alias.scope !929, !noalias !923
  store float %i.bg, ptr %.sroa.21.0..sroa_idx.i.i.i.i, align 4, !alias.scope !929, !noalias !923
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.24.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !929, !noalias !923
  store float 1.000000e+00, ptr %.sroa.30.0..sroa_idx.i.i.i.i, align 4, !tbaa !88, !alias.scope !929, !noalias !923
  store float %i.ba, ptr %i.t, align 4, !alias.scope !929, !noalias !923
  store float %i.bj, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !alias.scope !929, !noalias !923
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 4, !alias.scope !929, !noalias !923
  store float %i.bi, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 4, !alias.scope !929, !noalias !923
  %i.bk = fmul float %i.q, %i.bb                  ; 2 uses
  %i.bl = fsub float %i.bk, %i.be                 ; 2 uses
  %i.bm = fadd float %i.be, %i.bk                 ; 2 uses
  %i.bn = fmul float %i.n, %i.bb                  ; 2 uses
  %i.bo = fadd float %i.bd, %i.bn                 ; 2 uses
  %i.bp = fmul float %i.p, %cos.i.i.1.i
  %i.bq = fadd float %i.o, %i.bp                  ; 2 uses
  %i.br = fsub float %i.bn, %i.bd                 ; 2 uses
  %i.bs = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.bo, i64 0
  %i.bt = insertelement <4 x float> %i.bs, float %i.bj, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 3
  store <4 x float> %i.bu, ptr %.sroa.7.0..sroa_idx116.i.i.i.i, align 4, !alias.scope !929, !noalias !923
  store float %i.bl, ptr %.sroa.13.0..sroa_idx120.i.i.i.i, align 4, !alias.scope !929, !noalias !923
  store float %i.br, ptr %.sroa.18.0..sroa_idx122.i.i.i.i, align 4, !alias.scope !929, !noalias !923
  store float %i.bm, ptr %.sroa.19.0..sroa_idx.i.i.i.i, align 4, !alias.scope !929, !noalias !923
  store float %i.br, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4, !alias.scope !929, !noalias !923
  %i.bv = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.bq, i64 0
  %i.bw = insertelement <4 x float> %i.bv, float %i.bm, i64 1
  %i.bx = insertelement <4 x float> %i.bw, float %i.bo, i64 3
  store <4 x float> %i.bx, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 4, !alias.scope !929, !noalias !923
  store float %i.bl, ptr %.sroa.12.0..sroa_idx.i.i.i.i, align 4, !alias.scope !929, !noalias !923
  store float %i.bg, ptr %.sroa.13.0..sroa_idx.i.i.i.i, align 4, !alias.scope !929, !noalias !923
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.14.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !929, !noalias !923
  store float 1.000000e+00, ptr %.sroa.18.0..sroa_idx.i.i.i.i, align 4, !tbaa !88, !alias.scope !929, !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i.i.i), !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i.i.i), !noalias !923
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %8, ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 4 dereferenceable(128) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32, !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.ay, ptr noundef nonnull align 4 dereferenceable(128) %8, i64 128, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_6RotateEffffNS_7FileLocEE3$_0EEvT_.exit"

"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_6RotateEffffNS_7FileLocEE3$_0EEvT_.exit": ; preds = %bb.b, %_ZN4pbrt12TransformSetixEi.exit5.1.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder5ScaleEfffNS_7FileLocE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(3544) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef readnone byval(%"struct.pbrt::FileLoc") align 8 captures(none) %4) unnamed_addr #10 align 2 {
bb.a:
  %5 = alloca %"class.pbrt::Transform", align 4   ; 8 uses
  %6 = alloca %"class.pbrt::Transform", align 8   ; 8 uses
  %7 = alloca %"class.pbrt::Transform", align 4   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.b = load i32, ptr %i.a, align 32, !tbaa !108 ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN4pbrt12TransformSetixEi.exit5.i

_ZN4pbrt12TransformSetixEi.exit5.i:               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 32 dereferenceable(128) %i.d, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !932
  call void @_ZN4pbrt5ScaleEfff(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %5, float noundef %1, float noundef %2, float noundef %3), !noalias !932
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %7, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 4 dereferenceable(128) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !932
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.d, ptr noundef nonnull align 4 dereferenceable(128) %7, i64 128, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %.pre.i = load i32, ptr %i.a, align 32, !tbaa !108
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pbrt12TransformSetixEi.exit5.i, %bb.a
  %i.e = phi i32 [ %i.b, %bb.a ], [ %.pre.i, %_ZN4pbrt12TransformSetixEi.exit5.i ]
  %i.f = and i32 %i.e, 2
  %.not.1.i = icmp eq i32 %i.f, 0
  br i1 %.not.1.i, label %"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_5ScaleEfffNS_7FileLocEE3$_0EEvT_.exit", label %_ZN4pbrt12TransformSetixEi.exit5.1.i

_ZN4pbrt12TransformSetixEi.exit5.1.i:             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 32 dereferenceable(128) %i.g, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32, !noalias !932
  call void @_ZN4pbrt5ScaleEfff(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %5, float noundef %1, float noundef %2, float noundef %3), !noalias !932
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %7, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 4 dereferenceable(128) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !932
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.g, ptr noundef nonnull align 4 dereferenceable(128) %7, i64 128, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_5ScaleEfffNS_7FileLocEE3$_0EEvT_.exit"

"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_5ScaleEfffNS_7FileLocEE3$_0EEvT_.exit": ; preds = %bb.b, %_ZN4pbrt12TransformSetixEi.exit5.1.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder6LookAtEfffffffffNS_7FileLocE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(3544) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, ptr nofree noundef readnone byval(%"struct.pbrt::FileLoc") align 8 captures(none) %10) unnamed_addr #10 align 2 {
bb.a:
  %11 = alloca %"class.pbrt::Transform", align 8  ; 8 uses
  %12 = alloca %"class.pbrt::Transform", align 4  ; 8 uses
  %13 = alloca %class.anon.139, align 8           ; 5 uses
  %14 = alloca %"class.pbrt::Transform", align 4  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %.sroa.019.0.vec.insert = insertelement <2 x float> poison, float %1, i64 0
  %.sroa.019.4.vec.insert = insertelement <2 x float> %.sroa.019.0.vec.insert, float %2, i64 1
  %.sroa.016.0.vec.insert = insertelement <2 x float> poison, float %4, i64 0
  %.sroa.016.4.vec.insert = insertelement <2 x float> %.sroa.016.0.vec.insert, float %5, i64 1
  %.sroa.014.0.vec.insert = insertelement <2 x float> poison, float %7, i64 0
  %.sroa.014.4.vec.insert = insertelement <2 x float> %.sroa.014.0.vec.insert, float %8, i64 1
  call void @_ZN4pbrt6LookAtENS_6Point3IfEES1_NS_7Vector3IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %14, <2 x float> %.sroa.019.4.vec.insert, float %3, <2 x float> %.sroa.016.4.vec.insert, float %6, <2 x float> %.sroa.014.4.vec.insert, float %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %13, ptr noundef nonnull align 4 dereferenceable(128) %14, i64 128, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.b = load i32, ptr %i.a, align 32, !tbaa !108 ; 2 uses
  %i.c = and i32 %i.b, 1
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZN4pbrt12TransformSetixEi.exit5.i

_ZN4pbrt12TransformSetixEi.exit5.i:               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 32 dereferenceable(128) %i.d, i64 128, i1 false)
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %12, ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 8 dereferenceable(128) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.d, ptr noundef nonnull align 4 dereferenceable(128) %12, i64 128, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %.pre.i = load i32, ptr %i.a, align 32, !tbaa !108
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pbrt12TransformSetixEi.exit5.i, %bb.a
  %i.e = phi i32 [ %i.b, %bb.a ], [ %.pre.i, %_ZN4pbrt12TransformSetixEi.exit5.i ]
  %i.f = and i32 %i.e, 2
  %.not.1.i = icmp eq i32 %i.f, 0
  br i1 %.not.1.i, label %"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_6LookAtEfffffffffNS_7FileLocEE3$_0EEvT_.exit", label %_ZN4pbrt12TransformSetixEi.exit5.1.i

_ZN4pbrt12TransformSetixEi.exit5.1.i:             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 32 dereferenceable(128) %i.g, i64 128, i1 false)
  call void @_ZNK4pbrt9TransformmlERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %12, ptr noundef nonnull align 8 dereferenceable(128) %11, ptr noundef nonnull align 8 dereferenceable(128) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(128) %i.g, ptr noundef nonnull align 4 dereferenceable(128) %12, i64 128, i1 false), !tbaa.struct !214
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_6LookAtEfffffffffNS_7FileLocEE3$_0EEvT_.exit"

"_ZN4pbrt17BasicSceneBuilder13GraphicsState19ForActiveTransformsIZNS0_6LookAtEfffffffffNS_7FileLocEE3$_0EEvT_.exit": ; preds = %bb.b, %_ZN4pbrt12TransformSetixEi.exit5.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  ret void
}

declare void @_ZN4pbrt6LookAtENS_6Point3IfEES1_NS_7Vector3IfEE(ptr dead_on_unwind writable sret(%"class.pbrt::Transform") align 4, <2 x float>, float, <2 x float>, float, <2 x float>, float) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder18ActiveTransformAllENS_7FileLocE(ptr nofree noundef nonnull writeonly align 64 captures(none) dereferenceable(3544) initializes((1056, 1060)) %0, ptr nofree noundef readnone byval(%"struct.pbrt::FileLoc") align 8 captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store i32 3, ptr %i.a, align 32, !tbaa !237
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder22ActiveTransformEndTimeENS_7FileLocE(ptr nofree noundef nonnull writeonly align 64 captures(none) dereferenceable(3544) initializes((1056, 1060)) %0, ptr nofree noundef readnone byval(%"struct.pbrt::FileLoc") align 8 captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store i32 2, ptr %i.a, align 32, !tbaa !237
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder24ActiveTransformStartTimeENS_7FileLocE(ptr nofree noundef nonnull writeonly align 64 captures(none) dereferenceable(3544) initializes((1056, 1060)) %0, ptr nofree noundef readnone byval(%"struct.pbrt::FileLoc") align 8 captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store i32 1, ptr %i.a, align 32, !tbaa !237
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder14TransformTimesEffNS_7FileLocE(ptr nofree noundef nonnull align 64 captures(none) dereferenceable(3544) %0, float noundef %1, float noundef %2, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !166
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN4pbrt9ErrorExitIJRA15_KcEEEvPKNS_7FileLocEPS1_DpOT_(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(15) @.str.78) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1060
  store float %1, ptr %i.d, align 4, !tbaa !218
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store float %2, ptr %i.e, align 8, !tbaa !219
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt17BasicSceneBuilder11PixelFilterERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorISB_EEEENS_7FileLocE(ptr noundef nonnull align 64 dereferenceable(3544) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef align 8 captures(none) dereferenceable(96) %2, ptr noundef byval(%"struct.pbrt::FileLoc") align 8 %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 12 uses
  %5 = alloca %"class.pbrt::InlinedVector", align 8 ; 8 uses
  %6 = alloca %"struct.pbrt::SceneEntity", align 8 ; 11 uses
  %7 = alloca %"class.pbrt::ParameterDictionary", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = load i64, ptr %2, align 8, !tbaa !102
  store i64 %i.a, ptr %5, align 8, !tbaa !102
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !109  ; 3 uses
  %i.h = load <2 x i64>, ptr %i.f, align 8, !tbaa !198
  store <2 x i64> %i.h, ptr %i.c, align 8, !tbaa !198
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !103
  store ptr %i.j, ptr %i.b, align 8, !tbaa !103
  %i.k = icmp ult i64 %i.g, 9
  br i1 %i.k, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = shl nuw nsw i64 %i.g, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.m, i64 %i.n, i1 false), !tbaa !189
  br label %_ZN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEC2EOS7_.exit
end_hunk_0
begin_hunk_1_@_ZN4pbrt6detail21stringPrintfRecursiveIRmJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_:bb.a
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.dn) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.ag

bb.u:                                             ; preds = %bb.l
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %bb.m
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i48, %bb.t
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.bt
  br i1 %i.ds, label %.body46, label %.body46.sink.split

.body46.sink.split:                               ; preds = %bb.w, %bb.s
  %.sink123 = phi ptr [ %i.cc, %bb.s ], [ %i.dr, %bb.w ]
  %.pn24.ph = phi { ptr, i32 } [ %i.cb, %bb.s ], [ %i.dq, %bb.w ]
  %i.dt = load i64, ptr %i.bt, align 8, !tbaa !88
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %.sink123, i64 noundef %i.du) #33
  br label %.body46

.body46:                                          ; preds = %.body46.sink.split, %bb.w, %bb.s
  %.pn24 = phi { ptr, i32 } [ %i.cb, %bb.s ], [ %i.dq, %bb.w ], [ %.pn24.ph, %.body46.sink.split ] ; 2 uses
  %i.dv = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.ay
  br i1 %i.dw, label %.body41, label %.body41.sink.split

.body41.sink.split:                               ; preds = %.body46, %bb.o
  %.sink126 = phi ptr [ %i.bm, %bb.o ], [ %i.dv, %.body46 ]
  %.pn24.pn.ph = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %.pn24, %.body46 ]
  %i.dx = load i64, ptr %i.ay, align 8, !tbaa !88
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %.sink126, i64 noundef %i.dy) #33
  br label %.body41

.body41:                                          ; preds = %.body41.sink.split, %.body46, %bb.o
  %.pn24.pn = phi { ptr, i32 } [ %i.bl, %bb.o ], [ %.pn24, %.body46 ], [ %.pn24.pn.ph, %.body41.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.x

bb.x:                                             ; preds = %.body41, %bb.v
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %.body41 ], [ %i.dp, %bb.v ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %bb.x ], [ %i.do, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.ai

bb.z:                                             ; preds = %bb.k
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !87
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %.invoke, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.ec = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2158)
  %i.ed = load i64, ptr %2, align 8, !tbaa !198, !noalias !2158
  %i.ee = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.ec, i64 noundef %i.ed) #32, !noalias !2158
  %i.ef = add nsw i32 %i.ee, 1
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.eh, ptr %8, align 8, !tbaa !85, !alias.scope !2158
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.ei, align 8, !tbaa !87, !alias.scope !2158
  store i8 0, ptr %i.eh, align 8, !tbaa !88, !alias.scope !2158
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.eg, i8 noundef signext 0)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ej = load ptr, ptr %8, align 8, !tbaa !89, !alias.scope !2158
  %i.ek = load i64, ptr %2, align 8, !tbaa !198, !noalias !2158
  %i.el = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ej, i64 noundef %i.eg, ptr noundef %i.ec, i64 noundef %i.ek) #32 ; 0 uses
  %i.em = load i64, ptr %i.ei, align 8, !tbaa !87, !alias.scope !2158
  %i.en = add i64 %i.em, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.en, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIRmEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit69 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #31
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.er = load ptr, ptr %8, align 8, !tbaa !89, !alias.scope !2158 ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.eh
  br i1 %i.es, label %.body67, label %.body67.sink.split

_ZN4pbrt6detail9formatOneIRmEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit69: ; preds = %bb.ab
  %i.et = load i64, ptr %i.ei, align 8, !tbaa !87 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !87
  %i.ew = sub i64 4611686018427387903, %i.ev
  %i.ex = icmp ult i64 %i.ew, %i.et
  br i1 %i.ex, label %bb.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i70

bb.ae:                                            ; preds = %_ZN4pbrt6detail9formatOneIRmEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit69
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.158) #34
          to label %.noexc71 unwind label %bb.af

.noexc71:                                         ; preds = %bb.ae
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i70: ; preds = %_ZN4pbrt6detail9formatOneIRmEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPKcOS5_.exit69
  %i.ey = load ptr, ptr %8, align 8, !tbaa !89
  %i.ez = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ey, i64 noundef %i.et)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73 unwind label %bb.af ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i70
  %i.fa = load ptr, ptr %8, align 8, !tbaa !89    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.eh
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73
  %i.fc = load i64, ptr %i.eh, align 8, !tbaa !88
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.ag

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i70, %bb.ae
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %8, align 8, !tbaa !89    ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.eh
  br i1 %i.fg, label %.body67, label %.body67.sink.split

.body67.sink.split:                               ; preds = %bb.af, %bb.ad
  %.sink129 = phi ptr [ %i.er, %bb.ad ], [ %i.ff, %bb.af ]
  %.pn.ph = phi { ptr, i32 } [ %i.eq, %bb.ad ], [ %i.fe, %bb.af ]
  %i.fh = load i64, ptr %i.eh, align 8, !tbaa !88
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %.sink129, i64 noundef %i.fi) #33
  br label %.body67

.body67:                                          ; preds = %.body67.sink.split, %bb.af, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.eq, %bb.ad ], [ %i.fe, %bb.af ], [ %.pn.ph, %.body67.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.ai

bb.ag:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fj = load ptr, ptr %i.a, align 8, !tbaa !201
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.fj)
          to label %bb.ah unwind label %bb.b

bb.ah:                                            ; preds = %bb.ag
  %i.fk = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %bb.ah
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !88
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.ai:                                            ; preds = %.body67, %bb.y, %.body, %bb.b
  %.pn31 = phi { ptr, i32 } [ %i.g, %bb.b ], [ %.pn29, %.body ], [ %.pn24.pn.pn.pn, %bb.y ], [ %.pn, %.body67 ]
  %i.fp = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.ai
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !88
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn31
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare void @_ZN4pbrt5ScaleEfff(ptr dead_on_unwind writable sret(%"class.pbrt::Transform") align 4, float noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRA5_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(5) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 42, i64 noundef 0) #32
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 115, i64 noundef 0) #32
  %.not16 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 100, i64 noundef 0) #32
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.z
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %.not17 = icmp eq i64 %i.d, -1
  br i1 %.not17, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not16, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.i = load ptr, ptr %3, align 8, !tbaa !89     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !2167)
  call void @llvm.experimental.noalias.scope.decl(metadata !2168)
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.j, ptr %6, align 8, !tbaa !85, !alias.scope !2169
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !87, !alias.scope !2169
  store i8 0, ptr %i.j, align 8, !tbaa !88, !alias.scope !2169
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !536, !noalias !2169 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2169 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !537, !noalias !2169 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !89, !alias.scope !2169 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.aa = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.i, ptr noundef %i.aa) #32, !noalias !2170
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !85, !alias.scope !2170
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !87, !alias.scope !2170
  store i8 0, ptr %i.ae, align 8, !tbaa !88, !alias.scope !2170
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ad, i8 noundef signext 0)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load ptr, ptr %5, align 8, !tbaa !89, !alias.scope !2170
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ag, i64 noundef %i.ad, ptr noundef %i.i, ptr noundef %i.aa) #32 ; 0 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !87, !alias.scope !2170
  %i.aj = add i64 %i.ai, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.aj, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #31
  unreachable

bb.l:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %5, align 8, !tbaa !89, !alias.scope !2170 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ae
  br i1 %i.ao, label %.body26, label %.body26.sink.split

_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit: ; preds = %bb.j
  %i.ap = load i64, ptr %i.af, align 8, !tbaa !87 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !87
  %i.as = sub i64 4611686018427387903, %i.ar
  %i.at = icmp ult i64 %i.as, %i.ap
  br i1 %i.at, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.158) #34
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  %i.au = load ptr, ptr %5, align 8, !tbaa !89
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.au, i64 noundef %i.ap)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.aw = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ae
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ay = load i64, ptr %i.ae, align 8, !tbaa !88
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ba = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.j
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.j, align 8, !tbaa !88
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.be, ptr %4, align 8, !tbaa !72
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %4, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !72
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bj, ptr %i.f, align 8, !tbaa !72
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bk, align 8, !tbaa !72
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !89 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !88
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bk, align 8, !tbaa !72
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.br) #32
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bs, ptr %4, align 8, !tbaa !72
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bu = getelementptr i8, ptr %i.bs, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
end_hunk_1
begin_hunk_2_@_ZN4pbrt6detail21stringPrintfRecursiveIRA16_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.invoke, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.cn = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  %i.co = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(16) %2) #32, !noalias !2210
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cr, ptr %7, align 8, !tbaa !85, !alias.scope !2210
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !87, !alias.scope !2210
  store i8 0, ptr %i.cr, align 8, !tbaa !88, !alias.scope !2210
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cq, i8 noundef signext 0)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.ct = load ptr, ptr %7, align 8, !tbaa !89, !alias.scope !2210
  %i.cu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ct, i64 noundef %i.cq, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(16) %2) #32 ; 0 uses
  %i.cv = load i64, ptr %i.cs, align 8, !tbaa !87, !alias.scope !2210
  %i.cw = add i64 %i.cv, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cw, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIRA16_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #31
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %7, align 8, !tbaa !89, !alias.scope !2210 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cr
  br i1 %i.db, label %.body41, label %.body41.sink.split

_ZN4pbrt6detail9formatOneIRA16_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit: ; preds = %bb.u
  %i.dc = load i64, ptr %i.cs, align 8, !tbaa !87 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !87
  %i.df = sub i64 4611686018427387903, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dc
  br i1 %i.dg, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43

bb.x:                                             ; preds = %_ZN4pbrt6detail9formatOneIRA16_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.158) #34
          to label %.noexc44 unwind label %bb.y

.noexc44:                                         ; preds = %bb.x
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43: ; preds = %_ZN4pbrt6detail9formatOneIRA16_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  %i.dh = load ptr, ptr %7, align 8, !tbaa !89
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dh, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46 unwind label %bb.y ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43
  %i.dj = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cr
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !88
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i43, %bb.x
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !89    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cr
  br i1 %i.dp, label %.body41, label %.body41.sink.split

.body41.sink.split:                               ; preds = %bb.y, %bb.w
  %.sink88 = phi ptr [ %i.da, %bb.w ], [ %i.do, %bb.y ]
  %.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.w ], [ %i.dn, %bb.y ]
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !88
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink88, i64 noundef %i.dr) #33
  br label %.body41

.body41:                                          ; preds = %.body41.sink.split, %bb.y, %bb.w
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.w ], [ %i.dn, %bb.y ], [ %.pn.ph, %.body41.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.ab

.invoke:                                          ; preds = %bb.a, %bb.s, %bb.c
  %i.ds = phi i32 [ 257, %bb.c ], [ 266, %bb.s ], [ 229, %bb.a ]
  %i.dt = phi ptr [ @.str.154, %bb.c ], [ @.str.155, %bb.s ], [ @.str.153, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.152, i32 noundef %i.ds, ptr noundef nonnull %i.dt) #34
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.z:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !201
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.du)
          to label %bb.aa unwind label %bb.b

bb.aa:                                            ; preds = %bb.z
  %i.dv = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.aa
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !88
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.ab:                                            ; preds = %.body41, %bb.r, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.r ], [ %.pn, %.body41 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.ab
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !88
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn24
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA8_KcRA17_S1_S3_RiS5_RmEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(17) %5, ptr noundef nonnull align 1 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(17) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !85, !alias.scope !2213
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !87, !alias.scope !2213
  store i8 0, ptr %i.a, align 8, !tbaa !88, !alias.scope !2213
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA8_KcJRA17_S2_S4_RiS6_RmEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(17) %5, ptr noundef nonnull align 1 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(17) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN4pbrt12StringPrintfIJRA8_KcRA17_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !89, !alias.scope !2213 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !88, !alias.scope !2213
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #33
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA8_KcRA17_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !89
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA8_KcRA17_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA8_KcRA17_S1_S3_RiS5_RmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !89    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !88
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %common.resume
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #25

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRA8_KcJRA17_S2_S4_RiS6_RmEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(17) %3, ptr noundef nonnull align 1 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 1 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull %i.a, ptr noundef %0)
  %i.b = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 42, i64 noundef 0) #32
  %.not = icmp eq i64 %i.b, -1
  %i.c = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 115, i64 noundef 0) #32
  %.not21 = icmp eq i64 %i.c, -1
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 100, i64 noundef 0) #32
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %bb.z
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %.not22 = icmp eq i64 %i.d, -1
  br i1 %.not22, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not21, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %2, i64 noundef %i.g)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.o ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.i = load ptr, ptr %8, align 8, !tbaa !89     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !2222)
  call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.j, ptr %11, align 8, !tbaa !85, !alias.scope !2224
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !87, !alias.scope !2224
  store i8 0, ptr %i.j, align 8, !tbaa !88, !alias.scope !2224
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !536, !noalias !2224 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2224 ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %.08.i.i.i = select i1 %i.p, ptr %i.m, ptr %i.o ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !537, !noalias !2224 ; 2 uses
  %i.s = ptrtoint ptr %.08.i.i.i to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.u)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %11, align 8, !tbaa !89, !alias.scope !2224 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.j
  br i1 %i.y, label %.body, label %.body.sink.split

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.i, %bb.g
  %i.aa = load ptr, ptr %11, align 8, !tbaa !89   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2225)
  %i.ab = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.i, ptr noundef %i.aa) #32, !noalias !2225
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.ae, ptr %10, align 8, !tbaa !85, !alias.scope !2225
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 0, ptr %i.af, align 8, !tbaa !87, !alias.scope !2225
  store i8 0, ptr %i.ae, align 8, !tbaa !88, !alias.scope !2225
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.ad, i8 noundef signext 0)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ag = load ptr, ptr %10, align 8, !tbaa !89, !alias.scope !2225
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ag, i64 noundef %i.ad, ptr noundef %i.i, ptr noundef %i.aa) #32 ; 0 uses
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !87, !alias.scope !2225
  %i.aj = add i64 %i.ai, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.aj, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #31
  unreachable

bb.l:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %10, align 8, !tbaa !89, !alias.scope !2225 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ae
  br i1 %i.ao, label %.body31, label %.body31.sink.split

_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit: ; preds = %bb.j
  %i.ap = load i64, ptr %i.af, align 8, !tbaa !87 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !87
  %i.as = sub i64 4611686018427387903, %i.ar
  %i.at = icmp ult i64 %i.as, %i.ap
  br i1 %i.at, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.m:                                             ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.158) #34
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZN4pbrt6detail9formatOneIPKcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeES3_OS6_.exit
  %i.au = load ptr, ptr %10, align 8, !tbaa !89
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.au, i64 noundef %i.ap)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.aw = load ptr, ptr %10, align 8, !tbaa !89   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ae
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ay = load i64, ptr %i.ae, align 8, !tbaa !88
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ba = load ptr, ptr %11, align 8, !tbaa !89   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.j
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bc = load i64, ptr %i.j, align 8, !tbaa !88
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.be, ptr %9, align 8, !tbaa !72
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %9, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !72
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bj, ptr %i.f, align 8, !tbaa !72
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bk, align 8, !tbaa !72
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !89 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !88
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bk, align 8, !tbaa !72
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.br) #32
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bs, ptr %9, align 8, !tbaa !72
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bu = getelementptr i8, ptr %i.bs, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %9, i64 %i.bv
end_hunk_2
begin_hunk_3_@_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_14InternedStringEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_:bb.a
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.cb)
          to label %bb.v unwind label %bb.u

bb.n:                                             ; preds = %bb.d
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.e
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.m
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = load ptr, ptr %5, align 8, !tbaa !89    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.ag
  br i1 %i.cg, label %.body27, label %.body27.sink.split

.body27.sink.split:                               ; preds = %bb.p, %bb.l
  %.sink = phi ptr [ %i.ap, %bb.l ], [ %i.cf, %bb.p ]
  %.pn19.ph = phi { ptr, i32 } [ %i.ao, %bb.l ], [ %i.ce, %bb.p ]
  %i.ch = load i64, ptr %i.ag, align 8, !tbaa !88
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ci) #33
  br label %.body27

.body27:                                          ; preds = %.body27.sink.split, %bb.p, %bb.l
  %.pn19 = phi { ptr, i32 } [ %i.ao, %bb.l ], [ %i.ce, %bb.p ], [ %.pn19.ph, %.body27.sink.split ] ; 2 uses
  %i.cj = load ptr, ptr %6, align 8, !tbaa !89    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.l
  br i1 %i.ck, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body27, %bb.h
  %.sink75 = phi ptr [ %i.z, %bb.h ], [ %i.cj, %.body27 ]
  %.pn19.pn.ph = phi { ptr, i32 } [ %i.y, %bb.h ], [ %.pn19, %.body27 ]
  %i.cl = load i64, ptr %i.l, align 8, !tbaa !88
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %.sink75, i64 noundef %i.cm) #33
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body27, %bb.h
  %.pn19.pn = phi { ptr, i32 } [ %i.y, %bb.h ], [ %.pn19, %.body27 ], [ %.pn19.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.q

bb.q:                                             ; preds = %.body, %bb.o
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %.body ], [ %i.cd, %bb.o ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn19.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.q ], [ %i.cc, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.w

bb.s:                                             ; preds = %bb.c
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !87
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.invoke, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = load ptr, ptr %3, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.cq, ptr %i.a, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr @_ZTSN4pbrt14InternedStringE, ptr %i.b, align 8, !tbaa !201
  invoke void @_ZN4pbrt8LogFatalIJPKcRS2_EEEvNS_8LogLevelES2_iS2_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.152, i32 noundef 176, ptr noundef nonnull @.str.166, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #34
          to label %.noexc39 unwind label %bb.u

.noexc39:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %.invoke, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.t
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.cs = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.v
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !88
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.w:                                             ; preds = %bb.u, %bb.r
  %.pn24 = phi { ptr, i32 } [ %i.cr, %bb.u ], [ %.pn19.pn.pn.pn, %bb.r ]
  %i.cx = load ptr, ptr %3, align 8, !tbaa !89    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.w
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !88
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn24
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIN4pbrt19InstanceSceneEntityESaIS2_EELb1EE8_S_do_itERS4_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !395    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !395  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %reass.sub.fr.i = freeze i64 %i.f               ; 5 uses
  %i.g = sdiv exact i64 %reass.sub.fr.i, 48
  %i.h = icmp ugt i64 %i.g, 192153584101141162
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.190) #34
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIN4pbrt19InstanceSceneEntityESaIS1_EED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN4pbrt19InstanceSceneEntityESaIS1_EE11_M_allocateEm.exit.thread.i.i, label %.lr.ph.i.i.i.i.preheader.i.i

_ZNSt12_Vector_baseIN4pbrt19InstanceSceneEntityESaIS1_EE11_M_allocateEm.exit.thread.i.i: ; preds = %_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr null, i64 %reass.sub.fr.i
  br label %_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEvEET_SB_RKS2_.exit

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %reass.sub.fr.i) #35
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIN4pbrt19InstanceSceneEntityESaIS1_EED2Ev.exit.i ; 4 uses

.noexc5.i:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %reass.sub.fr.i
  %i.l = add i64 %reass.sub.fr.i, -48             ; 2 uses
  %i.m = urem i64 %i.l, 48
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = add i64 %i.n, 48                         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.a, i64 %i.o, i1 false)
  %scevgep.i.i = getelementptr i8, ptr %i.j, i64 %i.o
  %.pre = load ptr, ptr %0, align 8, !tbaa !190
  br label %_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEvEET_SB_RKS2_.exit

_ZNSt12_Vector_baseIN4pbrt19InstanceSceneEntityESaIS1_EED2Ev.exit.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.preheader.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.09) #32 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EED2Ev.exit unwind label %bb.d

_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEvEET_SB_RKS2_.exit: ; preds = %.noexc5.i, %_ZNSt12_Vector_baseIN4pbrt19InstanceSceneEntityESaIS1_EE11_M_allocateEm.exit.thread.i.i
  %i.r = phi ptr [ %i.a, %_ZNSt12_Vector_baseIN4pbrt19InstanceSceneEntityESaIS1_EE11_M_allocateEm.exit.thread.i.i ], [ %.pre, %.noexc5.i ] ; 3 uses
  %.sroa.12.0 = phi ptr [ %i.i, %_ZNSt12_Vector_baseIN4pbrt19InstanceSceneEntityESaIS1_EE11_M_allocateEm.exit.thread.i.i ], [ %i.k, %.noexc5.i ]
  %.sroa.012.0 = phi ptr [ null, %_ZNSt12_Vector_baseIN4pbrt19InstanceSceneEntityESaIS1_EE11_M_allocateEm.exit.thread.i.i ], [ %i.j, %.noexc5.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN4pbrt19InstanceSceneEntityESaIS1_EE11_M_allocateEm.exit.thread.i.i ], [ %scevgep.i.i, %.noexc5.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !191
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !190
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !390
  store ptr %.sroa.12.0, ptr %i.s, align 8, !tbaa !191
  %.not.i.i.i10 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEvEET_SB_RKS2_.exit
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #33
  br label %_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EED2Ev.exit

_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEvEET_SB_RKS2_.exit, %_ZNSt12_Vector_baseIN4pbrt19InstanceSceneEntityESaIS1_EED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIN4pbrt19InstanceSceneEntityESaIS1_EED2Ev.exit.i ], [ true, %_ZNSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEvEET_SB_RKS2_.exit ], [ true, %bb.c ]
  ret i1 %.0

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN4pbrt19InstanceSceneEntityESaIS1_EED2Ev.exit.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #31
  unreachable
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_scene.cpp() #26 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !107
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !107
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !107
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !107
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL24STATS_REGprimitiveMemoryE, ptr noundef nonnull @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGredundantBufferBytesE, ptr noundef nonnull @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGnBufferCacheHitsE, ptr noundef nonnull @"_ZN4pbrt3$_28__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  %i.c = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4pstd3pmr25monotonic_buffer_resourceE, i64 16), ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, align 64, !tbaa !72
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, i64 8), align 8, !tbaa !79
  store i64 262144, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, i64 16), align 16, !tbaa !172
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, i64 24), i8 0, i64 24, i1 false)
  store ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, i64 64), align 64, !tbaa !173
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, i64 72), align 8, !tbaa !586
  %i.d = ptrtoint ptr %i.c to i64
  store i64 %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, i64 80), align 16, !tbaa !102
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, i64 88), i8 0, i64 24, i1 false)
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 2048, i64 noundef 8)
          to label %.noexc.i.i unwind label %bb.b, !inline_history !2506 ; 14 uses

.noexc.i.i:                                       ; preds = %bb.a
  %.pr.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, i64 104), align 8, !tbaa !67 ; 11 uses
  %.not13.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i, 0
  %.pre.i.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, i64 88), align 8, !tbaa !68 ; 14 uses
  br i1 %.not13.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc.i.i
  %.pre.i.i.i.i.i2 = ptrtoaddr ptr %.pre.i.i.i.i.i to i64
  %i.i = ptrtoaddr ptr %i.h to i64
  %min.iters.check = icmp ult i64 %.pr.i.i.i.i, 4
  %i.j = sub i64 %.pre.i.i.i.i.i2, %i.i
  %diff.check = icmp ugt i64 %i.j, -128
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3 = icmp ult i64 %.pr.i.i.i.i, 16
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %.pr.i.i.i.i, 12
  %n.vec = and i64 %.pr.i.i.i.i, -16              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %index ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %wide.load = load <4 x ptr>, ptr %i.m, align 8, !tbaa !187
  %wide.load4 = load <4 x ptr>, ptr %i.n, align 8, !tbaa !187
  %wide.load5 = load <4 x ptr>, ptr %i.o, align 8, !tbaa !187
  %wide.load6 = load <4 x ptr>, ptr %i.p, align 8, !tbaa !187
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store <4 x ptr> %wide.load, ptr %i.l, align 8, !tbaa !187
  store <4 x ptr> %wide.load4, ptr %i.q, align 8, !tbaa !187
  store <4 x ptr> %wide.load5, ptr %i.r, align 8, !tbaa !187
  store <4 x ptr> %wide.load6, ptr %i.s, align 8, !tbaa !187
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !2507

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pr.i.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !181

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec7 = and i64 %.pr.i.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index8 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next10, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %index8
  %wide.load9 = load <4 x ptr>, ptr %i.v, align 8, !tbaa !187
  store <4 x ptr> %wide.load9, ptr %i.u, align 8, !tbaa !187
  %index.next10 = add nuw i64 %index8, 4          ; 2 uses
  %i.w = icmp eq i64 %index.next10, %n.vec7
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2508

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n11 = icmp eq i64 %.pr.i.i.i.i, %n.vec7
  br i1 %cmp.n11, label %._crit_edge.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec7, %vec.epilog.middle.block ] ; 4 uses
  %i.x = sub i64 %.pr.i.i.i.i, %indvars.iv.i.i.i.i.i.ph
  %xtraiter = and i64 %i.x, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %indvars.iv.i.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ], [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i.i.i.i.prol
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.prol
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !187
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !187
  %indvars.iv.next.i.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2509

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %i.ab = sub i64 %indvars.iv.i.i.i.i.i.ph, %.pr.i.i.i.i
  %i.ac = icmp ugt i64 %i.ab, -8
  br i1 %i.ac, label %._crit_edge.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %__cxx_global_var_init.5.exit, label %._crit_edge.thread.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i.i.i.i
  %i.ad = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, i64 96), align 32, !tbaa !69
  %i.ae = shl i64 %i.ad, 3
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, i64 80), align 16, !tbaa !70 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !72
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %.pre.i.i.i.i.i, i64 noundef %i.ae, i64 noundef 8)
          to label %__cxx_global_var_init.5.exit unwind label %bb.b, !inline_history !2506

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !187
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !187
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i.i.i.i.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !187
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !187
  %indvars.iv.next.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !187
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !187
  %indvars.iv.next.i.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !187
  store ptr %i.au, ptr %i.as, align 8, !tbaa !187
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 4 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i.i.i.i.i.3
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.3
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !187
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !187
  %indvars.iv.next.i.i.i.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 5 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i.i.i.i.i.4
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.4
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !187
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !187
  %indvars.iv.next.i.i.i.i.i.5 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 6 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i.i.i.i.i.5
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.5
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !187
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !187
  %indvars.iv.next.i.i.i.i.i.6 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 7 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next.i.i.i.i.i.6
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.i.6
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !187
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !187
  %indvars.iv.next.i.i.i.i.i.7 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 8 ; 2 uses
  %exitcond.not.i.i.i.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.7, %.pr.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.7, label %._crit_edge.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2510

bb.b:                                             ; preds = %._crit_edge.thread.i.i.i.i.i, %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4pstd3pmr25monotonic_buffer_resourceD2Ev(ptr noundef nonnull align 64 dead_on_return(48) dereferenceable(48) @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E) #32
  resume { ptr, i32 } %i.bh

__cxx_global_var_init.5.exit:                     ; preds = %._crit_edge.i.i.i.i.i, %._crit_edge.thread.i.i.i.i.i
  store i64 256, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, i64 96), align 32, !tbaa !69
  store ptr %i.h, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, i64 88), align 8, !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.h, i8 0, i64 2048, i1 false), !tbaa !187
  store i64 256, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, i64 104), align 8, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, i64 112), i8 0, i64 56, i1 false)
  %i.bi = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4pbrt11InternCacheINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4hashIS6_EED2Ev, ptr nonnull @_ZN4pbrt11SceneEntity15internedStringsB5cxx11E, ptr nonnull @__dso_handle) #32 ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL32STATS_REGnObjectInstancesCreatedE, ptr noundef nonnull @"_ZN4pbrt4$_158__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGnObjectInstancesUsedE, ptr noundef nonnull @"_ZN4pbrt4$_168__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #23

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincosf(float noundef, ptr, ptr) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #23

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { cold nofree noreturn }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!51, !52, !53}
!llvm.ident = !{!54}
!llvm.errno.tbaa = !{!59}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !81}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{null, null, null, null, null, null}
!6 = distinct !{!6, !81}
!7 = distinct !{null}
!8 = distinct !{!8, !81}
!9 = distinct !{!9, !81}
!10 = distinct !{null, null, null, null, null, null, null}
!11 = distinct !{null, null, null, null, null, null, null}
!12 = distinct !{null}
!13 = distinct !{!13, !81}
!14 = distinct !{null, null, null, null, null, null, null, null}
!15 = distinct !{!15, !81}
!16 = distinct !{!16, !81}
!17 = distinct !{!17, !81}
!18 = distinct !{!18, !81}
!19 = distinct !{!19, !81}
!20 = distinct !{null, null, null, null, null, null, null, null}
!21 = distinct !{!21, !81}
!22 = distinct !{!22, !81}
!23 = distinct !{!23, !81}
!24 = distinct !{!24, !81}
!25 = distinct !{null}
!26 = distinct !{null}
!27 = distinct !{!27, !81}
!28 = distinct !{!28, !81}
!29 = distinct !{!29, !81}
!30 = distinct !{!30, !81}
!31 = distinct !{null}
!32 = distinct !{null, null, null, null}
!33 = distinct !{null, null, null, null}
!34 = distinct !{!34, !81}
!35 = distinct !{!35, !81}
!36 = distinct !{null}
!37 = distinct !{null}
!38 = distinct !{null}
!39 = distinct !{null}
!40 = distinct !{null}
!41 = distinct !{!41, !81}
!42 = distinct !{null}
!43 = distinct !{null}
!44 = distinct !{null}
!45 = distinct !{null}
!46 = distinct !{!46, i1 true, !"_ZNK4pbrt14InternedString8ToStringB5cxx11Ev"}
!47 = distinct !{!47, !46, !"_ZNK4pbrt14InternedString8ToStringB5cxx11Ev: argument 0"}
!48 = distinct !{!48, !81}
!49 = distinct !{!49, !81}
!50 = distinct !{!50, !81}
!51 = !{i32 8, !"PIC Level", i32 2}
!52 = !{i32 7, !"PIE Level", i32 2}
!53 = !{i32 7, !"uwtable", i32 2}
!54 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!55 = !{!"Simple C++ TBAA"}
!56 = !{!"omnipotent char", !55, i64 0}
!57 = !{!"int", !56, i64 0}
!58 = !{!"__libc_errno", !57, i64 0}
!59 = !{!58, !57, i64 0}
!60 = !{!"any pointer", !56, i64 0}
!61 = !{!"p1 _ZTSN4pstd3pmr15memory_resourceE", !60, i64 0}
!62 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !61, i64 0}
!63 = !{!"any p2 pointer", !60, i64 0}
!64 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !63, i64 0}
!65 = !{!"long", !56, i64 0}
!66 = !{!"_ZTSN4pstd6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS8_EEEE", !62, i64 0, !64, i64 8, !65, i64 16, !65, i64 24}
!67 = !{!66, !65, i64 24}
!68 = !{!66, !64, i64 8}
!69 = !{!66, !65, i64 16}
!70 = !{!62, !61, i64 0}
!71 = !{!"vtable pointer", !55, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"_ZTSN4pstd3pmr15memory_resourceE"}
!74 = !{!"p1 _ZTSN4pstd3pmr25monotonic_buffer_resource5blockE", !60, i64 0}
!75 = !{!"_ZTSN4pstd3pmr25monotonic_buffer_resourceE", !73, i64 0, !61, i64 8, !65, i64 16, !74, i64 24, !65, i64 32, !74, i64 40}
!76 = !{!75, !74, i64 40}
!77 = !{!"_ZTSN4pstd3pmr25monotonic_buffer_resource5blockE", !60, i64 0, !65, i64 8, !74, i64 16}
!78 = !{!77, !74, i64 16}
!79 = !{!75, !61, i64 8}
!80 = !{!77, !65, i64 8}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!75, !74, i64 24}
!83 = !{!"p1 omnipotent char", !60, i64 0}
!84 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !83, i64 0}
!85 = !{!84, !83, i64 0}
!86 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !84, i64 0, !65, i64 8, !56, i64 16}
!87 = !{!86, !65, i64 8}
!88 = !{!56, !56, i64 0}
!89 = !{!86, !83, i64 0}
!90 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIPN4pbrt15ParsedParameterEEE", !61, i64 0}
!91 = !{!"p2 _ZTSN4pbrt15ParsedParameterE", !63, i64 0}
!92 = !{!"_ZTSN4pbrt13InlinedVectorIPNS_15ParsedParameterELi8EN4pstd3pmr21polymorphic_allocatorIS2_EEEE", !90, i64 0, !91, i64 8, !56, i64 16, !65, i64 80, !65, i64 88}
!93 = !{!"p1 _ZTSN4pbrt13RGBColorSpaceE", !60, i64 0}
!94 = !{!"_ZTSN4pbrt19ParameterDictionaryE", !92, i64 0, !93, i64 96, !57, i64 104}
!95 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !65, i64 0, !83, i64 8}
!96 = !{!"_ZTSN4pbrt7FileLocE", !95, i64 0, !57, i64 16, !57, i64 20}
!97 = !{!"bool", !56, i64 0}
!98 = !{!"_ZTSN4pbrt12TransformSetE", !56, i64 0}
!99 = !{!"float", !56, i64 0}
!100 = !{!"_ZTSN4pbrt17BasicSceneBuilder13GraphicsStateE", !86, i64 0, !86, i64 32, !57, i64 64, !86, i64 72, !86, i64 104, !94, i64 136, !96, i64 248, !92, i64 272, !92, i64 368, !92, i64 464, !92, i64 560, !92, i64 656, !97, i64 752, !93, i64 760, !98, i64 768, !57, i64 1024, !99, i64 1028, !99, i64 1032}
!101 = !{!100, !57, i64 64}
!102 = !{!61, !61, i64 0}
!103 = !{!92, !91, i64 8}
!104 = !{!96, !57, i64 16}
!105 = !{!96, !57, i64 20}
!106 = !{!93, !93, i64 0}
!107 = !{!99, !99, i64 0}
!108 = !{!100, !57, i64 1024}
!109 = !{!92, !65, i64 88}
!110 = !{!92, !65, i64 80}
!111 = !{!90, !61, i64 0}
!112 = !{!"_ZTSN4pbrt12ParserTargetE", !97, i64 8}
!113 = !{!112, !97, i64 8}
!114 = !{!"p1 _ZTSN4pbrt10BasicSceneE", !60, i64 0}
!115 = !{!"_ZTSN4pbrt17BasicSceneBuilder10BlockStateE", !56, i64 0}
!116 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!117 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !116, i64 0}
!118 = !{!"_ZTSSt14_Rb_tree_color", !56, i64 0}
!119 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !60, i64 0}
!120 = !{!"_ZTSSt18_Rb_tree_node_base", !118, i64 0, !119, i64 8, !119, i64 16, !119, i64 24}
!121 = !{!"_ZTSSt15_Rb_tree_header", !120, i64 0, !65, i64 32}
!122 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt12TransformSetEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !117, i64 0, !121, i64 8}
!123 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4pbrt12TransformSetEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !122, i64 0}
!124 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pbrt12TransformSetESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !123, i64 0}
!125 = !{!"_ZTSN4pbrt12SquareMatrixILi4EEE", !56, i64 0}
!126 = !{!"_ZTSN4pbrt9TransformE", !125, i64 0, !125, i64 64}
!127 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorISt4byteEE", !61, i64 0}
!128 = !{!"_ZTSN4pstd3pmr21polymorphic_allocatorIPKN4pbrt9TransformEEE", !61, i64 0}
!129 = !{!"p2 _ZTSN4pbrt9TransformE", !63, i64 0}
!130 = !{!"_ZTSN4pstd6vectorIPKN4pbrt9TransformENS_3pmr21polymorphic_allocatorIS4_EEEE", !128, i64 0, !129, i64 8, !65, i64 16, !65, i64 24}
!131 = !{!"_ZTSSt22__shared_mutex_pthread", !56, i64 0}
!132 = !{!"_ZTSSt12shared_mutex", !131, i64 0}
!133 = !{!"_ZTSN4pbrt11InternCacheINS_9TransformESt4hashIS1_EEE", !75, i64 0, !127, i64 64, !65, i64 72, !130, i64 80, !132, i64 112}
!134 = !{!"p1 _ZTSN4pbrt17BasicSceneBuilder13GraphicsStateE", !60, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseIN4pbrt17BasicSceneBuilder13GraphicsStateESaIS2_EE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!136 = !{!"_ZTSNSt12_Vector_baseIN4pbrt17BasicSceneBuilder13GraphicsStateESaIS2_EE12_Vector_implE", !135, i64 0}
!137 = !{!"_ZTSSt12_Vector_baseIN4pbrt17BasicSceneBuilder13GraphicsStateESaIS2_EE", !136, i64 0}
!138 = !{!"_ZTSSt6vectorIN4pbrt17BasicSceneBuilder13GraphicsStateESaIS2_EE", !137, i64 0}
!139 = !{!"p1 _ZTSSt4pairIcN4pbrt7FileLocEE", !60, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseISt4pairIcN4pbrt7FileLocEESaIS3_EE17_Vector_impl_dataE", !139, i64 0, !139, i64 8, !139, i64 16}
!141 = !{!"_ZTSNSt12_Vector_baseISt4pairIcN4pbrt7FileLocEESaIS3_EE12_Vector_implE", !140, i64 0}
!142 = !{!"_ZTSSt12_Vector_baseISt4pairIcN4pbrt7FileLocEESaIS3_EE", !141, i64 0}
!143 = !{!"_ZTSSt6vectorISt4pairIcN4pbrt7FileLocEESaIS3_EE", !142, i64 0}
!144 = !{!"p1 _ZTSN4pbrt17BasicSceneBuilder24ActiveInstanceDefinitionE", !60, i64 0}
!145 = !{!"p1 _ZTSN4pbrt16ShapeSceneEntityE", !60, i64 0}
!146 = !{!"_ZTSNSt12_Vector_baseIN4pbrt16ShapeSceneEntityESaIS1_EE17_Vector_impl_dataE", !145, i64 0, !145, i64 8, !145, i64 16}
!147 = !{!"_ZTSNSt12_Vector_baseIN4pbrt16ShapeSceneEntityESaIS1_EE12_Vector_implE", !146, i64 0}
!148 = !{!"_ZTSSt12_Vector_baseIN4pbrt16ShapeSceneEntityESaIS1_EE", !147, i64 0}
!149 = !{!"_ZTSSt6vectorIN4pbrt16ShapeSceneEntityESaIS1_EE", !148, i64 0}
!150 = !{!"p1 _ZTSN4pbrt19InstanceSceneEntityE", !60, i64 0}
!151 = !{!"_ZTSNSt12_Vector_baseIN4pbrt19InstanceSceneEntityESaIS1_EE17_Vector_impl_dataE", !150, i64 0, !150, i64 8, !150, i64 16}
!152 = !{!"_ZTSNSt12_Vector_baseIN4pbrt19InstanceSceneEntityESaIS1_EE12_Vector_implE", !151, i64 0}
!153 = !{!"_ZTSSt12_Vector_baseIN4pbrt19InstanceSceneEntityESaIS1_EE", !152, i64 0}
!154 = !{!"_ZTSSt6vectorIN4pbrt19InstanceSceneEntityESaIS1_EE", !153, i64 0}
!155 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !117, i64 0, !121, i64 8}
!156 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !155, i64 0}
!157 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !156, i64 0}
!158 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !60, i64 0}
!159 = !{!"_ZTSN4pbrt14InternedStringE", !158, i64 0}
!160 = !{!"_ZTSN4pbrt11SceneEntityE", !159, i64 0, !96, i64 8, !94, i64 32}
!161 = !{!"_ZTSN4pbrt17AnimatedTransformE", !126, i64 0, !126, i64 128, !99, i64 256, !99, i64 260, !97, i64 264, !56, i64 268, !56, i64 292, !56, i64 324, !97, i64 452, !56, i64 456, !56, i64 504, !56, i64 552, !56, i64 600, !56, i64 648}
!162 = !{!"_ZTSN4pbrt15CameraTransformE", !161, i64 0, !126, i64 696}
!163 = !{!"_ZTSN4pbrt17CameraSceneEntityE", !160, i64 0, !162, i64 144, !86, i64 968}
!164 = !{!"_ZTSN4pbrt17BasicSceneBuilderE", !112, i64 0, !114, i64 16, !115, i64 24, !100, i64 32, !124, i64 1072, !126, i64 1120, !133, i64 1280, !138, i64 1472, !143, i64 1496, !144, i64 1520, !149, i64 1528, !154, i64 1552, !157, i64 1576, !157, i64 1624, !157, i64 1672, !157, i64 1720, !157, i64 1768, !57, i64 1816, !57, i64 1820, !160, i64 1824, !160, i64 1968, !160, i64 2112, !160, i64 2256, !160, i64 2400, !163, i64 2544}
!165 = !{!164, !114, i64 16}
!166 = !{!164, !115, i64 24}
!167 = !{!121, !118, i64 0}
!168 = !{!121, !119, i64 8}
!169 = !{!121, !119, i64 16}
!170 = !{!121, !119, i64 24}
!171 = !{!121, !65, i64 32}
!172 = !{!75, !65, i64 16}
!173 = !{!127, !61, i64 0}
!174 = !{!133, !65, i64 72}
!175 = !{!130, !65, i64 24}
!176 = !{!130, !129, i64 8}
!177 = !{!"p1 _ZTSN4pbrt9TransformE", !60, i64 0}
!178 = !{!177, !177, i64 0}
!179 = !{!"llvm.loop.isvectorized", i32 1}
!180 = !{!"llvm.loop.unroll.runtime.disable"}
!181 = !{!"branch_weights", i32 4, i32 12}
!182 = !{!"llvm.loop.unroll.disable"}
!183 = !{!130, !65, i64 16}
!184 = !{!128, !61, i64 0}
!185 = !{!161, !99, i64 260}
!186 = !{!161, !97, i64 264}
!187 = !{!158, !158, i64 0}
end_hunk_3
