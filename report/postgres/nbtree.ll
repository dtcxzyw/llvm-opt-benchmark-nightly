Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nbtree?download=true
inline.NumInlined: 50
inline.NumDeleted: 28
begin_hunk_0_@btvacuumscan:bb.a

BTreeTupleIsPosting.exit.thread.i:                ; preds = %BTreeTupleIsPosting.exit.i, %bb.ac
  %i.ds = call zeroext i1 %i.am(ptr noundef nonnull %i.dl, ptr noundef %i.an) #7, !inline_history !10
  br i1 %i.ds, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %BTreeTupleIsPosting.exit.thread.i
  %i.dt = add i32 %.0142233.i, 1
  %i.du = sext i32 %.0142233.i to i64
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.du
  store i16 %.0137235.i, ptr %i.dv, align 2
  %i.dw = add i32 %.0133237.i, 1
  br label %bb.ap

bb.ae:                                            ; preds = %BTreeTupleIsPosting.exit.thread.i
  %i.dx = add i32 %.0132238.i, 1
  br label %bb.ap

bb.af:                                            ; preds = %BTreeTupleIsPosting.exit.i
  %i.dy = and i16 %.val.i.i, 4095                 ; 3 uses
  %.val.i.i.i = load i16, ptr %i.dl, align 2
  %i.dz = getelementptr i8, ptr %i.dl, i64 2
  %.val2.i.i.i = load i16, ptr %i.dz, align 2
  %i.ea = zext i16 %.val.i.i.i to i64
  %i.eb = shl nuw nsw i64 %i.ea, 16
  %i.ec = zext i16 %.val2.i.i.i to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ec
  %.not.i187.i = icmp eq i16 %i.dy, 0
  br i1 %.not.i187.i, label %btreevacuumposting.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.af
  %i.ef = shl nuw nsw i16 %i.dy, 1
  %narrow.i.i = add nuw nsw i16 %i.ef, 12
  %i.eg = zext nneg i16 %narrow.i.i to i64
  %wide.trip.count.i.i = zext nneg i16 %i.dy to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.al, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.al ] ; 4 uses
  %.02530.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %.1.i.i, %bb.al ] ; 5 uses
  %.02629.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.127.i.i, %bb.al ] ; 3 uses
  %i.eh = load ptr, ptr %i.h, align 8
  %i.ei = getelementptr inbounds nuw [6 x i8], ptr %i.ee, i64 %indvars.iv.i.i
  %i.ej = load ptr, ptr %i.i, align 8
  %i.ek = call zeroext i1 %i.eh(ptr noundef nonnull %i.ei, ptr noundef %i.ej) #7, !inline_history !11
  br i1 %i.ek, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.el = add i32 %.02629.i.i, 1
  br label %bb.al

bb.ai:                                            ; preds = %bb.ag
  %i.em = icmp eq ptr %.02530.i.i, null
  br i1 %i.em, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.en = call ptr @palloc(i64 noundef %i.eg) #7  ; 5 uses
  store ptr %i.dl, ptr %i.en, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i16 %.0137235.i, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 10
  %i.eq = trunc i64 %indvars.iv.i.i to i16
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i16 1, ptr %i.ep, align 2
  store i16 %i.eq, ptr %i.er, align 4
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.es = trunc i64 %indvars.iv.i.i to i16
  %i.et = getelementptr inbounds nuw i8, ptr %.02530.i.i, i64 12
  %i.eu = getelementptr inbounds nuw i8, ptr %.02530.i.i, i64 10 ; 2 uses
  %i.ev = load i16, ptr %i.eu, align 2            ; 2 uses
  %i.ew = add i16 %i.ev, 1
  store i16 %i.ew, ptr %i.eu, align 2
  %i.ex = zext i16 %i.ev to i64
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %i.ex
  store i16 %i.es, ptr %i.ey, align 2
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %.127.i.i = phi i32 [ %.02629.i.i, %bb.aj ], [ %.02629.i.i, %bb.ak ], [ %i.el, %bb.ah ] ; 6 uses
  %.1.i.i = phi ptr [ %i.en, %bb.aj ], [ %.02530.i.i, %bb.ak ], [ %.02530.i.i, %bb.ah ] ; 4 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %btreevacuumposting.exit.i, label %bb.ag, !llvm.loop !12

btreevacuumposting.exit.i:                        ; preds = %bb.al
  %i.ez = icmp eq ptr %.1.i.i, null
  br i1 %i.ez, label %btreevacuumposting.exit.thread.i, label %bb.am

