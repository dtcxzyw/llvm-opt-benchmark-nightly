Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/nodeModifyTable?download=true
inline.NumInlined: 174
inline.NumDeleted: 61
begin_hunk_0_@ExecForPortionOfLeftovers:bb.a
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 196
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = icmp eq i32 %i.et, 2
  br i1 %i.eu, label %.peel.next.sink.split, label %.peel.next.preheader

.peel.next.sink.split:                            ; preds = %bb.u, %bb.ae
  %.sink143.in = phi ptr [ %i.hc, %bb.ae ], [ %i.ej, %bb.u ]
  %.sink141.in = phi ptr [ %i.hb, %bb.ae ], [ %i.eh, %bb.u ]
  %.sink141 = load ptr, ptr %.sink141.in, align 8
  %.sink143 = load ptr, ptr %.sink143.in, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %.sink143, i64 72
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = call ptr @MakeTransitionCaptureState(ptr noundef %.sink141, i32 noundef %i.ew, i32 noundef 2) #7
  store ptr %i.ex, ptr %i.cv, align 8
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.u, %bb.t, %.peel.next.sink.split
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.backedge, %.peel.next.preheader
  call fastcc void @fireBSTriggers(ptr noundef nonnull %i.b)
  %i.ey = call fastcc ptr @ExecInsert(ptr noundef %0, ptr noundef nonnull %.099, ptr noundef nonnull %.196.peel, i1 noundef zeroext false, ptr noundef null, ptr noundef null) ; 0 uses
  call fastcc void @fireASTriggers(ptr noundef nonnull %i.b)
  call void @AfterTriggerEndQuery(ptr noundef %1) #7
  call void @pgstat_init_function_usage(ptr noundef nonnull %7, ptr noundef nonnull %5) #7
  store i8 0, ptr %i.cd, align 4
  store i32 0, ptr %i.co, align 8
  %i.ez = load ptr, ptr %7, align 8
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = call i64 %i.fa(ptr noundef nonnull %7) #7 ; 2 uses
  %i.fc = load i32, ptr %i.co, align 8
  %i.fd = icmp ne i32 %i.fc, 1
  call void @pgstat_end_function_usage(ptr noundef nonnull %5, i1 noundef zeroext %i.fd) #7
  %i.fe = load i32, ptr %i.by, align 4
  %.not101 = icmp eq i32 %i.fe, 1
  br i1 %.not101, label %bb.v, label %.loopexit

.loopexit:                                        ; preds = %.peel.next, %.peel.begin
  %i.ff = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.fg = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.39) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1532, ptr noundef nonnull @__func__.ExecForPortionOfLeftovers) #7
  unreachable

bb.v:                                             ; preds = %.peel.next
  %i.fh = load i32, ptr %i.co, align 8
  %i.fi = icmp eq i32 %i.fh, 2
  br i1 %i.fi, label %.loopexit131, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fj = load i8, ptr %i.cd, align 4, !range !4, !noundef !5
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %.loopexit132, label %bb.x

.loopexit132:                                     ; preds = %bb.w, %bb.n
  %i.fl = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.fm = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.40) #7 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1539, ptr noundef nonnull @__func__.ExecForPortionOfLeftovers) #7
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.fn = load i8, ptr %i.cp, align 4, !range !4, !noundef !5
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fp = load ptr, ptr %i.cq, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = load i32, ptr %i.fq, align 4
  call void @domain_check(i64 noundef %i.fb, i1 noundef zeroext false, i32 noundef %i.fr, ptr noundef null, ptr noundef null) #7
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  br i1 %.not102, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fs = load ptr, ptr %i.cr, align 8
  %i.ft = call ptr @execute_attr_map_slot(ptr noundef %i.fs, ptr noundef %i.t, ptr noundef nonnull %.196.peel) #7 ; 0 uses
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @ExecForceStoreHeapTuple(ptr noundef %.192.peel, ptr noundef nonnull %.196.peel, i1 noundef zeroext false) #7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.fu = load ptr, ptr %i.dp, align 8
  %i.fv = load ptr, ptr %i.cu, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 20
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = add i32 %i.fx, -1
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.fz
  store i64 %i.fb, ptr %i.ga, align 8
  %i.gb = load ptr, ptr %i.dt, align 8
  %i.gc = load ptr, ptr %i.cu, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 20
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = add i32 %i.ge, -1
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds i8, ptr %i.gb, i64 %i.gg
  store i8 0, ptr %i.gh, align 1
  %i.gi = load ptr, ptr %i.eb, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull %.196.peel) #7, !inline_history !10
  call void @AfterTriggerBeginQuery() #7
  %i.gl = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.gm = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 96
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 72
  %i.gs = load i32, ptr %i.gr, align 8
  %i.gt = load i32, ptr %i.cs, align 8
  %i.gu = call ptr @MakeTransitionCaptureState(ptr noundef %i.go, i32 noundef %i.gs, i32 noundef %i.gt) #7
  store ptr %i.gu, ptr %i.ct, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 104
  %i.gw = load i32, ptr %i.gv, align 8
  %i.gx = icmp eq i32 %i.gw, 3
  br i1 %i.gx, label %bb.ad, label %.peel.next.backedge

