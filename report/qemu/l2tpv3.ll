Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/l2tpv3?download=true
inline.NumInlined: 28
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@net_l2tpv3_receive_dgram_iov:bb.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @net_l2tpv3_cleanup(ptr noundef %0) #0 {
bb.a:
  tail call void @qemu_purge_queued_packets(ptr noundef %0) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !range !9, !noundef !10
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %l2tpv3_read_poll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 489
  %i.f = load i8, ptr %i.e, align 1, !range !9, !noundef !10
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.g, ptr @l2tpv3_writable, ptr null
  tail call void @qemu_set_fd_handler(i32 noundef %i.d, ptr noundef null, ptr noundef %i.h, ptr noundef nonnull %0) #10, !inline_history !1
  br label %l2tpv3_read_poll.exit

l2tpv3_read_poll.exit:                            ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 489 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !range !9, !noundef !10
  %.not.i13 = icmp eq i8 %i.j, 0
  br i1 %.not.i13, label %l2tpv3_write_poll.exit, label %bb.c

bb.c:                                             ; preds = %l2tpv3_read_poll.exit
  store i8 0, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.l = load i32, ptr %i.k, align 8
  %i.m = load i8, ptr %i.a, align 8, !range !9, !noundef !10
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.n, ptr @net_l2tpv3_send, ptr null
  tail call void @qemu_set_fd_handler(i32 noundef %i.l, ptr noundef %i.o, ptr noundef null, ptr noundef nonnull %0) #10, !inline_history !0
  br label %l2tpv3_write_poll.exit

l2tpv3_write_poll.exit:                           ; preds = %l2tpv3_read_poll.exit, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %l2tpv3_write_poll.exit
  %i.s = tail call i32 @close(i32 noundef %i.q) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %l2tpv3_write_poll.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %.not.i14 = icmp eq ptr %i.u, null
  br i1 %.not.i14, label %destroy_vector.exit, label %.preheader20.i