bb.am:                                            ; preds = %btreevacuumposting.exit.i
  %i.fa = icmp sgt i32 %.127.i.i, 0
  br i1 %i.fa, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fb = add i32 %.0138234.i, 1
  %i.fc = sext i32 %.0138234.i to i64
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.fc
  store ptr %.1.i.i, ptr %i.fd, align 8
  %.val183.i = load i16, ptr %i.dq, align 2
  %i.fe = and i16 %.val183.i, 4095
  %i.ff = zext nneg i16 %i.fe to i32
  %i.fg = sub i32 %.0133237.i, %.127.i.i
  %i.fh = add i32 %i.fg, %i.ff
  br label %btreevacuumposting.exit.thread.i

bb.ao:                                            ; preds = %bb.am
  %i.fi = add i32 %.0142233.i, 1
  %i.fj = sext i32 %.0142233.i to i64
  %i.fk = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.fj
  store i16 %.0137235.i, ptr %i.fk, align 2
  %.val182.i = load i16, ptr %i.dq, align 2
  %i.fl = and i16 %.val182.i, 4095
  %i.fm = zext nneg i16 %i.fl to i32
  %i.fn = add i32 %.0133237.i, %i.fm
  call void @pfree(ptr noundef nonnull %.1.i.i) #7
  br label %btreevacuumposting.exit.thread.i

btreevacuumposting.exit.thread.i:                 ; preds = %bb.ao, %bb.an, %btreevacuumposting.exit.i, %bb.af
  %.026.lcssa.i211.i = phi i32 [ %.127.i.i, %btreevacuumposting.exit.i ], [ %.127.i.i, %bb.an ], [ %.127.i.i, %bb.ao ], [ 0, %bb.af ]
  %.1143.i = phi i32 [ %.0142233.i, %btreevacuumposting.exit.i ], [ %.0142233.i, %bb.an ], [ %i.fi, %bb.ao ], [ %.0142233.i, %bb.af ]
  %.1139.i = phi i32 [ %.0138234.i, %btreevacuumposting.exit.i ], [ %i.fb, %bb.an ], [ %.0138234.i, %bb.ao ], [ %.0138234.i, %bb.af ]
  %.1134.i = phi i32 [ %.0133237.i, %btreevacuumposting.exit.i ], [ %i.fh, %bb.an ], [ %i.fn, %bb.ao ], [ %.0133237.i, %bb.af ]
  %i.fo = add i32 %.026.lcssa.i211.i, %.0132238.i
  br label %bb.ap

bb.ap:                                            ; preds = %btreevacuumposting.exit.thread.i, %bb.ae, %bb.ad
  %.2144.i = phi i32 [ %.1143.i, %btreevacuumposting.exit.thread.i ], [ %i.dt, %bb.ad ], [ %.0142233.i, %bb.ae ] ; 2 uses
  %.2140.i = phi i32 [ %.1139.i, %btreevacuumposting.exit.thread.i ], [ %.0138234.i, %bb.ad ], [ %.0138234.i, %bb.ae ] ; 2 uses
  %.2135.i = phi i32 [ %.1134.i, %btreevacuumposting.exit.thread.i ], [ %i.dw, %bb.ad ], [ %.0133237.i, %bb.ae ] ; 2 uses
  %.1.i = phi i32 [ %i.fo, %btreevacuumposting.exit.thread.i ], [ %.0132238.i, %bb.ad ], [ %i.dx, %bb.ae ] ; 2 uses
  %i.fp = add i16 %.0137235.i, 1                  ; 2 uses
  %.not173.i = icmp ugt i16 %i.fp, %.0.i184.i
  br i1 %.not173.i, label %.loopexit226.loopexit.i, label %bb.ac, !llvm.loop !13

.loopexit226.loopexit.i:                          ; preds = %bb.ap
  %i.fq = sitofp i32 %.2135.i to double
  %i.fr = sitofp i32 %.1.i to double
  br label %.loopexit226.i

