inline.NumInlined: 32
inline.NumDeleted: 15
begin_hunk_0_@read_fifo_child:bb.a
  %i.ae = load i8, ptr %i.ad, align 8, !range !9, !noundef !10
  %i.af = getelementptr inbounds nuw i8, ptr %.val19, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val19, i64 24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = sub i32 0, %i.y
  %i.ak = tail call ptr @strerror(i32 noundef %i.aj) #16
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 16600
  %i.am = xor i8 %i.ae, 1
  %not..i = zext nneg i8 %i.am to i32
  %i.an = add i64 %i.ag, 511
  %i.ao = add i64 %i.an, %i.ai
  %i.ap = lshr i64 %i.ao, 9
  %i.aq = lshr i64 %i.ag, 9                       ; 2 uses
  %i.ar = sub nsw i64 %i.ap, %i.aq
  tail call void @qapi_event_send_quorum_report_bad(i32 noundef range(i32 0, 3) %not..i, ptr noundef %i.ak, ptr noundef nonnull %i.al, i64 noundef %i.aq, i64 noundef %i.ar) #16
  %i.as = load i32, ptr %i.d, align 8             ; 2 uses
  %i.at = load i32, ptr %i.i, align 8
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %bb.b, label %.critedge, !llvm.loop !34

.critedge:                                        ; preds = %bb.b, %quorum_report_bad_acb.exit
  ret i32 %i.y
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #5

declare ptr @qemu_coroutine_self() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @quorum_sha256_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #11 {
bb.a:
  %i.a = load i128, ptr %0, align 1
  %i.b = load i128, ptr %1, align 1
  %i.c = xor i128 %i.a, %i.b
  %i.d = getelementptr i8, ptr %0, i64 16
  %i.e = getelementptr i8, ptr %1, i64 16
  %i.f = load i128, ptr %i.d, align 1
  %i.g = load i128, ptr %i.e, align 1
  %i.h = xor i128 %i.f, %i.g
  %i.i = or i128 %i.c, %i.h
  %i.j = icmp ne i128 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %.not = icmp eq i32 %i.k, 0
  ret i1 %.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare ptr @qemu_blockalign(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @qemu_iovec_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @qemu_iovec_clone(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_coroutine_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @read_quorum_children_entry(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = sext i32 %i.f to i64                     ; 4 uses
  %i.j = getelementptr inbounds [72 x i8], ptr %i.h, i64 %i.i ; 4 uses
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.i
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.m, align 8
  store ptr %i.n, ptr %i.j, align 8
  %i.o = load ptr, ptr %i.d, align 8
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.i
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.g, align 8
  %i.w = getelementptr inbounds [72 x i8], ptr %i.v, i64 %i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = tail call i32 @bdrv_co_preadv(ptr noundef %i.q, i64 noundef %i.s, i64 noundef %i.u, ptr noundef nonnull %i.x, i32 noundef 0) #16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i32 %i.y, ptr %i.z, align 8
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 60 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %i.j, align 8
  %i.ae = getelementptr i8, ptr %i.j, i64 64
  %.val30 = load ptr, ptr %i.ae, align 8          ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val30, i64 88
  %i.ag = load i8, ptr %i.af, align 8, !range !9, !noundef !10
  %i.ah = getelementptr inbounds nuw i8, ptr %.val30, i64 16
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val30, i64 24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp slt i32 %i.y, 0
  br i1 %i.al, label %bb.d, label %quorum_report_bad_acb.exit

bb.d:                                             ; preds = %bb.c
  %i.am = sub i32 0, %i.y
  %i.an = tail call ptr @strerror(i32 noundef %i.am) #16
  br label %quorum_report_bad_acb.exit

quorum_report_bad_acb.exit:                       ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.an, %bb.d ], [ null, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 16600
  %i.ap = xor i8 %i.ag, 1
  %not..i = zext nneg i8 %i.ap to i32
  %i.aq = add i64 %i.ai, 511
  %i.ar = add i64 %i.aq, %i.ak
  %i.as = lshr i64 %i.ar, 9
  %i.at = lshr i64 %i.ai, 9                       ; 2 uses
  %i.au = sub nsw i64 %i.as, %i.at
  tail call void @qapi_event_send_quorum_report_bad(i32 noundef range(i32 0, 3) %not..i, ptr noundef %.0.i.i, ptr noundef nonnull %i.ao, i64 noundef %i.at, i64 noundef %i.au) #16
  br label %bb.e

bb.e:                                             ; preds = %quorum_report_bad_acb.exit, %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = add i32 %i.aw, 1                        ; 3 uses
  store i32 %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.az = load i32, ptr %i.ay, align 8            ; 3 uses
  %.not = icmp sgt i32 %i.ax, %i.az
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.7, i32 noundef 601, ptr noundef nonnull @__PRETTY_FUNCTION__.read_quorum_children_entry) #19
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.bb = load i32, ptr %i.ba, align 4
  %.not29 = icmp sgt i32 %i.bb, %i.az
  br i1 %.not29, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.7, i32 noundef 602, ptr noundef nonnull @__PRETTY_FUNCTION__.read_quorum_children_entry) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bc = icmp eq i32 %i.ax, %i.az
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void @qemu_coroutine_enter_if_inactive(ptr noundef %i.be) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

declare void @qemu_coroutine_enter(ptr noundef) local_unnamed_addr #1

declare void @qemu_coroutine_yield() #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @quorum_vote(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %union.QuorumVoteValue, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false), !annotation !11
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = tail call fastcc zeroext i1 @quorum_has_too_much_io_failed(ptr noundef nonnull %0)
  br i1 %i.f, label %quorum_free_vote_list.exit, label %.preheader73

.preheader73:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8              ; 4 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader73
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i32, ptr %i.m, align 8
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.preheader72, label %bb.c

.preheader72:                                     ; preds = %bb.b
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  %.080 = add nuw i32 %i.o, 1                     ; 2 uses
  %.not7181 = icmp slt i32 %.080, %i.h
  br i1 %.not7181, label %.lr.ph83, label %.critedge

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.c, %.preheader73
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.7, i32 noundef 517, ptr noundef nonnull @__PRETTY_FUNCTION__.quorum_vote) #19
  unreachable

