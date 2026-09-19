Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/pcnet?download=true
inline.NumInlined: 117
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@pcnet_transmit:bb.a
  %i.hr = and i16 %i.hq, 255
  %i.hs = icmp eq i16 %i.hr, 3
  %.pre = load i32, ptr %i.m, align 4             ; 2 uses
  br i1 %i.hs, label %bb.aq, label %pcnet_tmd_load.exit114

bb.aq:                                            ; preds = %bb.ap
  %i.ht = load i32, ptr %8, align 4
  store i32 %.pre, ptr %8, align 4
  br label %pcnet_tmd_load.exit114

pcnet_tmd_load.exit114:                           ; preds = %bb.ao, %bb.ap, %bb.aq
  %i.hu = phi i16 [ %.pre133, %bb.ao ], [ %i.hq, %bb.ap ], [ %i.hq, %bb.aq ] ; 2 uses
  %i.hv = phi i32 [ %i.hn, %bb.ao ], [ %.pre, %bb.ap ], [ %i.ht, %bb.aq ]
  %i.hw = or i32 %i.hv, -1073741824               ; 4 uses
  store i32 %i.hw, ptr %i.m, align 4
  %i.hx = load i16, ptr %i.p, align 2
  %i.hy = and i16 %i.hx, 16383
  %i.hz = or disjoint i16 %i.hy, 16384            ; 3 uses
  store i16 %i.hz, ptr %i.p, align 2
  %i.ia = and i16 %i.hu, 256
  %.not.i115 = icmp eq i16 %i.ia, 0
  br i1 %.not.i115, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %pcnet_tmd_load.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.ib = load i32, ptr %8, align 4
  %i.ic = and i32 %i.ib, 16777215
  %i.id = and i16 %i.hz, 32512
  %i.ie = zext nneg i16 %i.id to i32
  %i.if = shl nuw nsw i32 %i.ie, 16
  %i.ig = or disjoint i32 %i.ic, %i.if
  store i32 %i.ig, ptr %1, align 4
  %i.ih = load i16, ptr %i.o, align 4
  store i16 %i.ih, ptr %i.x, align 4
  %i.ii = lshr i32 %i.hw, 16
  %i.ij = trunc nuw i32 %i.ii to i16
  store i16 %i.ij, ptr %i.y, align 2
  %i.ik = load ptr, ptr %i.w, align 16
  %i.il = load ptr, ptr %i.l, align 8
  call void %i.ik(ptr noundef %i.il, i64 noundef range(i64 0, 4294967296) %.087.ph, ptr noundef nonnull %1, i32 noundef 8, i32 noundef 0) #10, !inline_history !21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %pcnet_tmd_store.exit116

bb.as:                                            ; preds = %pcnet_tmd_load.exit114
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.im = load i32, ptr %8, align 4               ; 2 uses
  store i32 %i.im, ptr %2, align 4
  %i.in = load i16, ptr %i.o, align 4
  store i16 %i.in, ptr %i.s, align 4
  store i16 %i.hz, ptr %i.t, align 2
  store i32 %i.hw, ptr %i.u, align 4
  %i.io = load i32, ptr %i.r, align 4
  store i32 %i.io, ptr %i.v, align 4
  %i.ip = and i16 %i.hu, 255
  %i.iq = icmp eq i16 %i.ip, 3
  br i1 %i.iq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 %i.hw, ptr %2, align 4
  store i32 %i.im, ptr %i.u, align 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ir = load ptr, ptr %i.w, align 16
  %i.is = load ptr, ptr %i.l, align 8
  call void %i.ir(ptr noundef %i.is, i64 noundef range(i64 0, 4294967296) %.087.ph, ptr noundef nonnull %2, i32 noundef 16, i32 noundef 0) #10, !inline_history !21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %pcnet_tmd_store.exit116

