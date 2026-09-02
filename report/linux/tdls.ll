Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tdls?download=true
inline.NumInlined: 218
inline.NumDeleted: 95
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ieee80211_process_tdls_channel_switch:bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_teardown_tdls_peers(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 6 uses
  tail call void @__rcu_read_lock() #9
  %i.b = getelementptr i8, ptr %i.a, i64 1856     ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 1632     ; 2 uses
  %i.e = load volatile ptr, ptr %i.d, align 8     ; 2 uses
  %.not24 = icmp eq ptr %i.e, %i.d
  br i1 %.not24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = getelementptr i8, ptr %i.a, i64 5072
  %i.h = getelementptr i8, ptr %i.a, i64 5080
  %i.i = getelementptr i8, ptr %i.a, i64 1880
  %i.j = getelementptr i8, ptr %i.a, i64 1848
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %ieee80211_tdls_oper_request.exit
  %.025 = phi ptr [ %i.e, %.lr.ph ], [ %i.af, %ieee80211_tdls_oper_request.exit ] ; 7 uses
  %i.k = getelementptr i8, ptr %.025, i64 2784
  %i.l = getelementptr i8, ptr %.025, i64 2808
  %i.m = load i8, ptr %i.l, align 8, !range !12, !noundef !13
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %ieee80211_tdls_oper_request.exit

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %.025, i64 80
  %i.p = load ptr, ptr %i.o, align 8
  %.not21 = icmp eq ptr %i.p, %i.a
  br i1 %.not21, label %bb.d, label %ieee80211_tdls_oper_request.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %.025, i64 204
  %i.r = load i8, ptr %i.q, align 4, !range !12, !noundef !13
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %test_sta_flag.exit, label %ieee80211_tdls_oper_request.exit

test_sta_flag.exit:                               ; preds = %bb.d
  %i.t = getelementptr i8, ptr %.025, i64 216
  %i.u = load volatile i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, 8
  %.not22 = icmp eq i64 %i.v, 0
  br i1 %.not22, label %ieee80211_tdls_oper_request.exit, label %bb.e

bb.e:                                             ; preds = %test_sta_flag.exit
  %i.w = getelementptr i8, ptr %.025, i64 1646
  %i.x = load i8, ptr %i.w, align 2
  %i.y = zext i8 %i.x to i32
  %i.z = load i32, ptr %i.f, align 8
  %.not23 = icmp eq i32 %i.z, %i.y
  br i1 %.not23, label %bb.f, label %ieee80211_tdls_oper_request.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.g, align 8
  %.not.i = icmp eq i32 %i.aa, 2
  br i1 %.not.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = load i8, ptr %i.h, align 8, !range !12, !noundef !13
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ad = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %i.i, i32 noundef 2) #11 ; 0 uses
  br label %ieee80211_tdls_oper_request.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.j, align 8
  tail call void @cfg80211_tdls_oper_request(ptr noundef %i.ae, ptr noundef %i.k, i32 noundef 2, i16 noundef zeroext 26, i32 noundef 2080) #9
  br label %ieee80211_tdls_oper_request.exit

ieee80211_tdls_oper_request.exit:                 ; preds = %bb.i, %bb.h, %bb.e, %bb.b, %bb.c, %bb.d, %test_sta_flag.exit
  %i.af = load volatile ptr, ptr %.025, align 8   ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 1632
  %.not = icmp eq ptr %i.af, %i.ah
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !63

