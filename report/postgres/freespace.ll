Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/freespace?download=true
inline.NumInlined: 64
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BufferManagerRelation = type { ptr, ptr, i8 }

@CritSectionCount = external global i32, align 4
@InRecovery = external local_unnamed_addr global i8, align 1
@wal_level = external local_unnamed_addr global i32, align 4
@wal_log_hints = external local_unnamed_addr global i8, align 1
@LocalBufferBlockPointers = external local_unnamed_addr global ptr, align 8
@BufferBlocks = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [29 x i8] c"invalid FSM request size %zu\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"freespace.c\00", align 1
@__func__.fsm_space_needed_to_cat = private unnamed_addr constant [24 x i8] c"fsm_space_needed_to_cat\00", align 1
@InterruptPending = external global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local i32 @GetPageWithFreeSpace(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 8160
  br i1 %i.a, label %bb.b, label %fsm_space_needed_to_cat.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.c = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i64 noundef %1) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__func__.fsm_space_needed_to_cat) #7
  unreachable

fsm_space_needed_to_cat.exit:                     ; preds = %bb.a
  %i.d = icmp eq i64 %1, 0
  %i.e = add nuw nsw i64 %1, 31
  %i.f = lshr i64 %i.e, 5
  %i.g = trunc nuw i64 %i.f to i8
  %.0.i = select i1 %i.d, i8 1, i8 %i.g
  %i.h = tail call fastcc i32 @fsm_search(ptr noundef %0, i8 noundef zeroext %.0.i)
  ret i32 %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fsm_search(ptr noundef %0, i8 noundef zeroext range(i8 1, 0) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.outer

.outer:                                           ; preds = %bb.v, %bb.a
  %.sroa.13.0.ph = phi i32 [ %.narrow, %bb.v ], [ 0, %bb.a ] ; 4 uses
  %.sroa.027.0.ph = phi i32 [ %.sroa.027.2, %bb.v ], [ 2, %bb.a ] ; 5 uses
  %.069.ph = phi i32 [ %.271, %bb.v ], [ 0, %bb.a ] ; 5 uses
  %.sroa.13.0.insert.ext.peel = zext i32 %.sroa.13.0.ph to i64
  %.sroa.13.0.insert.shift.peel = shl nuw i64 %.sroa.13.0.insert.ext.peel, 32
  %.sroa.027.0.insert.ext.peel = zext i32 %.sroa.027.0.ph to i64 ; 2 uses
  %.sroa.027.0.insert.insert.peel = or disjoint i64 %.sroa.13.0.insert.shift.peel, %.sroa.027.0.insert.ext.peel
  %i.c = tail call fastcc i32 @fsm_readbuf(ptr noundef %0, i64 %.sroa.027.0.insert.insert.peel, i1 noundef zeroext false) ; 16 uses
  %.not.peel = icmp eq i32 %i.c, 0
  br i1 %.not.peel, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.outer
  tail call void @LockBufferInternal(i32 noundef %i.c, i32 noundef 1) #7
  %i.d = icmp eq i32 %.sroa.027.0.ph, 0
  %i.e = tail call i32 @fsm_search_avail(i32 noundef %i.c, i8 noundef zeroext %1, i1 noundef zeroext %i.d, i1 noundef zeroext false) #7 ; 4 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i32 %i.c, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @BufferBlocks, align 8
  %i.i = add nsw i32 %i.c, -1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 13
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  br label %BufferGetPage.exit.peel

bb.e:                                             ; preds = %bb.c
  %i.m = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.n = xor i32 %i.c, -1
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8
  br label %BufferGetPage.exit.peel

BufferGetPage.exit.peel:                          ; preds = %bb.e, %bb.d
  %.0.i.i.peel = phi ptr [ %i.q, %bb.e ], [ %i.l, %bb.d ]
  %i.r = tail call zeroext i8 @fsm_get_max_avail(ptr noundef %.0.i.i.peel) #7
  tail call void @UnlockReleaseBuffer(i32 noundef %i.c) #7
  br label %bb.f

bb.f:                                             ; preds = %BufferGetPage.exit.peel, %.outer
  %.077.ph.peel = phi i8 [ 0, %.outer ], [ %i.r, %BufferGetPage.exit.peel ]
  %i.s = icmp eq i32 %.sroa.027.0.ph, 2
  br i1 %i.s, label %.thread95, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = add nuw nsw i64 %.sroa.027.0.insert.ext.peel, 1
  %i.u = sext i32 %.sroa.13.0.ph to i64           ; 2 uses
  %i.v = udiv i64 %i.u, 4069
  %i.w = urem i64 %i.u, 4069
  %i.x = trunc nuw nsw i64 %i.w to i32
  %.sroa.23.0.insert.ext.i.peel = shl i64 %i.v, 32
  %.sroa.02.0.insert.ext.i.peel = and i64 %i.t, 4294967295
  %.sroa.02.0.insert.insert.i.peel = or disjoint i64 %.sroa.02.0.insert.ext.i.peel, %.sroa.23.0.insert.ext.i.peel
  %i.y = tail call fastcc i32 @fsm_readbuf(ptr noundef %0, i64 %.sroa.02.0.insert.insert.i.peel, i1 noundef zeroext true) ; 6 uses
  tail call void @LockBufferInternal(i32 noundef %i.y, i32 noundef 3) #7
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr @BufferBlocks, align 8
  %i.ab = add nsw i32 %i.y, -1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  br label %BufferGetPage.exit.i.peel

bb.i:                                             ; preds = %bb.g
  %i.af = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ag = xor i32 %i.y, -1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %BufferGetPage.exit.i.peel

BufferGetPage.exit.i.peel:                        ; preds = %bb.i, %bb.h
  %.0.i.i.i.peel = phi ptr [ %i.aj, %bb.i ], [ %i.ae, %bb.h ]
  %i.ak = tail call zeroext i1 @fsm_set_avail(ptr noundef %.0.i.i.i.peel, i32 noundef %i.x, i8 noundef zeroext %.077.ph.peel) #7
  br i1 %i.ak, label %bb.j, label %fsm_set_and_search.exit.peel

bb.j:                                             ; preds = %BufferGetPage.exit.i.peel
  tail call void @MarkBufferDirtyHint(i32 noundef %i.y, i1 noundef zeroext false) #7
  br label %fsm_set_and_search.exit.peel

fsm_set_and_search.exit.peel:                     ; preds = %bb.j, %BufferGetPage.exit.i.peel
  tail call void @UnlockReleaseBuffer(i32 noundef %i.y) #7
  %i.al = add i32 %.069.ph, 1
  %exitcond.peel.not = icmp sgt i32 %.069.ph, 10000
  br i1 %exitcond.peel.not, label %.thread95, label %.peel.next

.peel.next:                                       ; preds = %fsm_set_and_search.exit.peel
  %i.am = tail call fastcc i32 @fsm_readbuf(ptr noundef %0, i64 2, i1 noundef zeroext false) ; 9 uses
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %.thread95, label %bb.k

bb.k:                                             ; preds = %.peel.next
  tail call void @LockBufferInternal(i32 noundef %i.am, i32 noundef 1) #7
  %i.an = tail call i32 @fsm_search_avail(i32 noundef %i.am, i8 noundef zeroext %1, i1 noundef zeroext false, i1 noundef zeroext false) #7 ; 2 uses
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %bb.l, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.k
  tail call void @UnlockBuffer(i32 noundef %i.am) #7
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp slt i32 %i.am, 0
  br i1 %i.ap, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ar = xor i32 %i.am, -1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8
  br label %BufferGetPage.exit

bb.n:                                             ; preds = %bb.l
  %i.av = load ptr, ptr @BufferBlocks, align 8
  %i.aw = add nsw i32 %i.am, -1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 13
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ay
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.m, %bb.n
  %.0.i.i = phi ptr [ %i.au, %bb.m ], [ %i.az, %bb.n ]
  %i.ba = tail call zeroext i8 @fsm_get_max_avail(ptr noundef %.0.i.i) #7 ; 0 uses
  tail call void @UnlockReleaseBuffer(i32 noundef %i.am) #7
  br label %.thread95

.loopexit:                                        ; preds = %bb.b
  tail call void @UnlockBuffer(i32 noundef %i.c) #7
  %i.bb = icmp eq i32 %.sroa.027.0.ph, 0
  br i1 %i.bb, label %bb.o, label %bb.u

bb.o:                                             ; preds = %.loopexit
  %i.bc = mul i32 %.sroa.13.0.ph, 4069
  %i.bd = and i32 %i.e, 65535                     ; 2 uses
  %i.be = add i32 %i.bd, %i.bc                    ; 3 uses
  %i.bf = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.p, label %RelationGetSmgr.exit.i, !prof !4

bb.p:                                             ; preds = %bb.o
  %i.bh = load i32, ptr %i.b, align 4
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8
  %.sroa.2.0.copyload.i.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.bi = tail call ptr @smgropen(i64 %.sroa.0.0.copyload.i.i, i32 %.sroa.2.0.copyload.i.i, i32 noundef %i.bh) #7 ; 2 uses
  store ptr %i.bi, ptr %i.a, align 8
  tail call void @smgrpin(ptr noundef %i.bi) #7
  %.pre.i.i = load ptr, ptr %i.a, align 8
  br label %RelationGetSmgr.exit.i

RelationGetSmgr.exit.i:                           ; preds = %bb.p, %bb.o
  %i.bj = phi ptr [ %.pre.i.i, %bb.p ], [ %i.bf, %bb.o ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %i.bm = icmp ne i32 %i.bl, -1
  %i.bn = icmp ult i32 %i.be, %i.bl
  %or.cond.i = and i1 %i.bm, %i.bn
  br i1 %or.cond.i, label %.thread88, label %fsm_does_block_exist.exit

fsm_does_block_exist.exit:                        ; preds = %RelationGetSmgr.exit.i
  %i.bo = tail call i32 @RelationGetNumberOfBlocksInFork(ptr noundef nonnull %0, i32 noundef 0) #7
  %i.bp = icmp ult i32 %i.be, %i.bo
  br i1 %i.bp, label %.thread88, label %bb.q

.thread88:                                        ; preds = %fsm_does_block_exist.exit, %RelationGetSmgr.exit.i
  tail call void @ReleaseBuffer(i32 noundef %i.c) #7
  br label %.thread95

bb.q:                                             ; preds = %fsm_does_block_exist.exit
  %i.bq = icmp slt i32 %i.c, 0
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.bs = xor i32 %i.c, -1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bw = load ptr, ptr @BufferBlocks, align 8
  %i.bx = add nsw i32 %i.c, -1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 13
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bz
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0.i.i82 = phi ptr [ %i.bv, %bb.r ], [ %i.ca, %bb.s ]
  tail call void @LockBufferInternal(i32 noundef %i.c, i32 noundef 3) #7
  %i.cb = tail call zeroext i1 @fsm_set_avail(ptr noundef %.0.i.i82, i32 noundef %i.e, i8 noundef zeroext 0) #7 ; 0 uses
  tail call void @MarkBufferDirtyHint(i32 noundef %i.c, i1 noundef zeroext false) #7
  tail call void @UnlockReleaseBuffer(i32 noundef %i.c) #7
  %i.cc = add nsw i32 %.069.ph, 1
  %i.cd = icmp slt i32 %.069.ph, 10001
  br i1 %i.cd, label %bb.v, label %.thread95

bb.u:                                             ; preds = %.loopexit.thread, %.loopexit
  %.lcssa140 = phi i32 [ %i.an, %.loopexit.thread ], [ %i.e, %.loopexit ]
  %.lcssa112139 = phi i32 [ %i.am, %.loopexit.thread ], [ %i.c, %.loopexit ]
  %.069.lcssa138 = phi i32 [ %i.al, %.loopexit.thread ], [ %.069.ph, %.loopexit ]
  %.sroa.027.0.lcssa137 = phi i32 [ 2, %.loopexit.thread ], [ %.sroa.027.0.ph, %.loopexit ]
  %.sroa.13.0.lcssa136 = phi i32 [ 0, %.loopexit.thread ], [ %.sroa.13.0.ph, %.loopexit ]
  tail call void @ReleaseBuffer(i32 noundef %.lcssa112139) #7
  %.pre = and i32 %.lcssa140, 65535
  %i.ce = mul i32 %.sroa.13.0.lcssa136, 4069
  %i.cf = add i32 %.sroa.027.0.lcssa137, -1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pre-phi = phi i32 [ %.pre, %bb.u ], [ %i.bd, %bb.t ]
  %.sroa.13.2 = phi i32 [ %i.ce, %bb.u ], [ 0, %bb.t ]
  %.sroa.027.2 = phi i32 [ %i.cf, %bb.u ], [ 1, %bb.t ]
  %.271 = phi i32 [ %.069.lcssa138, %bb.u ], [ %i.cc, %bb.t ]
  %.narrow = add i32 %.sroa.13.2, %.pre-phi
  br label %.outer

.thread95:                                        ; preds = %bb.t, %.peel.next, %bb.f, %fsm_set_and_search.exit.peel, %BufferGetPage.exit, %.thread88
  %.5101 = phi i32 [ %i.be, %.thread88 ], [ -1, %BufferGetPage.exit ], [ -1, %fsm_set_and_search.exit.peel ], [ -1, %bb.f ], [ -1, %.peel.next ], [ -1, %bb.t ]
  ret i32 %.5101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @RecordAndGetPageWithFreeSpace(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %3, 8160
  br i1 %i.a, label %bb.b, label %fsm_space_needed_to_cat.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #6 ; 0 uses
  %i.c = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i64 noundef %3) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @__func__.fsm_space_needed_to_cat) #7
  unreachable

fsm_space_needed_to_cat.exit:                     ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 8159
  %i.e = lshr i64 %2, 5
  %i.f = trunc nuw i64 %i.e to i8
  %.0.i = select i1 %i.d, i8 -1, i8 %i.f
  %i.g = icmp eq i64 %3, 0
  %i.h = add nuw nsw i64 %3, 31
  %i.i = lshr i64 %i.h, 5
  %i.j = trunc nuw i64 %i.i to i8
  %.0.i18 = select i1 %i.g, i8 1, i8 %i.j         ; 2 uses
  %i.k = udiv i32 %1, 4069                        ; 2 uses
  %i.l = urem i32 %1, 4069
end_hunk_0
