Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/xloginsert?download=true
inline.NumInlined: 31
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@XLogRegisterData:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 %1, ptr %i.m, align 8
  %i.n = load ptr, ptr @mainrdata_last, align 8
  store ptr %i.k, ptr %i.n, align 8
  store ptr %i.k, ptr @mainrdata_last, align 8
  %i.o = zext i32 %1 to i64
  %i.p = load i64, ptr @mainrdata_len, align 8
  %i.q = add i64 %i.p, %i.o
  store i64 %i.q, ptr @mainrdata_len, align 8
  ret void
}

declare i32 @errdetail_internal(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @XLogRegisterBufData(i8 noundef zeroext %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @registered_buffers, align 8
  %i.b = zext i8 %0 to i64
  %i.c = getelementptr inbounds nuw [8304 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !8, !noundef !9
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.g = zext i8 %0 to i32
  %i.h = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7, i32 noundef %i.g) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 424, ptr noundef nonnull @__func__.XLogRegisterBufData) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load i32, ptr @num_rdatas, align 4       ; 3 uses
  %i.j = load i32, ptr @max_rdatas, align 4
  %.not = icmp slt i32 %i.i, %i.j
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.l = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5) #9 ; 0 uses
  %i.m = load i32, ptr @num_rdatas, align 4
  %i.n = load i32, ptr @max_rdatas, align 4
  %i.o = tail call i32 (ptr, ...) @errdetail_internal(ptr noundef nonnull @.str.6, i32 noundef %i.m, i32 noundef %i.n) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 436, ptr noundef nonnull @__func__.XLogRegisterBufData) #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add i32 %i.q, %2
  %i.s = or i32 %i.r, %2
  %or.cond.not = icmp ult i32 %i.s, 65536
  br i1 %or.cond.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.u = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5) #9 ; 0 uses
  %i.v = zext i8 %0 to i32
  %i.w = load i32, ptr %i.p, align 8
  %i.x = tail call i32 (ptr, ...) @errdetail_internal(ptr noundef nonnull @.str.8, i32 noundef 65535, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %2) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 441, ptr noundef nonnull @__func__.XLogRegisterBufData) #9
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = load ptr, ptr @rdatas, align 8
  %i.z = add nsw i32 %i.i, 1
  store i32 %i.z, ptr @num_rdatas, align 4
  %i.aa = sext i32 %i.i to i64
  %i.ab = getelementptr inbounds [24 x i8], ptr %i.y, i64 %i.aa ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %1, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %2, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  store ptr %i.ab, ptr %i.af, align 8
  store ptr %i.ab, ptr %i.ae, align 8
  %i.ag = load i32, ptr %i.p, align 8
  %i.ah = add i32 %i.ag, %2
  store i32 %i.ah, ptr %i.p, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @XLogSetRecordFlags(i8 noundef zeroext %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr @curinsert_flags, align 1
  %i.b = or i8 %i.a, %0
  store i8 %i.b, ptr @curinsert_flags, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 1, 0) i64 @XLogInsert(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.PGAlignedBlock, align 8     ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %.b = load i1, ptr @begininsert_called, align 1
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.d = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 488, ptr noundef nonnull @__func__.XLogInsert) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %i.f = and i32 %i.e, 12
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call zeroext i1 @errstart_cold(i32 noundef 24, ptr noundef null) #10 ; 0 uses
  %i.h = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10, i32 noundef %i.e) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 497, ptr noundef nonnull @__func__.XLogInsert) #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = load i32, ptr @Mode, align 4
  %i.j = icmp eq i32 %i.i, 0
  %i.k = icmp ne i8 %0, 0
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.l = zext i8 %0 to i64
  %i.m = load ptr, ptr @PGLZ_strategy_default, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr @max_registered_block_id, align 4 ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i, label %XLogResetInsertion.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.p = load ptr, ptr @registered_buffers, align 8 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.n to i64  ; 2 uses
  %xtraiter100 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.q = icmp ult i32 %i.n, 4
  br i1 %i.q, label %.epil.preheader99, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter104 = and i64 %wide.trip.count.i, 2147483644
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.g ] ; 5 uses
  %niter105 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter105.next.3, %bb.g ]
  %i.r = getelementptr inbounds nuw [8304 x i8], ptr %i.p, i64 %indvars.iv.i
  store i8 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw [8304 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8304
  store i8 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw [8304 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16608
  store i8 0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw [8304 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24912
  store i8 0, ptr %i.x, align 8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter105.next.3 = add i64 %niter105, 4         ; 2 uses
  %niter105.ncmp.3 = icmp eq i64 %niter105.next.3, %unroll_iter104
  br i1 %niter105.ncmp.3, label %XLogResetInsertion.exit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !4

bb.h:                                             ; preds = %.preheader, %XLogRecordAssemble.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @GetFullPageWriteInfo(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %i.y = load i64, ptr %i.a, align 8
  %i.z = load i8, ptr %i.b, align 1, !range !8, !noundef !9
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = load ptr, ptr @hdr_scratch, align 8     ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  store ptr null, ptr @hdr_rdt, align 8
  store ptr %i.ab, ptr getelementptr inbounds nuw (i8, ptr @hdr_rdt, i64 8), align 8
  %i.ad = load ptr, ptr @wal_consistency_checking, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.l
  %i.af = load i8, ptr %i.ae, align 1, !range !8, !noundef !9
  %i.ag = shl nuw nsw i8 %i.af, 1
  %spec.select.i = or i8 %i.ag, %1                ; 3 uses
  %i.ah = load i32, ptr @max_registered_block_id, align 4 ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i12, label %._crit_edge.i

.lr.ph.i12:                                       ; preds = %bb.h
  %i.aj = and i8 %spec.select.i, 2
  %i.ak = icmp ne i8 %i.aj, 0
  %.pre234.i = load ptr, ptr @registered_buffers, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.aw, %.lr.ph.i12
  %.134 = phi i64 [ 0, %.lr.ph.i12 ], [ %.235, %bb.aw ] ; 6 uses
  %.130 = phi i32 [ 0, %.lr.ph.i12 ], [ %.231, %bb.aw ] ; 3 uses
  %.1 = phi i64 [ 0, %.lr.ph.i12 ], [ %.2, %bb.aw ] ; 3 uses
  %i.al = phi i32 [ %i.ah, %.lr.ph.i12 ], [ %i.fe, %bb.aw ]
  %i.am = phi ptr [ %.pre234.i, %.lr.ph.i12 ], [ %i.ff, %bb.aw ] ; 2 uses
  %indvars.iv.i13 = phi i64 [ 0, %.lr.ph.i12 ], [ %indvars.iv.next.i14, %bb.aw ] ; 3 uses
  %indvars.iv.i13.a = phi i64 [ 0, %.lr.ph.i12 ], [ %.3.i, %bb.aw ] ; 3 uses
  %.0161222.i = phi ptr [ null, %.lr.ph.i12 ], [ %.4167.i, %bb.aw ] ; 5 uses
  %.0163221.i = phi ptr [ @hdr_rdt, %.lr.ph.i12 ], [ %.1170.i, %bb.aw ] ; 3 uses
  %.sroa.034.0221.i = phi i16 [ undef, %.lr.ph.i12 ], [ %.sroa.034.3.i, %bb.aw ] ; 2 uses
  %.sroa.7.0220.i = phi i16 [ undef, %.lr.ph.i12 ], [ %.sroa.7.4.i, %bb.aw ] ; 2 uses
  %.sroa.14.0219.i = phi i8 [ undef, %.lr.ph.i12 ], [ %.sroa.14.5.i, %bb.aw ] ; 2 uses
  %.0170218.i = phi ptr [ %i.ac, %.lr.ph.i12 ], [ %.3173.i, %bb.aw ] ; 9 uses
  %i.an = getelementptr inbounds nuw [8304 x i8], ptr %i.am, i64 %indvars.iv.i13 ; 24 uses
  %i.ao = load i8, ptr %i.an, align 8, !range !8, !noundef !9
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.j, label %bb.aw

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ar = load i8, ptr %i.aq, align 1             ; 4 uses
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = and i32 %i.as, 1
  %.not187.i = icmp eq i32 %i.at, 0
  br i1 %.not187.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.au = and i32 %i.as, 2
  %.not188.i = icmp eq i32 %i.au, 0
  %brmerge.not.i = and i1 %.not188.i, %i.aa
  br i1 %brmerge.not.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load volatile i64, ptr %i.aw, align 8   ; 2 uses
  %i.ay = call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32) ; 3 uses
  %.not205.i = icmp ugt i64 %i.ay, %i.y
  br i1 %.not205.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = add i64 %.134, -1
  %or.cond194.not.i = icmp ult i64 %i.az, %i.ay
  %spec.select = select i1 %or.cond194.not.i, i64 %.134, i64 %i.ay
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %.336 = phi i64 [ %spec.select, %bb.m ], [ %.134, %bb.j ], [ %.134, %bb.l ], [ %.134, %bb.k ]
  %.0160.i = phi i1 [ false, %bb.m ], [ true, %bb.j ], [ true, %bb.l ], [ false, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = and i8 %i.ar, 16
  %.not190.i = icmp ne i8 %i.bd, 0
  %i.be = xor i1 %.0160.i, true
  %spec.select196.i = or i1 %.not190.i, %i.be
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0159.i = phi i1 [ %spec.select196.i, %bb.o ], [ false, %bb.n ]
  %i.bf = trunc i64 %indvars.iv.i13 to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = trunc i32 %i.bh to i8                   ; 2 uses
  %i.bj = and i8 %i.ar, 6
  %i.bk = icmp eq i8 %i.bj, 6
  %i.bl = or i8 %i.bi, 64
  %.sroa.4.0.i = select i1 %i.bk, i8 %i.bl, i8 %i.bi ; 2 uses
  %i.bm = or i1 %i.ak, %.0160.i                   ; 2 uses
  br i1 %i.bm, label %bb.q, label %bb.ak

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8            ; 8 uses
  %i.bp = and i8 %i.ar, 8
  %.not191.i = icmp eq i8 %i.bp, 0
  br i1 %.not191.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.br = load i16, ptr %i.bq, align 4            ; 4 uses
  %i.bs = icmp ugt i16 %i.br, 23
  br i1 %i.bs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 14
  %i.bu = load i16, ptr %i.bt, align 2            ; 3 uses
  %i.bv = icmp ugt i16 %i.bu, %i.br
  %i.bw = icmp ult i16 %i.bu, 8193
  %or.cond.i = and i1 %i.bv, %i.bw                ; 2 uses
  %narrow.i = sub nuw i16 %i.bu, %i.br
  %spec.select197.i = select i1 %or.cond.i, i16 %i.br, i16 0
  %spec.select198.i = select i1 %or.cond.i, i16 %narrow.i, i16 0
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.7.1.i = phi i16 [ 0, %bb.r ], [ 0, %bb.q ], [ %spec.select197.i, %bb.s ] ; 4 uses
  %.sroa.0.1.i = phi i16 [ 0, %bb.r ], [ 0, %bb.q ], [ %spec.select198.i, %bb.s ] ; 6 uses
  %i.bx = load i32, ptr @wal_compression, align 4 ; 2 uses
  %.not192.i = icmp eq i32 %i.bx, 0
  br i1 %.not192.i, label %._crit_edge238.i, label %bb.u

._crit_edge238.i:                                 ; preds = %bb.t
  %.pre239.i = zext i16 %.sroa.0.1.i to i32
  br label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.bz = zext i16 %.sroa.0.1.i to i32            ; 3 uses
  %i.ca = sub nsw i32 8192, %i.bz                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %.not.i.i = icmp eq i16 %.sroa.0.1.i, 0
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = zext i16 %.sroa.7.1.i to i64            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 1 %i.bo, i64 %i.cb, i1 false)
  %i.cc = zext i16 %.sroa.7.1.i to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 %i.cb
  %i.ce = add nuw nsw i32 %i.bz, %i.cc            ; 2 uses
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.cf
  %i.ch = sub nsw i32 8192, %i.ce
  %i.ci = sext i32 %i.ch to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr nonnull align 1 %i.cg, i64 %i.ci, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.020.i.i = phi i32 [ 2, %bb.v ], [ 0, %bb.u ]
  %.0.i.i = phi ptr [ %2, %bb.v ], [ %i.bo, %bb.u ]
  switch i32 %i.bx, label %XLogCompressBackupBlock.exit.i [
    i32 1, label %bb.z
    i32 2, label %bb.x
    i32 3, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.cj = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.ck = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.12) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1061, ptr noundef nonnull @__func__.XLogCompressBackupBlock) #9
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cl = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.cm = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.13) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1072, ptr noundef nonnull @__func__.XLogCompressBackupBlock) #9
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.cn = call i32 @pglz_compress(ptr noundef %.0.i.i, i32 noundef %i.ca, ptr noundef nonnull %i.by, ptr noundef %i.m) #9 ; 3 uses
  %i.co = icmp sgt i32 %i.cn, -1
  %i.cp = add nuw i32 %i.cn, %.020.i.i
  %i.cq = icmp slt i32 %i.cp, %i.ca
  %or.cond.i.i = select i1 %i.co, i1 %i.cq, i1 false ; 2 uses
  %i.cr = trunc i32 %i.cn to i16
  %spec.select203.i = select i1 %or.cond.i.i, i16 %i.cr, i16 0
  br label %XLogCompressBackupBlock.exit.i

