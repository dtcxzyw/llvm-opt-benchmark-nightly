Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ieee1905?download=true
inline.NumInlined: 144
inline.NumDeleted: 139
begin_hunk_0_@dissect_ieee1905_tlvs:bb.a
  %i.bmz = zext i16 %i.bmu to i32                 ; 2 uses
  %i.bna = call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.bmy, ptr noundef %0, i32 noundef %i.bmx, i32 noundef %i.bmz, i32 noundef 0) ; 0 uses
  %i.bnb = add i32 %i.bmx, %i.bmz
  br label %dissect_ieee1905_tlv_data.exit

bb.fz:                                            ; preds = %bb.f
  %i.bnc = load i32, ptr @hf_ieee1905_encrypted_enc_transmission_count, align 4
  %i.bnd = call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.bnc, ptr noundef %0, i32 noundef %i.ct, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.bne = add i32 %.0, 9
  %i.bnf = load i32, ptr @hf_ieee1905_encrypted_source_la_mac_id, align 4
  %i.bng = call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.bnf, ptr noundef %0, i32 noundef %i.bne, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.bnh = add i32 %.0, 15
  %i.bni = load i32, ptr @hf_ieee1905_encrypted_dest_al_mac_addr, align 4
  %i.bnj = call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.bni, ptr noundef %0, i32 noundef %i.bnh, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.bnk = add i32 %.0, 21                        ; 2 uses
  %i.bnl = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.bnk)
  %i.bnm = load i32, ptr @hf_ieee1905_encrypted_enc_output_field_len, align 4
  %i.bnn = call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.bnm, ptr noundef %0, i32 noundef %i.bnk, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bno = add i32 %.0, 23                        ; 2 uses
  %i.bnp = load i32, ptr @hf_ieee1905_encrypted_enc_output_field, align 4
  %i.bnq = zext i16 %i.bnl to i32                 ; 2 uses
  %i.bnr = call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.bnp, ptr noundef %0, i32 noundef %i.bno, i32 noundef %i.bnq, i32 noundef 0) ; 0 uses
  %i.bns = add i32 %i.bno, %i.bnq
  br label %dissect_ieee1905_tlv_data.exit

