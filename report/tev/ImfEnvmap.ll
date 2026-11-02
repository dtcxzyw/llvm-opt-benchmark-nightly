Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/ImfEnvmap?download=true
inline.NumInlined: 59
inline.NumDeleted: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Imath_3_2::Vec2" = type { float, float }
%"class.Imath_3_2::Vec3" = type { float, float, float }
%"class.Imath_3_2::Box" = type { %"class.Imath_3_2::Vec2.0", %"class.Imath_3_2::Vec2.0" }
%"class.Imath_3_2::Vec2.0" = type { i32, i32 }

$_ZNK9Imath_3_24Vec3IfE10lengthTinyEv = comdat any

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7Imf_3_410LatLongMap7latLongERKN9Imath_3_24Vec3IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_2::Vec2") align 4 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !10 ; 4 uses
  %i.c = load float, ptr %1, align 4, !tbaa !11   ; 4 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.d)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.e) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !12 ; 5 uses
  %i.h = tail call noundef float @llvm.fabs.f32(float %i.g)
  %i.i = fcmp olt float %sqrt, %i.h
  %i.j = fmul float %i.g, %i.g
  %i.k = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.j)
  %i.l = tail call noundef float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.k) ; 3 uses
  %i.m = fcmp olt float %i.l, f0x01000000         ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %1) #9
  %.pre = load float, ptr %i.f, align 4, !tbaa !12
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit

bb.d:                                             ; preds = %bb.b
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.l)
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit:             ; preds = %bb.c, %bb.d
  %i.o = phi float [ %.pre, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %.0.i = phi float [ %i.n, %bb.c ], [ %sqrt.i, %bb.d ]
  %i.p = fdiv float %sqrt, %.0.i
  %i.q = tail call noundef float @acosf(float noundef %i.p) #9
  %i.r = fcmp ogt float %i.o, 0.000000e+00
  %i.s = fcmp olt float %i.o, 0.000000e+00
  %i.t = sitofp i1 %i.s to float
  %i.u = select i1 %i.r, float 1.000000e+00, float %i.t
  %i.v = fmul float %i.q, %i.u
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.w = tail call noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %1) #9
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit19

bb.g:                                             ; preds = %bb.e
  %sqrt.i17 = tail call float @llvm.sqrt.f32(float %i.l)
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit19

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit19:           ; preds = %bb.f, %bb.g
  %.0.i18 = phi float [ %i.w, %bb.f ], [ %sqrt.i17, %bb.g ]
  %i.x = fdiv float %i.g, %.0.i18
  %i.y = tail call noundef float @asinf(float noundef %i.x) #9
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit19, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit
  %i.z = phi float [ %i.v, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit ], [ %i.y, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit19 ]
  %i.aa = load float, ptr %i.a, align 4, !tbaa !10 ; 2 uses
  %i.ab = fcmp oeq float %i.aa, 0.000000e+00
  %.pre20 = load float, ptr %1, align 4, !tbaa !11 ; 2 uses
  %i.ac = fcmp oeq float %.pre20, 0.000000e+00
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call noundef float @atan2f(float noundef %.pre20, float noundef %i.aa) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ae = phi float [ %i.ad, %bb.i ], [ 0.000000e+00, %bb.h ]
  store float %i.z, ptr %0, align 4, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.ae, ptr %i.af, align 4, !tbaa !16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7Imf_3_410LatLongMap7latLongERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS3_IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_2::Vec2") align 4 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20   ; 3 uses
  %i.f = icmp sgt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !16
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
  %i.p = load i32, ptr %i.a, align 4, !tbaa !21   ; 2 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !22     ; 3 uses
  %i.r = icmp sgt i32 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load float, ptr %2, align 4, !tbaa !15
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
  store float %.014, ptr %0, align 4, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %.0, ptr %i.aa, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7Imf_3_410LatLongMap13pixelPositionERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS3_IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_2::Vec2") align 4 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x float>, ptr %2, align 4, !tbaa !23
  %i.c = fdiv <2 x float> %i.b, <float f0x40490FDB, float f0x40C90FDB>
  %i.d = fsub <2 x float> splat (float 5.000000e-01), %i.c
  %i.e = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.f = load <2 x i32>, ptr %i.a, align 4, !tbaa !24
  %i.g = load <2 x i32>, ptr %1, align 4, !tbaa !24 ; 2 uses
  %i.h = sub nsw <2 x i32> %i.f, %i.g
  %i.i = sitofp <2 x i32> %i.h to <2 x float>
  %i.j = sitofp <2 x i32> %i.g to <2 x float>
  %i.k = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %i.i, <2 x float> %i.j)
  store <2 x float> %i.k, ptr %0, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7Imf_3_410LatLongMap13pixelPositionERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS1_4Vec3IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_2::Vec2") align 4 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !10, !noalias !29 ; 4 uses
  %i.c = load float, ptr %2, align 4, !tbaa !11, !noalias !29 ; 4 uses
  %i.d = fmul float %i.c, %i.c
  %i.e = tail call float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.d)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.e) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !12, !noalias !29 ; 5 uses
  %i.h = tail call noundef float @llvm.fabs.f32(float %i.g)
  %i.i = fcmp olt float %sqrt.i, %i.h
  %i.j = fmul float %i.g, %i.g
  %i.k = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.j)
  %i.l = tail call noundef float @llvm.fmuladd.f32(float %i.b, float %i.b, float %i.k) ; 3 uses
  %i.m = fcmp olt float %i.l, f0x01000000         ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %2) #9, !noalias !29
  %.pre.i = load float, ptr %i.f, align 4, !tbaa !12, !noalias !29
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i

