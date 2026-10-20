Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/brin_revmap?download=true
inline.NumInlined: 84
inline.NumDeleted: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BufferManagerRelation = type { ptr, ptr, i8 }
%struct.xl_brin_revmap_extend = type { i32 }
%struct.ItemPointerData = type { %struct.BlockIdData, i16 }
%struct.BlockIdData = type { i16, i16 }
%struct.xl_brin_desummarize = type { i32, i32, i16 }

@InterruptPending = external global i32, align 4
@.str = private unnamed_addr constant [45 x i8] c"corrupted BRIN index: inconsistent range map\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"brin_revmap.c\00", align 1
@__func__.brinGetTupleForHeapBlock = private unnamed_addr constant [25 x i8] c"brinGetTupleForHeapBlock\00", align 1
@__func__.brinRevmapDesummarizeRange = private unnamed_addr constant [27 x i8] c"brinRevmapDesummarizeRange\00", align 1
@CritSectionCount = external global i32, align 4
@wal_level = external local_unnamed_addr global i32, align 4
@LocalBufferBlockPointers = external local_unnamed_addr global ptr, align 8
@BufferBlocks = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"revmap does not cover heap block %u\00", align 1
@__func__.revmap_get_buffer = private unnamed_addr constant [18 x i8] c"revmap_get_buffer\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"unexpected page type 0x%04X in BRIN index \22%s\22 block %u\00", align 1
@__func__.revmap_physical_extend = private unnamed_addr constant [23 x i8] c"revmap_physical_extend\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @brinRevmapInitialize(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ReadBuffer(ptr noundef %0, i32 noundef 0) #7 ; 6 uses
  tail call void @LockBufferInternal(i32 noundef %i.a, i32 noundef 1) #7
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.d = xor i32 %i.a, -1
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @BufferBlocks, align 8
  %i.i = add nsw i32 %i.a, -1
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 13
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %i.m = tail call ptr @palloc(i64 noundef 24) #7 ; 6 uses
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 36
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %i.r, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %i.a, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  store i32 0, ptr %i.u, align 4
  %i.v = load i32, ptr %i.n, align 4
  store i32 %i.v, ptr %1, align 4
  tail call void @UnlockBuffer(i32 noundef %i.a) #7
  ret ptr %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ReadBuffer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @brinRevmapTerminate(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  tail call void @ReleaseBuffer(i32 noundef %i.b) #7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ReleaseBuffer(i32 noundef %i.d) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @pfree(ptr noundef nonnull %0) #7
  ret void
}

