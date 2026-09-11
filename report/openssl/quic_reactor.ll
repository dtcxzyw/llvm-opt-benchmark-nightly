Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic_reactor?download=true
inline.NumInlined: 27
inline.NumDeleted: 13
begin_hunk_0_@ossl_quic_reactor_tick:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22
  call void %i.b(ptr noundef nonnull %2, ptr noundef %i.d, i32 noundef %1) #9
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.h = load i8, ptr %i.g, align 8               ; 3 uses
  %i.i = and i8 %i.f, 1
  %i.j = and i8 %i.h, -4
  %i.k = or disjoint i8 %i.j, %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.m = load i8, ptr %i.l, align 1, !tbaa !32
  %i.n = shl i8 %i.m, 1
  %i.o = and i8 %i.n, 2
  %i.p = or disjoint i8 %i.o, %i.k
  store i8 %i.p, ptr %i.g, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %2, align 8, !tbaa !20
  store i64 %i.r, ptr %i.q, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.t = load i8, ptr %i.s, align 2, !tbaa !33
  %.not = icmp eq i8 %i.t, 0
  %i.u = and i8 %i.h, 16
  %.not.i = icmp eq i8 %i.u, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not.i
  br i1 %or.cond, label %rtor_notify_other_threads.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load i64, ptr %i.v, align 8, !tbaa !24
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %rtor_notify_other_threads.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = and i8 %i.h, 32
  %.not8.i = icmp eq i8 %i.y, 0
  br i1 %.not8.i, label %bb.d, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = call i32 @ossl_rio_notifier_signal(ptr noundef nonnull %i.z) #9 ; 0 uses
  %i.ab = load i8, ptr %i.g, align 8
  %i.ac = or i8 %i.ab, 32
  store i8 %i.ac, ptr %i.g, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !23
  call void @ossl_crypto_condvar_wait(ptr noundef %i.af, ptr noundef %i.ag) #9
  %i.ah = load i8, ptr %i.g, align 8
  %i.ai = and i8 %i.ah, 32
  %.not9.i = icmp eq i8 %i.ai, 0
  br i1 %.not9.i, label %rtor_notify_other_threads.exit, label %bb.e, !llvm.loop !0

