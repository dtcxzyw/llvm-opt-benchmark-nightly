Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/heapam_handler?download=true
inline.NumInlined: 135
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@heapam_relation_needs_toast_table:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.j
  %.025.not = xor i1 %.3, true
  %brmerge = select i1 %.025.not, i1 true, i1 %.329
  br i1 %brmerge, label %._crit_edge.thread, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ar = add i32 %.333, 7
  %i.as = and i32 %i.ar, -8
  %i.at = add i32 %i.ao, 7
  %i.au = sdiv i32 %i.at, 8
  %narrow = add nsw i32 %i.au, 30
  %i.av = and i32 %narrow, -8
  %i.aw = add i32 %i.av, %i.as
  %i.ax = icmp ugt i32 %i.aw, 2032
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %bb.k
  %.034 = phi i1 [ %.3, %._crit_edge ], [ %i.ax, %bb.k ], [ false, %bb.a ]
  ret i1 %.034
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @heapam_relation_toast_am(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.d = load i32, ptr %i.c, align 4
  ret i32 %i.d
}

declare void @heap_fetch_toast_slice(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @heapam_estimate_rel_size(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #2 {
bb.a:
  tail call void @table_block_relation_estimate_size(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef 28, i64 noundef 8168) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @heapam_scan_bitmap_next_tuple(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [291 x i16], align 16             ; 5 uses
  %5 = alloca %struct.ItemPointerData, align 2    ; 6 uses
  %6 = alloca %struct.HeapTupleData, align 8      ; 3 uses
  %7 = alloca %struct.HeapTupleData, align 8      ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.e = load i32, ptr %i.c, align 4              ; 2 uses
  %i.f = load i32, ptr %i.d, align 8
  %.not40 = icmp ult i32 %i.e, %i.f
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 6
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %BitmapHeapScanNextBlock.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.c, align 4
  store i32 0, ptr %i.d, align 8
  %i.u = load i32, ptr %i.g, align 4              ; 2 uses
  %.not74.i = icmp eq i32 %i.u, 0
  br i1 %.not74.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @ReleaseBuffer(i32 noundef %i.u) #9
  store i32 0, ptr %i.g, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = load ptr, ptr %i.h, align 8
  %i.w = call i32 @read_stream_next_buffer(ptr noundef %i.v, ptr noundef nonnull %i.a) #9 ; 2 uses
  store i32 %i.w, ptr %i.g, align 4
  %.not33 = icmp eq i32 %i.w, 0
  br i1 %.not33, label %BitmapHeapScanNextBlock.exit.thread, label %bb.e

BitmapHeapScanNextBlock.exit.thread:              ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.z

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 3 uses
  %i.z = load i8, ptr %i.y, align 4, !range !8, !noundef !9
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = call i32 @tbm_extract_page_tuple(ptr noundef nonnull %i.x, ptr noundef nonnull %i.b, i32 noundef 291) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.068.i = phi i32 [ -1, %bb.e ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.ad = load i8, ptr %i.ac, align 1, !range !8, !noundef !9
  store i8 %i.ad, ptr %2, align 1
  %i.ae = load i32, ptr %i.x, align 8             ; 5 uses
  store i32 %i.ae, ptr %i.i, align 8
  %i.af = load i32, ptr %i.g, align 4             ; 9 uses
  %i.ag = load ptr, ptr %i.j, align 8             ; 4 uses
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = load i32, ptr %i.l, align 8
  %i.aj = and i32 %i.ai, 1024
  %i.ak = icmp ne i32 %i.aj, 0
  call void @heap_page_prune_opt(ptr noundef %i.ah, i32 noundef %i.af, ptr noundef nonnull %i.k, i1 noundef zeroext %i.ak) #9
  call void @LockBufferInternal(i32 noundef %i.af, i32 noundef 1) #9
  %i.al = load i8, ptr %i.y, align 4, !range !8, !noundef !9
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.k, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %i.an = icmp sgt i32 %.068.i, 0
  br i1 %i.an, label %.lr.ph.i, label %BitmapHeapScanNextBlock.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ao = lshr i32 %i.ae, 16
  %i.ap = trunc nuw i32 %i.ao to i16
  %i.aq = trunc i32 %i.ae to i16
  %wide.trip.count.i = zext nneg i32 %.068.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %.06976.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.as = load i16, ptr %i.ar, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store i16 %i.ap, ptr %5, align 2
  store i16 %i.aq, ptr %i.m, align 2
  store i16 %i.as, ptr %i.n, align 2
  %i.at = load ptr, ptr %0, align 8
  %i.au = call zeroext i1 @heap_hot_search_buffer(ptr noundef nonnull %5, ptr noundef %i.at, i32 noundef %i.af, ptr noundef %i.ag, ptr noundef nonnull %6, ptr noundef null, i1 noundef zeroext true) #9
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.val73.i = load i16, ptr %i.n, align 2
  %i.av = add i32 %.06976.i, 1
  %i.aw = sext i32 %.06976.i to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.aw
  store i16 %.val73.i, ptr %i.ax, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.i = phi i32 [ %i.av, %bb.i ], [ %.06976.i, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %BitmapHeapScanNextBlock.exit, label %bb.h, !llvm.loop !21

bb.k:                                             ; preds = %bb.g
  %i.ay = icmp slt i32 %i.af, 0
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.ba = xor i32 %i.af, -1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8
  br label %BufferGetPage.exit.i

bb.m:                                             ; preds = %bb.k
  %i.be = load ptr, ptr @BufferBlocks, align 8
  %i.bf = add nsw i32 %i.af, -1
  %i.bg = sext i32 %i.bf to i64
  %i.bh = shl nsw i64 %i.bg, 13
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh
  br label %BufferGetPage.exit.i

BufferGetPage.exit.i:                             ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi ptr [ %i.bd, %bb.l ], [ %i.bi, %bb.m ] ; 3 uses
  %i.bj = getelementptr i8, ptr %.0.i.i.i, i64 12
  %.val.i = load i16, ptr %i.bj, align 4          ; 2 uses
  %i.bk = icmp ult i16 %.val.i, 25
  %i.bl = zext i16 %.val.i to i32
  %i.bm = add nuw nsw i32 %i.bl, 262120
  %8 = lshr i32 %i.bm, 2
  %9 = trunc i32 %8 to i16                        ; 2 uses
  %.not7883.i = icmp eq i16 %9, 0
  %.not78.i = select i1 %i.bk, i1 true, i1 %.not7883.i
  br i1 %.not78.i, label %BitmapHeapScanNextBlock.exit, label %.lr.ph81.i

.lr.ph81.i:                                       ; preds = %BufferGetPage.exit.i
  %i.bn = getelementptr i8, ptr %.0.i.i.i, i64 20
  %i.bo = lshr i32 %i.ae, 16
  %i.bp = trunc nuw i32 %i.bo to i16
  %i.bq = trunc i32 %i.ae to i16
  %umax.i = add nuw nsw i16 %9, 1
  %wide.trip.count89.i = zext i16 %umax.i to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %.lr.ph81.i
  %indvars.iv86.i = phi i64 [ 1, %.lr.ph81.i ], [ %indvars.iv.next87.i, %bb.s ] ; 3 uses
  %.279.i = phi i32 [ 0, %.lr.ph81.i ], [ %.4.i, %bb.s ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.br = getelementptr [4 x i8], ptr %i.bn, i64 %indvars.iv86.i
  %i.bs = load i32, ptr %i.br, align 4            ; 3 uses
  %i.bt = and i32 %i.bs, 98304
  %i.bu = icmp eq i32 %i.bt, 32768
  br i1 %i.bu, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bv = and i32 %i.bs, 32767
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.bw
  store ptr %i.bx, ptr %i.p, align 8
  %i.by = lshr i32 %i.bs, 17
  store i32 %i.by, ptr %7, align 8
  %i.bz = load ptr, ptr %0, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cb = load i32, ptr %i.ca, align 8
  store i32 %i.cb, ptr %i.q, align 4
  store i16 %i.bp, ptr %i.r, align 4
  store i16 %i.bq, ptr %i.s, align 2
  %i.cc = trunc nuw i64 %indvars.iv86.i to i16    ; 2 uses
  store i16 %i.cc, ptr %i.t, align 8
  %i.cd = call zeroext i1 @HeapTupleSatisfiesVisibility(ptr noundef nonnull %7, ptr noundef %i.ag, i32 noundef %i.af) #9 ; 2 uses
  br i1 %i.cd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ce = add i32 %.279.i, 1
  %i.cf = sext i32 %.279.i to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.cf
  store i16 %i.cc, ptr %i.cg, align 2
  %i.ch = load ptr, ptr %0, align 8
  %i.ci = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 20
  %.val.i.i = load i16, ptr %i.cj, align 4
  %i.ck = and i16 %.val.i.i, 768
  %i.cl = icmp eq i16 %i.ck, 768
  br i1 %i.cl, label %HeapTupleHeaderGetXmin.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val2.i.i = load i32, ptr %i.ci, align 4
  br label %HeapTupleHeaderGetXmin.exit.i

HeapTupleHeaderGetXmin.exit.i:                    ; preds = %bb.q, %bb.p
  %i.cm = phi i32 [ %.val2.i.i, %bb.q ], [ 2, %bb.p ]
  call void @PredicateLockTID(ptr noundef %i.ch, ptr noundef nonnull %i.r, ptr noundef %i.ag, i32 noundef %i.cm) #9
  br label %bb.r

bb.r:                                             ; preds = %HeapTupleHeaderGetXmin.exit.i, %bb.o
  %.3.i = phi i32 [ %i.ce, %HeapTupleHeaderGetXmin.exit.i ], [ %.279.i, %bb.o ]
  %i.cn = load ptr, ptr %0, align 8
  call void @HeapCheckForSerializableConflictOut(i1 noundef zeroext %i.cd, ptr noundef %i.cn, ptr noundef nonnull %7, i32 noundef %i.af, ptr noundef %i.ag) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %.4.i = phi i32 [ %.3.i, %bb.r ], [ %.279.i, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1 ; 2 uses
  %exitcond90.i = icmp eq i64 %indvars.iv.next87.i, %wide.trip.count89.i
  br i1 %exitcond90.i, label %BitmapHeapScanNextBlock.exit, label %bb.n, !llvm.loop !22

BitmapHeapScanNextBlock.exit:                     ; preds = %bb.j, %bb.s, %.preheader.i, %BufferGetPage.exit.i
  %.5.i = phi i32 [ %.4.i, %bb.s ], [ 0, %BufferGetPage.exit.i ], [ 0, %.preheader.i ], [ %.1.i, %bb.j ]
  call void @UnlockBuffer(i32 noundef %i.af) #9
  store i32 %.5.i, ptr %i.d, align 8
  %i.co = load i8, ptr %i.y, align 4, !range !8, !noundef !9
  %i.cp = trunc nuw i8 %i.co to i1
  %..i = select i1 %i.cp, ptr %3, ptr %4          ; 2 uses
  %i.cq = load i64, ptr %..i, align 8
  %i.cr = add i64 %i.cq, 1
  store i64 %i.cr, ptr %..i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.cs = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ct = load i32, ptr %i.d, align 8
  %.not = icmp ult i32 %i.cs, %i.ct
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !23

._crit_edge:                                      ; preds = %BitmapHeapScanNextBlock.exit, %bb.a
  %.lcssa = phi i32 [ %i.e, %bb.a ], [ %i.cs, %BitmapHeapScanNextBlock.exit ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.cv = zext i32 %.lcssa to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 4 uses
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.db = load ptr, ptr @LocalBufferBlockPointers, align 8
  %i.dc = xor i32 %i.cz, -1
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8
  br label %BufferGetPage.exit

bb.u:                                             ; preds = %._crit_edge
  %i.dg = load ptr, ptr @BufferBlocks, align 8
  %i.dh = add nsw i32 %i.cz, -1
  %i.di = sext i32 %i.dh to i64
  %i.dj = shl nsw i64 %i.di, 13
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dj
  br label %BufferGetPage.exit

BufferGetPage.exit:                               ; preds = %bb.t, %bb.u
  %.0.i.i = phi ptr [ %i.df, %bb.t ], [ %i.dk, %bb.u ] ; 2 uses
  %i.dl = zext i16 %i.cx to i64
  %i.dm = getelementptr i8, ptr %.0.i.i, i64 20
  %i.dn = getelementptr [4 x i8], ptr %i.dm, i64 %i.dl ; 2 uses
  %.val = load i32, ptr %i.dn, align 4
  %i.do = and i32 %.val, 32767
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.dq, ptr %i.ds, align 8
  %i.dt = load i32, ptr %i.dn, align 4
  %i.du = lshr i32 %i.dt, 17
  store i32 %i.du, ptr %i.dr, align 8
  %i.dv = load ptr, ptr %0, align 8               ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.dx, ptr %i.dy, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eb = load i32, ptr %i.ea, align 8            ; 2 uses
  %i.ec = lshr i32 %i.eb, 16
  %i.ed = trunc nuw i32 %i.ec to i16
  store i16 %i.ed, ptr %i.dz, align 4
  %i.ee = trunc i32 %i.eb to i16
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 110
  store i16 %i.ee, ptr %i.ef, align 2
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i16 %i.cx, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 480
  %i.ei = load ptr, ptr %i.eh, align 8            ; 2 uses
  %.not32 = icmp eq ptr %i.ei, null
  br i1 %.not32, label %bb.v, label %bb.x, !prof !10

bb.v:                                             ; preds = %BufferGetPage.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dv, i64 476
  %i.ek = load i8, ptr %i.ej, align 4, !range !8, !noundef !9
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @pgstat_assoc_relation(ptr noundef nonnull %i.dv) #9
  %.pre = load ptr, ptr %0, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 480
  %.pre46 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.x

bb.x:                                             ; preds = %BufferGetPage.exit, %bb.w
  %i.em = phi ptr [ %i.ei, %BufferGetPage.exit ], [ %.pre46, %bb.w ]
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.en, align 8
  %.pre47 = load i32, ptr %i.cy, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x
  %i.eq = phi i32 [ %i.cz, %bb.v ], [ %.pre47, %bb.x ]
  %i.er = call ptr @ExecStoreBufferHeapTuple(ptr noundef nonnull %i.dr, ptr noundef %1, i32 noundef %i.eq) #9 ; 0 uses
  %i.es = load i32, ptr %i.c, align 4
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.c, align 4
  br label %bb.z

bb.z:                                             ; preds = %BitmapHeapScanNextBlock.exit.thread, %bb.y
  %.not36 = phi i1 [ false, %BitmapHeapScanNextBlock.exit.thread ], [ true, %bb.y ]
  ret i1 %.not36
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @heapam_scan_sample_next_block(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %.not40 = icmp eq i32 %i.g, 0
  br i1 %.not40, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ReleaseBuffer(i32 noundef %i.g) #9
  store i32 0, ptr %i.f, align 4
  br label %bb.d
end_hunk_0
