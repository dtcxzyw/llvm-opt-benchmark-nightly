Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ipmi-bt-test?download=true
inline.NumInlined: 42
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@llvm.memset.p0.i64

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @getsockname(i32 noundef, ptr, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare i64 @__fdelt_chk(i64 noundef) local_unnamed_addr #2

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare i32 @accept(i32 noundef, ptr, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @get_emu_msg(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.fd_set, align 8             ; 5 uses
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i32, ptr @inbuf_len, align 4
  %inbuf_pos.promoted.pre = load i32, ptr @inbuf_pos, align 4
  br label %bb.b

bb.b:                                             ; preds = %read_emu_data.exit, %bb.a
  %inbuf_pos.promoted = phi i32 [ %inbuf_pos.promoted.pre, %bb.a ], [ 0, %read_emu_data.exit ] ; 2 uses
  %i.b = phi i32 [ %.pre, %bb.a ], [ %i.ah, %read_emu_data.exit ] ; 3 uses
  %.018 = phi i32 [ 0, %bb.a ], [ %.1.lcssa, %read_emu_data.exit ] ; 2 uses
  %i.c = icmp ult i32 %inbuf_pos.promoted, %i.b
  br i1 %i.c, label %.lr.ph.preheader, label %bb.k

.lr.ph.preheader:                                 ; preds = %bb.b
  %last_was_aa.promoted = load i1, ptr @last_was_aa, align 4
  %i.d = zext i32 %inbuf_pos.promoted to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.132 = phi i32 [ %.018, %.lr.ph.preheader ], [ %.3, %bb.j ] ; 6 uses
  %.b3031 = phi i1 [ %last_was_aa.promoted, %.lr.ph.preheader ], [ %.b29, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr @inbuf, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1               ; 5 uses
  %i.g = load i32, ptr %1, align 4
  %.not = icmp ult i32 %.132, %i.g
  br i1 %.not, label %bb.d, label %bb.c, !prof !8

bb.c:                                             ; preds = %.lr.ph
  %i.h = trunc nuw i64 %indvars.iv.next to i32
  store i32 %i.h, ptr @inbuf_pos, align 4
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 175, ptr noundef nonnull @__func__.get_emu_msg, ptr noundef nonnull @.str.20) #15
  unreachable

bb.d:                                             ; preds = %.lr.ph
  br i1 %.b3031, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = and i8 %i.f, 16
  %.not22 = icmp eq i8 %i.i, 0
  br i1 %.not22, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = trunc nuw i64 %indvars.iv.next to i32
  store i32 %i.j, ptr @inbuf_pos, align 4
  call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.10, i32 noundef 177, ptr noundef nonnull @__PRETTY_FUNCTION__.get_emu_msg) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.k = and i8 %i.f, -17
  %i.l = add nuw i32 %.132, 1
  %i.m = zext i32 %.132 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  store i8 %i.k, ptr %i.n, align 1
  br label %.sink.split

bb.h:                                             ; preds = %bb.d
  %i.o = icmp eq i8 %i.f, -86
  br i1 %i.o, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = add nuw i32 %.132, 1                     ; 2 uses
  %i.q = zext i32 %.132 to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  store i8 %i.f, ptr %i.r, align 1
  %i.s = and i8 %i.f, -2
  %or.cond = icmp eq i8 %i.s, -96
  br i1 %or.cond, label %bb.o, label %bb.j

.sink.split:                                      ; preds = %bb.h, %bb.g
  %.3.ph = phi i32 [ %i.l, %bb.g ], [ %.132, %bb.h ]
  %.sink = xor i1 %.b3031, true                   ; 2 uses
  store i1 %.sink, ptr @last_was_aa, align 4
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i
  %.b29 = phi i1 [ false, %bb.i ], [ %.sink, %.sink.split ]
  %.3 = phi i32 [ %i.p, %bb.i ], [ %.3.ph, %.sink.split ] ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.b, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j
  store i32 %i.b, ptr @inbuf_pos, align 4
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.b
  %.1.lcssa = phi i32 [ %.3, %._crit_edge ], [ %.018, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 128, i1 false)
  %i.t = load i32, ptr @emu_fd, align 4           ; 2 uses
  %i.u = srem i32 %i.t, 64
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw i64 1, %i.v
  %i.x = sext i32 %i.t to i64
  %i.y = call i64 @__fdelt_chk(i64 noundef %i.x) #12
  %i.z = getelementptr inbounds [8 x i8], ptr %2, i64 %i.y ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = or i64 %i.aa, %i.w
  store i64 %i.ab, ptr %i.z, align 8
  store i64 10, ptr %3, align 8
  store i64 0, ptr %i.a, align 8
  %i.ac = load i32, ptr @emu_fd, align 4
  %i.ad = add i32 %i.ac, 1
  %i.ae = call i32 @select(i32 noundef %i.ad, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef nonnull %3) #12
  switch i32 %i.ae, label %.loopexit [
    i32 -1, label %bb.l
    i32 1, label %bb.m
  ], !prof !11

bb.l:                                             ; preds = %bb.k
  call void @perror(ptr noundef nonnull @.str.22) #13
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.l
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 139, ptr noundef nonnull @__func__.read_emu_data, ptr noundef nonnull @.str.11) #15
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.af = load i32, ptr @emu_fd, align 4
  %i.ag = call i64 @read(i32 noundef %i.af, ptr noundef nonnull @inbuf, i64 noundef 100) #12
  %i.ah = trunc i64 %i.ag to i32                  ; 4 uses
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %.thread.i, label %bb.n

.thread.i:                                        ; preds = %bb.m
  call void @perror(ptr noundef nonnull @.str.23) #13
  br label %.loopexit25

bb.n:                                             ; preds = %bb.m
  %i.aj = icmp slt i32 %i.ah, 1
  br i1 %i.aj, label %.loopexit25, label %read_emu_data.exit, !prof !12

.loopexit25:                                      ; preds = %bb.n, %.thread.i
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 144, ptr noundef nonnull @__func__.read_emu_data, ptr noundef nonnull @.str.24) #15
  unreachable