.loopexit226.i:                                   ; preds = %.loopexit226.loopexit.i, %bb.ab
  %.3145.i = phi i32 [ 0, %bb.ab ], [ %.2144.i, %.loopexit226.loopexit.i ] ; 2 uses
  %.3141.i = phi i32 [ 0, %bb.ab ], [ %.2140.i, %.loopexit226.loopexit.i ] ; 3 uses
  %.3.i = phi double [ 0.000000e+00, %bb.ab ], [ %i.fq, %.loopexit226.loopexit.i ]
  %.2.i = phi double [ 0.000000e+00, %bb.ab ], [ %i.fr, %.loopexit226.loopexit.i ]
  %i.fs = icmp sgt i32 %.3145.i, 0
  %i.ft = icmp sgt i32 %.3141.i, 0                ; 2 uses
  %or.cond.i = select i1 %i.fs, i1 true, i1 %i.ft
  br i1 %or.cond.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.loopexit226.i
  call void @_bt_delitems_vacuum(ptr noundef %i.ao, i32 noundef %.0152.i, ptr noundef nonnull %i.a, i32 noundef %.3145.i, ptr noundef nonnull %i.b, i32 noundef %.3141.i) #7
  %i.fu = load double, ptr %i.at, align 8
  %i.fv = fadd double %.3.i, %i.fu
  store double %i.fv, ptr %i.at, align 8
  %.val179.i = load i16, ptr %i.da, align 4       ; 2 uses
  %i.fw = icmp ult i16 %.val179.i, 25
  %i.fx = zext i16 %.val179.i to i32
  %i.fy = add nuw nsw i32 %i.fx, 262120
  %i.fz = lshr i32 %i.fy, 2
  %i.ga = trunc i32 %i.fz to i16
  %.0.i188.i = select i1 %i.fw, i16 0, i16 %i.ga  ; 2 uses
  br i1 %i.ft, label %.lr.ph243.preheader.i, label %.loopexit.i

.lr.ph243.preheader.i:                            ; preds = %bb.aq
  %wide.trip.count.i = zext nneg i32 %.3141.i to i64
  br label %.lr.ph243.i

.lr.ph243.i:                                      ; preds = %.lr.ph243.i, %.lr.ph243.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph243.preheader.i ], [ %indvars.iv.next.i, %.lr.ph243.i ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.gc = load ptr, ptr %i.gb, align 8
  call void @pfree(ptr noundef %i.gc) #7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph243.i, !llvm.loop !14

bb.ar:                                            ; preds = %.loopexit226.i
  %i.gd = load i16, ptr %i.j, align 8             ; 2 uses
  %.not174.i = icmp eq i16 %i.gd, 0
  br i1 %.not174.i, label %.loopexit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ge = getelementptr inbounds nuw i8, ptr %i.bm, i64 14 ; 2 uses
  %i.gf = load i16, ptr %i.ge, align 2
  %i.gg = icmp eq i16 %i.gf, %i.gd
  br i1 %i.gg, label %bb.at, label %.loopexit.i

bb.at:                                            ; preds = %bb.as
  store i16 0, ptr %i.ge, align 2
  call void @MarkBufferDirtyHint(i32 noundef %.0152.i, i1 noundef zeroext true) #7
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph243.i, %bb.at, %bb.as, %bb.ar, %bb.aq
  %.0136.i = phi i16 [ %.0.i184.i, %bb.ar ], [ %.0.i184.i, %bb.at ], [ %.0.i184.i, %bb.as ], [ %.0.i188.i, %bb.aq ], [ %.0.i188.i, %.lr.ph243.i ] ; 2 uses
  %i.gh = icmp samesign ugt i16 %i.cz, %.0136.i
  br i1 %i.gh, label %bb.au, label %.thread223.i

.thread223.i:                                     ; preds = %.loopexit.i
  %narrow.i = sub nuw nsw i16 %.0136.i, %i.cz
  %narrow = add nuw nsw i16 %narrow.i, 1
  %i.gi = uitofp i16 %narrow to double
  %.sink260.i = select i1 %.not172.i, double %i.gi, double %.2.i
  %i.gj = load double, ptr %i.au, align 8
  %i.gk = fadd double %.sink260.i, %i.gj
  store double %i.gk, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %.thread213.i

bb.au:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br i1 %.not.i, label %.thread218.i, label %.thread213.i

.thread218.i:                                     ; preds = %bb.au, %bb.v
  %.1148221.i = phi i32 [ %.0147.i, %bb.au ], [ 0, %bb.v ]
  %i.gl = load ptr, ptr %i.m, align 8
  call void @MemoryContextReset(ptr noundef %i.gl) #7
  %i.gm = load ptr, ptr %i.m, align 8
  %i.gn = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.gm, ptr @CurrentMemoryContext, align 8
  call void @_bt_pagedel(ptr noundef %i.ao, i32 noundef %.0152.i, ptr noundef nonnull %5) #7
  store ptr %i.gn, ptr @CurrentMemoryContext, align 8
  br label %bb.av

.thread213.i:                                     ; preds = %bb.au, %.thread223.i, %bb.w, %bb.u, %bb.t
  %.1148217.i = phi i32 [ %.0147.i, %.thread223.i ], [ %.0147.i, %bb.au ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.w ]
  call void @_bt_relbuf(ptr noundef %i.ao, i32 noundef %.0152.i) #7
  br label %bb.av

bb.av:                                            ; preds = %.thread213.i, %.thread218.i
  %.1148216.i = phi i32 [ %.1148217.i, %.thread213.i ], [ %.1148221.i, %.thread218.i ] ; 3 uses
  %.not175.i = icmp eq i32 %.1148216.i, 0
  br i1 %.not175.i, label %btvacuumpage.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @vacuum_delay_point(i1 noundef zeroext false) #7
  %i.go = load ptr, ptr %i.av, align 8
  %i.gp = call i32 @ReadBufferExtended(ptr noundef %i.ao, i32 noundef 0, i32 noundef %.1148216.i, i32 noundef 0, ptr noundef %i.go) #7
  br label %bb.k

.loopexit227.sink.split.i:                        ; preds = %bb.q, %bb.p, %.thread197.i
  call void @_bt_relbuf(ptr noundef %i.ao, i32 noundef %.0152.i) #7
  br label %btvacuumpage.exit

btvacuumpage.exit:                                ; preds = %bb.av, %.loopexit227.sink.split.i
  %i.gq = load i8, ptr %i.z, align 1, !range !4, !noundef !5
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %btvacuumpage.exit
  %i.gs = zext i32 %i.ar to i64
  call void @pgstat_progress_update_param(i32 noundef 16, i64 noundef %i.gs) #7
  br label %bb.ay

bb.ay:                                            ; preds = %btvacuumpage.exit, %bb.ax
  call void @vacuum_delay_point(i1 noundef zeroext false) #7
  %i.gt = call i32 @read_stream_next_buffer(ptr noundef %i.y, ptr noundef null) #7 ; 2 uses
  %.not41 = icmp eq i32 %i.gt, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ay, %bb.j
  call void @read_stream_reset(ptr noundef %i.y) #7
  br label %bb.d

bb.az:                                            ; preds = %bb.i
  call void @read_stream_end(ptr noundef %i.y) #7
  store i32 %i.ad, ptr %1, align 8
  %i.gu = load ptr, ptr %i.m, align 8
  call void @MemoryContextDelete(ptr noundef %i.gu) #7
  call void @_bt_pendingfsm_finalize(ptr noundef nonnull %i.c, ptr noundef nonnull %5) #7
  %i.gv = load i32, ptr %i.f, align 8
  %.not38 = icmp eq i32 %i.gv, 0
  br i1 %.not38, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @IndexFreeSpaceMapVacuum(ptr noundef nonnull %i.c) #7
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret void
}

