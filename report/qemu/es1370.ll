Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/es1370?download=true
inline.NumInlined: 43
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@es1370_write:bb.a
  tail call fastcc void @es1370_update_voices(ptr noundef %0, i32 noundef %i.j, i32 noundef %i.l)
  br label %trace_es1370_sample_count_wr.exit

bb.d:                                             ; preds = %es1370_fixup.exit
  %i.m = trunc i64 %2 to i32
  %i.n = and i32 %i.m, 15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3152
  store i32 %i.n, ptr %i.o, align 16
  br label %trace_es1370_sample_count_wr.exit

bb.e:                                             ; preds = %es1370_fixup.exit
  %i.p = trunc i64 %2 to i32                      ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3148 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4              ; 4 uses
  %i.s = and i32 %i.p, 256
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.u = load i32, ptr %i.t, align 8
  %i.v = and i32 %i.u, 256
  %.not13.i = icmp eq i32 %i.v, 0
  %i.w = and i32 %i.r, -5
  %spec.select.i = select i1 %.not13.i, i32 %i.r, i32 %i.w
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i43 = phi i32 [ %i.r, %bb.e ], [ %spec.select.i, %bb.f ] ; 3 uses
  %i.x = and i32 %i.p, 512
  %.not14.i = icmp eq i32 %i.x, 0
  br i1 %.not14.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = and i32 %i.z, 512
  %.not15.i = icmp eq i32 %i.aa, 0
  %i.ab = and i32 %.0.i43, -3
  %spec.select19.i = select i1 %.not15.i, i32 %.0.i43, i32 %i.ab
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i = phi i32 [ %.0.i43, %bb.g ], [ %spec.select19.i, %bb.h ] ; 3 uses
  %i.ac = and i32 %i.p, 1024
  %.not16.i = icmp eq i32 %i.ac, 0
  br i1 %.not16.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = and i32 %i.ae, 1024
  %.not17.i = icmp eq i32 %i.af, 0
  %i.ag = and i32 %.1.i, -2
  %spec.select20.i = select i1 %.not17.i, i32 %.1.i, i32 %i.ag
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.i = phi i32 [ %.1.i, %bb.i ], [ %spec.select20.i, %bb.j ] ; 4 uses
  %.not18.i = icmp eq i32 %.2.i, %i.r
  br i1 %.not18.i, label %es1370_maybe_lower_irq.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = and i32 %.2.i, 7
  %i.ai = icmp ne i32 %i.ah, 0                    ; 2 uses
  %i.aj = or i32 %.2.i, -2147483648
  %i.ak = and i32 %.2.i, 2147483640
  %.sink.i.i = select i1 %i.ai, i32 %i.aj, i32 %i.ak
  store i32 %.sink.i.i, ptr %i.q, align 4
  %i.al = zext i1 %i.ai to i32
  tail call void @pci_set_irq(ptr noundef nonnull %0, i32 noundef %i.al) #5
  br label %es1370_maybe_lower_irq.exit

es1370_maybe_lower_irq.exit:                      ; preds = %bb.k, %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3144
  %i.an = load i32, ptr %i.am, align 8
  tail call fastcc void @es1370_update_voices(ptr noundef nonnull %0, i32 noundef %i.an, i32 noundef %i.p)
  br label %trace_es1370_sample_count_wr.exit

bb.m:                                             ; preds = %es1370_fixup.exit, %es1370_fixup.exit, %es1370_fixup.exit
  %i.ao = add nsw i64 %i.i, -36
  %i.ap = lshr i64 %i.ao, 2                       ; 2 uses
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %i.a, i64 %i.ap
  %i.ar = trunc i64 %2 to i32
  %i.as = and i32 %i.ar, 65535                    ; 2 uses
  %i.at = mul nuw i32 %i.as, 65537                ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 %i.at, ptr %i.au, align 4
  %i.av = trunc nuw nsw i64 %i.ap to i32
  %i.aw = and i32 %i.at, 65535
  %i.ax = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i44 = icmp eq i32 %i.ax, 0
  br i1 %.not.i44, label %trace_es1370_sample_count_wr.exit, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.ay = load i16, ptr @_TRACE_ES1370_SAMPLE_COUNT_WR_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.ay, 0
  br i1 %.not3.i, label %trace_es1370_sample_count_wr.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load i32, ptr @qemu_loglevel, align 4
  %i.ba = and i32 %i.az, 32768
  %.not4.i = icmp eq i32 %i.ba, 0
  br i1 %.not4.i, label %trace_es1370_sample_count_wr.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.26, i32 noundef %i.av, i32 noundef range(i32 0, 65536) %i.as, i32 noundef range(i32 0, 65536) %i.aw) #5
  br label %trace_es1370_sample_count_wr.exit

