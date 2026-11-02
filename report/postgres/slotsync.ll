Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/slotsync?download=true
inline.NumInlined: 95
inline.NumDeleted: 27
begin_hunk_0_@validate_remote_info:bb.a
bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 6 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = icmp slt i16 %i.aa, 1
  br i1 %i.ab, label %slot_getsomeattrs.exit.i, label %slot_getattr.exit

slot_getsomeattrs.exit.i:                         ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull %i.t, i32 noundef range(i32 1, 11) 1) #13, !inline_history !0
  br label %slot_getattr.exit

slot_getattr.exit:                                ; preds = %bb.g, %slot_getsomeattrs.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %.not14 = icmp eq i64 %i.ai, 0
  br i1 %.not14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %slot_getattr.exit
  %i.aj = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.ak = call i32 @errcode(i32 noundef 1088) #13 ; 0 uses
  %i.al = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.27) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1136, ptr noundef nonnull @__func__.validate_remote_info) #13
  unreachable

bb.i:                                             ; preds = %slot_getattr.exit
  %i.am = load i16, ptr %i.z, align 2
  %i.an = icmp slt i16 %i.am, 2
  br i1 %i.an, label %slot_getsomeattrs.exit.i12, label %slot_getattr.exit13

slot_getsomeattrs.exit.i12:                       ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull %i.t, i32 noundef range(i32 1, 11) 2) #13, !inline_history !0
  %.pre = load ptr, ptr %i.ag, align 8
  br label %slot_getattr.exit13

slot_getattr.exit13:                              ; preds = %bb.i, %slot_getsomeattrs.exit.i12
  %i.as = phi ptr [ %i.ah, %bb.i ], [ %.pre, %slot_getsomeattrs.exit.i12 ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8
  %.not15 = icmp eq i64 %i.au, 0
  br i1 %.not15, label %bb.j, label %bb.k

bb.j:                                             ; preds = %slot_getattr.exit13
  %i.av = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.aw = call i32 @errcode(i32 noundef 50856066) #13 ; 0 uses
  %i.ax = load ptr, ptr @PrimarySlotName, align 8
  %i.ay = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.28, ptr noundef %i.ax, ptr noundef nonnull @.str.7) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1146, ptr noundef nonnull @__func__.validate_remote_info) #13
  unreachable

bb.k:                                             ; preds = %slot_getattr.exit13
  call void @ExecDropSingleTupleTableSlot(ptr noundef nonnull %i.t) #13
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not11.i = icmp eq ptr %i.ba, null
  br i1 %.not11.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @pfree(ptr noundef nonnull %i.ba) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bb = load ptr, ptr %i.u, align 8             ; 2 uses
  %.not12.i = icmp eq ptr %i.bb, null
  br i1 %.not12.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @tuplestore_end(ptr noundef nonnull %i.bb) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bc = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not13.i = icmp eq ptr %i.bc, null
  br i1 %.not13.i, label %walrcv_clear_result.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @FreeTupleDesc(ptr noundef nonnull %i.bc) #13
  br label %walrcv_clear_result.exit

walrcv_clear_result.exit:                         ; preds = %bb.o, %bb.p
  call void @pfree(ptr noundef nonnull %i.i) #13
  br i1 %i.d, label %bb.r, label %bb.q

bb.q:                                             ; preds = %walrcv_clear_result.exit
  call void @CommitTransactionCommand() #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %walrcv_clear_result.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

declare void @ProcessInterrupts() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @slotsync_reread_config() unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @PrimaryConnInfo, align 8
  %i.b = tail call ptr @pstrdup(ptr noundef %i.a) #13 ; 2 uses
  %i.c = load ptr, ptr @PrimarySlotName, align 8
  %i.d = tail call ptr @pstrdup(ptr noundef %i.c) #13 ; 2 uses
  %i.e = load i8, ptr @sync_replication_slots, align 1, !range !5, !noundef !6
  %i.f = load i8, ptr @hot_standby_feedback, align 1, !range !5, !noundef !6
  %i.g = load i32, ptr @MyBackendType, align 4
  %i.h = icmp eq i32 %i.g, 7                      ; 2 uses
  store volatile i32 0, ptr @ConfigReloadPending, align 4
  tail call void @ProcessConfigFile(i32 noundef 2) #13
  %i.i = load ptr, ptr @PrimaryConnInfo, align 8
  %i.j = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.i) #17
  %i.k = load ptr, ptr @PrimarySlotName, align 8
  %i.l = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.k) #17
  tail call void @pfree(ptr noundef nonnull %i.b) #13
  tail call void @pfree(ptr noundef nonnull %i.d) #13
  %i.m = load i8, ptr @sync_replication_slots, align 1, !range !5, !noundef !6
  %.not = icmp eq i8 %i.e, %i.m
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.n = tail call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #13
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1286, ptr noundef nonnull @__func__.slotsync_reread_config) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @proc_exit(i32 noundef 0) #15
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.p = icmp eq i32 %i.l, 0
  %i.q = icmp eq i32 %i.j, 0
  %or.cond.not16 = select i1 %i.q, i1 %i.p, i1 false
  %i.r = load i8, ptr @hot_standby_feedback, align 1, !range !5
  %.not12 = icmp eq i8 %i.f, %i.r
  %or.cond13 = select i1 %or.cond.not16, i1 %.not12, i1 false
  br i1 %or.cond13, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.h, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.s = tail call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #13
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.31) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1303, ptr noundef nonnull @__func__.slotsync_reread_config) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.u = load ptr, ptr @SlotSyncCtx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 0, ptr %i.v, align 8
  tail call void @proc_exit(i32 noundef 0) #15
  unreachable

bb.k:                                             ; preds = %bb.b, %bb.g
  %i.w = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.x = tail call i32 @errcode(i32 noundef 50856066) #13 ; 0 uses
  %i.y = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.32) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 1328, ptr noundef nonnull @__func__.slotsync_reread_config) #13
  unreachable

.critedge:                                        ; preds = %bb.f
  ret void
}

declare zeroext i1 @IsTransactionState() local_unnamed_addr #3

declare void @StartTransactionCommand() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @fetch_remote_slots(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x i32], align 16              ; 4 uses
  %2 = alloca %struct.StringInfoData, align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.a, ptr noundef nonnull align 16 dereferenceable(40) @__const.fetch_remote_slots.slotRow, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @initStringInfo(ptr noundef nonnull %2) #13
  call void @appendStringInfoString(ptr noundef nonnull %2, ptr noundef nonnull @.str.33) #13
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @appendStringInfoString(ptr noundef nonnull %2, ptr noundef nonnull @.str.34) #13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.split97.us

.lr.ph.preheader:                                 ; preds = %bb.b
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %3, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call ptr @quote_literal_cstr(ptr noundef %i.f) #13
  call void @appendStringInfoString(ptr noundef nonnull %2, ptr noundef %i.g) #13
  %i.h = load i32, ptr %i.b, align 4
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %.lr.ph.peel.next, label %.split97.us

.split97.us:                                      ; preds = %.lr.ph.peel.next, %.lr.ph.preheader, %bb.b
  call void @appendStringInfoChar(ptr noundef nonnull %2, i8 noundef signext 41) #13
  br label %bb.c

.lr.ph.peel.next:                                 ; preds = %.lr.ph.preheader, %.lr.ph.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.peel.next ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %i.j = load ptr, ptr %3, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8
  call void @appendStringInfoString(ptr noundef nonnull %2, ptr noundef nonnull @.str.35) #13
  %i.m = call ptr @quote_literal_cstr(ptr noundef %i.l) #13
  call void @appendStringInfoString(ptr noundef nonnull %2, ptr noundef %i.m) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.b, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %.lr.ph.peel.next, label %.split97.us, !llvm.loop !13

