Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/skeleton_utils?download=true
inline.NumInlined: 58
inline.NumDeleted: 54
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.ozz::math::Transform" = type { %"struct.ozz::math::Float3", %"struct.ozz::math::Quaternion", %"struct.ozz::math::Float3" }
%"struct.ozz::math::Quaternion" = type { float, float, float, float }
%"struct.ozz::math::Float3" = type { float, float, float }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<ozz::math::Float4x4, ozz::StdAllocator<ozz::math::Float4x4>>::_Vector_impl" }
%"struct.std::_Vector_base<ozz::math::Float4x4, ozz::StdAllocator<ozz::math::Float4x4>>::_Vector_impl" = type { %"struct.std::_Vector_base<ozz::math::Float4x4, ozz::StdAllocator<ozz::math::Float4x4>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ozz::math::Float4x4, ozz::StdAllocator<ozz::math::Float4x4>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.ozz::animation::LocalToModelJob" = type { ptr, ptr, i32, i32, i8, %"struct.ozz::span.3", %"struct.ozz::span.4" }
%"struct.ozz::span.3" = type { ptr, i64 }
%"struct.ozz::span.4" = type { ptr, i64 }

$_ZNSt6vectorIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN3ozz9animation9FindJointERKNS0_8SkeletonEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not12.not = icmp eq i64 %i.d, 0
  br i1 %.not12.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.0913 = phi i64 [ %i.j, %bb.c ], [ 0, %bb.a ]  ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0913
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) %1) #11
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = trunc i64 %.0913 to i32
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.j = add nuw i64 %.0913, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !21

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %spec.select = phi i32 [ %i.i, %bb.b ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN3ozz9animation26GetJointRestPoseLocalSpaceERKNS0_8SkeletonEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.ozz::math::Transform") align 4 captures(none) initializes((0, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [4 x <4 x float>], align 16       ; 7 uses
  %i.b = alloca [4 x <4 x float>], align 16       ; 7 uses
  %i.c = alloca [4 x <4 x float>], align 16       ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = sdiv i32 %2, 4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [160 x i8], ptr %i.e, i64 %i.g ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %3 = load <4 x float>, ptr %i.h, align 16, !tbaa !15 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %5 = load <4 x float>, ptr %4, align 16, !tbaa !15 ; 2 uses
  %i.i = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.k = load <4 x float>, ptr %i.j, align 16, !tbaa !15 ; 2 uses
  %i.l = shufflevector <4 x float> %i.k, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.m = shufflevector <4 x float> %3, <4 x float> %5, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.n = shufflevector <4 x float> %i.k, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.o = shufflevector <4 x float> %i.i, <4 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x float> %i.o, ptr %i.a, align 16, !tbaa !15
  %i.p = shufflevector <4 x float> %i.l, <4 x float> %i.i, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x float> %i.p, ptr %i.q, align 16, !tbaa !15
  %i.r = shufflevector <4 x float> %i.m, <4 x float> %i.n, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x float> %i.r, ptr %i.s, align 16, !tbaa !15
  %i.t = shufflevector <4 x float> %i.n, <4 x float> %i.m, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x float> %i.t, ptr %i.u, align 16, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.w = load <4 x float>, ptr %i.v, align 16, !tbaa !15 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.y = load <4 x float>, ptr %i.x, align 16, !tbaa !15 ; 2 uses
  %i.z = shufflevector <4 x float> %i.w, <4 x float> %i.y, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ab = load <4 x float>, ptr %i.aa, align 16, !tbaa !15 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.ad = load <4 x float>, ptr %i.ac, align 16, !tbaa !15 ; 2 uses
  %i.ae = shufflevector <4 x float> %i.ab, <4 x float> %i.ad, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.af = shufflevector <4 x float> %i.w, <4 x float> %i.y, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ag = shufflevector <4 x float> %i.ab, <4 x float> %i.ad, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ah = shufflevector <4 x float> %i.z, <4 x float> %i.ae, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.ah, ptr %i.b, align 16, !tbaa !15
  %i.ai = shufflevector <4 x float> %i.z, <4 x float> %i.ae, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x float> %i.ai, ptr %i.aj, align 16, !tbaa !15
  %i.ak = shufflevector <4 x float> %i.af, <4 x float> %i.ag, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store <4 x float> %i.ak, ptr %i.al, align 16, !tbaa !15
  %i.am = shufflevector <4 x float> %i.af, <4 x float> %i.ag, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store <4 x float> %i.am, ptr %i.an, align 16, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %6 = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %7 = load <4 x float>, ptr %6, align 16, !tbaa !15 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %8 = load <4 x float>, ptr %i.ao, align 16, !tbaa !15 ; 2 uses
  %i.ap = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.ar = load <4 x float>, ptr %i.aq, align 16, !tbaa !15 ; 2 uses
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.at = shufflevector <4 x float> %7, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.au = shufflevector <4 x float> %i.ar, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.av = shufflevector <4 x float> %i.ap, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x float> %i.av, ptr %i.c, align 16, !tbaa !15
  %i.aw = shufflevector <4 x float> %i.as, <4 x float> %i.ap, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <4 x float> %i.aw, ptr %i.ax, align 16, !tbaa !15
  %i.ay = shufflevector <4 x float> %i.at, <4 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <4 x float> %i.ay, ptr %i.az, align 16, !tbaa !15
  %i.ba = shufflevector <4 x float> %i.au, <4 x float> %i.at, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store <4 x float> %i.ba, ptr %i.bb, align 16, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bd = srem i32 %2, 4
  %i.be = sext i32 %i.bd to i64                   ; 3 uses
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.be
  %i.bg = load <4 x float>, ptr %i.bf, align 16, !tbaa !15 ; 2 uses
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.bh, ptr %0, align 4, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = extractelement <4 x float> %i.bg, i64 2
  store float %i.bj, ptr %i.bi, align 4, !tbaa !15
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.be
  %i.bl = load <4 x float>, ptr %i.bk, align 16, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <4 x float> %i.bl, ptr %i.bm, align 4, !tbaa !15
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.c, i64 %i.be
  %i.bo = load <4 x float>, ptr %i.bn, align 16, !tbaa !15 ; 2 uses
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.bp, ptr %i.bc, align 4, !tbaa !15
  %i.bq = extractelement <4 x float> %i.bo, i64 2
  store float %i.bq, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz9animation21GetRestPoseModelSpaceERKNS0_8SkeletonE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.ozz::animation::LocalToModelJob", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %sext = shl i64 %i.b, 32                        ; 3 uses
  %i.c = ashr exact i64 %sext, 32                 ; 5 uses
  %i.d = icmp ugt i64 %i.c, 144115188075855871
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEE17_S_check_init_lenEmRKS4_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
  unreachable

_ZNSt6vectorIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i, label %bb.c

_ZNSt12_Vector_baseIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEE17_S_check_init_lenEmRKS4_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.c:                                             ; preds = %_ZNSt6vectorIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEE17_S_check_init_lenEmRKS4_.exit.i
  %i.e = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.f = ashr exact i64 %sext, 26
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f, i64 noundef 16)
          to label %_ZNSt12_Vector_baseIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i unwind label %bb.e ; 6 uses

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #14
  unreachable

