inline.NumInlined: 49
inline.NumDeleted: 27
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

$_ZNK2v88internal13LiteralBuffer11InternalizeINS0_7IsolateEEENS0_12DirectHandleINS0_6StringEEEPT_ = comdat any

$_ZNK2v88internal13LiteralBuffer11InternalizeINS0_12LocalIsolateEEENS0_12DirectHandleINS0_6StringEEEPT_ = comdat any

@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"std::numeric_limits<int>::max() >= length_\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZNK2v88internal13LiteralBuffer11InternalizeINS0_7IsolateEEENS0_12DirectHandleINS0_6StringEEEPT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %i.f to i64
  %i.h = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKhEEb(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %i.d, i64 %i.g, i1 noundef zeroext false) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = ashr i32 %i.f, 1
  %i.j = sext i32 %i.i to i64
  %i.k = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKtEEb(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %i.d, i64 %i.j, i1 noundef zeroext false) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.c ]
  ret ptr %.sroa.0.0
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKhEEb(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKtEEb(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZNK2v88internal13LiteralBuffer11InternalizeINS0_12LocalIsolateEEENS0_12DirectHandleINS0_6StringEEEPT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i8, ptr %i.a, align 4, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %i.f to i64
  %i.h = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE17InternalizeStringENS_4base6VectorIKhEEb(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %i.d, i64 %i.g, i1 noundef zeroext false) #9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = ashr i32 %i.f, 1
  %i.j = sext i32 %i.i to i64
  %i.k = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE17InternalizeStringENS_4base6VectorIKtEEb(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr %i.d, i64 %i.j, i1 noundef zeroext false) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.c ]
  ret ptr %.sroa.0.0
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE17InternalizeStringENS_4base6VectorIKhEEb(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE17InternalizeStringENS_4base6VectorIKtEEb(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZN2v88internal13LiteralBuffer11NewCapacityEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 349525
  %i.b = shl nsw i32 %1, 2
  %i.c = add nuw nsw i32 %1, 1048576
  %i.d = select i1 %i.a, i32 %i.b, i32 %i.c
  ret i32 %i.d
}

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden preserve_mostcc void @_ZN2v88internal13LiteralBuffer12ExpandBufferEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIhE6lengthEv.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v84base6VectorIhE6lengthEv.exit:             ; preds = %bb.a
  %1 = trunc nuw nsw i64 %i.b to i32
  %2 = tail call i32 @llvm.umax.i32(i32 %1, i32 256) ; 2 uses
  %i.d = icmp samesign ult i64 %i.b, 349525
  %3 = shl nsw i32 %2, 2
  %4 = add nuw nsw i32 %2, 1048576
  %5 = select i1 %i.d, i32 %3, i32 %4
  %6 = zext nneg i32 %5 to i64                    ; 2 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %6) #11 ; 18 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp sgt i32 %i.g, 0
  %i.i = load ptr, ptr %0, align 8                ; 19 uses
  br i1 %i.h, label %bb.c, label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.c:                                             ; preds = %_ZNK2v84base6VectorIhE6lengthEv.exit
  switch i32 %i.g, label %bb.t [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.n
    i32 12, label %bb.o
    i32 13, label %bb.p
    i32 14, label %bb.q
    i32 15, label %bb.r
    i32 16, label %bb.s
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.i, align 1
  store i8 %i.j, ptr %i.e, align 1
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.k = load i16, ptr %i.i, align 1
  store i16 %i.k, ptr %i.e, align 1
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.e, ptr noundef nonnull align 1 dereferenceable(3) %i.i, i64 3, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

bb.g:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.i, align 1
  store i32 %i.l, ptr %i.e, align 1
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.e, ptr noundef nonnull align 1 dereferenceable(5) %i.i, i64 5, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

bb.i:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.e, ptr noundef nonnull align 1 dereferenceable(6) %i.i, i64 6, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

bb.j:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.e, ptr noundef nonnull align 1 dereferenceable(7) %i.i, i64 7, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

bb.k:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.i, align 1
  store i64 %i.m, ptr %i.e, align 1
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

bb.l:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.e, ptr noundef nonnull align 1 dereferenceable(9) %i.i, i64 9, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

bb.m:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, ptr noundef nonnull align 1 dereferenceable(10) %i.i, i64 10, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

bb.n:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.e, ptr noundef nonnull align 1 dereferenceable(11) %i.i, i64 11, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

bb.o:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.e, ptr noundef nonnull align 1 dereferenceable(12) %i.i, i64 12, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

bb.p:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.e, ptr noundef nonnull align 1 dereferenceable(13) %i.i, i64 13, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

bb.q:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.e, ptr noundef nonnull align 1 dereferenceable(14) %i.i, i64 14, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

bb.r:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.e, ptr noundef nonnull align 1 dereferenceable(15) %i.i, i64 15, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

bb.s:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(16) %i.i, i64 16, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

bb.t:                                             ; preds = %bb.c
  %i.n = zext nneg i32 %i.g to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr align 1 %i.i, i64 %i.n, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

_ZN2v88internal7MemCopyEPvPKvm.exit:              ; preds = %_ZNK2v84base6VectorIhE6lengthEv.exit, %bb.t
  %i.o = icmp eq ptr %i.i, null
  br i1 %i.o, label %_ZN2v84base6VectorIhE7DisposeEv.exit, label %_ZN2v88internal7MemCopyEPvPKvm.exit.thread

_ZN2v88internal7MemCopyEPvPKvm.exit.thread:       ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %_ZN2v88internal7MemCopyEPvPKvm.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #12
  br label %_ZN2v84base6VectorIhE7DisposeEv.exit

_ZN2v84base6VectorIhE7DisposeEv.exit:             ; preds = %_ZN2v88internal7MemCopyEPvPKvm.exit, %_ZN2v88internal7MemCopyEPvPKvm.exit.thread
  store ptr %i.e, ptr %0, align 8
  store i64 %6, ptr %i.a, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13LiteralBuffer16ConvertToTwoByteEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 6 uses
  %i.c = shl nsw i32 %i.b, 1                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp ult i64 %i.e, 2147483648
  br i1 %i.f, label %_ZNK2v84base6VectorIhE6lengthEv.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v84base6VectorIhE6lengthEv.exit:             ; preds = %bb.a
  %i.g = trunc nuw nsw i64 %i.e to i32
  %.not = icmp slt i32 %i.c, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK2v84base6VectorIhE6lengthEv.exit
  %i.h = icmp samesign ult i32 %i.c, 349525
  %i.i = shl nsw i32 %i.b, 3
  %i.j = add nuw nsw i32 %i.c, 1048576
  %i.k = select i1 %i.h, i32 %i.i, i32 %i.j
  %i.l = zext nneg i32 %i.k to i64                ; 2 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #11
  %.pre = load ptr, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %_ZNK2v84base6VectorIhE6lengthEv.exit
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi ptr [ %.sroa.0.0.copyload, %bb.d ], [ %.pre, %bb.c ] ; 6 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.d ], [ %i.m, %bb.c ] ; 7 uses
  %.sroa.8.0 = phi i64 [ %i.e, %bb.d ], [ %i.l, %bb.c ]
  %i.o = icmp sgt i32 %i.b, 0
  br i1 %i.o, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.e
  %i.p = zext nneg i32 %i.b to i64                ; 13 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.q = shl nuw nsw i64 %i.p, 1
  %scevgep = getelementptr i8, ptr %.sroa.0.0, i64 %i.q
  %scevgep21 = getelementptr i8, ptr %i.n, i64 %i.p
  %bound0 = icmp ult ptr %.sroa.0.0, %scevgep21
  %bound1 = icmp ult ptr %i.n, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check22 = icmp ult i32 %i.b, 16
  br i1 %min.iters.check22, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %i.p, 8
  %n.vec = and i64 %i.p, 2147483632               ; 3 uses
  %i.s = and i64 %i.p, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = xor i64 %index, -1
  %i.u = add i64 %i.t, %i.p                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -7
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -15
  %wide.load = load <8 x i8>, ptr %i.w, align 1, !alias.scope !8
  %wide.load23 = load <8 x i8>, ptr %i.x, align 1, !alias.scope !8
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0, i64 %i.u ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -14
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -30
  %reverse25 = zext <8 x i8> %wide.load to <8 x i16>
  %reverse26 = zext <8 x i8> %wide.load23 to <8 x i16>
  store <8 x i16> %reverse25, ptr %i.z, align 2, !alias.scope !11, !noalias !8
  store <8 x i16> %reverse26, ptr %i.aa, align 2, !alias.scope !11, !noalias !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.p
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec27 = and i64 %i.p, 2147483640             ; 2 uses
  %i.ac = and i64 %i.p, 7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index28 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = xor i64 %index28, -1
  %i.ae = add i64 %i.ad, %i.p                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -7
  %wide.load29 = load <8 x i8>, ptr %i.ag, align 1, !alias.scope !8
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0, i64 %i.ae
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -14
  %reverse31 = zext <8 x i8> %wide.load29 to <8 x i16>
  store <8 x i16> %reverse31, ptr %i.ai, align 2, !alias.scope !11, !noalias !8
  %index.next32 = add nuw i64 %index28, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next32, %n.vec27
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n33 = icmp eq i64 %n.vec27, %i.p
  br i1 %cmp.n33, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.p, %iter.check ], [ %i.p, %vector.memcheck ], [ %i.s, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre17 = load ptr, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.ak = phi ptr [ %.pre17, %._crit_edge.loopexit ], [ %i.n, %bb.e ] ; 3 uses
  %.not10 = icmp eq ptr %.sroa.0.0, %i.ak
  br i1 %.not10, label %bb.h, label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv.next
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i16
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0, i64 %indvars.iv.next
  store i16 %i.an, ptr %i.ao, align 2
  %i.ap = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ap, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !19

bb.f:                                             ; preds = %._crit_edge
  %i.aq = icmp eq ptr %i.ak, null
  br i1 %i.aq, label %_ZN2v84base6VectorIhE7DisposeEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.ak) #12
  br label %_ZN2v84base6VectorIhE7DisposeEv.exit