bb.ad:                                            ; preds = %bb.ac
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gl, i64 196
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = icmp eq i32 %i.gz, 2
  br i1 %i.ha, label %bb.ae, label %.peel.next.backedge

.peel.next.backedge:                              ; preds = %bb.ad, %bb.ac
  br label %.peel.next, !llvm.loop !71

bb.ae:                                            ; preds = %bb.ad
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gm, i64 96
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  br label %.peel.next.sink.split, !llvm.loop !71

.loopexit131:                                     ; preds = %bb.v
  store i32 %i.dn, ptr %i.cs, align 8
  store ptr %i.do, ptr %i.ct, align 8
  %i.hd = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.af, label %.loopexit131.thread

bb.af:                                            ; preds = %.loopexit131
  call void @heap_freetuple(ptr noundef %.192.peel) #7
  br label %.loopexit131.thread

.loopexit131.thread:                              ; preds = %bb.m, %.loopexit131, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  ret void
}

declare void @list_free(ptr noundef) local_unnamed_addr #2

declare ptr @lookup_type_cache(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @fmgr_info(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @pgstat_init_function_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pgstat_end_function_usage(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @domain_check(i64 noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ExecFetchSlotHeapTuple(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @AfterTriggerBeginQuery() local_unnamed_addr #2

declare void @AfterTriggerEndQuery(ptr noundef) local_unnamed_addr #2

declare void @heap_freetuple(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @ExecBRDeleteTriggers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @ExecARDeleteTriggers(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @ExecGetAllNullSlot(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ExecCheckPlanOutput(ptr nofree readonly captures(none) %.64.val, ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.a, align 4              ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph28, label %.critedge

.lr.ph28:                                         ; preds = %.lr.ph, %bb.i
  %i.e = phi i32 [ %i.bm, %bb.i ], [ %i.c, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %.lr.ph ] ; 4 uses
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = load i32, ptr %.64.val, align 8          ; 2 uses
  %i.j = sext i32 %i.i to i64
  %.not30 = icmp slt i64 %indvars.iv, %i.j
  br i1 %.not30, label %bb.b, label %.split

.critedge.loopexit:                               ; preds = %bb.i
  %i.k = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph, %bb.a
  %.026.lcssa = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph ], [ %i.k, %.critedge.loopexit ]
  %i.l = load i32, ptr %.64.val, align 8
  %.not29 = icmp eq i32 %.026.lcssa, %i.l
  br i1 %.not29, label %bb.k, label %bb.j

.split:                                           ; preds = %.lr.ph28
  %i.m = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.n = tail call i32 @errcode(i32 noundef 67141764) #7 ; 0 uses
  %i.o = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.42) #7 ; 0 uses
  %i.p = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.43) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 239, ptr noundef nonnull @__func__.ExecCheckPlanOutput) #7
  unreachable

bb.b:                                             ; preds = %.lr.ph28
  %1 = zext nneg i32 %i.i to i64
  %i.q = shl nuw nsw i64 %1, 3
  %i.r = getelementptr i8, ptr %.64.val, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 32
  %i.t = getelementptr inbounds nuw [100 x i8], ptr %i.s, i64 %indvars.iv ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 91
  %i.v = load i8, ptr %i.u, align 1, !range !4, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.z, 7
  br i1 %i.aa, label %bb.d, label %.split23

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ac = load i8, ptr %i.ab, align 8, !range !4, !noundef !5
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.i, label %.split23

.split23:                                         ; preds = %bb.c, %bb.d
  %i.ae = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.af = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ag = tail call i32 @errcode(i32 noundef 67141764) #7 ; 0 uses
  %i.ah = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.42) #7 ; 0 uses
  %i.ai = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.44, i32 noundef %i.ae) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 259, ptr noundef nonnull @__func__.ExecCheckPlanOutput) #7
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 90
  %i.ak = load i8, ptr %i.aj, align 2
  %.not31 = icmp eq i8 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  br i1 %.not31, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp eq i32 %i.an, 7
  br i1 %i.ao, label %bb.g, label %.split15

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.aq = load i8, ptr %i.ap, align 8, !range !4, !noundef !5
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.i, label %.split15

.split15:                                         ; preds = %bb.f, %bb.g
  %i.as = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.at = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.au = tail call i32 @errcode(i32 noundef 67141764) #7 ; 0 uses
  %i.av = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.42) #7 ; 0 uses
  %i.aw = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.45, i32 noundef %i.as) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 276, ptr noundef nonnull @__func__.ExecCheckPlanOutput) #7
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.ax = tail call i32 @exprType(ptr noundef %i.am) #7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 68
  %i.az = load i32, ptr %i.ay, align 4
  %.not32 = icmp eq i32 %i.ax, %i.az
  br i1 %.not32, label %._crit_edge, label %.split18

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.i