bb.c:                                             ; preds = %.split97.us, %bb.a
  %i.q = load ptr, ptr @WalReceiverFunctions, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %2, align 8
  %i.u = call ptr %i.s(ptr noundef %0, ptr noundef %i.t, i32 noundef 10, ptr noundef nonnull %i.a) #13 ; 6 uses
  %i.v = load ptr, ptr %2, align 8
  call void @pfree(ptr noundef %i.v) #13
  %i.w = load i32, ptr %i.u, align 8
  %.not65 = icmp eq i32 %i.w, 2
  br i1 %.not65, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.36, ptr noundef %i.z) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 950, ptr noundef nonnull @__func__.fetch_remote_slots) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call ptr @MakeSingleTupleTableSlot(ptr noundef %i.ac, ptr noundef nonnull @TTSOpsMinimalTuple) #13 ; 18 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call zeroext i1 @tuplestore_gettupleslot(ptr noundef %i.af, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %i.ad) #13
  br i1 %i.ag, label %.lr.ph99, label %._crit_edge

.lr.ph99:                                         ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 6 ; 10 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 11 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 10 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph99, %bb.n
  %.06198 = phi ptr [ null, %.lr.ph99 ], [ %.162, %bb.n ] ; 2 uses
  %i.al = call ptr @palloc0(i64 noundef 64) #13   ; 12 uses
  %i.am = load i16, ptr %i.ah, align 2
  %i.an = icmp slt i16 %i.am, 1
  br i1 %i.an, label %slot_getsomeattrs.exit.i, label %slot_getattr.exit

slot_getsomeattrs.exit.i:                         ; preds = %bb.f
  %i.ao = load ptr, ptr %i.ai, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull %i.ad, i32 noundef range(i32 1, 11) 1) #13, !inline_history !0
  br label %slot_getattr.exit

slot_getattr.exit:                                ; preds = %bb.f, %slot_getsomeattrs.exit.i
  %i.ar = load ptr, ptr %i.ak, align 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = call ptr @text_to_cstring(ptr noundef %i.at) #13
  store ptr %i.au, ptr %i.al, align 8
  %i.av = load i16, ptr %i.ah, align 2
  %i.aw = icmp slt i16 %i.av, 2
  br i1 %i.aw, label %slot_getsomeattrs.exit.i69, label %slot_getattr.exit70

slot_getsomeattrs.exit.i69:                       ; preds = %slot_getattr.exit
  %i.ax = load ptr, ptr %i.ai, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull %i.ad, i32 noundef range(i32 1, 11) 2) #13, !inline_history !0
  br label %slot_getattr.exit70

slot_getattr.exit70:                              ; preds = %slot_getattr.exit, %slot_getsomeattrs.exit.i69
  %i.ba = load ptr, ptr %i.ak, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = call ptr @text_to_cstring(ptr noundef %i.bd) #13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = load i16, ptr %i.ah, align 2
  %i.bh = icmp slt i16 %i.bg, 3
  br i1 %i.bh, label %slot_getsomeattrs.exit.i71, label %slot_getattr.exit72

slot_getsomeattrs.exit.i71:                       ; preds = %slot_getattr.exit70
  %i.bi = load ptr, ptr %i.ai, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull %i.ad, i32 noundef range(i32 1, 11) 3) #13, !inline_history !0
  br label %slot_getattr.exit72

slot_getattr.exit72:                              ; preds = %slot_getattr.exit70, %slot_getsomeattrs.exit.i71
  %i.bl = load ptr, ptr %i.aj, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !range !5, !noundef !6
  %i.bo = load ptr, ptr %i.ak, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = trunc nuw i8 %i.bn to i1
  %spec.select = select i1 %i.br, i64 0, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.al, i64 40 ; 2 uses
  store i64 %spec.select, ptr %i.bs, align 8
  %i.bt = load i16, ptr %i.ah, align 2
  %i.bu = icmp slt i16 %i.bt, 4
  br i1 %i.bu, label %slot_getsomeattrs.exit.i73, label %slot_getattr.exit74

slot_getsomeattrs.exit.i73:                       ; preds = %slot_getattr.exit72
  %i.bv = load ptr, ptr %i.ai, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull %i.ad, i32 noundef range(i32 1, 11) 4) #13, !inline_history !0
  br label %slot_getattr.exit74

slot_getattr.exit74:                              ; preds = %slot_getattr.exit72, %slot_getsomeattrs.exit.i73
  %i.by = load ptr, ptr %i.aj, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !range !5, !noundef !6
  %i.cb = load ptr, ptr %i.ak, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = trunc nuw i8 %i.ca to i1
  %spec.select91 = select i1 %i.ce, i64 0, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  store i64 %spec.select91, ptr %i.cf, align 8
  %i.cg = load i16, ptr %i.ah, align 2
  %i.ch = icmp slt i16 %i.cg, 5
  br i1 %i.ch, label %slot_getsomeattrs.exit.i75, label %slot_getattr.exit76

slot_getsomeattrs.exit.i75:                       ; preds = %slot_getattr.exit74
  %i.ci = load ptr, ptr %i.ai, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull %i.ad, i32 noundef range(i32 1, 11) 5) #13, !inline_history !0
  br label %slot_getattr.exit76

slot_getattr.exit76:                              ; preds = %slot_getattr.exit74, %slot_getsomeattrs.exit.i75
  %i.cl = load ptr, ptr %i.aj, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i8, ptr %i.cm, align 1, !range !5, !noundef !6
  %i.co = load ptr, ptr %i.ak, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = trunc nuw i8 %i.cn to i1
  %i.cs = trunc i64 %i.cq to i32
  %i.ct = select i1 %i.cr, i32 0, i32 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 2 uses
  store i32 %i.ct, ptr %i.cu, align 8
  %i.cv = load i16, ptr %i.ah, align 2
  %i.cw = icmp slt i16 %i.cv, 6
  br i1 %i.cw, label %slot_getsomeattrs.exit.i77, label %slot_getattr.exit78

slot_getsomeattrs.exit.i77:                       ; preds = %slot_getattr.exit76
  %i.cx = load ptr, ptr %i.ai, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull %i.ad, i32 noundef range(i32 1, 11) 6) #13, !inline_history !0
  br label %slot_getattr.exit78

slot_getattr.exit78:                              ; preds = %slot_getattr.exit76, %slot_getsomeattrs.exit.i77
  %i.da = load ptr, ptr %i.ak, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = icmp ne i64 %i.dc, 0
  %i.de = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.df = zext i1 %i.dd to i8
  store i8 %i.df, ptr %i.de, align 8
  %i.dg = load i16, ptr %i.ah, align 2
  %i.dh = icmp slt i16 %i.dg, 7
  br i1 %i.dh, label %slot_getsomeattrs.exit.i79, label %slot_getattr.exit80

slot_getsomeattrs.exit.i79:                       ; preds = %slot_getattr.exit78
  %i.di = load ptr, ptr %i.ai, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull %i.ad, i32 noundef range(i32 1, 11) 7) #13, !inline_history !0
  br label %slot_getattr.exit80

slot_getattr.exit80:                              ; preds = %slot_getattr.exit78, %slot_getsomeattrs.exit.i79
  %i.dl = load ptr, ptr %i.aj, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 6
  %i.dn = load i8, ptr %i.dm, align 1, !range !5, !noundef !6
  %i.do = load ptr, ptr %i.ak, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = trunc nuw i8 %i.dn to i1
  %spec.select92 = select i1 %i.dr, i64 0, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i64 %spec.select92, ptr %i.ds, align 8
  %i.dt = load i16, ptr %i.ah, align 2
  %i.du = icmp slt i16 %i.dt, 8
  br i1 %i.du, label %slot_getsomeattrs.exit.i81, label %slot_getattr.exit82

slot_getsomeattrs.exit.i81:                       ; preds = %slot_getattr.exit80
  %i.dv = load ptr, ptr %i.ai, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull %i.ad, i32 noundef range(i32 1, 11) 8) #13, !inline_history !0
  br label %slot_getattr.exit82