bb.d:                                             ; preds = %bb.b
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.l)
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i:           ; preds = %bb.d, %bb.c
  %i.o = phi float [ %.pre.i, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %.0.i.i = phi float [ %i.n, %bb.c ], [ %sqrt.i.i, %bb.d ]
  %i.p = fdiv float %sqrt.i, %.0.i.i
  %i.q = tail call noundef float @acosf(float noundef %i.p) #9, !noalias !29
  %i.r = fcmp ogt float %i.o, 0.000000e+00
  %i.s = fcmp olt float %i.o, 0.000000e+00
  %i.t = sitofp i1 %i.s to float
  %i.u = select i1 %i.r, float 1.000000e+00, float %i.t
  %i.v = fmul float %i.q, %i.u
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.f, label %bb.g, !prof !13

bb.f:                                             ; preds = %bb.e
  %i.w = tail call noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %2) #9, !noalias !29
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit19.i

bb.g:                                             ; preds = %bb.e
  %sqrt.i17.i = tail call float @llvm.sqrt.f32(float %i.l)
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit19.i

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit19.i:         ; preds = %bb.g, %bb.f
  %.0.i18.i = phi float [ %i.w, %bb.f ], [ %sqrt.i17.i, %bb.g ]
  %i.x = fdiv float %i.g, %.0.i18.i
  %i.y = tail call noundef float @asinf(float noundef %i.x) #9, !noalias !29
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit19.i, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i
  %i.z = phi float [ %i.v, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i ], [ %i.y, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit19.i ]
  %i.aa = load float, ptr %i.a, align 4, !tbaa !10, !noalias !29 ; 2 uses
  %i.ab = fcmp oeq float %i.aa, 0.000000e+00
  %.pre20.i = load float, ptr %2, align 4, !tbaa !11, !noalias !29 ; 2 uses
  %i.ac = fcmp oeq float %.pre20.i, 0.000000e+00
  %or.cond.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond.i, label %_ZN7Imf_3_410LatLongMap7latLongERKN9Imath_3_24Vec3IfEE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call noundef float @atan2f(float noundef %.pre20.i, float noundef %i.aa) #9, !noalias !29
  br label %_ZN7Imf_3_410LatLongMap7latLongERKN9Imath_3_24Vec3IfEE.exit

_ZN7Imf_3_410LatLongMap7latLongERKN9Imath_3_24Vec3IfEE.exit: ; preds = %bb.h, %bb.i
  %i.ae = phi float [ %i.ad, %bb.i ], [ 0.000000e+00, %bb.h ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.af = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.z, i64 1
  %i.ah = fdiv <2 x float> %i.ag, <float f0x40C90FDB, float f0x40490FDB>
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = fsub <2 x float> splat (float 5.000000e-01), %i.ah
  %i.ak = load <2 x i32>, ptr %i.ai, align 4, !tbaa !24, !noalias !30
  %i.al = load <2 x i32>, ptr %1, align 4, !tbaa !24, !noalias !30 ; 2 uses
  %i.am = sub nsw <2 x i32> %i.ak, %i.al
  %i.an = sitofp <2 x i32> %i.am to <2 x float>
  %i.ao = sitofp <2 x i32> %i.al to <2 x float>
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.an, <2 x float> %i.ao)
  store <2 x float> %i.ap, ptr %0, align 4, !tbaa !23, !alias.scope !30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @_ZN7Imf_3_410LatLongMap9directionERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS3_IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_2::Vec3") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2) local_unnamed_addr #3 {