_ZN2v84base6VectorIhE7DisposeEv.exit:             ; preds = %bb.f, %bb.g
  store ptr %.sroa.0.0, ptr %0, align 8
  store i64 %.sroa.8.0, ptr %i.d, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v84base6VectorIhE7DisposeEv.exit, %._crit_edge
  store i32 %i.c, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.ar, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13LiteralBuffer14AddTwoByteCharEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.c, 2147483648
  br i1 %i.d, label %_ZNK2v84base6VectorIhE6lengthEv.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v84base6VectorIhE6lengthEv.exit:             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8
  %i.f = trunc nuw nsw i64 %i.c to i32
  %.not = icmp slt i32 %i.e, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK2v84base6VectorIhE6lengthEv.exit
  tail call preserve_mostcc void @_ZN2v88internal13LiteralBuffer12ExpandBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK2v84base6VectorIhE6lengthEv.exit
  %i.g = icmp ult i32 %1, 65536
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = trunc nuw i32 %1 to i16
  %i.i = load i32, ptr %i.a, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.j = add i32 %1, 983040
  %i.k = lshr i32 %i.j, 10
  %i.l = trunc i32 %i.k to i16
  %i.m = and i16 %i.l, 1023
  %i.n = or disjoint i16 %i.m, -10240
  %i.o = load i32, ptr %i.a, align 8
  %i.p = sext i32 %i.o to i64
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i16 %i.n, ptr %i.r, align 2
  %i.s = load i32, ptr %i.a, align 8
  %i.t = add nsw i32 %i.s, 2                      ; 3 uses
  store i32 %i.t, ptr %i.a, align 8
  %i.u = load i64, ptr %i.b, align 8              ; 2 uses
  %i.v = icmp ult i64 %i.u, 2147483648
  br i1 %i.v, label %_ZNK2v84base6VectorIhE6lengthEv.exit5, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  unreachable