XLogCompressBackupBlock.exit.i:                   ; preds = %bb.z, %bb.w
  %.1202.i = phi i16 [ 0, %bb.w ], [ %spec.select203.i, %bb.z ]
  %.022.i.i = phi i1 [ false, %bb.w ], [ %or.cond.i.i, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.aa

bb.aa:                                            ; preds = %XLogCompressBackupBlock.exit.i, %._crit_edge238.i
  %.pre-phi.i = phi i32 [ %.pre239.i, %._crit_edge238.i ], [ %i.bz, %XLogCompressBackupBlock.exit.i ]
  %.0.i = phi i16 [ 0, %._crit_edge238.i ], [ %.1202.i, %XLogCompressBackupBlock.exit.i ] ; 2 uses
  %.0156.i.a = phi i1 [ false, %._crit_edge238.i ], [ %.022.i.i, %XLogCompressBackupBlock.exit.i ] ; 2 uses
  %i.cs = or i8 %.sroa.4.0.i, 16
  %i.ct = add i32 %.130, 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.an, i64 56 ; 4 uses
  store ptr %i.cu, ptr %.0163221.i, align 8
  %i.cv = icmp ne i16 %.sroa.0.1.i, 0             ; 2 uses
  %i.cw = zext i1 %i.cv to i8                     ; 2 uses
  %i.cx = or disjoint i8 %i.cw, 2
  %.sroa.14.0.i = select i1 %.0160.i, i8 %i.cx, i8 %i.cw ; 4 uses
  br i1 %.0156.i.a, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.cy = load i32, ptr @wal_compression, align 4
  switch i32 %i.cy, label %bb.af [
    i32 1, label %bb.ac
    i32 2, label %bb.ad
    i32 3, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cz = or disjoint i8 %.sroa.14.0.i, 4
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.da = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.db = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.12) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 813, ptr noundef nonnull @__func__.XLogRecordAssemble) #9
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.dc = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.dd = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.13) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 821, ptr noundef nonnull @__func__.XLogRecordAssemble) #9
  unreachable

