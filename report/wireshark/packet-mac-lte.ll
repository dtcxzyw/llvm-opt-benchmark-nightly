Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-mac-lte?download=true
inline.NumInlined: 189
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@dissect_rar:bb.a
  %i.fg = add i32 %.0.i118, 12
  %i.fh = load i32, ptr @hf_mac_lte_rar_ul_grant_csi_request_ce_mode_a, align 4
  %i.fi = call ptr @proto_tree_add_bits_item(ptr noundef %i.dn, i32 noundef %i.fh, ptr noundef %0, i32 noundef %i.fg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fj = add i32 %.0.i118, 13
  %i.fk = load i32, ptr @hf_mac_lte_rar_ul_grant_ul_delay_ce_mode_a, align 4
  %i.fl = call ptr @proto_tree_add_bits_item(ptr noundef %i.dn, i32 noundef %i.fk, ptr noundef %0, i32 noundef %i.fj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fm = add i32 %.0.i118, 14
  %i.fn = load i32, ptr @hf_mac_lte_rar_ul_grant_msg3_msg4_mpdcch_nb_idx, align 4
  %i.fo = call ptr @proto_tree_add_bits_item(ptr noundef %i.dn, i32 noundef %i.fn, ptr noundef %0, i32 noundef %i.fm, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fp = add i32 %.0.i118, 16
  %i.fq = load i8, ptr %i.cl, align 4
  switch i8 %i.fq, label %bb.aq [
    i8 6, label %.sink.split182.i
    i8 15, label %bb.al
    i8 25, label %bb.am
    i8 50, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  br label %.sink.split182.i

bb.am:                                            ; preds = %bb.ak
  br label %.sink.split182.i

bb.an:                                            ; preds = %bb.ak
  br label %.sink.split182.i

.sink.split182.i:                                 ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %.sink183.i = phi i32 [ 3, %bb.al ], [ 1, %bb.an ], [ 2, %bb.am ], [ 4, %bb.ak ]
  %i.fr = load i32, ptr @hf_mac_lte_rar_ul_grant_padding_ce_mode_a, align 4
  %i.fs = call ptr @proto_tree_add_bits_item(ptr noundef %i.dn, i32 noundef %i.fr, ptr noundef %0, i32 noundef %i.fp, i32 noundef %.sink183.i, i32 noundef 0) ; 0 uses
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ac
  %i.ft = load i32, ptr @hf_mac_lte_rar_ul_grant_msg3_pusch_nb_idx_ce_mode_b, align 4
  %i.fu = call ptr @proto_tree_add_item(ptr noundef %i.dn, i32 noundef %i.ft, ptr noundef %0, i32 noundef %i.db, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fv = load i32, ptr @hf_mac_lte_rar_ul_grant_msg3_pusch_res_alloc_ce_mode_b, align 4
  %i.fw = call ptr @proto_tree_add_item(ptr noundef %i.dn, i32 noundef %i.fv, ptr noundef %0, i32 noundef %i.db, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.fx = load i32, ptr @hf_mac_lte_rar_ul_grant_nb_rep_msg3_pusch_ce_mode_b, align 4
  %i.fy = add i32 %.1123, 2                       ; 3 uses
  %i.fz = call ptr @proto_tree_add_item(ptr noundef %i.dn, i32 noundef %i.fx, ptr noundef %0, i32 noundef %i.fy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ga = load i32, ptr @hf_mac_lte_rar_ul_grant_tbs_ce_mode_b, align 4
  %i.gb = call ptr @proto_tree_add_item(ptr noundef %i.dn, i32 noundef %i.ga, ptr noundef %0, i32 noundef %i.fy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gc = load i32, ptr @hf_mac_lte_rar_ul_grant_msg3_msg4_mpdcch_nb_idx, align 4
  %i.gd = shl i32 %i.fy, 3
  %i.ge = or disjoint i32 %i.gd, 6
  %i.gf = call ptr @proto_tree_add_bits_item(ptr noundef %i.dn, i32 noundef %i.gc, ptr noundef %0, i32 noundef %i.ge, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ab
  %i.gg = load i32, ptr @hf_mac_lte_rar_ul_grant_ul_subcarrier_spacing, align 4
  %i.gh = call ptr @proto_tree_add_item(ptr noundef %i.dn, i32 noundef %i.gg, ptr noundef %0, i32 noundef %i.db, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gi = load i32, ptr @hf_mac_lte_rar_ul_grant_subcarrier_indication, align 4
  %i.gj = call ptr @proto_tree_add_item(ptr noundef %i.dn, i32 noundef %i.gi, ptr noundef %0, i32 noundef %i.db, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.gk = load i32, ptr @hf_mac_lte_rar_ul_grant_scheduling_delay, align 4
  %i.gl = add i32 %.1123, 2                       ; 2 uses
  %i.gm = call ptr @proto_tree_add_item(ptr noundef %i.dn, i32 noundef %i.gk, ptr noundef %0, i32 noundef %i.gl, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gn = load i32, ptr @hf_mac_lte_rar_ul_grant_msg3_repetition_number, align 4
  %i.go = call ptr @proto_tree_add_item(ptr noundef %i.dn, i32 noundef %i.gn, ptr noundef %0, i32 noundef %i.gl, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gp = load i32, ptr @hf_mac_lte_rar_ul_grant_mcs_index, align 4
  %i.gq = add i32 %.1123, 3                       ; 2 uses
  %i.gr = call ptr @proto_tree_add_item(ptr noundef %i.dn, i32 noundef %i.gp, ptr noundef %0, i32 noundef %i.gq, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.gs = load i32, ptr @hf_mac_lte_rar_ul_grant_padding_nb_mode, align 4
  %i.gt = call ptr @proto_tree_add_item(ptr noundef %i.dn, i32 noundef %i.gs, ptr noundef %0, i32 noundef %i.gq, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %.sink.split182.i, %bb.ak, %bb.ae, %bb.ad
  %.sink.i = phi i32 [ 4, %bb.ad ], [ 4, %bb.ap ], [ 4, %bb.ae ], [ 3, %bb.ao ], [ 4, %.sink.split182.i ], [ 4, %bb.ak ]
  %i.gu = add i32 %.sink.i, %.1123                ; 2 uses
  %i.gv = load i32, ptr @hf_mac_lte_rar_temporary_crnti, align 4
  %i.gw = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.cr, i32 noundef %i.gv, ptr noundef %0, i32 noundef %i.gu, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %.b.i.i = load i1, ptr @s_rapid_ranges_configured, align 1
  %i.gx = zext i8 %i.cn to i32                    ; 3 uses
  br i1 %.b.i.i, label %bb.ar, label %dissect_rar_entry.exit

bb.ar:                                            ; preds = %bb.aq
  %i.gy = load i32, ptr @s_rapid_ranges_groupA, align 4
  %i.gz = icmp ugt i32 %i.gy, %i.gx
  br i1 %i.gz, label %dissect_rar_entry.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ha = load i32, ptr @s_rapid_ranges_RA, align 4
  %i.hb = icmp ugt i32 %i.ha, %i.gx
  %.str.1505..str.1506.i.i = select i1 %i.hb, ptr @.str.1505, ptr @.str.1506
  br label %dissect_rar_entry.exit

dissect_rar_entry.exit:                           ; preds = %bb.aq, %bb.ar, %bb.as
  %.0.i.i = phi ptr [ %.str.1505..str.1506.i.i, %bb.as ], [ @.str.1504, %bb.ar ], [ @.str.840, %bb.aq ]
  %i.hc = add i32 %i.gu, 2                        ; 3 uses
  %i.hd = load i32, ptr %i.b, align 4
  %i.he = load i32, ptr %i.c, align 4
  call void (ptr, ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %3, ptr noundef %i.cp, ptr noundef %1, ptr noundef @.str.1540, i32 noundef %i.gx, ptr noundef %.0.i.i, i32 noundef %i.hd, i32 noundef %.0169.i, i32 noundef %i.he)
  %i.hf = sub i32 %i.hc, %.1123
  call void @proto_item_set_len(ptr noundef %i.cp, i32 noundef %i.hf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !19

._crit_edge:                                      ; preds = %dissect_rar_entry.exit, %bb.u
  %.1.lcssa = phi i32 [ %i.bt, %bb.u ], [ %i.hc, %dissect_rar_entry.exit ] ; 5 uses
  %i.hg = getelementptr i8, ptr %5, i64 308       ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 4
  %i.hi = trunc i32 %.1111 to i8
  %i.hj = add i8 %i.hh, %i.hi
  store i8 %i.hj, ptr %i.hg, align 4
  %i.hk = call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %.1.lcssa)
  %.not114 = icmp eq i32 %i.hk, 0
  br i1 %.not114, label %bb.au, label %bb.at

bb.at:                                            ; preds = %._crit_edge
  %i.hl = load i32, ptr @hf_mac_lte_padding_data, align 4
  %i.hm = call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.hl, ptr noundef %0, i32 noundef %.1.lcssa, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge
  %i.hn = load i32, ptr @hf_mac_lte_padding_length, align 4
  %i.ho = getelementptr i8, ptr %4, i64 18        ; 2 uses
  %i.hp = load i16, ptr %i.ho, align 2
  %i.hq = zext i16 %i.hp to i32
  %i.hr = sub i32 %i.hq, %.1.lcssa
  %i.hs = call ptr @proto_tree_add_uint(ptr noundef %2, i32 noundef %i.hn, ptr noundef %0, i32 noundef %.1.lcssa, i32 noundef 0, i32 noundef %i.hr) ; 2 uses
  %.not.i119 = icmp eq ptr %i.hs, null
  br i1 %.not.i119, label %proto_item_set_generated.exit121, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ht = getelementptr i8, ptr %i.hs, i64 40
  %i.hu = load ptr, ptr %i.ht, align 8            ; 2 uses
  %.not5.i120 = icmp eq ptr %i.hu, null
  br i1 %.not5.i120, label %proto_item_set_generated.exit121, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hv = getelementptr i8, ptr %i.hu, i64 28     ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = or i32 %i.hw, 2
  store i32 %i.hx, ptr %i.hv, align 4
  br label %proto_item_set_generated.exit121

proto_item_set_generated.exit121:                 ; preds = %bb.au, %bb.av, %bb.aw
  %i.hy = load i16, ptr %i.ho, align 2
  %i.hz = getelementptr i8, ptr %5, i64 310       ; 2 uses
  %i.ia = load i16, ptr %i.hz, align 2
  %i.ib = trunc i32 %.1.lcssa to i16
  %i.ic = sub i16 %i.hy, %i.ib
  %i.id = add i16 %i.ic, %i.ia
  store i16 %i.id, ptr %i.hz, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @dissect_ulsch_or_dlsch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull %4, ptr nofree noundef captures(none) initializes((18, 20), (312, 314)) %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca [1024 x i8], align 16             ; 9 uses
  %i.j = alloca [1024 x i8], align 16             ; 7 uses
  %i.k = alloca [1024 x i32], align 16            ; 17 uses
  %i.l = alloca i64, align 8                      ; 8 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca ptr, align 8                      ; 14 uses
  %i.t = alloca ptr, align 8                      ; 11 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca i32, align 4                      ; 4 uses
  %i.x = alloca i32, align 4                      ; 5 uses
  %i.y = alloca i32, align 4                      ; 6 uses
  %i.z = alloca [4 x i32], align 16               ; 9 uses
  %i.aa = alloca i32, align 4                     ; 4 uses
  %i.ab = alloca i8, align 1                      ; 8 uses
  %i.ac = alloca i8, align 1                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  %i.ad = load ptr, ptr @mac_lte_tti_info_result_hash, align 8
  %i.ae = getelementptr i8, ptr %1, i64 20        ; 18 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = zext i32 %i.af to i64
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = tail call ptr @g_hash_table_lookup(ptr noundef %i.ad, ptr noundef %i.ah) ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.b, label %count_ues_tti.exit

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr i8, ptr %4, i64 1
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = icmp eq i8 %i.ak, 0
  %UL_tti_info.DL_tti_info.i = select i1 %i.al, ptr @UL_tti_info, ptr @DL_tti_info ; 8 uses
  %i.am = load i16, ptr %UL_tti_info.DL_tti_info.i, align 8
  %i.an = getelementptr i8, ptr %4, i64 10
  %i.ao = load i16, ptr %i.an, align 2            ; 2 uses
  %i.ap = icmp eq i16 %i.am, %i.ao
  br i1 %i.ap, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %bb.b
  %i.aq = getelementptr i8, ptr %1, i64 24
  %i.ar = load i64, ptr %i.aq, align 8
  %9 = getelementptr i8, ptr %UL_tti_info.DL_tti_info.i, i64 8
  %.val28.i = load i64, ptr %9, align 8
  %i.as = sub i64 %i.ar, %.val28.i
  %i.at = trunc i64 %i.as to i32
  %i.au = getelementptr i8, ptr %1, i64 32
  %i.av = load i32, ptr %i.au, align 8
  %10 = getelementptr i8, ptr %UL_tti_info.DL_tti_info.i, i64 16
  %.val30.i = load i32, ptr %10, align 8
  %i.aw = mul i32 %i.at, 1000000
  %i.ax = add i32 %i.av, 500
  %i.ay = sub i32 %i.ax, %.val30.i
  %i.az = sdiv i32 %i.ay, 1000
  %i.ba = add i32 %i.az, %i.aw
  %i.bb = icmp slt i32 %i.ba, 1000
  br i1 %i.bb, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %bb.b
  store i16 %i.ao, ptr %UL_tti_info.DL_tti_info.i, align 8
  %11 = getelementptr i8, ptr %UL_tti_info.DL_tti_info.i, i64 8
  %i.bc = getelementptr i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %11, ptr noundef readonly align 8 dereferenceable(16) %i.bc, i64 16, i1 false)
  %12 = getelementptr i8, ptr %UL_tti_info.DL_tti_info.i, i64 24
  store i32 1, ptr %12, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %13 = getelementptr i8, ptr %UL_tti_info.DL_tti_info.i, i64 24 ; 2 uses
  %i.bd = load i32, ptr %13, align 8
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %13, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge.i
  %i.bf = tail call ptr @wmem_file_scope()
  %i.bg = tail call noalias dereferenceable_or_null(4) ptr @wmem_alloc(ptr noundef %i.bf, i64 noundef 4) #17 ; 2 uses
  %14 = getelementptr i8, ptr %UL_tti_info.DL_tti_info.i, i64 24 ; 2 uses
  %i.bh = load i32, ptr %14, align 8
  store i32 %i.bh, ptr %i.bg, align 4
  %i.bi = load ptr, ptr @mac_lte_tti_info_result_hash, align 8
  %i.bj = load i32, ptr %i.ae, align 4
  %i.bk = zext i32 %i.bj to i64
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = tail call i32 @g_hash_table_insert(ptr noundef %i.bi, ptr noundef %i.bl, ptr noundef %i.bg) ; 0 uses
  br label %count_ues_tti.exit

count_ues_tti.exit:                               ; preds = %bb.a, %bb.e
  %.026.in.in.i = phi ptr [ %14, %bb.e ], [ %i.ai, %bb.a ]
  %.026.in.i = load i32, ptr %.026.in.in.i, align 4
  %.026.i = trunc i32 %.026.in.i to i16
  %i.bn = getelementptr i8, ptr %5, i64 18
  store i16 %.026.i, ptr %i.bn, align 2
  %.val1916 = load i32, ptr %i.ae, align 4
  %i.bo = load ptr, ptr @mac_lte_tti_info_result_hash, align 8
  %i.bp = zext i32 %.val1916 to i64
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = tail call ptr @g_hash_table_lookup(ptr noundef %i.bo, ptr noundef %i.bq) ; 2 uses
  %.not.i1917 = icmp eq ptr %i.br, null
  br i1 %.not.i1917, label %show_ues_tti.exit, label %bb.f

bb.f:                                             ; preds = %count_ues_tti.exit
  %i.bs = getelementptr i8, ptr %4, i64 1
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = icmp eq i8 %i.bt, 0
  %i.bv = load i32, ptr @hf_mac_lte_ues_ul_per_tti, align 4
  %i.bw = load i32, ptr @hf_mac_lte_ues_dl_per_tti, align 4
  %i.bx = select i1 %i.bu, i32 %i.bv, i32 %i.bw
  %i.by = load i32, ptr %i.br, align 4
  %i.bz = tail call ptr @proto_tree_add_uint(ptr noundef %7, i32 noundef %i.bx, ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef %i.by) ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i, label %show_ues_tti.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = getelementptr i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.cb, null
  br i1 %.not5.i.i, label %show_ues_tti.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cc = getelementptr i8, ptr %i.cb, i64 28     ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = or i32 %i.cd, 2
  store i32 %i.ce, ptr %i.cc, align 4
  br label %show_ues_tti.exit

show_ues_tti.exit:                                ; preds = %count_ues_tti.exit, %bb.f, %bb.g, %bb.h
  %i.cf = getelementptr i8, ptr %4, i64 1         ; 32 uses
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = icmp eq i8 %i.cg, 0
  %i.ci = select i1 %i.ch, ptr @.str.102, ptr @.str.108
  %i.cj = getelementptr i8, ptr %4, i64 8
  %i.ck = load i16, ptr %i.cj, align 4
  %i.cl = zext i16 %i.ck to i32
  %i.cm = getelementptr i8, ptr %4, i64 10
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = zext i16 %i.cn to i32
  %i.cp = getelementptr i8, ptr %4, i64 6         ; 27 uses
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = zext i16 %i.cq to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @write_pdu_label_and_info(ptr noundef %3, ptr noundef null, ptr noundef %1, ptr noundef @.str.1541, ptr noundef nonnull %i.ci, i32 noundef %i.cl, i32 noundef %i.co, i32 noundef %i.cr)
  %i.cs = getelementptr i8, ptr %4, i64 18        ; 7 uses
  %i.ct = load i16, ptr %i.cs, align 2
  %i.cu = getelementptr i8, ptr %5, i64 312
  store i16 %i.ct, ptr %i.cu, align 8
  %i.cv = load i8, ptr @global_mac_lte_show_drx, align 1, !range !7, !noundef !8
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.i, label %mac_lte_drx_new_ulsch_data.exit

bb.i:                                             ; preds = %show_ues_tti.exit
  %i.cx = getelementptr i8, ptr %1, i64 80        ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = getelementptr i8, ptr %i.cy, i64 53
  %i.da = load i16, ptr %i.cz, align 1
  %i.db = and i16 %i.da, 8
  %.not = icmp eq i16 %i.db, 0
  br i1 %.not, label %bb.j, label %set_drx_info.exit

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @update_drx_info(ptr noundef %1, ptr noundef %4)
  %.val1915 = load i16, ptr %i.cp, align 2
  %i.dc = load ptr, ptr @mac_lte_ue_parameters, align 8
  %i.dd = zext i16 %.val1915 to i64
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = tail call ptr @g_hash_table_lookup(ptr noundef %i.dc, ptr noundef %i.de) ; 3 uses
  %.not.i1918 = icmp eq ptr %i.df, null
  br i1 %.not.i1918, label %set_drx_info.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dg = getelementptr i8, ptr %i.df, i64 3
  %i.dh = load i8, ptr %i.dg, align 1, !range !7, !noundef !8
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.l, label %set_drx_info.exit

bb.l:                                             ; preds = %bb.k
  %i.dj = tail call ptr @wmem_file_scope()
  %i.dk = tail call noalias dereferenceable_or_null(432) ptr @wmem_alloc(ptr noundef %i.dj, i64 noundef 432) #17 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.df, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(432) %i.dk, ptr noundef align 8 dereferenceable(432) %i.dl, i64 432, i1 false)
  %i.dm = load ptr, ptr @mac_lte_drx_frame_result, align 8
  %i.dn = load i32, ptr %i.ae, align 4
  %i.do = tail call ptr @wmem_file_scope()
  %i.dp = tail call noalias dereferenceable_or_null(8) ptr @wmem_alloc0(ptr noundef %i.do, i64 noundef 8) #17 ; 3 uses
  store i32 %i.dn, ptr %i.dp, align 4
  %i.dq = getelementptr i8, ptr %i.dp, i64 4
  store i32 %8, ptr %i.dq, align 4
  %i.dr = tail call i32 @g_hash_table_insert(ptr noundef %i.dm, ptr noundef %i.dp, ptr noundef %i.dk) ; 0 uses
  br label %set_drx_info.exit

set_drx_info.exit:                                ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  tail call fastcc void @show_drx_info(ptr noundef %1, ptr noundef %2, ptr noundef %0, ptr noundef %4, i1 noundef zeroext true, i32 noundef %8)
  %i.ds = load ptr, ptr %i.cx, align 8
  %i.dt = getelementptr i8, ptr %i.ds, i64 53
  %i.du = load i16, ptr %i.dt, align 1
  %i.dv = and i16 %i.du, 8
  %.not1835 = icmp eq i16 %i.dv, 0
  br i1 %.not1835, label %bb.m, label %mac_lte_drx_new_ulsch_data.exit

bb.m:                                             ; preds = %set_drx_info.exit
  %i.dw = load i8, ptr %i.cf, align 1
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.dy = getelementptr i8, ptr %4, i64 20
  %i.dz = load i8, ptr %i.dy, align 4
  %i.ea = icmp eq i8 %i.dz, 0
  br i1 %i.ea, label %bb.o, label %mac_lte_drx_new_ulsch_data.exit

bb.o:                                             ; preds = %bb.n
  %i.eb = load i16, ptr %i.cp, align 2
  %i.ec = load ptr, ptr @mac_lte_ue_parameters, align 8
  %i.ed = zext i16 %i.eb to i64
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = tail call ptr @g_hash_table_lookup(ptr noundef %i.ec, ptr noundef %i.ee) ; 5 uses
  %.not.i1919 = icmp eq ptr %i.ef, null
  br i1 %.not.i1919, label %mac_lte_drx_new_ulsch_data.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eg = getelementptr i8, ptr %i.ef, i64 3
  %i.eh = load i8, ptr %i.eg, align 1, !range !7, !noundef !8
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.q, label %mac_lte_drx_new_ulsch_data.exit

bb.q:                                             ; preds = %bb.p
  %i.ej = getelementptr i8, ptr %i.ef, i64 104
  %i.ek = getelementptr i8, ptr %i.ef, i64 24
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = getelementptr i8, ptr %i.ef, i64 80
  %i.en = load i64, ptr %i.em, align 8
  %i.eo = and i32 %i.el, 65535
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = add i64 %i.en, %i.ep
  store i64 %i.eq, ptr %i.ej, align 8
  br label %mac_lte_drx_new_ulsch_data.exit

bb.r:                                             ; preds = %bb.m
  %i.er = getelementptr i8, ptr %4, i64 25
  %i.es = load i8, ptr %i.er, align 1, !range !7, !noundef !8
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.eu = getelementptr i8, ptr %4, i64 28
  %i.ev = load i32, ptr %i.eu, align 4
  %.not1836 = icmp eq i32 %i.ev, 1
  br i1 %.not1836, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ew = load i16, ptr %i.cp, align 2
  %i.ex = load ptr, ptr @mac_lte_ue_parameters, align 8
  %i.ey = zext i16 %i.ew to i64
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = tail call ptr @g_hash_table_lookup(ptr noundef %i.ex, ptr noundef %i.ez) ; 5 uses
  %.not.i1920 = icmp eq ptr %i.fa, null
  br i1 %.not.i1920, label %mac_lte_drx_new_ulsch_data.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fb = getelementptr i8, ptr %i.fa, i64 3
  %i.fc = load i8, ptr %i.fb, align 1, !range !7, !noundef !8
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.v, label %mac_lte_drx_new_ulsch_data.exit

bb.v:                                             ; preds = %bb.u
  %i.fe = getelementptr i8, ptr %i.fa, i64 176
  %i.ff = getelementptr i8, ptr %i.fa, i64 28
  %i.fg = load i32, ptr %i.ff, align 4
  %i.fh = getelementptr i8, ptr %i.fa, i64 80
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = and i32 %i.fg, 65535
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = add i64 %i.fi, %i.fk
  store i64 %i.fl, ptr %i.fe, align 8
  br label %mac_lte_drx_new_ulsch_data.exit

bb.w:                                             ; preds = %bb.s, %bb.r
  %i.fm = getelementptr i8, ptr %4, i64 36
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %bb.x, label %mac_lte_drx_new_ulsch_data.exit

bb.x:                                             ; preds = %bb.w
  %i.fp = load i16, ptr %i.cp, align 2
  %i.fq = load ptr, ptr @mac_lte_ue_parameters, align 8
  %i.fr = zext i16 %i.fp to i64
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = tail call ptr @g_hash_table_lookup(ptr noundef %i.fq, ptr noundef %i.fs) ; 5 uses
  %.not.i1921 = icmp eq ptr %i.ft, null
  br i1 %.not.i1921, label %mac_lte_drx_new_ulsch_data.exit, label %bb.y
end_hunk_0
