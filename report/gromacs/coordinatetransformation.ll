Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/coordinatetransformation?download=true
inline.NumInlined: 290
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.gmx::ScaleCoordinates" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.gmx::BasicMatrix3x3" = type { %"class.gmx::MultiDimArray" }
%"class.gmx::MultiDimArray" = type { %"struct.std::array", %"class.gmx::basic_mdspan" }
%"struct.std::array" = type { [9 x float] }
%"class.gmx::basic_mdspan" = type { [8 x i8], ptr }

@_ZN3gmx16ScaleCoordinates4ImplC1ERKNS_11BasicVectorIfEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx16ScaleCoordinates4ImplC2ERKNS_11BasicVectorIfEE
@_ZN3gmx16ScaleCoordinatesC1ERKNS_11BasicVectorIfEE = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx16ScaleCoordinatesC2ERKNS_11BasicVectorIfEE
@_ZN3gmx16ScaleCoordinatesD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx16ScaleCoordinatesD2Ev
@_ZN3gmx16ScaleCoordinatesC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx16ScaleCoordinatesC2ERKS0_
@_ZN3gmx16ScaleCoordinatesC1EOS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx16ScaleCoordinatesC2EOS0_
@_ZN3gmx17TranslateAndScale4ImplC1ERKNS_11BasicVectorIfEES5_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN3gmx17TranslateAndScale4ImplC2ERKNS_11BasicVectorIfEES5_
@_ZN3gmx17TranslateAndScaleC1ERKNS_11BasicVectorIfEES4_ = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN3gmx17TranslateAndScaleC2ERKNS_11BasicVectorIfEES4_
@_ZN3gmx17TranslateAndScaleD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx17TranslateAndScaleD2Ev
@_ZN3gmx17TranslateAndScaleC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx17TranslateAndScaleC2ERKS0_
@_ZN3gmx17TranslateAndScaleC1EOS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx17TranslateAndScaleC2EOS0_
@_ZN3gmx20AffineTransformationC1ERKNS_14BasicMatrix3x3IfEERKNS_11BasicVectorIfEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN3gmx20AffineTransformationC2ERKNS_14BasicMatrix3x3IfEERKNS_11BasicVectorIfEE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx16ScaleCoordinates4ImplC2ERKNS_11BasicVectorIfEE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZNK3gmx16ScaleCoordinates4Impl5scaleENS_8ArrayRefINS_11BasicVectorIfEEEE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree captures(address) %1, ptr nofree readnone captures(address) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %.not11 = icmp eq ptr %1, %2
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = add i64 %i.a, -12
  %i.f = sub i64 %i.e, %i.b                       ; 2 uses
  %i.g = udiv i64 %i.f, 12                        ; 2 uses
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 180
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.i = mul nuw i64 %i.g, 12
  %i.j = getelementptr i8, ptr %1, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %bound0 = icmp ult ptr %1, %i.l
  %bound1 = icmp ult ptr %0, %i.k
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 4611686018427387896      ; 3 uses
  %i.m = mul i64 %n.vec, 12
  %i.n = getelementptr i8, ptr %1, i64 %i.m
  %i.o = load float, ptr %0, align 4, !tbaa !12, !alias.scope !35
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.o, i64 0
  %i.p = load float, ptr %i.c, align 4, !tbaa !12, !alias.scope !35
  %broadcast.splatinsert17 = insertelement <8 x float> poison, float %i.p, i64 0
  %i.q = load float, ptr %i.d, align 4, !tbaa !12, !alias.scope !35
  %broadcast.splatinsert19 = insertelement <8 x float> poison, float %i.q, i64 0
  %i.r = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert17, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.s = shufflevector <8 x float> %broadcast.splatinsert19, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %1, i64 %i.t  ; 2 uses
  %wide.vec = load <24 x float>, ptr %next.gep, align 4, !tbaa !12, !alias.scope !36, !noalias !35 ; 2 uses
  %i.u = shufflevector <24 x float> %wide.vec, <24 x float> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.v = fmul <16 x float> %i.r, %i.u
  %i.w = shufflevector <24 x float> %wide.vec, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = fmul <16 x float> %i.s, %i.w
  %interleaved.vec = shufflevector <16 x float> %i.v, <16 x float> %i.x, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !12, !alias.scope !36, !noalias !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.sroa.0.012.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph ], [ %i.n, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0.012 = phi ptr [ %i.ak, %scalar.ph ], [ %.sroa.0.012.ph, %scalar.ph.preheader ] ; 5 uses
  %i.z = load float, ptr %0, align 4, !tbaa !12
  %i.aa = load float, ptr %.sroa.0.012, align 4, !tbaa !12
  %i.ab = fmul float %i.z, %i.aa
  store float %i.ab, ptr %.sroa.0.012, align 4, !tbaa !12
  %i.ac = load float, ptr %i.c, align 4, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 4 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !12
  %i.af = fmul float %i.ac, %i.ae
  store float %i.af, ptr %i.ad, align 4, !tbaa !12
  %i.ag = load float, ptr %i.d, align 4, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 8 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !12
  %i.aj = fmul float %i.ag, %i.ai
  store float %i.aj, ptr %i.ah, align 4, !tbaa !12
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.012, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ak, %2
  br i1 %.not, label %._crit_edge, label %scalar.ph, !llvm.loop !34
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZNK3gmx16ScaleCoordinates4Impl24inverseIgnoringZeroScaleENS_8ArrayRefINS_11BasicVectorIfEEEE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr nofree captures(address) %1, ptr nofree readnone captures(address) %2) local_unnamed_addr #2 align 2 {
.preheader:
  %i.a = load <2 x float>, ptr %0, align 4, !tbaa !12 ; 2 uses
  %i.b = fcmp une <2 x float> %i.a, zeroinitializer
  %i.c = fdiv <2 x float> splat (float 1.000000e+00), %i.a
  %i.d = select <2 x i1> %i.b, <2 x float> %i.c, <2 x float> splat (float 1.000000e+00) ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !12 ; 2 uses
  %i.g = fcmp une float %i.f, 0.000000e+00
  %i.h = fdiv float 1.000000e+00, %i.f
  %spec.select.2 = select i1 %i.g, float %i.h, float 1.000000e+00 ; 2 uses
  %.not16 = icmp eq ptr %1, %2
  br i1 %.not16, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.i = ptrtoaddr ptr %1 to i64
  %i.j = ptrtoaddr ptr %2 to i64
  %i.k = add i64 %i.j, -12
  %i.l = sub i64 %i.k, %i.i                       ; 2 uses
  %i.m = udiv i64 %i.l, 12
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 84
  br i1 %min.iters.check, label %.lr.ph.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.n, 4611686018427387896      ; 3 uses
  %i.o = mul i64 %n.vec, 12
  %i.p = getelementptr i8, ptr %1, i64 %i.o
  %broadcast.splat = shufflevector <2 x float> %i.d, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat21 = shufflevector <2 x float> %i.d, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert22 = insertelement <8 x float> poison, float %spec.select.2, i64 0
  %i.q = shufflevector <8 x float> %broadcast.splatinsert22, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %1, i64 %i.r  ; 2 uses
  %wide.vec = load <24 x float>, ptr %next.gep, align 4, !tbaa !12 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec24 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.s = fmul <8 x float> %broadcast.splat, %strided.vec
  %i.t = fmul <8 x float> %broadcast.splat21, %strided.vec24
  %i.u = shufflevector <8 x float> %i.s, <8 x float> %i.t, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.v = shufflevector <24 x float> %wide.vec, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.w = fmul <16 x float> %i.q, %i.v
  %interleaved.vec = shufflevector <16 x float> %i.u, <16 x float> %i.w, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader26