bb.af:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.14.1.i = phi i8 [ %.sroa.14.0.i, %bb.ab ], [ %i.cz, %bb.ac ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.df = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store ptr %i.de, ptr %i.df, align 8
  %i.dg = zext i16 %.0.i to i32
  br label %bb.aj

bb.ag:                                            ; preds = %bb.aa
  br i1 %i.cv, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dh = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store ptr %i.bo, ptr %i.dh, align 8
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.di = sub nsw i16 8192, %.sroa.0.1.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store ptr %i.bo, ptr %i.dj, align 8
  %i.dk = zext i16 %.sroa.7.1.i to i32            ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store i32 %i.dk, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.an, i64 80 ; 2 uses
  store ptr %i.dm, ptr %i.cu, align 8
  %i.dn = add nuw nsw i32 %.pre-phi.i, %i.dk      ; 2 uses
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.an, i64 88
  store ptr %i.dp, ptr %i.dq, align 8
  %i.dr = sub nsw i32 8192, %i.dn
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.af
  %.sink248.i = phi i64 [ 72, %bb.ah ], [ 96, %bb.ai ], [ 72, %bb.af ]
  %.sink.i = phi i32 [ 8192, %bb.ah ], [ %i.dr, %bb.ai ], [ %i.dg, %bb.af ]
  %.sroa.14.2.i = phi i8 [ %.sroa.14.0.i, %bb.ah ], [ %.sroa.14.0.i, %bb.ai ], [ %.sroa.14.1.i, %bb.af ]
  %.sroa.034.0.i = phi i16 [ 8192, %bb.ah ], [ %i.di, %bb.ai ], [ %.0.i, %bb.af ] ; 2 uses
  %.1163.i = phi ptr [ %i.cu, %bb.ah ], [ %i.dm, %bb.ai ], [ %i.cu, %bb.af ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.an, i64 %.sink248.i
  store i32 %.sink.i, ptr %i.ds, align 8
  %i.dt = zext i16 %.sroa.034.0.i to i64          ; 2 uses
  %i.du = add i64 %indvars.iv.i13.a, %i.dt
  %i.dv = add i64 %.1, %i.dt
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.p
  %.332 = phi i32 [ %i.ct, %bb.aj ], [ %.130, %bb.p ]
  %.3 = phi i64 [ %i.dv, %bb.aj ], [ %.1, %bb.p ]
  %.sroa.4.1.i = phi i8 [ %i.cs, %bb.aj ], [ %.sroa.4.0.i, %bb.p ] ; 2 uses
  %.sroa.14.3.i = phi i8 [ %.sroa.14.2.i, %bb.aj ], [ %.sroa.14.0219.i, %bb.p ] ; 2 uses
  %.sroa.7.2.i = phi i16 [ %.sroa.7.1.i, %bb.aj ], [ %.sroa.7.0220.i, %bb.p ] ; 2 uses
  %.sroa.034.1.i = phi i16 [ %.sroa.034.0.i, %bb.aj ], [ %.sroa.034.0221.i, %bb.p ] ; 2 uses
  %.sroa.0.2.i = phi i16 [ %.sroa.0.1.i, %bb.aj ], [ 0, %bb.p ] ; 2 uses
  %.1.i.a = phi i1 [ %.0156.i.a, %bb.aj ], [ false, %bb.p ]
  %.2164.i = phi ptr [ %.1163.i, %bb.aj ], [ %.0163221.i, %bb.p ] ; 2 uses
  %.1.i = phi i64 [ %i.du, %bb.aj ], [ %indvars.iv.i13.a, %bb.p ] ; 2 uses
  br i1 %.0159.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dw = or i8 %.sroa.4.1.i, 32
  %i.dx = load i32, ptr %i.ba, align 8            ; 2 uses
  %i.dy = trunc i32 %i.dx to i16
  %i.dz = zext i32 %i.dx to i64
  %i.ea = add i64 %.1.i, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8
  store ptr %i.ec, ptr %.2164.i, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ee = load ptr, ptr %i.ed, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sroa.13.0.i = phi i16 [ %i.dy, %bb.al ], [ 0, %bb.ak ]
  %.sroa.4.2.i = phi i8 [ %i.dw, %bb.al ], [ %.sroa.4.1.i, %bb.ak ] ; 5 uses
  %.3165.i = phi ptr [ %i.ee, %bb.al ], [ %.2164.i, %bb.ak ]
  %.2.i = phi i64 [ %i.ea, %bb.al ], [ %.1.i, %bb.ak ]
  %.not193.i = icmp eq ptr %.0161222.i, null
  br i1 %.not193.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %.0161222.i, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %.0161222.i, i64 12
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = icmp eq i32 %i.eh, %i.ek
  br i1 %i.el, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.em = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.en = load i32, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.0161222.i, i64 8
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = icmp eq i32 %i.en, %i.ep
  br i1 %i.eq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.er = load i32, ptr %i.ef, align 4
  %i.es = load i32, ptr %i.ei, align 4
  %i.et = icmp eq i32 %i.er, %i.es                ; 2 uses
  %i.eu = or i8 %.sroa.4.2.i, -128
  %spec.select199.i = select i1 %i.et, i8 %i.eu, i8 %.sroa.4.2.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %.sroa.4.3.i = phi i8 [ %.sroa.4.2.i, %bb.am ], [ %spec.select199.i, %bb.ap ], [ %.sroa.4.2.i, %bb.ao ], [ %.sroa.4.2.i, %bb.an ]
  %.0157.i = phi i1 [ false, %bb.am ], [ %i.et, %bb.ap ], [ false, %bb.ao ], [ false, %bb.an ]
  store i8 %i.bf, ptr %.0170218.i, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0170218.i, i64 1
  store i8 %.sroa.4.3.i, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0170218.i, i64 2
  store i16 %.sroa.13.0.i, ptr %.sroa.13.0..sroa_idx.i, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %.0170218.i, i64 4 ; 2 uses
  br i1 %i.bm, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  store i16 %.sroa.034.1.i, ptr %i.ev, align 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0170218.i, i64 6
  store i16 %.sroa.7.2.i, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0170218.i, i64 8
  store i8 %.sroa.14.3.i, ptr %.sroa.14.0..sroa_idx.i, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %.0170218.i, i64 9 ; 2 uses
  %i.ex = icmp ne i16 %.sroa.0.2.i, 0
  %or.cond4.i = and i1 %i.ex, %.1.i.a
  br i1 %or.cond4.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i16 %.sroa.0.2.i, ptr %i.ew, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %.0170218.i, i64 11
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.1162.i = phi ptr [ %i.ey, %bb.as ], [ %i.ew, %bb.ar ], [ %i.ev, %bb.aq ] ; 3 uses
  br i1 %.0157.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ez = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.1162.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ez, i64 12, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %.1162.i, i64 12
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.2.i.a = phi ptr [ %.1162.i, %bb.at ], [ %i.fa, %bb.au ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.fc = load i32, ptr %i.fb, align 4
  store i32 %i.fc, ptr %.2.i.a, align 1
  %i.fd = getelementptr inbounds nuw i8, ptr %.2.i.a, i64 4
  %.pre.i = load ptr, ptr @registered_buffers, align 8
  %.pre236.i = load i32, ptr @max_registered_block_id, align 4
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.i
  %.235 = phi i64 [ %.336, %bb.av ], [ %.134, %bb.i ] ; 2 uses
  %.231 = phi i32 [ %.332, %bb.av ], [ %.130, %bb.i ] ; 2 uses
  %.2 = phi i64 [ %.3, %bb.av ], [ %.1, %bb.i ]   ; 2 uses
  %i.fe = phi i32 [ %.pre236.i, %bb.av ], [ %i.al, %bb.i ] ; 2 uses
  %i.ff = phi ptr [ %.pre.i, %bb.av ], [ %i.am, %bb.i ]
  %.3173.i = phi ptr [ %i.fd, %bb.av ], [ %.0170218.i, %bb.i ] ; 2 uses
  %.sroa.14.5.i = phi i8 [ %.sroa.14.3.i, %bb.av ], [ %.sroa.14.0219.i, %bb.i ]
  %.sroa.7.4.i = phi i16 [ %.sroa.7.2.i, %bb.av ], [ %.sroa.7.0220.i, %bb.i ]
  %.sroa.034.3.i = phi i16 [ %.sroa.034.1.i, %bb.av ], [ %.sroa.034.0221.i, %bb.i ]
  %.1170.i = phi ptr [ %.3165.i, %bb.av ], [ %.0163221.i, %bb.i ] ; 2 uses
  %.4167.i = phi ptr [ %i.an, %bb.av ], [ %.0161222.i, %bb.i ]
  %.3.i = phi i64 [ %.2.i, %bb.av ], [ %indvars.iv.i13.a, %bb.i ] ; 2 uses
  %indvars.iv.next.i14 = add nuw nsw i64 %indvars.iv.i13, 1 ; 2 uses
  %i.fg = sext i32 %i.fe to i64
  %i.fh = icmp slt i64 %indvars.iv.next.i14, %i.fg
  br i1 %i.fh, label %bb.i, label %._crit_edge.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.aw, %bb.h
  %.033 = phi i64 [ 0, %bb.h ], [ %.235, %bb.aw ]
  %.029 = phi i32 [ 0, %bb.h ], [ %.231, %bb.aw ]
  %.028 = phi i64 [ 0, %bb.h ], [ %.2, %bb.aw ]
  %.0170.lcssa.i = phi ptr [ %i.ac, %bb.h ], [ %.3173.i, %bb.aw ] ; 4 uses
  %.0163.lcssa.i = phi ptr [ @hdr_rdt, %bb.h ], [ %.1170.i, %bb.aw ] ; 2 uses
  %.0157.lcssa.i = phi i64 [ 0, %bb.h ], [ %.3.i, %bb.aw ] ; 2 uses
  %i.fi = load i8, ptr @curinsert_flags, align 1
  %i.fj = trunc i8 %i.fi to i1
  %i.fk = load i16, ptr @replorigin_xact_state, align 8
  %i.fl = icmp ne i16 %i.fk, 0
  %or.cond7.i = select i1 %i.fj, i1 %i.fl, i1 false
  br i1 %or.cond7.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %._crit_edge.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.0170.lcssa.i, i64 1
  store i8 -3, ptr %.0170.lcssa.i, align 1
  %i.fn = load i16, ptr @replorigin_xact_state, align 8
  store i16 %i.fn, ptr %i.fm, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %.0170.lcssa.i, i64 3
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge.i
  %.4.i.a = phi ptr [ %i.fo, %bb.ax ], [ %.0170.lcssa.i, %._crit_edge.i ] ; 4 uses
  %i.fp = call zeroext i1 @IsSubxactTopXidLogPending() #9 ; 2 uses
  br i1 %i.fp, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fq = call i32 @GetTopTransactionIdIfAny() #9
  %i.fr = getelementptr inbounds nuw i8, ptr %.4.i.a, i64 1
  store i8 -4, ptr %.4.i.a, align 1
  store i32 %i.fq, ptr %i.fr, align 1
  %i.fs = getelementptr inbounds nuw i8, ptr %.4.i.a, i64 5
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.5.i.a = phi ptr [ %i.fs, %bb.az ], [ %.4.i.a, %bb.ay ] ; 7 uses
  %i.ft = load i64, ptr @mainrdata_len, align 8   ; 4 uses
  %.not.i = icmp eq i64 %i.ft, 0
  br i1 %.not.i, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fu = icmp ugt i64 %i.ft, 255
  br i1 %i.fu, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.fv = icmp ugt i64 %i.ft, 4294967295
  br i1 %i.fv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.fx = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5) #9 ; 0 uses
  %i.fy = load i64, ptr @mainrdata_len, align 8
  %i.fz = call i32 (ptr, ...) @errdetail_internal(ptr noundef nonnull @.str.14, i64 noundef %i.fy, i32 noundef -1) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 951, ptr noundef nonnull @__func__.XLogRecordAssemble) #9
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ga = trunc nuw i64 %i.ft to i32
  %i.gb = getelementptr inbounds nuw i8, ptr %.5.i.a, i64 1
  store i8 -2, ptr %.5.i.a, align 1
  store i32 %i.ga, ptr %i.gb, align 1
  %i.gc = getelementptr inbounds nuw i8, ptr %.5.i.a, i64 5
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  %i.gd = getelementptr inbounds nuw i8, ptr %.5.i.a, i64 1
  store i8 -1, ptr %.5.i.a, align 1
  %i.ge = load i64, ptr @mainrdata_len, align 8
  %i.gf = trunc i64 %i.ge to i8
  %i.gg = getelementptr inbounds nuw i8, ptr %.5.i.a, i64 2
  store i8 %i.gf, ptr %i.gd, align 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.6.i = phi ptr [ %i.gc, %bb.be ], [ %i.gg, %bb.bf ]
  %i.gh = load ptr, ptr @mainrdata_head, align 8
  store ptr %i.gh, ptr %.0163.lcssa.i, align 8
  %i.gi = load ptr, ptr @mainrdata_last, align 8
  %i.gj = load i64, ptr @mainrdata_len, align 8
  %i.gk = add i64 %i.gj, %.0157.lcssa.i
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.ba
  %.7.i = phi ptr [ %.6.i, %bb.bg ], [ %.5.i.a, %bb.ba ]
  %.5168.i = phi ptr [ %i.gi, %bb.bg ], [ %.0163.lcssa.i, %bb.ba ]
  %.4.i = phi i64 [ %i.gk, %bb.bg ], [ %.0157.lcssa.i, %bb.ba ]
  store ptr null, ptr %.5168.i, align 8
  %i.gl = load ptr, ptr @hdr_scratch, align 8     ; 2 uses
  %i.gm = ptrtoint ptr %.7.i to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn                    ; 2 uses
  %i.gp = trunc i64 %i.go to i32
  store i32 %i.gp, ptr getelementptr inbounds nuw (i8, ptr @hdr_rdt, i64 16), align 8
  %i.gq = and i64 %i.go, 4294967295               ; 2 uses
  %i.gr = add i64 %i.gq, %.4.i                    ; 3 uses
  %i.gs = load ptr, ptr @pg_comp_crc32c, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gu = add nsw i64 %i.gq, -24
  %i.gv = call i32 %i.gs(i32 noundef -1, ptr noundef nonnull %i.gt, i64 noundef %i.gu) #9, !inline_history !11 ; 2 uses
  %.0158225.i = load ptr, ptr @hdr_rdt, align 8   ; 2 uses
  %.not186226.i = icmp eq ptr %.0158225.i, null
  br i1 %.not186226.i, label %._crit_edge231.i, label %.lr.ph230.i

.lr.ph230.i:                                      ; preds = %bb.bh, %.lr.ph230.i
  %.0158228.i = phi ptr [ %.0158.i, %.lr.ph230.i ], [ %.0158225.i, %bb.bh ] ; 3 uses
  %.0171227.i = phi i32 [ %i.hc, %.lr.ph230.i ], [ %i.gv, %bb.bh ]
  %i.gw = load ptr, ptr @pg_comp_crc32c, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.0158228.i, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %.0158228.i, i64 16
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = zext i32 %i.ha to i64
  %i.hc = call i32 %i.gw(i32 noundef %.0171227.i, ptr noundef %i.gy, i64 noundef %i.hb) #9, !inline_history !11 ; 2 uses
  %.0158.i = load ptr, ptr %.0158228.i, align 8   ; 2 uses
  %.not186.i = icmp eq ptr %.0158.i, null
  br i1 %.not186.i, label %._crit_edge231.i, label %.lr.ph230.i, !llvm.loop !12

._crit_edge231.i:                                 ; preds = %.lr.ph230.i, %bb.bh
  %.0171.lcssa.i = phi i32 [ %i.gv, %bb.bh ], [ %i.hc, %.lr.ph230.i ]
  %i.hd = icmp ugt i64 %i.gr, 1069547520
  br i1 %i.hd, label %bb.bi, label %XLogRecordAssemble.exit

bb.bi:                                            ; preds = %._crit_edge231.i
  %i.he = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.hf = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.15) #9 ; 0 uses
  %i.hg = zext i8 %0 to i32
  %i.hh = zext i8 %spec.select.i to i32
  %i.hi = call i32 (ptr, ...) @errdetail_internal(ptr noundef nonnull @.str.16, i64 noundef %i.gr, i32 noundef 1069547520, i32 noundef %i.hg, i32 noundef %i.hh) #9 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 996, ptr noundef nonnull @__func__.XLogRecordAssemble) #9
  unreachable

