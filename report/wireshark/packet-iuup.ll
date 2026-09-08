Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-iuup?download=true
inline.NumInlined: 18
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dissect_iuup:bb.a
  %i.et = tail call ptr @proto_tree_add_item(ptr noundef nonnull %.041, i32 noundef %i.es, ptr noundef %.040, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  %i.eu = load i32, ptr @hf_iuup_hdr_crc, align 4
  %i.ev = tail call zeroext i16 @crc6_compute_tvb(ptr noundef %.040, i32 noundef 2)
  %i.ew = zext i16 %i.ev to i32
  %i.ex = tail call ptr @proto_tree_add_checksum(ptr noundef nonnull %.041, ptr noundef %.040, i32 noundef 2, i32 noundef %i.eu, i32 noundef -1, ptr noundef nonnull @ei_iuup_hdr_crc_bad, ptr noundef %1, i32 noundef %i.ew, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0101.i = phi ptr [ %i.et, %bb.y ], [ null, %bb.x ] ; 2 uses
  %.0.i47 = phi ptr [ %i.en, %bb.y ], [ null, %bb.x ]
  %i.ey = load ptr, ptr %i.b, align 8
  %i.ez = load ptr, ptr %i.z, align 8
  %i.fa = and i8 %i.ek, 12                        ; 2 uses
  %i.fb = zext nneg i8 %i.fa to i32
  %i.fc = tail call ptr @val_to_str(ptr noundef %i.ez, i32 noundef %i.fb, ptr noundef nonnull @iuup_colinfo_acknack_vals, ptr noundef nonnull @.str.2773)
  tail call void @col_append_str(ptr noundef %i.ey, i32 noundef 25, ptr noundef %i.fc)
  %i.fd = load ptr, ptr %i.b, align 8
  %i.fe = load ptr, ptr %i.z, align 8
  %i.ff = and i8 %i.el, 15                        ; 3 uses
  %i.fg = zext nneg i8 %i.ff to i32
  %i.fh = tail call ptr @val_to_str(ptr noundef %i.fe, i32 noundef %i.fg, ptr noundef nonnull @iuup_colinfo_procedures, ptr noundef nonnull @.str.2774)
  tail call void @col_append_str(ptr noundef %i.fd, i32 noundef 25, ptr noundef %i.fh)
  switch i8 %i.fa, label %.unreachabledefault.i [
    i8 4, label %bb.aa
    i8 8, label %bb.ae
    i8 12, label %bb.af
    i8 0, label %bb.ag
  ]

bb.aa:                                            ; preds = %bb.z
  switch i8 %i.ff, label %bb.ad [
    i8 0, label %bb.ab
    i8 1, label %bb.ac
    i8 2, label %bb.au
    i8 3, label %bb.bh
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.fi = load i32, ptr @hf_iuup_spare_03, align 4
  %i.fj = tail call ptr @proto_tree_add_item(ptr noundef %.041, i32 noundef %i.fi, ptr noundef %.040, i32 noundef 2, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.fk = load i32, ptr @hf_iuup_spare_ff, align 4
  %i.fl = tail call ptr @proto_tree_add_item(ptr noundef %.041, i32 noundef %i.fk, ptr noundef %.040, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_iuup_data.exit

bb.ac:                                            ; preds = %bb.aa
  %i.fm = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.040, i32 noundef 4)
  %i.fn = and i8 %i.fm, 63                        ; 2 uses
  %i.fo = load i32, ptr @hf_iuup_num_rfci_ind, align 4
  %i.fp = tail call ptr @proto_tree_add_item(ptr noundef %.041, i32 noundef %i.fo, ptr noundef %.040, i32 noundef 4, i32 noundef 1, i32 noundef 0)
  %i.fq = load i32, ptr @ett_rfciinds, align 4
  %i.fr = tail call ptr @proto_item_add_subtree(ptr noundef %i.fp, i32 noundef %i.fq)
  %.not3.i.i = icmp eq i8 %i.fn, 0
  br i1 %.not3.i.i, label %dissect_iuup_data.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ac
  %wide.trip.count.i.i50 = zext nneg i8 %i.fn to i64
  br label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %.lr.ph.i.i51, %.lr.ph.preheader.i.i
  %indvars.iv.i.i52 = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i54, %.lr.ph.i.i51 ] ; 3 uses
  %.02.i.i = phi i32 [ 4, %.lr.ph.preheader.i.i ], [ %spec.select.i.i, %.lr.ph.i.i51 ]
  %i.fs = and i64 %indvars.iv.i.i52, 7
  %.not.i.i53 = icmp eq i64 %i.fs, 0
  %i.ft = zext i1 %.not.i.i53 to i32
  %spec.select.i.i = add i32 %.02.i.i, %i.ft      ; 2 uses
  %i.fu = getelementptr [4 x i8], ptr @hf_iuup_rfci_ratectl, i64 %indvars.iv.i.i52
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = tail call ptr @proto_tree_add_item(ptr noundef %i.fr, i32 noundef %i.fv, ptr noundef %.040, i32 noundef %spec.select.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %indvars.iv.next.i.i54 = add nuw nsw i64 %indvars.iv.i.i52, 1 ; 2 uses
  %exitcond.not.i.i55 = icmp eq i64 %indvars.iv.next.i.i54, %wide.trip.count.i.i50
  br i1 %exitcond.not.i.i55, label %dissect_iuup_data.exit, label %.lr.ph.i.i51, !llvm.loop !12

bb.ad:                                            ; preds = %bb.aa
  %i.fx = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %.0101.i, ptr noundef nonnull @ei_iuup_procedure_indicator) ; 0 uses
  br label %dissect_iuup_data.exit

bb.ae:                                            ; preds = %bb.z
  %i.fy = load i32, ptr @hf_iuup_error_cause_val, align 4
  %i.fz = tail call ptr @proto_tree_add_item(ptr noundef %.041, i32 noundef %i.fy, ptr noundef %.040, i32 noundef 4, i32 noundef 1, i32 noundef 0)
  %i.ga = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.fz, ptr noundef nonnull @ei_iuup_error_response) ; 0 uses
  br label %dissect_iuup_data.exit

bb.af:                                            ; preds = %bb.z
  %i.gb = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %.0.i47, ptr noundef nonnull @ei_iuup_ack_nack) ; 0 uses
  br label %dissect_iuup_data.exit

.unreachabledefault.i:                            ; preds = %bb.z
  unreachable

bb.ag:                                            ; preds = %bb.z
  switch i8 %i.ff, label %bb.bi [
    i8 0, label %bb.ah
    i8 1, label %bb.at
    i8 2, label %bb.au
    i8 3, label %bb.bh
  ]

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @add_payload_crc(ptr noundef %.040, ptr noundef %1, ptr noundef %.041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 4, ptr %i.a, align 4
  %i.gc = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.040, i32 noundef 4)
  %i.gd = zext i8 %i.gc to i32                    ; 2 uses
  %i.ge = lshr i32 %i.gd, 1
  %i.gf = and i32 %i.ge, 7
  %i.gg = and i32 %i.gd, 16
  %.not.i105.i = icmp eq i32 %i.gg, 0
  %i.gh = load i8, ptr @two_byte_pseudoheader, align 1, !range !14, !noundef !15
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %find_iuup_circuit.exit.i.i48, label %bb.ak

find_iuup_circuit.exit.i.i48:                     ; preds = %bb.ah
  %i.gj = tail call i32 @conversation_get_id_from_elements(ptr noundef %1, i32 noundef 27, i32 noundef 8)
  %i.gk = load ptr, ptr @circuits, align 8
  %i.gl = zext i32 %i.gj to i64
  %i.gm = inttoptr i64 %i.gl to ptr
  %i.gn = tail call ptr @wmem_map_lookup(ptr noundef %i.gk, ptr noundef %i.gm) ; 2 uses
  %.not65.i.i49 = icmp eq ptr %i.gn, null
  br i1 %.not65.i.i49, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %find_iuup_circuit.exit.i.i48
  %i.go = load i32, ptr %i.gn, align 8            ; 2 uses
  %i.gp = load ptr, ptr @circuits, align 8
  %i.gq = zext i32 %i.go to i64
  %i.gr = inttoptr i64 %i.gq to ptr
  %i.gs = tail call ptr @wmem_map_remove(ptr noundef %i.gp, ptr noundef %i.gr) ; 0 uses
  br label %bb.ak

bb.aj:                                            ; preds = %find_iuup_circuit.exit.i.i48
  %i.gt = tail call i32 @conversation_get_id_from_elements(ptr noundef %1, i32 noundef 27, i32 noundef 8)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.0.i.i = phi i32 [ %i.go, %bb.ai ], [ %i.gt, %bb.aj ], [ 0, %bb.ah ] ; 2 uses
  %i.gu = tail call ptr @wmem_file_scope()
  %i.gv = tail call noalias dereferenceable_or_null(24) ptr @wmem_alloc0(ptr noundef %i.gu, i64 noundef 24) #9 ; 7 uses
  store i32 %.0.i.i, ptr %i.gv, align 8
  %i.gw = getelementptr i8, ptr %i.gv, i64 4
  store i32 %i.gf, ptr %i.gw, align 4
  %i.gx = getelementptr i8, ptr %i.gv, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.gx, i8 0, i64 16, i1 false)
  %i.gy = load i8, ptr @two_byte_pseudoheader, align 1, !range !14, !noundef !15
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ha = load ptr, ptr @circuits, align 8
  %i.hb = zext i32 %.0.i.i to i64
  %i.hc = inttoptr i64 %i.hb to ptr
  %i.hd = tail call ptr @wmem_map_insert(ptr noundef %i.ha, ptr noundef %i.hc, ptr noundef %i.gv) ; 0 uses
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.he = getelementptr i8, ptr %1, i64 20
  %i.hf = load i32, ptr %i.he, align 4
  %i.hg = getelementptr i8, ptr %1, i64 184
  %i.hh = getelementptr i8, ptr %1, i64 160
  %i.hi = getelementptr i8, ptr %1, i64 292
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = getelementptr i8, ptr %1, i64 288
  %i.hl = load i32, ptr %i.hk, align 8
  %i.hm = tail call ptr @conversation_new(i32 noundef %i.hf, ptr noundef %i.hg, ptr noundef %i.hh, i32 noundef 27, i32 noundef %i.hj, i32 noundef %i.hl, i32 noundef 0)
  %i.hn = load i32, ptr @proto_iuup, align 4
  tail call void @conversation_add_proto_data(ptr noundef %i.hm, i32 noundef %i.hn, ptr noundef %i.gv)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  br i1 %.not.i46, label %.thread.i.i, label %bb.ao