bb.ga:                                            ; preds = %bb.f
  %i.bnt = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ct) ; 2 uses
  %i.bnu = zext i8 %i.bnt to i32                  ; 2 uses
  %i.bnv = load i32, ptr @hf_ieee1905_cac_request_radio_count, align 4
  %i.bnw = call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.bnv, ptr noundef %0, i32 noundef %i.ct, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bnx = add i32 %.0, 4                         ; 3 uses
  %.not.i164 = icmp eq i8 %i.bnt, 0
  br i1 %.not.i164, label %dissect_ieee1905_tlv_data.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.bny = mul nuw nsw i32 %i.bnu, 9
  %i.bnz = load i32, ptr @ett_cac_request_radio_list, align 4
  %i.boa = call ptr @proto_tree_add_subtree(ptr noundef %i.df, ptr noundef %0, i32 noundef %i.bnx, i32 noundef %i.bny, i32 noundef %i.bnz, ptr noundef null, ptr noundef nonnull @.str.1983)
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gc, %bb.gb
  %.02.i165 = phi i32 [ %i.bnx, %bb.gb ], [ %i.bop, %bb.gc ] ; 6 uses
  %.0341.i = phi i32 [ 0, %bb.gb ], [ %i.boq, %bb.gc ] ; 2 uses
  %i.bob = load i32, ptr @ett_cac_request_radio, align 4
  %i.boc = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.boa, ptr noundef %0, i32 noundef %.02.i165, i32 noundef 9, i32 noundef %i.bob, ptr noundef null, ptr noundef nonnull @.str.1929, i32 noundef %.0341.i) ; 4 uses
  %i.bod = load i32, ptr @hf_ieee1905_cac_request_radio_id, align 4
  %i.boe = call ptr @proto_tree_add_item(ptr noundef %i.boc, i32 noundef %i.bod, ptr noundef %0, i32 noundef %.02.i165, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.bof = add i32 %.02.i165, 6
  %i.bog = load i32, ptr @hf_ieee1905_cac_request_op_class, align 4
  %i.boh = call ptr @proto_tree_add_item(ptr noundef %i.boc, i32 noundef %i.bog, ptr noundef %0, i32 noundef %i.bof, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.boi = add i32 %.02.i165, 7
  %i.boj = load i32, ptr @hf_ieee1905_cac_request_channel, align 4
  %i.bok = call ptr @proto_tree_add_item(ptr noundef %i.boc, i32 noundef %i.boj, ptr noundef %0, i32 noundef %i.boi, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bol = add i32 %.02.i165, 8
  %i.bom = load i32, ptr @hf_ieee1905_cac_request_flags, align 4
  %i.bon = load i32, ptr @ett_cac_request_flags, align 4
  %i.boo = call ptr @proto_tree_add_bitmask(ptr noundef %i.boc, ptr noundef %0, i32 noundef %i.bol, i32 noundef %i.bom, i32 noundef %i.bon, ptr noundef nonnull @cac_request_method_flags, i32 noundef 0) ; 0 uses
  %i.bop = add i32 %.02.i165, 9                   ; 2 uses
  %i.boq = add nuw nsw i32 %.0341.i, 1            ; 2 uses
  %exitcond.not.i166 = icmp eq i32 %i.boq, %i.bnu
  br i1 %exitcond.not.i166, label %dissect_ieee1905_tlv_data.exit, label %bb.gc, !llvm.loop !77

bb.gd:                                            ; preds = %bb.f
  %i.bor = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ct) ; 2 uses
  %i.bos = load i32, ptr @hf_ieee1905_cac_termination_radio_count, align 4
  %i.bot = call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.bos, ptr noundef %0, i32 noundef %i.ct, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bou = add i32 %.0, 4                         ; 3 uses
  %i.bov = zext i8 %i.bor to i32                  ; 2 uses
  %.not.i159 = icmp eq i8 %i.bor, 0
  br i1 %.not.i159, label %dissect_ieee1905_tlv_data.exit, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.bow = mul nuw nsw i32 %i.bov, 9
  %i.box = load i32, ptr @ett_cac_terminate_radio_list, align 4
  %i.boy = call ptr @proto_tree_add_subtree(ptr noundef %i.df, ptr noundef %0, i32 noundef %i.bou, i32 noundef %i.bow, i32 noundef %i.box, ptr noundef null, ptr noundef nonnull @.str.1991)
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gf, %bb.ge
  %.02.i160 = phi i32 [ %i.bou, %bb.ge ], [ %i.bpj, %bb.gf ] ; 5 uses
  %.0301.i = phi i32 [ 0, %bb.ge ], [ %i.bpk, %bb.gf ] ; 2 uses
  %i.boz = load i32, ptr @ett_cac_terminate_radio, align 4
  %i.bpa = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.boy, ptr noundef %0, i32 noundef %.02.i160, i32 noundef 9, i32 noundef %i.boz, ptr noundef null, ptr noundef nonnull @.str.1929, i32 noundef %.0301.i) ; 3 uses
  %i.bpb = load i32, ptr @hf_ieee1905_cac_terminate_radio_id, align 4
  %i.bpc = call ptr @proto_tree_add_item(ptr noundef %i.bpa, i32 noundef %i.bpb, ptr noundef %0, i32 noundef %.02.i160, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.bpd = add i32 %.02.i160, 6
  %i.bpe = load i32, ptr @hf_ieee1905_cac_terminate_op_class, align 4
  %i.bpf = call ptr @proto_tree_add_item(ptr noundef %i.bpa, i32 noundef %i.bpe, ptr noundef %0, i32 noundef %i.bpd, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bpg = add i32 %.02.i160, 7
  %i.bph = load i32, ptr @hf_ieee1905_cac_terminate_channel, align 4
  %i.bpi = call ptr @proto_tree_add_item(ptr noundef %i.bpa, i32 noundef %i.bph, ptr noundef %0, i32 noundef %i.bpg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bpj = add i32 %.02.i160, 8                   ; 2 uses
  %i.bpk = add nuw nsw i32 %.0301.i, 1            ; 2 uses
  %exitcond.not.i161 = icmp eq i32 %i.bpk, %i.bov
  br i1 %exitcond.not.i161, label %dissect_ieee1905_tlv_data.exit, label %bb.gf, !llvm.loop !78

bb.gg:                                            ; preds = %bb.f
  %i.bpl = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ct) ; 2 uses
  %i.bpm = load i32, ptr @hf_ieee1905_cac_completion_rep_radio_count, align 4
  %i.bpn = call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.bpm, ptr noundef %0, i32 noundef %i.ct, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bpo = add i32 %.0, 4                         ; 3 uses
  %i.bpp = zext i8 %i.bpl to i32                  ; 2 uses
  %.not.i153 = icmp eq i8 %i.bpl, 0
  br i1 %.not.i153, label %dissect_ieee1905_tlv_data.exit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.bpq = mul nuw nsw i32 %i.bpp, 9
  %i.bpr = load i32, ptr @ett_cac_completion_radio_list, align 4
  %i.bps = call ptr @proto_tree_add_subtree(ptr noundef %i.df, ptr noundef %0, i32 noundef %i.bpo, i32 noundef %i.bpq, i32 noundef %i.bpr, ptr noundef null, ptr noundef nonnull @.str.1991)
  br label %bb.gi

bb.gi:                                            ; preds = %.loopexit.i155, %bb.gh
  %.05.i = phi i32 [ %i.bpo, %bb.gh ], [ %.2.i156, %.loopexit.i155 ] ; 7 uses
  %.0614.i = phi i32 [ 0, %bb.gh ], [ %i.bqy, %.loopexit.i155 ] ; 2 uses
  %i.bpt = load i32, ptr @ett_cac_completion_radio, align 4
  %i.bpu = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.bps, ptr noundef %0, i32 noundef %.05.i, i32 noundef 9, i32 noundef %i.bpt, ptr noundef null, ptr noundef nonnull @.str.1929, i32 noundef %.0614.i) ; 6 uses
  %i.bpv = load i32, ptr @hf_ieee1905_cac_completion_radio_id, align 4
  %i.bpw = call ptr @proto_tree_add_item(ptr noundef %i.bpu, i32 noundef %i.bpv, ptr noundef %0, i32 noundef %.05.i, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.bpx = add i32 %.05.i, 6
  %i.bpy = load i32, ptr @hf_ieee1905_cac_completion_op_class, align 4
  %i.bpz = call ptr @proto_tree_add_item(ptr noundef %i.bpu, i32 noundef %i.bpy, ptr noundef %0, i32 noundef %i.bpx, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bqa = add i32 %.05.i, 7
  %i.bqb = load i32, ptr @hf_ieee1905_cac_completion_channel, align 4
  %i.bqc = call ptr @proto_tree_add_item(ptr noundef %i.bpu, i32 noundef %i.bqb, ptr noundef %0, i32 noundef %i.bqa, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bqd = add i32 %.05.i, 8
  %i.bqe = load i32, ptr @hf_ieee1905_cac_completion_status, align 4
  %i.bqf = call ptr @proto_tree_add_item(ptr noundef %i.bpu, i32 noundef %i.bqe, ptr noundef %0, i32 noundef %i.bqd, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bqg = add i32 %.05.i, 9                      ; 2 uses
  %i.bqh = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bqg) ; 2 uses
  %i.bqi = load i32, ptr @hf_ieee1905_cac_completion_radar_count, align 4
  %i.bqj = call ptr @proto_tree_add_item(ptr noundef %i.bpu, i32 noundef %i.bqi, ptr noundef %0, i32 noundef %i.bqg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bqk = add i32 %.05.i, 10                     ; 3 uses
  %i.bql = zext i8 %i.bqh to i32                  ; 2 uses
  %.not66.i = icmp eq i8 %i.bqh, 0
  br i1 %.not66.i, label %.loopexit.i155, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.bqm = shl nuw nsw i32 %i.bql, 1
  %i.bqn = load i32, ptr @ett_cac_completion_radar_list, align 4
  %i.bqo = call ptr @proto_tree_add_subtree(ptr noundef %i.bpu, ptr noundef %0, i32 noundef %i.bqk, i32 noundef %i.bqm, i32 noundef %i.bqn, ptr noundef null, ptr noundef nonnull @.str.1992)
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gk, %bb.gj
  %.13.i = phi i32 [ %i.bqk, %bb.gj ], [ %i.bqw, %bb.gk ] ; 4 uses
  %.0602.i = phi i32 [ 0, %bb.gj ], [ %i.bqx, %bb.gk ] ; 2 uses
  %i.bqp = load i32, ptr @ett_cac_completion_radar, align 4
  %i.bqq = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.bqo, ptr noundef %0, i32 noundef %.13.i, i32 noundef 2, i32 noundef %i.bqp, ptr noundef null, ptr noundef nonnull @.str.1993, i32 noundef %.0602.i) ; 2 uses
  %i.bqr = load i32, ptr @hf_ieee1905_cac_comp_radar_op_class, align 4
  %i.bqs = call ptr @proto_tree_add_item(ptr noundef %i.bqq, i32 noundef %i.bqr, ptr noundef %0, i32 noundef %.13.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bqt = add i32 %.13.i, 1
  %i.bqu = load i32, ptr @hf_ieee1905_cac_comp_radar_channel, align 4
  %i.bqv = call ptr @proto_tree_add_item(ptr noundef %i.bqq, i32 noundef %i.bqu, ptr noundef %0, i32 noundef %i.bqt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bqw = add i32 %.13.i, 2                      ; 2 uses
  %i.bqx = add nuw nsw i32 %.0602.i, 1            ; 2 uses
  %exitcond.not.i154 = icmp eq i32 %i.bqx, %i.bql
  br i1 %exitcond.not.i154, label %.loopexit.i155, label %bb.gk, !llvm.loop !79

.loopexit.i155:                                   ; preds = %bb.gk, %bb.gi
  %.2.i156 = phi i32 [ %i.bqk, %bb.gi ], [ %i.bqw, %bb.gk ] ; 2 uses
  %i.bqy = add nuw nsw i32 %.0614.i, 1            ; 2 uses
  %exitcond6.not.i = icmp eq i32 %i.bqy, %i.bpp
  br i1 %exitcond6.not.i, label %dissect_ieee1905_tlv_data.exit, label %bb.gi, !llvm.loop !80

bb.gl:                                            ; preds = %bb.f
  %i.bqz = load i32, ptr @hf_ieee1905_assoc_wf6_sta_mac_addr, align 4
  %i.bra = call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.bqz, ptr noundef %0, i32 noundef %i.ct, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.brb = add i32 %.0, 9
  %i.brc = load i32, ptr @hf_ieee1905_assoc_wf6_sta_tid_count, align 4
  %i.brd = call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.brc, ptr noundef %0, i32 noundef %i.brb, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bre = add i32 %.0, 10                        ; 3 uses
  %i.brf = add i16 %i.cz, -7                      ; 2 uses
  %i.brg = load i32, ptr @ett_sta_wf6_status_report_tid_list, align 4
  %i.brh = call ptr @proto_tree_add_subtree(ptr noundef %i.df, ptr noundef %0, i32 noundef %i.bre, i32 noundef -1, i32 noundef %i.brg, ptr noundef null, ptr noundef nonnull @.str.1994)
  %i.bri = zext i16 %i.brf to i32                 ; 2 uses
  %i.brj = icmp ugt i16 %i.brf, 1
  br i1 %i.brj, label %.lr.ph.i151, label %dissect_associated_wf6_sta_status_report.exit

.lr.ph.i151:                                      ; preds = %bb.gl, %.lr.ph.i151
  %.03.i152 = phi i32 [ %i.bru, %.lr.ph.i151 ], [ %i.bre, %bb.gl ] ; 5 uses
  %.0382.i = phi i8 [ %i.brv, %.lr.ph.i151 ], [ 0, %bb.gl ] ; 2 uses
  %.0391.i = phi i32 [ %i.brw, %.lr.ph.i151 ], [ %i.bri, %bb.gl ] ; 2 uses
  %i.brk = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.03.i152)
  %i.brl = load i32, ptr @ett_sta_wf6_status_report_tid_tree, align 4
  %i.brm = zext i8 %.0382.i to i32
  %i.brn = zext i8 %i.brk to i32
  %i.bro = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.brh, ptr noundef %0, i32 noundef %.03.i152, i32 noundef 2, i32 noundef %i.brl, ptr noundef null, ptr noundef nonnull @.str.1995, i32 noundef %i.brm, i32 noundef %i.brn) ; 2 uses
  %i.brp = load i32, ptr @hf_ieee1905_assoc_wf6_sta_tid, align 4
  %i.brq = call ptr @proto_tree_add_item(ptr noundef %i.bro, i32 noundef %i.brp, ptr noundef %0, i32 noundef %.03.i152, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.brr = add i32 %.03.i152, 1
  %i.brs = load i32, ptr @hf_ieee1905_assoc_wf6_sta_queue_size, align 4
  %i.brt = call ptr @proto_tree_add_item(ptr noundef %i.bro, i32 noundef %i.brs, ptr noundef %0, i32 noundef %i.brr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bru = add i32 %.03.i152, 2                   ; 2 uses
  %i.brv = add i8 %.0382.i, 1
  %i.brw = add nsw i32 %.0391.i, -2               ; 2 uses
  %i.brx = icmp samesign ugt i32 %.0391.i, 3
  br i1 %i.brx, label %.lr.ph.i151, label %dissect_associated_wf6_sta_status_report.exit, !llvm.loop !81

dissect_associated_wf6_sta_status_report.exit:    ; preds = %.lr.ph.i151, %bb.gl
  %.039.lcssa.i = phi i32 [ %i.bri, %bb.gl ], [ %i.brw, %.lr.ph.i151 ]
  %.0.lcssa.i150 = phi i32 [ %i.bre, %bb.gl ], [ %i.bru, %.lr.ph.i151 ] ; 2 uses
  call void @proto_item_set_len(ptr noundef null, i32 noundef %.0.lcssa.i150)
  %3 = icmp eq i32 %.039.lcssa.i, 1
  %4 = zext i1 %3 to i32
  %spec.select.i = add i32 %.0.lcssa.i150, %4
  br label %dissect_ieee1905_tlv_data.exit

bb.gm:                                            ; preds = %bb.f
  %i.bry = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.ct) ; 2 uses
  %i.brz = load i32, ptr @hf_ieee1905_cac_status_rpt_active_chan, align 4
  %i.bsa = call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.brz, ptr noundef %0, i32 noundef %i.ct, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bsb = add i32 %.0, 4                         ; 3 uses
  %i.bsc = zext i8 %i.bry to i32                  ; 2 uses
  %.not.i140 = icmp eq i8 %i.bry, 0
  br i1 %.not.i140, label %.loopexit2.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.bsd = shl nuw nsw i32 %i.bsc, 2
  %i.bse = load i32, ptr @ett_cac_status_rpt_avail_list, align 4
  %i.bsf = call ptr @proto_tree_add_subtree(ptr noundef %i.df, ptr noundef %0, i32 noundef %i.bsb, i32 noundef %i.bsd, i32 noundef %i.bse, ptr noundef null, ptr noundef nonnull @.str.1996)
  br label %bb.go

bb.go:                                            ; preds = %bb.go, %bb.gn
  %.04.i141 = phi i32 [ %i.bsb, %bb.gn ], [ %i.bsq, %bb.go ] ; 5 uses
  %.0923.i = phi i32 [ 0, %bb.gn ], [ %i.bsr, %bb.go ] ; 2 uses
  %i.bsg = load i32, ptr @ett_cac_status_rpt_avail_chan, align 4
  %i.bsh = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.bsf, ptr noundef %0, i32 noundef %.04.i141, i32 noundef 4, i32 noundef %i.bsg, ptr noundef null, ptr noundef nonnull @.str.1997, i32 noundef %.0923.i) ; 3 uses
  %i.bsi = load i32, ptr @hf_ieee1905_cac_status_rpt_avail_op_class, align 4
  %i.bsj = call ptr @proto_tree_add_item(ptr noundef %i.bsh, i32 noundef %i.bsi, ptr noundef %0, i32 noundef %.04.i141, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bsk = add i32 %.04.i141, 1
  %i.bsl = load i32, ptr @hf_ieee1905_cac_status_rpt_avail_channel, align 4
  %i.bsm = call ptr @proto_tree_add_item(ptr noundef %i.bsh, i32 noundef %i.bsl, ptr noundef %0, i32 noundef %i.bsk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bsn = add i32 %.04.i141, 2
  %i.bso = load i32, ptr @hf_ieee1905_cac_status_rpt_avail_minutes, align 4
  %i.bsp = call ptr @proto_tree_add_item(ptr noundef %i.bsh, i32 noundef %i.bso, ptr noundef %0, i32 noundef %i.bsn, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bsq = add i32 %.04.i141, 4                   ; 2 uses
  %i.bsr = add nuw nsw i32 %.0923.i, 1            ; 2 uses
  %exitcond.not.i142 = icmp eq i32 %i.bsr, %i.bsc
  br i1 %exitcond.not.i142, label %.loopexit2.i, label %bb.go, !llvm.loop !82

.loopexit2.i:                                     ; preds = %bb.go, %bb.gm
  %.1.i143 = phi i32 [ %i.bsb, %bb.gm ], [ %i.bsq, %bb.go ] ; 3 uses
  %i.bss = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.1.i143) ; 2 uses
  %i.bst = load i32, ptr @hf_ieee1905_cac_status_rpt_non_occ_cnt, align 4
  %i.bsu = call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.bst, ptr noundef %0, i32 noundef %.1.i143, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bsv = add i32 %.1.i143, 1                    ; 3 uses
  %i.bsw = zext i8 %i.bss to i32                  ; 2 uses
  %.not99.i = icmp eq i8 %i.bss, 0
  br i1 %.not99.i, label %.loopexit1.i144, label %bb.gp

bb.gp:                                            ; preds = %.loopexit2.i
  %i.bsx = shl nuw nsw i32 %i.bsw, 2
  %i.bsy = load i32, ptr @ett_cac_status_rpt_non_occupy_list, align 4
  %i.bsz = call ptr @proto_tree_add_subtree(ptr noundef %i.df, ptr noundef %0, i32 noundef %i.bsv, i32 noundef %i.bsx, i32 noundef %i.bsy, ptr noundef null, ptr noundef nonnull @.str.1998)
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gq, %bb.gp
  %.26.i = phi i32 [ %i.bsv, %bb.gp ], [ %i.btk, %bb.gq ] ; 5 uses
  %.0915.i = phi i32 [ 0, %bb.gp ], [ %i.btl, %bb.gq ] ; 2 uses
  %i.bta = load i32, ptr @ett_cac_status_rpt_unocc_chan, align 4
  %i.btb = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.bsz, ptr noundef %0, i32 noundef %.26.i, i32 noundef 4, i32 noundef %i.bta, ptr noundef null, ptr noundef nonnull @.str.1999, i32 noundef %.0915.i) ; 3 uses
  %i.btc = load i32, ptr @hf_ieee1905_cac_status_rpt_non_occ_op_class, align 4
  %i.btd = call ptr @proto_tree_add_item(ptr noundef %i.btb, i32 noundef %i.btc, ptr noundef %0, i32 noundef %.26.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bte = add i32 %.26.i, 1
  %i.btf = load i32, ptr @hf_ieee1905_cac_status_rpt_non_occ_channel, align 4
  %i.btg = call ptr @proto_tree_add_item(ptr noundef %i.btb, i32 noundef %i.btf, ptr noundef %0, i32 noundef %i.bte, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bth = add i32 %.26.i, 2
  %i.bti = load i32, ptr @hf_ieee1905_cac_status_rpt_non_occ_seconds, align 4
  %i.btj = call ptr @proto_tree_add_item(ptr noundef %i.btb, i32 noundef %i.bti, ptr noundef %0, i32 noundef %i.bth, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.btk = add i32 %.26.i, 4                      ; 2 uses
  %i.btl = add nuw nsw i32 %.0915.i, 1            ; 2 uses
  %exitcond11.not.i = icmp eq i32 %i.btl, %i.bsw
  br i1 %exitcond11.not.i, label %.loopexit1.i144, label %bb.gq, !llvm.loop !83

.loopexit1.i144:                                  ; preds = %bb.gq, %.loopexit2.i
  %.3.i145 = phi i32 [ %i.bsv, %.loopexit2.i ], [ %i.btk, %bb.gq ] ; 3 uses
  %i.btm = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.3.i145) ; 2 uses
  %i.btn = load i32, ptr @hf_ieee1905_cac_status_rpt_active_cac_cnt, align 4
  %i.bto = call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.btn, ptr noundef %0, i32 noundef %.3.i145, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.btp = add i32 %.3.i145, 1                    ; 3 uses
  %i.btq = zext i8 %i.btm to i32                  ; 2 uses
  %.not100.i = icmp eq i8 %i.btm, 0
  br i1 %.not100.i, label %dissect_ieee1905_tlv_data.exit, label %bb.gr

bb.gr:                                            ; preds = %.loopexit1.i144
  %i.btr = mul nuw nsw i32 %i.btq, 5
  %i.bts = load i32, ptr @ett_cac_status_rpt_active_cac_list, align 4
  %i.btt = call ptr @proto_tree_add_subtree(ptr noundef %i.df, ptr noundef %0, i32 noundef %i.btp, i32 noundef %i.btr, i32 noundef %i.bts, ptr noundef null, ptr noundef nonnull @.str.2000)
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gs, %bb.gr
  %.48.i = phi i32 [ %i.btp, %bb.gr ], [ %i.bue, %bb.gs ] ; 5 uses
  %.0907.i = phi i32 [ 0, %bb.gr ], [ %i.buf, %bb.gs ] ; 2 uses
  %i.btu = load i32, ptr @ett_cac_status_rpt_active_cac_tree, align 4
  %i.btv = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.btt, ptr noundef %0, i32 noundef %.48.i, i32 noundef 5, i32 noundef %i.btu, ptr noundef null, ptr noundef nonnull @.str.2001, i32 noundef %.0907.i) ; 3 uses
  %i.btw = load i32, ptr @hf_ieee1905_cac_status_rpt_active_cac_op_class, align 4
  %i.btx = call ptr @proto_tree_add_item(ptr noundef %i.btv, i32 noundef %i.btw, ptr noundef %0, i32 noundef %.48.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bty = add i32 %.48.i, 1
  %i.btz = load i32, ptr @hf_ieee1905_cac_status_rpt_active_cac_channel, align 4
  %i.bua = call ptr @proto_tree_add_item(ptr noundef %i.btv, i32 noundef %i.btz, ptr noundef %0, i32 noundef %i.bty, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bub = add i32 %.48.i, 2
  %i.buc = load i32, ptr @hf_ieee1905_cac_status_rpt_active_cac_seconds, align 4
  %i.bud = call ptr @proto_tree_add_item(ptr noundef %i.btv, i32 noundef %i.buc, ptr noundef %0, i32 noundef %i.bub, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bue = add i32 %.48.i, 5                      ; 2 uses
  %i.buf = add nuw nsw i32 %.0907.i, 1            ; 2 uses
  %exitcond12.not.i146 = icmp eq i32 %i.buf, %i.btq
  br i1 %exitcond12.not.i146, label %dissect_ieee1905_tlv_data.exit, label %bb.gs, !llvm.loop !84

bb.gt:                                            ; preds = %bb.f
  %i.bug = load i32, ptr @hf_ieee1905_cac_capa_country_code, align 4
  %i.buh = call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.bug, ptr noundef %0, i32 noundef %i.ct, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.bui = add i32 %.0, 5                         ; 2 uses
  %i.buj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bui) ; 2 uses
  %i.buk = load i32, ptr @hf_ieee1905_cac_capa_radio_cnt, align 4
  %i.bul = call ptr @proto_tree_add_item(ptr noundef %i.df, i32 noundef %i.buk, ptr noundef %0, i32 noundef %i.bui, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bum = add i32 %.0, 6                         ; 4 uses
  %i.bun = zext i8 %i.buj to i32
  %.not.i135 = icmp eq i8 %i.buj, 0
  br i1 %.not.i135, label %dissect_ieee1905_tlv_data.exit, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #15
  store ptr null, ptr %i.bd, align 8
  %i.buo = load i32, ptr @ett_cac_capabilities_radio_list, align 4
  %i.bup = call ptr @proto_tree_add_subtree(ptr noundef %i.df, ptr noundef %0, i32 noundef %i.bum, i32 noundef -1, i32 noundef %i.buo, ptr noundef nonnull %i.bd, ptr noundef nonnull @.str.1983)
  br label %bb.gv

bb.gv:                                            ; preds = %bb.hf, %bb.gu
  %.0998.i = phi i32 [ 0, %bb.gu ], [ %i.bwn, %bb.hf ] ; 2 uses
  %.01007.i = phi i32 [ %i.bum, %bb.gu ], [ %.6.i, %bb.hf ] ; 4 uses
  %i.buq = load i32, ptr @ett_cac_capabilities_radio_tree, align 4
  %i.bur = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.bup, ptr noundef %0, i32 noundef %.01007.i, i32 noundef 5, i32 noundef %i.buq, ptr noundef null, ptr noundef nonnull @.str.1929, i32 noundef %.0998.i) ; 3 uses
  %i.bus = load i32, ptr @hf_ieee1905_cac_capabilities_radio_id, align 4
  %i.but = call ptr @proto_tree_add_item(ptr noundef %i.bur, i32 noundef %i.bus, ptr noundef %0, i32 noundef %.01007.i, i32 noundef 6, i32 noundef 0) ; 0 uses
  %i.buu = add i32 %.01007.i, 6                   ; 2 uses
  %i.buv = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.buu) ; 2 uses
  %i.buw = load i32, ptr @hf_ieee1905_cac_capabilities_types_num, align 4
  %i.bux = call ptr @proto_tree_add_item(ptr noundef %i.bur, i32 noundef %i.buw, ptr noundef %0, i32 noundef %i.buu, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.buy = add i32 %.01007.i, 7                   ; 4 uses
  %i.buz = zext i8 %i.buv to i32
  %.not109.i = icmp eq i8 %i.buv, 0
  br i1 %.not109.i, label %bb.hf, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #15
  store ptr null, ptr %i.be, align 8
  %i.bva = load i32, ptr @ett_cac_capabilities_type_list, align 4
  %i.bvb = call ptr @proto_tree_add_subtree(ptr noundef %i.bur, ptr noundef %0, i32 noundef %i.buy, i32 noundef -1, i32 noundef %i.bva, ptr noundef nonnull %i.be, ptr noundef nonnull @.str.2002)
  br label %bb.gx

bb.gx:                                            ; preds = %bb.hd, %bb.gw
  %.0986.i = phi i32 [ 0, %bb.gw ], [ %i.bwk, %bb.hd ] ; 2 uses
  %.15.i136 = phi i32 [ %i.buy, %bb.gw ], [ %.5.i, %bb.hd ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf) #15
  store ptr null, ptr %i.bf, align 8
  %i.bvc = load i32, ptr @ett_cac_capabilities_type_tree, align 4
  %i.bvd = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.bvb, ptr noundef %0, i32 noundef %.15.i136, i32 noundef -1, i32 noundef %i.bvc, ptr noundef nonnull %i.bf, ptr noundef nonnull @.str.2003, i32 noundef %.0986.i) ; 4 uses
  %i.bve = load i32, ptr @hf_ieee1905_cac_capabilities_cac_mode, align 4
  %i.bvf = call ptr @proto_tree_add_item(ptr noundef %i.bvd, i32 noundef %i.bve, ptr noundef %0, i32 noundef %.15.i136, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bvg = add i32 %.15.i136, 1
  %i.bvh = load i32, ptr @hf_ieee1905_cac_capabilities_cac_seconds, align 4
  %i.bvi = call ptr @proto_tree_add_item(ptr noundef %i.bvd, i32 noundef %i.bvh, ptr noundef %0, i32 noundef %i.bvg, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.bvj = add i32 %.15.i136, 4                   ; 2 uses
  %i.bvk = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bvj) ; 2 uses
  %i.bvl = load i32, ptr @hf_ieee1905_cac_capabilities_op_class_num, align 4
  %i.bvm = call ptr @proto_tree_add_item(ptr noundef %i.bvd, i32 noundef %i.bvl, ptr noundef %0, i32 noundef %i.bvj, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bvn = add i32 %.15.i136, 5                   ; 3 uses
  %i.bvo = zext i8 %i.bvk to i32
  %.not110.i = icmp eq i8 %i.bvk, 0
  br i1 %.not110.i, label %bb.hd, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg) #15
  store ptr null, ptr %i.bg, align 8
  %i.bvp = load i32, ptr @ett_cac_capabilities_class_list, align 4
  %i.bvq = call ptr @proto_tree_add_subtree(ptr noundef %i.bvd, ptr noundef %0, i32 noundef %i.bvn, i32 noundef -1, i32 noundef %i.bvp, ptr noundef nonnull %i.bg, ptr noundef nonnull @.str.2004)
  br label %bb.gz

bb.gz:                                            ; preds = %.loopexit.i, %bb.gy
  %.0974.i = phi i32 [ 0, %bb.gy ], [ %i.bwj, %.loopexit.i ] ; 2 uses
  %.23.i = phi i32 [ %i.bvn, %bb.gy ], [ %.4.i, %.loopexit.i ] ; 5 uses
  %i.bvr = load i32, ptr @ett_cac_capabilities_class_tree, align 4
  %i.bvs = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %i.bvq, ptr noundef %0, i32 noundef %.23.i, i32 noundef -1, i32 noundef %i.bvr, ptr noundef nonnull %i.bf, ptr noundef nonnull @.str.2005, i32 noundef %.0974.i) ; 3 uses
  %i.bvt = load i32, ptr @hf_ieee1905_cac_capabilities_op_class, align 4
  %i.bvu = call ptr @proto_tree_add_item(ptr noundef %i.bvs, i32 noundef %i.bvt, ptr noundef %0, i32 noundef %.23.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bvv = add i32 %.23.i, 1                      ; 2 uses
  %i.bvw = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.bvv) ; 2 uses
  %i.bvx = load i32, ptr @hf_ieee1905_cac_capabilities_channel_cnt, align 4
  %i.bvy = call ptr @proto_tree_add_item(ptr noundef %i.bvs, i32 noundef %i.bvx, ptr noundef %0, i32 noundef %i.bvv, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bvz = add i32 %.23.i, 2                      ; 3 uses
  %.not111.i = icmp eq i8 %i.bvw, 0
  br i1 %.not111.i, label %.loopexit.i, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.bwa = zext i8 %i.bvw to i32                  ; 2 uses
  %i.bwb = load i32, ptr @ett_cac_capabilities_channel_list, align 4
  %i.bwc = call ptr @proto_tree_add_subtree(ptr noundef %i.bvs, ptr noundef %0, i32 noundef %i.bvz, i32 noundef %i.bwa, i32 noundef %i.bwb, ptr noundef null, ptr noundef nonnull @.str.1986)
  br label %bb.hb

bb.hb:                                            ; preds = %bb.hb, %bb.ha
  %.02.i137 = phi i32 [ %i.bwa, %bb.ha ], [ %i.bwf, %bb.hb ]
  %.31.i = phi i32 [ %i.bvz, %bb.ha ], [ %i.bwg, %bb.hb ] ; 2 uses
  %i.bwd = load i32, ptr @hf_ieee1905_cac_capabillity_channel, align 4
  %i.bwe = call ptr @proto_tree_add_item(ptr noundef %i.bwc, i32 noundef %i.bwd, ptr noundef %0, i32 noundef %.31.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.bwf = add nsw i32 %.02.i137, -1              ; 2 uses
end_hunk_0