.lr.ph83:                                         ; preds = %.preheader72, %quorum_compare.exit.thread
  %i.p = phi i32 [ %i.bc, %quorum_compare.exit.thread ], [ %i.h, %.preheader72 ] ; 5 uses
  %.082 = phi i32 [ %.0, %quorum_compare.exit.thread ], [ %.080, %.preheader72 ] ; 2 uses
  %i.q = load ptr, ptr %i.j, align 8              ; 2 uses
  %2 = sext i32 %.082 to i64
  %i.r = getelementptr inbounds [72 x i8], ptr %i.q, i64 %2 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load i32, ptr %i.s, align 8
  %.not55 = icmp eq i32 %i.t, 0
  br i1 %.not55, label %bb.d, label %quorum_compare.exit.thread

bb.d:                                             ; preds = %.lr.ph83
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %i.ab = load i8, ptr %i.aa, align 4, !range !9, !noundef !10
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call i64 @qemu_iovec_compare(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w) #16 ; 2 uses
  %.not.i = icmp eq i64 %i.ad, -1
  br i1 %.not.i, label %.quorum_compare.exit.thread_crit_edge, label %bb.f

.quorum_compare.exit.thread_crit_edge:            ; preds = %bb.e
  %.pre110 = load i32, ptr %i.g, align 8
  br label %quorum_compare.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr @stderr, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.ag, %i.ad
  %i.ak = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ae, i32 noundef 1, ptr noundef nonnull @.str.35, i64 noundef %i.ag, i64 noundef %i.ai, i64 noundef %i.aj) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #21
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.am = load i32, ptr %i.al, align 8            ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %bb.g
  %i.aq = icmp slt i32 %i.am, 1
  br i1 %i.aq, label %quorum_compare.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ar = load ptr, ptr %i.v, align 8
  %i.as = load ptr, ptr %i.w, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.am to i64
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.7, i32 noundef 432, ptr noundef nonnull @__PRETTY_FUNCTION__.quorum_iovec_compare) #19
  unreachable

bb.i:                                             ; preds = %bb.l
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %quorum_compare.exit.thread, label %bb.j, !llvm.loop !36

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 3 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %indvars.iv.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %indvars.iv.i.i ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = icmp eq i64 %i.av, %i.ay
  br i1 %i.az, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.7, i32 noundef 434, ptr noundef nonnull @__PRETTY_FUNCTION__.quorum_iovec_compare) #19
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ba = load ptr, ptr %i.at, align 8
  %i.bb = load ptr, ptr %i.aw, align 8
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.ba, ptr %i.bb, i64 %i.av)
  %.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not.i.i, label %bb.i, label %.preheader