read_emu_data.exit:                               ; preds = %bb.n
  store i32 %i.ah, ptr @inbuf_len, align 4
  store i32 0, ptr @inbuf_pos, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.b

bb.o:                                             ; preds = %bb.i
  %i.ak = trunc nuw i64 %indvars.iv.next to i32
  store i32 %i.ak, ptr @inbuf_pos, align 4
  store i32 %i.p, ptr %1, align 4
  ret void
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @bt_cmd(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 2, 4) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 26 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load ptr, ptr @global_qtest, align 8
  %i.d = tail call zeroext i8 @qtest_inb(ptr noundef %i.c, i16 noundef zeroext 228) #12
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 265, ptr noundef nonnull @__func__.bt_cmd, ptr noundef nonnull @.str.27) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @global_qtest, align 8
  %i.f = tail call zeroext i8 @qtest_inb(ptr noundef %i.e, i16 noundef zeroext 228) #12
  %.not7.i = icmp sgt i8 %i.f, -1
  br i1 %.not7.i, label %bt_wait_b_busy.exit, label %.lr.ph.i.preheader

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader
  %i.g = add nsw i32 %i.h, -1                     ; 2 uses
  %.not5.i = icmp eq i32 %i.g, 0
  br i1 %.not5.i, label %bb.d, label %.lr.ph.i.preheader, !prof !20, !llvm.loop !13

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 101, ptr noundef nonnull @__func__.bt_wait_b_busy, ptr noundef nonnull @.str.33) #15
  unreachable

.lr.ph.i.preheader:                               ; preds = %bb.c, %.lr.ph.i
  %i.h = phi i32 [ %i.g, %.lr.ph.i ], [ 999, %bb.c ]
  %i.i = tail call i32 @usleep(i32 noundef 100) #12 ; 0 uses
  %i.j = load ptr, ptr @global_qtest, align 8
  %i.k = tail call zeroext i8 @qtest_inb(ptr noundef %i.j, i16 noundef zeroext 228) #12
  %.not.i = icmp sgt i8 %i.k, -1
  br i1 %.not.i, label %bt_wait_b_busy.exit, label %.lr.ph.i, !llvm.loop !13

