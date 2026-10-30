Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ImfEnvmap?download=true
inline.NumInlined: 54
inline.NumDeleted: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

%"class.Imath_3_1::Vec2" = type { float, float }
%"class.Imath_3_1::Vec3" = type { float, float, float }
%"class.Imath_3_1::Box" = type { %"class.Imath_3_1::Vec2.0", %"class.Imath_3_1::Vec2.0" }
%"class.Imath_3_1::Vec2.0" = type { i32, i32 }

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap7latLongERKN9Imath_3_14Vec3IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_1::Vec2") align 4 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !9  ; 4 uses
  %i.c = load float, ptr %1, align 4, !tbaa !10   ; 4 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.d)
  %i.f = tail call float @llvm.sqrt.f32(float %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !11 ; 5 uses
  %i.i = tail call noundef float @llvm.fabs.f32(float %i.h)
  %i.j = fcmp olt float %i.f, %i.i
  %i.k = fmul float %i.h, %i.h
  %i.l = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.k)
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.l) ; 3 uses
  %i.n = fcmp olt float %i.m, f0x01000000         ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.n, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef float @_ZNK9Imath_3_14Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %1) #8
  %.pre = load float, ptr %i.g, align 4, !tbaa !11
  br label %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit

bb.d:                                             ; preds = %bb.b
  %i.p = tail call float @llvm.sqrt.f32(float %i.m)
  br label %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit

_ZNK9Imath_3_14Vec3IfE6lengthEv.exit:             ; preds = %bb.c, %bb.d
  %i.q = phi float [ %.pre, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %.0.i = phi float [ %i.o, %bb.c ], [ %i.p, %bb.d ]
  %i.r = fdiv float %i.f, %.0.i
  %i.s = tail call noundef float @acosf(float noundef %i.r) #8, !tbaa !6
  %i.t = fcmp ogt float %i.q, 0.000000e+00
  %i.u = fcmp olt float %i.q, 0.000000e+00
  %i.v = sitofp i1 %i.u to float
  %i.w = select i1 %i.t, float 1.000000e+00, float %i.v
  %i.x = fmul float %i.s, %i.w
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %i.n, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.y = tail call noundef float @_ZNK9Imath_3_14Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %1) #8
  br label %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit18

bb.g:                                             ; preds = %bb.e
  %i.z = tail call float @llvm.sqrt.f32(float %i.m)
  br label %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit18