declare void @ReleaseBuffer(i32 noundef) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @brinRevmapExtend(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.BufferManagerRelation, align 8 ; 5 uses
  %3 = alloca %struct.xl_brin_revmap_extend, align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = udiv i32 %1, %i.b
  %i.d = udiv i32 %i.c, 1360
  %narrow.i = add nuw nsw i32 %i.d, 1             ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4
  %4 = icmp ugt i32 %narrow.i, %i.f
  br i1 %4, label %.lr.ph.i, label %revmap_extend_and_get_blkno.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %revmap_physical_extend.exit.i, %.lr.ph.i
  %i.i = load volatile i32, ptr @InterruptPending, align 4
  %.not5.i = icmp eq i32 %i.i, 0
  br i1 %.not5.i, label %bb.d, label %bb.c, !prof !4

bb.c:                                             ; preds = %bb.b
  call void @ProcessInterrupts() #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.j = load ptr, ptr %0, align 8                ; 6 uses
  %i.k = load i32, ptr %i.g, align 8
  call void @LockBufferInternal(i32 noundef %i.k, i32 noundef 3) #7
  %i.l = load i32, ptr %i.g, align 8              ; 4 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.o = xor i32 %i.l, -1
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8
  br label %BufferGetPage.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = load ptr, ptr @BufferBlocks, align 8
  %i.t = add nsw i32 %i.l, -1
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 13
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  br label %BufferGetPage.exit.i.i

BufferGetPage.exit.i.i:                           ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.w, %bb.f ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 36 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4              ; 3 uses
  %i.z = load i32, ptr %i.e, align 4
  %.not.i.i = icmp eq i32 %i.y, %i.z
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %BufferGetPage.exit.i.i
  store i32 %i.y, ptr %i.e, align 4
  call void @UnlockBuffer(i32 noundef %i.l) #7
  br label %revmap_physical_extend.exit.i

bb.h:                                             ; preds = %BufferGetPage.exit.i.i
  %i.aa = add i32 %i.y, 1                         ; 5 uses
  %i.ab = call i32 @RelationGetNumberOfBlocksInFork(ptr noundef %i.j, i32 noundef 0) #7
  %i.ac = icmp ult i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ad = call i32 @ReadBuffer(ptr noundef %i.j, i32 noundef %i.aa) #7 ; 6 uses
  call void @LockBufferInternal(i32 noundef %i.ad, i32 noundef 3) #7
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ag = xor i32 %i.ad, -1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %BufferGetPage.exit64.i.i

bb.k:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr @BufferBlocks, align 8
  %i.al = add nsw i32 %i.ad, -1
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  br label %BufferGetPage.exit64.i.i

bb.l:                                             ; preds = %bb.h
  store ptr %i.j, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.ap = call i32 @ExtendBufferedRel(ptr noundef nonnull byval(%struct.BufferManagerRelation) align 8 %2, i32 noundef 0, ptr noundef null, i32 noundef 8) #7 ; 7 uses
  %i.aq = call i32 @BufferGetBlockNumber(i32 noundef %i.ap) #7
  %.not62.i.i = icmp eq i32 %i.aq, %i.aa
  br i1 %.not62.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr %i.g, align 8
  call void @UnlockBuffer(i32 noundef %i.ar) #7
  call void @UnlockReleaseBuffer(i32 noundef %i.ap) #7
  br label %revmap_physical_extend.exit.i

bb.n:                                             ; preds = %bb.l
  %i.as = icmp slt i32 %i.ap, 0
  br i1 %i.as, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.au = xor i32 %i.ap, -1
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %BufferGetPage.exit64.i.i

bb.p:                                             ; preds = %bb.n
  %i.ay = load ptr, ptr @BufferBlocks, align 8
  %i.az = add nsw i32 %i.ap, -1
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 13
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb
  br label %BufferGetPage.exit64.i.i

BufferGetPage.exit64.i.i:                         ; preds = %bb.p, %bb.o, %bb.k, %bb.j
  %.058.i.i = phi ptr [ %i.ao, %bb.k ], [ %i.aj, %bb.j ], [ %i.ax, %bb.o ], [ %i.bc, %bb.p ] ; 7 uses
  %.0.i.i = phi i32 [ %i.ad, %bb.k ], [ %i.ad, %bb.j ], [ %i.ap, %bb.o ], [ %i.ap, %bb.p ] ; 6 uses
  %i.bd = getelementptr i8, ptr %.058.i.i, i64 14
  %.058.val.i.i = load i16, ptr %i.bd, align 2
  %i.be = icmp eq i16 %.058.val.i.i, 0
  br i1 %i.be, label %bb.s, label %bb.q

bb.q:                                             ; preds = %BufferGetPage.exit64.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 16
  %i.bg = load i16, ptr %i.bf, align 8
  %i.bh = zext i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  %i.bk = load i16, ptr %i.bj, align 2
  %i.bl = icmp eq i16 %i.bk, -3949
  br i1 %i.bl, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 16
  %i.bn = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.bo = call i32 @errcode(i32 noundef 33557032) #7 ; 0 uses
  %i.bp = load i16, ptr %i.bm, align 8
  %i.bq = zext i16 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %.058.i.i, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = zext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = call i32 @BufferGetBlockNumber(i32 noundef %.0.i.i) #7
  %i.bz = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3, i32 noundef %i.bu, ptr noundef nonnull %i.bx, i32 noundef %i.by) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 586, ptr noundef nonnull @__func__.revmap_physical_extend) #7
  unreachable

bb.s:                                             ; preds = %bb.q, %BufferGetPage.exit64.i.i
  %i.ca = call zeroext i1 @brin_start_evacuating_page(ptr noundef %i.j, i32 noundef %.0.i.i) #7
  br i1 %i.ca, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cb = load i32, ptr %i.g, align 8
  call void @UnlockBuffer(i32 noundef %i.cb) #7
  %i.cc = load i32, ptr %i.a, align 8
  call void @brin_evacuate_page(ptr noundef %i.j, i32 noundef %i.cc, ptr noundef nonnull %0, i32 noundef %.0.i.i) #7
  br label %revmap_physical_extend.exit.i