bt_wait_b_busy.exit:                              ; preds = %.lr.ph.i.preheader, %bb.c
  %i.l = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_outb(ptr noundef %i.l, i16 noundef zeroext 228, i8 noundef zeroext 1) #12
  %i.m = trunc nuw nsw i32 %1 to i8
  %i.n = add nuw nsw i8 %i.m, 1
  %i.o = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_outb(ptr noundef %i.o, i16 noundef zeroext 229, i8 noundef zeroext %i.n) #12
  %i.p = load i8, ptr %0, align 1
  %i.q = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_outb(ptr noundef %i.q, i16 noundef zeroext 229, i8 noundef zeroext %i.p) #12
  %i.r = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_outb(ptr noundef %i.r, i16 noundef zeroext 229, i8 noundef zeroext 5) #12
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.e

bb.e:                                             ; preds = %bt_wait_b_busy.exit, %bb.e
  %indvars.iv = phi i64 [ 1, %bt_wait_b_busy.exit ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.t = load i8, ptr %i.s, align 1
  %i.u = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_outb(ptr noundef %i.u, i16 noundef zeroext 229, i8 noundef zeroext %i.t) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.f, label %bb.e, !llvm.loop !14

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr @global_qtest, align 8
  tail call void @qtest_outb(ptr noundef %i.v, i16 noundef zeroext 228, i8 noundef zeroext 4) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.a, i8 0, i64 100, i1 false), !annotation !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 100, ptr %i.b, align 4
  call fastcc void @get_emu_msg(ptr noundef %i.a, ptr noundef %i.b)
  %i.w = load i32, ptr %i.b, align 4              ; 3 uses
  %i.x = icmp ult i32 %i.w, 5
  br i1 %i.x, label %bb.g, label %bb.h, !prof !9

bb.g:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 232, ptr noundef nonnull @__func__.emu_msg_handler, ptr noundef nonnull @.str.34) #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = add i32 %i.w, -1                         ; 2 uses
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %.not.i39 = icmp eq i8 %i.ab, -96
  br i1 %.not.i39, label %bb.j, label %bb.i, !prof !8

bb.i:                                             ; preds = %bb.h
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 233, ptr noundef nonnull @__func__.emu_msg_handler, ptr noundef nonnull @.str.35) #15
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ac = icmp sgt i32 %i.y, 0
  br i1 %i.ac, label %iter.check, label %ipmb_checksum.exit.thread.i