quorum_compare.exit.thread:                       ; preds = %bb.i, %.quorum_compare.exit.thread_crit_edge, %.preheader.i.i, %.lr.ph83
  %i.bc = phi i32 [ %.pre110, %.quorum_compare.exit.thread_crit_edge ], [ %i.p, %.lr.ph83 ], [ %i.p, %.preheader.i.i ], [ %i.p, %bb.i ] ; 2 uses
  %.0 = add nsw i32 %.082, 1                      ; 2 uses
  %.not71 = icmp slt i32 %.0, %i.bc
  br i1 %.not71, label %.lr.ph83, label %.critedge.loopexit, !llvm.loop !37

.preheader:                                       ; preds = %bb.l
  %i.bd = icmp sgt i32 %i.p, 0
  br i1 %i.bd, label %.lr.ph85, label %._crit_edge86

.lr.ph85:                                         ; preds = %.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.m

.critedge.loopexit:                               ; preds = %quorum_compare.exit.thread
  %.pre111 = load ptr, ptr %i.j, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader72
  %i.bg = phi ptr [ %.pre111, %.critedge.loopexit ], [ %i.k, %.preheader72 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw [72 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  tail call fastcc void @quorum_copy_qiov(ptr noundef %i.bi, ptr noundef nonnull %i.bk)
  br label %quorum_free_vote_list.exit

bb.m:                                             ; preds = %.lr.ph85, %bb.u
  %i.bl = phi i32 [ %i.p, %.lr.ph85 ], [ %i.ct, %bb.u ]
  %indvars.iv107 = phi i64 [ 0, %.lr.ph85 ], [ %indvars.iv.next108, %bb.u ] ; 4 uses
  %i.bm = load ptr, ptr %i.j, align 8
  %i.bn = getelementptr inbounds nuw [72 x i8], ptr %i.bm, i64 %indvars.iv107 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bp = load i32, ptr %i.bo, align 8
  %.not56 = icmp eq i32 %i.bp, 0
  br i1 %.not56, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 32, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr %1, ptr %i.b, align 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = sext i32 %i.bt to i64
  %i.bv = call i32 @qcrypto_hash_bytesv(i32 noundef 3, ptr noundef %i.br, i64 noundef %i.bu, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef null) #16
  %i.bw = icmp slt i32 %i.bv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 -22, ptr %i.bx, align 4
  br label %bb.aa

bb.p:                                             ; preds = %bb.n
  %.065.i = load ptr, ptr %i.be, align 8          ; 2 uses
  %.not66.i = icmp eq ptr %.065.i, null
  br i1 %.not66.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %bb.q
  %.067.i = phi ptr [ %.0.i58, %bb.q ], [ %.065.i, %bb.p ] ; 3 uses
  %i.by = load ptr, ptr %i.bf, align 8
  %i.bz = call zeroext i1 %i.by(ptr noundef nonnull %.067.i, ptr noundef nonnull %1) #16, !inline_history !22
  br i1 %i.bz, label %.loopexit.i.loopexit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.067.i, i64 48
  %.0.i58 = load ptr, ptr %i.ca, align 8          ; 2 uses
  %.not.i59 = icmp eq ptr %.0.i58, null
  br i1 %.not.i59, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %bb.q, %bb.p
  %i.cb = call noalias dereferenceable_or_null(64) ptr @g_malloc0(i64 noundef 64) #18 ; 8 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store ptr null, ptr %i.cc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 32, i1 noundef false) #16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.ce = trunc nuw nsw i64 %indvars.iv107 to i32 ; 2 uses
  store i32 %i.ce, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  store i32 0, ptr %i.cf, align 4
  %i.cg = load ptr, ptr %i.be, align 8            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 48 ; 2 uses
  store ptr %i.cg, ptr %i.ch, align 8
  %.not60.i = icmp eq ptr %i.cg, null
  br i1 %.not60.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  store ptr %i.ch, ptr %i.ci, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i
  store ptr %i.cb, ptr %i.be, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  store ptr %i.be, ptr %i.cj, align 8
  br label %.loopexit.i

.loopexit.i.loopexit:                             ; preds = %.lr.ph.i
  %.pre112 = trunc nuw nsw i64 %indvars.iv107 to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %bb.s
  %.pre-phi = phi i32 [ %.pre112, %.loopexit.i.loopexit ], [ %i.ce, %bb.s ]
  %.1.i = phi ptr [ %.067.i, %.loopexit.i.loopexit ], [ %i.cb, %bb.s ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.1.i, i64 36 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4
  %i.cn = call noalias dereferenceable_or_null(24) ptr @g_malloc0(i64 noundef 24) #18 ; 4 uses
  store i32 %.pre-phi, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %.1.i, i64 40 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  store ptr %i.cp, ptr %i.cq, align 8
  %.not61.i = icmp eq ptr %i.cp, null
  br i1 %.not61.i, label %quorum_count_vote.exit, label %bb.t

bb.t:                                             ; preds = %.loopexit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %i.cq, ptr %i.cr, align 8
  br label %quorum_count_vote.exit

quorum_count_vote.exit:                           ; preds = %.loopexit.i, %bb.t
  store ptr %i.cn, ptr %i.co, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %i.co, ptr %i.cs, align 8
  %.pre = load i32, ptr %i.g, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.m, %quorum_count_vote.exit
  %i.ct = phi i32 [ %i.bl, %bb.m ], [ %.pre, %quorum_count_vote.exit ] ; 2 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp slt i64 %indvars.iv.next108, %i.cu
  br i1 %i.cv, label %bb.m, label %._crit_edge86, !llvm.loop !38

._crit_edge86:                                    ; preds = %bb.u, %.preheader
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.0712.i = load ptr, ptr %i.cw, align 8, !nonnull !10, !noundef !10
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %._crit_edge86, %.lr.ph.i60
  %.0716.i = phi ptr [ %.07.i, %.lr.ph.i60 ], [ %.0712.i, %._crit_edge86 ] ; 3 uses
  %.015.i = phi ptr [ %spec.select11.i, %.lr.ph.i60 ], [ null, %._crit_edge86 ]
  %.0814.i = phi i32 [ %spec.select.i, %.lr.ph.i60 ], [ 0, %._crit_edge86 ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0716.i, i64 36
  %i.cy = load i32, ptr %i.cx, align 4            ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, %.0814.i
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.cy, i32 %.0814.i)
  %spec.select11.i = select i1 %i.cz, ptr %.0716.i, ptr %.015.i ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0716.i, i64 48
  %.07.i = load ptr, ptr %i.da, align 8           ; 2 uses
  %.not.i61 = icmp eq ptr %.07.i, null
  br i1 %.not.i61, label %quorum_get_vote_winner.exit, label %.lr.ph.i60, !llvm.loop !25

quorum_get_vote_winner.exit:                      ; preds = %.lr.ph.i60
  %i.db = getelementptr inbounds nuw i8, ptr %spec.select11.i, i64 36
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = icmp slt i32 %i.dc, %i.de
  br i1 %i.df, label %bb.v, label %bb.w

bb.v:                                             ; preds = %quorum_get_vote_winner.exit
  %i.dg = load ptr, ptr %0, align 8
  %i.dh = call ptr @bdrv_get_device_or_node_name(ptr noundef %i.dg) #16
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dj = load i64, ptr %i.di, align 8            ; 2 uses
  %i.dk = lshr i64 %i.dj, 9                       ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dm = load i64, ptr %i.dl, align 8
  %i.dn = add i64 %i.dj, 511
  %i.do = add i64 %i.dn, %i.dm
  %i.dp = lshr i64 %i.do, 9
  %i.dq = sub nsw i64 %i.dp, %i.dk
  call void @qapi_event_send_quorum_failure(ptr noundef %i.dh, i64 noundef %i.dk, i64 noundef %i.dq) #16
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 -5, ptr %i.dr, align 4
  br label %bb.aa

bb.w:                                             ; preds = %quorum_get_vote_winner.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = load ptr, ptr %i.j, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %spec.select11.i, i64 32
  %i.dw = load i32, ptr %i.dv, align 8
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [72 x i8], ptr %i.du, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  call fastcc void @quorum_copy_qiov(ptr noundef %i.dt, ptr noundef nonnull %i.dz)
  %.01318.i = load ptr, ptr %i.cw, align 8        ; 2 uses
  %.not19.i = icmp eq ptr %.01318.i, null
  br i1 %.not19.i, label %quorum_report_bad_versions.exit, label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
