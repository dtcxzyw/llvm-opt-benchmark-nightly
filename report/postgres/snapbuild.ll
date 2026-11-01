Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/snapbuild?download=true
inline.NumInlined: 48
inline.NumDeleted: 17
begin_hunk_0_@SnapBuildSerialize:bb.a
  %i.ai = zext i32 %.val to i64                   ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = add i64 %i.ak, %i.ai
  %i.am = shl i64 %i.al, 2
  %i.an = add i64 %i.am, 144                      ; 4 uses
  %i.ao = call ptr @palloc0(i64 noundef %i.an) #13 ; 14 uses
  store i32 1369563137, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  store i32 6, ptr %i.ap, align 8
  %i.aq = trunc i64 %i.an to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 %i.aq, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 6 uses
  store i32 -1, ptr %i.as, align 4
  %i.at = load ptr, ptr @pg_comp_crc32c, align 8
  %i.au = call i32 %i.at(i32 noundef -1, ptr noundef nonnull %i.ap, i64 noundef 8) #13 ; 2 uses
  store i32 %i.au, ptr %i.as, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 144 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.aw, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 104, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr null, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  store ptr null, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  store ptr null, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  store ptr null, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 136
  store ptr null, ptr %i.bc, align 8
  store i64 %i.ai, ptr %i.bb, align 8
  %i.bd = load ptr, ptr @pg_comp_crc32c, align 8
  %i.be = call i32 %i.bd(i32 noundef %i.au, ptr noundef nonnull %i.aw, i64 noundef 128) #13 ; 3 uses
  store i32 %i.be, ptr %i.as, align 4
  %i.bf = load i64, ptr %i.aj, align 8            ; 2 uses
  %.not88 = icmp eq i64 %i.bf, 0
  br i1 %.not88, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = shl i64 %i.bf, 2                        ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bi = load ptr, ptr %i.bh, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 4 %i.bi, i64 %i.bg, i1 false)
  %i.bj = load ptr, ptr @pg_comp_crc32c, align 8
  %i.bk = call i32 %i.bj(i32 noundef %i.be, ptr noundef nonnull %i.av, i64 noundef %i.bg) #13 ; 2 uses
  store i32 %i.bk, ptr %i.as, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bg
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bm = phi i32 [ %i.bk, %bb.k ], [ %i.be, %bb.j ]
  %.080 = phi ptr [ %i.bl, %bb.k ], [ %i.av, %bb.j ] ; 2 uses
  %.not89 = icmp eq i32 %.val, 0
  br i1 %.not89, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = shl nuw nsw i64 %i.ai, 2                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.080, ptr align 4 %i.af, i64 %i.bn, i1 false)
  %i.bo = load ptr, ptr @pg_comp_crc32c, align 8
  %i.bp = load i32, ptr %i.as, align 4
  %i.bq = call i32 %i.bo(i32 noundef %i.bp, ptr noundef nonnull %.080, i64 noundef %i.bn) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.br = phi i32 [ %i.bq, %bb.m ], [ %i.bm, %bb.l ]
  %i.bs = xor i32 %i.br, -1
  store i32 %i.bs, ptr %i.as, align 4
  %i.bt = call i32 @OpenTransientFile(ptr noundef nonnull %i.a, i32 noundef 193) #13 ; 6 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bv = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.bw = call i32 @errcode_for_file_access() #13 ; 0 uses
  %i.bx = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.a) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1655, ptr noundef nonnull @__func__.SnapBuildSerialize) #13
  unreachable

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %i.j, align 4
  %i.by = load ptr, ptr @my_wait_event_info, align 8
  store volatile i32 167772218, ptr %i.by, align 4
  %i.bz = call i64 @write(i32 noundef %i.bt, ptr noundef nonnull %i.ao, i64 noundef %i.an) #13
  %.not90 = icmp eq i64 %i.bz, %i.an
  br i1 %.not90, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = load i32, ptr %i.j, align 4             ; 2 uses
  %i.cb = call i32 @CloseTransientFile(i32 noundef %i.bt) #13 ; 0 uses
  %.not94 = icmp eq i32 %i.ca, 0
  %i.cc = select i1 %.not94, i32 28, i32 %i.ca
  store i32 %i.cc, ptr %i.j, align 4
  %i.cd = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.ce = call i32 @errcode_for_file_access() #13 ; 0 uses
  %i.cf = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.52, ptr noundef nonnull %i.a) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1669, ptr noundef nonnull @__func__.SnapBuildSerialize) #13
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cg = load ptr, ptr @my_wait_event_info, align 8
  store volatile i32 0, ptr %i.cg, align 4
  %i.ch = load ptr, ptr @my_wait_event_info, align 8
  store volatile i32 167772217, ptr %i.ch, align 4
  %i.ci = call i32 @pg_fsync(i32 noundef %i.bt) #13
  %.not91 = icmp eq i32 %i.ci, 0
  br i1 %.not91, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = load i32, ptr %i.j, align 4
  %i.ck = call i32 @CloseTransientFile(i32 noundef %i.bt) #13 ; 0 uses
  store i32 %i.cj, ptr %i.j, align 4
  %i.cl = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.cm = call i32 @errcode_for_file_access() #13 ; 0 uses
  %i.cn = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.53, ptr noundef nonnull %i.a) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1693, ptr noundef nonnull @__func__.SnapBuildSerialize) #13
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.co = load ptr, ptr @my_wait_event_info, align 8
  store volatile i32 0, ptr %i.co, align 4
  %i.cp = call i32 @CloseTransientFile(i32 noundef %i.bt) #13
  %.not92 = icmp eq i32 %i.cp, 0
  br i1 %.not92, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.cr = call i32 @errcode_for_file_access() #13 ; 0 uses
  %i.cs = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.25, ptr noundef nonnull %i.a) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1700, ptr noundef nonnull @__func__.SnapBuildSerialize) #13
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @fsync_fname(ptr noundef nonnull @.str.21, i1 noundef zeroext true) #13
  %i.ct = call i32 @rename(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13
  %.not93 = icmp eq i32 %i.ct, 0
  br i1 %.not93, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.cv = call i32 @errcode_for_file_access() #13 ; 0 uses
  %i.cw = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.54, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1713, ptr noundef nonnull @__func__.SnapBuildSerialize) #13
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @fsync_fname(ptr noundef nonnull %i.b, i1 noundef zeroext false) #13
  call void @fsync_fname(ptr noundef nonnull @.str.21, i1 noundef zeroext true) #13
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %1, ptr %i.cx, align 8
  store ptr %i.ac, ptr @CurrentMemoryContext, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8
  call void @ReorderBufferSetRestartPoint(ptr noundef %i.cz, i64 noundef %1) #13
  call void @pfree(ptr noundef nonnull %i.ao) #13
  %.not96 = icmp eq ptr %i.af, null
  br i1 %.not96, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @pfree(ptr noundef nonnull %i.af) #13
  br label %bb.z