declare void @cancel_before_shmem_exit(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @pg_re_throw() local_unnamed_addr #5

declare void @_bt_end_vacuum(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @_bt_vacuum_needs_cleanup(ptr noundef) local_unnamed_addr #1

declare void @_bt_set_cleanup_info(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_bt_getrootheight(ptr noundef) local_unnamed_addr #1

declare i64 @datumRestore(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @datumSerialize(i64 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @AllocSetContextCreateInternal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @_bt_pendingfsm_init(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @read_stream_begin_relation(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @block_range_read_stream_cb(ptr noundef, ptr noundef, ptr noundef) #1

declare void @LockRelationForExtension(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @RelationGetNumberOfBlocksInFork(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @UnlockRelationForExtension(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @pgstat_progress_update_param(i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @vacuum_delay_point(i1 noundef zeroext) local_unnamed_addr #1

declare i32 @read_stream_next_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @read_stream_reset(ptr noundef) local_unnamed_addr #1

declare void @read_stream_end(ptr noundef) local_unnamed_addr #1

declare void @_bt_pendingfsm_finalize(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @IndexFreeSpaceMapVacuum(ptr noundef) local_unnamed_addr #1

declare i32 @BufferGetBlockNumber(i32 noundef) local_unnamed_addr #1

declare void @_bt_lockbuf(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_bt_checkpage(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @errcode(i32 noundef) local_unnamed_addr #1

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #1

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_bt_relbuf(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @RecordFreeIndexPage(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_bt_upgradelockbufcleanup(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_bt_delitems_vacuum(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @MarkBufferDirtyHint(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @MemoryContextReset(ptr noundef) local_unnamed_addr #1

declare void @_bt_pagedel(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ReadBufferExtended(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @GlobalVisCheckRemovableFullXid(ptr noundef, i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind returns_twice }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{null}
!11 = distinct !{null, null}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
end_hunk_0