.lr.ph.preheader26:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.017.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader26, %.lr.ph
  %.sroa.0.017 = phi ptr [ %i.ad, %.lr.ph ], [ %.sroa.0.017.ph, %.lr.ph.preheader26 ] ; 4 uses
  %i.y = load <2 x float>, ptr %.sroa.0.017, align 4, !tbaa !12
  %i.z = fmul <2 x float> %i.d, %i.y
  store <2 x float> %i.z, ptr %.sroa.0.017, align 4, !tbaa !12
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 8 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = fmul float %spec.select.2, %i.ab
  store float %i.ac, ptr %i.aa, align 4, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ad, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx16ScaleCoordinatesC2ERKNS_11BasicVectorIfEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #16 ; 3 uses
  invoke void @_ZN3gmx16ScaleCoordinates4ImplC1ERKNS_11BasicVectorIfEE(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 12) #17
  resume { ptr, i32 } %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK3gmx16ScaleCoordinatesclENS_8ArrayRefINS_11BasicVectorIfEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree captures(address) %1, ptr nofree readnone captures(address) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 6 uses
  %.not11.i = icmp eq ptr %1, %2
  br i1 %.not11.i, label %_ZNK3gmx16ScaleCoordinates4Impl5scaleENS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = add i64 %i.b, -12
  %i.g = sub i64 %i.f, %i.c                       ; 2 uses
  %i.h = udiv i64 %i.g, 12                        ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.g, 180
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.j = mul nuw i64 %i.h, 12
  %i.k = getelementptr i8, ptr %1, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 12
  %i.m = getelementptr i8, ptr %i.a, i64 12
  %bound0 = icmp ult ptr %1, %i.m
  %bound1 = icmp ult ptr %i.a, %i.l
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4611686018427387896      ; 3 uses
  %i.n = mul i64 %n.vec, 12
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %i.p = load float, ptr %i.a, align 4, !tbaa !12, !alias.scope !44
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.p, i64 0
  %i.q = load float, ptr %i.d, align 4, !tbaa !12, !alias.scope !44
  %broadcast.splatinsert7 = insertelement <8 x float> poison, float %i.q, i64 0
  %i.r = load float, ptr %i.e, align 4, !tbaa !12, !alias.scope !44
  %broadcast.splatinsert9 = insertelement <8 x float> poison, float %i.r, i64 0
  %i.s = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> %broadcast.splatinsert7, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %i.t = shufflevector <8 x float> %broadcast.splatinsert9, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %1, i64 %i.u  ; 2 uses
  %wide.vec = load <24 x float>, ptr %next.gep, align 4, !tbaa !12, !alias.scope !45, !noalias !44 ; 2 uses
  %i.v = shufflevector <24 x float> %wide.vec, <24 x float> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.w = fmul <16 x float> %i.s, %i.v
  %i.x = shufflevector <24 x float> %wide.vec, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.y = fmul <16 x float> %i.t, %i.x
  %interleaved.vec = shufflevector <16 x float> %i.w, <16 x float> %i.y, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !12, !alias.scope !45, !noalias !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_ZNK3gmx16ScaleCoordinates4Impl5scaleENS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.sroa.0.012.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i ], [ %i.o, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0.012.i = phi ptr [ %i.al, %scalar.ph ], [ %.sroa.0.012.i.ph, %scalar.ph.preheader ] ; 5 uses
  %i.aa = load float, ptr %i.a, align 4, !tbaa !12
  %i.ab = load float, ptr %.sroa.0.012.i, align 4, !tbaa !12
  %i.ac = fmul float %i.aa, %i.ab
  store float %i.ac, ptr %.sroa.0.012.i, align 4, !tbaa !12
  %i.ad = load float, ptr %i.d, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 4 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !12
  %i.ag = fmul float %i.ad, %i.af
  store float %i.ag, ptr %i.ae, align 4, !tbaa !12
  %i.ah = load float, ptr %i.e, align 4, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 8 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !12
  %i.ak = fmul float %i.ah, %i.aj
  store float %i.ak, ptr %i.ai, align 4, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.012.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.al, %2
  br i1 %.not.i, label %_ZNK3gmx16ScaleCoordinates4Impl5scaleENS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %scalar.ph, !llvm.loop !43

_ZNK3gmx16ScaleCoordinates4Impl5scaleENS_8ArrayRefINS_11BasicVectorIfEEEE.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK3gmx16ScaleCoordinatesclEPNS_11BasicVectorIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #7 align 2 {
.lr.ph.i:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load float, ptr %i.a, align 4, !tbaa !12
  %i.e = load float, ptr %1, align 4, !tbaa !12
  %i.f = fmul float %i.d, %i.e
  store float %i.f, ptr %1, align 4, !tbaa !12
  %i.g = load float, ptr %i.b, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !12
  %i.j = fmul float %i.g, %i.i
  store float %i.j, ptr %i.h, align 4, !tbaa !12
  %i.k = load float, ptr %i.c, align 4, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !12
  %i.n = fmul float %i.k, %i.m
  store float %i.n, ptr %i.l, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK3gmx16ScaleCoordinates24inverseIgnoringZeroScaleENS_8ArrayRefINS_11BasicVectorIfEEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree captures(address) %1, ptr nofree readnone captures(address) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.b = load <2 x float>, ptr %i.a, align 4, !tbaa !12 ; 2 uses
  %i.c = fcmp une <2 x float> %i.b, zeroinitializer
  %i.d = fdiv <2 x float> splat (float 1.000000e+00), %i.b
  %i.e = select <2 x i1> %i.c, <2 x float> %i.d, <2 x float> splat (float 1.000000e+00) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  %i.h = fcmp une float %i.g, 0.000000e+00
  %i.i = fdiv float 1.000000e+00, %i.g
  %spec.select.2.i = select i1 %i.h, float %i.i, float 1.000000e+00 ; 2 uses
  %.not16.i = icmp eq ptr %1, %2
  br i1 %.not16.i, label %_ZNK3gmx16ScaleCoordinates4Impl24inverseIgnoringZeroScaleENS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.j = ptrtoaddr ptr %1 to i64
  %i.k = ptrtoaddr ptr %2 to i64
  %i.l = add i64 %i.k, -12
  %i.m = sub i64 %i.l, %i.j                       ; 2 uses
  %i.n = udiv i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.m, 84
  br i1 %min.iters.check, label %.lr.ph.i.preheader10, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.o, 4611686018427387896      ; 3 uses
  %i.p = mul i64 %n.vec, 12
  %i.q = getelementptr i8, ptr %1, i64 %i.p
  %broadcast.splat = shufflevector <2 x float> %i.e, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat5 = shufflevector <2 x float> %i.e, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert6 = insertelement <8 x float> poison, float %spec.select.2.i, i64 0
  %i.r = shufflevector <8 x float> %broadcast.splatinsert6, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %1, i64 %i.s  ; 2 uses
  %wide.vec = load <24 x float>, ptr %next.gep, align 4, !tbaa !12 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec8 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.t = fmul <8 x float> %broadcast.splat, %strided.vec
  %i.u = fmul <8 x float> %broadcast.splat5, %strided.vec8
  %i.v = shufflevector <8 x float> %i.t, <8 x float> %i.u, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.w = shufflevector <24 x float> %wide.vec, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = fmul <16 x float> %i.r, %i.w
  %interleaved.vec = shufflevector <16 x float> %i.v, <16 x float> %i.x, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br i1 %cmp.n, label %_ZNK3gmx16ScaleCoordinates4Impl24inverseIgnoringZeroScaleENS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %.lr.ph.i.preheader10

.lr.ph.i.preheader10:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.sroa.0.017.i.ph = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader10, %.lr.ph.i
  %.sroa.0.017.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.0.017.i.ph, %.lr.ph.i.preheader10 ] ; 4 uses
  %i.z = load <2 x float>, ptr %.sroa.0.017.i, align 4, !tbaa !12
  %i.aa = fmul <2 x float> %i.e, %i.z
  store <2 x float> %i.aa, ptr %.sroa.0.017.i, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 8 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !12
  %i.ad = fmul float %spec.select.2.i, %i.ac
  store float %i.ad, ptr %i.ab, align 4, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %2
  br i1 %.not.i, label %_ZNK3gmx16ScaleCoordinates4Impl24inverseIgnoringZeroScaleENS_8ArrayRefINS_11BasicVectorIfEEEE.exit, label %.lr.ph.i, !llvm.loop !47