bb.u:                                             ; preds = %bb.s
  %i.cd = load volatile i32, ptr @CritSectionCount, align 4
  %i.ce = add i32 %i.cd, 1
  store volatile i32 %i.ce, ptr @CritSectionCount, align 4
  call void @brin_page_init(ptr noundef nonnull %.058.i.i, i16 noundef zeroext -3950) #7
  call void @MarkBufferDirty(i32 noundef %.0.i.i) #7
  store i32 %i.aa, ptr %i.x, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 12
  store i16 40, ptr %i.cf, align 4
  %i.cg = load i32, ptr %i.g, align 8
  call void @MarkBufferDirty(i32 noundef %i.cg) #7
  %i.ch = load ptr, ptr %0, align 8               ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 118
  %i.cl = load i8, ptr %i.ck, align 2
  %i.cm = icmp eq i8 %i.cl, 112
  br i1 %i.cm, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.cn = load i32, ptr @wal_level, align 4
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store i32 %i.aa, ptr %3, align 4
  call void @XLogBeginInsert() #7
  call void @XLogRegisterData(ptr noundef nonnull %3, i32 noundef 4) #7
  %i.cv = load i32, ptr %i.g, align 8
  call void @XLogRegisterBuffer(i8 noundef zeroext 0, i32 noundef %i.cv, i8 noundef zeroext 8) #7
  call void @XLogRegisterBuffer(i8 noundef zeroext 1, i32 noundef %.0.i.i, i8 noundef zeroext 6) #7
  %i.cw = call i64 @XLogInsert(i8 noundef zeroext 17, i8 noundef zeroext 64) #7 ; 2 uses
  %i.cx = call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 32) ; 2 uses
  store volatile i64 %i.cx, ptr %.0.i.i.i.i, align 8
  store volatile i64 %i.cx, ptr %.058.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.u
  %i.cy = load volatile i32, ptr @CritSectionCount, align 4
  %i.cz = add i32 %i.cy, -1
  store volatile i32 %i.cz, ptr @CritSectionCount, align 4
  %i.da = load i32, ptr %i.g, align 8
  call void @UnlockBuffer(i32 noundef %i.da) #7
  call void @UnlockReleaseBuffer(i32 noundef %.0.i.i) #7
  br label %revmap_physical_extend.exit.i

revmap_physical_extend.exit.i:                    ; preds = %bb.z, %bb.t, %bb.m, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.db = load i32, ptr %i.e, align 4
  %5 = icmp ugt i32 %narrow.i, %i.db
  br i1 %5, label %bb.b, label %revmap_extend_and_get_blkno.exit, !llvm.loop !5

revmap_extend_and_get_blkno.exit:                 ; preds = %revmap_physical_extend.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @brinLockRevmapPageForUpdate(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load i32, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 12
  %.val15.i = load i32, ptr %i.b, align 4
  %i.c = udiv i32 %1, %.val.i
  %i.d = udiv i32 %i.c, 1360
  %narrow.i.i = add nuw nsw i32 %i.d, 1           ; 3 uses
  %.not.i.i = icmp ugt i32 %narrow.i.i, %.val15.i
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.f = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.2, i32 noundef %1) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 471, ptr noundef nonnull @__func__.revmap_get_buffer) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @BufferGetBlockNumber(i32 noundef %i.h) #7
  %.not.i = icmp eq i32 %narrow.i.i, %i.j
  %.pre.i = load i32, ptr %i.g, align 4           ; 3 uses
  br i1 %.not.i, label %revmap_get_buffer.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not14.i = icmp eq i32 %.pre.i, 0
  br i1 %.not14.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @ReleaseBuffer(i32 noundef %.pre.i) #7
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.c
  %i.k = load ptr, ptr %0, align 8
  %i.l = tail call i32 @ReadBuffer(ptr noundef %i.k, i32 noundef %narrow.i.i) #7 ; 2 uses
  store i32 %i.l, ptr %i.g, align 4
  br label %revmap_get_buffer.exit