slot_getattr.exit82:                              ; preds = %slot_getattr.exit80, %slot_getsomeattrs.exit.i81
  %i.dy = load ptr, ptr %i.ak, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = icmp ne i64 %i.ea, 0
  %i.ec = getelementptr inbounds nuw i8, ptr %i.al, i64 25
  %i.ed = zext i1 %i.eb to i8
  store i8 %i.ed, ptr %i.ec, align 1
  %i.ee = load i16, ptr %i.ah, align 2
  %i.ef = icmp slt i16 %i.ee, 9
  br i1 %i.ef, label %slot_getsomeattrs.exit.i83, label %slot_getattr.exit84

slot_getsomeattrs.exit.i83:                       ; preds = %slot_getattr.exit82
  %i.eg = load ptr, ptr %i.ai, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull %i.ad, i32 noundef range(i32 1, 11) 9) #13, !inline_history !0
  br label %slot_getattr.exit84

slot_getattr.exit84:                              ; preds = %slot_getattr.exit82, %slot_getsomeattrs.exit.i83
  %i.ej = load ptr, ptr %i.ak, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 64
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = call ptr @text_to_cstring(ptr noundef %i.em) #13
  %i.eo = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.en, ptr %i.eo, align 8
  %i.ep = load i16, ptr %i.ah, align 2
  %i.eq = icmp slt i16 %i.ep, 10
  br i1 %i.eq, label %slot_getsomeattrs.exit.i85, label %slot_getattr.exit86

slot_getsomeattrs.exit.i85:                       ; preds = %slot_getattr.exit84
  %i.er = load ptr, ptr %i.ai, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull %i.ad, i32 noundef range(i32 1, 11) 10) #13, !inline_history !0
  br label %slot_getattr.exit86

slot_getattr.exit86:                              ; preds = %slot_getattr.exit84, %slot_getsomeattrs.exit.i85
  %i.eu = load ptr, ptr %i.aj, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 9
  %i.ew = load i8, ptr %i.ev, align 1, !range !5, !noundef !6
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.h, label %bb.g

bb.g:                                             ; preds = %slot_getattr.exit86
  %i.ey = load ptr, ptr %i.ak, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 72
  %i.fa = load i64, ptr %i.ez, align 8
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = call ptr @text_to_cstring(ptr noundef %i.fb) #13
  %i.fd = call i32 @GetSlotInvalidationCause(ptr noundef %i.fc) #13
  br label %bb.h

bb.h:                                             ; preds = %slot_getattr.exit86, %bb.g
  %i.fe = phi i32 [ %i.fd, %bb.g ], [ 0, %slot_getattr.exit86 ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.al, i64 60
  store i32 %i.fe, ptr %i.ff, align 4
  %i.fg = load i64, ptr %i.cf, align 8
  %.not66 = icmp eq i64 %i.fg, 0
  br i1 %.not66, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fh = load i64, ptr %i.bs, align 8
  %.not67 = icmp eq i64 %i.fh, 0
  br i1 %.not67, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fi = load i32, ptr %i.cu, align 8
  %.not68 = icmp eq i32 %i.fi, 0
  %i.fj = icmp eq i32 %i.fe, 0
  %or.cond = select i1 %.not68, i1 %i.fj, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i, %bb.h
  %.old = icmp eq i32 %i.fe, 0
  br i1 %.old, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @pfree(ptr noundef nonnull %i.al) #13
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.fk = call ptr @lappend(ptr noundef %.06198, ptr noundef nonnull %i.al) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.162 = phi ptr [ %i.fk, %bb.m ], [ %.06198, %bb.l ] ; 2 uses
  %i.fl = load ptr, ptr %i.ai, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull %i.ad) #13, !inline_history !14
  %i.fo = load ptr, ptr %i.ae, align 8
  %i.fp = call zeroext i1 @tuplestore_gettupleslot(ptr noundef %i.fo, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull %i.ad) #13
  br i1 %i.fp, label %bb.f, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.n, %bb.e
  %.061.lcssa = phi ptr [ null, %bb.e ], [ %.162, %bb.n ]
  call void @ExecDropSingleTupleTableSlot(ptr noundef %i.ad) #13
  %i.fq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8            ; 2 uses
  %.not11.i = icmp eq ptr %i.fr, null
  br i1 %.not11.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  call void @pfree(ptr noundef nonnull %i.fr) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.fs = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not12.i = icmp eq ptr %i.fs, null
  br i1 %.not12.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @tuplestore_end(ptr noundef nonnull %i.fs) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ft = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not13.i = icmp eq ptr %i.ft, null
  br i1 %.not13.i, label %walrcv_clear_result.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @FreeTupleDesc(ptr noundef nonnull %i.ft) #13
  br label %walrcv_clear_result.exit

walrcv_clear_result.exit:                         ; preds = %bb.r, %bb.s
  call void @pfree(ptr noundef nonnull %i.u) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.061.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @synchronize_slots(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.nameData, align 1           ; 5 uses
  %3 = alloca %struct.nameData, align 1           ; 5 uses
  %i.a = load ptr, ptr @MainLWLockArray, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4736
  %i.c = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.b, i32 noundef 1) #13 ; 0 uses
  %i.d = load i32, ptr @max_replication_slots, align 4 ; 2 uses
  %i.e = load i32, ptr @max_repack_replication_slots, align 4 ; 2 uses
  %i.f = add i32 %i.e, %i.d
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader.i.i, label %get_local_synced_slots.exit.thread.i