bb.q:                                             ; preds = %es1370_fixup.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 3096
  br label %bb.s

bb.r:                                             ; preds = %es1370_fixup.exit, %es1370_fixup.exit
  %i.bc = add nsw i64 %i.i, -3120
  %i.bd = lshr i64 %i.bc, 3
  %i.be = getelementptr inbounds nuw [20 x i8], ptr %i.a, i64 %i.bd
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0 = phi ptr [ %i.bb, %bb.q ], [ %i.be, %bb.r ] ; 2 uses
  %i.bf = trunc i64 %2 to i32                     ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0, i64 12
  store i32 %i.bf, ptr %i.bg, align 4
  %i.bh = ptrtoint ptr %.0 to i64
  %i.bi = ptrtoint ptr %i.a to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 20
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i45 = icmp eq i32 %i.bm, 0
  br i1 %.not.i45, label %trace_es1370_sample_count_wr.exit, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  %i.bn = load i16, ptr @_TRACE_ES1370_FRAME_ADDRESS_WR_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.bn, 0
  br i1 %.not2.i, label %trace_es1370_sample_count_wr.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = load i32, ptr @qemu_loglevel, align 4
  %i.bp = and i32 %i.bo, 32768
  %.not3.i46 = icmp eq i32 %i.bp, 0
  br i1 %.not3.i46, label %trace_es1370_sample_count_wr.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.27, i32 noundef %i.bl, i32 noundef %i.bf) #5
  br label %trace_es1370_sample_count_wr.exit

bb.w:                                             ; preds = %es1370_fixup.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3096
  br label %bb.y

bb.x:                                             ; preds = %es1370_fixup.exit, %es1370_fixup.exit
  %i.br = add nsw i64 %i.i, -3124
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw [20 x i8], ptr %i.a, i64 %i.bs
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1 = phi ptr [ %i.bt, %bb.x ], [ %i.bq, %bb.w ] ; 3 uses
  %i.bu = trunc i64 %2 to i32                     ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.1, i64 16
  store i32 %i.bu, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %.1, i64 4
  store i32 0, ptr %i.bw, align 4
  %i.bx = ptrtoint ptr %.1 to i64
  %i.by = ptrtoint ptr %i.a to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = sdiv exact i64 %i.bz, 20
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = lshr i32 %i.bu, 16
  %i.cd = and i32 %i.bu, 65535
  %i.ce = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i47 = icmp eq i32 %i.ce, 0
  br i1 %.not.i47, label %trace_es1370_sample_count_wr.exit, label %bb.z, !prof !7

bb.z:                                             ; preds = %bb.y
  %i.cf = load i16, ptr @_TRACE_ES1370_FRAME_COUNT_WR_DSTATE, align 2
  %.not3.i48 = icmp eq i16 %i.cf, 0
  br i1 %.not3.i48, label %trace_es1370_sample_count_wr.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = load i32, ptr @qemu_loglevel, align 4
  %i.ch = and i32 %i.cg, 32768
  %.not4.i49 = icmp eq i32 %i.ch, 0
  br i1 %.not4.i49, label %trace_es1370_sample_count_wr.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.28, i32 noundef %i.cb, i32 noundef range(i32 0, 65536) %i.cc, i32 noundef range(i32 0, 65536) %i.cd) #5
  br label %trace_es1370_sample_count_wr.exit