_ZNK9Imath_3_14Vec3IfE6lengthEv.exit18:           ; preds = %bb.f, %bb.g
  %.0.i17 = phi float [ %i.y, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = fdiv float %i.h, %.0.i17
  %i.ab = tail call noundef float @asinf(float noundef %i.aa) #8, !tbaa !6
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit18, %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit
  %i.ac = phi float [ %i.x, %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit ], [ %i.ab, %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit18 ]
  %i.ad = load float, ptr %i.a, align 4, !tbaa !9 ; 2 uses
  %i.ae = fcmp oeq float %i.ad, 0.000000e+00
  %.pre19 = load float, ptr %1, align 4, !tbaa !10 ; 2 uses
  %i.af = fcmp oeq float %.pre19, 0.000000e+00
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call noundef float @atan2f(float noundef %.pre19, float noundef %i.ad) #8, !tbaa !6
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ah = phi float [ %i.ag, %bb.i ], [ 0.000000e+00, %bb.h ]
  store float %i.ac, ptr %0, align 4, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ah, ptr %i.ai, align 4, !tbaa !15
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap7latLongERKN9Imath_3_13BoxINS1_4Vec2IiEEEERKNS3_IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_1::Vec2") align 4 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19   ; 3 uses
  %i.f = icmp sgt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !15
  %i.i = sitofp i32 %i.e to float
  %i.j = fsub float %i.h, %i.i
  %i.k = sub nsw i32 %i.c, %i.e
  %i.l = sitofp i32 %i.k to float
  %i.m = fdiv float %i.j, %i.l
  %i.n = fadd float %i.m, -5.000000e-01
  %i.o = fmul float %i.n, f0xC0490FDB
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.014 = phi float [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.p = load i32, ptr %i.a, align 4, !tbaa !20   ; 2 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !21     ; 3 uses
  %i.r = icmp sgt i32 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load float, ptr %2, align 4, !tbaa !14
  %i.t = sitofp i32 %i.q to float
  %i.u = fsub float %i.s, %i.t
  %i.v = sub nsw i32 %i.p, %i.q
  %i.w = sitofp i32 %i.v to float
  %i.x = fdiv float %i.u, %i.w
  %i.y = fadd float %i.x, -5.000000e-01
  %i.z = fmul float %i.y, f0xC0C90FDB
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi float [ %i.z, %bb.d ], [ 0.000000e+00, %bb.c ]
  store float %.014, ptr %0, align 4, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %.0, ptr %i.aa, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap13pixelPositionERKN9Imath_3_13BoxINS1_4Vec2IiEEEERKNS3_IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_1::Vec2") align 4 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x float>, ptr %2, align 4, !tbaa !22
  %i.c = fdiv <2 x float> %i.b, <float f0x40490FDB, float f0x40C90FDB>
  %i.d = fsub <2 x float> splat (float 5.000000e-01), %i.c
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = load <2 x i32>, ptr %i.a, align 4, !tbaa !6
  %i.g = load <2 x i32>, ptr %1, align 4, !tbaa !6 ; 2 uses
  %i.h = sub nsw <2 x i32> %i.f, %i.g
  %i.i = sitofp <2 x i32> %i.h to <2 x float>
  %i.j = sitofp <2 x i32> %i.g to <2 x float>
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %i.i, <2 x float> %i.j)
  store <2 x float> %i.k, ptr %0, align 4, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap13pixelPositionERKN9Imath_3_13BoxINS1_4Vec2IiEEEERKNS1_4Vec3IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_1::Vec2") align 4 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !9, !noalias !27 ; 4 uses
  %i.c = load float, ptr %2, align 4, !tbaa !10, !noalias !27 ; 4 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.d)
  %i.f = tail call float @llvm.sqrt.f32(float %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !11, !noalias !27 ; 5 uses
  %i.i = tail call noundef float @llvm.fabs.f32(float %i.h)
  %i.j = fcmp olt float %i.f, %i.i
  %i.k = fmul float %i.h, %i.h
  %i.l = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.k)
  %i.m = tail call noundef float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.l) ; 3 uses
  %i.n = fcmp olt float %i.m, f0x01000000         ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.n, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef float @_ZNK9Imath_3_14Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %2) #8, !noalias !27
  %.pre.i = load float, ptr %i.g, align 4, !tbaa !11, !noalias !27
  br label %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.p = tail call float @llvm.sqrt.f32(float %i.m)
  br label %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i

_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i:           ; preds = %bb.d, %bb.c
  %i.q = phi float [ %.pre.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %.0.i.i = phi float [ %i.o, %bb.c ], [ %i.p, %bb.d ]
  %i.r = fdiv float %i.f, %.0.i.i
  %i.s = tail call noundef float @acosf(float noundef %i.r) #8, !tbaa !6, !noalias !27
  %i.t = fcmp ogt float %i.q, 0.000000e+00
  %i.u = fcmp olt float %i.q, 0.000000e+00
  %i.v = sitofp i1 %i.u to float
  %i.w = select i1 %i.t, float 1.000000e+00, float %i.v
  %i.x = fmul float %i.s, %i.w
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %i.n, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.y = tail call noundef float @_ZNK9Imath_3_14Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %2) #8, !noalias !27
  br label %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit18.i

bb.g:                                             ; preds = %bb.e
  %i.z = tail call float @llvm.sqrt.f32(float %i.m)
  br label %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit18.i