get_local_synced_slots.exit.thread.i:             ; preds = %bb.a
  %4 = load ptr, ptr @MainLWLockArray, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4736
  tail call void @LWLockRelease(ptr noundef nonnull %5) #13
  br label %drop_local_obsolete_slots.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %.pre11.i.i = load ptr, ptr @ReplicationSlotCtl, align 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %i.h = phi i32 [ %i.e, %.lr.ph.preheader.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %i.i = phi i32 [ %i.d, %.lr.ph.preheader.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %i.j = phi ptr [ %.pre11.i.i, %.lr.ph.preheader.i.i ], [ %i.u, %bb.d ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %.078.i.i = phi ptr [ null, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw [296 x i8], ptr %i.j, i64 %indvars.iv.i.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !5, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 201
  %i.p = load i8, ptr %i.o, align 1, !range !5, !noundef !6
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = tail call ptr @lappend(ptr noundef %.078.i.i, ptr noundef nonnull %i.k) #13
  %.pre.i.i = load ptr, ptr @ReplicationSlotCtl, align 8
  %.pre12.i.i = load i32, ptr @max_replication_slots, align 4
  %.pre13.i.i = load i32, ptr @max_repack_replication_slots, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.s = phi i32 [ %.pre13.i.i, %bb.c ], [ %i.h, %bb.b ], [ %i.h, %.lr.ph.i.i ] ; 2 uses
  %i.t = phi i32 [ %.pre12.i.i, %bb.c ], [ %i.i, %bb.b ], [ %i.i, %.lr.ph.i.i ] ; 2 uses
  %i.u = phi ptr [ %.pre.i.i, %bb.c ], [ %i.j, %bb.b ], [ %i.j, %.lr.ph.i.i ]
  %.1.i.i = phi ptr [ %i.r, %bb.c ], [ %.078.i.i, %bb.b ], [ %.078.i.i, %.lr.ph.i.i ] ; 4 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.v = add i32 %i.t, %i.s
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next.i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i, label %get_local_synced_slots.exit.i, !llvm.loop !17

get_local_synced_slots.exit.i:                    ; preds = %bb.d
  %i.y = load ptr, ptr @MainLWLockArray, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4736
  tail call void @LWLockRelease(ptr noundef nonnull %i.z) #13
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  %.not17.i.i.a = icmp eq ptr %.1.i.i, null
  br i1 %.not17.i.i.a, label %drop_local_obsolete_slots.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %get_local_synced_slots.exit.i
  %6 = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  %.not17.i.i = icmp eq ptr %0, null
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %drop_local_obsolete_slots.exit

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv.i14 = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.ad = load ptr, ptr %6, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i14
  %i.af = load ptr, ptr %i.ae, align 8            ; 15 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  br i1 %.not17.i.i, label %local_sync_slot_required.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph
  %i.ai = load i32, ptr %8, align 4               ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph21.i.i, label %local_sync_slot_required.exit.thread.i

.lr.ph21.i.i:                                     ; preds = %.preheader.i.i
  %i.ak = load ptr, ptr %7, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.ai to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next.i22.i = add nuw nsw i64 %indvars.iv.i21.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i22.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %local_sync_slot_required.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph21.i.i
  %indvars.iv.i21.i = phi i64 [ 0, %.lr.ph21.i.i ], [ %indvars.iv.next.i22.i, %bb.e ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i21.i
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull dereferenceable(1) %i.ag) #17
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.split.i.i, label %bb.e

.split.i.i:                                       ; preds = %bb.f
  %i.aq = call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.af, i8 1, ptr nonnull elementtype(i8) %i.af) #13, !srcloc !8
  %.not.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i, label %SpinLockAcquire.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.split.i.i
  %i.ar = call i32 @s_lock(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.49, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #13 ; 0 uses
  br label %SpinLockAcquire.exit.i.i

SpinLockAcquire.exit.i.i:                         ; preds = %bb.g, %.split.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 60
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %local_sync_slot_required.exit.i, label %local_sync_slot_required.exit.thread24.i

local_sync_slot_required.exit.thread24.i:         ; preds = %SpinLockAcquire.exit.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.af, align 1
  br label %.preheader.i

local_sync_slot_required.exit.i:                  ; preds = %SpinLockAcquire.exit.i.i
  %i.av = load i32, ptr %i.ah, align 8
  %i.aw = icmp eq i32 %i.av, 0
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.af, align 8
  br i1 %i.aw, label %.preheader.i, label %local_sync_slot_required.exit.thread.i

local_sync_slot_required.exit.thread.i:           ; preds = %bb.e, %local_sync_slot_required.exit.i, %.preheader.i.i, %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.ay = load i32, ptr %i.ax, align 8            ; 3 uses
  call void @LockSharedObject(i32 noundef 1262, i32 noundef %i.ay, i16 noundef zeroext 0, i32 noundef 1) #13
  %i.az = call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.af, i8 1, ptr elementtype(i8) %i.af) #13, !srcloc !8
  %.not.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i, label %SpinLockAcquire.exit.i, label %bb.h

bb.h:                                             ; preds = %local_sync_slot_required.exit.thread.i
  %i.ba = call i32 @s_lock(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.49, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #13 ; 0 uses
  br label %SpinLockAcquire.exit.i

SpinLockAcquire.exit.i:                           ; preds = %bb.h, %local_sync_slot_required.exit.thread.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !range !5, !noundef !6
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.i, label %.critedge20.i

bb.i:                                             ; preds = %SpinLockAcquire.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 201
  %i.bf = load i8, ptr %i.be, align 1, !range !5, !noundef !6
  %i.bg = trunc nuw i8 %i.bf to i1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.af, align 8
  br i1 %i.bg, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i64 64, i1 false)
  call void @ReplicationSlotAcquire(ptr noundef nonnull %3, i1 noundef zeroext true, i1 noundef zeroext false) #13
  call void @ReplicationSlotDropAcquired(i1 noundef zeroext false) #13
  %i.bh = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #13
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bi = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.37, ptr noundef nonnull %3, i32 noundef %i.ay) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 584, ptr noundef nonnull @__func__.drop_local_obsolete_slots) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.m

.critedge20.i:                                    ; preds = %SpinLockAcquire.exit.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.af, align 8
  br label %bb.m

bb.m:                                             ; preds = %.critedge20.i, %bb.l, %bb.i
  call void @UnlockSharedObject(i32 noundef 1262, i32 noundef %i.ay, i16 noundef zeroext 0, i32 noundef 1) #13
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %local_sync_slot_required.exit.i, %local_sync_slot_required.exit.thread24.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i14, 1 ; 2 uses
  %i.bj = load i32, ptr %i.aa, align 4
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next.i, %i.bk
  br i1 %i.bl, label %.lr.ph, label %drop_local_obsolete_slots.exit

drop_local_obsolete_slots.exit:                   ; preds = %.preheader.i, %.preheader.i.preheader, %get_local_synced_slots.exit.thread.i, %get_local_synced_slots.exit.i
  %.not16 = icmp eq ptr %0, null
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not7.i64.i = icmp eq ptr %1, null             ; 2 uses
  br i1 %.not16, label %.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %drop_local_obsolete_slots.exit
  %i.bm = load i32, ptr %9, align 4
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph57, label %.split.us

.split.us:                                        ; preds = %synchronize_one_slot.exit, %.preheader.preheader, %drop_local_obsolete_slots.exit
  %.us-phi = phi i1 [ false, %drop_local_obsolete_slots.exit ], [ false, %.preheader.preheader ], [ %i.gh, %synchronize_one_slot.exit ]
  ret i1 %.us-phi

.lr.ph57:                                         ; preds = %.preheader.preheader, %synchronize_one_slot.exit
  %.11756 = phi i1 [ %i.gh, %synchronize_one_slot.exit ], [ false, %.preheader.preheader ]
  %indvars.iv55 = phi i64 [ %indvars.iv.next, %synchronize_one_slot.exit ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.bo = load ptr, ptr %10, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv55
  %i.bq = load ptr, ptr %i.bp, align 8            ; 19 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call i32 @get_database_oid(ptr noundef %i.bs, i1 noundef zeroext false) #13 ; 6 uses
  call void @LockSharedObject(i32 noundef 1262, i32 noundef %i.bt, i16 noundef zeroext 0, i32 noundef 1) #13
  %i.bu = load ptr, ptr %i.bq, align 8
  %i.bv = call ptr @SearchNamedReplicationSlot(ptr noundef %i.bu, i1 noundef zeroext true) #13 ; 14 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %bb.ag, label %bb.n

bb.n:                                             ; preds = %.lr.ph57
  %i.bw = call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.bv, i8 1, ptr nonnull elementtype(i8) %i.bv) #13, !srcloc !8
  %.not.i.i17 = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i17, label %SpinLockAcquire.exit.i18, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = call i32 @s_lock(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.49, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #13 ; 0 uses
  br label %SpinLockAcquire.exit.i18

SpinLockAcquire.exit.i18:                         ; preds = %bb.o, %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 201
  %i.bz = load i8, ptr %i.by, align 1, !range !5, !noundef !6
  %i.ca = trunc nuw i8 %i.bz to i1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.bv, align 1
  br i1 %i.ca, label %bb.q, label %bb.p

bb.p:                                             ; preds = %SpinLockAcquire.exit.i18
  %i.cb = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.cc = call i32 @errcode(i32 noundef 325) #13  ; 0 uses
  %i.cd = load ptr, ptr %i.bq, align 8
  %i.ce = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.38, ptr noundef %i.cd) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 758, ptr noundef nonnull @__func__.synchronize_one_slot) #13
  unreachable