iter.check:                                       ; preds = %bb.j
  %i.ad = add i32 %i.w, -2                        ; 3 uses
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.ae
  %i.af = add nuw nsw i64 %i.ae, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ad, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check54 = icmp ult i32 %i.ad, 31
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %i.af, 24
  %n.vec = and i64 %i.af, 4294967264              ; 4 uses
  %i.ah = getelementptr i8, ptr %i.a, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi55 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.ak, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.a, i64 %index ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 16
  %wide.load56 = load <16 x i8>, ptr %i.ai, align 16
  %i.aj = add <16 x i8> %wide.load, %vec.phi      ; 2 uses
  %i.ak = add <16 x i8> %wide.load56, %vec.phi55  ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i8> %i.ak, %i.aj
  %i.am = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %ipmb_checksum.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.am, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec57 = and i64 %i.af, 4294967288            ; 3 uses
  %i.an = getelementptr i8, ptr %i.a, i64 %n.vec57
  %i.ao = insertelement <8 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index58 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi59 = phi <8 x i8> [ %i.ao, %vec.epilog.ph ], [ %i.ap, %vec.epilog.vector.body ]
  %next.gep60 = getelementptr i8, ptr %i.a, i64 %index58
  %wide.load61 = load <8 x i8>, ptr %next.gep60, align 8
  %i.ap = add <8 x i8> %wide.load61, %vec.phi59   ; 2 uses
  %index.next62 = add nuw i64 %index58, 8         ; 2 uses
  %i.aq = icmp eq i64 %index.next62, %n.vec57
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ar = tail call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %i.ap) ; 2 uses
  %cmp.n63 = icmp eq i64 %i.af, %n.vec57
  br i1 %cmp.n63, label %ipmb_checksum.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.010.i.i.ph = phi i8 [ 0, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  %.069.i.i.ph = phi ptr [ %i.a, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi i8 [ %i.at, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ]
  %.069.i.i = phi ptr [ %i.au, %.lr.ph.i.i ], [ %.069.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.as = load i8, ptr %.069.i.i, align 1
  %i.at = add i8 %i.as, %.010.i.i                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 1
  %exitcond.not.i = icmp eq ptr %.069.i.i, %scevgep.i
  br i1 %exitcond.not.i, label %ipmb_checksum.exit.i, label %.lr.ph.i.i, !llvm.loop !17

ipmb_checksum.exit.i:                             ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i8 [ %i.ar, %vec.epilog.middle.block ], [ %i.am, %middle.block ], [ %i.at, %.lr.ph.i.i ]
  %.not9.i = icmp eq i8 %.lcssa, 0
  br i1 %.not9.i, label %ipmb_checksum.exit.thread.i, label %bb.k, !prof !25

bb.k:                                             ; preds = %ipmb_checksum.exit.i
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 235, ptr noundef nonnull @__func__.emu_msg_handler, ptr noundef nonnull @.str.36) #15
  unreachable

ipmb_checksum.exit.thread.i:                      ; preds = %ipmb_checksum.exit.i, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1             ; 2 uses
  %i.ax = load i8, ptr @get_dev_id_cmd, align 1
  %i.ay = icmp eq i8 %i.aw, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.n

bb.l:                                             ; preds = %ipmb_checksum.exit.thread.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.ba = load i8, ptr %i.az, align 2
  %i.bb = load i8, ptr getelementptr inbounds nuw (i8, ptr @get_dev_id_cmd, i64 1), align 1
  %i.bc = icmp eq i8 %i.ba, %i.bb
  br i1 %i.bc, label %.lr.ph.i10.i, label %bb.n

.lr.ph.i10.i:                                     ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.av, ptr noundef nonnull align 1 dereferenceable(14) @get_dev_id_rsp, i64 noundef 14, i1 noundef false) #12
  %4 = load <8 x i8>, ptr %i.a, align 16          ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %5 = load <4 x i8>, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bf = load i8, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.bj = load i8, ptr %i.bi, align 2
  %6 = shufflevector <4 x i8> %5, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = add <8 x i8> %4, %6
  %8 = shufflevector <8 x i8> %7, <8 x i8> %4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %9 = call i8 @llvm.vector.reduce.add.v8i8(<8 x i8> %8)
  %i.bk = add i8 %9, %i.bf
  %op.rdx66 = add i8 %i.bh, %i.bj
  %i.bl = add i8 %i.bk, %op.rdx66
  %i.bm = sub i8 0, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 -96, ptr %i.bo, align 16
  %i.bp = load i32, ptr @emu_fd, align 4
  %i.bq = call i64 @write(i32 noundef %i.bp, ptr noundef nonnull readonly %i.a, i64 noundef 17) #12
  %i.br = and i64 %i.bq, 4294967295
  %.not.i.i = icmp eq i64 %i.br, 17
  br i1 %.not.i.i, label %emu_msg_handler.exit, label %bb.m, !prof !8

bb.m:                                             ; preds = %.lr.ph.i10.i
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 164, ptr noundef nonnull @__func__.write_emu_msg, ptr noundef nonnull @.str.19) #15
  unreachable

bb.n:                                             ; preds = %bb.l, %ipmb_checksum.exit.thread.i
  %i.bs = load i8, ptr @set_bmc_globals_cmd, align 1
  %i.bt = icmp eq i8 %i.aw, %i.bs
  br i1 %i.bt, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.bv = load i8, ptr %i.bu, align 2
  %i.bw = load i8, ptr getelementptr inbounds nuw (i8, ptr @set_bmc_globals_cmd, i64 1), align 1
  %i.bx = icmp eq i8 %i.bv, %i.bw
  br i1 %i.bx, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.by = load i32, ptr @emu_fd, align 4
  %i.bz = call i64 @write(i32 noundef %i.by, ptr noundef nonnull @enable_irq_cmd, i64 noundef 2) #12
  %i.ca = and i64 %i.bz, 4294967295
  %.not.i16.i = icmp eq i64 %i.ca, 2
  br i1 %.not.i16.i, label %write_emu_msg.exit17.i, label %bb.q, !prof !8

bb.q:                                             ; preds = %bb.p
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 164, ptr noundef nonnull @__func__.write_emu_msg, ptr noundef nonnull @.str.19) #15
  unreachable