rtor_notify_other_threads.exit:                   ; preds = %bb.e, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @ossl_quic_reactor_get0_notifier(ptr nofree noundef readonly captures(ret: address, provenance) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 16
  %.not = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = select i1 %.not, ptr null, ptr %i.d
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define i32 @ossl_quic_reactor_block_until_pred(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
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
  br i1 %.not28, label %bb.j, label %bb.z

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
  br i1 %or.cond, label %bb.z, label %bb.k

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
  br label %bb.p

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
  %6 = select i1 %.not52.i.i, i16 0, i16 4
  %.044.sroa.sel.sroa.sel.i.i = select i1 %or.cond61.not.i.i, ptr %.sroa.gep65.sroa.gep.i.i, ptr %i.s
  store i16 %6, ptr %.044.sroa.sel.sroa.sel.i.i, align 4, !tbaa !41
  %7 = icmp sgt i32 %.sink.i8.i, -1
  br i1 %7, label %8, label %bb.p

8:                                                ; preds = %bb.o
  %9 = select i1 %or.cond61.not.i.i, i64 2, i64 1
  %spec.select.i.i = select i1 %.not52.i.i, i64 %.044.i.i, i64 %9
  br label %bb.p

bb.p:                                             ; preds = %8, %bb.o, %bb.n
  %.1.i.i = phi i64 [ %spec.select.i.i, %8 ], [ %.044.i.i, %bb.o ], [ %spec.select64.i.i, %bb.n ] ; 4 uses
  br i1 %i.t, label %.thread.i.i, label %bb.q

.thread.i.i:                                      ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.1.i.i ; 2 uses
  store i32 %i.e, ptr %i.bq, align 8, !tbaa !40
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i16 1, ptr %i.br, align 4, !tbaa !41
  %i.bs = add nuw nsw i64 %.1.i.i, 1
  br label %.critedge63.i.i

bb.q:                                             ; preds = %bb.p
  %.not57.i.i = icmp eq i64 %.1.i.i, 0
  %brmerge.not = select i1 %.not57.i.i, i1 %.not33, i1 false
  br i1 %brmerge.not, label %poll_two_fds.exit.i, label %.critedge63.i.i, !prof !42

.critedge63.i.i:                                  ; preds = %bb.q, %.thread.i.i
  %.268.i.i = phi i64 [ %i.bs, %.thread.i.i ], [ %.1.i.i, %bb.q ] ; 2 uses
  %.not59.i.i = icmp eq ptr %i.bc, null           ; 2 uses
  br i1 %.not59.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge63.i.i
  call void @ossl_crypto_mutex_unlock(ptr noundef nonnull %i.bc) #9
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge63.i.i
  br i1 %.not33, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.s, %bb.t
  %i.bt = call i32 @poll(ptr noundef nonnull %4, i64 noundef %.268.i.i, i32 noundef -1) #9 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, -1
  br i1 %i.bu, label %bb.t, label %.critedge.i.i

bb.t:                                             ; preds = %.split.us.i.i
  %i.bv = tail call ptr @__errno_location() #10
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !26
  %i.bx = icmp eq i32 %i.bw, 4
  br i1 %i.bx, label %.split.us.i.i, label %.critedge.i.i, !llvm.loop !35

.split.i.i:                                       ; preds = %bb.s, %bb.u
  %i.by = call i64 @ossl_time_now() #9
  %..i.i.i = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.copyload.i, i64 %i.by)
  %i.bz = udiv i64 %..i.i.i, 1000000
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = call i32 @poll(ptr noundef nonnull %4, i64 noundef %.268.i.i, i32 noundef %i.ca) #9 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %bb.u, label %.critedge.i.i

bb.u:                                             ; preds = %.split.i.i
  %i.cd = tail call ptr @__errno_location() #10
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !26
  %i.cf = icmp eq i32 %i.ce, 4
  br i1 %i.cf, label %.split.i.i, label %.critedge.i.i, !llvm.loop !35

.critedge.i.i:                                    ; preds = %bb.u, %.split.i.i, %bb.t, %.split.us.i.i
  %.us-phi.i.i = phi i32 [ %i.bt, %.split.us.i.i ], [ -1, %bb.t ], [ -1, %bb.u ], [ %i.cb, %.split.i.i ]
  br i1 %.not59.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge.i.i
  call void @ossl_crypto_mutex_lock(ptr noundef nonnull %i.bc) #9
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.critedge.i.i
  %i.cg = icmp slt i32 %.us-phi.i.i, 0
  %.pre.pre = load i64, ptr %i.l, align 8, !tbaa !24
  %.pre40.pre = load i8, ptr %i.a, align 8
  %i.ch = add i64 %.pre.pre, -1
  br label %poll_two_fds.exit.i

poll_two_fds.exit.i:                              ; preds = %bb.q, %bb.w
  %.pre40 = phi i8 [ %.pre40.pre, %bb.w ], [ %i.au, %bb.q ]
  %.pre = phi i64 [ %i.ch, %bb.w ], [ %i.ba, %bb.q ]
  %.0.i11.i = phi i1 [ %i.cg, %bb.w ], [ true, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %poll_two_descriptors.exit

poll_two_descriptors.exit:                        ; preds = %bb.k, %bb.l, %poll_descriptor_to_fd.exit.i, %bb.m, %poll_two_fds.exit.i
  %i.ci = phi i8 [ %.pre40, %poll_two_fds.exit.i ], [ %i.au, %bb.l ], [ %i.au, %bb.k ], [ %i.au, %poll_descriptor_to_fd.exit.i ], [ %i.au, %bb.m ]
  %i.cj = phi i64 [ %.pre, %poll_two_fds.exit.i ], [ %i.ba, %bb.l ], [ %i.ba, %bb.k ], [ %i.ba, %poll_descriptor_to_fd.exit.i ], [ %i.ba, %bb.m ] ; 2 uses
  %.0.i = phi i1 [ %.0.i11.i, %poll_two_fds.exit.i ], [ true, %bb.l ], [ true, %bb.k ], [ true, %poll_descriptor_to_fd.exit.i ], [ true, %bb.m ]
  store i64 %i.cj, ptr %i.l, align 8, !tbaa !24
  %i.ck = and i8 %i.ci, 48
  %or.cond.not.i = icmp eq i8 %i.ck, 48
  br i1 %or.cond.not.i, label %bb.x, label %ossl_quic_reactor_leave_blocking_section.exit

bb.x:                                             ; preds = %poll_two_descriptors.exit
  %i.cl = icmp eq i64 %i.cj, 0
  br i1 %i.cl, label %bb.y, label %.lr.ph.i

bb.y:                                             ; preds = %bb.x
  %i.cm = call i32 @ossl_rio_notifier_unsignal(ptr noundef nonnull %i.m) #9 ; 0 uses
  %i.cn = load i8, ptr %i.a, align 8
  %i.co = and i8 %i.cn, -33
  store i8 %i.co, ptr %i.a, align 8
  %i.cp = load ptr, ptr %i.n, align 8, !tbaa !25
  call void @ossl_crypto_condvar_broadcast(ptr noundef %i.cp) #9
  br label %ossl_quic_reactor_leave_blocking_section.exit

.lr.ph.i:                                         ; preds = %bb.x, %.lr.ph.i
  %i.cq = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.cr = load ptr, ptr %i.o, align 8, !tbaa !23
  call void @ossl_crypto_condvar_wait(ptr noundef %i.cq, ptr noundef %i.cr) #9
  %i.cs = load i8, ptr %i.a, align 8
  %i.ct = and i8 %i.cs, 32
  %.not11.i = icmp eq i8 %i.ct, 0
  br i1 %.not11.i, label %ossl_quic_reactor_leave_blocking_section.exit, label %.lr.ph.i, !llvm.loop !1

ossl_quic_reactor_leave_blocking_section.exit:    ; preds = %.lr.ph.i, %poll_two_descriptors.exit, %bb.y
  br i1 %.0.i, label %bb.z, label %bb.d

bb.z:                                             ; preds = %bb.j, %ossl_quic_reactor_leave_blocking_section.exit, %bb.i
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
end_hunk_0
