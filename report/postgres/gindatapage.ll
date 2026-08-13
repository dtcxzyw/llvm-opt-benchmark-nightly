inline.NumInlined: 162
inline.NumDeleted: 40
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ginxlogInsertDataInternal = type { i16, %struct.PostingItem }
%struct.PostingItem = type { %struct.BlockIdData, %struct.ItemPointerData }
%struct.BlockIdData = type { i16, i16 }
%struct.ItemPointerData = type { %struct.BlockIdData, i16 }
%struct.GinBtreeData = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, ptr, i8, i8, i16, i64, i8, %struct.ItemPointerData }
%struct.GinBtreeDataLeafInsertData = type { ptr, i32, i32 }
%struct.ginxlogCreatePostingTree = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"could not fit vacuumed posting list\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"gindatapage.c\00", align 1
@__func__.ginVacuumPostingTreeLeaf = private unnamed_addr constant [25 x i8] c"ginVacuumPostingTreeLeaf\00", align 1
@wal_level = external local_unnamed_addr global i32, align 4
@CritSectionCount = external global i32, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"created GIN posting tree with %d items\00", align 1
@__func__.createPostingTree = private unnamed_addr constant [18 x i8] c"createPostingTree\00", align 1
@LocalBufferBlockPointers = external local_unnamed_addr global ptr, align 8
@BufferBlocks = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"unexpected GIN leaf action %d\00", align 1
@__func__.computeLeafRecompressWALData = private unnamed_addr constant [29 x i8] c"computeLeafRecompressWALData\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"could not split GIN page; all old items didn't fit\00", align 1
@__func__.dataBeginPlaceToPageLeaf = private unnamed_addr constant [25 x i8] c"dataBeginPlaceToPageLeaf\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"could not split GIN page; no new items fit\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"appended %d new items to block %u; %d bytes (%d to go)\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"inserted %d new items to block %u; %d bytes (%d to go)\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"appended %d items to block %u; split %d/%d (%d to go)\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"inserted %d items to block %u; split %d/%d (%d to go)\00", align 1
@dataExecPlaceToPageInternal.data = internal global %struct.ginxlogInsertDataInternal zeroinitializer, align 2

