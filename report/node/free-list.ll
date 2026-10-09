Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/free-list?download=true
inline.NumInlined: 159
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN5cppgc8internal8FreeListC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN5cppgc8internal8FreeListC2Ev
@_ZN5cppgc8internal8FreeListC1EOS1_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN5cppgc8internal8FreeListC2EOS1_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5cppgc8internal8FreeListC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(280) initializes((0, 280)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 0, i64 280, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN5cppgc8internal8FreeList5ClearEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(280) initializes((0, 280)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 0, i64 280, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN5cppgc8internal8FreeListC2EOS1_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(280) initializes((0, 280)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(280) %1) unnamed_addr #1 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.e = load i64, ptr %i.d, align 8
  store i64 %i.e, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %1, i8 0, i64 280, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull align 8 dereferenceable(280) ptr @_ZN5cppgc8internal8FreeListaSEOS1_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(280) initializes((0, 280)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(280) %1) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %0, i8 0, i64 280, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.023.i = phi i64 [ 0, %bb.a ], [ %i.k, %bb.f ] ; 5 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.023.i ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.023.i ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %.not21.i = icmp eq ptr %i.f, null
  br i1 %.not21.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.023.i
  store ptr %i.d, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.023.i ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  store ptr %i.j, ptr %i.e, align 8
  store ptr null, ptr %i.i, align 8
  store ptr null, ptr %i.c, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.k = add nuw nsw i64 %.023.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, 17
  br i1 %exitcond.not.i, label %_ZN5cppgc8internal8FreeList6AppendEOS1_.exit, label %bb.b, !llvm.loop !0

_ZN5cppgc8internal8FreeList6AppendEOS1_.exit:     ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.n = load i64, ptr %i.l, align 8
  %i.o = load i64, ptr %i.m, align 8
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  store i64 %i.p, ptr %i.l, align 8
  store i64 0, ptr %i.m, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5cppgc8internal8FreeList6AppendEOS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(280) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(280) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8
  %i.f = load i64, ptr %i.d, align 8
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.f)
  store i64 %i.g, ptr %i.c, align 8
  store i64 0, ptr %i.d, align 8
  ret void

bb.c:                                             ; preds = %bb.a, %bb.g
  %.023 = phi i64 [ 0, %bb.a ], [ %i.p, %bb.g ]   ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.023 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.023 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %.not21 = icmp eq ptr %i.k, null
  br i1 %.not21, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.023
  store ptr %i.i, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.023 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  store ptr %i.o, ptr %i.j, align 8
  store ptr null, ptr %i.n, align 8
  store ptr null, ptr %i.h, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.p = add nuw nsw i64 %.023, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, 17
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !0
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN5cppgc8internal8FreeList3AddENS1_5BlockE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(280) %0, ptr initializes((0, 4), (6, 8)) %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 16
  store i32 0, ptr %1, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nuw nsw i64 %2 to i16
  %i.f = lshr i16 %i.e, 2
  %i.g = and i16 %i.f, 2
  store i16 %i.g, ptr %i.b, align 2
  store atomic i16 0, ptr %i.c monotonic, align 4
  br label %_ZN5cppgc8internal8FreeList24AddReturningUnusedBoundsENS1_5BlockE.exit

bb.c:                                             ; preds = %bb.a
  %sh.diff.i.i.i.i14.i = lshr i64 %2, 2
  %tr.sh.diff.i.i.i.i15.i = trunc i64 %sh.diff.i.i.i.i14.i to i16
  %i.h = and i16 %tr.sh.diff.i.i.i.i15.i, -2
  store i16 %i.h, ptr %i.b, align 2
  store atomic i16 0, ptr %i.c monotonic, align 4
  store ptr null, ptr %i.d, align 8
  %i.i = trunc i64 %2 to i32                      ; 3 uses
  %i.j = icmp ugt i32 %i.i, -2147483648
  br i1 %i.j, label %_ZN5cppgc8internal12_GLOBAL__N_118BucketIndexForSizeEj.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.i, i32 1)
  %i.k = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i.i, i1 false)
  %i.l = sub nuw nsw i32 32, %i.k                 ; 2 uses
  %.highbits.i.i = lshr i32 %i.i, %i.l
  %i.m = icmp eq i32 %.highbits.i.i, 0
  %.neg.i.i = sext i1 %i.m to i32
  %i.n = add nsw i32 %i.l, %.neg.i.i
  %i.o = zext i32 %i.n to i64
  br label %_ZN5cppgc8internal12_GLOBAL__N_118BucketIndexForSizeEj.exit.i

_ZN5cppgc8internal12_GLOBAL__N_118BucketIndexForSizeEj.exit.i: ; preds = %bb.d, %bb.c
  %.07.i.i.i = phi i64 [ %i.o, %bb.d ], [ 31, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.07.i.i.i ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  store ptr %i.q, ptr %i.d, align 8
  store ptr %1, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %.07.i.i.i)
  store i64 %.sroa.speculated.i, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.e, label %_ZN5cppgc8internal8FreeList24AddReturningUnusedBoundsENS1_5BlockE.exit

bb.e:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_118BucketIndexForSizeEj.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.07.i.i.i
  store ptr %1, ptr %i.v, align 8
  br label %_ZN5cppgc8internal8FreeList24AddReturningUnusedBoundsENS1_5BlockE.exit

_ZN5cppgc8internal8FreeList24AddReturningUnusedBoundsENS1_5BlockE.exit: ; preds = %_ZN5cppgc8internal12_GLOBAL__N_118BucketIndexForSizeEj.exit.i, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden { ptr, ptr } @_ZN5cppgc8internal8FreeList24AddReturningUnusedBoundsENS1_5BlockE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(280) %0, ptr initializes((0, 4), (6, 8)) %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 16
  store i32 0, ptr %1, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = trunc nuw nsw i64 %2 to i16
  %i.f = lshr i16 %i.e, 2
  %i.g = and i16 %i.f, 2
  store i16 %i.g, ptr %i.b, align 2
  store atomic i16 0, ptr %i.c monotonic, align 4
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %sh.diff.i.i.i.i14 = lshr i64 %2, 2
  %tr.sh.diff.i.i.i.i15 = trunc i64 %sh.diff.i.i.i.i14 to i16
  %i.h = and i16 %tr.sh.diff.i.i.i.i15, -2
  store i16 %i.h, ptr %i.b, align 2
  store atomic i16 0, ptr %i.c monotonic, align 4
  store ptr null, ptr %i.d, align 8
  %i.i = trunc i64 %2 to i32                      ; 3 uses
  %i.j = icmp ugt i32 %i.i, -2147483648
  br i1 %i.j, label %_ZN5cppgc8internal12_GLOBAL__N_118BucketIndexForSizeEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.select.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %i.i, i32 1)
  %i.k = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %spec.select.i.i.i, i1 false)
  %i.l = sub nuw nsw i32 32, %i.k                 ; 2 uses
  %.highbits.i = lshr i32 %i.i, %i.l
  %i.m = icmp eq i32 %.highbits.i, 0
  %.neg.i = sext i1 %i.m to i32
  %i.n = add nsw i32 %i.l, %.neg.i
  %i.o = zext i32 %i.n to i64
  br label %_ZN5cppgc8internal12_GLOBAL__N_118BucketIndexForSizeEj.exit