XLogRecordAssemble.exit:                          ; preds = %._crit_edge231.i
  %i.hj = call i32 @GetCurrentTransactionIdIfAny() #9
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.hj, ptr %i.hk, align 4
  %i.hl = trunc nuw nsw i64 %i.gr to i32
  store i32 %i.hl, ptr %i.ab, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i8 %spec.select.i, ptr %i.hm, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ab, i64 17
  store i8 %0, ptr %i.hn, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  store i32 %.0171.lcssa.i, ptr %i.hp, align 4
  %i.hq = load i8, ptr @curinsert_flags, align 1
  %i.hr = call i64 @XLogInsertRecord(ptr noundef nonnull @hdr_rdt, i64 noundef %.033, i8 noundef zeroext %i.hq, i32 noundef %.029, i64 noundef %.028, i1 noundef zeroext %i.fp) #9 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not11 = icmp eq i64 %i.hr, 0
  br i1 %.not11, label %bb.h, label %bb.bj, !llvm.loop !13

bb.bj:                                            ; preds = %XLogRecordAssemble.exit
  %i.hs = load i32, ptr @max_registered_block_id, align 4 ; 3 uses
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph.i16, label %XLogResetInsertion.exit

.lr.ph.i16:                                       ; preds = %bb.bj
  %i.hu = load ptr, ptr @registered_buffers, align 8 ; 5 uses
  %wide.trip.count.i17 = zext nneg i32 %i.hs to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i17, 3     ; 3 uses
  %i.hv = icmp ult i32 %i.hs, 4
  br i1 %i.hv, label %.epil.preheader, label %.lr.ph.i16.new