._crit_edge:                                      ; preds = %ieee80211_tdls_oper_request.exit, %bb.a
  tail call void @__rcu_read_unlock() #9
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_tdls_handle_disconnect(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #9
  %i.a = getelementptr i8, ptr %0, i64 5072       ; 2 uses
  %i.b = tail call ptr @ieee80211_find_sta(ptr noundef %i.a, ptr noundef %1) #9 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !12, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @__rcu_read_unlock() #9
  br label %ieee80211_tdls_oper_request.exit

bb.d:                                             ; preds = %bb.b
  tail call void @__rcu_read_unlock() #9
  %i.f = load i32, ptr %i.a, align 8
  %.not.i = icmp eq i32 %i.f, 2
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 5080
  %i.h = load i8, ptr %i.g, align 8, !range !12, !noundef !13
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr i8, ptr %0, i64 1880
  %i.k = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %i.j, i32 noundef 2) #11 ; 0 uses
  br label %ieee80211_tdls_oper_request.exit

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 1848
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @cfg80211_tdls_oper_request(ptr noundef %i.m, ptr noundef %1, i32 noundef 2, i16 noundef zeroext 25, i32 noundef 2080) #9
  br label %ieee80211_tdls_oper_request.exit

ieee80211_tdls_oper_request.exit:                 ; preds = %bb.g, %bb.f, %bb.c
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ieee80211_find_sta(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @wiphy_delayed_work_queue(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_stop_queues_by_reason(ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ieee80211_get_vif_queues(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues_by_reason(ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_drv_mgd_protect_tdls_discover(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_drv_return_void(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @ieee80211_tdls_build_mgmt_packet_data(ptr nofree noundef captures(address) %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i16 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef %7, i64 noundef %8, i8 noundef zeroext %9, ptr nofree noundef readonly captures(address_is_null) %10) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %11 = alloca %struct.ieee80211_sta_ht_cap, align 2 ; 12 uses
  %12 = alloca %struct.ieee80211_sta_vht_cap, align 4 ; 11 uses
  %i.b = getelementptr i8, ptr %0, i64 1856
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  tail call void @__rcu_read_lock() #9
  %i.e = getelementptr i8, ptr %0, i64 4920
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load volatile ptr, ptr %i.g, align 8     ; 26 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %.critedge, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "2213: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2213b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2213) #12, !srcloc !65
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 924, i32 2305, i64 16) #12, !srcloc !66
  tail call void asm sideeffect "2214: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2214b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2214) #12, !srcloc !67
  br label %bb.cv

.critedge:                                        ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 1848       ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.c, i64 112      ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = trunc i64 %8 to i32                      ; 3 uses
  %13 = add i32 %i.m, 356
  %i.n = add i32 %13, %i.l
  %i.o = add i32 %i.n, 20
  %i.p = tail call ptr @__netdev_alloc_skb(ptr noundef %i.j, i32 noundef %i.o, i32 noundef 2080) #9 ; 54 uses
  %.not66 = icmp eq ptr %i.p, null
  br i1 %.not66, label %bb.cv, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.q = load i32, ptr %i.k, align 8              ; 2 uses
  %i.r = getelementptr i8, ptr %i.p, i64 208      ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr i8, ptr %i.s, i64 %i.t
  store ptr %i.u, ptr %i.r, align 8
  %i.v = getelementptr i8, ptr %i.p, i64 188      ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add i32 %i.w, %i.q
  store i32 %i.x, ptr %i.v, align 4
  switch i8 %3, label %ieee80211_prep_tdls_encap_data.exit [
    i8 0, label %bb.d
    i8 1, label %bb.d
    i8 2, label %bb.d
    i8 3, label %bb.d
    i8 10, label %bb.d
    i8 5, label %bb.d
    i8 6, label %bb.d
    i8 14, label %bb.o
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.y = load ptr, ptr %i.i, align 8
  %i.z = tail call ptr @skb_put(ptr noundef nonnull %i.p, i32 noundef 17) #9 ; 28 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %i.z, ptr noundef readonly align 1 dereferenceable(6) %1, i64 6, i1 false)
  %i.aa = getelementptr i8, ptr %i.z, i64 6
  %i.ab = getelementptr i8, ptr %i.y, i64 9826
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %i.aa, ptr noundef readonly align 2 dereferenceable(6) %i.ab, i64 6, i1 false)
  %i.ac = getelementptr i8, ptr %i.z, i64 12
  store i16 3465, ptr %i.ac, align 1
  %i.ad = getelementptr i8, ptr %i.z, i64 14
  store i8 2, ptr %i.ad, align 1
  %i.ae = load ptr, ptr %i.r, align 8
  %i.af = getelementptr i8, ptr %i.p, i64 200
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i16
  %i.al = getelementptr i8, ptr %i.p, i64 184
  %i.am = add i16 %i.ak, 14
  store i16 %i.am, ptr %i.al, align 8
  switch i8 %3, label %ieee80211_prep_tdls_encap_data.exit [
    i8 0, label %bb.e
    i8 1, label %bb.i
    i8 2, label %bb.bs
    i8 3, label %bb.m
    i8 10, label %bb.n
    i8 5, label %bb.co
    i8 6, label %bb.cr
  ]

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr i8, ptr %i.z, i64 15
  store i8 12, ptr %i.an, align 1
  %i.ao = getelementptr i8, ptr %i.z, i64 16
  store i8 0, ptr %i.ao, align 1
  %i.ap = tail call ptr @skb_put(ptr noundef nonnull %i.p, i32 noundef 3) #9 ; 0 uses
  %i.aq = getelementptr i8, ptr %i.z, i64 17
  store i8 %4, ptr %i.aq, align 1
  %.not.i.i = icmp eq i16 %5, 0
  br i1 %.not.i.i, label %bb.f, label %ieee80211_get_tdls_sta_capab.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.h, align 8
  %i.as = getelementptr i8, ptr %i.ar, i64 1856
  %i.at = load ptr, ptr %i.as, align 8
  tail call void @__rcu_read_lock() #9
  %i.au = getelementptr i8, ptr %i.h, i64 1056
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 1136
  %i.ax = load volatile ptr, ptr %i.aw, align 8   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %ieee80211_get_link_sband.exit.thread.i.i, label %ieee80211_get_link_sband.exit.i.i

ieee80211_get_link_sband.exit.thread.i.i:         ; preds = %bb.f
  tail call void @__rcu_read_unlock() #9
  br label %bb.h

ieee80211_get_link_sband.exit.i.i:                ; preds = %bb.f
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load i32, ptr %i.ay, align 8
  tail call void @__rcu_read_unlock() #9
  %i.ba = getelementptr i8, ptr %i.at, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 304
  %i.bd = zext i32 %i.az to i64
  %i.be = getelementptr [8 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.bf, null
  br i1 %.not5.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %ieee80211_get_link_sband.exit.i.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %ieee80211_get_tdls_sta_capab.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %ieee80211_get_link_sband.exit.i.i, %ieee80211_get_link_sband.exit.thread.i.i
  br label %ieee80211_get_tdls_sta_capab.exit.i

ieee80211_get_tdls_sta_capab.exit.i:              ; preds = %bb.h, %bb.g, %bb.e
  %.0.i.i = phi i16 [ 0, %bb.h ], [ 0, %bb.e ], [ 1056, %bb.g ]
  %i.bj = getelementptr i8, ptr %i.z, i64 18
  store i16 %.0.i.i, ptr %i.bj, align 1
  br label %bb.s

bb.i:                                             ; preds = %bb.d
  %i.bk = getelementptr i8, ptr %i.z, i64 15
  store i8 12, ptr %i.bk, align 1
  %i.bl = getelementptr i8, ptr %i.z, i64 16
  store i8 1, ptr %i.bl, align 1
  %i.bm = tail call ptr @skb_put(ptr noundef nonnull %i.p, i32 noundef 5) #9 ; 0 uses
  %i.bn = getelementptr i8, ptr %i.z, i64 17
  store i16 %5, ptr %i.bn, align 1
  %i.bo = getelementptr i8, ptr %i.z, i64 19
  store i8 %4, ptr %i.bo, align 1
  %.not.i53.i = icmp eq i16 %5, 0
  br i1 %.not.i53.i, label %bb.j, label %ieee80211_get_tdls_sta_capab.exit59.i

bb.j:                                             ; preds = %bb.i
  %i.bp = load ptr, ptr %i.h, align 8
  %i.bq = getelementptr i8, ptr %i.bp, i64 1856
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void @__rcu_read_lock() #9
  %i.bs = getelementptr i8, ptr %i.h, i64 1056
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr i8, ptr %i.bt, i64 1136
  %i.bv = load volatile ptr, ptr %i.bu, align 8   ; 2 uses
  %.not.i.i55.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i55.i, label %ieee80211_get_link_sband.exit.thread.i58.i, label %ieee80211_get_link_sband.exit.i56.i

ieee80211_get_link_sband.exit.thread.i58.i:       ; preds = %bb.j
  tail call void @__rcu_read_unlock() #9
  br label %bb.l

ieee80211_get_link_sband.exit.i56.i:              ; preds = %bb.j
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = load i32, ptr %i.bw, align 8
  tail call void @__rcu_read_unlock() #9
  %i.by = getelementptr i8, ptr %i.br, i64 80
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr i8, ptr %i.bz, i64 304
  %i.cb = zext i32 %i.bx to i64
  %i.cc = getelementptr [8 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not5.i57.i = icmp eq ptr %i.cd, null
  br i1 %.not5.i57.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %ieee80211_get_link_sband.exit.i56.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %ieee80211_get_tdls_sta_capab.exit59.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %ieee80211_get_link_sband.exit.i56.i, %ieee80211_get_link_sband.exit.thread.i58.i
  br label %ieee80211_get_tdls_sta_capab.exit59.i

ieee80211_get_tdls_sta_capab.exit59.i:            ; preds = %bb.l, %bb.k, %bb.i
  %.0.i54.i = phi i16 [ 0, %bb.l ], [ 0, %bb.i ], [ 1056, %bb.k ]
  %i.ch = getelementptr i8, ptr %i.z, i64 20
  store i16 %.0.i54.i, ptr %i.ch, align 1
  br label %bb.s

bb.m:                                             ; preds = %bb.d
  %i.ci = getelementptr i8, ptr %i.z, i64 15
  store i8 12, ptr %i.ci, align 1
  %i.cj = getelementptr i8, ptr %i.z, i64 16
  store i8 3, ptr %i.cj, align 1
  %i.ck = tail call ptr @skb_put(ptr noundef nonnull %i.p, i32 noundef 2) #9 ; 0 uses
  %i.cl = getelementptr i8, ptr %i.z, i64 17
  store i16 %5, ptr %i.cl, align 1
  br label %bb.ck

bb.n:                                             ; preds = %bb.d
  %i.cm = getelementptr i8, ptr %i.z, i64 15
  store i8 12, ptr %i.cm, align 1
  %i.cn = getelementptr i8, ptr %i.z, i64 16
  store i8 10, ptr %i.cn, align 1
  %i.co = tail call ptr @skb_put(ptr noundef nonnull %i.p, i32 noundef 1) #9 ; 0 uses
  %i.cp = getelementptr i8, ptr %i.z, i64 17
  store i8 %4, ptr %i.cp, align 1
  br label %bb.ck

bb.o:                                             ; preds = %bb.c
  %i.cq = load ptr, ptr %i.i, align 8
  %i.cr = tail call noundef ptr @skb_put(ptr noundef nonnull %i.p, i32 noundef 29) #9 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(29) %i.cr, i8 0, i64 29, i1 false)
  %i.cs = getelementptr i8, ptr %i.cr, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(6) %i.cs, ptr noundef readonly align 1 dereferenceable(6) %1, i64 6, i1 false)
  %i.ct = getelementptr i8, ptr %i.cr, i64 10
  %i.cu = getelementptr i8, ptr %i.cq, i64 9826
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(6) %i.ct, ptr noundef readonly align 2 dereferenceable(6) %i.cu, i64 6, i1 false)
  %i.cv = getelementptr i8, ptr %i.cr, i64 16
  %i.cw = getelementptr i8, ptr %i.h, i64 592
end_hunk_0