bb.q:                                             ; preds = %SpinLockAcquire.exit.i18
  %i.cf = load ptr, ptr %i.bq, align 8
  call void @ReplicationSlotAcquire(ptr noundef %i.cf, i1 noundef zeroext true, i1 noundef zeroext false) #13
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 112 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ci, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bq, i64 60 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4
  %.not59.not.i = icmp eq i32 %i.ck, 0
  br i1 %.not59.not.i, label %.thread85.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.bv, i8 1, ptr nonnull elementtype(i8) %i.bv) #13, !srcloc !8
  %.not.i61.i = icmp eq i8 %i.cl, 0
  br i1 %.not.i61.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = call i32 @s_lock(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.49, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #13 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cn = load i32, ptr %i.cj, align 4
  store i32 %i.cn, ptr %i.cg, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.bv, align 8
  call void @ReplicationSlotMarkDirty() #13
  call void @ReplicationSlotSave() #13
  %.pr.pre.i = load i32, ptr %i.cg, align 8
  %i.co = icmp eq i32 %.pr.pre.i, 0
  br i1 %i.co, label %.thread85.i, label %.thread.i

.thread.i:                                        ; preds = %bb.u, %bb.q
  %i.cp = load ptr, ptr @MyReplicationSlot, align 8 ; 6 uses
  call void @pgstat_report_replslotsync(ptr noundef %i.cp) #13
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 288 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8
  %.not7.i.i = icmp eq i32 %i.cr, 4
  br i1 %.not7.i.i, label %bb.af, label %bb.v

bb.v:                                             ; preds = %.thread.i
  %i.cs = call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.cp, i8 1, ptr nonnull elementtype(i8) %i.cp) #13, !srcloc !8
  %.not.i.i.i19 = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i19, label %SpinLockAcquire.exit.i.i20, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = call i32 @s_lock(ptr noundef nonnull %i.cp, ptr noundef nonnull @.str.49, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #13 ; 0 uses
  br label %SpinLockAcquire.exit.i.i20

SpinLockAcquire.exit.i.i20:                       ; preds = %bb.w, %bb.v
  store i32 4, ptr %i.cq, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.cp, align 8
  br label %bb.af

.thread85.i:                                      ; preds = %bb.u, %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 92
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = icmp eq i32 %i.cv, 2
  br i1 %i.cw, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %.thread85.i
  %i.cx = load ptr, ptr @MyReplicationSlot, align 8
  %i.cy = call fastcc zeroext i1 @update_local_synced_slot(ptr noundef nonnull readonly %i.bq, i32 noundef %i.bt) ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 288
  %i.da = load i32, ptr %i.cz, align 8
  %.not.i63.i = icmp eq i32 %i.da, 0
  br i1 %.not.i63.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not7.i64.i, label %.thread79.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %1, align 1
  br label %.thread79.i

bb.aa:                                            ; preds = %bb.x
  call void @ReplicationSlotPersist() #13
  %i.db = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #13
  br i1 %i.db, label %bb.ab, label %.thread79.i

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load ptr, ptr %i.bq, align 8
  %i.dd = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.41, ptr noundef %i.dc) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 715, ptr noundef nonnull @__func__.update_and_persist_local_synced_slot) #13
  br label %.thread79.i

bb.ac:                                            ; preds = %.thread85.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = icmp ult i64 %i.df, %i.dh
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  %i.dl = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.dm = load ptr, ptr %i.bq, align 8
  %i.dn = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.39, ptr noundef %i.dm) #13 ; 0 uses
  %i.do = load i64, ptr %i.dk, align 8            ; 2 uses
  %i.dp = lshr i64 %i.do, 32
  %i.dq = trunc nuw i64 %i.dp to i32
  %i.dr = trunc i64 %i.do to i32
  %i.ds = load i64, ptr %i.dj, align 8            ; 2 uses
  %i.dt = lshr i64 %i.ds, 32
  %i.du = trunc nuw i64 %i.dt to i32
  %i.dv = trunc i64 %i.ds to i32
  %i.dw = call i32 (ptr, ...) @errdetail_internal(ptr noundef nonnull @.str.40, i32 noundef %i.dq, i32 noundef %i.dr, i32 noundef %i.du, i32 noundef %i.dv) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 831, ptr noundef nonnull @__func__.synchronize_one_slot) #13
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dx = call fastcc zeroext i1 @update_local_synced_slot(ptr noundef nonnull readonly %i.bq, i32 noundef %i.bt)
  br label %.thread79.i

bb.af:                                            ; preds = %SpinLockAcquire.exit.i.i20, %.thread.i
  call void @ReplicationSlotRelease() #13
  br label %synchronize_one_slot.exit

bb.ag:                                            ; preds = %.lr.ph57
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bq, i64 60
  %i.dz = load i32, ptr %i.dy, align 4
  %.not58.i = icmp eq i32 %i.dz, 0
  br i1 %.not58.i, label %bb.ah, label %.critedge.i

bb.ah:                                            ; preds = %bb.ag
  %i.ea = load ptr, ptr %i.bq, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.ec = load i8, ptr %i.eb, align 8, !range !5, !noundef !6
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bq, i64 25
  %i.ef = load i8, ptr %i.ee, align 1, !range !5, !noundef !6
  %i.eg = trunc nuw i8 %i.ef to i1
  call void @ReplicationSlotCreate(ptr noundef %i.ea, i1 noundef zeroext true, i32 noundef 2, i1 noundef zeroext %i.ed, i1 noundef zeroext false, i1 noundef zeroext %i.eg, i1 noundef zeroext true) #13
  %i.eh = load ptr, ptr @MyReplicationSlot, align 8 ; 12 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void @namestrcpy(ptr noundef nonnull %2, ptr noundef %i.ej) #13
  %i.ek = call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.eh, i8 1, ptr elementtype(i8) %i.eh) #13, !srcloc !8
  %.not.i65.i = icmp eq i8 %i.ek, 0
  br i1 %.not.i65.i, label %SpinLockAcquire.exit66.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.el = call i32 @s_lock(ptr noundef %i.eh, ptr noundef nonnull @.str.49, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #13 ; 0 uses
  br label %SpinLockAcquire.exit66.i

SpinLockAcquire.exit66.i:                         ; preds = %bb.ai, %bb.ah
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 88
  store i32 %i.bt, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.en, ptr noundef nonnull align 1 dereferenceable(64) %2, i64 64, i1 false)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.eh, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.ep = load i64, ptr %i.eo, align 8
  %i.eq = load ptr, ptr @MyReplicationSlot, align 8 ; 6 uses
  %i.er = load ptr, ptr @MainLWLockArray, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4608
  %i.et = call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.es, i32 noundef 0) #13 ; 0 uses
  %i.eu = call i64 @GetRedoRecPtr() #13           ; 2 uses
  %i.ev = call i64 @XLogGetReplicationSlotMinimumLSN() #13 ; 2 uses
  %.not.not.i.i = icmp eq i64 %i.ev, 0
  %i.ew = call i64 @llvm.umin.i64(i64 %i.eu, i64 %i.ev)
  %.0.i.i = select i1 %.not.not.i.i, i64 %i.eu, i64 %i.ew
  %i.ex = call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.eq, i8 1, ptr elementtype(i8) %i.eq) #13, !srcloc !8
  %.not.i.i67.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i67.i, label %SpinLockAcquire.exit.i68.i, label %bb.aj

bb.aj:                                            ; preds = %SpinLockAcquire.exit66.i
  %i.ey = call i32 @s_lock(ptr noundef %i.eq, ptr noundef nonnull @.str.49, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #13 ; 0 uses
  br label %SpinLockAcquire.exit.i68.i

SpinLockAcquire.exit.i68.i:                       ; preds = %bb.aj, %SpinLockAcquire.exit66.i
  %i.ez = call i64 @llvm.umax.i64(i64 %i.ep, i64 %.0.i.i)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 104 ; 2 uses
  store i64 %i.ez, ptr %i.fa, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.eq, align 8
  call void @ReplicationSlotsComputeRequiredLSN() #13
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = load i32, ptr @wal_segment_size, align 4
  %i.fd = sext i32 %i.fc to i64
  %i.fe = udiv i64 %i.fb, %i.fd
  %i.ff = call i64 @XLogGetLastRemovedSegno() #13
  %.not15.i.i = icmp ult i64 %i.ff, %i.fe
  br i1 %.not15.i.i, label %reserve_wal_for_local_slot.exit.i, label %bb.ak

bb.ak:                                            ; preds = %SpinLockAcquire.exit.i68.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.fh = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.fi = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.48, ptr noundef nonnull %i.fg) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 659, ptr noundef nonnull @__func__.reserve_wal_for_local_slot) #13
  unreachable