.lr.ph.i16.new:                                   ; preds = %.lr.ph.i16
  %unroll_iter = and i64 %wide.trip.count.i17, 2147483644
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %.lr.ph.i16.new
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i16.new ], [ %indvars.iv.next.i19.3, %bb.bk ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i16.new ], [ %niter.next.3, %bb.bk ]
  %i.hw = getelementptr inbounds nuw [8304 x i8], ptr %i.hu, i64 %indvars.iv.i18
  store i8 0, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw [8304 x i8], ptr %i.hu, i64 %indvars.iv.i18
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8304
  store i8 0, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw [8304 x i8], ptr %i.hu, i64 %indvars.iv.i18
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16608
  store i8 0, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw [8304 x i8], ptr %i.hu, i64 %indvars.iv.i18
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 24912
  store i8 0, ptr %i.ic, align 8
  %indvars.iv.next.i19.3 = add nuw nsw i64 %indvars.iv.i18, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %XLogResetInsertion.exit.loopexit88.unr-lcssa, label %bb.bk, !llvm.loop !4

XLogResetInsertion.exit.loopexit.unr-lcssa:       ; preds = %bb.g
  %lcmp.mod102.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod102.not, label %XLogResetInsertion.exit, label %.epil.preheader99

.epil.preheader99:                                ; preds = %XLogResetInsertion.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %XLogResetInsertion.exit.loopexit.unr-lcssa ]
  %lcmp.mod103 = icmp ne i64 %xtraiter100, 0
  tail call void @llvm.assume(i1 %lcmp.mod103)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %.epil.preheader99
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader99 ], [ %indvars.iv.next.i.epil, %bb.bl ] ; 2 uses
  %epil.iter101 = phi i64 [ 0, %.epil.preheader99 ], [ %epil.iter101.next, %bb.bl ]
  %i.id = getelementptr inbounds nuw [8304 x i8], ptr %i.p, i64 %indvars.iv.i.epil
  store i8 0, ptr %i.id, align 8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter101.next = add i64 %epil.iter101, 1   ; 2 uses
  %epil.iter101.cmp.not = icmp eq i64 %epil.iter101.next, %xtraiter100
  br i1 %epil.iter101.cmp.not, label %XLogResetInsertion.exit, label %bb.bl, !llvm.loop !14