trace_es1370_sample_count_wr.exit:                ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.v, %bb.u, %bb.t, %bb.s, %bb.p, %bb.o, %bb.n, %bb.m, %es1370_fixup.exit, %es1370_maybe_lower_irq.exit, %bb.d, %bb.c
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @es1370_update_voices(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
.peel.begin:
  %3 = alloca i32, align 4                        ; 8 uses
  %4 = alloca i32, align 4                        ; 10 uses
  %5 = alloca %struct.audsettings, align 4        ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3160 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2768 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3120 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3136 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3144 ; 4 uses
  %i.h = and i32 %2, 3                            ; 2 uses
  %i.i = load i32, ptr %i.a, align 8
  %i.j = and i32 %i.i, 3
  call void @es1370_dac1_calc_freq(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  %.not.peel = icmp eq i32 %i.j, %i.h
  %.pre.a = load i32, ptr %4, align 4             ; 4 uses
  %i.k = load i32, ptr %3, align 4
  %.not59.peel = icmp eq i32 %i.k, %.pre.a
  %or.cond = select i1 %.not.peel, i1 %.not59.peel, i1 false
  br i1 %or.cond, label %bb.f, label %bb.a

bb.a:                                             ; preds = %.peel.begin
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.m = and i32 %2, 1                            ; 3 uses
  %i.n = lshr i32 %i.h, 1
  %i.o = add nuw nsw i32 %i.m, %i.n               ; 2 uses
  store i32 %i.o, ptr %i.l, align 8
  %i.p = and i32 %2, 2
  %.not60.peel = icmp eq i32 %i.p, 0              ; 2 uses
  %i.q = select i1 %.not60.peel, ptr @.str.15, ptr @.str.14
  %.not61.peel = icmp eq i32 %i.m, 0
  %i.r = select i1 %.not61.peel, ptr @.str.17, ptr @.str.16
  %i.s = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.peel = icmp eq i32 %i.s, 0
  br i1 %.not.i.peel, label %trace_es1370_stream_format.exit.peel, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.t = load i16, ptr @_TRACE_ES1370_STREAM_FORMAT_DSTATE, align 2
  %.not4.i.peel = icmp eq i16 %i.t, 0
  br i1 %.not4.i.peel, label %trace_es1370_stream_format.exit.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr @qemu_loglevel, align 4
  %i.v = and i32 %i.u, 32768
  %.not5.i.peel = icmp eq i32 %i.v, 0
  br i1 %.not5.i.peel, label %trace_es1370_stream_format.exit.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.22, i32 noundef range(i32 0, 3) 0, i32 noundef %.pre.a, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, i32 noundef range(i32 0, -2147483647) %i.o) #5
  br label %trace_es1370_stream_format.exit.peel

trace_es1370_stream_format.exit.peel:             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.not62.peel = icmp eq i32 %.pre.a, 0
  br i1 %.not62.peel, label %bb.f, label %bb.e

bb.e:                                             ; preds = %trace_es1370_stream_format.exit.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.w, align 4, !annotation !8
  store i32 %.pre.a, ptr %5, align 4
  %i.x = shl nuw nsw i32 1, %i.m
  store i32 %i.x, ptr %i.b, align 4
  %i.y = select i1 %.not60.peel, i32 0, i32 3
  store i32 %i.y, ptr %i.c, align 4
  %i.z = load ptr, ptr %i.d, align 16
  %i.aa = load ptr, ptr %i.e, align 16
  %i.ab = call ptr @audio_be_open_out(ptr noundef %i.z, ptr noundef %i.aa, ptr noundef nonnull @.str.20, ptr noundef nonnull %0, ptr noundef nonnull @es1370_dac1_callback, ptr noundef nonnull %5) #5
  store ptr %i.ab, ptr %i.e, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.f

bb.f:                                             ; preds = %.peel.begin, %bb.e, %trace_es1370_stream_format.exit.peel
  %6 = load i32, ptr %i.g, align 8
  %i.ac = xor i32 %6, %1
  %i.ad = and i32 %i.ac, 64
  %.not64.peel = icmp eq i32 %i.ad, 0
  br i1 %.not64.peel, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %i.a, align 8
  %i.af = xor i32 %i.ae, %2
  %i.ag = and i32 %i.af, 2048
  %.not65.peel = icmp eq i32 %i.ag, 0
  br i1 %.not65.peel, label %.peel.next, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = and i32 %1, 64
  %.not66.peel = icmp ne i32 %i.ah, 0
  %i.ai = and i32 %2, 2048
  %.not67.peel = icmp eq i32 %i.ai, 0
  %i.aj = and i1 %.not66.peel, %.not67.peel
  %i.ak = load ptr, ptr %i.d, align 16
  %i.al = load ptr, ptr %i.e, align 16
  call void @audio_be_set_active_out(ptr noundef %i.ak, ptr noundef %i.al, i1 noundef zeroext %i.aj) #5
  br label %.peel.next

.peel.next:                                       ; preds = %bb.g, %bb.h
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 3128 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 3128
  %i.am = lshr i32 %2, 2                          ; 2 uses
  %i.an = and i32 %i.am, 3                        ; 2 uses
  %10 = load i32, ptr %i.a, align 8
  %i.ao = lshr i32 %10, 2
  %i.ap = and i32 %i.ao, 3
  call void @es1370_dac2_and_adc_calc_freq(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  %.not = icmp eq i32 %i.ap, %i.an
  %.pre70 = load i32, ptr %4, align 4             ; 5 uses
  %11 = load i32, ptr %3, align 4
  %.not59.a = icmp eq i32 %11, %.pre70
  %or.cond73 = select i1 %.not, i1 %.not59.a, i1 false
  br i1 %or.cond73, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.peel.next
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3076
  %i.ar = and i32 %i.am, 1                        ; 3 uses
  %i.as = lshr i32 %i.an, 1
  %i.at = add nuw nsw i32 %i.ar, %i.as            ; 2 uses
  store i32 %i.at, ptr %i.aq, align 4
  %i.au = and i32 %2, 8
  %.not60.a = icmp eq i32 %i.au, 0                ; 2 uses
  %i.av = select i1 %.not60.a, ptr @.str.15, ptr @.str.14
  %.not61.a = icmp eq i32 %i.ar, 0
  %i.aw = select i1 %.not61.a, ptr @.str.17, ptr @.str.16
  %i.ax = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.a = icmp eq i32 %i.ax, 0
  br i1 %.not.i.a, label %trace_es1370_stream_format.exit, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ay = load i16, ptr @_TRACE_ES1370_STREAM_FORMAT_DSTATE, align 2
  %.not4.i.a = icmp eq i16 %i.ay, 0
  br i1 %.not4.i.a, label %trace_es1370_stream_format.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr @qemu_loglevel, align 4
  %i.ba = and i32 %i.az, 32768
  %.not5.i.a = icmp eq i32 %i.ba, 0
  br i1 %.not5.i.a, label %trace_es1370_stream_format.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.22, i32 noundef range(i32 0, 3) 1, i32 noundef %.pre70, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, i32 noundef range(i32 0, -2147483647) %i.at) #5
  %.pre71 = load i32, ptr %4, align 4
  br label %trace_es1370_stream_format.exit

trace_es1370_stream_format.exit:                  ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %12 = phi i32 [ %.pre70, %bb.i ], [ %.pre70, %bb.j ], [ %.pre70, %bb.k ], [ %.pre71, %bb.l ] ; 2 uses
  %.not62 = icmp eq i32 %12, 0
  br i1 %.not62, label %bb.n, label %bb.m

bb.m:                                             ; preds = %trace_es1370_stream_format.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store i32 0, ptr %7, align 4, !annotation !8
  store i32 %12, ptr %5, align 4
  %i.bb = shl nuw nsw i32 1, %i.ar
  store i32 %i.bb, ptr %i.b, align 4
  %i.bc = select i1 %.not60.a, i32 0, i32 3
  store i32 %i.bc, ptr %i.c, align 4
  %i.bd = load ptr, ptr %i.d, align 16
  %i.be = load ptr, ptr %8, align 8
  %i.bf = call ptr @audio_be_open_out(ptr noundef %i.bd, ptr noundef %i.be, ptr noundef nonnull @.str.19, ptr noundef nonnull %0, ptr noundef nonnull @es1370_dac2_callback, ptr noundef nonnull %5) #5
  store ptr %i.bf, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.n

bb.n:                                             ; preds = %.peel.next, %trace_es1370_stream_format.exit, %bb.m
  %13 = load i32, ptr %i.g, align 8
  %i.bg = xor i32 %13, %1
  %i.bh = and i32 %i.bg, 32
  %.not64.a = icmp eq i32 %i.bh, 0
  br i1 %.not64.a, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = load i32, ptr %i.a, align 8
  %i.bj = xor i32 %i.bi, %2
  %i.bk = and i32 %i.bj, 4096
  %.not65 = icmp eq i32 %i.bk, 0
  br i1 %.not65, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bl = and i32 %1, 32
  %.not66 = icmp eq i32 %i.bl, 0
  %i.bm = and i32 %2, 4096
  %.not67 = icmp eq i32 %i.bm, 0
  %14 = select i1 %.not66, i1 false, i1 %.not67
  %i.bn = load ptr, ptr %i.d, align 16
  %i.bo = load ptr, ptr %9, align 8
  call void @audio_be_set_active_out(ptr noundef %i.bn, ptr noundef %i.bo, i1 noundef zeroext %14) #5
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %15 = lshr i32 %2, 4                            ; 2 uses
  %16 = and i32 %15, 3                            ; 2 uses
  %17 = load i32, ptr %i.a, align 8
  %i.bp = lshr i32 %17, 4
  %i.bq = and i32 %i.bp, 3
  call void @es1370_dac2_and_adc_calc_freq(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #5
  %.not.1 = icmp eq i32 %i.bq, %16
  %.pre70.1 = load i32, ptr %4, align 4           ; 5 uses
  %18 = load i32, ptr %3, align 4
  %.not59.1 = icmp eq i32 %18, %.pre70.1
  %or.cond73.1 = select i1 %.not.1, i1 %.not59.1, i1 false
  br i1 %or.cond73.1, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.br = and i32 %15, 1                          ; 3 uses
  %i.bs = lshr i32 %16, 1
  %i.bt = add nuw nsw i32 %i.br, %i.bs            ; 2 uses
  store i32 %i.bt, ptr %19, align 8
  %i.bu = and i32 %2, 32
  %.not60.1 = icmp eq i32 %i.bu, 0                ; 2 uses
  %i.bv = select i1 %.not60.1, ptr @.str.15, ptr @.str.14
  %.not61.1 = icmp eq i32 %i.br, 0
  %i.bw = select i1 %.not61.1, ptr @.str.17, ptr @.str.16
  %i.bx = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.1 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.1, label %trace_es1370_stream_format.exit.1, label %bb.s, !prof !7

bb.s:                                             ; preds = %bb.r
  %i.by = load i16, ptr @_TRACE_ES1370_STREAM_FORMAT_DSTATE, align 2
  %.not4.i.1 = icmp eq i16 %i.by, 0
  br i1 %.not4.i.1, label %trace_es1370_stream_format.exit.1, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = load i32, ptr @qemu_loglevel, align 4
  %i.ca = and i32 %i.bz, 32768
  %.not5.i.1 = icmp eq i32 %i.ca, 0
  br i1 %.not5.i.1, label %trace_es1370_stream_format.exit.1, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.22, i32 noundef range(i32 0, 3) 2, i32 noundef %.pre70.1, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bw, i32 noundef range(i32 0, -2147483647) %i.bt) #5
  %.pre71.1 = load i32, ptr %4, align 4
  br label %trace_es1370_stream_format.exit.1

trace_es1370_stream_format.exit.1:                ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %20 = phi i32 [ %.pre70.1, %bb.r ], [ %.pre70.1, %bb.s ], [ %.pre70.1, %bb.t ], [ %.pre71.1, %bb.u ] ; 2 uses
  %.not62.1 = icmp eq i32 %20, 0
  br i1 %.not62.1, label %bb.w, label %bb.v

bb.v:                                             ; preds = %trace_es1370_stream_format.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  store i32 0, ptr %7, align 4, !annotation !8
  store i32 %20, ptr %5, align 4
  %i.cb = shl nuw nsw i32 1, %i.br
  store i32 %i.cb, ptr %i.b, align 4
  %i.cc = select i1 %.not60.1, i32 0, i32 3
  store i32 %i.cc, ptr %i.c, align 4
  %i.cd = load ptr, ptr %i.d, align 16
  %i.ce = load ptr, ptr %i.f, align 16
  %i.cf = call ptr @audio_be_open_in(ptr noundef %i.cd, ptr noundef %i.ce, ptr noundef nonnull @.str.18, ptr noundef nonnull %0, ptr noundef nonnull @es1370_adc_callback, ptr noundef nonnull %5) #5
  store ptr %i.cf, ptr %i.f, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %trace_es1370_stream_format.exit.1, %bb.q
  %21 = load i32, ptr %i.g, align 8
  %i.cg = xor i32 %21, %1
  %i.ch = and i32 %i.cg, 16
  %.not64.1 = icmp eq i32 %i.ch, 0
  br i1 %.not64.1, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.w
  %i.ci = and i32 %1, 16
  %.not66.1 = icmp ne i32 %i.ci, 0
  %i.cj = load ptr, ptr %i.d, align 16
  %i.ck = load ptr, ptr %i.f, align 16
  call void @audio_be_set_active_in(ptr noundef %i.cj, ptr noundef %i.ck, i1 noundef zeroext %.not66.1) #5
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %.thread
  store i32 %1, ptr %i.g, align 8
  store i32 %2, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret void
}

