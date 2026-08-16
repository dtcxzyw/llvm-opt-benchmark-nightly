inline.NumInlined: 42
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@get_emu_msg:bb.a

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
  %i.a = alloca [100 x i8], align 16              ; 33 uses
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
  br i1 %.not5.i, label %bb.d, label %.lr.ph.i.preheader, !prof !13, !llvm.loop !14

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 101, ptr noundef nonnull @__func__.bt_wait_b_busy, ptr noundef nonnull @.str.33) #15
  unreachable

.lr.ph.i.preheader:                               ; preds = %bb.c, %.lr.ph.i
  %i.h = phi i32 [ %i.g, %.lr.ph.i ], [ 999, %bb.c ]
  %i.i = tail call i32 @usleep(i32 noundef 100) #12 ; 0 uses
  %i.j = load ptr, ptr @global_qtest, align 8
  %i.k = tail call zeroext i8 @qtest_inb(ptr noundef %i.j, i16 noundef zeroext 228) #12
  %.not.i = icmp sgt i8 %i.k, -1
  br i1 %.not.i, label %bt_wait_b_busy.exit, label %.lr.ph.i, !llvm.loop !14

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
  br i1 %exitcond.not, label %bb.f, label %bb.e, !llvm.loop !16

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
  br i1 %i.x, label %bb.g, label %bb.h, !prof !10

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
  %i.ad = add i32 %i.w, -2                        ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64              ; 2 uses
  %scevgep.i = getelementptr nuw i8, ptr %i.a, i64 %i.ae
  %i.af = add nuw nsw i64 %i.ae, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ad, 31
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %iter.check
  %i.ag = and i64 %i.af, 28
  %n.vec = and i64 %i.af, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi54 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.a, i64 %index ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 16
  %wide.load55 = load <16 x i8>, ptr %i.ah, align 16
  %i.ai = add <16 x i8> %wide.load, %vec.phi      ; 2 uses
  %i.aj = add <16 x i8> %wide.load55, %vec.phi54  ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <16 x i8> %i.aj, %i.ai
  %i.al = tail call i8 @llvm.vector.reduce.add.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %ipmb_checksum.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %bc.merge.rdx = phi i8 [ %i.al, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %n.vec56 = and i64 %i.af, 4294967292            ; 3 uses
  %i.am = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next61, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi58 = phi <4 x i8> [ %i.am, %vec.epilog.ph ], [ %i.an, %vec.epilog.vector.body ]
  %next.gep59 = getelementptr i8, ptr %i.a, i64 %index57
  %wide.load60 = load <4 x i8>, ptr %next.gep59, align 4
  %i.an = add <4 x i8> %wide.load60, %vec.phi58   ; 2 uses
  %index.next61 = add nuw i64 %index57, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next61, %n.vec56
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ap = tail call i8 @llvm.vector.reduce.add.v4i8(<4 x i8> %i.an) ; 2 uses
  %cmp.n62 = icmp eq i64 %i.af, %n.vec56
  br i1 %cmp.n62, label %ipmb_checksum.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vec.epilog.iter.check, %vec.epilog.middle.block
  %.010.i.i.ph = phi i8 [ %i.al, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  %n.vec.pn = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ %n.vec56, %vec.epilog.middle.block ]
  %.069.i.i.ph = getelementptr i8, ptr %i.a, i64 %n.vec.pn
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi i8 [ %i.ar, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ]
  %.069.i.i = phi ptr [ %i.as, %.lr.ph.i.i ], [ %.069.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.aq = load i8, ptr %.069.i.i, align 1
  %i.ar = add i8 %i.aq, %.010.i.i                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.069.i.i, i64 1
  %exitcond.not.i = icmp eq ptr %.069.i.i, %scevgep.i
  br i1 %exitcond.not.i, label %ipmb_checksum.exit.i, label %.lr.ph.i.i, !llvm.loop !22

ipmb_checksum.exit.i:                             ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i8 [ %i.ap, %vec.epilog.middle.block ], [ %i.al, %middle.block ], [ %i.ar, %.lr.ph.i.i ]
  %.not9.i = icmp eq i8 %.lcssa, 0
  br i1 %.not9.i, label %ipmb_checksum.exit.thread.i, label %bb.k, !prof !23

bb.k:                                             ; preds = %ipmb_checksum.exit.i
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 235, ptr noundef nonnull @__func__.emu_msg_handler, ptr noundef nonnull @.str.36) #15
  unreachable

ipmb_checksum.exit.thread.i:                      ; preds = %ipmb_checksum.exit.i, %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 5 uses
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %i.av = load i8, ptr @get_dev_id_cmd, align 1
  %i.aw = icmp eq i8 %i.au, %i.av
  br i1 %i.aw, label %bb.l, label %bb.n

bb.l:                                             ; preds = %ipmb_checksum.exit.thread.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 2
  %i.az = load i8, ptr getelementptr inbounds nuw (i8, ptr @get_dev_id_cmd, i64 1), align 1
  %i.ba = icmp eq i8 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph.i10.i, label %bb.n

.lr.ph.i10.i:                                     ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.at, ptr noundef nonnull align 1 dereferenceable(14) @get_dev_id_rsp, i64 noundef 14, i1 noundef false) #12
  %i.bb = load i8, ptr %i.a, align 16
  %i.bc = load i8, ptr %i.at, align 1
  %i.bd = add i8 %i.bb, %i.bc
  %i.be = load i8, ptr %i.ax, align 2
  %i.bf = add i8 %i.be, %i.bd
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = add i8 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bk = load i8, ptr %i.bj, align 4
  %i.bl = add i8 %i.bk, %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = add i8 %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.bq = load i8, ptr %i.bp, align 2
  %i.br = add i8 %i.bq, %i.bo
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = add i8 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bw = load i8, ptr %i.bv, align 8
  %i.bx = add i8 %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = add i8 %i.bz, %i.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.cc = load i8, ptr %i.cb, align 2
  %i.cd = add i8 %i.cc, %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = add i8 %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ci = load i8, ptr %i.ch, align 4
  %i.cj = add i8 %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = add i8 %i.cl, %i.cj
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.co = load i8, ptr %i.cn, align 2
  %i.cp = add i8 %i.co, %i.cm
  %i.cq = sub i8 0, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.cq, ptr %i.cr, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 -96, ptr %i.cs, align 16
  %i.ct = load i32, ptr @emu_fd, align 4
  %i.cu = call i64 @write(i32 noundef %i.ct, ptr noundef nonnull readonly %i.a, i64 noundef 17) #12
  %i.cv = and i64 %i.cu, 4294967295
  %.not.i.i = icmp eq i64 %i.cv, 17
  br i1 %.not.i.i, label %emu_msg_handler.exit, label %bb.m, !prof !8