bb.z:                                             ; preds = %.thread103, %bb.x, %bb.y, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare i32 @ReorderBufferGetOldestXmin(ptr noundef) local_unnamed_addr #2

declare void @LogicalIncreaseXminForSlot(i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ReorderBufferGetOldestTXN(ptr noundef) local_unnamed_addr #2

declare void @LogicalIncreaseRestartDecodingForSlot(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @SnapBuildSerializationPoint(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = icmp slt i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @SnapBuildRestore(ptr noundef nonnull %0, i64 noundef %1) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @SnapBuildSerialize(ptr noundef nonnull %0, i64 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @SnapBuildRestore(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.SnapBuildOnDisk, align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = load i32, ptr %0, align 8
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call zeroext i1 @SnapBuildRestoreSnapshot(ptr noundef nonnull %2, i64 noundef %1, ptr noundef %i.d, i1 noundef zeroext true)
  br i1 %i.e, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp slt i32 %i.g, 2
  br i1 %i.h, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ugt i32 %i.j, 2
  %i.n = icmp ugt i32 %i.l, 2
  %or.cond.i = and i1 %i.m, %i.n
  %i.o = sub i32 %i.j, %i.l
  %i.p = icmp slt i32 %i.o, 0
  %i.q = icmp ult i32 %i.j, %i.l
  %.0.i = select i1 %or.cond.i, i1 %i.p, i1 %i.q
  br i1 %.0.i, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %i.j, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 36
  %3 = load i32, ptr %i.t, align 4
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  store i32 %3, ptr %4, align 4
  store i32 %i.g, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store i64 %i.v, ptr %i.w, align 8
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  call void @pfree(ptr noundef %i.y) #13
  %i.z = load i64, ptr %i.u, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8
  store ptr %i.ac, ptr %i.x, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 120
  store ptr null, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not30 = icmp eq ptr %i.ag, null
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @pfree(ptr noundef nonnull %i.ag) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ai = load i64, ptr %i.ah, align 8
  store i64 %i.ai, ptr %i.ae, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  store ptr %i.ak, ptr %i.af, align 8
  store ptr null, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 4 uses
  %.not31 = icmp eq ptr %i.am, null
  br i1 %.not31, label %SnapBuildSnapDecRefcount.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 46
  %i.ao = load i8, ptr %i.an, align 2, !range !6, !noundef !7
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.ar = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.1) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 348, ptr noundef nonnull @__func__.SnapBuildSnapDecRefcount) #13
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 64 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = add i32 %i.at, -1                       ; 2 uses
  store i32 %i.au, ptr %i.as, align 8
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %SnapBuildFreeSnapshot.exit.i, label %SnapBuildSnapDecRefcount.exit

SnapBuildFreeSnapshot.exit.i:                     ; preds = %bb.l
  call void @pfree(ptr noundef nonnull %i.am) #13
  br label %SnapBuildSnapDecRefcount.exit

SnapBuildSnapDecRefcount.exit:                    ; preds = %SnapBuildFreeSnapshot.exit.i, %bb.l, %bb.i
  %i.aw = load i64, ptr %i.w, align 8
  %i.ax = shl i64 %i.aw, 2
  %i.ay = add i64 %i.ax, 108
  %i.az = load ptr, ptr %i.c, align 8
  %i.ba = call ptr @MemoryContextAllocZero(ptr noundef %i.az, i64 noundef %i.ay) #13 ; 12 uses
  store i32 5, ptr %i.ba, align 8
  %i.bb = load i32, ptr %i.s, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %i.bb, ptr %i.bc, align 4
  %i.bd = load i32, ptr %4, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 %i.bd, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bf, ptr %i.bg, align 8
  %i.bh = load i64, ptr %i.w, align 8             ; 2 uses
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i32 %i.bi, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load i64, ptr %i.w, align 8
  %i.bn = shl i64 %i.bm, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bf, ptr align 4 %i.bl, i64 %i.bn, i1 false)
  %i.bo = and i64 %i.bh, 4294967295
  call void @pg_qsort(ptr noundef nonnull %i.bf, i64 noundef %i.bo, i64 noundef 4, ptr noundef nonnull @xidComparator) #13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store i32 0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 3 uses
  store i32 0, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 68
  store i32 0, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  store i64 0, ptr %i.bt, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.bp, i8 0, i64 15, i1 false)
  store ptr %i.ba, ptr %i.al, align 8
  %i.bu = load i32, ptr %i.br, align 8
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.br, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8
  call void @ReorderBufferSetRestartPoint(ptr noundef %i.bx, i64 noundef %1) #13
  %i.by = load i32, ptr @MyBackendType, align 4
  %i.bz = icmp eq i32 %i.by, 1
  %i.ca = select i1 %i.bz, i32 14, i32 15
  %i.cb = call zeroext i1 @errstart(i32 noundef %i.ca, ptr noundef null) #13
  br i1 %i.cb, label %bb.m, label %bb.r

bb.m:                                             ; preds = %SnapBuildSnapDecRefcount.exit
  %i.cc = lshr i64 %1, 32
  %i.cd = trunc nuw i64 %i.cc to i32
  %i.ce = trunc i64 %1 to i32
  %i.cf = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.43, i32 noundef %i.cd, i32 noundef %i.ce) #13 ; 0 uses
  %i.cg = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.55) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1922, ptr noundef nonnull @__func__.SnapBuildRestore) #13
  br label %bb.r