.preheader20.i:                                   ; preds = %bb.e, %bb.f
  %.024.i = phi ptr [ %i.ab, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %.01623.i = phi i32 [ %i.ac, %bb.f ], [ 0, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %.024.i, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not19.i = icmp eq ptr %i.w, null
  br i1 %.not19.i, label %bb.f, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader20.i
  %i.x = load ptr, ptr %i.w, align 8
  tail call void @g_free(ptr noundef %i.x) #10
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void @g_free(ptr noundef %i.z) #10
  %i.aa = load ptr, ptr %i.v, align 8
  tail call void @g_free(ptr noundef %i.aa) #10
  br label %bb.f

bb.f:                                             ; preds = %.preheader.preheader.i, %.preheader20.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.024.i, i64 64
  %i.ac = add nuw nsw i32 %.01623.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ac, 64
  br i1 %exitcond.not.i, label %bb.g, label %.preheader20.i, !llvm.loop !21

bb.g:                                             ; preds = %bb.f
  tail call void @g_free(ptr noundef nonnull %i.u) #10
  br label %destroy_vector.exit

destroy_vector.exit:                              ; preds = %bb.e, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void @g_free(ptr noundef %i.ae) #10
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void @g_free(ptr noundef %i.ag) #10
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @g_free(ptr noundef %i.ai) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @l2tpv3_poll(ptr noundef %0, i1 noundef zeroext %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 489 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !9, !noundef !10
  %i.c = zext i1 %1 to i8                         ; 4 uses
  %.not.i = icmp eq i8 %i.b, %i.c
  br i1 %.not.i, label %l2tpv3_write_poll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 %i.c, ptr %i.a, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.g = load i8, ptr %i.f, align 8, !range !9, !noundef !10
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = select i1 %i.h, ptr @net_l2tpv3_send, ptr null
  %i.j = select i1 %1, ptr @l2tpv3_writable, ptr null
  tail call void @qemu_set_fd_handler(i32 noundef %i.e, ptr noundef %i.i, ptr noundef %i.j, ptr noundef nonnull %0) #10, !inline_history !0
  br label %l2tpv3_write_poll.exit

l2tpv3_write_poll.exit:                           ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !9, !noundef !10
  %.not.i7 = icmp eq i8 %i.l, %i.c
  br i1 %.not.i7, label %l2tpv3_read_poll.exit, label %bb.c

bb.c:                                             ; preds = %l2tpv3_write_poll.exit
  store i8 %i.c, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.n = load i32, ptr %i.m, align 8
  %i.o = select i1 %1, ptr @net_l2tpv3_send, ptr null
  %i.p = load i8, ptr %i.a, align 1, !range !9, !noundef !10
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = select i1 %i.q, ptr @l2tpv3_writable, ptr null
  tail call void @qemu_set_fd_handler(i32 noundef %i.n, ptr noundef %i.o, ptr noundef %i.r, ptr noundef nonnull %0) #10, !inline_history !1
  br label %l2tpv3_read_poll.exit

l2tpv3_read_poll.exit:                            ; preds = %l2tpv3_write_poll.exit, %bb.c
  ret void
}

declare i64 @sendmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #8

declare void @qemu_set_fd_handler(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal void @net_l2tpv3_send(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 468 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 460
  store i32 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.g = sub i32 64, %i.b                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  %i.j = add i32 %i.i, %i.g
  %i.k = icmp sgt i32 %i.j, 64
  %i.l = sub i32 64, %i.i
  %spec.select = select i1 %i.k, i32 %i.l, i32 %i.g ; 2 uses
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds [64 x i8], ptr %i.o, i64 %i.m
  %i.q = icmp sgt i32 %spec.select, 0
  br i1 %i.q, label %.preheader, label %thread-pre-split

.preheader:                                       ; preds = %.thread, %bb.b
  %i.r = phi ptr [ %i.f, %.thread ], [ %i.p, %bb.b ]
  %i.s = phi ptr [ %i.e, %.thread ], [ %i.n, %bb.b ]
  %.030 = phi i32 [ 64, %.thread ], [ %spec.select, %bb.b ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 376
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %i.v = load i32, ptr %i.u, align 8
  %i.w = tail call i32 @recvmmsg(i32 noundef %i.v, ptr noundef %i.r, i32 noundef %.030, i32 noundef 64, ptr noundef null) #10 ; 2 uses
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.y = tail call ptr @__errno_location() #12
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.z, 4
  br i1 %i.aa, label %bb.c, label %.critedge, !llvm.loop !22

.critedge:                                        ; preds = %bb.c, %bb.d
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.w, i32 0) ; 2 uses
  %i.ab = load i32, ptr %i.t, align 4
  %i.ac = add i32 %i.ab, %spec.store.select
  %i.ad = srem i32 %i.ac, 64
  store i32 %i.ad, ptr %i.t, align 4
  %i.ae = load i32, ptr %i.a, align 4
  %i.af = add i32 %i.ae, %spec.store.select       ; 2 uses
  store i32 %i.af, ptr %i.a, align 4
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.b, %.critedge
  %i.ag = phi ptr [ %i.s, %.critedge ], [ %i.n, %bb.b ]
  %i.ah = phi i32 [ %i.af, %.critedge ], [ %i.b, %bb.b ]
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.preheader.i, label %net_l2tpv3_process_queue.exit

.preheader.i:                                     ; preds = %thread-pre-split
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 491
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 490
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 494
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 495
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 489
  br label %bb.e

bb.e:                                             ; preds = %bb.t, %.preheader.i
  %.024.i = phi i32 [ %.1.i, %bb.t ], [ 0, %.preheader.i ] ; 3 uses
  %i.ax = load ptr, ptr %i.ag, align 8
  %i.ay = load i32, ptr %i.aj, align 8
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [64 x i8], ptr %i.ax, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load i32, ptr %i.bb, align 8            ; 2 uses
  %.not.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i, label %l2tpv3_read_poll.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load i32, ptr %i.ak, align 8
  %i.be = sub i32 %i.bc, %i.bd                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = icmp sgt i32 %i.be, 0
  br i1 %i.bh, label %bb.g, label %l2tpv3_verify_header.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bj = load i8, ptr %i.al, align 1, !range !9, !noundef !10
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load i8, ptr %i.am, align 2, !range !9, !noundef !10
  %i.bm = trunc nuw i8 %i.bl to i1
  %spec.select.idx.i.i = select i1 %i.bm, i64 0, i64 20
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 %spec.select.idx.i.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.017.i.i = phi ptr [ %i.bi, %bb.g ], [ %spec.select.i.i, %bb.h ] ; 2 uses
  %i.bn = load i8, ptr %i.an, align 2, !range !9, !noundef !10
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bp = load i8, ptr %i.ao, align 1, !range !9, !noundef !10
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = load i32, ptr %i.ap, align 4
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 %i.bs ; 2 uses
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.val.i.i = load i64, ptr %i.bt, align 1
  %i.bu = tail call i64 @llvm.bswap.i64(i64 %.val.i.i)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.val21.i.i = load i32, ptr %i.bt, align 1
  %i.bv = tail call i32 @llvm.bswap.i32(i32 %.val21.i.i)
  %i.bw = zext i32 %i.bv to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i.i = phi i64 [ %i.bu, %bb.k ], [ %i.bw, %bb.l ]
  %i.bx = load i64, ptr %i.aq, align 8
  %.not.i.i = icmp eq i64 %.0.i.i, %i.bx
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.by = load i8, ptr %i.ar, align 8, !range !9, !noundef !10
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %l2tpv3_verify_header.exit.thread.i, label %.sink.split.i.i

bb.o:                                             ; preds = %bb.m, %bb.i
  %i.ca = load i32, ptr %i.as, align 4
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 %i.cb
  %.val20.i.i = load i32, ptr %i.cc, align 1
  %i.cd = tail call i32 @llvm.bswap.i32(i32 %.val20.i.i)
  %i.ce = load i32, ptr %i.at, align 8
  %.not19.i.i = icmp eq i32 %i.cd, %i.ce
  br i1 %.not19.i.i, label %l2tpv3_verify_header.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = load i8, ptr %i.ar, align 8, !range !9, !noundef !10
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %l2tpv3_verify_header.exit.thread.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.p, %bb.n
  %.str.14.sink.i.i = phi ptr [ @.str.13, %bb.n ], [ @.str.14, %bb.p ]
  tail call void (ptr, ...) @error_report(ptr noundef nonnull %.str.14.sink.i.i) #10, !inline_history !23
  br label %l2tpv3_verify_header.exit.thread.i

l2tpv3_verify_header.exit.i:                      ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = tail call i64 @qemu_send_packet_async(ptr noundef nonnull %0, ptr noundef %i.ci, i32 noundef %i.be, ptr noundef nonnull @l2tpv3_send_completed) #10, !inline_history !23
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.q, label %l2tpv3_read_poll.exit.i

bb.q:                                             ; preds = %l2tpv3_verify_header.exit.i
  %i.cm = load i8, ptr %i.au, align 8, !range !9, !noundef !10
  %.not.i29.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i29.i, label %l2tpv3_read_poll.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.au, align 8
  %i.cn = load i32, ptr %i.av, align 8
  %i.co = load i8, ptr %i.aw, align 1, !range !9, !noundef !10
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = select i1 %i.cp, ptr @l2tpv3_writable, ptr null
  tail call void @qemu_set_fd_handler(i32 noundef %i.cn, ptr noundef null, ptr noundef %i.cq, ptr noundef nonnull %0) #10, !inline_history !24
  br label %l2tpv3_read_poll.exit.i

l2tpv3_verify_header.exit.thread.i:               ; preds = %.sink.split.i.i, %bb.p, %bb.n, %bb.f
  %i.cr = load i8, ptr %i.ar, align 8, !range !9, !noundef !10
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %l2tpv3_read_poll.exit.i, label %bb.s

bb.s:                                             ; preds = %l2tpv3_verify_header.exit.thread.i
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.12) #10, !inline_history !23
  store i8 1, ptr %i.ar, align 8
  br label %l2tpv3_read_poll.exit.i

l2tpv3_read_poll.exit.i:                          ; preds = %bb.s, %l2tpv3_verify_header.exit.thread.i, %bb.r, %bb.q, %l2tpv3_verify_header.exit.i, %bb.e
  %.1.i = phi i32 [ %i.ck, %l2tpv3_verify_header.exit.i ], [ %.024.i, %l2tpv3_verify_header.exit.thread.i ], [ %.024.i, %bb.s ], [ %.024.i, %bb.e ], [ 0, %bb.q ], [ 0, %bb.r ] ; 2 uses
  %.0.i = phi i1 [ false, %l2tpv3_verify_header.exit.i ], [ true, %l2tpv3_verify_header.exit.thread.i ], [ true, %bb.s ], [ true, %bb.e ], [ false, %bb.q ], [ false, %bb.r ]
  %i.ct = load i32, ptr %i.aj, align 8
  %i.cu = add i32 %i.ct, 1
  %i.cv = srem i32 %i.cu, 64
  store i32 %i.cv, ptr %i.aj, align 8
  %i.cw = load i32, ptr %i.a, align 4
  %i.cx = add i32 %i.cw, -1                       ; 2 uses
  store i32 %i.cx, ptr %i.a, align 4
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %bb.t, label %net_l2tpv3_process_queue.exit

bb.t:                                             ; preds = %l2tpv3_read_poll.exit.i
  %i.cz = tail call i32 @qemu_can_send_packet(ptr noundef nonnull %0) #10, !inline_history !23
  %.not27.i = icmp ne i32 %i.cz, 0
  %i.da = icmp sgt i32 %.1.i, 0
  %i.db = or i1 %i.da, %.0.i
  %or.cond.i = select i1 %.not27.i, i1 %i.db, i1 false
  br i1 %or.cond.i, label %bb.e, label %net_l2tpv3_process_queue.exit, !llvm.loop !25

net_l2tpv3_process_queue.exit:                    ; preds = %l2tpv3_read_poll.exit.i, %bb.t, %thread-pre-split
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @l2tpv3_writable(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 489 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !9, !noundef !10
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %l2tpv3_write_poll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.f = load i8, ptr %i.e, align 8, !range !9, !noundef !10
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.g, ptr @net_l2tpv3_send, ptr null
  tail call void @qemu_set_fd_handler(i32 noundef %i.d, ptr noundef %i.h, ptr noundef null, ptr noundef nonnull %0) #10, !inline_history !0
  br label %l2tpv3_write_poll.exit

l2tpv3_write_poll.exit:                           ; preds = %bb.a, %bb.b
  tail call void @qemu_flush_queued_packets(ptr noundef nonnull %0) #10
  ret void
}
end_hunk_0