reserve_wal_for_local_slot.exit.i:                ; preds = %SpinLockAcquire.exit.i68.i
  %i.fj = load ptr, ptr @MainLWLockArray, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4608
  call void @LWLockRelease(ptr noundef nonnull %i.fk) #13
  %i.fl = load ptr, ptr @MainLWLockArray, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4736
  %i.fn = call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.fm, i32 noundef 0) #13 ; 0 uses
  %i.fo = load ptr, ptr @MainLWLockArray, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 512
  %i.fq = call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.fp, i32 noundef 0) #13 ; 0 uses
  %i.fr = call i32 @GetOldestSafeDecodingTransactionId(i1 noundef zeroext true) #13 ; 2 uses
  %i.fs = call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.eh, i8 1, ptr nonnull elementtype(i8) %i.eh) #13, !srcloc !8
  %.not.i69.i = icmp eq i8 %i.fs, 0
  br i1 %.not.i69.i, label %SpinLockAcquire.exit70.i, label %bb.al

bb.al:                                            ; preds = %reserve_wal_for_local_slot.exit.i
  %i.ft = call i32 @s_lock(ptr noundef nonnull %i.eh, ptr noundef nonnull @.str.49, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #13 ; 0 uses
  br label %SpinLockAcquire.exit70.i

SpinLockAcquire.exit70.i:                         ; preds = %bb.al, %reserve_wal_for_local_slot.exit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i32 %i.fr, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eh, i64 100
  store i32 %i.fr, ptr %i.fv, align 4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.eh, align 8
  call void @ReplicationSlotsComputeRequiredXmin(i1 noundef zeroext true) #13
  %i.fw = load ptr, ptr @MainLWLockArray, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 512
  call void @LWLockRelease(ptr noundef nonnull %i.fx) #13
  %i.fy = load ptr, ptr @MainLWLockArray, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4736
  call void @LWLockRelease(ptr noundef nonnull %i.fz) #13
  %i.ga = load ptr, ptr @MyReplicationSlot, align 8
  %i.gb = call fastcc zeroext i1 @update_local_synced_slot(ptr noundef nonnull readonly %i.bq, i32 noundef %i.bt) ; 0 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 288
  %i.gd = load i32, ptr %i.gc, align 8
  %.not.i71.i = icmp eq i32 %i.gd, 0
  br i1 %.not.i71.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %SpinLockAcquire.exit70.i
  br i1 %.not7.i64.i, label %update_and_persist_local_synced_slot.exit73.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i8 1, ptr %1, align 1
  br label %update_and_persist_local_synced_slot.exit73.i

bb.ao:                                            ; preds = %SpinLockAcquire.exit70.i
  call void @ReplicationSlotPersist() #13
  %i.ge = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #13
  br i1 %i.ge, label %bb.ap, label %update_and_persist_local_synced_slot.exit73.i

bb.ap:                                            ; preds = %bb.ao
  %i.gf = load ptr, ptr %i.bq, align 8
  %i.gg = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.41, ptr noundef %i.gf) #13 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 715, ptr noundef nonnull @__func__.update_and_persist_local_synced_slot) #13
  br label %update_and_persist_local_synced_slot.exit73.i

update_and_persist_local_synced_slot.exit73.i:    ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %.thread79.i

.thread79.i:                                      ; preds = %update_and_persist_local_synced_slot.exit73.i, %bb.ae, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.4.i = phi i1 [ true, %update_and_persist_local_synced_slot.exit73.i ], [ %i.dx, %bb.ae ], [ false, %bb.y ], [ false, %bb.z ], [ true, %bb.aa ], [ true, %bb.ab ]
  call void @ReplicationSlotRelease() #13
  br label %synchronize_one_slot.exit

.critedge.i:                                      ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %synchronize_one_slot.exit

synchronize_one_slot.exit:                        ; preds = %bb.af, %.thread79.i, %.critedge.i
  %.256.i = phi i1 [ %.4.i, %.thread79.i ], [ %i.ci, %bb.af ], [ false, %.critedge.i ]
  %i.gh = or i1 %.11756, %.256.i                  ; 2 uses
  call void @UnlockSharedObject(i32 noundef 1262, i32 noundef %i.bt, i16 noundef zeroext 0, i32 noundef 1) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %i.gi = load i32, ptr %9, align 4
  %i.gj = sext i32 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv.next, %i.gj
  br i1 %i.gk, label %.lr.ph57, label %.split.us, !llvm.loop !18
}

declare void @list_free_deep(ptr noundef) local_unnamed_addr #3