revmap_get_buffer.exit:                           ; preds = %bb.d, %.thread.i
  %i.m = phi i32 [ %i.l, %.thread.i ], [ %.pre.i, %bb.d ] ; 2 uses
  tail call void @LockBufferInternal(i32 noundef %i.m, i32 noundef 3) #7
  ret i32 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @brinSetHeapBlockItemptr(i32 noundef %0, i32 noundef %1, i32 noundef %2, i48 %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.c = xor i32 %0, -1
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8
  br label %BufferGetPage.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @BufferBlocks, align 8
  %i.h = add nsw i32 %0, -1
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 13
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.k, %bb.c ]
  %.sroa.3.0.extract.shift = lshr i48 %3, 32      ; 2 uses
  %.sroa.3.0.extract.trunc = trunc nuw i48 %.sroa.3.0.extract.shift to i16
  %.sroa.0.0.extract.trunc = trunc i48 %3 to i16
  %.not = icmp eq i48 %.sroa.3.0.extract.shift, 0 ; 2 uses
  %i.l = lshr i48 %3, 16
  %i.m = trunc i48 %i.l to i16
  %.sroa.0.0.extract.trunc.sink = select i1 %.not, i16 -1, i16 %.sroa.0.0.extract.trunc
  %.sink = select i1 %.not, i16 -1, i16 %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.o = udiv i32 %2, %1
  %i.p = urem i32 %i.o, 1360
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [6 x i8], ptr %i.n, i64 %i.q ; 3 uses
  store i16 %.sroa.0.0.extract.trunc.sink, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i16 %.sink, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i16 %.sroa.3.0.extract.trunc, ptr %i.t, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @brinGetTupleForHeapBlock(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.ItemPointerData, align 2    ; 7 uses
  %i.a = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = urem i32 %1, %i.c
  %i.e = sub nuw i32 %1, %i.d                     ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 12
  %.val68 = load i32, ptr %i.f, align 4
  %i.g = udiv i32 %1, %i.c
  %i.h = udiv i32 %i.g, 1360
  %narrow.i = add nuw nsw i32 %i.h, 1             ; 2 uses
  %.not.i = icmp ugt i32 %narrow.i, %.val68       ; 2 uses
  %.0.i.a = select i1 %.not.i, i32 -1, i32 %narrow.i ; 2 uses
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i16 0, ptr %3, align 2
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  store i16 -1, ptr %6, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 -1, ptr %i.i, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i16 0, ptr %i.j, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.l = icmp eq i32 %5, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.af, %bb.c
  %i.m = load volatile i32, ptr @InterruptPending, align 4
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.f, label %bb.e, !prof !4

bb.e:                                             ; preds = %bb.d
  call void @ProcessInterrupts() #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = load i32, ptr %i.k, align 4              ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @BufferGetBlockNumber(i32 noundef %i.n) #7
  %.not63 = icmp eq i32 %i.p, %.0.i.a
  %.pre = load i32, ptr %i.k, align 4             ; 3 uses
  br i1 %.not63, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not64 = icmp eq i32 %.pre, 0
  br i1 %.not64, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @ReleaseBuffer(i32 noundef %.pre) #7
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.i, %bb.h
  %i.q = load ptr, ptr %0, align 8
  %i.r = call i32 @ReadBuffer(ptr noundef %i.q, i32 noundef %.0.i.a) #7 ; 2 uses
  store i32 %i.r, ptr %i.k, align 4
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.g
  %i.s = phi i32 [ %i.r, %.thread ], [ %.pre, %bb.g ]
  call void @LockBufferInternal(i32 noundef %i.s, i32 noundef 1) #7
  %i.t = load i32, ptr %i.k, align 4              ; 4 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.w = xor i32 %i.t, -1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  br label %BufferGetPage.exit

bb.l:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr @BufferBlocks, align 8
  %i.ab = add nsw i32 %i.t, -1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.k, %bb.l
  %.0.i.i = phi ptr [ %i.z, %bb.k ], [ %i.ae, %bb.l ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.ag = load i32, ptr %i.b, align 8
  %i.ah = udiv i32 %i.e, %i.ag
  %i.ai = urem i32 %i.ah, 1360
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [6 x i8], ptr %i.af, i64 %i.aj ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %i.am = load i16, ptr %i.al, align 2
  %.not81 = icmp eq i16 %i.am, 0
  br i1 %.not81, label %bb.m, label %bb.n

bb.m:                                             ; preds = %BufferGetPage.exit
  call void @UnlockBuffer(i32 noundef %i.t) #7
  br label %bb.ag

bb.n:                                             ; preds = %BufferGetPage.exit
  %i.an = load i16, ptr %i.j, align 2
  %.not82 = icmp eq i16 %i.an, 0
  br i1 %.not82, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = call zeroext i1 @ItemPointerEquals(ptr noundef nonnull %6, ptr noundef nonnull %i.ak) #7
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ap = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.aq = call i32 @errcode(i32 noundef 33557032) #7 ; 0 uses
  %i.ar = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 259, ptr noundef nonnull @__func__.brinGetTupleForHeapBlock) #7
  unreachable

bb.q:                                             ; preds = %bb.o, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %6, ptr noundef nonnull align 2 dereferenceable(6) %i.ak, i64 6, i1 false)
  %.val69 = load i16, ptr %i.ak, align 2
  %i.as = getelementptr i8, ptr %i.ak, i64 2
  %.val70 = load i16, ptr %i.as, align 2
  %i.at = zext i16 %.val69 to i32
  %i.au = shl nuw i32 %i.at, 16
  %i.av = zext i16 %.val70 to i32
  %i.aw = or disjoint i32 %i.au, %i.av            ; 2 uses
  %.val71 = load i16, ptr %i.al, align 2
  store i16 %.val71, ptr %3, align 2
  %i.ax = load i32, ptr %i.k, align 4
  call void @UnlockBuffer(i32 noundef %i.ax) #7
  %i.ay = load i32, ptr %2, align 4               ; 2 uses
  %.not83 = icmp eq i32 %i.ay, 0
  br i1 %.not83, label %.thread80, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = call i32 @BufferGetBlockNumber(i32 noundef %i.ay) #7
  %.not65 = icmp eq i32 %i.az, %i.aw
  %.pre101 = load i32, ptr %2, align 4            ; 3 uses
  br i1 %.not65, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not84 = icmp eq i32 %.pre101, 0
  br i1 %.not84, label %.thread80, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @ReleaseBuffer(i32 noundef %.pre101) #7
  br label %.thread80