XLogResetInsertion.exit.loopexit88.unr-lcssa:     ; preds = %bb.bk
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %XLogResetInsertion.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %XLogResetInsertion.exit.loopexit88.unr-lcssa, %.lr.ph.i16
  %indvars.iv.i18.epil.init = phi i64 [ 0, %.lr.ph.i16 ], [ %indvars.iv.next.i19.3, %XLogResetInsertion.exit.loopexit88.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.epil.preheader
  %indvars.iv.i18.epil = phi i64 [ %indvars.iv.i18.epil.init, %.epil.preheader ], [ %indvars.iv.next.i19.epil, %bb.bm ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bm ]
  %i.ie = getelementptr inbounds nuw [8304 x i8], ptr %i.hu, i64 %indvars.iv.i18.epil
  store i8 0, ptr %i.ie, align 8
  %indvars.iv.next.i19.epil = add nuw nsw i64 %indvars.iv.i18.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %XLogResetInsertion.exit, label %bb.bm, !llvm.loop !15

XLogResetInsertion.exit:                          ; preds = %XLogResetInsertion.exit.loopexit88.unr-lcssa, %bb.bm, %XLogResetInsertion.exit.loopexit.unr-lcssa, %bb.bl, %bb.bj, %bb.f
  %.0 = phi i64 [ 40, %XLogResetInsertion.exit.loopexit.unr-lcssa ], [ 40, %bb.f ], [ %i.hr, %bb.bj ], [ 40, %bb.bl ], [ %i.hr, %bb.bm ], [ %i.hr, %XLogResetInsertion.exit.loopexit88.unr-lcssa ]
  store i32 0, ptr @num_rdatas, align 4
  store i32 0, ptr @max_registered_block_id, align 4
  store i64 0, ptr @mainrdata_len, align 8
  store ptr @mainrdata_head, ptr @mainrdata_last, align 8
  store i8 0, ptr @curinsert_flags, align 1
  store i1 false, ptr @begininsert_called, align 1
  ret i64 %.0
}

