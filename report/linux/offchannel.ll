Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/offchannel?download=true
inline.NumInlined: 137
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ieee80211_reconfig_roc:bb.a
ieee80211_start_next_roc.exit:                    ; preds = %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @wiphy_work_flush(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ieee80211_roc_notify_destroy(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.cfg80211_tx_status, align 8 ; 8 uses
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = getelementptr i8, ptr %0, i64 72
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.b, i64 208
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.b, i64 112
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  store i64 %i.g, ptr %1, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr %i.i, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.p, align 8
  call void @cfg80211_mgmt_tx_status_ext(ptr noundef %i.e, ptr noundef nonnull %1, i32 noundef 3264) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  %i.q = load ptr, ptr %i.c, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 1856
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load ptr, ptr %i.a, align 8
  call void @ieee80211_free_txskb(ptr noundef %i.s, ptr noundef %i.t) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = getelementptr i8, ptr %0, i64 72
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %.not17 = icmp eq i64 %i.v, 0
  %i.w = getelementptr i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 16       ; 2 uses
  br i1 %.not17, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %0, i64 64
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void @cfg80211_remain_on_channel_expired(ptr noundef %i.y, i64 noundef %i.aa, ptr noundef %i.ac, i32 noundef 3264) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ad = getelementptr i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void @cfg80211_tx_mgmt_expired(ptr noundef %i.y, i64 noundef %i.v, ptr noundef %i.ae, i32 noundef 3264) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = load ptr, ptr %0, align 8               ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  store ptr %i.ag, ptr %i.ai, align 8
  store volatile ptr %i.ah, ptr %i.ag, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.af, align 8
  call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_remain_on_channel_expired(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_api_remain_on_channel_expired, i64 8), i1 false) #9
          to label %trace_api_remain_on_channel_expired.exit [label %cpumask_test_cpu.exit.i.i], !srcloc !15

cpumask_test_cpu.exit.i.i:                        ; preds = %bb.a
  %i.a = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #9, !srcloc !54
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.b) #9, !srcloc !16 ; 2 uses
  %i.d = icmp ult i8 %i.c, 2
  tail call void @llvm.assume(i1 %i.d)
  %i.e = trunc nuw i8 %i.c to i1
  br i1 %i.e, label %bb.b, label %trace_api_remain_on_channel_expired.exit

bb.b:                                             ; preds = %cpumask_test_cpu.exit.i.i
  %i.f = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.f, ptr elementtype(i64) %i.f) #9, !srcloc !17
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !18
  %i.g = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_api_remain_on_channel_expired, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 @__SCT__tp_func_api_remain_on_channel_expired(ptr noundef %i.i, ptr noundef %0) #10 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !19
  %i.k = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.k, ptr elementtype(i64) %i.k) #9, !srcloc !20
  br label %trace_api_remain_on_channel_expired.exit

trace_api_remain_on_channel_expired.exit:         ; preds = %bb.a, %cpumask_test_cpu.exit.i.i, %bb.d
  %i.l = getelementptr i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %0, i64 5784
  tail call void @wiphy_work_queue(ptr noundef %i.m, ptr noundef %i.n) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ieee80211_remain_on_channel(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readnone captures(none) %5) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 -16
  %i.b = getelementptr i8, ptr %1, i64 1840
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call fastcc i32 @ieee80211_start_roc_work(ptr noundef %i.c, ptr noundef %i.a, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef null, i32 noundef 0) #11, !srcloc !55
  ret i32 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @ieee80211_start_roc_work(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load i16, ptr %i.a, align 8
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1416
  %i.d = load i8, ptr %i.c, align 8, !range !11, !noundef !12
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 464
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 464
  %i.i = load ptr, ptr %i.h, align 8
  %.not100 = icmp eq ptr %i.i, null
  br i1 %.not100, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 8), align 8
  %i.k = tail call noalias noundef align 8 dereferenceable_or_null(88) ptr @__kmalloc_cache_noprof(ptr noundef %i.j, i32 noundef 3520, i64 noundef 88) #13 ; 39 uses
  %.not101 = icmp eq ptr %i.k, null
  br i1 %.not101, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not102 = icmp eq i32 %3, 0
  %spec.store.select = select i1 %.not102, i32 10, i32 %3 ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 24
  store ptr %2, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.k, i64 48       ; 4 uses
  store i32 %spec.store.select, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %i.k, i64 52
  store i32 %spec.store.select, ptr %i.n, align 4
  %i.o = getelementptr i8, ptr %i.k, i64 56
  store ptr %5, ptr %i.o, align 8
  %i.p = getelementptr i8, ptr %i.k, i64 80
  store i32 %6, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.k, i64 16
  store ptr %1, ptr %i.q, align 8
  %.not103 = icmp eq ptr %5, null
  br i1 %.not103, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i64 @ieee80211_mgmt_tx_cookie(ptr noundef %0) #10 ; 2 uses
  %i.s = getelementptr i8, ptr %i.k, i64 64
  store i64 %i.r, ptr %i.s, align 8
  store i64 %i.r, ptr %4, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = load i64, ptr %4, align 8
  %i.u = getelementptr i8, ptr %i.k, i64 72
  store i64 %i.t, ptr %i.u, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.v = getelementptr i8, ptr %0, i64 4744
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %0, i64 5744       ; 11 uses
  %i.y = load volatile ptr, ptr %i.x, align 8     ; 3 uses
  %.not117 = icmp eq ptr %i.y, %i.x
  br i1 %.not117, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %0, i64 4688
  %i.aa = load i64, ptr %i.z, align 8
  %.not105 = icmp eq i64 %i.aa, 0
  br i1 %.not105, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call zeroext i1 @ieee80211_is_radar_required(ptr noundef %0, ptr noundef %i.w) #10
  br i1 %i.ab, label %._crit_edge133, label %bb.k