bb.a:
  %sincos.cos = alloca float, align 4             ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !19, !noalias !33 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20, !noalias !33 ; 3 uses
  %i.f = icmp sgt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !16, !noalias !33
  %i.i = sitofp i32 %i.e to float
  %i.j = fsub float %i.h, %i.i
  %i.k = sub nsw i32 %i.c, %i.e
  %i.l = sitofp i32 %i.k to float
  %i.m = fdiv float %i.j, %i.l
  %i.n = fadd float %i.m, -5.000000e-01
  %i.o = fmul float %i.n, f0xC0490FDB
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014.i = phi float [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !21, !noalias !33 ; 2 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !22, !noalias !33 ; 3 uses
  %i.r = icmp sgt i32 %i.p, %i.q
  br i1 %i.r, label %bb.d, label %_ZN7Imf_3_410LatLongMap7latLongERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS3_IfEE.exit

bb.d:                                             ; preds = %bb.c
  %i.s = load float, ptr %2, align 4, !tbaa !15, !noalias !33
  %i.t = sitofp i32 %i.q to float
  %i.u = fsub float %i.s, %i.t
  %i.v = sub nsw i32 %i.p, %i.q
  %i.w = sitofp i32 %i.v to float
  %i.x = fdiv float %i.u, %i.w
  %i.y = fadd float %i.x, -5.000000e-01
  %i.z = fmul float %i.y, f0xC0C90FDB
  br label %_ZN7Imf_3_410LatLongMap7latLongERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS3_IfEE.exit

_ZN7Imf_3_410LatLongMap7latLongERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS3_IfEE.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi float [ %i.z, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %i.aa = tail call noundef float @sinf(float noundef %.0.i) #9
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @sincosf(float %.014.i, ptr nonnull %3, ptr nonnull %sincos.cos)
  %cos = load float, ptr %sincos.cos, align 4
  %4 = fmul float %i.aa, %cos
  %5 = call noundef float @cosf(float noundef %.0.i) #9
  %6 = call noundef float @cosf(float noundef %.014.i) #9
  %7 = fmul float %5, %6
  store float %4, ptr %0, align 4, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %7, ptr %i.ab, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -2147483647, 357913942) i32 @_ZN7Imf_3_47CubeMap10sizeOfFaceERKN9Imath_3_23BoxINS1_4Vec2IiEEEE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !24
  %i.c = load <2 x i32>, ptr %0, align 4, !tbaa !24
  %i.d = add <2 x i32> %i.b, splat (i32 1)
  %i.e = sub <2 x i32> %i.d, %i.c                 ; 2 uses
  %i.f = extractelement <2 x i32> %i.e, i64 1
  %i.g = sdiv i32 %i.f, 6
  %i.h = extractelement <2 x i32> %i.e, i64 0
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.h)
  ret i32 %.sroa.speculated
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7Imf_3_47CubeMap17dataWindowForFaceENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_2::Box") align 4 captures(none) initializes((0, 16)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !24
  %i.c = load <2 x i32>, ptr %2, align 4, !tbaa !24
  %i.d = add <2 x i32> %i.b, splat (i32 1)
  %i.e = sub <2 x i32> %i.d, %i.c                 ; 2 uses
  %i.f = extractelement <2 x i32> %i.e, i64 1
  %i.g = sdiv i32 %i.f, 6
  %i.h = extractelement <2 x i32> %i.e, i64 0
  %.sroa.speculated.i = tail call noundef range(i32 -2147483647, 357913942) i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %0, align 4, !tbaa !22
  %i.l = mul nsw i32 %.sroa.speculated.i, %1      ; 2 uses
  store i32 %i.l, ptr %i.i, align 4, !tbaa !20
  %i.m = add nsw i32 %.sroa.speculated.i, -1      ; 2 uses
  store i32 %i.m, ptr %i.j, align 4, !tbaa !21
  %i.n = add i32 %i.m, %i.l
  store i32 %i.n, ptr %i.k, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_2::Vec2") align 4 captures(none) initializes((0, 8)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(8) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !24, !noalias !36
  %i.c = load <2 x i32>, ptr %2, align 4, !tbaa !24, !noalias !36
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
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !23
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
  %i.n = load float, ptr %i.m, align 4, !tbaa !16
  %i.o = fadd float %i.n, 0.000000e+00
  store float %i.o, ptr %0, align 4, !tbaa !15
  %i.p = sitofp i32 %i.k to float
  %i.q = load float, ptr %3, align 4, !tbaa !15
  %i.r = fsub float %i.p, %i.q
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.s = sitofp i32 %i.j to float
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !16
  %i.v = fsub float %i.s, %i.u
  store float %i.v, ptr %0, align 4, !tbaa !15
  %i.w = sitofp i32 %i.k to float
  %i.x = load float, ptr %3, align 4, !tbaa !15
  %i.y = fsub float %i.w, %i.x
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.z = load float, ptr %3, align 4, !tbaa !15
  %i.aa = fadd float %i.z, 0.000000e+00
  store float %i.aa, ptr %0, align 4, !tbaa !15
  %i.ab = sitofp i32 %i.k to float
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !16
  %i.ae = fsub float %i.ab, %i.ad
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.af = load float, ptr %3, align 4, !tbaa !15
  %i.ag = fadd float %i.af, 0.000000e+00
  store float %i.ag, ptr %0, align 4, !tbaa !15
  %i.ah = sitofp i32 %i.i to float
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !16
  %i.ak = fadd float %i.aj, %i.ah
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.al = sitofp i32 %i.j to float
  %i.am = load float, ptr %3, align 4, !tbaa !15
  %i.an = fsub float %i.al, %i.am
  store float %i.an, ptr %0, align 4, !tbaa !15
  %i.ao = sitofp i32 %i.k to float
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !16
  %i.ar = fsub float %i.ao, %i.aq
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %i.as = load float, ptr %3, align 4, !tbaa !15
  %i.at = fadd float %i.as, 0.000000e+00
  store float %i.at, ptr %0, align 4, !tbaa !15
  %i.au = sitofp i32 %i.k to float
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aw = load float, ptr %i.av, align 4, !tbaa !16
  %i.ax = fsub float %i.au, %i.aw
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink = phi float [ %i.ax, %bb.g ], [ %i.ar, %bb.f ], [ %i.ak, %bb.e ], [ %i.ae, %bb.d ], [ %i.y, %bb.c ], [ %i.r, %bb.b ]
  store float %.sink, ptr %i.l, align 4, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7Imf_3_47CubeMap20faceAndPixelPositionERKN9Imath_3_24Vec3IfEERKNS1_3BoxINS1_4Vec2IiEEEERNS_11CubeMapFaceERNS7_IfEE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !24
  %i.c = load <2 x i32>, ptr %1, align 4, !tbaa !24
  %i.d = add <2 x i32> %i.b, splat (i32 1)
  %i.e = sub <2 x i32> %i.d, %i.c                 ; 2 uses
  %i.f = extractelement <2 x i32> %i.e, i64 1
  %i.g = sdiv i32 %i.f, 6
  %i.h = extractelement <2 x i32> %i.e, i64 0
  %.sroa.speculated.i = tail call noundef range(i32 -2147483647, 357913942) i32 @llvm.smin.i32(i32 %i.g, i32 %i.h) ; 2 uses
  %i.i = load <2 x float>, ptr %0, align 4, !tbaa !23 ; 6 uses
  %i.j = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.i) ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !10 ; 4 uses
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
  store i32 0, ptr %2, align 4, !tbaa !38
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !23
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
  store <2 x float> %i.ad, ptr %3, align 4, !tbaa !23
  %i.ae = fcmp ogt float %i.r, 0.000000e+00
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %2, align 4, !tbaa !38
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  store i32 1, ptr %2, align 4, !tbaa !38
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
  store <2 x float> %i.ap, ptr %3, align 4, !tbaa !23
  %i.aq = extractelement <2 x float> %i.i, i64 1
  %i.ar = fcmp ogt float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 2, ptr %2, align 4, !tbaa !38
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  store i32 3, ptr %2, align 4, !tbaa !38
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
  store <2 x float> %i.az, ptr %3, align 4, !tbaa !23
  %i.ba = fcmp ogt float %i.l, 0.000000e+00
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 4, ptr %2, align 4, !tbaa !38
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store i32 5, ptr %2, align 4, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.e, %bb.l, %bb.m, %bb.i, %bb.j, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.Imath_3_2::Vec3") align 4 captures(none) initializes((0, 12)) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load <2 x i32>, ptr %i.a, align 4, !tbaa !24
  %i.c = load <2 x i32>, ptr %2, align 4, !tbaa !24
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
  %i.l = load <2 x float>, ptr %3, align 4, !tbaa !23
  %i.m = insertelement <2 x float> poison, float %i.k, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x float> %i.l, %i.n
  %i.p = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> splat (float 2.000000e+00), <2 x float> splat (float -1.000000e+00))
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi <2 x float> [ %i.p, %bb.b ], [ zeroinitializer, %bb.a ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %i.s, align 4, !tbaa !10
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
  store float %.sink20, ptr %0, align 4, !tbaa !11
  %i.v = insertelement <2 x float> poison, float %.sroa.10.0.sink.ph, i64 0
  %i.w = insertelement <2 x float> %i.v, float %.sink.ph, i64 1
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.c
  %i.x = phi <2 x float> [ %i.q, %bb.c ], [ %i.w, %.sink.split.sink.split ]
  store <2 x float> %i.x, ptr %i.r, align 4, !tbaa !23
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
define linkonce_odr hidden noundef float @_ZNK9Imath_3_24Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !11   ; 3 uses
  %i.b = fcmp ult float %i.a, 0.000000e+00
  %i.c = fneg float %i.a
  %i.d = select i1 %i.b, float %i.c, float %i.a   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !23 ; 3 uses
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
  br i1 %i.n, label %bb.c, label %bb.b, !prof !13

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
  %sqrt = tail call float @llvm.sqrt.f32(float %i.v)
  %i.w = fmul float %.1, %sqrt
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.023 = phi float [ %i.w, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.023
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincosf(float noundef, ptr, ptr) local_unnamed_addr #8

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
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!"_ZTSN9Imath_3_24Vec3IfEE", !8, i64 0, !8, i64 4, !8, i64 8}
!10 = !{!9, !8, i64 8}
!11 = !{!9, !8, i64 0}
!12 = !{!9, !8, i64 4}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"_ZTSN9Imath_3_24Vec2IfEE", !8, i64 0, !8, i64 4}
!15 = !{!14, !8, i64 0}
!16 = !{!14, !8, i64 4}
!17 = !{!"_ZTSN9Imath_3_24Vec2IiEE", !5, i64 0, !5, i64 4}
!18 = !{!"_ZTSN9Imath_3_23BoxINS_4Vec2IiEEEE", !17, i64 0, !17, i64 8}
!19 = !{!18, !5, i64 12}
!20 = !{!18, !5, i64 4}
!21 = !{!18, !5, i64 8}
!22 = !{!18, !5, i64 0}
!23 = !{!8, !8, i64 0}
!24 = !{!5, !5, i64 0}
!25 = distinct !{!25, i1 true, !"_ZN7Imf_3_410LatLongMap7latLongERKN9Imath_3_24Vec3IfEE"}
!26 = distinct !{!26, !25, !"_ZN7Imf_3_410LatLongMap7latLongERKN9Imath_3_24Vec3IfEE: argument 0"}
!27 = distinct !{!27, i1 true, !"_ZN7Imf_3_410LatLongMap13pixelPositionERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS3_IfEE"}
!28 = distinct !{!28, !27, !"_ZN7Imf_3_410LatLongMap13pixelPositionERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS3_IfEE: argument 0"}
!29 = !{!26}
!30 = !{!28}
!31 = distinct !{!31, i1 true, !"_ZN7Imf_3_410LatLongMap7latLongERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS3_IfEE"}
!32 = distinct !{!32, !31, !"_ZN7Imf_3_410LatLongMap7latLongERKN9Imath_3_23BoxINS1_4Vec2IiEEEERKNS3_IfEE: argument 0"}
!33 = !{!32}
!34 = distinct !{!34, i1 true, !"_ZN7Imf_3_47CubeMap17dataWindowForFaceENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEE"}
!35 = distinct !{!35, !34, !"_ZN7Imf_3_47CubeMap17dataWindowForFaceENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEE: argument 0"}
!36 = !{!35}
!37 = !{!"_ZTSN7Imf_3_411CubeMapFaceE", !4, i64 0}
!38 = !{!37, !37, i64 0}
end_hunk_0
