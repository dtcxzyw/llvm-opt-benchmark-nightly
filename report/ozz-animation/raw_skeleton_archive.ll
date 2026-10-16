Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/raw_skeleton_archive?download=true
inline.NumInlined: 163
inline.NumDeleted: 107
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3ozz2io8IArchiversISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS7_EEEEEvRT_ = comdat any

$_ZN3ozz2io6ExternINS_9animation7offline11RawSkeleton5JointEE4SaveERNS0_8OArchiveEPKS5_m = comdat any

$_ZNSt6vectorIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE17_M_default_appendEm = comdat any

$__clang_call_terminate = comdat any

$_ZN3ozz12StdAllocatorINS_9animation7offline11RawSkeleton5JointEE7destroyIS4_EEvPT_ = comdat any

$_ZN3ozz2io6ExternINS_9animation7offline11RawSkeleton5JointEE4LoadERNS0_8IArchiveEPS5_mj = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz2io6ExternINS_9animation7offline11RawSkeletonEE4SaveERNS0_8OArchiveEPKS4_m(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN3ozz2io8OArchivelsISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS7_EEEEEvRKT_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN3ozz2io8OArchivelsISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS7_EEEEEvRKT_.exit
  %.06 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %_ZN3ozz2io8OArchivelsISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS7_EEEEEvRKT_.exit ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.06 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 96                  ; 2 uses
  %i.l = trunc i64 %i.k to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.m = load i8, ptr %i.c, align 8, !tbaa !19, !range !20, !noundef !21
  %i.n = trunc nuw i8 %i.m to i1
  %.sroa.0.0.insert.insert.i.i = call i32 @llvm.bswap.i32(i32 %i.l)
  %spec.select.i.i = select i1 %i.n, i32 %.sroa.0.0.insert.insert.i.i, i32 %i.l
  store i32 %spec.select.i.i, ptr %i.b, align 4, !tbaa !22
  %i.o = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.b, i64 noundef 4), !inline_history !35 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN3ozz2io8OArchivelsISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS7_EEEEEvRKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.u = and i64 %i.k, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.v = load i8, ptr %i.c, align 8, !tbaa !19, !range !20, !noundef !21
  %i.w = trunc nuw i8 %i.v to i1
  %spec.select.i.i.i.i = select i1 %i.w, i32 16777216, i32 1
  store i32 %spec.select.i.i.i.i, ptr %i.a, align 4, !tbaa !22
  %i.x = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %i.a, i64 noundef 4), !inline_history !36 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @_ZN3ozz2io6ExternINS_9animation7offline11RawSkeleton5JointEE4SaveERNS0_8OArchiveEPKS5_m(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %i.t, i64 noundef %i.u), !inline_history !37
  br label %_ZN3ozz2io8OArchivelsISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS7_EEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS7_EEEEEvRKT_.exit: ; preds = %bb.b, %bb.c
  %i.ac = add nuw i64 %.06, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !38
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz2io6ExternINS_9animation7offline11RawSkeletonEE4LoadERNS0_8IArchiveEPS4_mj(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi i64 [ %i.b, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.06
  tail call void @_ZN3ozz2io8IArchiversISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS7_EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = add nuw i64 %.06, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3ozz2io8IArchiversISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS7_EEEEEvRT_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull %i.b, i64 noundef 4), !inline_history !40 ; 0 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i8, ptr %2, align 8, !tbaa !29, !range !20, !noundef !21
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load i32, ptr %i.b, align 4              ; 2 uses
  %.sroa.0.0.insert.insert.i = call i32 @llvm.bswap.i32(i32 %i.j)
  %i.k = select i1 %i.i, i32 %.sroa.0.0.insert.insert.i, i32 %i.j ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.l = zext i32 %i.k to i64                     ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14   ; 3 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 96                  ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.l
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = sub nuw nsw i64 %i.l, %i.s
  call void @_ZNSt6vectorIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u)
  br label %_ZNSt6vectorIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.v = icmp ugt i64 %i.s, %i.l
  br i1 %i.v, label %bb.d, label %_ZNSt6vectorIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.l ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE6resizeEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.w, %bb.d ] ; 2 uses
  call void @_ZN3ozz12StdAllocatorINS_9animation7offline11RawSkeleton5JointEE7destroyIS4_EEvPT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %.06.i.i.i), !inline_history !0
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.w, ptr %i.m, align 8, !tbaa !14
  br label %_ZNSt6vectorIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE6resizeEm.exit

_ZNSt6vectorIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEEvT_S8_RT0_.exit.i.i
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN3ozz2io6ExternISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS6_EEEE4LoadERNS0_8IArchiveEPS9_mj.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE6resizeEm.exit
  %i.y = load ptr, ptr %1, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.z = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %i.a, i64 noundef 4), !inline_history !41 ; 0 uses
  %i.ae = load i8, ptr %2, align 8, !tbaa !29, !range !20, !noundef !21
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i32, ptr %i.a, align 4             ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i = call i32 @llvm.bswap.i32(i32 %i.ag)
  %i.ah = select i1 %i.af, i32 %.sroa.0.0.insert.insert.i.i.i, i32 %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @_ZN3ozz2io6ExternINS_9animation7offline11RawSkeleton5JointEE4LoadERNS0_8IArchiveEPS5_mj(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %i.y, i64 noundef %i.l, i32 noundef %i.ah), !inline_history !42
  br label %_ZN3ozz2io6ExternISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS6_EEEE4LoadERNS0_8IArchiveEPS9_mj.exit