write_emu_msg.exit17.i:                           ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.av, ptr noundef nonnull align 1 dereferenceable(3) @set_bmc_globals_rsp, i64 noundef 3, i1 noundef false) #12
  %10 = load <4 x i8>, ptr %i.a, align 16
  %11 = call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %10)
  %i.cb = sub i8 0, %11
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.cb, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 -96, ptr %i.cd, align 1
  %i.ce = load i32, ptr @emu_fd, align 4
  %i.cf = call i64 @write(i32 noundef %i.ce, ptr noundef nonnull readonly %i.a, i64 noundef 6) #12
  %i.cg = and i64 %i.cf, 4294967295
  %.not.i24.i = icmp eq i64 %i.cg, 6
  br i1 %.not.i24.i, label %emu_msg_handler.exit, label %bb.r, !prof !8

bb.r:                                             ; preds = %write_emu_msg.exit17.i
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 164, ptr noundef nonnull @__func__.write_emu_msg, ptr noundef nonnull @.str.19) #15
  unreachable

bb.s:                                             ; preds = %bb.o, %bb.n
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 254, ptr noundef nonnull @__func__.emu_msg_handler, ptr noundef null) #15
  unreachable

emu_msg_handler.exit:                             ; preds = %.lr.ph.i10.i, %write_emu_msg.exit17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ch = load ptr, ptr @global_qtest, align 8
  %i.ci = call zeroext i8 @qtest_inb(ptr noundef %i.ch, i16 noundef zeroext 228) #12
  %i.cj = and i8 %i.ci, 8
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %.lr.ph.i40.preheader, label %bt_wait_b2h_atn.exit

.lr.ph.i40:                                       ; preds = %.lr.ph.i40.preheader
  %i.cl = add nsw i32 %i.cm, -1                   ; 2 uses
  %.not.i41 = icmp eq i32 %i.cl, 0
  br i1 %.not.i41, label %bb.t, label %.lr.ph.i40.preheader, !prof !20, !llvm.loop !18

bb.t:                                             ; preds = %.lr.ph.i40
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 111, ptr noundef nonnull @__func__.bt_wait_b2h_atn, ptr noundef nonnull @.str.33) #15
  unreachable

.lr.ph.i40.preheader:                             ; preds = %emu_msg_handler.exit, %.lr.ph.i40
  %i.cm = phi i32 [ %i.cl, %.lr.ph.i40 ], [ 999, %emu_msg_handler.exit ]
  %i.cn = call i32 @usleep(i32 noundef 100) #12   ; 0 uses
  %i.co = load ptr, ptr @global_qtest, align 8
  %i.cp = call zeroext i8 @qtest_inb(ptr noundef %i.co, i16 noundef zeroext 228) #12
  %i.cq = and i8 %i.cp, 8
  %i.cr = icmp eq i8 %i.cq, 0
  br i1 %i.cr, label %.lr.ph.i40, label %bt_wait_b2h_atn.exit, !llvm.loop !18

bt_wait_b2h_atn.exit:                             ; preds = %.lr.ph.i40.preheader, %emu_msg_handler.exit
  %.b = load i1, ptr @bt_ints_enabled, align 4
  %i.cs = load ptr, ptr @global_qtest, align 8    ; 2 uses
  br i1 %.b, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bt_wait_b2h_atn.exit
  %i.ct = call zeroext i8 @qtest_inb(ptr noundef %i.cs, i16 noundef zeroext 230) #12
  %i.cu = and i8 %i.ct, 2
  %.not35 = icmp eq i8 %i.cu, 0
  br i1 %.not35, label %bb.v, label %bb.w, !prof !9

bb.v:                                             ; preds = %bb.u
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 281, ptr noundef nonnull @__func__.bt_cmd, ptr noundef nonnull @.str.28) #15
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cv = load ptr, ptr @global_qtest, align 8
  %i.cw = call zeroext i1 @qtest_get_irq(ptr noundef %i.cv, i32 noundef 5) #12
  br i1 %i.cw, label %bb.y, label %bb.x, !prof !8

