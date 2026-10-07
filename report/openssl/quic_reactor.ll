Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_reactor?download=true
inline.NumInlined: 27
inline.NumDeleted: 13
begin_hunk_0_@ossl_quic_reactor_block_until_pred:bb.a
bb.a:
  %4 = alloca [3 x %struct.pollfd], align 16      ; 10 uses
  %5 = alloca %struct.quic_tick_result_st, align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 11 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 16
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val = load i32, ptr %i.d, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %.val, %bb.b ], [ -1, %bb.a ]  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %.sroa.gep65.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.t = icmp sgt i32 %i.e, -1
  br label %bb.d

bb.d:                                             ; preds = %ossl_quic_reactor_leave_blocking_section.exit, %bb.c
  %.025 = phi i32 [ %3, %bb.c ], [ %.1, %ossl_quic_reactor_leave_blocking_section.exit ] ; 2 uses
  %i.u = and i32 %.025, 1
  %.not27 = icmp eq i32 %i.u, 0
  br i1 %.not27, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !22
  call void %i.v(ptr noundef nonnull %5, ptr noundef %i.w, i32 noundef 0) #9, !inline_history !37
  %i.x = load i8, ptr %i.h, align 8, !tbaa !31
  %i.y = load i8, ptr %i.a, align 8               ; 3 uses
  %i.z = and i8 %i.x, 1
  %i.aa = and i8 %i.y, -4
  %i.ab = or disjoint i8 %i.aa, %i.z
  %i.ac = load i8, ptr %i.i, align 1, !tbaa !32
  %i.ad = shl i8 %i.ac, 1
  %i.ae = and i8 %i.ad, 2
  %i.af = or disjoint i8 %i.ab, %i.ae
  store i8 %i.af, ptr %i.a, align 8
  %i.ag = load i64, ptr %5, align 8, !tbaa !20
  store i64 %i.ag, ptr %i.j, align 8, !tbaa !20
  %i.ah = load i8, ptr %i.k, align 2, !tbaa !33
  %.not.i = icmp eq i8 %i.ah, 0
  %i.ai = and i8 %i.y, 16
  %.not.i.i = icmp eq i8 %i.ai, 0
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not.i.i
  br i1 %or.cond.i, label %ossl_quic_reactor_tick.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = load i64, ptr %i.l, align 8, !tbaa !24
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %ossl_quic_reactor_tick.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = and i8 %i.y, 32
  %.not8.i.i = icmp eq i8 %i.al, 0
  br i1 %.not8.i.i, label %bb.h, label %.lr.ph.i.i.preheader

bb.h:                                             ; preds = %bb.g
  %i.am = call i32 @ossl_rio_notifier_signal(ptr noundef nonnull %i.m) #9 ; 0 uses
  %i.an = load i8, ptr %i.a, align 8
  %i.ao = or i8 %i.an, 32
  store i8 %i.ao, ptr %i.a, align 8
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.h, %bb.g
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !23
  call void @ossl_crypto_condvar_wait(ptr noundef %i.ap, ptr noundef %i.aq) #9
  %i.ar = load i8, ptr %i.a, align 8
  %i.as = and i8 %i.ar, 32
  %.not9.i.i = icmp eq i8 %i.as, 0
  br i1 %.not9.i.i, label %ossl_quic_reactor_tick.exit, label %.lr.ph.i.i, !llvm.loop !0

ossl_quic_reactor_tick.exit:                      ; preds = %.lr.ph.i.i, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %ossl_quic_reactor_tick.exit
  %.1 = phi i32 [ %.025, %ossl_quic_reactor_tick.exit ], [ 0, %bb.d ]
  %i.at = call i32 %1(ptr noundef %2) #9          ; 2 uses
  %.not28 = icmp eq i32 %i.at, 0
  br i1 %.not28, label %bb.j, label %bb.aa