pcnet_tmd_store.exit116:                          ; preds = %bb.ar, %bb.au
  %i.it = load i16, ptr %i.a, align 4
  %i.iu = or i16 %i.it, 512                       ; 2 uses
  store i16 %i.iu, ptr %i.a, align 4
  %i.iv = load i16, ptr %i.z, align 2
  %i.iw = and i16 %i.iv, 64
  %.not92 = icmp eq i16 %i.iw, 0
  br i1 %.not92, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %pcnet_tmd_store.exit116
  %i.ix = and i16 %i.iu, -17
  store i16 %i.ix, ptr %i.a, align 4
  br label %.thread118

bb.aw:                                            ; preds = %pcnet_tmd_store.exit116
  %.not93 = icmp eq i32 %.084128, 0
  br i1 %.not93, label %.thread118, label %bb.ax

.thread118:                                       ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  %.084 = add i32 %.084128, -1                    ; 2 uses
  %i.iy = call fastcc i32 @pcnet_tdte_poll(ptr noundef nonnull %0)
  %.not91 = icmp eq i32 %i.iy, 0
  br i1 %.not91, label %.lr.ph, label %._crit_edge

.loopexit:                                        ; preds = %bb.am, %.lr.ph, %.thread118
  store i32 0, ptr %i.i, align 16
  br label %bb.ay

bb.ay:                                            ; preds = %.loopexit, %bb.b
  ret void
}

declare i64 @qemu_receive_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @qemu_send_packet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @timer_del(ptr noundef) local_unnamed_addr #2

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #2

declare void @timer_mod(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pcnet_init(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.pcnet_initblk32, align 4    ; 9 uses
  %2 = alloca %struct.pcnet_initblk16, align 16   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8564 ; 3 uses
  %i.b = load i16, ptr %i.a, align 4              ; 3 uses
  %.in.in = getelementptr inbounds nuw i8, ptr %0, i64 8270 ; 3 uses
  %.in = load i32, ptr %.in.in, align 2
  %i.c = zext i32 %.in to i64
  %i.d = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %trace_pcnet_init.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr @_TRACE_PCNET_INIT_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.e, 0
  br i1 %.not1.i, label %trace_pcnet_init.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 32768
  %.not2.i = icmp eq i32 %i.g, 0
  br i1 %.not2.i, label %trace_pcnet_init.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.18, ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %i.c) #10
  %.pre = load i16, ptr %i.a, align 4
  br label %trace_pcnet_init.exit

trace_pcnet_init.exit:                            ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.h = phi i16 [ %i.b, %bb.a ], [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = and i16 %i.h, 256
  %.not78 = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12984 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 13000 ; 2 uses
  br i1 %.not78, label %bb.f, label %bb.e

bb.e:                                             ; preds = %trace_pcnet_init.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %1, i8 0, i64 28, i1 false), !annotation !9
  %i.l = load ptr, ptr %i.j, align 8
  %i.m = load ptr, ptr %i.k, align 8
  %i.n = load i32, ptr %.in.in, align 2
  %i.o = zext i32 %i.n to i64
  call void %i.l(ptr noundef %i.m, i64 noundef %i.o, ptr noundef nonnull %1, i32 noundef 28, i32 noundef 0) #10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 2
  %i.r = lshr i8 %i.q, 4
  %i.s = zext nneg i8 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.u = load i8, ptr %i.t, align 1
  %i.v = lshr i8 %i.u, 4
  %i.w = zext nneg i8 %i.v to i32
  %i.x = load <10 x i16>, ptr %1, align 4
  %i.y = shufflevector <10 x i16> %i.x, <10 x i16> poison, <8 x i32> <i32 0, i32 2, i32 3, i32 4, i32 6, i32 7, i32 8, i32 9>
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i32, ptr %i.ab, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.g

bb.f:                                             ; preds = %trace_pcnet_init.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false), !annotation !9
  %i.ad = load ptr, ptr %i.j, align 8
  %i.ae = load ptr, ptr %i.k, align 8
  %i.af = load i32, ptr %.in.in, align 2
  %i.ag = zext i32 %i.af to i64
  call void %i.ad(ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef nonnull %2, i32 noundef 24, i32 noundef 0) #10
  %i.ah = load <8 x i16>, ptr %2, align 16
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load i32, ptr %i.ai, align 16           ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = lshr i32 %i.aj, 29
  %i.an = lshr i32 %i.al, 29
  %i.ao = and i32 %i.aj, 16777215
  %i.ap = and i32 %i.al, 16777215
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.077 = phi i32 [ %i.s, %bb.e ], [ %i.am, %bb.f ] ; 3 uses
  %.076 = phi i32 [ %i.w, %bb.e ], [ %i.an, %bb.f ] ; 3 uses
  %.074 = phi i32 [ %i.aa, %bb.e ], [ %i.ao, %bb.f ] ; 2 uses
  %.0 = phi i32 [ %i.ac, %bb.e ], [ %i.ap, %bb.f ] ; 2 uses
  %i.aq = phi <8 x i16> [ %i.y, %bb.e ], [ %i.ah, %bb.f ]
  %i.ar = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i83 = icmp eq i32 %i.ar, 0
  br i1 %.not.i83, label %trace_pcnet_rlen_tlen.exit, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.as = load i16, ptr @_TRACE_PCNET_RLEN_TLEN_DSTATE, align 2
  %.not2.i84 = icmp eq i16 %i.as, 0
  br i1 %.not2.i84, label %trace_pcnet_rlen_tlen.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = load i32, ptr @qemu_loglevel, align 4
  %i.au = and i32 %i.at, 32768
  %.not3.i = icmp eq i32 %i.au, 0
  br i1 %.not3.i, label %trace_pcnet_rlen_tlen.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.19, ptr noundef nonnull %0, i32 noundef range(i32 0, 16) %.077, i32 noundef range(i32 0, 16) %.076) #10
  br label %trace_pcnet_rlen_tlen.exit