_ZNK2v84base6VectorIhE6lengthEv.exit5:            ; preds = %bb.f
  %i.w = trunc nuw nsw i64 %i.u to i32
  %.not4 = icmp slt i32 %i.t, %i.w
  br i1 %.not4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK2v84base6VectorIhE6lengthEv.exit5
  tail call preserve_mostcc void @_ZN2v88internal13LiteralBuffer12ExpandBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %.pre = load i32, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK2v84base6VectorIhE6lengthEv.exit5
  %i.x = phi i32 [ %.pre, %bb.h ], [ %i.t, %_ZNK2v84base6VectorIhE6lengthEv.exit5 ]
  %i.y = trunc i32 %1 to i16
  %i.z = and i16 %i.y, 1023
  %i.aa = or disjoint i16 %i.z, -9216
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.sink12 = phi i32 [ %i.x, %bb.i ], [ %i.i, %bb.e ]
  %.sink = phi i16 [ %i.aa, %bb.i ], [ %i.h, %bb.e ]
  %i.ab = sext i32 %.sink12 to i64
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i16 %.sink, ptr %i.ad, align 2
  %storemerge.in = load i32, ptr %i.a, align 8
  %storemerge = add nsw i32 %storemerge.in, 2
  store i32 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind allocsize(0) }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{!9}
!9 = distinct !{!9, !10}
!10 = distinct !{!10, !"LVerDomain"}
!11 = !{!12}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!"branch_weights", i32 8, i32 8}
!18 = distinct !{!18, !14, !15, !16}
!19 = distinct !{!19, !14, !15}
end_hunk_0