; Function Attrs: nounwind uwtable
define dso_local ptr @GinDataLeafPageGetItems(ptr noundef %0, ptr noundef %1, i48 %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.3.0.extract.shift = lshr i48 %2, 32      ; 2 uses
  %.sroa.3.0.extract.trunc = zext nneg i48 %.sroa.3.0.extract.shift to i64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i16, ptr %i.a, align 8
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.f = load i16, ptr %i.e, align 2
  %i.g = and i16 %i.f, 128
  %.not = icmp eq i16 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i16, ptr %i.i, align 4
  %i.k = zext i16 %i.j to i64                     ; 2 uses
  %i.l = add nsw i64 %i.k, -32
  %i.m = getelementptr i8, ptr %0, i64 %i.k       ; 3 uses
  %.not33 = icmp eq i48 %.sroa.3.0.extract.shift, 0
  br i1 %.not33, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.o = load i16, ptr %i.n, align 2
  %i.p = zext i16 %i.o to i64
  %i.q = add nuw nsw i64 %i.p, 1
  %i.r = and i64 %i.q, 131070
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.r ; 4 uses
  %.02835 = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.t = icmp ult ptr %.02835, %i.m
  br i1 %i.t, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.c
  %i.u = and i48 %2, 65535
  %i.v = zext nneg i48 %i.u to i64
  %i.w = shl nuw i64 %i.v, 48
  %i.x = shl i48 %2, 16
  %i.y = and i48 %i.x, -4294967296
  %i.z = zext i48 %i.y to i64
  %i.aa = or disjoint i64 %i.w, %i.z
  %i.ab = or disjoint i64 %i.aa, %.sroa.3.0.extract.trunc ; 2 uses
  %.val6.i41 = load i16, ptr %.02835, align 2
  %i.ac = getelementptr i8, ptr %i.s, i64 10
  %.val7.i42 = load i16, ptr %i.ac, align 2
  %i.ad = zext i16 %.val6.i41 to i64
  %i.ae = zext i16 %.val7.i42 to i64
  %i.af = shl nuw i64 %i.ad, 48
  %i.ag = shl nuw nsw i64 %i.ae, 32
  %i.ah = or disjoint i64 %i.ag, %i.af
  %i.ai = getelementptr i8, ptr %i.s, i64 12
  %.val9.i43 = load i16, ptr %i.ai, align 2
  %i.aj = zext i16 %.val9.i43 to i64
  %i.ak = or disjoint i64 %i.ah, %i.aj
  %.not3444 = icmp ugt i64 %i.ak, %i.ab
  br i1 %.not3444, label %.critedge, label %.lr.ph47

bb.d:                                             ; preds = %.lr.ph47
  %.val6.i = load i16, ptr %.028, align 2
  %i.al = getelementptr i8, ptr %i.az, i64 10
  %.val7.i = load i16, ptr %i.al, align 2
  %i.am = zext i16 %.val6.i to i64
  %i.an = zext i16 %.val7.i to i64
  %i.ao = shl nuw i64 %i.am, 48
  %i.ap = shl nuw nsw i64 %i.an, 32
  %i.aq = or disjoint i64 %i.ap, %i.ao
  %i.ar = getelementptr i8, ptr %i.az, i64 12
  %.val9.i = load i16, ptr %i.ar, align 2
  %i.as = zext i16 %.val9.i to i64
  %i.at = or disjoint i64 %i.aq, %i.as
  %.not34 = icmp ugt i64 %i.at, %i.ab
  br i1 %.not34, label %.critedge, label %.lr.ph47, !llvm.loop !4

.lr.ph47:                                         ; preds = %.lr.ph, %bb.d
  %.pn3746 = phi ptr [ %i.az, %bb.d ], [ %i.s, %.lr.ph ]
  %.0283845 = phi ptr [ %.028, %bb.d ], [ %.02835, %.lr.ph ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pn3746, i64 14
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = zext i16 %i.av to i64
  %i.ax = add nuw nsw i64 %i.aw, 1
  %i.ay = and i64 %i.ax, 131070
  %i.az = getelementptr inbounds nuw i8, ptr %.0283845, i64 %i.ay ; 4 uses
  %.028 = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.ba = icmp ult ptr %.028, %i.m
  br i1 %i.ba, label %bb.d, label %..critedge.loopexit_crit_edge, !llvm.loop !4

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph47
  br label %.critedge, !llvm.loop !4

.critedge:                                        ; preds = %bb.d, %.lr.ph, %..critedge.loopexit_crit_edge, %bb.c
  %.029.lcssa = phi ptr [ %i.h, %bb.c ], [ %i.h, %.lr.ph ], [ %.0283845, %..critedge.loopexit_crit_edge ], [ %.0283845, %bb.d ] ; 2 uses
  %i.bb = ptrtoint ptr %i.m to i64
  %i.bc = ptrtoint ptr %.029.lcssa to i64
  %i.bd = sub i64 %i.bb, %i.bc
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.b
  %.031 = phi i64 [ %i.bd, %.critedge ], [ %i.l, %bb.b ] ; 2 uses
  %.130 = phi ptr [ %.029.lcssa, %.critedge ], [ %i.h, %bb.b ]
  %.not32 = icmp eq i64 %.031, 0
  br i1 %.not32, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = trunc i64 %.031 to i32
  %i.bf = tail call ptr @ginPostingListDecodeAllSegments(ptr noundef nonnull %.130, i32 noundef %i.be, ptr noundef %1) #9
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %1, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bh = load i16, ptr %i.bg, align 4            ; 2 uses
  %i.bi = zext i16 %i.bh to i32
  store i32 %i.bi, ptr %1, align 4
  %i.bj = zext i16 %i.bh to i64
  %i.bk = mul nuw nsw i64 %i.bj, 6
  %i.bl = tail call ptr @palloc(i64 noundef %i.bk) #9 ; 2 uses
  %i.bm = load i32, ptr %1, align 4
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %i.bn, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bl, ptr nonnull align 2 %i.h, i64 %i.bo, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.1 = phi ptr [ %i.bl, %bb.h ], [ %i.bf, %bb.f ], [ null, %bb.g ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @ginPostingListDecodeAllSegments(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @GinDataLeafPageGetItemsToTbm(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i16, ptr %i.a, align 8
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6
  %i.f = load i16, ptr %i.e, align 2
  %i.g = and i16 %i.f, 128
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i16, ptr %i.i, align 4
  %i.k = zext i16 %i.j to i32
  %i.l = add nsw i32 %i.k, -32
  %i.m = tail call i32 @ginPostingListDecodeAllSegmentsToTbm(ptr noundef nonnull %i.h, i32 noundef %i.l, ptr noundef %1) #9
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.o = load i16, ptr %i.n, align 4              ; 2 uses
  %.not11 = icmp eq i16 %i.o, 0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @tbm_add_tuples(ptr noundef %1, ptr noundef nonnull %i.q, i32 noundef %i.p, i1 noundef zeroext false) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %i.p, %bb.d ], [ 0, %bb.c ], [ %i.m, %bb.b ]
  ret i32 %.0
}

declare i32 @ginPostingListDecodeAllSegmentsToTbm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @tbm_add_tuples(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @GinDataPageAddPostingItem(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i16, ptr %i.a, align 8
  %i.c = zext i16 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.f = load i16, ptr %i.e, align 4              ; 3 uses
  %i.g = zext i16 %2 to i32                       ; 3 uses
  %i.h = icmp eq i16 %2, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = zext i16 %i.f to i64
  %i.k = mul nuw nsw i64 %i.j, 10
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = add nsw i32 %i.g, -1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = mul nuw nsw i64 %i.n, 10
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.o ; 4 uses
  %i.q = zext i16 %i.f to i32                     ; 2 uses
  %i.r = add nuw nsw i32 %i.q, 1
  %.not = icmp eq i32 %i.r, %i.g
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  %i.t = sub nsw i32 %i.q, %i.g
end_hunk_0