bb.j:                                             ; preds = %bb.i
  %i.au = load i8, ptr %i.a, align 8              ; 9 uses
  %i.av = and i8 %i.au, 1                         ; 2 uses
  %i.aw = lshr i8 %i.au, 1
  %i.ax = and i8 %i.aw, 1                         ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8, !tbaa !20 ; 2 uses
  %i.ay = trunc i8 %i.au to i1
  %i.az = and i8 %i.au, 3
  %.not36 = icmp eq i8 %i.az, 0
  %.not33 = icmp eq i64 %.sroa.0.0.copyload.i, -1 ; 3 uses
  %or.cond = select i1 %.not36, i1 %.not33, i1 false
  br i1 %or.cond, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = load i64, ptr %i.l, align 8, !tbaa !24  ; 6 uses
  %i.bb = add i64 %i.ba, 1
  store i64 %i.bb, ptr %i.l, align 8, !tbaa !24
  %i.bc = load ptr, ptr %i.o, align 8, !tbaa !23  ; 3 uses
  %i.bd = load i32, ptr %0, align 8, !tbaa !29
  switch i32 %i.bd, label %poll_two_descriptors.exit [
    i32 0, label %poll_descriptor_to_fd.exit.i
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.q, align 8, !tbaa !27  ; 2 uses
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %poll_two_descriptors.exit, label %poll_descriptor_to_fd.exit.i

poll_descriptor_to_fd.exit.i:                     ; preds = %bb.l, %bb.k
  %.sink.i.i = phi i32 [ %i.be, %bb.l ], [ -1, %bb.k ] ; 4 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !29
  switch i32 %i.bg, label %poll_two_descriptors.exit [
    i32 0, label %poll_descriptor_to_fd.exit10.i
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %poll_descriptor_to_fd.exit.i
  %i.bh = load i32, ptr %i.r, align 8, !tbaa !27  ; 2 uses
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %poll_two_descriptors.exit, label %poll_descriptor_to_fd.exit10.i

poll_descriptor_to_fd.exit10.i:                   ; preds = %bb.m, %poll_descriptor_to_fd.exit.i
  %.sink.i8.i = phi i32 [ %i.bh, %bb.m ], [ -1, %poll_descriptor_to_fd.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.bj = icmp eq i32 %.sink.i.i, %.sink.i8.i
  store i32 %.sink.i.i, ptr %4, align 16, !tbaa !40
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %poll_descriptor_to_fd.exit10.i
  %i.bk = shl nuw nsw i8 %i.ax, 2
  %i.bl = or disjoint i8 %i.bk, %i.av             ; 2 uses
  %i.bm = zext nneg i8 %i.bl to i16
  store i16 %i.bm, ptr %i.s, align 4, !tbaa !41
  %i.bn = icmp sgt i32 %.sink.i.i, -1
  %.not56.i.i = icmp ne i8 %i.bl, 0
  %or.cond.not.i.i = select i1 %i.bn, i1 %.not56.i.i, i1 false
  %spec.select64.i.i = zext i1 %or.cond.not.i.i to i64
  br label %bb.q

bb.o:                                             ; preds = %poll_descriptor_to_fd.exit10.i
  %i.bo = zext nneg i8 %i.av to i16
  store i16 %i.bo, ptr %i.s, align 4, !tbaa !41
  %i.bp = icmp sgt i32 %.sink.i.i, -1
  %or.cond61.not.i.i = and i1 %i.bp, %i.ay        ; 4 uses
  %.044.i.i = zext i1 %or.cond61.not.i.i to i64   ; 2 uses
  %.044.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %or.cond61.not.i.i, i64 8, i64 0
  %.044.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %4, i64 %.044.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  store i32 %.sink.i8.i, ptr %.044.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 8, !tbaa !40
  %.not52.i.i = icmp eq i8 %i.ax, 0               ; 2 uses
  %i.bq = select i1 %.not52.i.i, i16 0, i16 4
  %.044.sroa.sel.sroa.sel.i.i = select i1 %or.cond61.not.i.i, ptr %.sroa.gep65.sroa.gep.i.i, ptr %i.s
  store i16 %i.bq, ptr %.044.sroa.sel.sroa.sel.i.i, align 4, !tbaa !41
  %i.br = icmp sgt i32 %.sink.i8.i, -1
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = select i1 %or.cond61.not.i.i, i64 2, i64 1
  %spec.select.i.i = select i1 %.not52.i.i, i64 %.044.i.i, i64 %i.bs
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1.i.i = phi i64 [ %spec.select.i.i, %bb.p ], [ %.044.i.i, %bb.o ], [ %spec.select64.i.i, %bb.n ] ; 4 uses
  br i1 %i.t, label %.thread.i.i, label %bb.r

.thread.i.i:                                      ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.1.i.i ; 2 uses
  store i32 %i.e, ptr %i.bt, align 8, !tbaa !40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i16 1, ptr %i.bu, align 4, !tbaa !41
  %i.bv = add nuw nsw i64 %.1.i.i, 1
  br label %.critedge63.i.i

bb.r:                                             ; preds = %bb.q
  %.not57.i.i = icmp eq i64 %.1.i.i, 0
  %brmerge.not = select i1 %.not57.i.i, i1 %.not33, i1 false
  br i1 %brmerge.not, label %poll_two_fds.exit.i, label %.critedge63.i.i, !prof !42

.critedge63.i.i:                                  ; preds = %bb.r, %.thread.i.i
  %.268.i.i = phi i64 [ %i.bv, %.thread.i.i ], [ %.1.i.i, %bb.r ] ; 2 uses
  %.not59.i.i = icmp eq ptr %i.bc, null           ; 2 uses
  br i1 %.not59.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge63.i.i
  call void @ossl_crypto_mutex_unlock(ptr noundef nonnull %i.bc) #9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge63.i.i
  br i1 %.not33, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.t, %bb.u
  %i.bw = call i32 @poll(ptr noundef nonnull %4, i64 noundef %.268.i.i, i32 noundef -1) #9 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, -1
  br i1 %i.bx, label %bb.u, label %.critedge.i.i

bb.u:                                             ; preds = %.split.us.i.i
  %i.by = tail call ptr @__errno_location() #10
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !26
  %i.ca = icmp eq i32 %i.bz, 4
  br i1 %i.ca, label %.split.us.i.i, label %.critedge.i.i, !llvm.loop !35

.split.i.i:                                       ; preds = %bb.t, %bb.v
  %i.cb = call i64 @ossl_time_now() #9
  %..i.i.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload.i, i64 %i.cb)
  %i.cc = udiv i64 %..i.i.i, 1000000
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = call i32 @poll(ptr noundef nonnull %4, i64 noundef %.268.i.i, i32 noundef %i.cd) #9 ; 2 uses
  %i.cf = icmp eq i32 %i.ce, -1
  br i1 %i.cf, label %bb.v, label %.critedge.i.i

bb.v:                                             ; preds = %.split.i.i
  %i.cg = tail call ptr @__errno_location() #10
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !26
  %i.ci = icmp eq i32 %i.ch, 4
  br i1 %i.ci, label %.split.i.i, label %.critedge.i.i, !llvm.loop !35

.critedge.i.i:                                    ; preds = %bb.v, %.split.i.i, %bb.u, %.split.us.i.i
  %.us-phi.i.i = phi i32 [ %i.bw, %.split.us.i.i ], [ -1, %bb.u ], [ -1, %bb.v ], [ %i.ce, %.split.i.i ]
  br i1 %.not59.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.critedge.i.i
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.bc) #9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.critedge.i.i
  %i.cj = icmp slt i32 %.us-phi.i.i, 0
  %.pre.pre = load i64, ptr %i.l, align 8, !tbaa !24
  %.pre40.pre = load i8, ptr %i.a, align 8
  %i.ck = add i64 %.pre.pre, -1
  br label %poll_two_fds.exit.i

poll_two_fds.exit.i:                              ; preds = %bb.r, %bb.x
  %.pre40 = phi i8 [ %.pre40.pre, %bb.x ], [ %i.au, %bb.r ]
  %.pre = phi i64 [ %i.ck, %bb.x ], [ %i.ba, %bb.r ]
  %.0.i11.i = phi i1 [ %i.cj, %bb.x ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %poll_two_descriptors.exit

poll_two_descriptors.exit:                        ; preds = %bb.k, %bb.l, %poll_descriptor_to_fd.exit.i, %bb.m, %poll_two_fds.exit.i
  %i.cl = phi i8 [ %.pre40, %poll_two_fds.exit.i ], [ %i.au, %bb.l ], [ %i.au, %bb.k ], [ %i.au, %poll_descriptor_to_fd.exit.i ], [ %i.au, %bb.m ]
  %i.cm = phi i64 [ %.pre, %poll_two_fds.exit.i ], [ %i.ba, %bb.l ], [ %i.ba, %bb.k ], [ %i.ba, %poll_descriptor_to_fd.exit.i ], [ %i.ba, %bb.m ] ; 2 uses
  %.0.i = phi i1 [ %.0.i11.i, %poll_two_fds.exit.i ], [ true, %bb.l ], [ true, %bb.k ], [ true, %poll_descriptor_to_fd.exit.i ], [ true, %bb.m ]
  store i64 %i.cm, ptr %i.l, align 8, !tbaa !24
  %i.cn = and i8 %i.cl, 48
  %or.cond.not.i = icmp eq i8 %i.cn, 48
  br i1 %or.cond.not.i, label %bb.y, label %ossl_quic_reactor_leave_blocking_section.exit

bb.y:                                             ; preds = %poll_two_descriptors.exit
  %i.co = icmp eq i64 %i.cm, 0
  br i1 %i.co, label %bb.z, label %.lr.ph.i

bb.z:                                             ; preds = %bb.y
  %i.cp = call i32 @ossl_rio_notifier_unsignal(ptr noundef nonnull %i.m) #9 ; 0 uses
  %i.cq = load i8, ptr %i.a, align 8
  %i.cr = and i8 %i.cq, -33
  store i8 %i.cr, ptr %i.a, align 8
  %i.cs = load ptr, ptr %i.n, align 8, !tbaa !25
  call void @ossl_crypto_condvar_broadcast(ptr noundef %i.cs) #9
  br label %ossl_quic_reactor_leave_blocking_section.exit

.lr.ph.i:                                         ; preds = %bb.y, %.lr.ph.i
  %i.ct = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.cu = load ptr, ptr %i.o, align 8, !tbaa !23
  call void @ossl_crypto_condvar_wait(ptr noundef %i.ct, ptr noundef %i.cu) #9
  %i.cv = load i8, ptr %i.a, align 8
  %i.cw = and i8 %i.cv, 32
  %.not11.i = icmp eq i8 %i.cw, 0
  br i1 %.not11.i, label %ossl_quic_reactor_leave_blocking_section.exit, label %.lr.ph.i, !llvm.loop !1

ossl_quic_reactor_leave_blocking_section.exit:    ; preds = %.lr.ph.i, %poll_two_descriptors.exit, %bb.z
  br i1 %.0.i, label %bb.aa, label %bb.d

bb.aa:                                            ; preds = %bb.j, %ossl_quic_reactor_leave_blocking_section.exit, %bb.i
  %.0 = phi i32 [ %i.at, %bb.i ], [ 0, %bb.j ], [ 0, %ossl_quic_reactor_leave_blocking_section.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @ossl_quic_reactor_enter_blocking_section(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define void @ossl_quic_reactor_leave_blocking_section(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 48
  %or.cond.not = icmp eq i8 %i.f, 48
  br i1 %or.cond.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = tail call i32 @ossl_rio_notifier_unsignal(ptr noundef nonnull %i.j) #9 ; 0 uses
  %i.l = load i8, ptr %i.d, align 8
  %i.m = and i8 %i.l, -33
  store i8 %i.m, ptr %i.d, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25
  tail call void @ossl_crypto_condvar_broadcast(ptr noundef %i.o) #9
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !23
  tail call void @ossl_crypto_condvar_wait(ptr noundef %i.p, ptr noundef %i.q) #9
  %i.r = load i8, ptr %i.d, align 8
  %i.s = and i8 %i.r, 32
  %.not11 = icmp eq i8 %i.s, 0
  br i1 %.not11, label %.loopexit, label %bb.d, !llvm.loop !1

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.a
  ret void
}

declare i32 @ossl_rio_notifier_unsignal(ptr noundef) local_unnamed_addr #2

declare void @ossl_crypto_condvar_broadcast(ptr noundef) local_unnamed_addr #2

declare void @ossl_crypto_condvar_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ossl_rio_notifier_signal(ptr noundef) local_unnamed_addr #2

declare void @ossl_crypto_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare i64 @ossl_time_now() local_unnamed_addr #2

declare i32 @poll(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare void @ossl_crypto_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"bio_poll_descriptor_st", !7, i64 0, !6, i64 8}
!11 = !{!"long", !6, i64 0}
!12 = !{!"", !11, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 _ZTS15crypto_mutex_st", !13, i64 0}
!15 = !{!"rio_notifier_st", !7, i64 0, !7, i64 4}
!16 = !{!"p1 _ZTS17crypto_condvar_st", !13, i64 0}
!17 = !{!"quic_reactor_st", !10, i64 0, !10, i64 16, !12, i64 32, !13, i64 40, !13, i64 48, !14, i64 56, !15, i64 64, !16, i64 72, !11, i64 80, !7, i64 88, !7, i64 88, !7, i64 88, !7, i64 88, !7, i64 88, !7, i64 88}
!18 = !{!17, !7, i64 0}
!19 = !{!17, !7, i64 16}
!20 = !{!11, !11, i64 0}
!21 = !{!17, !13, i64 40}
!22 = !{!17, !13, i64 48}
!23 = !{!17, !14, i64 56}
!24 = !{!17, !11, i64 80}
!25 = !{!17, !16, i64 72}
!26 = !{!7, !7, i64 0}
!27 = !{!6, !6, i64 0}
!28 = !{i64 0, i64 4, !26, i64 8, i64 8, !27}
!29 = !{!10, !7, i64 0}
!30 = !{!"quic_tick_result_st", !12, i64 0, !6, i64 8, !6, i64 9, !6, i64 10}
!31 = !{!30, !6, i64 8}
!32 = !{!30, !6, i64 9}
!33 = !{!30, !6, i64 10}
!34 = !{!"llvm.loop.mustprogress"}
!35 = distinct !{!35, !34}
!36 = !{!15, !7, i64 0}
!37 = !{ptr @ossl_quic_reactor_tick}
!38 = !{!"short", !6, i64 0}
!39 = !{!"pollfd", !7, i64 0, !38, i64 4, !38, i64 6}
!40 = !{!39, !7, i64 0}
!41 = !{!39, !38, i64 4}
!42 = !{!"branch_weights", i32 1, i32 4001}
end_hunk_0