declare void @CommitTransactionCommand() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ShutDownSlotSync() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @SlotSyncCtx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = tail call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.b, i8 1, ptr nonnull elementtype(i8) %i.b) #13, !srcloc !8
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %SpinLockAcquire.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @s_lock(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #13 ; 0 uses
  br label %SpinLockAcquire.exit

SpinLockAcquire.exit:                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr @SlotSyncCtx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i8 1, ptr %i.f, align 4
  %i.g = load ptr, ptr @SlotSyncCtx, align 8      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.i = load i8, ptr %i.h, align 1, !range !5, !noundef !6
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %SpinLockAcquire.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.k, align 1
  br label %.loopexit

bb.d:                                             ; preds = %SpinLockAcquire.exit
  %i.l = load i32, ptr %i.g, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.m, align 8
  %.not = icmp eq i32 %i.l, -1
  br i1 %.not, label %.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @SendProcSignal(i32 noundef %i.l, i32 noundef 7, i32 noundef -1) #13 ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %SpinLockAcquire.exit8
  %i.o = load ptr, ptr @MyLatch, align 8
  %i.p = tail call i32 @WaitLatch(ptr noundef %i.o, i32 noundef 41, i64 noundef 10, i32 noundef 83886092) #13
  %i.q = and i32 %i.p, 1
  %.not5 = icmp eq i32 %i.q, 0
  br i1 %.not5, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @MyLatch, align 8
  tail call void @ResetLatch(ptr noundef %i.r) #13
  %i.s = load volatile i32, ptr @InterruptPending, align 4
  %.not6 = icmp eq i32 %i.s, 0
  br i1 %.not6, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  tail call void @ProcessInterrupts() #13
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.t = load ptr, ptr @SlotSyncCtx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.v = tail call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.u, i8 1, ptr nonnull elementtype(i8) %i.u) #13, !srcloc !8
  %.not.i7 = icmp eq i8 %i.v, 0
  br i1 %.not.i7, label %SpinLockAcquire.exit8, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call i32 @s_lock(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.49, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #13 ; 0 uses
  br label %SpinLockAcquire.exit8

SpinLockAcquire.exit8:                            ; preds = %bb.i, %bb.j
  %i.x = load ptr, ptr @SlotSyncCtx, align 8      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 5
  %i.z = load i8, ptr %i.y, align 1, !range !5, !noundef !6
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13
  store volatile i8 0, ptr %i.ab, align 1
  br i1 %i.aa, label %bb.f, label %.loopexit

.loopexit:                                        ; preds = %SpinLockAcquire.exit8, %bb.c
  tail call fastcc void @update_synced_slots_inactive_since()
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_synced_slots_inactive_since() unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @StandbyMode, align 1, !range !5, !noundef !6
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @MainLWLockArray, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.e = tail call zeroext i1 @LWLockAcquire(ptr noundef nonnull %i.d, i32 noundef 1) #13 ; 0 uses
  %i.f = load i32, ptr @max_replication_slots, align 4 ; 2 uses
  %i.g = load i32, ptr @max_repack_replication_slots, align 4 ; 2 uses
  %i.h = add i32 %i.g, %i.f
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %.pre11 = load ptr, ptr @ReplicationSlotCtl, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.b
  %i.j = load ptr, ptr @MainLWLockArray, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4736
  tail call void @LWLockRelease(ptr noundef nonnull %i.k) #13
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.l = phi i32 [ %i.g, %.lr.ph.preheader ], [ %i.ad, %bb.i ] ; 2 uses
  %i.m = phi i32 [ %i.f, %.lr.ph.preheader ], [ %i.ae, %bb.i ] ; 2 uses
  %i.n = phi ptr [ %.pre11, %.lr.ph.preheader ], [ %i.af, %bb.i ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.078 = phi i64 [ 0, %.lr.ph.preheader ], [ %.2, %bb.i ] ; 4 uses
  %i.o = getelementptr inbounds nuw [296 x i8], ptr %i.n, i64 %indvars.iv ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !range !5, !noundef !6
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.i

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 201
  %i.t = load i8, ptr %i.s, align 1, !range !5, !noundef !6
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i64 %.078, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = tail call i64 @GetCurrentTimestamp() #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i64 [ %i.w, %bb.e ], [ %.078, %bb.d ] ; 2 uses
  %i.x = tail call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.o, i8 1, ptr nonnull elementtype(i8) %i.o) #13, !srcloc !8
  %.not.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i, label %SpinLockAcquire.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = tail call i32 @s_lock(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.49, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #13 ; 0 uses
  br label %SpinLockAcquire.exit.i

SpinLockAcquire.exit.i:                           ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %ReplicationSlotSetInactiveSince.exit

bb.h:                                             ; preds = %SpinLockAcquire.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 272
  store i64 %.1, ptr %i.ac, align 8
  br label %ReplicationSlotSetInactiveSince.exit

ReplicationSlotSetInactiveSince.exit:             ; preds = %SpinLockAcquire.exit.i, %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.o, align 8
  %.pre = load ptr, ptr @ReplicationSlotCtl, align 8
  %.pre12 = load i32, ptr @max_replication_slots, align 4
  %.pre13 = load i32, ptr @max_repack_replication_slots, align 4
  br label %bb.i

bb.i:                                             ; preds = %ReplicationSlotSetInactiveSince.exit, %bb.c, %.lr.ph
  %i.ad = phi i32 [ %.pre13, %ReplicationSlotSetInactiveSince.exit ], [ %i.l, %bb.c ], [ %i.l, %.lr.ph ] ; 2 uses
  %i.ae = phi i32 [ %.pre12, %ReplicationSlotSetInactiveSince.exit ], [ %i.m, %bb.c ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.af = phi ptr [ %.pre, %ReplicationSlotSetInactiveSince.exit ], [ %i.n, %bb.c ], [ %i.n, %.lr.ph ]
  %.2 = phi i64 [ %.1, %ReplicationSlotSetInactiveSince.exit ], [ %.078, %bb.c ], [ %.078, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = add i32 %i.ad, %i.ae
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !19

bb.j:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare i32 @SendProcSignal(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WaitLatch(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @ResetLatch(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @SlotSyncWorkerCanRestart() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @time(ptr noundef null) #13 ; 3 uses
  %i.b = load ptr, ptr @SlotSyncCtx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = icmp slt i64 %i.a, %i.d
  %i.g = sub i64 %i.a, %i.d
  %i.h = icmp sgt i64 %i.g, 9
  %i.i = or i1 %i.f, %i.h
  %or.cond6 = select i1 %i.e, i1 true, i1 %i.i    ; 2 uses
  br i1 %or.cond6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %or.cond6
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local void @SyncReplicationSlots(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 4 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 4 uses
  call void @before_shmem_exit(ptr noundef nonnull @slotsync_failure_callback, i64 noundef %i.b) #13
  %i.c = load ptr, ptr @PG_exception_stack, align 8 ; 2 uses
  %i.d = load ptr, ptr @error_context_stack, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.e = call i32 @__sigsetjmp(ptr noundef nonnull %1, i32 noundef 0) #16
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr @PG_exception_stack, align 8
  %i.g = load i32, ptr @MyProcPid, align 4
  call fastcc void @check_and_set_sync_info(i32 noundef %i.g)
  call fastcc void @validate_remote_info(ptr noundef %0)
  %i.h = load ptr, ptr @CurrentMemoryContext, align 8
  %i.i = call ptr @AllocSetContextCreateInternal(ptr noundef %i.h, ptr noundef nonnull @.str.19, i64 noundef 0, i64 noundef 8192, i64 noundef 8388608) #13 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %wait_for_slot_activity.exit, %bb.b
  %.024 = phi ptr [ null, %bb.b ], [ %.129, %wait_for_slot_activity.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 0, ptr %i.a, align 1
  %i.j = load volatile i32, ptr @InterruptPending, align 4
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  call void @ProcessInterrupts() #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = load volatile i32, ptr @ConfigReloadPending, align 4
  %.not25 = icmp eq i32 %i.k, 0
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call fastcc void @slotsync_reread_config()
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @MemoryContextReset(ptr noundef %i.i) #13
  %i.l = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.i, ptr @CurrentMemoryContext, align 8
  %i.m = call fastcc ptr @fetch_remote_slots(ptr noundef %0, ptr noundef %.024) ; 4 uses
  %i.n = call fastcc zeroext i1 @synchronize_slots(ptr noundef %i.m, ptr noundef nonnull %i.a)
  store ptr %i.l, ptr @CurrentMemoryContext, align 8
  %i.o = icmp eq ptr %.024, null                  ; 2 uses
  %i.p = load i8, ptr %i.a, align 1, !range !5
  %i.q = trunc nuw i8 %i.p to i1                  ; 2 uses
  %or.cond = select i1 %i.o, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.h, label %extract_slot_names.exit

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %.not12.i = icmp eq ptr %i.m, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br i1 %.not12.i, label %extract_slot_names.exit.thread, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.h
  %i.t = load i32, ptr %i.r, align 4
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph20.i, label %extract_slot_names.exit.thread

.lr.ph20.i:                                       ; preds = %.lr.ph.split.i, %.lr.ph20.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph20.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.11418.i = phi ptr [ %i.aa, %.lr.ph20.i ], [ null, %.lr.ph.split.i ]
  %i.v = load ptr, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call ptr @pstrdup(ptr noundef %i.y) #13
  %i.aa = call ptr @lappend(ptr noundef %.11418.i, ptr noundef %i.z) #13 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ab = load i32, ptr %i.r, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i, %i.ac
  br i1 %i.ad, label %.lr.ph20.i, label %extract_slot_names.exit.thread

extract_slot_names.exit:                          ; preds = %bb.g
  br i1 %i.q, label %extract_slot_names.exit.thread, label %bb.l

extract_slot_names.exit.thread:                   ; preds = %.lr.ph20.i, %bb.h, %.lr.ph.split.i, %extract_slot_names.exit
  %.129 = phi ptr [ %.024, %extract_slot_names.exit ], [ null, %bb.h ], [ null, %.lr.ph.split.i ], [ %i.aa, %.lr.ph20.i ]
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %extract_slot_names.exit.thread
  %i.ae = load i64, ptr @sleep_ms, align 8
  %i.af = shl i64 %i.ae, 1
  %i.ag = call i64 @llvm.smin.i64(i64 %i.af, i64 30000)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %extract_slot_names.exit.thread
  %storemerge.i = phi i64 [ %i.ag, %bb.i ], [ 200, %extract_slot_names.exit.thread ] ; 2 uses
  store i64 %storemerge.i, ptr @sleep_ms, align 8
  %i.ah = load ptr, ptr @MyLatch, align 8
  %i.ai = call i32 @WaitLatch(ptr noundef %i.ah, i32 noundef 41, i64 noundef %storemerge.i, i32 noundef 83886091) #13
  %i.aj = and i32 %i.ai, 1
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %wait_for_slot_activity.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr @MyLatch, align 8
  call void @ResetLatch(ptr noundef %i.ak) #13
  br label %wait_for_slot_activity.exit

wait_for_slot_activity.exit:                      ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.c

bb.l:                                             ; preds = %extract_slot_names.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @MemoryContextDelete(ptr noundef %i.i) #13
  br i1 %i.o, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @list_free_deep(ptr noundef nonnull %.024) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @ReplicationSlotCleanup(i1 noundef zeroext true) #13
  %i.al = load ptr, ptr @SlotSyncCtx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  %i.an = call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.am, i8 1, ptr nonnull elementtype(i8) %i.am) #13, !srcloc !8
  %.not.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i, label %reset_syncing_flag.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = call i32 @s_lock(ptr noundef nonnull %i.am, ptr noundef nonnull @.str.49, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #13 ; 0 uses
  br label %reset_syncing_flag.exit

reset_syncing_flag.exit:                          ; preds = %bb.n, %bb.o
  %i.ap = load ptr, ptr @SlotSyncCtx, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  store i8 0, ptr %i.aq, align 1
  %i.ar = load ptr, ptr @SlotSyncCtx, align 8
  store i32 -1, ptr %i.ar, align 8
  %i.as = load ptr, ptr @SlotSyncCtx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.at, align 1
  store i1 false, ptr @syncing_slots, align 1
  call void @cancel_before_shmem_exit(ptr noundef nonnull @slotsync_failure_callback, i64 noundef %i.b) #13
  store ptr %i.c, ptr @PG_exception_stack, align 8
  store ptr %i.d, ptr @error_context_stack, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void

bb.p:                                             ; preds = %bb.a
  store ptr %i.c, ptr @PG_exception_stack, align 8
  store ptr %i.d, ptr @error_context_stack, align 8
  call void @cancel_before_shmem_exit(ptr noundef nonnull @slotsync_failure_callback, i64 noundef %i.b) #13
  call void @slotsync_failure_callback(i32 poison, i64 noundef %i.b)
  call void @pg_re_throw() #15
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @slotsync_failure_callback(i32 %0, i64 noundef %1) #0 {
end_hunk_0
begin_hunk_1_@update_local_synced_slot:bb.a
  %i.dj = call i32 @s_lock(ptr noundef nonnull %i.df, ptr noundef nonnull @.str.49, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #13 ; 0 uses
  br label %SpinLockAcquire.exit.i112

SpinLockAcquire.exit.i112:                        ; preds = %bb.ac, %bb.ab
  store i32 %.1122, ptr %i.dg, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.df, align 8
  br label %update_slotsync_skip_stats.exit113

update_slotsync_skip_stats.exit113:               ; preds = %bb.aa, %SpinLockAcquire.exit.i112
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8
  %.not98 = icmp eq i32 %1, %i.dl
  br i1 %.not98, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %update_slotsync_skip_stats.exit113
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dn = load i8, ptr %i.dm, align 8, !range !5, !noundef !6
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.dp = load i8, ptr %i.do, align 8, !range !5, !noundef !6
  %.not99 = icmp eq i8 %i.dn, %i.dp
  br i1 %.not99, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.dr = load i8, ptr %i.dq, align 1, !range !5, !noundef !6
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 202
  %i.dt = load i8, ptr %i.ds, align 2, !range !5, !noundef !6
  %.not100 = icmp eq i8 %i.dr, %i.dt
  br i1 %.not100, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 137
  %i.dx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.dv, ptr noundef nonnull dereferenceable(1) %i.dw) #17
  %.not101 = icmp eq i32 %i.dx, 0
  br i1 %.not101, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.eb = load i64, ptr %i.ea, align 8
  %.not102 = icmp eq i64 %i.dz, %i.eb
  br i1 %.not102, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %update_slotsync_skip_stats.exit113
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void @namestrcpy(ptr noundef nonnull %2, ptr noundef %i.ed) #13
  %i.ee = call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.b, i8 1, ptr nonnull elementtype(i8) %i.b) #13, !srcloc !8
  %.not.i114 = icmp eq i8 %i.ee, 0
  br i1 %.not.i114, label %.thread123, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ef = call i32 @s_lock(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #13 ; 0 uses
  br label %.thread123

.thread123:                                       ; preds = %bb.ai, %bb.ah
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.eg, ptr noundef nonnull align 1 dereferenceable(64) %2, i64 64, i1 false)
  store i32 %1, ptr %i.dk, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ei = load i8, ptr %i.eh, align 8, !range !5, !noundef !6
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i8 %i.ei, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i64 %i.el, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.eo = load i8, ptr %i.en, align 1, !range !5, !noundef !6
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 202
  store i8 %i.eo, ptr %i.ep, align 2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @ReplicationSlotMarkDirty() #13
  call void @ReplicationSlotSave() #13
  br i1 %.093121, label %bb.ak, label %.thread131

bb.aj:                                            ; preds = %bb.ag
  br i1 %.093121, label %.critedge, label %.thread131

.critedge:                                        ; preds = %bb.aj
  call void @ReplicationSlotMarkDirty() #13
  call void @ReplicationSlotSave() #13
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge, %.thread123
  %i.eq = call i8 asm sideeffect "\09lock\09\09\09\0A\09xchgb\09$0,$1\09\0A", "=q,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.b, i8 1, ptr nonnull elementtype(i8) %i.b) #13, !srcloc !8
  %.not.i116 = icmp eq i8 %i.eq, 0
  br i1 %.not.i116, label %SpinLockAcquire.exit117, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.er = call i32 @s_lock(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49, i32 noundef 58, ptr noundef nonnull @__func__.SpinLockAcquire) #13 ; 0 uses
  br label %SpinLockAcquire.exit117

SpinLockAcquire.exit117:                          ; preds = %bb.ak, %bb.al
  %i.es = load i32, ptr %i.ab, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.es, ptr %i.et, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !9
  store volatile i8 0, ptr %i.b, align 8
  call void @ReplicationSlotsComputeRequiredXmin(i1 noundef zeroext false) #13
  call void @ReplicationSlotsComputeRequiredLSN() #13
  br label %.thread131

.thread131:                                       ; preds = %bb.aj, %update_slotsync_skip_stats.exit106, %bb.k, %.thread123, %SpinLockAcquire.exit117, %update_slotsync_skip_stats.exit, %bb.e
  %.094 = phi i1 [ false, %update_slotsync_skip_stats.exit ], [ true, %.thread123 ], [ false, %bb.e ], [ true, %SpinLockAcquire.exit117 ], [ false, %bb.k ], [ false, %update_slotsync_skip_stats.exit106 ], [ false, %bb.aj ]
  ret i1 %.094
}

declare void @ReplicationSlotCreate(ptr noundef, i1 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare void @namestrcpy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @GetOldestSafeDecodingTransactionId(i1 noundef zeroext) local_unnamed_addr #3

declare void @ReplicationSlotsComputeRequiredXmin(i1 noundef zeroext) local_unnamed_addr #3

declare void @pgstat_report_replslotsync(ptr noundef) local_unnamed_addr #3

declare void @ReplicationSlotPersist() local_unnamed_addr #3

declare i64 @GetStandbyFlushRecPtr(ptr noundef) local_unnamed_addr #3

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #3

declare zeroext i1 @SnapBuildSnapshotExists(i64 noundef) local_unnamed_addr #3

declare i64 @LogicalSlotAdvanceAndCheckSnapState(i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @ReplicationSlotsComputeRequiredLSN() local_unnamed_addr #3

declare i64 @GetRedoRecPtr() local_unnamed_addr #3

declare i64 @XLogGetReplicationSlotMinimumLSN() local_unnamed_addr #3

declare i64 @XLogGetLastRemovedSegno() local_unnamed_addr #3

declare i32 @s_lock(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @GetCurrentTimestamp() local_unnamed_addr #3

declare void @ShmemRequestStructWithOpts(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind returns_twice }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{i8 0, i8 2}
!6 = !{}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{i64 1798014, i64 1798030}
!9 = !{i64 2149295791}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i64 2149295582}
!12 = !{ptr @CheckAndGetDbnameFromConninfo}
!13 = distinct !{!13, !10, !16}
!14 = distinct !{null}
!15 = distinct !{!15, !10}
!16 = !{!"llvm.loop.peeled.count", i32 1}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
end_hunk_1