.thread.i.i:                                      ; preds = %bb.an
  store i32 5, ptr %i.a, align 4
  %i.ho = call fastcc i32 @dissect_rfcis(ptr noundef %.040, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %i.gv) ; 0 uses
  br label %dissect_iuup_init.exit.i

bb.ao:                                            ; preds = %bb.an
  %i.hp = load i32, ptr @hf_iuup_spare_e0, align 4
  %i.hq = tail call ptr @proto_tree_add_item(ptr noundef nonnull %.041, i32 noundef %i.hp, ptr noundef %.040, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hr = load i32, ptr @hf_iuup_init_ti, align 4
  %i.hs = tail call ptr @proto_tree_add_item(ptr noundef nonnull %.041, i32 noundef %i.hr, ptr noundef %.040, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ht = load i32, ptr @hf_iuup_init_subflows_per_rfci, align 4
  %i.hu = tail call ptr @proto_tree_add_item(ptr noundef nonnull %.041, i32 noundef %i.ht, ptr noundef %.040, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.hv = load i32, ptr @hf_iuup_init_chain_ind, align 4
  %i.hw = tail call ptr @proto_tree_add_item(ptr noundef nonnull %.041, i32 noundef %i.hv, ptr noundef %.040, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  store i32 5, ptr %i.a, align 4
  %i.hx = call fastcc i32 @dissect_rfcis(ptr noundef %.040, ptr noundef nonnull %.041, ptr noundef nonnull %i.a, ptr noundef %i.gv) ; 3 uses
  %.pre.i.i = load i32, ptr %i.a, align 4         ; 3 uses
  br i1 %.not.i105.i, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hy = lshr i32 %i.hx, 1
  %i.hz = and i32 %i.hx, 1
  %i.ia = add nuw nsw i32 %i.hy, %i.hz
  %i.ib = load i32, ptr @ett_ipti, align 4
  %i.ic = tail call ptr @proto_tree_add_subtree(ptr noundef nonnull %.041, ptr noundef %.040, i32 noundef %.pre.i.i, i32 noundef %i.ia, i32 noundef %i.ib, ptr noundef null, ptr noundef nonnull @.str.2785)
  %i.id = add nuw nsw i32 %i.hx, 1
  %wide.trip.count.i106.i = zext nneg i32 %i.id to i64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aq, %bb.ap
  %indvars.iv.i107.i = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next.i109.i, %bb.aq ] ; 3 uses
  %i.ie = phi i32 [ %.pre.i.i, %bb.ap ], [ %spec.select.i108.i, %bb.aq ] ; 2 uses
  %i.if = getelementptr [4 x i8], ptr @hf_iuup_init_ipti, i64 %indvars.iv.i107.i
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = tail call ptr @proto_tree_add_item(ptr noundef %i.ic, i32 noundef %i.ig, ptr noundef %.040, i32 noundef %i.ie, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ii = trunc nuw nsw i64 %indvars.iv.i107.i to i32
  %i.ij = and i32 %i.ii, 1                        ; 2 uses
  %spec.select.i108.i = add i32 %i.ij, %i.ie      ; 2 uses
  %indvars.iv.next.i109.i = add nuw nsw i64 %indvars.iv.i107.i, 1 ; 2 uses
  %exitcond.not.i110.i = icmp eq i64 %indvars.iv.next.i109.i, %wide.trip.count.i106.i
  br i1 %exitcond.not.i110.i, label %bb.ar, label %bb.aq, !llvm.loop !13

bb.ar:                                            ; preds = %bb.aq
  %4 = xor i32 %i.ij, 1
  %spec.select80.i.i = add i32 %spec.select.i108.i, %4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %i.ik = phi i32 [ %spec.select80.i.i, %bb.ar ], [ %.pre.i.i, %bb.ao ] ; 18 uses
  %i.il = load i32, ptr @hf_iuup_mode_versions, align 4
  %i.im = tail call ptr @proto_tree_add_item(ptr noundef nonnull %.041, i32 noundef %i.il, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0)
  %i.in = load i32, ptr @ett_support, align 4
  %i.io = tail call ptr @proto_item_add_subtree(ptr noundef %i.im, i32 noundef %i.in) ; 16 uses
  %i.ip = load i32, ptr @hf_iuup_mode_versions_a, align 16
  %i.iq = tail call ptr @proto_tree_add_item(ptr noundef %i.io, i32 noundef %i.ip, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ir = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_iuup_mode_versions_a, i64 4), align 4
  %i.is = tail call ptr @proto_tree_add_item(ptr noundef %i.io, i32 noundef %i.ir, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.it = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_iuup_mode_versions_a, i64 8), align 8
  %i.iu = tail call ptr @proto_tree_add_item(ptr noundef %i.io, i32 noundef %i.it, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.iv = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_iuup_mode_versions_a, i64 12), align 4
  %i.iw = tail call ptr @proto_tree_add_item(ptr noundef %i.io, i32 noundef %i.iv, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ix = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_iuup_mode_versions_a, i64 16), align 16
  %i.iy = tail call ptr @proto_tree_add_item(ptr noundef %i.io, i32 noundef %i.ix, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.iz = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_iuup_mode_versions_a, i64 20), align 4
  %i.ja = tail call ptr @proto_tree_add_item(ptr noundef %i.io, i32 noundef %i.iz, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jb = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_iuup_mode_versions_a, i64 24), align 8
  %i.jc = tail call ptr @proto_tree_add_item(ptr noundef %i.io, i32 noundef %i.jb, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jd = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_iuup_mode_versions_a, i64 28), align 4
  %i.je = tail call ptr @proto_tree_add_item(ptr noundef %i.io, i32 noundef %i.jd, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jf = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_iuup_mode_versions_a, i64 32), align 16
  %i.jg = tail call ptr @proto_tree_add_item(ptr noundef %i.io, i32 noundef %i.jf, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jh = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_iuup_mode_versions_a, i64 36), align 4
  %i.ji = tail call ptr @proto_tree_add_item(ptr noundef %i.io, i32 noundef %i.jh, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jj = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_iuup_mode_versions_a, i64 40), align 8
  %i.jk = tail call ptr @proto_tree_add_item(ptr noundef %i.io, i32 noundef %i.jj, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jl = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_iuup_mode_versions_a, i64 44), align 4
  %i.jm = tail call ptr @proto_tree_add_item(ptr noundef %i.io, i32 noundef %i.jl, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jn = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_iuup_mode_versions_a, i64 48), align 16
  %i.jo = tail call ptr @proto_tree_add_item(ptr noundef %i.io, i32 noundef %i.jn, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jp = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_iuup_mode_versions_a, i64 52), align 4
  %i.jq = tail call ptr @proto_tree_add_item(ptr noundef %i.io, i32 noundef %i.jp, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jr = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_iuup_mode_versions_a, i64 56), align 8
  %i.js = tail call ptr @proto_tree_add_item(ptr noundef %i.io, i32 noundef %i.jr, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jt = load i32, ptr getelementptr inbounds nuw (i8, ptr @hf_iuup_mode_versions_a, i64 60), align 4
  %i.ju = tail call ptr @proto_tree_add_item(ptr noundef %i.io, i32 noundef %i.jt, ptr noundef %.040, i32 noundef %i.ik, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.jv = add i32 %i.ik, 2
  %i.jw = load i32, ptr @hf_iuup_data_pdu_type, align 4
  %i.jx = tail call ptr @proto_tree_add_item(ptr noundef nonnull %.041, i32 noundef %i.jw, ptr noundef %.040, i32 noundef %i.jv, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_iuup_init.exit.i

dissect_iuup_init.exit.i:                         ; preds = %bb.as, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %dissect_iuup_data.exit

bb.at:                                            ; preds = %bb.ag
  tail call fastcc void @add_payload_crc(ptr noundef %.040, ptr noundef %1, ptr noundef %.041)
  %i.jy = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.040, i32 noundef 4)
  %i.jz = and i8 %i.jy, 63                        ; 2 uses
  %i.ka = load i32, ptr @hf_iuup_num_rfci_ind, align 4
  %i.kb = tail call ptr @proto_tree_add_item(ptr noundef %.041, i32 noundef %i.ka, ptr noundef %.040, i32 noundef 4, i32 noundef 1, i32 noundef 0)
  %i.kc = load i32, ptr @ett_rfciinds, align 4
  %i.kd = tail call ptr @proto_item_add_subtree(ptr noundef %i.kb, i32 noundef %i.kc)
  %.not3.i111.i = icmp eq i8 %i.jz, 0
  br i1 %.not3.i111.i, label %dissect_iuup_data.exit, label %.lr.ph.preheader.i112.i

.lr.ph.preheader.i112.i:                          ; preds = %bb.at
  %wide.trip.count.i113.i = zext nneg i8 %i.jz to i64
  br label %.lr.ph.i114.i

.lr.ph.i114.i:                                    ; preds = %.lr.ph.i114.i, %.lr.ph.preheader.i112.i
  %indvars.iv.i115.i = phi i64 [ 0, %.lr.ph.preheader.i112.i ], [ %indvars.iv.next.i119.i, %.lr.ph.i114.i ] ; 3 uses
  %.02.i116.i = phi i32 [ 4, %.lr.ph.preheader.i112.i ], [ %spec.select.i118.i, %.lr.ph.i114.i ]
  %i.ke = and i64 %indvars.iv.i115.i, 7
  %.not.i117.i = icmp eq i64 %i.ke, 0
  %i.kf = zext i1 %.not.i117.i to i32
  %spec.select.i118.i = add i32 %.02.i116.i, %i.kf ; 2 uses
  %i.kg = getelementptr [4 x i8], ptr @hf_iuup_rfci_ratectl, i64 %indvars.iv.i115.i
  %i.kh = load i32, ptr %i.kg, align 4
  %i.ki = tail call ptr @proto_tree_add_item(ptr noundef %i.kd, i32 noundef %i.kh, ptr noundef %.040, i32 noundef %spec.select.i118.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %indvars.iv.next.i119.i = add nuw nsw i64 %indvars.iv.i115.i, 1 ; 2 uses
  %exitcond.not.i120.i = icmp eq i64 %indvars.iv.next.i119.i, %wide.trip.count.i113.i
  br i1 %exitcond.not.i120.i, label %dissect_iuup_data.exit, label %.lr.ph.i114.i, !llvm.loop !12

bb.au:                                            ; preds = %bb.ag, %bb.aa
  %i.kj = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.040, i32 noundef 4) ; 3 uses
  %i.kk = zext i8 %i.kj to i32                    ; 3 uses
  %i.kl = load i32, ptr @hf_iuup_time_align, align 4
  %i.km = tail call ptr @proto_tree_add_item(ptr noundef %.041, i32 noundef %i.kl, ptr noundef %.040, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.kn = load i32, ptr @ett_time, align 4
  %i.ko = tail call ptr @proto_item_add_subtree(ptr noundef %i.km, i32 noundef %i.kn) ; 4 uses
  %i.kp = add i8 %i.kj, -1
  %or.cond.i = icmp ult i8 %i.kp, 80
  br i1 %or.cond.i, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  %i.kq = load i32, ptr @hf_iuup_delay, align 4
  %i.kr = mul nuw nsw i32 %i.kk, 500              ; 2 uses
  %i.ks = tail call ptr @proto_tree_add_uint(ptr noundef %i.ko, i32 noundef %i.kq, ptr noundef %.040, i32 noundef 4, i32 noundef 1, i32 noundef %i.kr) ; 2 uses
  %.not.i122.i = icmp eq ptr %i.ks, null
  br i1 %.not.i122.i, label %proto_item_set_generated.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kt = getelementptr i8, ptr %i.ks, i64 40
  %i.ku = load ptr, ptr %i.kt, align 8            ; 2 uses
  %.not5.i.i = icmp eq ptr %i.ku, null
  br i1 %.not5.i.i, label %proto_item_set_generated.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kv = getelementptr i8, ptr %i.ku, i64 28     ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4
  %i.kx = or i32 %i.kw, 2
  store i32 %i.kx, ptr %i.kv, align 4
  br label %proto_item_set_generated.exit.i

proto_item_set_generated.exit.i:                  ; preds = %bb.ax, %bb.aw, %bb.av
  %i.ky = load i32, ptr @hf_iuup_delta, align 4
  %i.kz = uitofp nneg i32 %i.kr to float
  %i.la = fdiv float %i.kz, 1.000000e+06
  %i.lb = tail call ptr @proto_tree_add_float(ptr noundef %i.ko, i32 noundef %i.ky, ptr noundef %.040, i32 noundef 4, i32 noundef 1, float noundef %i.la) ; 2 uses
  %.not.i123.i = icmp eq ptr %i.lb, null
  br i1 %.not.i123.i, label %proto_item_set_generated.exit125.i, label %bb.ay

bb.ay:                                            ; preds = %proto_item_set_generated.exit.i
  %i.lc = getelementptr i8, ptr %i.lb, i64 40
  %i.ld = load ptr, ptr %i.lc, align 8            ; 2 uses
  %.not5.i124.i = icmp eq ptr %i.ld, null
  br i1 %.not5.i124.i, label %proto_item_set_generated.exit125.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.le = getelementptr i8, ptr %i.ld, i64 28     ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4
  %i.lg = or i32 %i.lf, 2
  store i32 %i.lg, ptr %i.le, align 4
  br label %proto_item_set_generated.exit125.i

bb.ba:                                            ; preds = %bb.au
  %i.lh = add i8 %i.kj, 127
  %or.cond3.i = icmp ult i8 %i.lh, 80
  br i1 %or.cond3.i, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.li = load i32, ptr @hf_iuup_advance, align 4
  %i.lj = mul nuw nsw i32 %i.kk, 500
  %i.lk = add nsw i32 %i.lj, -64000
  %i.ll = tail call ptr @proto_tree_add_uint(ptr noundef %i.ko, i32 noundef %i.li, ptr noundef %.040, i32 noundef 4, i32 noundef 1, i32 noundef %i.lk) ; 2 uses
  %.not.i126.i = icmp eq ptr %i.ll, null
  br i1 %.not.i126.i, label %proto_item_set_generated.exit128.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lm = getelementptr i8, ptr %i.ll, i64 40
  %i.ln = load ptr, ptr %i.lm, align 8            ; 2 uses
  %.not5.i127.i = icmp eq ptr %i.ln, null
  br i1 %.not5.i127.i, label %proto_item_set_generated.exit128.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lo = getelementptr i8, ptr %i.ln, i64 28     ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 4
  %i.lq = or i32 %i.lp, 2
  store i32 %i.lq, ptr %i.lo, align 4
  br label %proto_item_set_generated.exit128.i

proto_item_set_generated.exit128.i:               ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.lr = load i32, ptr @hf_iuup_delta, align 4
  %i.ls = sub nsw i32 128, %i.kk
  %i.lt = sitofp i32 %i.ls to float
  %i.lu = fmul nnan float %i.lt, 5.000000e+02
  %i.lv = fdiv float %i.lu, 1.000000e+06
  %i.lw = tail call ptr @proto_tree_add_float(ptr noundef %i.ko, i32 noundef %i.lr, ptr noundef %.040, i32 noundef 4, i32 noundef 1, float noundef %i.lv) ; 2 uses
  %.not.i129.i = icmp eq ptr %i.lw, null
  br i1 %.not.i129.i, label %proto_item_set_generated.exit125.i, label %bb.be

bb.be:                                            ; preds = %proto_item_set_generated.exit128.i
  %i.lx = getelementptr i8, ptr %i.lw, i64 40
  %i.ly = load ptr, ptr %i.lx, align 8            ; 2 uses
  %.not5.i130.i = icmp eq ptr %i.ly, null
  br i1 %.not5.i130.i, label %proto_item_set_generated.exit125.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lz = getelementptr i8, ptr %i.ly, i64 28     ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4
  %i.mb = or i32 %i.ma, 2
  store i32 %i.mb, ptr %i.lz, align 4
  br label %proto_item_set_generated.exit125.i

bb.bg:                                            ; preds = %bb.ba
  %i.mc = tail call ptr @expert_add_info(ptr noundef %1, ptr noundef %i.km, ptr noundef nonnull @ei_iuup_time_align) ; 0 uses
  br label %proto_item_set_generated.exit125.i

proto_item_set_generated.exit125.i:               ; preds = %bb.bg, %bb.bf, %bb.be, %proto_item_set_generated.exit128.i, %bb.az, %bb.ay, %proto_item_set_generated.exit.i
  %i.md = load i32, ptr @hf_iuup_spare_bytes, align 4
  %i.me = tail call ptr @proto_tree_add_item(ptr noundef %.041, i32 noundef %i.md, ptr noundef %.040, i32 noundef 5, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %dissect_iuup_data.exit

bb.bh:                                            ; preds = %bb.ag, %bb.aa
  %i.mf = load ptr, ptr %i.b, align 8
  %i.mg = load ptr, ptr %i.z, align 8
  %i.mh = tail call zeroext i8 @tvb_get_uint8(ptr noundef %.040, i32 noundef 4)
  %i.mi = and i8 %i.mh, 63
  %i.mj = zext nneg i8 %i.mi to i32
  %i.mk = tail call ptr @val_to_str(ptr noundef %i.mg, i32 noundef %i.mj, ptr noundef nonnull @iuup_error_causes, ptr noundef nonnull @.str.2775)
  tail call void @col_append_str(ptr noundef %i.mf, i32 noundef 25, ptr noundef %i.mk)
  %i.ml = load i32, ptr @hf_iuup_error_distance, align 4
  %i.mm = tail call ptr @proto_tree_add_item(ptr noundef %.041, i32 noundef %i.ml, ptr noundef %.040, i32 noundef 4, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mn = load i32, ptr @hf_iuup_errorevt_cause_val, align 4
  %i.mo = tail call ptr @proto_tree_add_item(ptr noundef %.041, i32 noundef %i.mn, ptr noundef %.040, i32 noundef 4, i32 noundef 1, i32 noundef 0)
end_hunk_0