.split18:                                         ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 68
  %i.bc = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.bd = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.be = tail call i32 @errcode(i32 noundef 67141764) #7 ; 0 uses
  %i.bf = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.42) #7 ; 0 uses
  %i.bg = load i32, ptr %i.bb, align 4
  %i.bh = tail call ptr @format_type_be(i32 noundef %i.bg) #7
  %i.bi = load ptr, ptr %i.ba, align 8
  %i.bj = tail call i32 @exprType(ptr noundef %i.bi) #7
  %i.bk = tail call ptr @format_type_be(i32 noundef %i.bj) #7
  %i.bl = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.46, ptr noundef %i.bh, i32 noundef %i.bc, ptr noundef %i.bk) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 288, ptr noundef nonnull @__func__.ExecCheckPlanOutput) #7
  unreachable

bb.i:                                             ; preds = %._crit_edge, %bb.g, %bb.d
  %i.bm = phi i32 [ %.pre, %._crit_edge ], [ %i.e, %bb.g ], [ %i.e, %bb.d ] ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph28, label %.critedge.loopexit

bb.j:                                             ; preds = %.critedge
  %i.bp = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.bq = tail call i32 @errcode(i32 noundef 67141764) #7 ; 0 uses
  %i.br = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.42) #7 ; 0 uses
  %i.bs = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.47) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 295, ptr noundef nonnull @__func__.ExecCheckPlanOutput) #7
  unreachable

bb.k:                                             ; preds = %.critedge
  ret void
}

declare i32 @exprType(ptr noundef) local_unnamed_addr #2

declare ptr @format_type_be(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @ExecBRInsertTriggers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @ExecIRInsertTriggers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ExecBatchInsert(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 %4, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call ptr %i.e(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a) #7
  %i.g = load i32, ptr %i.a, align 4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 208
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i32 %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.j, align 8
  call void @ExecARInsertTriggers(ptr noundef %5, ptr noundef nonnull %1, ptr noundef %i.m, ptr noundef null, ptr noundef %i.r) #7
  %i.s = load ptr, ptr %i.k, align 8
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @ExecWithCheckOptions(i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %i.m, ptr noundef %5) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr %i.a, align 4              ; 3 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.b, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.d
  %i.w = icmp sgt i32 %i.t, 0
  %or.cond = and i1 %6, %i.w
  br i1 %or.cond, label %bb.e, label %._crit_edge.thread

bb.e:                                             ; preds = %._crit_edge
  %i.x = zext nneg i32 %i.t to i64
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = add i64 %i.z, %i.x
  store i64 %i.aa, ptr %i.y, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.e, %._crit_edge
  %i.ab = icmp sgt i32 %4, 0
  br i1 %i.ab, label %.lr.ph34.preheader, label %._crit_edge35

.lr.ph34.preheader:                               ; preds = %._crit_edge.thread
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %.lr.ph34
  %indvars.iv38 = phi i64 [ 0, %.lr.ph34.preheader ], [ %indvars.iv.next39, %.lr.ph34 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv38
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef %i.ad) #7, !inline_history !9
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv38
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef %i.aj) #7, !inline_history !9
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge35, label %.lr.ph34, !llvm.loop !74

end_hunk_0