_ZN5cppgc8internal12_GLOBAL__N_118BucketIndexForSizeEj.exit: ; preds = %bb.c, %bb.d
  %.07.i.i = phi i64 [ %i.o, %bb.d ], [ 31, %bb.c ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.07.i.i ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  store ptr %i.q, ptr %i.d, align 8
  store ptr %1, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %.07.i.i)
  store i64 %.sroa.speculated, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5cppgc8internal12_GLOBAL__N_118BucketIndexForSizeEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.07.i.i
  store ptr %1, ptr %i.v, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5cppgc8internal12_GLOBAL__N_118BucketIndexForSizeEj.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.sroa.023.0 = phi ptr [ %i.d, %bb.b ], [ %i.w, %bb.f ]
  %.sroa.3.0 = phi ptr [ %i.d, %bb.b ], [ %i.x, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.023.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @_ZN5cppgc8internal8FreeList8AllocateEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(280) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %.not44 = icmp eq i64 %i.b, 0
  br i1 %.not44, label %.thread27, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = shl nuw i64 1, %i.b
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.01946 = phi i64 [ %i.x, %bb.f ], [ %i.b, %.lr.ph.preheader ] ; 7 uses
  %.02045 = phi i64 [ %i.y, %bb.f ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01946
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = icmp ugt i64 %1, %.02045
  %.not23 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  br i1 %.not23, label %.thread27, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.h = load i16, ptr %i.g, align 2
  %i.i = lshr i16 %i.h, 1
  %i.j = zext nneg i16 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = icmp ult i64 %i.k, %1
  br i1 %i.l, label %.thread27, label %.thread

bb.d:                                             ; preds = %.lr.ph
  br i1 %.not23, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01946
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.o, null
  br i1 %.not25, label %bb.e, label %.thread31

bb.e:                                             ; preds = %.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.01946
  store ptr null, ptr %i.q, align 8
  %.pre = load ptr, ptr %i.n, align 8
  br label %.thread31

.thread31:                                        ; preds = %.thread, %bb.e
  %i.r = phi ptr [ %i.o, %.thread ], [ %.pre, %bb.e ]
  store ptr %i.r, ptr %i.m, align 8
  store ptr null, ptr %i.n, align 8
  store i64 %.01946, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.t = load i16, ptr %i.s, align 2
  %i.u = lshr i16 %i.t, 1
  %i.v = zext nneg i16 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.x = add i64 %.01946, -1                      ; 2 uses
  %i.y = lshr i64 %.02045, 1
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %.thread27, label %.lr.ph, !llvm.loop !7

.thread27:                                        ; preds = %bb.f, %bb.a, %bb.c, %bb.b
  %.01938 = phi i64 [ %.01946, %bb.b ], [ %.01946, %bb.c ], [ 0, %bb.a ], [ 0, %bb.f ]
  store i64 %.01938, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %.thread31, %.thread27
  %.sroa.0.2 = phi ptr [ %i.e, %.thread31 ], [ null, %.thread27 ]
  %.sroa.3.2 = phi i64 [ %i.w, %.thread31 ], [ 0, %.thread27 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.2, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.2, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i64 @_ZNK5cppgc8internal8FreeList4SizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %.014 = load ptr, ptr %0, align 8               ; 2 uses
  %.not1315 = icmp eq ptr %.014, null
  br i1 %.not1315, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.017 = phi ptr [ %.0, %.lr.ph ], [ %.014, %bb.a ] ; 2 uses
  %.116 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %.017, i64 6
  %i.b = load i16, ptr %i.a, align 2
  %i.c = lshr i16 %i.b, 1
  %i.d = zext nneg i16 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  %i.f = add i64 %i.e, %.116                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.017, i64 8
  %.0 = load ptr, ptr %i.g, align 8               ; 2 uses
  %.not13 = icmp eq ptr %.0, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.1.lcssa = phi i64 [ 0, %bb.a ], [ %i.f, %.lr.ph ] ; 2 uses
  %.011.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.014.1 = load ptr, ptr %.011.ptr.1, align 8    ; 2 uses
  %.not1315.1 = icmp eq ptr %.014.1, null
  br i1 %.not1315.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %.lr.ph.1
  %.017.1 = phi ptr [ %.0.1, %.lr.ph.1 ], [ %.014.1, %._crit_edge ] ; 2 uses
  %.116.1 = phi i64 [ %i.m, %.lr.ph.1 ], [ %.1.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds nuw i8, ptr %.017.1, i64 6
  %i.i = load i16, ptr %i.h, align 2
  %i.j = lshr i16 %i.i, 1
  %i.k = zext nneg i16 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %i.m = add i64 %i.l, %.116.1                    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.017.1, i64 8
  %.0.1 = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not13.1 = icmp eq ptr %.0.1, null
  br i1 %.not13.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !8

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %.1.lcssa.1 = phi i64 [ %.1.lcssa, %._crit_edge ], [ %i.m, %.lr.ph.1 ] ; 2 uses
  %.011.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.014.2 = load ptr, ptr %.011.ptr.2, align 8    ; 2 uses
  %.not1315.2 = icmp eq ptr %.014.2, null
  br i1 %.not1315.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %._crit_edge.1, %.lr.ph.2
  %.017.2 = phi ptr [ %.0.2, %.lr.ph.2 ], [ %.014.2, %._crit_edge.1 ] ; 2 uses
  %.116.2 = phi i64 [ %i.t, %.lr.ph.2 ], [ %.1.lcssa.1, %._crit_edge.1 ]
  %i.o = getelementptr inbounds nuw i8, ptr %.017.2, i64 6
  %i.p = load i16, ptr %i.o, align 2
  %i.q = lshr i16 %i.p, 1
  %i.r = zext nneg i16 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = add i64 %i.s, %.116.2                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.017.2, i64 8
  %.0.2 = load ptr, ptr %i.u, align 8             ; 2 uses
  %.not13.2 = icmp eq ptr %.0.2, null
  br i1 %.not13.2, label %._crit_edge.2, label %.lr.ph.2, !llvm.loop !8

._crit_edge.2:                                    ; preds = %.lr.ph.2, %._crit_edge.1
  %.1.lcssa.2 = phi i64 [ %.1.lcssa.1, %._crit_edge.1 ], [ %i.t, %.lr.ph.2 ] ; 2 uses
  %.011.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.014.3 = load ptr, ptr %.011.ptr.3, align 8    ; 2 uses
  %.not1315.3 = icmp eq ptr %.014.3, null
  br i1 %.not1315.3, label %._crit_edge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %._crit_edge.2, %.lr.ph.3
  %.017.3 = phi ptr [ %.0.3, %.lr.ph.3 ], [ %.014.3, %._crit_edge.2 ] ; 2 uses
  %.116.3 = phi i64 [ %i.aa, %.lr.ph.3 ], [ %.1.lcssa.2, %._crit_edge.2 ]
  %i.v = getelementptr inbounds nuw i8, ptr %.017.3, i64 6
  %i.w = load i16, ptr %i.v, align 2
  %i.x = lshr i16 %i.w, 1
  %i.y = zext nneg i16 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = add i64 %i.z, %.116.3                   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.017.3, i64 8
  %.0.3 = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not13.3 = icmp eq ptr %.0.3, null
  br i1 %.not13.3, label %._crit_edge.3, label %.lr.ph.3, !llvm.loop !8

._crit_edge.3:                                    ; preds = %.lr.ph.3, %._crit_edge.2
  %.1.lcssa.3 = phi i64 [ %.1.lcssa.2, %._crit_edge.2 ], [ %i.aa, %.lr.ph.3 ] ; 2 uses
  %.011.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.014.4 = load ptr, ptr %.011.ptr.4, align 8    ; 2 uses
  %.not1315.4 = icmp eq ptr %.014.4, null
  br i1 %.not1315.4, label %._crit_edge.4, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %._crit_edge.3, %.lr.ph.4
  %.017.4 = phi ptr [ %.0.4, %.lr.ph.4 ], [ %.014.4, %._crit_edge.3 ] ; 2 uses
  %.116.4 = phi i64 [ %i.ah, %.lr.ph.4 ], [ %.1.lcssa.3, %._crit_edge.3 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.017.4, i64 6
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = lshr i16 %i.ad, 1
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = add i64 %i.ag, %.116.4                  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.017.4, i64 8
  %.0.4 = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not13.4 = icmp eq ptr %.0.4, null
  br i1 %.not13.4, label %._crit_edge.4, label %.lr.ph.4, !llvm.loop !8

._crit_edge.4:                                    ; preds = %.lr.ph.4, %._crit_edge.3
  %.1.lcssa.4 = phi i64 [ %.1.lcssa.3, %._crit_edge.3 ], [ %i.ah, %.lr.ph.4 ] ; 2 uses
  %.011.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.014.5 = load ptr, ptr %.011.ptr.5, align 8    ; 2 uses
  %.not1315.5 = icmp eq ptr %.014.5, null
  br i1 %.not1315.5, label %._crit_edge.5, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %._crit_edge.4, %.lr.ph.5
  %.017.5 = phi ptr [ %.0.5, %.lr.ph.5 ], [ %.014.5, %._crit_edge.4 ] ; 2 uses
  %.116.5 = phi i64 [ %i.ao, %.lr.ph.5 ], [ %.1.lcssa.4, %._crit_edge.4 ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.017.5, i64 6
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = lshr i16 %i.ak, 1
  %i.am = zext nneg i16 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = add i64 %i.an, %.116.5                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.017.5, i64 8
  %.0.5 = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not13.5 = icmp eq ptr %.0.5, null
  br i1 %.not13.5, label %._crit_edge.5, label %.lr.ph.5, !llvm.loop !8

._crit_edge.5:                                    ; preds = %.lr.ph.5, %._crit_edge.4
  %.1.lcssa.5 = phi i64 [ %.1.lcssa.4, %._crit_edge.4 ], [ %i.ao, %.lr.ph.5 ] ; 2 uses
  %.011.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.014.6 = load ptr, ptr %.011.ptr.6, align 8    ; 2 uses
  %.not1315.6 = icmp eq ptr %.014.6, null
  br i1 %.not1315.6, label %._crit_edge.6, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %._crit_edge.5, %.lr.ph.6
  %.017.6 = phi ptr [ %.0.6, %.lr.ph.6 ], [ %.014.6, %._crit_edge.5 ] ; 2 uses
  %.116.6 = phi i64 [ %i.av, %.lr.ph.6 ], [ %.1.lcssa.5, %._crit_edge.5 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.017.6, i64 6
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = lshr i16 %i.ar, 1
  %i.at = zext nneg i16 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = add i64 %i.au, %.116.6                  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.017.6, i64 8
  %.0.6 = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not13.6 = icmp eq ptr %.0.6, null
  br i1 %.not13.6, label %._crit_edge.6, label %.lr.ph.6, !llvm.loop !8

._crit_edge.6:                                    ; preds = %.lr.ph.6, %._crit_edge.5
  %.1.lcssa.6 = phi i64 [ %.1.lcssa.5, %._crit_edge.5 ], [ %i.av, %.lr.ph.6 ] ; 2 uses
  %.011.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.014.7 = load ptr, ptr %.011.ptr.7, align 8    ; 2 uses
  %.not1315.7 = icmp eq ptr %.014.7, null
  br i1 %.not1315.7, label %._crit_edge.7, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %._crit_edge.6, %.lr.ph.7
  %.017.7 = phi ptr [ %.0.7, %.lr.ph.7 ], [ %.014.7, %._crit_edge.6 ] ; 2 uses
  %.116.7 = phi i64 [ %i.bc, %.lr.ph.7 ], [ %.1.lcssa.6, %._crit_edge.6 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.017.7, i64 6
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = lshr i16 %i.ay, 1
  %i.ba = zext nneg i16 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3
  %i.bc = add i64 %i.bb, %.116.7                  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.017.7, i64 8
  %.0.7 = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not13.7 = icmp eq ptr %.0.7, null
  br i1 %.not13.7, label %._crit_edge.7, label %.lr.ph.7, !llvm.loop !8

._crit_edge.7:                                    ; preds = %.lr.ph.7, %._crit_edge.6
  %.1.lcssa.7 = phi i64 [ %.1.lcssa.6, %._crit_edge.6 ], [ %i.bc, %.lr.ph.7 ] ; 2 uses
  %.011.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.014.8 = load ptr, ptr %.011.ptr.8, align 8    ; 2 uses
  %.not1315.8 = icmp eq ptr %.014.8, null
  br i1 %.not1315.8, label %._crit_edge.8, label %.lr.ph.8

.lr.ph.8:                                         ; preds = %._crit_edge.7, %.lr.ph.8
  %.017.8 = phi ptr [ %.0.8, %.lr.ph.8 ], [ %.014.8, %._crit_edge.7 ] ; 2 uses
  %.116.8 = phi i64 [ %i.bj, %.lr.ph.8 ], [ %.1.lcssa.7, %._crit_edge.7 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.017.8, i64 6
  %i.bf = load i16, ptr %i.be, align 2
  %i.bg = lshr i16 %i.bf, 1
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = add i64 %i.bi, %.116.8                  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.017.8, i64 8
  %.0.8 = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not13.8 = icmp eq ptr %.0.8, null
  br i1 %.not13.8, label %._crit_edge.8, label %.lr.ph.8, !llvm.loop !8

._crit_edge.8:                                    ; preds = %.lr.ph.8, %._crit_edge.7
  %.1.lcssa.8 = phi i64 [ %.1.lcssa.7, %._crit_edge.7 ], [ %i.bj, %.lr.ph.8 ] ; 2 uses
  %.011.ptr.9 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.014.9 = load ptr, ptr %.011.ptr.9, align 8    ; 2 uses
  %.not1315.9 = icmp eq ptr %.014.9, null
  br i1 %.not1315.9, label %._crit_edge.9, label %.lr.ph.9

.lr.ph.9:                                         ; preds = %._crit_edge.8, %.lr.ph.9
  %.017.9 = phi ptr [ %.0.9, %.lr.ph.9 ], [ %.014.9, %._crit_edge.8 ] ; 2 uses
  %.116.9 = phi i64 [ %i.bq, %.lr.ph.9 ], [ %.1.lcssa.8, %._crit_edge.8 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.017.9, i64 6
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = lshr i16 %i.bm, 1
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = add i64 %i.bp, %.116.9                  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.017.9, i64 8
  %.0.9 = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not13.9 = icmp eq ptr %.0.9, null
  br i1 %.not13.9, label %._crit_edge.9, label %.lr.ph.9, !llvm.loop !8

._crit_edge.9:                                    ; preds = %.lr.ph.9, %._crit_edge.8
  %.1.lcssa.9 = phi i64 [ %.1.lcssa.8, %._crit_edge.8 ], [ %i.bq, %.lr.ph.9 ] ; 2 uses
  %.011.ptr.10 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.014.10 = load ptr, ptr %.011.ptr.10, align 8  ; 2 uses
  %.not1315.10 = icmp eq ptr %.014.10, null
  br i1 %.not1315.10, label %._crit_edge.10, label %.lr.ph.10

.lr.ph.10:                                        ; preds = %._crit_edge.9, %.lr.ph.10
  %.017.10 = phi ptr [ %.0.10, %.lr.ph.10 ], [ %.014.10, %._crit_edge.9 ] ; 2 uses
  %.116.10 = phi i64 [ %i.bx, %.lr.ph.10 ], [ %.1.lcssa.9, %._crit_edge.9 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.017.10, i64 6
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = lshr i16 %i.bt, 1
  %i.bv = zext nneg i16 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = add i64 %i.bw, %.116.10                 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.017.10, i64 8
  %.0.10 = load ptr, ptr %i.by, align 8           ; 2 uses
  %.not13.10 = icmp eq ptr %.0.10, null
  br i1 %.not13.10, label %._crit_edge.10, label %.lr.ph.10, !llvm.loop !8

._crit_edge.10:                                   ; preds = %.lr.ph.10, %._crit_edge.9
  %.1.lcssa.10 = phi i64 [ %.1.lcssa.9, %._crit_edge.9 ], [ %i.bx, %.lr.ph.10 ] ; 2 uses
  %.011.ptr.11 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.014.11 = load ptr, ptr %.011.ptr.11, align 8  ; 2 uses
  %.not1315.11 = icmp eq ptr %.014.11, null
  br i1 %.not1315.11, label %._crit_edge.11, label %.lr.ph.11

.lr.ph.11:                                        ; preds = %._crit_edge.10, %.lr.ph.11
  %.017.11 = phi ptr [ %.0.11, %.lr.ph.11 ], [ %.014.11, %._crit_edge.10 ] ; 2 uses
  %.116.11 = phi i64 [ %i.ce, %.lr.ph.11 ], [ %.1.lcssa.10, %._crit_edge.10 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.017.11, i64 6
  %i.ca = load i16, ptr %i.bz, align 2
  %i.cb = lshr i16 %i.ca, 1
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = add i64 %i.cd, %.116.11                 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.017.11, i64 8
  %.0.11 = load ptr, ptr %i.cf, align 8           ; 2 uses
  %.not13.11 = icmp eq ptr %.0.11, null
  br i1 %.not13.11, label %._crit_edge.11, label %.lr.ph.11, !llvm.loop !8

._crit_edge.11:                                   ; preds = %.lr.ph.11, %._crit_edge.10
  %.1.lcssa.11 = phi i64 [ %.1.lcssa.10, %._crit_edge.10 ], [ %i.ce, %.lr.ph.11 ] ; 2 uses
  %.011.ptr.12 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.014.12 = load ptr, ptr %.011.ptr.12, align 8  ; 2 uses
  %.not1315.12 = icmp eq ptr %.014.12, null
  br i1 %.not1315.12, label %._crit_edge.12, label %.lr.ph.12

.lr.ph.12:                                        ; preds = %._crit_edge.11, %.lr.ph.12
  %.017.12 = phi ptr [ %.0.12, %.lr.ph.12 ], [ %.014.12, %._crit_edge.11 ] ; 2 uses
  %.116.12 = phi i64 [ %i.cl, %.lr.ph.12 ], [ %.1.lcssa.11, %._crit_edge.11 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.017.12, i64 6
  %i.ch = load i16, ptr %i.cg, align 2
  %i.ci = lshr i16 %i.ch, 1
  %i.cj = zext nneg i16 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = add i64 %i.ck, %.116.12                 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.017.12, i64 8
  %.0.12 = load ptr, ptr %i.cm, align 8           ; 2 uses
  %.not13.12 = icmp eq ptr %.0.12, null
  br i1 %.not13.12, label %._crit_edge.12, label %.lr.ph.12, !llvm.loop !8

._crit_edge.12:                                   ; preds = %.lr.ph.12, %._crit_edge.11
  %.1.lcssa.12 = phi i64 [ %.1.lcssa.11, %._crit_edge.11 ], [ %i.cl, %.lr.ph.12 ] ; 2 uses
  %.011.ptr.13 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.014.13 = load ptr, ptr %.011.ptr.13, align 8  ; 2 uses
  %.not1315.13 = icmp eq ptr %.014.13, null
  br i1 %.not1315.13, label %._crit_edge.13, label %.lr.ph.13

.lr.ph.13:                                        ; preds = %._crit_edge.12, %.lr.ph.13
  %.017.13 = phi ptr [ %.0.13, %.lr.ph.13 ], [ %.014.13, %._crit_edge.12 ] ; 2 uses
  %.116.13 = phi i64 [ %i.cs, %.lr.ph.13 ], [ %.1.lcssa.12, %._crit_edge.12 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.017.13, i64 6
  %i.co = load i16, ptr %i.cn, align 2
  %i.cp = lshr i16 %i.co, 1
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 3
  %i.cs = add i64 %i.cr, %.116.13                 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.017.13, i64 8
  %.0.13 = load ptr, ptr %i.ct, align 8           ; 2 uses
  %.not13.13 = icmp eq ptr %.0.13, null
  br i1 %.not13.13, label %._crit_edge.13, label %.lr.ph.13, !llvm.loop !8

._crit_edge.13:                                   ; preds = %.lr.ph.13, %._crit_edge.12
  %.1.lcssa.13 = phi i64 [ %.1.lcssa.12, %._crit_edge.12 ], [ %i.cs, %.lr.ph.13 ] ; 2 uses
  %.011.ptr.14 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.014.14 = load ptr, ptr %.011.ptr.14, align 8  ; 2 uses
  %.not1315.14 = icmp eq ptr %.014.14, null
  br i1 %.not1315.14, label %._crit_edge.14, label %.lr.ph.14

.lr.ph.14:                                        ; preds = %._crit_edge.13, %.lr.ph.14
  %.017.14 = phi ptr [ %.0.14, %.lr.ph.14 ], [ %.014.14, %._crit_edge.13 ] ; 2 uses
  %.116.14 = phi i64 [ %i.cz, %.lr.ph.14 ], [ %.1.lcssa.13, %._crit_edge.13 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.017.14, i64 6
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = lshr i16 %i.cv, 1
  %i.cx = zext nneg i16 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = add i64 %i.cy, %.116.14                 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.017.14, i64 8
  %.0.14 = load ptr, ptr %i.da, align 8           ; 2 uses
  %.not13.14 = icmp eq ptr %.0.14, null
  br i1 %.not13.14, label %._crit_edge.14, label %.lr.ph.14, !llvm.loop !8

._crit_edge.14:                                   ; preds = %.lr.ph.14, %._crit_edge.13
  %.1.lcssa.14 = phi i64 [ %.1.lcssa.13, %._crit_edge.13 ], [ %i.cz, %.lr.ph.14 ] ; 2 uses
  %.011.ptr.15 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.014.15 = load ptr, ptr %.011.ptr.15, align 8  ; 2 uses
  %.not1315.15 = icmp eq ptr %.014.15, null
  br i1 %.not1315.15, label %._crit_edge.15, label %.lr.ph.15

.lr.ph.15:                                        ; preds = %._crit_edge.14, %.lr.ph.15
  %.017.15 = phi ptr [ %.0.15, %.lr.ph.15 ], [ %.014.15, %._crit_edge.14 ] ; 2 uses
  %.116.15 = phi i64 [ %i.dg, %.lr.ph.15 ], [ %.1.lcssa.14, %._crit_edge.14 ]
  %i.db = getelementptr inbounds nuw i8, ptr %.017.15, i64 6
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = lshr i16 %i.dc, 1
  %i.de = zext nneg i16 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = add i64 %i.df, %.116.15                 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.017.15, i64 8
  %.0.15 = load ptr, ptr %i.dh, align 8           ; 2 uses
  %.not13.15 = icmp eq ptr %.0.15, null
  br i1 %.not13.15, label %._crit_edge.15, label %.lr.ph.15, !llvm.loop !8

._crit_edge.15:                                   ; preds = %.lr.ph.15, %._crit_edge.14
  %.1.lcssa.15 = phi i64 [ %.1.lcssa.14, %._crit_edge.14 ], [ %i.dg, %.lr.ph.15 ] ; 2 uses
  %.011.ptr.16 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.014.16 = load ptr, ptr %.011.ptr.16, align 8  ; 2 uses
  %.not1315.16 = icmp eq ptr %.014.16, null
  br i1 %.not1315.16, label %._crit_edge.16, label %.lr.ph.16

.lr.ph.16:                                        ; preds = %._crit_edge.15, %.lr.ph.16
  %.017.16 = phi ptr [ %.0.16, %.lr.ph.16 ], [ %.014.16, %._crit_edge.15 ] ; 2 uses
  %.116.16 = phi i64 [ %i.dn, %.lr.ph.16 ], [ %.1.lcssa.15, %._crit_edge.15 ]
  %i.di = getelementptr inbounds nuw i8, ptr %.017.16, i64 6
  %i.dj = load i16, ptr %i.di, align 2
  %i.dk = lshr i16 %i.dj, 1
  %i.dl = zext nneg i16 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 3
  %i.dn = add i64 %i.dm, %.116.16                 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.017.16, i64 8
  %.0.16 = load ptr, ptr %i.do, align 8           ; 2 uses
  %.not13.16 = icmp eq ptr %.0.16, null
  br i1 %.not13.16, label %._crit_edge.16, label %.lr.ph.16, !llvm.loop !8

._crit_edge.16:                                   ; preds = %.lr.ph.16, %._crit_edge.15
  %.1.lcssa.16 = phi i64 [ %.1.lcssa.15, %._crit_edge.15 ], [ %i.dn, %.lr.ph.16 ]
  ret i64 %.1.lcssa.16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK5cppgc8internal8FreeList7IsEmptyEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(280) %0) local_unnamed_addr #7 align 2 {
.lr.ph.i.i.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.029.val32.i.i.i.i = load ptr, ptr %0, align 8
  %.not.i.i.not.i.i.i.i = icmp eq ptr %.029.val32.i.i.i.i, null
  br i1 %.not.i.i.not.i.i.i.i, label %bb.a, label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit"

bb.a:                                             ; preds = %.lr.ph.i.i.i.i
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val31.i.i.i.i = load ptr, ptr %i.b, align 8
  %.not.i.i33.not.i.i.i.i = icmp eq ptr %.val31.i.i.i.i, null
  br i1 %.not.i.i33.not.i.i.i.i, label %bb.b, label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit1"

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val30.i.i.i.i = load ptr, ptr %i.c, align 8
  %.not.i.i34.not.i.i.i.i = icmp eq ptr %.val30.i.i.i.i, null
  br i1 %.not.i.i34.not.i.i.i.i, label %bb.c, label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit3"

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8
  %.not.i.i35.not.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i35.not.i.i.i.i, label %.lr.ph.i.i.i.i.1, label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit5"

.lr.ph.i.i.i.i.1:                                 ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.029.val32.i.i.i.i.1 = load ptr, ptr %i.e, align 8
  %.not.i.i.not.i.i.i.i.1 = icmp eq ptr %.029.val32.i.i.i.i.1, null
  br i1 %.not.i.i.not.i.i.i.i.1, label %bb.d, label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit"

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val31.i.i.i.i.1 = load ptr, ptr %i.f, align 8
  %.not.i.i33.not.i.i.i.i.1 = icmp eq ptr %.val31.i.i.i.i.1, null
  br i1 %.not.i.i33.not.i.i.i.i.1, label %bb.e, label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit1"

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val30.i.i.i.i.1 = load ptr, ptr %i.g, align 8
  %.not.i.i34.not.i.i.i.i.1 = icmp eq ptr %.val30.i.i.i.i.1, null
  br i1 %.not.i.i34.not.i.i.i.i.1, label %bb.f, label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit3"

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i.i.i.i.1 = load ptr, ptr %i.h, align 8
  %.not.i.i35.not.i.i.i.i.1 = icmp eq ptr %.val.i.i.i.i.1, null
  br i1 %.not.i.i35.not.i.i.i.i.1, label %.lr.ph.i.i.i.i.2, label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit5"

.lr.ph.i.i.i.i.2:                                 ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %.029.val32.i.i.i.i.2 = load ptr, ptr %i.i, align 8
  %.not.i.i.not.i.i.i.i.2 = icmp eq ptr %.029.val32.i.i.i.i.2, null
  br i1 %.not.i.i.not.i.i.i.i.2, label %bb.g, label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit"

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val31.i.i.i.i.2 = load ptr, ptr %i.j, align 8
  %.not.i.i33.not.i.i.i.i.2 = icmp eq ptr %.val31.i.i.i.i.2, null
  br i1 %.not.i.i33.not.i.i.i.i.2, label %bb.h, label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit1"

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val30.i.i.i.i.2 = load ptr, ptr %i.k, align 8
  %.not.i.i34.not.i.i.i.i.2 = icmp eq ptr %.val30.i.i.i.i.2, null
  br i1 %.not.i.i34.not.i.i.i.i.2, label %bb.i, label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit3"

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i.i.i.i.2 = load ptr, ptr %i.l, align 8
  %.not.i.i35.not.i.i.i.i.2 = icmp eq ptr %.val.i.i.i.i.2, null
  br i1 %.not.i.i35.not.i.i.i.i.2, label %.lr.ph.i.i.i.i.3, label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit5"

.lr.ph.i.i.i.i.3:                                 ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %.029.val32.i.i.i.i.3 = load ptr, ptr %i.m, align 8
  %.not.i.i.not.i.i.i.i.3 = icmp eq ptr %.029.val32.i.i.i.i.3, null
  br i1 %.not.i.i.not.i.i.i.i.3, label %bb.j, label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit"

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val31.i.i.i.i.3 = load ptr, ptr %i.n, align 8
  %.not.i.i33.not.i.i.i.i.3 = icmp eq ptr %.val31.i.i.i.i.3, null
  br i1 %.not.i.i33.not.i.i.i.i.3, label %bb.k, label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit1"

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val30.i.i.i.i.3 = load ptr, ptr %i.o, align 8
  %.not.i.i34.not.i.i.i.i.3 = icmp eq ptr %.val30.i.i.i.i.3, null
  br i1 %.not.i.i34.not.i.i.i.i.3, label %bb.l, label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit3"

bb.l:                                             ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i.i.i.i.3 = load ptr, ptr %i.p, align 8
  %.not.i.i35.not.i.i.i.i.3 = icmp eq ptr %.val.i.i.i.i.3, null
  br i1 %.not.i.i35.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit5"

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.l
  %.2.val.i.i.i.i = load ptr, ptr %scevgep.i.i.i.i, align 8
  %.not.i.i38.not.i.i.i.i = icmp eq ptr %.2.val.i.i.i.i, null
  %spec.select = select i1 %.not.i.i38.not.i.i.i.i, ptr %i.a, ptr %scevgep.i.i.i.i
  br label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit"

"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit1": ; preds = %bb.j, %bb.g, %bb.d, %bb.a
  %.02949.i.i.i.i.lcssa9 = phi ptr [ %0, %bb.a ], [ %i.e, %bb.d ], [ %i.i, %bb.g ], [ %i.m, %bb.j ]
  %i.q = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.lcssa9, i64 8
  br label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit"

"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit3": ; preds = %bb.k, %bb.h, %bb.e, %bb.b
  %.02949.i.i.i.i.lcssa10 = phi ptr [ %0, %bb.b ], [ %i.e, %bb.e ], [ %i.i, %bb.h ], [ %i.m, %bb.k ]
  %i.r = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.lcssa10, i64 16
  br label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit"

"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit5": ; preds = %bb.l, %bb.i, %bb.f, %bb.c
  %.02949.i.i.i.i.lcssa11 = phi ptr [ %0, %bb.c ], [ %i.e, %bb.f ], [ %i.i, %bb.i ], [ %i.m, %bb.l ]
  %i.s = getelementptr inbounds nuw i8, ptr %.02949.i.i.i.i.lcssa11, i64 24
  br label %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit"

"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit": ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit1", %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit3", %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit5", %._crit_edge.loopexit.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %spec.select, %._crit_edge.loopexit.i.i.i.i ], [ %i.q, %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit1" ], [ %i.s, %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit5" ], [ %i.r, %"_ZSt6all_ofIPKPN5cppgc8internal8FreeList5EntryEZNKS2_7IsEmptyEvE3$_0EbT_S8_T0_.exit.loopexit.split.loop.exit3" ], [ %0, %.lr.ph.i.i.i.i ], [ %i.e, %.lr.ph.i.i.i.i.1 ], [ %i.i, %.lr.ph.i.i.i.i.2 ], [ %i.m, %.lr.ph.i.i.i.i.3 ]
  %i.t = icmp eq ptr %i.a, %.028.i.i.i.i
  ret i1 %i.t
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK5cppgc8internal8FreeList18ContainsForTestingENS1_5BlockE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr nofree readnone captures(address) %1, i64 %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 17 uses
  %.032 = load ptr, ptr %0, align 8               ; 2 uses
  %.not2333 = icmp eq ptr %.032, null
  br i1 %.not2333, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.034 = phi ptr [ %.0, %bb.c ], [ %.032, %bb.a ] ; 4 uses
  %.not24 = icmp ugt ptr %.034, %1
  br i1 %.not24, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.034, i64 6
  %i.c = load i16, ptr %i.b, align 2
  %i.d = lshr i16 %i.c, 1
  %i.e = zext nneg i16 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %.034, i64 %i.f
  %.not25 = icmp ugt ptr %i.a, %i.g
  br i1 %.not25, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.034, i64 8
  %.0 = load ptr, ptr %i.h, align 8               ; 2 uses
  %.not23 = icmp eq ptr %.0, null
  br i1 %.not23, label %._crit_edge, label %.lr.ph, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.019.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.032.1 = load ptr, ptr %.019.ptr.1, align 8    ; 2 uses
  %.not2333.1 = icmp eq ptr %.032.1, null
  br i1 %.not2333.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %._crit_edge, %bb.e
  %.034.1 = phi ptr [ %.0.1, %bb.e ], [ %.032.1, %._crit_edge ] ; 4 uses
  %.not24.1 = icmp ugt ptr %.034.1, %1
  br i1 %.not24.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.i = getelementptr inbounds nuw i8, ptr %.034.1, i64 6
  %i.j = load i16, ptr %i.i, align 2
  %i.k = lshr i16 %i.j, 1
  %i.l = zext nneg i16 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = getelementptr inbounds nuw i8, ptr %.034.1, i64 %i.m
  %.not25.1 = icmp ugt ptr %i.a, %i.n
  br i1 %.not25.1, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %.lr.ph.1
  %i.o = getelementptr inbounds nuw i8, ptr %.034.1, i64 8
  %.0.1 = load ptr, ptr %i.o, align 8             ; 2 uses
  %.not23.1 = icmp eq ptr %.0.1, null
  br i1 %.not23.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !9

._crit_edge.1:                                    ; preds = %bb.e, %._crit_edge
  %.019.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.032.2 = load ptr, ptr %.019.ptr.2, align 8    ; 2 uses
  %.not2333.2 = icmp eq ptr %.032.2, null
  br i1 %.not2333.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %._crit_edge.1, %bb.g
  %.034.2 = phi ptr [ %.0.2, %bb.g ], [ %.032.2, %._crit_edge.1 ] ; 4 uses
  %.not24.2 = icmp ugt ptr %.034.2, %1
  br i1 %.not24.2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.2
  %i.p = getelementptr inbounds nuw i8, ptr %.034.2, i64 6
  %i.q = load i16, ptr %i.p, align 2
  %i.r = lshr i16 %i.q, 1
  %i.s = zext nneg i16 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = getelementptr inbounds nuw i8, ptr %.034.2, i64 %i.t
  %.not25.2 = icmp ugt ptr %i.a, %i.u
  br i1 %.not25.2, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f, %.lr.ph.2
  %i.v = getelementptr inbounds nuw i8, ptr %.034.2, i64 8
  %.0.2 = load ptr, ptr %i.v, align 8             ; 2 uses
  %.not23.2 = icmp eq ptr %.0.2, null
  br i1 %.not23.2, label %._crit_edge.2, label %.lr.ph.2, !llvm.loop !9

._crit_edge.2:                                    ; preds = %bb.g, %._crit_edge.1
  %.019.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.032.3 = load ptr, ptr %.019.ptr.3, align 8    ; 2 uses
  %.not2333.3 = icmp eq ptr %.032.3, null
  br i1 %.not2333.3, label %._crit_edge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %._crit_edge.2, %bb.i
  %.034.3 = phi ptr [ %.0.3, %bb.i ], [ %.032.3, %._crit_edge.2 ] ; 4 uses
  %.not24.3 = icmp ugt ptr %.034.3, %1
  br i1 %.not24.3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.3
  %i.w = getelementptr inbounds nuw i8, ptr %.034.3, i64 6
  %i.x = load i16, ptr %i.w, align 2
  %i.y = lshr i16 %i.x, 1
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %.034.3, i64 %i.aa
  %.not25.3 = icmp ugt ptr %i.a, %i.ab
  br i1 %.not25.3, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h, %.lr.ph.3
  %i.ac = getelementptr inbounds nuw i8, ptr %.034.3, i64 8
  %.0.3 = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not23.3 = icmp eq ptr %.0.3, null
  br i1 %.not23.3, label %._crit_edge.3, label %.lr.ph.3, !llvm.loop !9

._crit_edge.3:                                    ; preds = %bb.i, %._crit_edge.2
  %.019.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.032.4 = load ptr, ptr %.019.ptr.4, align 8    ; 2 uses
  %.not2333.4 = icmp eq ptr %.032.4, null
  br i1 %.not2333.4, label %._crit_edge.4, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %._crit_edge.3, %bb.k
  %.034.4 = phi ptr [ %.0.4, %bb.k ], [ %.032.4, %._crit_edge.3 ] ; 4 uses
  %.not24.4 = icmp ugt ptr %.034.4, %1
  br i1 %.not24.4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.4
  %i.ad = getelementptr inbounds nuw i8, ptr %.034.4, i64 6
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = lshr i16 %i.ae, 1
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = getelementptr inbounds nuw i8, ptr %.034.4, i64 %i.ah
  %.not25.4 = icmp ugt ptr %i.a, %i.ai
  br i1 %.not25.4, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %.lr.ph.4
  %i.aj = getelementptr inbounds nuw i8, ptr %.034.4, i64 8
  %.0.4 = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not23.4 = icmp eq ptr %.0.4, null
  br i1 %.not23.4, label %._crit_edge.4, label %.lr.ph.4, !llvm.loop !9

._crit_edge.4:                                    ; preds = %bb.k, %._crit_edge.3
  %.019.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.032.5 = load ptr, ptr %.019.ptr.5, align 8    ; 2 uses
  %.not2333.5 = icmp eq ptr %.032.5, null
  br i1 %.not2333.5, label %._crit_edge.5, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %._crit_edge.4, %bb.m
  %.034.5 = phi ptr [ %.0.5, %bb.m ], [ %.032.5, %._crit_edge.4 ] ; 4 uses
  %.not24.5 = icmp ugt ptr %.034.5, %1
  br i1 %.not24.5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.5
  %i.ak = getelementptr inbounds nuw i8, ptr %.034.5, i64 6
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = lshr i16 %i.al, 1
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.034.5, i64 %i.ao
  %.not25.5 = icmp ugt ptr %i.a, %i.ap
  br i1 %.not25.5, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l, %.lr.ph.5
  %i.aq = getelementptr inbounds nuw i8, ptr %.034.5, i64 8
  %.0.5 = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not23.5 = icmp eq ptr %.0.5, null
  br i1 %.not23.5, label %._crit_edge.5, label %.lr.ph.5, !llvm.loop !9

._crit_edge.5:                                    ; preds = %bb.m, %._crit_edge.4
  %.019.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.032.6 = load ptr, ptr %.019.ptr.6, align 8    ; 2 uses
  %.not2333.6 = icmp eq ptr %.032.6, null
  br i1 %.not2333.6, label %._crit_edge.6, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %._crit_edge.5, %bb.o
  %.034.6 = phi ptr [ %.0.6, %bb.o ], [ %.032.6, %._crit_edge.5 ] ; 4 uses
  %.not24.6 = icmp ugt ptr %.034.6, %1
  br i1 %.not24.6, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.6
  %i.ar = getelementptr inbounds nuw i8, ptr %.034.6, i64 6
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = lshr i16 %i.as, 1
  %i.au = zext nneg i16 %i.at to i64
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %.034.6, i64 %i.av
  %.not25.6 = icmp ugt ptr %i.a, %i.aw
  br i1 %.not25.6, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n, %.lr.ph.6
  %i.ax = getelementptr inbounds nuw i8, ptr %.034.6, i64 8
  %.0.6 = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not23.6 = icmp eq ptr %.0.6, null
  br i1 %.not23.6, label %._crit_edge.6, label %.lr.ph.6, !llvm.loop !9

._crit_edge.6:                                    ; preds = %bb.o, %._crit_edge.5
  %.019.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.032.7 = load ptr, ptr %.019.ptr.7, align 8    ; 2 uses
  %.not2333.7 = icmp eq ptr %.032.7, null
  br i1 %.not2333.7, label %._crit_edge.7, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %._crit_edge.6, %bb.q
  %.034.7 = phi ptr [ %.0.7, %bb.q ], [ %.032.7, %._crit_edge.6 ] ; 4 uses
  %.not24.7 = icmp ugt ptr %.034.7, %1
  br i1 %.not24.7, label %bb.q, label %bb.p

end_hunk_0
begin_hunk_1_@_ZNK5cppgc8internal8FreeList18ContainsForTestingENS1_5BlockE:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %.034.9, i64 8
  %.0.9 = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not23.9 = icmp eq ptr %.0.9, null
  br i1 %.not23.9, label %._crit_edge.9, label %.lr.ph.9, !llvm.loop !9

._crit_edge.9:                                    ; preds = %bb.u, %._crit_edge.8
  %.019.ptr.10 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.032.10 = load ptr, ptr %.019.ptr.10, align 8  ; 2 uses
  %.not2333.10 = icmp eq ptr %.032.10, null
  br i1 %.not2333.10, label %._crit_edge.10, label %.lr.ph.10

.lr.ph.10:                                        ; preds = %._crit_edge.9, %bb.w
  %.034.10 = phi ptr [ %.0.10, %bb.w ], [ %.032.10, %._crit_edge.9 ] ; 4 uses
  %.not24.10 = icmp ugt ptr %.034.10, %1
  br i1 %.not24.10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.10
  %i.bt = getelementptr inbounds nuw i8, ptr %.034.10, i64 6
  %i.bu = load i16, ptr %i.bt, align 2
  %i.bv = lshr i16 %i.bu, 1
  %i.bw = zext nneg i16 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = getelementptr inbounds nuw i8, ptr %.034.10, i64 %i.bx
  %.not25.10 = icmp ugt ptr %i.a, %i.by
  br i1 %.not25.10, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v, %.lr.ph.10
  %i.bz = getelementptr inbounds nuw i8, ptr %.034.10, i64 8
  %.0.10 = load ptr, ptr %i.bz, align 8           ; 2 uses
  %.not23.10 = icmp eq ptr %.0.10, null
  br i1 %.not23.10, label %._crit_edge.10, label %.lr.ph.10, !llvm.loop !9

._crit_edge.10:                                   ; preds = %bb.w, %._crit_edge.9
  %.019.ptr.11 = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.032.11 = load ptr, ptr %.019.ptr.11, align 8  ; 2 uses
  %.not2333.11 = icmp eq ptr %.032.11, null
  br i1 %.not2333.11, label %._crit_edge.11, label %.lr.ph.11

.lr.ph.11:                                        ; preds = %._crit_edge.10, %bb.y
  %.034.11 = phi ptr [ %.0.11, %bb.y ], [ %.032.11, %._crit_edge.10 ] ; 4 uses
  %.not24.11 = icmp ugt ptr %.034.11, %1
  br i1 %.not24.11, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.11
  %i.ca = getelementptr inbounds nuw i8, ptr %.034.11, i64 6
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = lshr i16 %i.cb, 1
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = getelementptr inbounds nuw i8, ptr %.034.11, i64 %i.ce
  %.not25.11 = icmp ugt ptr %i.a, %i.cf
  br i1 %.not25.11, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x, %.lr.ph.11
  %i.cg = getelementptr inbounds nuw i8, ptr %.034.11, i64 8
  %.0.11 = load ptr, ptr %i.cg, align 8           ; 2 uses
  %.not23.11 = icmp eq ptr %.0.11, null
  br i1 %.not23.11, label %._crit_edge.11, label %.lr.ph.11, !llvm.loop !9

._crit_edge.11:                                   ; preds = %bb.y, %._crit_edge.10
  %.019.ptr.12 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.032.12 = load ptr, ptr %.019.ptr.12, align 8  ; 2 uses
  %.not2333.12 = icmp eq ptr %.032.12, null
  br i1 %.not2333.12, label %._crit_edge.12, label %.lr.ph.12

.lr.ph.12:                                        ; preds = %._crit_edge.11, %bb.aa
  %.034.12 = phi ptr [ %.0.12, %bb.aa ], [ %.032.12, %._crit_edge.11 ] ; 4 uses
  %.not24.12 = icmp ugt ptr %.034.12, %1
  br i1 %.not24.12, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.12
  %i.ch = getelementptr inbounds nuw i8, ptr %.034.12, i64 6
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = lshr i16 %i.ci, 1
  %i.ck = zext nneg i16 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %.034.12, i64 %i.cl
  %.not25.12 = icmp ugt ptr %i.a, %i.cm
  br i1 %.not25.12, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z, %.lr.ph.12
  %i.cn = getelementptr inbounds nuw i8, ptr %.034.12, i64 8
  %.0.12 = load ptr, ptr %i.cn, align 8           ; 2 uses
  %.not23.12 = icmp eq ptr %.0.12, null
  br i1 %.not23.12, label %._crit_edge.12, label %.lr.ph.12, !llvm.loop !9

._crit_edge.12:                                   ; preds = %bb.aa, %._crit_edge.11
  %.019.ptr.13 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.032.13 = load ptr, ptr %.019.ptr.13, align 8  ; 2 uses
  %.not2333.13 = icmp eq ptr %.032.13, null
  br i1 %.not2333.13, label %._crit_edge.13, label %.lr.ph.13

.lr.ph.13:                                        ; preds = %._crit_edge.12, %bb.ac
  %.034.13 = phi ptr [ %.0.13, %bb.ac ], [ %.032.13, %._crit_edge.12 ] ; 4 uses
  %.not24.13 = icmp ugt ptr %.034.13, %1
  br i1 %.not24.13, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.13
  %i.co = getelementptr inbounds nuw i8, ptr %.034.13, i64 6
  %i.cp = load i16, ptr %i.co, align 2
  %i.cq = lshr i16 %i.cp, 1
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %.034.13, i64 %i.cs
  %.not25.13 = icmp ugt ptr %i.a, %i.ct
  br i1 %.not25.13, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.13
  %i.cu = getelementptr inbounds nuw i8, ptr %.034.13, i64 8
  %.0.13 = load ptr, ptr %i.cu, align 8           ; 2 uses
  %.not23.13 = icmp eq ptr %.0.13, null
  br i1 %.not23.13, label %._crit_edge.13, label %.lr.ph.13, !llvm.loop !9

._crit_edge.13:                                   ; preds = %bb.ac, %._crit_edge.12
  %.019.ptr.14 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.032.14 = load ptr, ptr %.019.ptr.14, align 8  ; 2 uses
  %.not2333.14 = icmp eq ptr %.032.14, null
  br i1 %.not2333.14, label %._crit_edge.14, label %.lr.ph.14

.lr.ph.14:                                        ; preds = %._crit_edge.13, %bb.ae
  %.034.14 = phi ptr [ %.0.14, %bb.ae ], [ %.032.14, %._crit_edge.13 ] ; 4 uses
  %.not24.14 = icmp ugt ptr %.034.14, %1
  br i1 %.not24.14, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.14
  %i.cv = getelementptr inbounds nuw i8, ptr %.034.14, i64 6
  %i.cw = load i16, ptr %i.cv, align 2
  %i.cx = lshr i16 %i.cw, 1
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = getelementptr inbounds nuw i8, ptr %.034.14, i64 %i.cz
  %.not25.14 = icmp ugt ptr %i.a, %i.da
  br i1 %.not25.14, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.14
  %i.db = getelementptr inbounds nuw i8, ptr %.034.14, i64 8
  %.0.14 = load ptr, ptr %i.db, align 8           ; 2 uses
  %.not23.14 = icmp eq ptr %.0.14, null
  br i1 %.not23.14, label %._crit_edge.14, label %.lr.ph.14, !llvm.loop !9

._crit_edge.14:                                   ; preds = %bb.ae, %._crit_edge.13
  %.019.ptr.15 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.032.15 = load ptr, ptr %.019.ptr.15, align 8  ; 2 uses
  %.not2333.15 = icmp eq ptr %.032.15, null
  br i1 %.not2333.15, label %._crit_edge.15, label %.lr.ph.15

.lr.ph.15:                                        ; preds = %._crit_edge.14, %bb.ag
  %.034.15 = phi ptr [ %.0.15, %bb.ag ], [ %.032.15, %._crit_edge.14 ] ; 4 uses
  %.not24.15 = icmp ugt ptr %.034.15, %1
  br i1 %.not24.15, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.15
  %i.dc = getelementptr inbounds nuw i8, ptr %.034.15, i64 6
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = lshr i16 %i.dd, 1
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 3
  %i.dh = getelementptr inbounds nuw i8, ptr %.034.15, i64 %i.dg
  %.not25.15 = icmp ugt ptr %i.a, %i.dh
  br i1 %.not25.15, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af, %.lr.ph.15
  %i.di = getelementptr inbounds nuw i8, ptr %.034.15, i64 8
  %.0.15 = load ptr, ptr %i.di, align 8           ; 2 uses
  %.not23.15 = icmp eq ptr %.0.15, null
  br i1 %.not23.15, label %._crit_edge.15, label %.lr.ph.15, !llvm.loop !9

._crit_edge.15:                                   ; preds = %bb.ag, %._crit_edge.14
  %.019.ptr.16 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.032.16 = load ptr, ptr %.019.ptr.16, align 8  ; 2 uses
  %.not2333.16 = icmp eq ptr %.032.16, null
  br i1 %.not2333.16, label %.loopexit, label %.lr.ph.16

.lr.ph.16:                                        ; preds = %._crit_edge.15, %bb.ai
  %.034.16 = phi ptr [ %.0.16, %bb.ai ], [ %.032.16, %._crit_edge.15 ] ; 4 uses
  %.not24.16 = icmp ugt ptr %.034.16, %1
  br i1 %.not24.16, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.16
  %i.dj = getelementptr inbounds nuw i8, ptr %.034.16, i64 6
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = lshr i16 %i.dk, 1
  %i.dm = zext nneg i16 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 3
  %i.do = getelementptr inbounds nuw i8, ptr %.034.16, i64 %i.dn
  %.not25.16 = icmp ugt ptr %i.a, %i.do
  br i1 %.not25.16, label %bb.ai, label %.loopexit

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.16
  %i.dp = getelementptr inbounds nuw i8, ptr %.034.16, i64 8
  %.0.16 = load ptr, ptr %i.dp, align 8           ; 2 uses
  %.not23.16 = icmp eq ptr %.0.16, null
  br i1 %.not23.16, label %.loopexit, label %.lr.ph.16, !llvm.loop !9

.loopexit:                                        ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.af, %bb.ah, %bb.ai, %._crit_edge.15
  %.not31 = phi i1 [ false, %._crit_edge.15 ], [ true, %bb.p ], [ true, %bb.n ], [ true, %bb.l ], [ true, %bb.j ], [ true, %bb.h ], [ true, %bb.f ], [ true, %bb.d ], [ false, %bb.ai ], [ true, %bb.af ], [ true, %bb.ad ], [ true, %bb.ab ], [ true, %bb.z ], [ true, %bb.x ], [ true, %bb.v ], [ true, %bb.t ], [ true, %bb.r ], [ true, %bb.ah ], [ true, %bb.b ]
  ret i1 %.not31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK5cppgc8internal8FreeList12IsConsistentEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, i64 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null                  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not5 = icmp eq ptr %i.e, null                 ; 2 uses
  %brmerge = select i1 %.not, i1 true, i1 %.not5
  %.not5.mux = select i1 %.not, i1 %.not5, i1 false
  br i1 %brmerge, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %.not8 = icmp eq ptr %i.g, null
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.h = phi i1 [ %.not8, %bb.b ], [ %.not5.mux, %bb.a ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN5cppgc8internal8FreeList17CollectStatisticsERNS_14HeapStatistics18FreeListStatisticsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit21
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt6vectorImSaImEE9push_backERKm.exit21
  %.01337 = phi i64 [ 0, %bb.a ], [ %i.cb, %_ZNSt6vectorImSaImEE9push_backERKm.exit21 ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01337
  %.031 = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not32 = icmp eq ptr %.031, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.030.lcssa = phi i64 [ 0, %bb.c ], [ %i.cc, %.lr.ph ] ; 2 uses
  %.029.lcssa = phi i64 [ 0, %bb.c ], [ %i.ci, %.lr.ph ] ; 2 uses
  %i.j = shl nuw nsw i64 1, %.01337               ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.l = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  store i64 %i.j, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.c, align 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.e:                                             ; preds = %._crit_edge
  %i.o = load ptr, ptr %1, align 8                ; 4 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #17 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store i64 %i.j, ptr %i.aa, align 8
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.ad = load ptr, ptr %i.d, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.af) #18
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.z, ptr %1, align 8
  store ptr %i.ac, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ag, ptr %i.d, align 8
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.d, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %i.ah = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.ai = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  store i64 %.030.lcssa, ptr %i.ah, align 8
  %i.aj = load ptr, ptr %i.e, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %i.e, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.al = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.k, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #17 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  store i64 %.030.lcssa, ptr %i.ax, align 8
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.l, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.ba = load ptr, ptr %i.f, align 8
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.bc) #18
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.aw, ptr %i.a, align 8
  store ptr %i.az, ptr %i.e, align 8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.bd, ptr %i.f, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %bb.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.be = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.bf = load ptr, ptr %i.h, align 8
  %.not.i14 = icmp eq ptr %i.be, %i.bf
  br i1 %.not.i14, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  store i64 %.029.lcssa, ptr %i.be, align 8
  %i.bg = load ptr, ptr %i.g, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %i.g, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit21

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.bi = load ptr, ptr %i.b, align 8             ; 4 uses
  %i.bj = ptrtoint ptr %i.be to i64
  %i.bk = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 5 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bm, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i15

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i15: ; preds = %bb.o
  %i.bn = ashr exact i64 %i.bl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i16 = tail call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i16, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 1152921504606846975)
  %i.br = select i1 %i.bp, i64 1152921504606846975, i64 %i.bq ; 3 uses
  %.not.i.i.i17 = icmp ne i64 %i.br, 0
  tail call void @llvm.assume(i1 %.not.i.i.i17)
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #17 ; 4 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.bl ; 2 uses
  store i64 %.029.lcssa, ptr %i.bu, align 8
  %i.bv = icmp sgt i64 %i.bl, 0
  br i1 %i.bv, label %bb.q, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i18

bb.q:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i15
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bt, ptr align 8 %i.bi, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i18

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i18: ; preds = %bb.q, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.not.i17.i.i19 = icmp eq ptr %i.bi, null
  br i1 %.not.i17.i.i19, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i20, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i18
  %i.bx = load ptr, ptr %i.h, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bz) #18
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i20

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i20: ; preds = %bb.r, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i18
  store ptr %i.bt, ptr %i.b, align 8
  store ptr %i.bw, ptr %i.g, align 8
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.br
  store ptr %i.ca, ptr %i.h, align 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit21

_ZNSt6vectorImSaImEE9push_backERKm.exit21:        ; preds = %bb.n, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i20
  %i.cb = add nuw nsw i64 %.01337, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, 17
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !10

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.035 = phi ptr [ %.0, %.lr.ph ], [ %.031, %bb.c ] ; 2 uses
  %.02934 = phi i64 [ %i.ci, %.lr.ph ], [ 0, %bb.c ]
  %.03033 = phi i64 [ %i.cc, %.lr.ph ], [ 0, %bb.c ]
  %i.cc = add i64 %.03033, 1                      ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.035, i64 6
  %i.ce = load i16, ptr %i.cd, align 2
  %i.cf = lshr i16 %i.ce, 1
  %i.cg = zext nneg i16 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = add i64 %i.ch, %.02934                  ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.035, i64 8
  %.0 = load ptr, ptr %i.cj, align 8              ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind allocsize(0) }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{!0, !6}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
end_hunk_1
