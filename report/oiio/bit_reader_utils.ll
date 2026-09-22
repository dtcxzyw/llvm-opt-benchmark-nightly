Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/bit_reader_utils?download=true
inline.NumInlined: 17
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@kVP8Log2Range = hidden local_unnamed_addr constant [128 x i8] c"\07\06\06\05\05\05\05\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00", align 16
@kVP8NewRange = hidden local_unnamed_addr constant [128 x i8] c"\7F\7F\BF\7F\9F\BF\DF\7F\8F\9F\AF\BF\CF\DF\EF\7F\87\8F\97\9F\A7\AF\B7\BF\C7\CF\D7\DF\E7\EF\F7\7F\83\87\8B\8F\93\97\9B\9F\A3\A7\AB\AF\B3\B7\BB\BF\C3\C7\CB\CF\D3\D7\DB\DF\E3\E7\EB\EF\F3\F7\FB\7F\81\83\85\87\89\8B\8D\8F\91\93\95\97\99\9B\9D\9F\A1\A3\A5\A7\A9\AB\AD\AF\B1\B3\B5\B7\B9\BB\BD\BF\C1\C3\C5\C7\C9\CB\CD\CF\D1\D3\D5\D7\D9\DB\DD\DF\E1\E3\E5\E7\E9\EB\ED\EF\F1\F3\F5\F7\F9\FB\FD\7F", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @VP8BitReaderSetBuffer(ptr nofree noundef writeonly captures(none) initializes((16, 40)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.c, align 8, !tbaa !14
  %i.d = icmp ugt i64 %2, 7
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -7
  %i.f = select i1 %i.d, ptr %i.e, ptr %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.f, ptr %i.g, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @VP8InitBitReader(ptr nofree noundef writeonly captures(none) initializes((0, 44)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 254, ptr %i.a, align 8, !tbaa !16
  store i64 0, ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 -8, ptr %i.b, align 4, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.f, align 8, !tbaa !14
  %i.g = icmp ugt i64 %2, 7
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 -7
  %i.i = select i1 %i.g, ptr %i.h, ptr %1         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.i, ptr %i.j, align 8, !tbaa !15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31)
  %i.k = icmp ult ptr %1, %i.i
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i = load i64, ptr %1, align 1, !noalias !31
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 7
  store ptr %i.l, ptr %i.d, align 8, !tbaa !13, !alias.scope !31
  %i.m = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i)
  %i.n = lshr i64 %i.m, 8
  store i64 %i.n, ptr %0, align 8, !tbaa !17, !alias.scope !31
  store i32 48, ptr %i.b, align 4, !tbaa !18, !alias.scope !31
  br label %VP8LoadNewBytes.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  store i32 0, ptr %i.b, align 4, !tbaa !18, !alias.scope !31
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  store ptr %i.o, ptr %i.d, align 8, !tbaa !13, !alias.scope !31
  %i.p = load i8, ptr %1, align 1, !tbaa !20, !noalias !31
  %i.q = zext i8 %i.p to i64
  store i64 %i.q, ptr %0, align 8, !tbaa !17, !alias.scope !31
  br label %VP8LoadNewBytes.exit

bb.e:                                             ; preds = %bb.c
  store i32 1, ptr %i.c, align 8, !tbaa !19, !alias.scope !31
  br label %VP8LoadNewBytes.exit

VP8LoadNewBytes.exit:                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @VP8RemapBitReader(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %1
  store ptr %i.c, ptr %i.a, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %1
  store ptr %i.f, ptr %i.d, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 %1
  store ptr %i.i, ptr %i.g, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8LoadFinalBytes(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18
  %i.h = add nsw i32 %i.g, 8
  store i32 %i.h, ptr %i.f, align 4, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.i, ptr %i.a, align 8, !tbaa !13
  %i.j = load i8, ptr %i.b, align 1, !tbaa !20
  %i.k = zext i8 %i.j to i64
  %i.l = load i64, ptr %0, align 8, !tbaa !17
  %i.m = shl i64 %i.l, 8
  %i.n = or disjoint i64 %i.m, %i.k
  store i64 %i.n, ptr %0, align 8, !tbaa !17
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !19
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %0, align 8, !tbaa !17
  %i.r = shl i64 %i.q, 8
  store i64 %i.r, ptr %0, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !18
  %i.u = add nsw i32 %i.t, 8
  store i32 %i.u, ptr %i.s, align 4, !tbaa !18
  store i32 1, ptr %i.o, align 8, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden i32 @VP8GetValue(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.promoted = load i32, ptr %i.b, align 8, !tbaa !16, !alias.scope !36
  %.promoted7 = load i32, ptr %i.c, align 4, !tbaa !18, !alias.scope !36
  %.promoted9 = load i64, ptr %0, align 8, !tbaa !17, !alias.scope !36
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %VP8GetBit.exit
  %i.h = phi i64 [ %.promoted9, %.lr.ph ], [ %i.as, %VP8GetBit.exit ] ; 5 uses
  %i.i = phi i32 [ %.promoted7, %.lr.ph ], [ %i.ax, %VP8GetBit.exit ] ; 5 uses
  %i.j = phi i32 [ %.promoted, %.lr.ph ], [ %i.ay, %VP8GetBit.exit ] ; 2 uses
  %.06 = phi i32 [ 0, %.lr.ph ], [ %i.ba, %VP8GetBit.exit ]
  %.045 = phi i32 [ %1, %.lr.ph ], [ %i.k, %VP8GetBit.exit ] ; 2 uses
  %i.k = add nsw i32 %.045, -1                    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.l = icmp slt i32 %i.i, 0
  br i1 %i.l, label %bb.c, label %VP8LoadNewBytes.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !13, !alias.scope !38 ; 6 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !15, !alias.scope !38
  %i.o = icmp ult ptr %i.m, %i.n
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i = load i64, ptr %i.m, align 1, !noalias !38
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 7
  store ptr %i.p, ptr %i.d, align 8, !tbaa !13, !alias.scope !38
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i)
  %i.r = tail call i64 @llvm.fshl.i64(i64 %i.h, i64 %i.q, i64 56) ; 2 uses
  store i64 %i.r, ptr %0, align 8, !tbaa !17, !alias.scope !38
  %i.s = add nsw i32 %i.i, 56
  br label %VP8LoadNewBytes.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !14, !alias.scope !38
  %i.u = icmp ult ptr %i.m, %i.t
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
end_hunk_0
begin_hunk_1_@VP8LInitBitReader:bb.a
  %i.g = load i8, ptr %i.f, align 1, !tbaa !20
  %i.h = zext i8 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 8
  %i.j = or disjoint i64 %i.i, %i.e               ; 2 uses
  %exitcond.not.1 = icmp eq i64 %2, 2
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !20
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 16
  %i.o = or disjoint i64 %i.n, %i.j               ; 2 uses
  %exitcond.not.2 = icmp eq i64 %2, 3
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !20
  %i.r = zext i8 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 24
  %i.t = or disjoint i64 %i.s, %i.o               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %2, 4
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i8, ptr %i.u, align 1, !tbaa !20
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 32
  %i.y = or disjoint i64 %i.x, %i.t               ; 2 uses
  %exitcond.not.4 = icmp eq i64 %2, 5
  br i1 %exitcond.not.4, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !20
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 40
  %i.ad = or i64 %i.ac, %i.y                      ; 2 uses
  %exitcond.not.5 = icmp eq i64 %2, 6
  br i1 %exitcond.not.5, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !20
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 48
  %i.ai = or i64 %i.ah, %i.ad                     ; 2 uses
  %exitcond.not.6 = icmp eq i64 %2, 7
  br i1 %exitcond.not.6, label %._crit_edge, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !20
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw i64 %i.al, 56
  %i.an = or i64 %i.am, %i.ai
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.e, %.lr.ph ], [ %i.j, %.lr.ph.1 ], [ %i.o, %.lr.ph.2 ], [ %i.t, %.lr.ph.3 ], [ %i.y, %.lr.ph.4 ], [ %i.ad, %.lr.ph.5 ], [ %i.ai, %.lr.ph.6 ], [ %i.an, %.lr.ph.7 ]
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %2, i64 8)
  store i64 %.0.lcssa, ptr %0, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.store.select, ptr %i.ao, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ap, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @VP8LBitReaderSetBuffer(ptr nofree noundef captures(none) initializes((8, 24)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = icmp ugt i64 %i.d, %2
  br i1 %i.e, label %VP8LIsEndOfStream.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = load i32, ptr %i.f, align 4, !tbaa !26
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.c, label %VP8LIsEndOfStream.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.d, %2
  br i1 %i.h, label %bb.d, label %VP8LIsEndOfStream.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !25
  %i.k = icmp sgt i32 %i.j, 64
  %i.l = zext i1 %i.k to i32
  br label %VP8LIsEndOfStream.exit

VP8LIsEndOfStream.exit:                           ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.m = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %bb.c ], [ %i.l, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.m, ptr %i.n, align 4, !tbaa !26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8LDoFillBitWindow(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27   ; 6 uses
  %i.c = add i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 3 uses
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !tbaa !24
  %i.h = lshr i64 %i.g, 32                        ; 2 uses
  store i64 %i.h, ptr %0, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !25
  %i.k = add nsw i32 %i.j, -32
  store i32 %i.k, ptr %i.i, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b
  %.val = load i32, ptr %i.n, align 1
  %i.o = zext i32 %.val to i64
  %i.p = shl nuw i64 %i.o, 32
  %i.q = or disjoint i64 %i.p, %i.h
  store i64 %i.q, ptr %0, align 8, !tbaa !24
  %i.r = add i64 %i.b, 4
  store i64 %i.r, ptr %i.a, align 8, !tbaa !27
  br label %ShiftBytes.exit

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.promoted.i = load i32, ptr %i.s, align 8, !tbaa !25 ; 2 uses
  %i.t = icmp sgt i32 %.promoted.i, 7
  br i1 %i.t, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.e) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %i.v = phi i64 [ %i.b, %.lr.ph.i ], [ %i.af, %bb.e ] ; 3 uses
  %i.w = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.ag, %bb.e ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %i.v, %umax.i
  br i1 %exitcond.not.i, label %.critedge.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %0, align 8, !tbaa !24
  %i.y = lshr i64 %i.x, 8                         ; 2 uses
  store i64 %i.y, ptr %0, align 8, !tbaa !24
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !20
  %i.ac = zext i8 %i.ab to i64
  %i.ad = shl nuw i64 %i.ac, 56
  %i.ae = or disjoint i64 %i.ad, %i.y
  store i64 %i.ae, ptr %0, align 8, !tbaa !24
  %i.af = add i64 %i.v, 1                         ; 3 uses
  store i64 %i.af, ptr %i.a, align 8, !tbaa !27
  %i.ag = add nsw i32 %i.w, -8                    ; 3 uses
  store i32 %i.ag, ptr %i.s, align 8, !tbaa !25
  %i.ah = icmp sgt i32 %i.w, 15
  br i1 %i.ah, label %bb.d, label %.critedge.loopexit.i, !llvm.loop !1

.critedge.loopexit.i:                             ; preds = %bb.e, %bb.d
  %i.ai = phi i64 [ %umax.i, %bb.d ], [ %i.af, %bb.e ]
  %.lcssa.ph.i = phi i32 [ %i.w, %bb.d ], [ %i.ag, %bb.e ]
  %i.aj = icmp slt i32 %.lcssa.ph.i, 65
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.c
  %i.ak = phi i64 [ %i.b, %bb.c ], [ %i.ai, %.critedge.loopexit.i ]
  %.lcssa.i = phi i1 [ true, %bb.c ], [ %i.aj, %.critedge.loopexit.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !26
  %.not.i.i = icmp eq i32 %i.am, 0
  %i.an = icmp ne i64 %i.ak, %i.e
  %or.cond.i = or i1 %.lcssa.i, %i.an
  %or.cond = select i1 %.not.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond, label %ShiftBytes.exit, label %VP8LIsEndOfStream.exit.thread12.i

VP8LIsEndOfStream.exit.thread12.i:                ; preds = %.critedge.i
  store i32 1, ptr %i.al, align 4, !tbaa !26
  store i32 0, ptr %i.s, align 8, !tbaa !25
  br label %ShiftBytes.exit

ShiftBytes.exit:                                  ; preds = %.critedge.i, %VP8LIsEndOfStream.exit.thread12.i, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, -2147483648) i32 @VP8LReadBits(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp slt i32 %1, 25
  %or.cond = and i1 %i.d, %i.c
  %i.e = getelementptr i8, ptr %0, i64 32         ; 4 uses
  br i1 %or.cond, label %bb.b, label %ShiftBytes.exit.sink.split

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !tbaa !24    ; 2 uses
  %.val13 = load i32, ptr %i.e, align 8, !tbaa !25 ; 2 uses
  %i.f = and i32 %.val13, 63
  %i.g = zext nneg i32 %i.f to i64
  %i.h = lshr i64 %.val, %i.g
  %i.i = trunc i64 %i.h to i32
  %notmask = shl nsw i32 -1, %1
  %2 = xor i32 %notmask, -1
  %i.j = and i32 %i.i, %2                         ; 4 uses
  %i.k = add nsw i32 %.val13, %1                  ; 3 uses
  store i32 %i.k, ptr %i.e, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.m = icmp sgt i32 %i.k, 7
  br i1 %i.m, label %.lr.ph.i, label %ShiftBytes.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted19.i = load i64, ptr %i.l, align 8, !tbaa !27 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.promoted19.i, i64 %i.o)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %i.q = phi i64 [ %.val, %.lr.ph.i ], [ %i.z, %bb.d ]
  %i.r = phi i64 [ %.promoted19.i, %.lr.ph.i ], [ %i.aa, %bb.d ] ; 3 uses
  %i.s = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ab, %bb.d ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %i.r, %umax.i
  br i1 %exitcond.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = lshr i64 %i.q, 8                         ; 2 uses
  store i64 %i.t, ptr %0, align 8, !tbaa !24
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.r
  %i.w = load i8, ptr %i.v, align 1, !tbaa !20
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw i64 %i.x, 56
  %i.z = or disjoint i64 %i.y, %i.t               ; 2 uses
  store i64 %i.z, ptr %0, align 8, !tbaa !24
  %i.aa = add i64 %i.r, 1                         ; 2 uses
  store i64 %i.aa, ptr %i.l, align 8, !tbaa !27
  %i.ab = add nsw i32 %i.s, -8                    ; 2 uses
  store i32 %i.ab, ptr %i.e, align 8, !tbaa !25
  %i.ac = icmp sgt i32 %i.s, 15
  br i1 %i.ac, label %bb.c, label %ShiftBytes.exit, !llvm.loop !1

.critedge.i:                                      ; preds = %bb.c
  %i.ad = icmp samesign ult i32 %i.s, 65
  %i.ae = icmp ult i64 %i.o, %.promoted19.i
  %or.cond.i = or i1 %i.ad, %i.ae
  br i1 %or.cond.i, label %ShiftBytes.exit, label %ShiftBytes.exit.sink.split

ShiftBytes.exit.sink.split:                       ; preds = %bb.a, %.critedge.i
  %.0.ph = phi i32 [ %i.j, %.critedge.i ], [ 0, %bb.a ]
  store i32 1, ptr %i.a, align 4, !tbaa !26
  store i32 0, ptr %i.e, align 8, !tbaa !25
  br label %ShiftBytes.exit

ShiftBytes.exit:                                  ; preds = %bb.d, %ShiftBytes.exit.sink.split, %bb.b, %.critedge.i
  %.0 = phi i32 [ %i.j, %.critedge.i ], [ %i.j, %bb.b ], [ %.0.ph, %ShiftBytes.exit.sink.split ], [ %i.j, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"VP8BitReader", !9, i64 0, !7, i64 8, !7, i64 12, !11, i64 16, !11, i64 24, !11, i64 32, !7, i64 40}
!13 = !{!12, !11, i64 16}
!14 = !{!12, !11, i64 24}
!15 = !{!12, !11, i64 32}
!16 = !{!12, !7, i64 8}
!17 = !{!12, !9, i64 0}
!18 = !{!12, !7, i64 12}
!19 = !{!12, !7, i64 40}
!20 = !{!6, !6, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"", !9, i64 0, !11, i64 8, !9, i64 16, !9, i64 24, !7, i64 32, !7, i64 36}
!23 = !{!22, !9, i64 16}
!24 = !{!22, !9, i64 0}
!25 = !{!22, !7, i64 32}
!26 = !{!22, !7, i64 36}
!27 = !{!22, !9, i64 24}
!28 = !{!22, !11, i64 8}
!29 = distinct !{!29, !"VP8LoadNewBytes"}
!30 = distinct !{!30, !29, !"VP8LoadNewBytes: argument 0"}
!31 = !{!30}
!32 = distinct !{!32, !"VP8GetBit"}
!33 = distinct !{!33, !32, !"VP8GetBit: argument 0"}
!34 = distinct !{!34, !"VP8LoadNewBytes"}
!35 = distinct !{!35, !34, !"VP8LoadNewBytes: argument 0"}
!36 = !{!33}
!37 = !{!35}
!38 = !{!35, !33}
!39 = distinct !{!39, !"VP8GetBit"}
!40 = distinct !{!40, !39, !"VP8GetBit: argument 0"}
!41 = distinct !{!41, !"VP8GetBit"}
!42 = distinct !{!42, !41, !"VP8GetBit: argument 0"}
!43 = distinct !{!43, !"VP8LoadNewBytes"}
!44 = distinct !{!44, !43, !"VP8LoadNewBytes: argument 0"}
!45 = distinct !{!45, !"VP8LoadNewBytes"}
!46 = distinct !{!46, !45, !"VP8LoadNewBytes: argument 0"}
!47 = !{!40}
!48 = !{!42}
!49 = !{!44}
!50 = !{!44, !42}
!51 = !{!46}
!52 = !{!46, !40}
end_hunk_1