declare ptr @audio_be_open_in(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @es1370_adc_callback(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  tail call fastcc void @es1370_run_channel(ptr noundef %0, i64 noundef 2, i32 noundef %1)
  ret void
}

declare ptr @audio_be_open_out(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @es1370_dac2_callback(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  tail call fastcc void @es1370_run_channel(ptr noundef %0, i64 noundef 1, i32 noundef %1)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @es1370_dac1_callback(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  tail call fastcc void @es1370_run_channel(ptr noundef %0, i64 noundef 0, i32 noundef %1)
  ret void
}

declare void @audio_be_set_active_in(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @audio_be_set_active_out(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @es1370_dac1_calc_freq(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3144
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 12
  %i.d = and i32 %i.c, 3
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @dac1_samplerate, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4
  store i32 %i.g, ptr %2, align 4
  %i.h = lshr i32 %1, 12
  %i.i = and i32 %i.h, 3
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @dac1_samplerate, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4
  store i32 %i.l, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @es1370_dac2_and_adc_calc_freq(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) #3 {
bb.a:
  %i.a = lshr i32 %1, 16
  %i.b = and i32 %i.a, 8191
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3144
  %i.d = load i32, ptr %i.c, align 8
  %i.e = lshr i32 %i.d, 16
  %i.f = and i32 %i.e, 8191
  %i.g = add nuw nsw i32 %i.b, 2
  %i.h = udiv i32 1411200, %i.g
  store i32 %i.h, ptr %3, align 4
  %i.i = add nuw nsw i32 %i.f, 2
  %i.j = udiv i32 1411200, %i.i
  store i32 %i.j, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @es1370_run_channel(ptr noundef %0, i64 noundef range(i64 0, 3) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3148 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3056
  %i.e = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %1 ; 6 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr @es1370_chan_bits, i64 %1 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3144
  %i.h = load i32, ptr %i.g, align 8
  %i.i = load i32, ptr %i.f, align 8
  %i.j = and i32 %i.i, %i.h
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3160 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, %i.l
  %.not28 = icmp eq i32 %i.o, 0
  br i1 %.not28, label %bb.c, label %bb.ac

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr %i.e, align 4              ; 2 uses
  %notmask = shl nsw i32 -1, %i.p
  %i.q = and i32 %notmask, %2                     ; 2 uses
  %.not29 = icmp eq i32 %i.q, 0
  br i1 %.not29, label %bb.ac, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = and i32 %i.s, %i.l
  %.not30 = icmp eq i32 %i.t, 0
  br i1 %.not30, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, %i.c
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi i8 [ 0, %bb.d ], [ %i.y, %bb.e ]     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ab = load i32, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = and i32 %i.ad, 65535                    ; 5 uses
  %i.af = lshr i32 %i.ad, 16
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = shl i32 %i.ag, %i.p                     ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %i.ak = lshr i32 %i.aj, 16                      ; 4 uses
  %i.al = and i32 %i.aj, 65535                    ; 6 uses
  %i.am = icmp samesign ult i32 %i.al, %i.ak
  br i1 %i.am, label %es1370_transfer_audio.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = sub nuw nsw i32 %i.al, %i.ak
  %i.aq = shl nuw nsw i32 %i.ap, 2
  %i.ar = add nuw nsw i32 %i.aq, 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 4 uses
  %i.at = load i32, ptr %i.as, align 4            ; 2 uses
  %i.au = add i32 %i.ar, %i.at
  %i.av = trunc nuw nsw i64 %1 to i32             ; 2 uses
  %i.aw = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.ah)
  %i.ax = tail call i32 @llvm.smin.i32(i32 range(i32 1, 0) %i.q, i32 %i.aw) ; 3 uses
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %i.az = shl nuw nsw i32 %i.ak, 2
  %i.ba = add i32 %i.ao, %i.az
  %i.bb = add i32 %i.ba, %i.at                    ; 2 uses
  %i.bc = icmp eq i64 %1, 2
  br i1 %i.bc, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %bb.g
  %.not128151.i = icmp eq i32 %i.ax, 0
  br i1 %.not128151.i, label %.thread.i, label %.lr.ph155.i

.lr.ph155.i:                                      ; preds = %.preheader.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3136
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 576
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph155.i
  %.0154.i = phi i64 [ %i.ay, %.lr.ph155.i ], [ %i.bo, %bb.i ] ; 2 uses
  %.0109153.i = phi i32 [ %i.bb, %.lr.ph155.i ], [ %i.bp, %bb.i ] ; 2 uses
  %.0115152.i = phi i32 [ 0, %.lr.ph155.i ], [ %i.bq, %bb.i ] ; 2 uses
  %i.bg = call i64 @llvm.umin.i64(i64 %.0154.i, i64 4096)
  %i.bh = load ptr, ptr %i.bd, align 16
  %i.bi = load ptr, ptr %i.be, align 16
  %i.bj = call i64 @audio_be_read(ptr noundef %i.bh, ptr noundef %i.bi, ptr noundef nonnull %i.a, i64 noundef %i.bg) #5 ; 2 uses
  %i.bk = trunc i64 %i.bj to i32                  ; 3 uses
  %.not129.i = icmp eq i32 %i.bk, 0
  br i1 %.not129.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = zext i32 %.0109153.i to i64
  %sext130.i = shl i64 %i.bj, 32
  %i.bm = ashr exact i64 %sext130.i, 32           ; 2 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !9
  fence seq_cst
  %i.bn = call i32 @address_space_rw(ptr noundef nonnull %i.bf, i64 noundef range(i64 0, 4294967296) %i.bl, i64 4294967296, ptr noundef nonnull %i.a, i64 noundef range(i64 -2147483648, 2147483648) %i.bm, i1 noundef zeroext true) #5 ; 0 uses
  %i.bo = sub i64 %.0154.i, %i.bm                 ; 2 uses
  %i.bp = add i32 %.0109153.i, %i.bk
  %i.bq = add i32 %.0115152.i, %i.bk              ; 2 uses
  %.not128.i = icmp eq i64 %i.bo, 0
  br i1 %.not128.i, label %.thread.i, label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3120
  %sext.i = shl nuw nsw i64 %1, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %sext.i
  %i.bt = load ptr, ptr %i.bs, align 8
  %.not145.i = icmp eq i32 %i.ax, 0
  br i1 %.not145.i, label %.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2768
end_hunk_0