._crit_edge133:                                   ; preds = %bb.j
  %.092125.pre = load ptr, ptr %i.x, align 8
  br label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %0, i64 464
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.ad, i64 464
  %i.af = load ptr, ptr %i.ae, align 8
  %.not106 = icmp eq ptr %i.af, null
  br i1 %.not106, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %0, i64 5752      ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  store ptr %i.k, ptr %i.ag, align 8
  store ptr %i.x, ptr %i.k, align 8
  %i.ai = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  store volatile ptr %i.k, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %0, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %0, i64 5672
  tail call void @wiphy_delayed_work_queue(ptr noundef %i.ak, ptr noundef %i.al, i64 noundef 0) #10
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.am = tail call fastcc i32 @drv_remain_on_channel(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %spec.store.select, i32 noundef %6) #11, !srcloc !57 ; 2 uses
  %.not107 = icmp eq i32 %i.am, 0
  br i1 %.not107, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @kfree(ptr noundef nonnull %i.k) #10
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.an = getelementptr i8, ptr %i.k, i64 32
  store i8 1, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %0, i64 5752      ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  store ptr %i.k, ptr %i.ao, align 8
  store ptr %i.x, ptr %i.k, align 8
  %i.aq = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  store volatile ptr %i.k, ptr %i.ap, align 8
  br label %.thread

bb.p:                                             ; preds = %._crit_edge133, %bb.i, %bb.h
  %.092125 = phi ptr [ %.092125.pre, %._crit_edge133 ], [ %i.y, %bb.i ], [ %i.y, %bb.h ] ; 2 uses
  %.not118126 = icmp eq ptr %.092125, %i.x
  br i1 %.not118126, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.ar = getelementptr i8, ptr %0, i64 464
  %i.as = getelementptr i8, ptr %0, i64 80        ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %ieee80211_recalc_sw_work.exit
  %.092128 = phi ptr [ %.092125, %.lr.ph ], [ %.092, %ieee80211_recalc_sw_work.exit ] ; 20 uses
  %.094127 = phi i1 [ true, %.lr.ph ], [ %.296, %ieee80211_recalc_sw_work.exit ] ; 3 uses
  %i.at = getelementptr i8, ptr %.092128, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %.not109 = icmp eq ptr %i.au, %2
  br i1 %.not109, label %bb.r, label %ieee80211_recalc_sw_work.exit

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr i8, ptr %.092128, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  %.not110 = icmp eq ptr %i.aw, %1
  br i1 %.not110, label %bb.s, label %ieee80211_recalc_sw_work.exit

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr i8, ptr %.092128, i64 32
  %i.ay = load i8, ptr %i.ax, align 8, !range !11, !noundef !12
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = load ptr, ptr %.092128, align 8         ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  store ptr %i.k, ptr %i.bb, align 8
  store ptr %i.ba, ptr %i.k, align 8
  %i.bc = getelementptr i8, ptr %i.k, i64 8
  store ptr %.092128, ptr %i.bc, align 8
  store volatile ptr %i.k, ptr %.092128, align 8
  br label %.thread

bb.u:                                             ; preds = %bb.s
  br i1 %.094127, label %bb.v, label %ieee80211_recalc_sw_work.exit

bb.v:                                             ; preds = %bb.u
  %i.bd = load ptr, ptr %i.ar, align 8
  %i.be = getelementptr i8, ptr %i.bd, i64 464
  %i.bf = load ptr, ptr %i.be, align 8
  %.not111 = icmp eq ptr %i.bf, null
  %i.bg = load volatile i64, ptr @jiffies, align 64 ; 5 uses
  br i1 %.not111, label %bb.w, label %.critedge.i