_ZN3ozz2io6ExternISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS6_EEEE4LoadERNS0_8IArchiveEPS9_mj.exit: ; preds = %_ZNSt6vectorIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE6resizeEm.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3ozz2io6ExternINS_9animation7offline11RawSkeleton5JointEE4SaveERNS0_8OArchiveEPKS5_m(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
.split15:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.split.lr.ph

.split.lr.ph:                                     ; preds = %.split15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %.split

._crit_edge:                                      ; preds = %_ZN3ozz2io8OArchivelsISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS7_EEEEEvRKT_.exit, %.split15
  ret void

.split:                                           ; preds = %.split.lr.ph, %_ZN3ozz2io8OArchivelsISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS7_EEEEEvRKT_.exit
  %.016 = phi i64 [ 0, %.split.lr.ph ], [ %i.ae, %_ZN3ozz2io8OArchivelsISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS7_EEEEEvRKT_.exit ] ; 2 uses
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %1, i64 %.016 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @_ZN3ozz2io6ExternINSt7__cxx1112basic_stringIcSt11char_traitsIcENS_12StdAllocatorIcEEEEE4SaveERNS0_8OArchiveEPKS8_m(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 1)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  call void @_ZN3ozz2io6ExternINS_4math9TransformEE4SaveERNS0_8OArchiveEPKS3_m(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(40) %i.f, i64 noundef 1)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 96                  ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.o = load i8, ptr %i.c, align 8, !tbaa !19, !range !20, !noundef !21
  %i.p = trunc nuw i8 %i.o to i1
  %.sroa.0.0.insert.insert.i = call i32 @llvm.bswap.i32(i32 %i.n)
  %spec.select.i = select i1 %i.p, i32 %.sroa.0.0.insert.insert.i, i32 %i.n
  store i32 %spec.select.i, ptr %i.a, align 4, !tbaa !22
  %i.q = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.a, i64 noundef 4), !inline_history !43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %_ZN3ozz2io8OArchivelsISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS7_EEEEEvRKT_.exit, label %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIKNS_9animation7offline11RawSkeleton5JointEEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIKNS_9animation7offline11RawSkeleton5JointEEEEEvRKT_.exit: ; preds = %.split
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.w = and i64 %i.m, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.x = load i8, ptr %i.c, align 8, !tbaa !19, !range !20, !noundef !21
  %i.y = trunc nuw i8 %i.x to i1
  %spec.select.i.i.i = select i1 %i.y, i32 16777216, i32 1
  store i32 %spec.select.i.i.i, ptr %i.b, align 4, !tbaa !22
  %i.z = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %i.b, i64 noundef 4), !inline_history !44 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @_ZN3ozz2io6ExternINS_9animation7offline11RawSkeleton5JointEE4SaveERNS0_8OArchiveEPKS5_m(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef %i.v, i64 noundef %i.w), !inline_history !45
  br label %_ZN3ozz2io8OArchivelsISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS7_EEEEEvRKT_.exit

_ZN3ozz2io8OArchivelsISt6vectorINS_9animation7offline11RawSkeleton5JointENS_12StdAllocatorIS7_EEEEEvRKT_.exit: ; preds = %_ZN3ozz2io8OArchivelsINS0_8internal5ArrayIKNS_9animation7offline11RawSkeleton5JointEEEEEvRKT_.exit, %.split
  %i.ae = add nuw i64 %.016, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %2
  br i1 %exitcond.not, label %._crit_edge, label %.split, !llvm.loop !46
}

declare void @_ZN3ozz2io6ExternINSt7__cxx1112basic_stringIcSt11char_traitsIcENS_12StdAllocatorIcEEEEE4SaveERNS0_8OArchiveEPKS8_m(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN3ozz2io6ExternINS_4math9TransformEE4SaveERNS0_8OArchiveEPKS3_m(ptr noundef nonnull align 8 dereferenceable(9), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN3ozz9animation7offline11RawSkeleton5JointENS0_12StdAllocatorIS4_EEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 13 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 96                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 96                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 96076792050570582
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 96076792050570581, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.c, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  store ptr %i.q, ptr %i.p, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, i8 0, i64 20, i1 false)
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store <2 x float> splat (float 1.000000e+00), ptr %i.t, align 4
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store float 1.000000e+00, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.prol, align 4
  %i.u = add nsw i64 %1, -1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.v, %.lr.ph.i.prol ]
  %.015.i.unr = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.v, %.lr.ph.i.prol ]
  %.01214.i.unr = phi i64 [ %1, %.lr.ph.i.preheader ], [ %i.u, %.lr.ph.i.prol ]
  %i.w = icmp eq i64 %1, 1
  br i1 %i.w, label %_ZSt27__uninitialized_default_n_aIPN3ozz9animation7offline11RawSkeleton5JointEmNS0_12StdAllocatorIS4_EEET_S8_T0_RT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.015.i = phi ptr [ %i.aj, %.lr.ph.i ], [ %.015.i.unr, %.lr.ph.i.prol.loopexit ] ; 15 uses
  %.01214.i = phi i64 [ %i.ai, %.lr.ph.i ], [ %.01214.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i, i64 40
end_hunk_0