_ZNSt12_Vector_baseIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i: ; preds = %bb.d
  store ptr %i.j, ptr %0, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !34
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %_ZNSt12_Vector_baseIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i, %.lr.ph.i.i.i.prol
  %.015.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.prol ], [ %i.j, %_ZNSt12_Vector_baseIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i ] ; 5 uses
  %.01214.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.c, %_ZNSt12_Vector_baseIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i ]
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.015.i.i.i.prol, align 16, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %.015.i.i.i.prol, i64 16
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.o, align 16, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %.015.i.i.i.prol, i64 32
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.p, align 16, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %.015.i.i.i.prol, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.q, align 16, !tbaa !15
  %i.r = add nsw i64 %.01214.i.i.i.prol, -1       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.015.i.i.i.prol, i64 64 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !29

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %_ZNSt12_Vector_baseIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i
  %.lcssa.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.015.i.i.i.unr = phi ptr [ %i.j, %_ZNSt12_Vector_baseIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %.01214.i.i.i.unr = phi i64 [ %i.c, %_ZNSt12_Vector_baseIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.i ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.t = icmp ult i64 %i.c, 4
  br i1 %i.t, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %.015.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01214.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i ], [ %.01214.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.015.i.i.i, align 16, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 16
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.u, align 16, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 32
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.v, align 16, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.w, align 16, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 64
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.x, align 16, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 80
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.y, align 16, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 96
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.z, align 16, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 112
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.aa, align 16, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 128
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ab, align 16, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 144
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ac, align 16, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 160
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.ad, align 16, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 176
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.ae, align 16, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 192
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.af, align 16, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 208
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ag, align 16, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 224
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.ah, align 16, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 240
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.ai, align 16, !tbaa !15
  %i.aj = add nsw i64 %.01214.i.i.i, -4           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 256 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !30

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZNSt12_Vector_baseIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i
  %i.al = phi ptr [ null, %_ZNSt12_Vector_baseIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i ], [ %i.j, %.lr.ph.i.i.i ], [ %i.j, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.0.lcssa.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEEC2EmRKS4_.exit.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.ak, %.lr.ph.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i, ptr %i.am, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ao, align 8
  store i32 -1, ptr %i.an, align 8, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 1024, ptr %i.ap, align 4, !tbaa !43
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 0, ptr %i.aq, align 8, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %1, ptr %2, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !46
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !47
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !48
  %i.ax = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.ay = ptrtoint ptr %i.al to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 6
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.al, ptr %i.bb, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !50
  %i.bd = invoke noundef zeroext i1 @_ZNK3ozz9animation15LocalToModelJob3RunEv(ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void

bb.g:                                             ; preds = %.loopexit
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @_ZNSt6vectorIN3ozz4math8Float4x4ENS0_12StdAllocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #12
  resume { ptr, i32 } %i.be
}

declare i32 @__gxx_personality_v0(...)
end_hunk_0