bb.w:                                             ; preds = %bb.v
  %i.bh = getelementptr i8, ptr %.092128, i64 40
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = sub i64 %i.bg, %i.bi
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = load ptr, ptr %i.as, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 240
  %i.bn = load i16, ptr %i.bm, align 16
  %i.bo = zext i16 %i.bn to i32
  %i.bp = load i32, ptr %i.m, align 8
  %i.bq = add i32 %i.bp, %i.bk
  %i.br = icmp ugt i32 %i.bq, %i.bo
  br i1 %i.br, label %ieee80211_recalc_sw_work.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = load ptr, ptr %.092128, align 8         ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  store ptr %i.k, ptr %i.bt, align 8
  store ptr %i.bs, ptr %i.k, align 8
  %i.bu = getelementptr i8, ptr %i.k, i64 8
  store ptr %.092128, ptr %i.bu, align 8
  store volatile ptr %i.k, ptr %.092128, align 8
  %i.bv = getelementptr i8, ptr %.092128, i64 36
  %i.bw = load i8, ptr %i.bv, align 4, !range !11, !noundef !12
  %i.bx = getelementptr i8, ptr %i.k, i64 36
  store i8 %i.bw, ptr %i.bx, align 4
  tail call fastcc void @ieee80211_handle_roc_started(ptr noundef nonnull %i.k, i64 noundef %i.bg) #11, !srcloc !58
  %i.by = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not40.i.i = icmp eq ptr %i.by, %i.x
  br i1 %.not40.i.i, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.x, %bb.ab
  %.042.i.i = phi ptr [ %.03343.i.i, %bb.ab ], [ %i.by, %bb.x ] ; 7 uses
  %.03441.i.i = phi i64 [ %.2.i.i, %bb.ab ], [ 9223372036854775807, %bb.x ] ; 3 uses
  %.03343.i.i = load ptr, ptr %.042.i.i, align 8  ; 2 uses
  %i.bz = getelementptr i8, ptr %.042.i.i, i64 32
  %i.ca = load i8, ptr %i.bz, align 8, !range !11, !noundef !12
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %msecs_to_jiffies.exit.i.i, label %ieee80211_end_finished_rocs.exit.i

msecs_to_jiffies.exit.i.i:                        ; preds = %.lr.ph.i.i
  %i.cc = getelementptr i8, ptr %.042.i.i, i64 40
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr i8, ptr %.042.i.i, i64 48
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = tail call i64 @__msecs_to_jiffies(i32 noundef %i.cf) #10
  %i.ch = sub i64 %i.cd, %i.bg
  %i.ci = add i64 %i.cg, %i.ch                    ; 2 uses
  %i.cj = getelementptr i8, ptr %.042.i.i, i64 33
  %i.ck = load i8, ptr %i.cj, align 1, !range !11, !noundef !12
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.z, label %bb.y

bb.y:                                             ; preds = %msecs_to_jiffies.exit.i.i
  %i.cm = getelementptr i8, ptr %.042.i.i, i64 34
  %i.cn = load i8, ptr %i.cm, align 2, !range !11, !noundef !12
  %i.co = trunc nuw i8 %i.cn to i1
  %i.cp = icmp slt i64 %i.ci, 1
  %or.cond.i.i = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %msecs_to_jiffies.exit.i.i
  tail call fastcc void @ieee80211_roc_notify_destroy(ptr noundef %.042.i.i) #11, !srcloc !26
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.cq = tail call i64 @llvm.smin.i64(i64 %.03441.i.i, i64 %i.ci)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.2.i.i = phi i64 [ %i.cq, %bb.aa ], [ %.03441.i.i, %bb.z ] ; 2 uses
  %.not.i.i = icmp eq ptr %.03343.i.i, %i.x
  br i1 %.not.i.i, label %ieee80211_end_finished_rocs.exit.i, label %.lr.ph.i.i, !llvm.loop !0