declare void @GetFullPageWriteInfo(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @XLogInsertRecord(ptr noundef, i64 noundef, i8 noundef zeroext, i32 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i64 1, 0) i64 @XLogSimpleInsertInt64(i8 noundef zeroext %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %2, ptr %i.a, align 8
  tail call void @XLogBeginInsert()
  %i.b = load i32, ptr @num_rdatas, align 4       ; 3 uses
  %i.c = load i32, ptr @max_rdatas, align 4
  %.not.i = icmp slt i32 %i.b, %i.c
  br i1 %.not.i, label %XLogRegisterData.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #10 ; 0 uses
  %i.e = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5) #9 ; 0 uses
  %i.f = load i32, ptr @num_rdatas, align 4
  %i.g = load i32, ptr @max_rdatas, align 4
  %i.h = tail call i32 (ptr, ...) @errdetail_internal(ptr noundef nonnull @.str.6, i32 noundef %i.f, i32 noundef %i.g) #9 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 382, ptr noundef nonnull @__func__.XLogRegisterData) #9
  unreachable

XLogRegisterData.exit:                            ; preds = %bb.a
  %i.i = load ptr, ptr @rdatas, align 8
  %i.j = add nsw i32 %i.b, 1
  store i32 %i.j, ptr @num_rdatas, align 4
  %i.k = sext i32 %i.b to i64
  %i.l = getelementptr inbounds [24 x i8], ptr %i.i, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.a, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 8, ptr %i.n, align 8
  %i.o = load ptr, ptr @mainrdata_last, align 8
  store ptr %i.l, ptr %i.o, align 8
  store ptr %i.l, ptr @mainrdata_last, align 8
  %i.p = load i64, ptr @mainrdata_len, align 8
  %i.q = add i64 %i.p, 8
  store i64 %i.q, ptr @mainrdata_len, align 8
  %i.r = call i64 @XLogInsert(i8 noundef zeroext %0, i8 noundef zeroext %1)
  ret i64 %i.r
}

; Function Attrs: nounwind uwtable
define dso_local i64 @XLogGetFakeLSN(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 118
  %i.d = load i8, ptr %i.c, align 2
  switch i8 %i.d, label %bb.d [
    i8 116, label %bb.b
    i8 117, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
end_hunk_0