trace_pcnet_rlen_tlen.exit:                       ; preds = %bb.g, %bb.h, %bb.i, %bb.j
  %3 = call i32 @llvm.umin.i32(i32 %.077, i32 9)
  %i.av = shl nuw nsw i32 1, %3                   ; 2 uses
  %i.aw = trunc nuw nsw i32 %i.av to i16          ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8420
  store i16 %i.aw, ptr %i.ax, align 4
  %4 = call i32 @llvm.umin.i32(i32 %.076, i32 9)
  %i.ay = shl nuw nsw i32 1, %4                   ; 2 uses
  %i.az = trunc nuw nsw i32 %i.ay to i16          ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8424
  store i16 %i.az, ptr %i.ba, align 4
  %i.bb = shl nuw nsw i32 %.076, 12
  %i.bc = shl nuw nsw i32 %.077, 8
  %i.bd = or i32 %i.bb, %i.bc
  %i.be = trunc nuw i32 %i.bd to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8280
  store i16 %i.be, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8284
  %i.bh = shufflevector <8 x i16> %i.aq, <8 x i16> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 1, i32 2, i32 3, i32 0>
  store <8 x i16> %i.bh, ptr %i.bg, align 4
  %i.bi = load i16, ptr %i.a, align 4             ; 2 uses
  %i.bj = and i16 %i.bi, 256
  %.not81 = icmp eq i16 %i.bj, 0
  br i1 %.not81, label %bb.k, label %bb.l

bb.k:                                             ; preds = %trace_pcnet_rlen_tlen.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8272
  %i.bl = load i16, ptr %i.bk, align 4
  %i.bm = and i16 %i.bl, -256
  %i.bn = zext i16 %i.bm to i32
  %i.bo = shl nuw i32 %i.bn, 16                   ; 2 uses
  %i.bp = or i32 %i.bo, %.074
  %i.bq = or i32 %i.bo, %.0
  br label %bb.l