bb.n:                                             ; preds = %bb.d, %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %.not32 = icmp eq ptr %i.ci, null
  br i1 %.not32, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @pfree(ptr noundef nonnull %i.ci) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not33 = icmp eq ptr %i.ck, null
  br i1 %.not33, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @pfree(ptr noundef nonnull %i.ck) #13
  br label %bb.r

bb.r:                                             ; preds = %SnapBuildSnapDecRefcount.exit, %bb.m, %bb.p, %bb.q, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.p ], [ false, %bb.q ], [ true, %bb.m ], [ true, %SnapBuildSnapDecRefcount.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @SnapBuildRestoreSnapshot(ptr noundef %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = lshr i64 %1, 32
  %i.c = trunc nuw i64 %i.b to i32
  %i.d = trunc i64 %1 to i32
  %i.e = call i32 (ptr, ptr, ...) @pg_sprintf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %i.c, i32 noundef %i.d) #13 ; 0 uses
  %i.f = call i32 @OpenTransientFile(ptr noundef nonnull %i.a, i32 noundef 0) #13 ; 6 uses
  %i.g = icmp sgt i32 %i.f, -1                    ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__errno_location() #15
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.l = call i32 @errcode_for_file_access() #13  ; 0 uses
  %i.m = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.22, ptr noundef nonnull %i.a) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1767, ptr noundef nonnull @__func__.SnapBuildRestoreSnapshot) #13
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @fsync_fname(ptr noundef nonnull %i.a, i1 noundef zeroext false) #13
  call void @fsync_fname(ptr noundef nonnull @.str.21, i1 noundef zeroext true) #13
  call fastcc void @SnapBuildRestoreContents(i32 noundef %i.f, ptr noundef %0, i64 noundef 16, ptr noundef %i.a)
  %i.n = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.n, 1369563137
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.p = call i32 @errcode(i32 noundef 16779816) #13 ; 0 uses
  %i.q = load i32, ptr %0, align 8
  %i.r = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.23, ptr noundef nonnull %i.a, i32 noundef %i.q, i32 noundef 1369563137) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1788, ptr noundef nonnull @__func__.SnapBuildRestoreSnapshot) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8
  %.not49 = icmp eq i32 %i.t, 6
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.v = call i32 @errcode(i32 noundef 16779816) #13 ; 0 uses
  %i.w = load i32, ptr %i.s, align 8
  %i.x = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.24, ptr noundef nonnull %i.a, i32 noundef %i.w, i32 noundef 6) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1794, ptr noundef nonnull @__func__.SnapBuildRestoreSnapshot) #13
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.y = load ptr, ptr @pg_comp_crc32c, align 8
  %i.z = call i32 %i.y(i32 noundef -1, ptr noundef nonnull %i.s, i64 noundef 8) #13
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call fastcc void @SnapBuildRestoreContents(i32 noundef %i.f, ptr noundef nonnull %i.aa, i64 noundef 128, ptr noundef %i.a)
  %i.ab = load ptr, ptr @pg_comp_crc32c, align 8
  %i.ac = call i32 %i.ab(i32 noundef %i.z, ptr noundef nonnull %i.aa, i64 noundef 128) #13 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %.not50 = icmp eq i64 %i.ae, 0
  br i1 %.not50, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = shl i64 %i.ae, 2                        ; 3 uses
  %i.ag = call ptr @MemoryContextAllocZero(ptr noundef %2, i64 noundef %i.af) #13 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8
  call fastcc void @SnapBuildRestoreContents(i32 noundef %i.f, ptr noundef %i.ag, i64 noundef %i.af, ptr noundef %i.a)
  %i.ai = load ptr, ptr @pg_comp_crc32c, align 8
  %i.aj = load ptr, ptr %i.ah, align 8
  %i.ak = call i32 %i.ai(i32 noundef %i.ac, ptr noundef %i.aj, i64 noundef %i.af) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i32 [ %i.ak, %bb.j ], [ %i.ac, %bb.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %.not51 = icmp eq i64 %i.am, 0
  br i1 %.not51, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = shl i64 %i.am, 2                        ; 3 uses
  %i.ao = call ptr @MemoryContextAllocZero(ptr noundef %2, i64 noundef %i.an) #13 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.ao, ptr %i.ap, align 8
  call fastcc void @SnapBuildRestoreContents(i32 noundef %i.f, ptr noundef %i.ao, i64 noundef %i.an, ptr noundef %i.a)
  %i.aq = load ptr, ptr @pg_comp_crc32c, align 8
  %i.ar = load ptr, ptr %i.ap, align 8
  %i.as = call i32 %i.aq(i32 noundef %.0, ptr noundef %i.ar, i64 noundef %i.an) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1 = phi i32 [ %i.as, %bb.l ], [ %.0, %bb.k ]
  %i.at = call i32 @CloseTransientFile(i32 noundef %i.f) #13
  %.not52 = icmp eq i32 %i.at, 0
  br i1 %.not52, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.av = call i32 @errcode_for_file_access() #13 ; 0 uses
  %i.aw = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.25, ptr noundef nonnull %i.a) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1826, ptr noundef nonnull @__func__.SnapBuildRestoreSnapshot) #13
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ax = xor i32 %.1, -1                         ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = icmp eq i32 %i.az, %i.ax
  br i1 %i.ba, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.bc = call i32 @errcode(i32 noundef 16779816) #13 ; 0 uses
  %i.bd = load i32, ptr %i.ay, align 4
  %i.be = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.26, ptr noundef nonnull %i.a, i32 noundef %i.ax, i32 noundef %i.bd) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1835, ptr noundef nonnull @__func__.SnapBuildRestoreSnapshot) #13
end_hunk_0