_ZNK9Imath_3_14Vec3IfE6lengthEv.exit18.i:         ; preds = %bb.g, %bb.f
  %.0.i17.i = phi float [ %i.y, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = fdiv float %i.h, %.0.i17.i
  %i.ab = tail call noundef float @asinf(float noundef %i.aa) #8, !tbaa !6, !noalias !27
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit18.i, %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i
  %i.ac = phi float [ %i.x, %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i ], [ %i.ab, %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit18.i ]
  %i.ad = load float, ptr %i.a, align 4, !tbaa !9, !noalias !27 ; 2 uses
  %i.ae = fcmp oeq float %i.ad, 0.000000e+00
  %.pre19.i = load float, ptr %2, align 4, !tbaa !10, !noalias !27 ; 2 uses
  %i.af = fcmp oeq float %.pre19.i, 0.000000e+00
  %or.cond.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap7latLongERKN9Imath_3_14Vec3IfEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call noundef float @atan2f(float noundef %.pre19.i, float noundef %i.ad) #8, !tbaa !6, !noalias !27
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap7latLongERKN9Imath_3_14Vec3IfEE.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap7latLongERKN9Imath_3_14Vec3IfEE.exit: ; preds = %bb.h, %bb.i
  %i.ah = phi float [ %i.ag, %bb.i ], [ 0.000000e+00, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.ai = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.ac, i64 1
  %i.ak = fdiv <2 x float> %i.aj, <float f0x40C90FDB, float f0x40490FDB>
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = fsub <2 x float> splat (float 5.000000e-01), %i.ak
  %i.an = load <2 x i32>, ptr %i.al, align 4, !tbaa !6, !noalias !28
  %i.ao = load <2 x i32>, ptr %1, align 4, !tbaa !6, !noalias !28 ; 2 uses
  %i.ap = sub nsw <2 x i32> %i.an, %i.ao
  %i.aq = sitofp <2 x i32> %i.ap to <2 x float>
  %i.ar = sitofp <2 x i32> %i.ao to <2 x float>
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.aq, <2 x float> %i.ar)
  store <2 x float> %i.as, ptr %0, align 4, !tbaa !22, !alias.scope !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap9directionERKN9Imath_3_13BoxINS1_4Vec2IiEEEERKNS3_IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_1::Vec3") align 4 captures(none) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18, !noalias !31 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19, !noalias !31 ; 3 uses
  %i.f = icmp sgt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !15, !noalias !31
  %i.i = sitofp i32 %i.e to float
  %i.j = fsub float %i.h, %i.i
  %i.k = sub nsw i32 %i.c, %i.e
  %i.l = sitofp i32 %i.k to float
  %i.m = fdiv float %i.j, %i.l
  %i.n = fadd float %i.m, -5.000000e-01
  %i.o = fmul float %i.n, f0xC0490FDB
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014.i = phi float [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !20, !noalias !31 ; 2 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !21, !noalias !31 ; 3 uses
  %i.r = icmp sgt i32 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap7latLongERKN9Imath_3_13BoxINS1_4Vec2IiEEEERKNS3_IfEE.exit

bb.d:                                             ; preds = %bb.c
  %i.s = load float, ptr %2, align 4, !tbaa !14, !noalias !31
  %i.t = sitofp i32 %i.q to float
  %i.u = fsub float %i.s, %i.t
  %i.v = sub nsw i32 %i.p, %i.q
  %i.w = sitofp i32 %i.v to float
  %i.x = fdiv float %i.u, %i.w
  %i.y = fadd float %i.x, -5.000000e-01
  %i.z = fmul float %i.y, f0xC0C90FDB
  br label %_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap7latLongERKN9Imath_3_13BoxINS1_4Vec2IiEEEERKNS3_IfEE.exit

_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap7latLongERKN9Imath_3_13BoxINS1_4Vec2IiEEEERKNS3_IfEE.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi float [ %i.z, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.aa = tail call noundef float @sinf(float noundef %.0.i) #8, !tbaa !6
  %i.ab = tail call noundef float @cosf(float noundef %.014.i) #8, !tbaa !6
  %i.ac = fmul float %i.aa, %i.ab
  %i.ad = tail call noundef float @sinf(float noundef %.014.i) #8, !tbaa !6
  %i.ae = tail call noundef float @cosf(float noundef %.0.i) #8, !tbaa !6
  %i.af = tail call noundef float @cosf(float noundef %.014.i) #8, !tbaa !6
  %i.ag = fmul float %i.ae, %i.af
  store float %i.ac, ptr %0, align 4, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ad, ptr %i.ah, align 4, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.ag, ptr %i.ai, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -2147483647, 357913942) i32 @_ZN27OpenImageIO_v3_1_Imf__3_3_57CubeMap10sizeOfFaceERKN9Imath_3_13BoxINS1_4Vec2IiEEEE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !6
  %i.c = load <2 x i32>, ptr %0, align 4, !tbaa !6
  %i.d = add <2 x i32> %i.b, splat (i32 1)
  %i.e = sub <2 x i32> %i.d, %i.c                 ; 2 uses
  %i.f = extractelement <2 x i32> %i.e, i64 1
  %i.g = sdiv i32 %i.f, 6
  %i.h = extractelement <2 x i32> %i.e, i64 0
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.h)
  ret i32 %.sroa.speculated
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_57CubeMap17dataWindowForFaceENS_11CubeMapFaceERKN9Imath_3_13BoxINS2_4Vec2IiEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_1::Box") align 4 captures(none) initializes((0, 16)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !6
  %i.c = load <2 x i32>, ptr %2, align 4, !tbaa !6
  %i.d = add <2 x i32> %i.b, splat (i32 1)
  %i.e = sub <2 x i32> %i.d, %i.c                 ; 2 uses
  %i.f = extractelement <2 x i32> %i.e, i64 1
  %i.g = sdiv i32 %i.f, 6
  %i.h = extractelement <2 x i32> %i.e, i64 0
  %.sroa.speculated.i = tail call noundef range(i32 -2147483647, 357913942) i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %0, align 4, !tbaa !21
  %i.l = mul nsw i32 %.sroa.speculated.i, %1      ; 2 uses
  store i32 %i.l, ptr %i.i, align 4, !tbaa !19
  %i.m = add nsw i32 %.sroa.speculated.i, -1      ; 2 uses
  store i32 %i.m, ptr %i.j, align 4, !tbaa !20
  %i.n = add i32 %i.m, %i.l
  store i32 %i.n, ptr %i.k, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_57CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_13BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_1::Vec2") align 4 captures(none) initializes((0, 8)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef readonly captures(none) dead_on_return %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !6, !noalias !34
  %i.c = load <2 x i32>, ptr %2, align 4, !tbaa !6, !noalias !34
  %i.d = add <2 x i32> %i.b, splat (i32 1)
  %i.e = sub <2 x i32> %i.d, %i.c                 ; 2 uses
  %i.f = extractelement <2 x i32> %i.e, i64 1
  %i.g = sdiv i32 %i.f, 6
  %i.h = extractelement <2 x i32> %i.e, i64 0
  %.sroa.speculated.i.i = tail call noundef range(i32 -2147483647, 357913942) i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 2 uses
  %i.i = mul nsw i32 %.sroa.speculated.i.i, %1    ; 2 uses
  %i.j = add nsw i32 %.sroa.speculated.i.i, -1    ; 3 uses
  %i.k = add i32 %i.j, %i.i                       ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !22
  switch i32 %1, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !15
  %i.o = fadd float %i.n, 0.000000e+00
  store float %i.o, ptr %0, align 4, !tbaa !14
  %i.p = sitofp i32 %i.k to float
  %i.q = load float, ptr %3, align 4, !tbaa !14
  %i.r = fsub float %i.p, %i.q
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.s = sitofp i32 %i.j to float
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !15
  %i.v = fsub float %i.s, %i.u
  store float %i.v, ptr %0, align 4, !tbaa !14
  %i.w = sitofp i32 %i.k to float
  %i.x = load float, ptr %3, align 4, !tbaa !14
  %i.y = fsub float %i.w, %i.x
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.z = load float, ptr %3, align 4, !tbaa !14
  %i.aa = fadd float %i.z, 0.000000e+00
  store float %i.aa, ptr %0, align 4, !tbaa !14
  %i.ab = sitofp i32 %i.k to float
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !15
  %i.ae = fsub float %i.ab, %i.ad
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.af = load float, ptr %3, align 4, !tbaa !14
  %i.ag = fadd float %i.af, 0.000000e+00
  store float %i.ag, ptr %0, align 4, !tbaa !14
  %i.ah = sitofp i32 %i.i to float
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
end_hunk_0
begin_hunk_1_@_ZN27OpenImageIO_v3_1_Imf__3_3_57CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_13BoxINS2_4Vec2IiEEEENS4_IfEE:bb.a
  %i.at = fadd float %i.as, 0.000000e+00
  store float %i.at, ptr %0, align 4, !tbaa !14
  %i.au = sitofp i32 %i.k to float
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !15
  %i.ax = fsub float %i.au, %i.aw
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink = phi float [ %i.ax, %bb.g ], [ %i.ar, %bb.f ], [ %i.ak, %bb.e ], [ %i.ae, %bb.d ], [ %i.y, %bb.c ], [ %i.r, %bb.b ]
  store float %.sink, ptr %i.l, align 4, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_57CubeMap20faceAndPixelPositionERKN9Imath_3_14Vec3IfEERKNS1_3BoxINS1_4Vec2IiEEEERNS_11CubeMapFaceERNS7_IfEE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !6
  %i.c = load <2 x i32>, ptr %1, align 4, !tbaa !6
  %i.d = add <2 x i32> %i.b, splat (i32 1)
  %i.e = sub <2 x i32> %i.d, %i.c                 ; 2 uses
  %i.f = extractelement <2 x i32> %i.e, i64 1
  %i.g = sdiv i32 %i.f, 6
  %i.h = extractelement <2 x i32> %i.e, i64 0
  %.sroa.speculated.i = tail call noundef range(i32 -2147483647, 357913942) i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 2 uses
  %i.i = load <2 x float>, ptr %0, align 4, !tbaa !22 ; 6 uses
  %i.j = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.i) ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !9  ; 4 uses
  %i.m = tail call noundef float @llvm.fabs.f32(float %i.l) ; 3 uses
  %i.n = extractelement <2 x float> %i.j, i64 0   ; 2 uses
  %i.o = extractelement <2 x float> %i.j, i64 1   ; 2 uses
  %i.p = fcmp ult float %i.n, %i.o
  %i.q = fcmp ult float %i.n, %i.m
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = extractelement <2 x float> %i.i, i64 0   ; 2 uses
  %i.s = fcmp oeq float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %2, align 4, !tbaa !36
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !22
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.t = add nsw i32 %.sroa.speculated.i, -1
  %i.u = sitofp i32 %i.t to float
  %i.v = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.w = insertelement <2 x float> %i.v, float %i.l, i64 1
  %i.x = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fdiv <2 x float> %i.w, %i.x
  %i.z = fadd <2 x float> %i.y, splat (float 1.000000e+00)
  %i.aa = fmul <2 x float> %i.z, splat (float 5.000000e-01)
  %i.ab = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x float> %i.aa, %i.ac
  store <2 x float> %i.ad, ptr %3, align 4, !tbaa !22
  %i.ae = fcmp ogt float %i.r, 0.000000e+00
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !36
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  store i32 1, ptr %2, align 4, !tbaa !36
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.af = fcmp ult float %i.o, %i.m
  %i.ag = add nsw i32 %.sroa.speculated.i, -1
  %i.ah = sitofp i32 %i.ag to float               ; 2 uses
  br i1 %i.af, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = insertelement <2 x float> %i.i, float %i.l, i64 1
  %i.aj = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ak = fdiv <2 x float> %i.ai, %i.aj
  %i.al = fadd <2 x float> %i.ak, splat (float 1.000000e+00)
  %i.am = fmul <2 x float> %i.al, splat (float 5.000000e-01)
  %i.an = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.am, %i.ao
  store <2 x float> %i.ap, ptr %3, align 4, !tbaa !22
  %i.aq = extractelement <2 x float> %i.i, i64 1
  %i.ar = fcmp ogt float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 2, ptr %2, align 4, !tbaa !36
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  store i32 3, ptr %2, align 4, !tbaa !36
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %i.as = insertelement <2 x float> poison, float %i.m, i64 0
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fdiv <2 x float> %i.i, %i.at
  %i.av = fadd <2 x float> %i.au, splat (float 1.000000e+00)
  %i.aw = fmul <2 x float> %i.av, splat (float 5.000000e-01)
  %i.ax = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ay = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x float> %i.aw, %i.ay
  store <2 x float> %i.az, ptr %3, align 4, !tbaa !22
  %i.ba = fcmp ogt float %i.l, 0.000000e+00
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 4, ptr %2, align 4, !tbaa !36
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i32 5, ptr %2, align 4, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.e, %bb.l, %bb.m, %bb.i, %bb.j, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_57CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_13BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_1::Vec3") align 4 captures(none) initializes((0, 12)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !6
  %i.c = load <2 x i32>, ptr %2, align 4, !tbaa !6
  %i.d = add <2 x i32> %i.b, splat (i32 1)
  %i.e = sub <2 x i32> %i.d, %i.c                 ; 2 uses
  %i.f = extractelement <2 x i32> %i.e, i64 1
  %i.g = sdiv i32 %i.f, 6
  %i.h = extractelement <2 x i32> %i.e, i64 0
  %.sroa.speculated.i = tail call noundef range(i32 -2147483647, 357913942) i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 2 uses
  %i.i = icmp sgt i32 %.sroa.speculated.i, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %.sroa.speculated.i, -1
  %i.k = uitofp nneg i32 %i.j to float
  %i.l = load <2 x float>, ptr %3, align 4, !tbaa !22
  %i.m = insertelement <2 x float> poison, float %i.k, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x float> %i.l, %i.n
  %i.p = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> splat (float 2.000000e+00), <2 x float> splat (float -1.000000e+00))
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi <2 x float> [ %i.p, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !9
  %i.t = extractelement <2 x float> %i.q, i64 0   ; 5 uses
  %i.u = extractelement <2 x float> %i.q, i64 1   ; 5 uses
  switch i32 %1, label %bb.h [
    i32 0, label %.sink.split
    i32 1, label %.sink.split.sink.split
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  br label %.sink.split.sink.split

bb.e:                                             ; preds = %bb.c
  br label %.sink.split.sink.split

bb.f:                                             ; preds = %bb.c
  br label %.sink.split.sink.split

bb.g:                                             ; preds = %bb.c
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.c, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink20 = phi float [ %i.t, %bb.g ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.f ], [ -1.000000e+00, %bb.c ]
  %.sroa.10.0.sink.ph = phi float [ %i.u, %bb.g ], [ 1.000000e+00, %bb.d ], [ -1.000000e+00, %bb.e ], [ %i.u, %bb.f ], [ %i.t, %bb.c ]
  %.sink.ph = phi float [ -1.000000e+00, %bb.g ], [ %i.u, %bb.d ], [ %i.u, %bb.e ], [ 1.000000e+00, %bb.f ], [ %i.u, %bb.c ]
  store float %.sink20, ptr %0, align 4, !tbaa !10
  %i.v = insertelement <2 x float> poison, float %.sroa.10.0.sink.ph, i64 0
  %i.w = insertelement <2 x float> %i.v, float %.sink.ph, i64 1
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.c
  %i.x = phi <2 x float> [ %i.q, %bb.c ], [ %i.w, %.sink.split.sink.split ]
  store <2 x float> %i.x, ptr %i.r, align 4, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @asinf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK9Imath_3_14Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.b = fcmp ult float %i.a, 0.000000e+00
  %i.c = fneg float %i.a
  %i.d = select i1 %i.b, float %i.c, float %i.a   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !22 ; 3 uses
  %i.g = fcmp ult <2 x float> %i.f, zeroinitializer
  %i.h = fneg <2 x float> %i.f
  %i.i = select <2 x i1> %i.g, <2 x float> %i.h, <2 x float> %i.f ; 3 uses
  %i.j = extractelement <2 x float> %i.i, i64 0   ; 2 uses
  %i.k = fcmp olt float %i.d, %i.j
  %.0 = select i1 %i.k, float %i.j, float %i.d    ; 2 uses
  %i.l = extractelement <2 x float> %i.i, i64 1   ; 2 uses
  %i.m = fcmp olt float %.0, %i.l
  %.1 = select i1 %i.m, float %i.l, float %.0     ; 4 uses
  %i.n = fcmp oeq float %.1, 0.000000e+00
  br i1 %i.n, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.o = fdiv float %i.d, %.1                     ; 2 uses
  %i.p = insertelement <2 x float> poison, float %.1, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x float> %i.i, %i.q              ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.r, %i.r
  %i.s = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.t = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.s)
  %i.u = extractelement <2 x float> %i.r, i64 1   ; 2 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.t)
  %i.w = tail call float @llvm.sqrt.f32(float %i.v)
  %i.x = fmul float %.1, %i.w
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.023 = phi float [ %i.x, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.023
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"float", !4, i64 0}
!8 = !{!"_ZTSN9Imath_3_14Vec3IfEE", !7, i64 0, !7, i64 4, !7, i64 8}
!9 = !{!8, !7, i64 8}
!10 = !{!8, !7, i64 0}
!11 = !{!8, !7, i64 4}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!"_ZTSN9Imath_3_14Vec2IfEE", !7, i64 0, !7, i64 4}
!14 = !{!13, !7, i64 0}
!15 = !{!13, !7, i64 4}
!16 = !{!"_ZTSN9Imath_3_14Vec2IiEE", !5, i64 0, !5, i64 4}
!17 = !{!"_ZTSN9Imath_3_13BoxINS_4Vec2IiEEEE", !16, i64 0, !16, i64 8}
!18 = !{!17, !5, i64 12}
!19 = !{!17, !5, i64 4}
!20 = !{!17, !5, i64 8}
!21 = !{!17, !5, i64 0}
!22 = !{!7, !7, i64 0}
!23 = distinct !{!23, i1 true, !"_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap7latLongERKN9Imath_3_14Vec3IfEE"}
!24 = distinct !{!24, !23, !"_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap7latLongERKN9Imath_3_14Vec3IfEE: argument 0"}
!25 = distinct !{!25, i1 true, !"_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap13pixelPositionERKN9Imath_3_13BoxINS1_4Vec2IiEEEERKNS3_IfEE"}
!26 = distinct !{!26, !25, !"_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap13pixelPositionERKN9Imath_3_13BoxINS1_4Vec2IiEEEERKNS3_IfEE: argument 0"}
!27 = !{!24}
!28 = !{!26}
!29 = distinct !{!29, i1 true, !"_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap7latLongERKN9Imath_3_13BoxINS1_4Vec2IiEEEERKNS3_IfEE"}
!30 = distinct !{!30, !29, !"_ZN27OpenImageIO_v3_1_Imf__3_3_510LatLongMap7latLongERKN9Imath_3_13BoxINS1_4Vec2IiEEEERKNS3_IfEE: argument 0"}
!31 = !{!30}
!32 = distinct !{!32, i1 true, !"_ZN27OpenImageIO_v3_1_Imf__3_3_57CubeMap17dataWindowForFaceENS_11CubeMapFaceERKN9Imath_3_13BoxINS2_4Vec2IiEEEE"}
!33 = distinct !{!33, !32, !"_ZN27OpenImageIO_v3_1_Imf__3_3_57CubeMap17dataWindowForFaceENS_11CubeMapFaceERKN9Imath_3_13BoxINS2_4Vec2IiEEEE: argument 0"}
!34 = !{!33}
!35 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_511CubeMapFaceE", !4, i64 0}
!36 = !{!35, !35, i64 0}
end_hunk_1