bb.l:                                             ; preds = %trace_pcnet_rlen_tlen.exit, %bb.k
  %.074.sink = phi i32 [ %i.bp, %bb.k ], [ %.074, %trace_pcnet_rlen_tlen.exit ] ; 2 uses
  %i.br = phi i32 [ %i.bq, %bb.k ], [ %.0, %trace_pcnet_rlen_tlen.exit ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8244
  store i32 %.074.sink, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8248
  store i32 %i.br, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8412
  store i16 %i.aw, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8416
  store i16 %i.az, ptr %i.bv, align 8
  %i.bw = lshr i16 %i.bi, 8
  %.lobit = and i16 %i.bw, 1
  %i.bx = zext nneg i16 %.lobit to i32
  %i.by = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i85 = icmp eq i32 %i.by, 0
  br i1 %.not.i85, label %trace_pcnet_ss32_rdra_tdra.exit, label %bb.m, !prof !11

bb.m:                                             ; preds = %bb.l
  %i.bz = load i16, ptr @_TRACE_PCNET_SS32_RDRA_TDRA_DSTATE, align 2
  %.not5.i = icmp eq i16 %i.bz, 0
  br i1 %.not5.i, label %trace_pcnet_ss32_rdra_tdra.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load i32, ptr @qemu_loglevel, align 4
  %i.cb = and i32 %i.ca, 32768
  %.not6.i = icmp eq i32 %i.cb, 0
  br i1 %.not6.i, label %trace_pcnet_ss32_rdra_tdra.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.20, ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %i.bx, i32 noundef %.074.sink, i32 noundef range(i32 0, 65536) %i.av, i32 noundef %i.br, i32 noundef range(i32 0, 65536) %i.ay) #10
  br label %trace_pcnet_ss32_rdra_tdra.exit

trace_pcnet_ss32_rdra_tdra.exit:                  ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8268 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 4
  %i.ce = and i16 %i.cd, -262
  %i.cf = or disjoint i16 %i.ce, 257
  store i16 %i.cf, ptr %i.cc, align 4
  %i.cg = load ptr, ptr %0, align 16
  %i.ch = call ptr @qemu_get_queue(ptr noundef %i.cg) #10
  call void @qemu_flush_queued_packets(ptr noundef %i.ch) #10
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pcnet_start(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8268 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8298
  %i.c = load i16, ptr %i.b, align 2              ; 2 uses
  %.pre.pre = load i16, ptr %i.a, align 4
  %i.d = shl i16 %i.c, 3
  %i.e = and i16 %i.d, 16
  %i.f = xor i16 %i.e, 16
  %i.g = shl i16 %i.c, 5
  %i.h = and i16 %i.g, 32
  %i.i = xor i16 %i.h, 32
  %.pre.pre.masked = and i16 %.pre.pre, -7
  %spec.select.masked = or i16 %.pre.pre.masked, %i.f
  %i.j = or i16 %spec.select.masked, %i.i
  %i.k = or disjoint i16 %i.j, 2
  store i16 %i.k, ptr %i.a, align 4
  tail call void @pcnet_poll_timer(ptr noundef nonnull %0)
  %i.l = load ptr, ptr %0, align 16
  %i.m = tail call ptr @qemu_get_queue(ptr noundef %i.l) #10
  tail call void @qemu_flush_queued_packets(ptr noundef %i.m) #10
  ret void
}

declare void @qemu_flush_queued_packets(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #7

declare void @timer_init_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!9 = !{!"auto-init"}
!10 = !{ptr @pcnet_rmd_load}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = distinct !{!12, !17}
!13 = distinct !{!13, !17}
!14 = distinct !{!14, !18}
!15 = distinct !{!15, !17}
!16 = distinct !{!16, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{ptr @pcnet_rmd_store}
!20 = !{!"branch_weights", i32 4001, i32 1}
!21 = distinct !{null}
end_hunk_0