ieee80211_end_finished_rocs.exit.i:               ; preds = %bb.ab, %.lr.ph.i.i
  %.034.lcssa.i.i = phi i64 [ %.2.i.i, %bb.ab ], [ %.03441.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not.i = icmp eq i64 %.034.lcssa.i.i, 9223372036854775807
  br i1 %.not.i, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %ieee80211_end_finished_rocs.exit.i
  %i.cr = load ptr, ptr %i.as, align 8
  %i.cs = getelementptr i8, ptr %0, i64 5672
  tail call void @wiphy_delayed_work_queue(ptr noundef %i.cr, ptr noundef %i.cs, i64 noundef %.034.lcssa.i.i) #10
  br label %.thread

.critedge.i:                                      ; preds = %bb.v
  %i.ct = getelementptr i8, ptr %.092128, i64 34
  %i.cu = load i8, ptr %i.ct, align 2, !range !11, !noundef !12
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %.critedge._crit_edge.i, label %bb.ad

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.phi.trans.insert.i = getelementptr i8, ptr %.092128, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %msecs_to_jiffies.exit.i

bb.ad:                                            ; preds = %.critedge.i
  %i.cw = load i32, ptr %i.m, align 8
  %i.cx = getelementptr i8, ptr %.092128, i64 48
  %i.cy = load i32, ptr %i.cx, align 8            ; 2 uses
  %i.cz = icmp ugt i32 %i.cw, %i.cy
  br i1 %i.cz, label %ieee80211_recalc_sw_work.exit, label %msecs_to_jiffies.exit.i

msecs_to_jiffies.exit.i:                          ; preds = %bb.ad, %.critedge._crit_edge.i
  %i.da = phi i32 [ %.pre.i, %.critedge._crit_edge.i ], [ %i.cy, %bb.ad ]
  %i.db = getelementptr i8, ptr %.092128, i64 40
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = tail call i64 @__msecs_to_jiffies(i32 noundef %i.da) #10
  %i.de = sub i64 %i.dc, %i.bg
  %i.df = add i64 %i.de, %i.dd
  %i.dg = load i32, ptr %i.m, align 8
  %i.dh = trunc i64 %i.df to i32
  %i.di = icmp ugt i32 %i.dg, %i.dh
  br i1 %i.di, label %ieee80211_recalc_sw_work.exit, label %bb.ae

bb.ae:                                            ; preds = %msecs_to_jiffies.exit.i
  %i.dj = getelementptr i8, ptr %.092128, i64 34
  %i.dk = load ptr, ptr %.092128, align 8         ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  store ptr %i.k, ptr %i.dl, align 8
  store ptr %i.dk, ptr %i.k, align 8
  %i.dm = getelementptr i8, ptr %i.k, i64 8
  store ptr %.092128, ptr %i.dm, align 8
  store volatile ptr %i.k, ptr %.092128, align 8
  %i.dn = load i8, ptr %i.dj, align 2, !range !11, !noundef !12
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.dp = getelementptr i8, ptr %i.k, i64 34
  store i8 1, ptr %i.dp, align 2
  tail call fastcc void @ieee80211_handle_roc_started(ptr noundef nonnull %i.k, i64 noundef %i.bg) #11, !srcloc !59
  br label %.thread

ieee80211_recalc_sw_work.exit:                    ; preds = %msecs_to_jiffies.exit.i, %bb.ad, %bb.w, %bb.u, %bb.q, %bb.r
  %.296 = phi i1 [ %.094127, %bb.q ], [ %.094127, %bb.r ], [ false, %bb.u ], [ false, %bb.w ], [ false, %bb.ad ], [ false, %msecs_to_jiffies.exit.i ]
  %.092 = load ptr, ptr %.092128, align 8         ; 2 uses
  %.not118 = icmp eq ptr %.092, %i.x
  br i1 %.not118, label %._crit_edge, label %bb.q, !llvm.loop !56

._crit_edge:                                      ; preds = %ieee80211_recalc_sw_work.exit, %bb.p
  %i.dq = getelementptr i8, ptr %0, i64 5752      ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  store ptr %i.k, ptr %i.dq, align 8
  store ptr %i.x, ptr %i.k, align 8
  %i.ds = getelementptr i8, ptr %i.k, i64 8
  store ptr %i.dr, ptr %i.ds, align 8
  store volatile ptr %i.k, ptr %i.dr, align 8
  br label %.thread

.thread:                                          ; preds = %bb.af, %bb.ae, %bb.ac, %ieee80211_end_finished_rocs.exit.i, %bb.x, %bb.t, %._crit_edge, %bb.l, %bb.o, %bb.d, %bb.c, %bb.a, %bb.n
  %.0 = phi i32 [ -95, %bb.a ], [ 0, %bb.l ], [ %i.am, %bb.n ], [ -12, %bb.d ], [ -95, %bb.c ], [ 0, %bb.o ], [ 0, %._crit_edge ], [ 0, %bb.af ], [ 0, %bb.t ], [ 0, %bb.x ], [ 0, %ieee80211_end_finished_rocs.exit.i ], [ 0, %bb.ac ], [ 0, %bb.ae ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ieee80211_cancel_remain_on_channel(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 1840
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call fastcc i32 @ieee80211_cancel_roc(ptr noundef %i.b, i64 noundef %2, i1 noundef zeroext false) #11, !srcloc !60
end_hunk_0