bb.x:                                             ; preds = %bb.w
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 282, ptr noundef nonnull @__func__.bt_cmd, ptr noundef nonnull @.str.29) #15
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cx = load ptr, ptr @global_qtest, align 8
  call void @qtest_outb(ptr noundef %i.cx, i16 noundef zeroext 230, i8 noundef zeroext 3) #12
  br label %bb.ab

bb.z:                                             ; preds = %bt_wait_b2h_atn.exit
  %i.cy = call zeroext i1 @qtest_get_irq(ptr noundef %i.cs, i32 noundef 5) #12
  br i1 %i.cy, label %bb.aa, label %bb.ab, !prof !9

bb.aa:                                            ; preds = %bb.z
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 285, ptr noundef nonnull @__func__.bt_cmd, ptr noundef nonnull @.str.30) #15
  unreachable

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.cz = load ptr, ptr @global_qtest, align 8
  call void @qtest_outb(ptr noundef %i.cz, i16 noundef zeroext 228, i8 noundef zeroext 64) #12
  %i.da = load ptr, ptr @global_qtest, align 8
  call void @qtest_outb(ptr noundef %i.da, i16 noundef zeroext 228, i8 noundef zeroext 8) #12
  %i.db = load ptr, ptr @global_qtest, align 8
  call void @qtest_outb(ptr noundef %i.db, i16 noundef zeroext 228, i8 noundef zeroext 2) #12
  %i.dc = load ptr, ptr @global_qtest, align 8
  %i.dd = call zeroext i8 @qtest_inb(ptr noundef %i.dc, i16 noundef zeroext 229) #12 ; 2 uses
  %i.de = zext i8 %i.dd to i32
  %i.df = icmp ult i8 %i.dd, 4
  br i1 %i.df, label %bb.ac, label %bb.ad, !prof !9

bb.ac:                                            ; preds = %bb.ab
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 291, ptr noundef nonnull @__func__.bt_cmd, ptr noundef nonnull @.str.31) #15
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dg = load ptr, ptr @global_qtest, align 8
  %i.dh = call zeroext i8 @qtest_inb(ptr noundef %i.dg, i16 noundef zeroext 229) #12
  store i8 %i.dh, ptr %2, align 1
  %i.di = load ptr, ptr @global_qtest, align 8
  %i.dj = call zeroext i8 @qtest_inb(ptr noundef %i.di, i16 noundef zeroext 229) #12
  %i.dk = icmp eq i8 %i.dj, 5
  br i1 %i.dk, label %.lr.ph.preheader, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.10, i32 noundef 293, ptr noundef nonnull @__PRETTY_FUNCTION__.bt_cmd) #15
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.ad
  %i.dl = add nsw i32 %i.de, -1                   ; 2 uses
  %wide.trip.count49 = zext nneg i32 %i.dl to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv46 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next47, %.lr.ph ] ; 2 uses
  %i.dm = load ptr, ptr @global_qtest, align 8
  %i.dn = call zeroext i8 @qtest_inb(ptr noundef %i.dm, i16 noundef zeroext 229) #12
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv46
  store i8 %i.dn, ptr %i.do, align 1
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph
  %i.dp = load ptr, ptr @global_qtest, align 8
  call void @qtest_outb(ptr noundef %i.dp, i16 noundef zeroext 228, i8 noundef zeroext 64) #12
  store i32 %i.dl, ptr %3, align 4
  ret void
}

declare zeroext i8 @qtest_inb(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i32 @usleep(i32 noundef) local_unnamed_addr #2

declare void @qtest_outb(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @qtest_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v16i8(<16 x i8>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v8i8(<8 x i8>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.add.v4i8(<4 x i8>) #11

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"auto-init"}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{!"branch_weights", !"expected", i32 18244730, i32 2129238918}
!11 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!12 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!13 = distinct !{!13, !21}
!14 = distinct !{!14, !21}
!15 = distinct !{!15, !21, !22, !23}
!16 = distinct !{!16, !21, !22, !23}
!17 = distinct !{!17, !21, !23, !22}
!18 = distinct !{!18, !21}
!19 = distinct !{!19, !21}
!20 = !{!"branch_weights", i32 1, i32 1999}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"branch_weights", i32 8, i32 24}
!25 = !{!"branch_weights", !"expected", i32 2145766520, i32 1717128}
end_hunk_0