_ZNK3gmx16ScaleCoordinates4Impl24inverseIgnoringZeroScaleENS_8ArrayRefINS_11BasicVectorIfEEEE.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK3gmx16ScaleCoordinates24inverseIgnoringZeroScaleEPNS_11BasicVectorIfEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #7 align 2 {
.lr.ph.i:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !12 ; 2 uses
  %i.d = fcmp une float %i.c, 0.000000e+00
  %i.e = fdiv float 1.000000e+00, %i.c
  %spec.select.2.i = select i1 %i.d, float %i.e, float 1.000000e+00
  %i.f = load <2 x float>, ptr %i.a, align 4, !tbaa !12 ; 2 uses
  %i.g = fcmp une <2 x float> %i.f, zeroinitializer
  %i.h = fdiv <2 x float> splat (float 1.000000e+00), %i.f
  %i.i = select <2 x i1> %i.g, <2 x float> %i.h, <2 x float> splat (float 1.000000e+00)
  %i.j = load <2 x float>, ptr %1, align 4, !tbaa !12
  %i.k = fmul <2 x float> %i.i, %i.j
  store <2 x float> %i.k, ptr %1, align 4, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !12
  %i.n = fmul float %spec.select.2.i, %i.m
  store float %i.n, ptr %i.l, align 4, !tbaa !12
  ret void
}
end_hunk_0