.thread80:                                        ; preds = %bb.q, %bb.t, %bb.s
  %i.ba = call i32 @ReadBuffer(ptr noundef %i.a, i32 noundef %i.aw) #7 ; 2 uses
  store i32 %i.ba, ptr %2, align 4
  br label %bb.u

bb.u:                                             ; preds = %.thread80, %bb.r
  %i.bb = phi i32 [ %i.ba, %.thread80 ], [ %.pre101, %bb.r ] ; 2 uses
  br i1 %i.l, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @UnlockBuffer(i32 noundef %i.bb) #7
  br label %LockBuffer.exit

bb.w:                                             ; preds = %bb.u
  call void @LockBufferInternal(i32 noundef %i.bb, i32 noundef %5) #7
  br label %LockBuffer.exit

LockBuffer.exit:                                  ; preds = %bb.v, %bb.w
  %i.bc = load i32, ptr %2, align 4               ; 5 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %LockBuffer.exit
  %i.be = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.bf = xor i32 %i.bc, -1
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %BufferGetPage.exit75

bb.y:                                             ; preds = %LockBuffer.exit
  %i.bj = load ptr, ptr @BufferBlocks, align 8
  %i.bk = add nsw i32 %i.bc, -1
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  br label %BufferGetPage.exit75

BufferGetPage.exit75:                             ; preds = %bb.x, %bb.y
  %.0.i.i74 = phi ptr [ %i.bi, %bb.x ], [ %i.bn, %bb.y ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i74, i64 16
  %i.bp = load i16, ptr %i.bo, align 8
  %i.bq = zext i16 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i74, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = icmp eq i16 %i.bt, -3949
  br i1 %i.bu, label %bb.z, label %bb.af

bb.z:                                             ; preds = %BufferGetPage.exit75
  %i.bv = load i16, ptr %3, align 2               ; 2 uses
  %i.bw = getelementptr i8, ptr %.0.i.i74, i64 12
  %.val72 = load i16, ptr %i.bw, align 4          ; 2 uses
  %i.bx = icmp ult i16 %.val72, 25
  %i.by = zext i16 %.val72 to i32
  %i.bz = add nuw nsw i32 %i.by, 262120
  %i.ca = lshr i32 %i.bz, 2
  %i.cb = trunc i32 %i.ca to i16
  %.0.i76 = select i1 %i.bx, i16 0, i16 %i.cb
  %i.cc = icmp ugt i16 %i.bv, %.0.i76
  br i1 %i.cc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @UnlockBuffer(i32 noundef %i.bc) #7
end_hunk_0