bb.m:                                             ; preds = %.lr.ph.i10.i
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 164, ptr noundef nonnull @__func__.write_emu_msg, ptr noundef nonnull @.str.19) #15
  unreachable

bb.n:                                             ; preds = %bb.l, %ipmb_checksum.exit.thread.i
  %i.cw = load i8, ptr @set_bmc_globals_cmd, align 1
  %i.cx = icmp eq i8 %i.au, %i.cw
  br i1 %i.cx, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 2
  %i.da = load i8, ptr getelementptr inbounds nuw (i8, ptr @set_bmc_globals_cmd, i64 1), align 1
  %i.db = icmp eq i8 %i.cz, %i.da
  br i1 %i.db, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.dc = load i32, ptr @emu_fd, align 4
  %i.dd = call i64 @write(i32 noundef %i.dc, ptr noundef nonnull @enable_irq_cmd, i64 noundef 2) #12
  %i.de = and i64 %i.dd, 4294967295
  %.not.i16.i = icmp eq i64 %i.de, 2
  br i1 %.not.i16.i, label %write_emu_msg.exit17.i, label %bb.q, !prof !8

bb.q:                                             ; preds = %bb.p
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 164, ptr noundef nonnull @__func__.write_emu_msg, ptr noundef nonnull @.str.19) #15
  unreachable

write_emu_msg.exit17.i:                           ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.at, ptr noundef nonnull align 1 dereferenceable(3) @set_bmc_globals_rsp, i64 noundef 3, i1 noundef false) #12
  %i.df = load i8, ptr %i.a, align 16
  %i.dg = load i8, ptr %i.at, align 1
  %i.dh = add i8 %i.df, %i.dg
  %i.di = load i8, ptr %i.cy, align 2
  %i.dj = add i8 %i.di, %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = add i8 %i.dl, %i.dj
  %i.dn = sub i8 0, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.dn, ptr %i.do, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 -96, ptr %i.dp, align 1
  %i.dq = load i32, ptr @emu_fd, align 4
  %i.dr = call i64 @write(i32 noundef %i.dq, ptr noundef nonnull readonly %i.a, i64 noundef 6) #12
  %i.ds = and i64 %i.dr, 4294967295
  %.not.i24.i = icmp eq i64 %i.ds, 6
  br i1 %.not.i24.i, label %emu_msg_handler.exit, label %bb.r, !prof !8

bb.r:                                             ; preds = %write_emu_msg.exit17.i
  call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 164, ptr noundef nonnull @__func__.write_emu_msg, ptr noundef nonnull @.str.19) #15
  unreachable

bb.s:                                             ; preds = %bb.o, %bb.n
end_hunk_0
