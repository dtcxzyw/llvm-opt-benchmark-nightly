Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-lbmc?download=true
inline.NumInlined: 222
inline.NumDeleted: 171
begin_hunk_0_@lbmc_dissect_lbmc_packet:bb.a
  %i.aae = call ptr @proto_tree_add_item(ptr noundef %i.zh, i32 noundef %i.aad, ptr noundef %i.jl, i32 noundef 24, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.ib

bb.bh:                                            ; preds = %bb.w
  %i.aaf = load i32, ptr @hf_lbmc_ume_keepalive, align 4
  %i.aag = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.aaf, ptr noundef %i.jl, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.aah = load i32, ptr @ett_lbmc_ume_keepalive, align 4
  %i.aai = call ptr @proto_item_add_subtree(ptr noundef %i.aag, i32 noundef %i.aah) ; 7 uses
  %i.aaj = load i32, ptr @hf_lbmc_ume_keepalive_next_hdr, align 4
  %i.aak = call ptr @proto_tree_add_item(ptr noundef %i.aai, i32 noundef %i.aaj, ptr noundef %i.jl, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aal = load i32, ptr @hf_lbmc_ume_keepalive_hdr_len, align 4
  %i.aam = call ptr @proto_tree_add_item(ptr noundef %i.aai, i32 noundef %i.aal, ptr noundef %i.jl, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aan = load i32, ptr @hf_lbmc_ume_keepalive_flags, align 4
  %i.aao = load i32, ptr @ett_lbmc_ume_keepalive_flags, align 4
  %i.aap = call ptr @proto_tree_add_bitmask(ptr noundef %i.aai, ptr noundef %i.jl, i32 noundef 2, i32 noundef %i.aan, i32 noundef %i.aao, ptr noundef nonnull @dissect_nhdr_ume_keepalive.flags, i32 noundef 0) ; 0 uses
  %i.aaq = load i32, ptr @hf_lbmc_ume_keepalive_type, align 4
  %i.aar = call ptr @proto_tree_add_item(ptr noundef %i.aai, i32 noundef %i.aaq, ptr noundef %i.jl, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aas = load i32, ptr @hf_lbmc_ume_keepalive_transport_idx, align 4
  %i.aat = call ptr @proto_tree_add_item(ptr noundef %i.aai, i32 noundef %i.aas, ptr noundef %i.jl, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aau = load i32, ptr @hf_lbmc_ume_keepalive_topic_idx, align 4
  %i.aav = call ptr @proto_tree_add_item(ptr noundef %i.aai, i32 noundef %i.aau, ptr noundef %i.jl, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aaw = load i32, ptr @hf_lbmc_ume_keepalive_reg_id, align 4
  %i.aax = call ptr @proto_tree_add_item(ptr noundef %i.aai, i32 noundef %i.aaw, ptr noundef %i.jl, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.ib

bb.bi:                                            ; preds = %bb.w
  %i.aay = load i32, ptr @hf_lbmc_ume_storeid, align 4
  %i.aaz = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.aay, ptr noundef %i.jl, i32 noundef 0, i32 noundef 4, i32 noundef 0)
  %i.aba = load i32, ptr @ett_lbmc_ume_storeid, align 4
  %i.abb = call ptr @proto_item_add_subtree(ptr noundef %i.aaz, i32 noundef %i.aba) ; 4 uses
  %i.abc = load i32, ptr @hf_lbmc_ume_storeid_next_hdr, align 4
  %i.abd = call ptr @proto_tree_add_item(ptr noundef %i.abb, i32 noundef %i.abc, ptr noundef %i.jl, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abe = load i32, ptr @hf_lbmc_ume_storeid_hdr_len, align 4
  %i.abf = call ptr @proto_tree_add_item(ptr noundef %i.abb, i32 noundef %i.abe, ptr noundef %i.jl, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abg = load i32, ptr @hf_lbmc_ume_storeid_ignore, align 4
  %i.abh = call ptr @proto_tree_add_item(ptr noundef %i.abb, i32 noundef %i.abg, ptr noundef %i.jl, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.abi = load i32, ptr @hf_lbmc_ume_storeid_store_id, align 4
  %i.abj = call ptr @proto_tree_add_item(ptr noundef %i.abb, i32 noundef %i.abi, ptr noundef %i.jl, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.ib

bb.bj:                                            ; preds = %bb.w
  %i.abk = load i32, ptr @hf_lbmc_ume_ranged_ack, align 4
  %i.abl = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.abk, ptr noundef %i.jl, i32 noundef 0, i32 noundef 12, i32 noundef 0)
  %i.abm = load i32, ptr @ett_lbmc_ume_ranged_ack, align 4
  %i.abn = call ptr @proto_item_add_subtree(ptr noundef %i.abl, i32 noundef %i.abm) ; 5 uses
  %i.abo = load i32, ptr @hf_lbmc_ume_ranged_ack_next_hdr, align 4
  %i.abp = call ptr @proto_tree_add_item(ptr noundef %i.abn, i32 noundef %i.abo, ptr noundef %i.jl, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abq = load i32, ptr @hf_lbmc_ume_ranged_ack_hdr_len, align 4
  %i.abr = call ptr @proto_tree_add_item(ptr noundef %i.abn, i32 noundef %i.abq, ptr noundef %i.jl, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.abs = load i32, ptr @hf_lbmc_ume_ranged_ack_flags, align 4
  %i.abt = load i32, ptr @ett_lbmc_ume_ranged_ack_flags, align 4
  %i.abu = call ptr @proto_tree_add_bitmask(ptr noundef %i.abn, ptr noundef %i.jl, i32 noundef 2, i32 noundef %i.abs, i32 noundef %i.abt, ptr noundef nonnull @dissect_nhdr_ume_ranged_ack.flags, i32 noundef 0) ; 0 uses
  %i.abv = load i32, ptr @hf_lbmc_ume_ranged_ack_first_seqnum, align 4
  %i.abw = call ptr @proto_tree_add_item(ptr noundef %i.abn, i32 noundef %i.abv, ptr noundef %i.jl, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.abx = load i32, ptr @hf_lbmc_ume_ranged_ack_last_seqnum, align 4
  %i.aby = call ptr @proto_tree_add_item(ptr noundef %i.abn, i32 noundef %i.abx, ptr noundef %i.jl, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.ib

bb.bk:                                            ; preds = %bb.w
  %i.abz = load i32, ptr @hf_lbmc_ume_ack_id, align 4
  %i.aca = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.abz, ptr noundef %i.jl, i32 noundef 0, i32 noundef 8, i32 noundef 0)
  %i.acb = load i32, ptr @ett_lbmc_ume_ack_id, align 4
  %i.acc = call ptr @proto_item_add_subtree(ptr noundef %i.aca, i32 noundef %i.acb) ; 4 uses
  %i.acd = load i32, ptr @hf_lbmc_ume_ack_id_next_hdr, align 4
  %i.ace = call ptr @proto_tree_add_item(ptr noundef %i.acc, i32 noundef %i.acd, ptr noundef %i.jl, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acf = load i32, ptr @hf_lbmc_ume_ack_id_hdr_len, align 4
  %i.acg = call ptr @proto_tree_add_item(ptr noundef %i.acc, i32 noundef %i.acf, ptr noundef %i.jl, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ach = load i32, ptr @hf_lbmc_ume_ack_id_flags, align 4
  %i.aci = load i32, ptr @ett_lbmc_ume_ack_id_flags, align 4
  %i.acj = call ptr @proto_tree_add_bitmask(ptr noundef %i.acc, ptr noundef %i.jl, i32 noundef 2, i32 noundef %i.ach, i32 noundef %i.aci, ptr noundef nonnull @dissect_nhdr_ume_ack_id.flags, i32 noundef 0) ; 0 uses
  %i.ack = load i32, ptr @hf_lbmc_ume_ack_id_id, align 4
  %i.acl = call ptr @proto_tree_add_item(ptr noundef %i.acc, i32 noundef %i.ack, ptr noundef %i.jl, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.ib

bb.bl:                                            ; preds = %bb.w
  %i.acm = load i32, ptr @hf_lbmc_ume_capability, align 4
  %i.acn = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.acm, ptr noundef %i.jl, i32 noundef 0, i32 noundef 4, i32 noundef 0)
  %i.aco = load i32, ptr @ett_lbmc_ume_capability, align 4
  %i.acp = call ptr @proto_item_add_subtree(ptr noundef %i.acn, i32 noundef %i.aco) ; 3 uses
  %i.acq = load i32, ptr @hf_lbmc_ume_capability_next_hdr, align 4
  %i.acr = call ptr @proto_tree_add_item(ptr noundef %i.acp, i32 noundef %i.acq, ptr noundef %i.jl, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acs = load i32, ptr @hf_lbmc_ume_capability_hdr_len, align 4
  %i.act = call ptr @proto_tree_add_item(ptr noundef %i.acp, i32 noundef %i.acs, ptr noundef %i.jl, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.acu = load i32, ptr @hf_lbmc_ume_capability_flags, align 4
  %i.acv = load i32, ptr @ett_lbmc_ume_capability_flags, align 4
  %i.acw = call ptr @proto_tree_add_bitmask(ptr noundef %i.acp, ptr noundef %i.jl, i32 noundef 2, i32 noundef %i.acu, i32 noundef %i.acv, ptr noundef nonnull @dissect_nhdr_ume_capability.flags, i32 noundef 0) ; 0 uses
  br label %bb.ib

bb.bm:                                            ; preds = %bb.w
  %i.acx = load i32, ptr @hf_lbmc_ume_proxy_src, align 4
  %i.acy = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.acx, ptr noundef %i.jl, i32 noundef 0, i32 noundef 4, i32 noundef 0)
  %i.acz = load i32, ptr @ett_lbmc_ume_proxy_src, align 4
  %i.ada = call ptr @proto_item_add_subtree(ptr noundef %i.acy, i32 noundef %i.acz) ; 3 uses
  %i.adb = load i32, ptr @hf_lbmc_ume_proxy_src_next_hdr, align 4
  %i.adc = call ptr @proto_tree_add_item(ptr noundef %i.ada, i32 noundef %i.adb, ptr noundef %i.jl, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.add = load i32, ptr @hf_lbmc_ume_proxy_src_hdr_len, align 4
  %i.ade = call ptr @proto_tree_add_item(ptr noundef %i.ada, i32 noundef %i.add, ptr noundef %i.jl, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adf = load i32, ptr @hf_lbmc_ume_proxy_src_flags, align 4
  %i.adg = load i32, ptr @ett_lbmc_ume_proxy_src_flags, align 4
  %i.adh = call ptr @proto_tree_add_bitmask(ptr noundef %i.ada, ptr noundef %i.jl, i32 noundef 2, i32 noundef %i.adf, i32 noundef %i.adg, ptr noundef nonnull @dissect_nhdr_ume_proxy_src.flags, i32 noundef 0) ; 0 uses
  br label %bb.ib

bb.bn:                                            ; preds = %bb.w
  %i.adi = load i32, ptr @hf_lbmc_ume_store_group, align 4
  %i.adj = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.adi, ptr noundef %i.jl, i32 noundef 0, i32 noundef 8, i32 noundef 0)
  %i.adk = load i32, ptr @ett_lbmc_ume_store_group, align 4
  %i.adl = call ptr @proto_item_add_subtree(ptr noundef %i.adj, i32 noundef %i.adk) ; 6 uses
  %i.adm = load i32, ptr @hf_lbmc_ume_store_group_next_hdr, align 4
  %i.adn = call ptr @proto_tree_add_item(ptr noundef %i.adl, i32 noundef %i.adm, ptr noundef %i.jl, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ado = load i32, ptr @hf_lbmc_ume_store_group_hdr_len, align 4
  %i.adp = call ptr @proto_tree_add_item(ptr noundef %i.adl, i32 noundef %i.ado, ptr noundef %i.jl, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adq = load i32, ptr @hf_lbmc_ume_store_group_flags, align 4
  %i.adr = load i32, ptr @ett_lbmc_ume_store_group_flags, align 4
  %i.ads = call ptr @proto_tree_add_bitmask(ptr noundef %i.adl, ptr noundef %i.jl, i32 noundef 2, i32 noundef %i.adq, i32 noundef %i.adr, ptr noundef nonnull @dissect_nhdr_ume_store_group.flags, i32 noundef 0) ; 0 uses
  %i.adt = load i32, ptr @hf_lbmc_ume_store_group_grp_idx, align 4
  %i.adu = call ptr @proto_tree_add_item(ptr noundef %i.adl, i32 noundef %i.adt, ptr noundef %i.jl, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.adv = load i32, ptr @hf_lbmc_ume_store_group_grp_sz, align 4
  %i.adw = call ptr @proto_tree_add_item(ptr noundef %i.adl, i32 noundef %i.adv, ptr noundef %i.jl, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.adx = load i32, ptr @hf_lbmc_ume_store_group_res1, align 4
  %i.ady = call ptr @proto_tree_add_item(ptr noundef %i.adl, i32 noundef %i.adx, ptr noundef %i.jl, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.ib

bb.bo:                                            ; preds = %bb.w
  %i.adz = load i32, ptr @hf_lbmc_ume_store, align 4
  %i.aea = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.adz, ptr noundef %i.jl, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.aeb = load i32, ptr @ett_lbmc_ume_store, align 4
  %i.aec = call ptr @proto_item_add_subtree(ptr noundef %i.aea, i32 noundef %i.aeb) ; 8 uses
  %i.aed = load i32, ptr @hf_lbmc_ume_store_next_hdr, align 4
  %i.aee = call ptr @proto_tree_add_item(ptr noundef %i.aec, i32 noundef %i.aed, ptr noundef %i.jl, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aef = load i32, ptr @hf_lbmc_ume_store_hdr_len, align 4
  %i.aeg = call ptr @proto_tree_add_item(ptr noundef %i.aec, i32 noundef %i.aef, ptr noundef %i.jl, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aeh = load i32, ptr @hf_lbmc_ume_store_flags, align 4
  %i.aei = load i32, ptr @ett_lbmc_ume_store_flags, align 4
  %i.aej = call ptr @proto_tree_add_bitmask(ptr noundef %i.aec, ptr noundef %i.jl, i32 noundef 2, i32 noundef %i.aeh, i32 noundef %i.aei, ptr noundef nonnull @dissect_nhdr_ume_store.flags, i32 noundef 0) ; 0 uses
  %i.aek = load i32, ptr @hf_lbmc_ume_store_grp_idx, align 4
  %i.ael = call ptr @proto_tree_add_item(ptr noundef %i.aec, i32 noundef %i.aek, ptr noundef %i.jl, i32 noundef 3, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aem = load i32, ptr @hf_lbmc_ume_store_store_tcp_port, align 4
  %i.aen = call ptr @proto_tree_add_item(ptr noundef %i.aec, i32 noundef %i.aem, ptr noundef %i.jl, i32 noundef 4, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aeo = load i32, ptr @hf_lbmc_ume_store_store_idx, align 4
  %i.aep = call ptr @proto_tree_add_item(ptr noundef %i.aec, i32 noundef %i.aeo, ptr noundef %i.jl, i32 noundef 6, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aeq = load i32, ptr @hf_lbmc_ume_store_store_ip_addr, align 4
  %i.aer = call ptr @proto_tree_add_item(ptr noundef %i.aec, i32 noundef %i.aeq, ptr noundef %i.jl, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aes = load i32, ptr @hf_lbmc_ume_store_src_reg_id, align 4
  %i.aet = call ptr @proto_tree_add_item(ptr noundef %i.aec, i32 noundef %i.aes, ptr noundef %i.jl, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.ib

bb.bp:                                            ; preds = %bb.w
  %i.aeu = load i32, ptr @hf_lbmc_ume_lj_info, align 4
  %i.aev = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.aeu, ptr noundef %i.jl, i32 noundef 0, i32 noundef 16, i32 noundef 0)
  %i.aew = load i32, ptr @ett_lbmc_ume_lj_info, align 4
  %i.aex = call ptr @proto_item_add_subtree(ptr noundef %i.aev, i32 noundef %i.aew) ; 6 uses
  %i.aey = load i32, ptr @hf_lbmc_ume_lj_info_next_hdr, align 4
  %i.aez = call ptr @proto_tree_add_item(ptr noundef %i.aex, i32 noundef %i.aey, ptr noundef %i.jl, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afa = load i32, ptr @hf_lbmc_ume_lj_info_hdr_len, align 4
  %i.afb = call ptr @proto_tree_add_item(ptr noundef %i.aex, i32 noundef %i.afa, ptr noundef %i.jl, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afc = load i32, ptr @hf_lbmc_ume_lj_info_flags, align 4
  %i.afd = load i32, ptr @ett_lbmc_ume_lj_info_flags, align 4
  %i.afe = call ptr @proto_tree_add_bitmask(ptr noundef %i.aex, ptr noundef %i.jl, i32 noundef 2, i32 noundef %i.afc, i32 noundef %i.afd, ptr noundef nonnull @dissect_nhdr_ume_lj_info.flags, i32 noundef 0) ; 0 uses
  %i.aff = load i32, ptr @hf_lbmc_ume_lj_info_low_seqnum, align 4
  %i.afg = call ptr @proto_tree_add_item(ptr noundef %i.aex, i32 noundef %i.aff, ptr noundef %i.jl, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.afh = load i32, ptr @hf_lbmc_ume_lj_info_high_seqnum, align 4
  %i.afi = call ptr @proto_tree_add_item(ptr noundef %i.aex, i32 noundef %i.afh, ptr noundef %i.jl, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.afj = load i32, ptr @hf_lbmc_ume_lj_info_qidx, align 4
  %i.afk = call ptr @proto_tree_add_item(ptr noundef %i.aex, i32 noundef %i.afj, ptr noundef %i.jl, i32 noundef 12, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.ib

bb.bq:                                            ; preds = %bb.w
  %i.afl = load i32, ptr @hf_lbmc_ume_ranged_rxreq, align 4
  %i.afm = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.afl, ptr noundef %i.jl, i32 noundef 0, i32 noundef 12, i32 noundef 0)
  %i.afn = load i32, ptr @ett_lbmc_ume_ranged_rxreq, align 4
  %i.afo = call ptr @proto_item_add_subtree(ptr noundef %i.afm, i32 noundef %i.afn) ; 5 uses
  %i.afp = load i32, ptr @hf_lbmc_ume_ranged_rxreq_next_hdr, align 4
  %i.afq = call ptr @proto_tree_add_item(ptr noundef %i.afo, i32 noundef %i.afp, ptr noundef %i.jl, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.afr = load i32, ptr @hf_lbmc_ume_ranged_rxreq_hdr_len, align 4
  %i.afs = call ptr @proto_tree_add_item(ptr noundef %i.afo, i32 noundef %i.afr, ptr noundef %i.jl, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aft = load i32, ptr @hf_lbmc_ume_ranged_rxreq_flags, align 4
  %i.afu = load i32, ptr @ett_lbmc_ume_ranged_rxreq_flags, align 4
  %i.afv = call ptr @proto_tree_add_bitmask(ptr noundef %i.afo, ptr noundef %i.jl, i32 noundef 2, i32 noundef %i.aft, i32 noundef %i.afu, ptr noundef nonnull @dissect_nhdr_ume_ranged_rxreq.flags, i32 noundef 0) ; 0 uses
  %i.afw = load i32, ptr @hf_lbmc_ume_ranged_rxreq_first_seqnum, align 4
  %i.afx = call ptr @proto_tree_add_item(ptr noundef %i.afo, i32 noundef %i.afw, ptr noundef %i.jl, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.afy = load i32, ptr @hf_lbmc_ume_ranged_rxreq_last_seqnum, align 4
  %i.afz = call ptr @proto_tree_add_item(ptr noundef %i.afo, i32 noundef %i.afy, ptr noundef %i.jl, i32 noundef 8, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.ib

bb.br:                                            ; preds = %bb.w
  %i.aga = call zeroext i8 @tvb_get_uint8(ptr noundef %i.jl, i32 noundef 1) ; 2 uses
  %i.agb = load i32, ptr @hf_lbmc_tsni, align 4
  %i.agc = zext i8 %i.aga to i32
  %i.agd = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.agb, ptr noundef %i.jl, i32 noundef 0, i32 noundef %i.agc, i32 noundef 0) ; 2 uses
  %i.age = load i32, ptr @ett_lbmc_tsni, align 4
  %i.agf = call ptr @proto_item_add_subtree(ptr noundef %i.agd, i32 noundef %i.age) ; 5 uses
  %i.agg = load i32, ptr @hf_lbmc_tsni_next_hdr, align 4
  %i.agh = call ptr @proto_tree_add_item(ptr noundef %i.agf, i32 noundef %i.agg, ptr noundef %i.jl, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.agi = load i32, ptr @hf_lbmc_tsni_hdr_len, align 4
  %i.agj = call ptr @proto_tree_add_item(ptr noundef %i.agf, i32 noundef %i.agi, ptr noundef %i.jl, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.agk = load i32, ptr @hf_lbmc_tsni_ignore, align 4
  %i.agl = call ptr @proto_tree_add_item(ptr noundef %i.agf, i32 noundef %i.agk, ptr noundef %i.jl, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.agm = load i32, ptr @hf_lbmc_tsni_num_recs, align 4
  %i.agn = call ptr @proto_tree_add_item(ptr noundef %i.agf, i32 noundef %i.agm, ptr noundef %i.jl, i32 noundef 2, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ago = add i8 %i.aga, -4                      ; 2 uses
  %i.agp = icmp ugt i8 %i.ago, 7
  br i1 %i.agp, label %.lr.ph.preheader.i, label %dissect_nhdr_tsni.exit

.lr.ph.preheader.i:                               ; preds = %bb.br
  %28 = zext i8 %i.ago to i32
  br label %.lr.ph.i841

.lr.ph.i841:                                      ; preds = %.lr.ph.i841, %.lr.ph.preheader.i
  %.039.i = phi i32 [ %i.ahc, %.lr.ph.i841 ], [ 4, %.lr.ph.preheader.i ] ; 4 uses
  %.03537.i = phi i32 [ %i.ahb, %.lr.ph.i841 ], [ %28, %.lr.ph.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #12
  store i32 0, ptr %i.s, align 4
  %i.agq = load i32, ptr @hf_lbmc_tsni_rec, align 4
  %i.agr = call ptr @proto_tree_add_item(ptr noundef %i.agf, i32 noundef %i.agq, ptr noundef %i.jl, i32 noundef %.039.i, i32 noundef 8, i32 noundef 0)
  %i.ags = load i32, ptr @ett_lbmc_tsni_rec, align 4
  %i.agt = call ptr @proto_item_add_subtree(ptr noundef %i.agr, i32 noundef %i.ags) ; 2 uses
  %i.agu = load i32, ptr @hf_lbmc_tsni_rec_tidx, align 4
  %i.agv = call ptr @proto_tree_add_item(ptr noundef %i.agt, i32 noundef %i.agu, ptr noundef %i.jl, i32 noundef %.039.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.agw = load i32, ptr @hf_lbmc_tsni_rec_sqn, align 4
  %i.agx = add nuw nsw i32 %.039.i, 4
  %i.agy = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.agt, i32 noundef %i.agw, ptr noundef %i.jl, i32 noundef %i.agx, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %i.s)
  %i.agz = load i32, ptr %i.s, align 4
  %i.aha = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.agy, ptr noundef nonnull @ei_lbmc_analysis_tsni, ptr noundef nonnull @.str.1744, i32 noundef %i.agz) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #12
  %i.ahb = add nsw i32 %.03537.i, -8
  %i.ahc = add nuw nsw i32 %.039.i, 8             ; 2 uses
  %i.ahd = icmp samesign ugt i32 %.03537.i, 15
  br i1 %i.ahd, label %.lr.ph.i841, label %dissect_nhdr_tsni.exit, !llvm.loop !9

dissect_nhdr_tsni.exit:                           ; preds = %.lr.ph.i841, %bb.br
  %.0.lcssa.i840 = phi i32 [ 4, %bb.br ], [ %i.ahc, %.lr.ph.i841 ] ; 2 uses
  call void @proto_item_set_len(ptr noundef %i.agd, i32 noundef %.0.lcssa.i840)
  br label %bb.ib

bb.bs:                                            ; preds = %bb.w
  %i.ahe = call zeroext i8 @tvb_get_uint8(ptr noundef %i.jl, i32 noundef 1)
  %i.ahf = load i32, ptr @hf_lbmc_umq_reg, align 4
  %i.ahg = zext i8 %i.ahe to i32
  %i.ahh = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.ahf, ptr noundef %i.jl, i32 noundef 0, i32 noundef %i.ahg, i32 noundef 0) ; 2 uses
  %i.ahi = load i32, ptr @ett_lbmc_umq_reg, align 4
  %i.ahj = call ptr @proto_item_add_subtree(ptr noundef %i.ahh, i32 noundef %i.ahi) ; 16 uses
  %i.ahk = load i32, ptr @hf_lbmc_umq_reg_next_hdr, align 4
  %i.ahl = call ptr @proto_tree_add_item(ptr noundef %i.ahj, i32 noundef %i.ahk, ptr noundef %i.jl, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ahm = load i32, ptr @hf_lbmc_umq_reg_hdr_len, align 4
  %i.ahn = call ptr @proto_tree_add_item(ptr noundef %i.ahj, i32 noundef %i.ahm, ptr noundef %i.jl, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.aho = load i32, ptr @hf_lbmc_umq_reg_flags, align 4
  %i.ahp = load i32, ptr @ett_lbmc_umq_reg_flags, align 4
  %i.ahq = call ptr @proto_tree_add_bitmask(ptr noundef %i.ahj, ptr noundef %i.jl, i32 noundef 2, i32 noundef %i.aho, i32 noundef %i.ahp, ptr noundef nonnull @dissect_nhdr_umq_reg.flags, i32 noundef 0) ; 0 uses
  %i.ahr = load i32, ptr @hf_lbmc_umq_reg_reg_type, align 4
  %i.ahs = call ptr @proto_tree_add_item(ptr noundef %i.ahj, i32 noundef %i.ahr, ptr noundef %i.jl, i32 noundef 3, i32 noundef 1, i32 noundef 0)
  %i.aht = load i32, ptr @hf_lbmc_umq_reg_queue_id, align 4
  %i.ahu = call ptr @proto_tree_add_item(ptr noundef %i.ahj, i32 noundef %i.aht, ptr noundef %i.jl, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ahv = load i32, ptr @hf_lbmc_umq_reg_cmd_id, align 4
  %i.ahw = call ptr @proto_tree_add_item(ptr noundef %i.ahj, i32 noundef %i.ahv, ptr noundef %i.jl, i32 noundef 8, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ahx = load i32, ptr @hf_lbmc_umq_reg_inst_idx, align 4
  %i.ahy = call ptr @proto_tree_add_item(ptr noundef %i.ahj, i32 noundef %i.ahx, ptr noundef %i.jl, i32 noundef 10, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ahz = load i32, ptr @hf_lbmc_umq_reg_regid, align 4
  %i.aia = call ptr @proto_tree_add_item(ptr noundef %i.ahj, i32 noundef %i.ahz, ptr noundef %i.jl, i32 noundef 12, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.aib = call zeroext i8 @tvb_get_uint8(ptr noundef %i.jl, i32 noundef 3) ; 2 uses
  switch i8 %i.aib, label %bb.cb [
    i8 1, label %bb.bt
    i8 2, label %bb.bu
    i8 3, label %bb.bv
    i8 4, label %bb.bw
    i8 5, label %bb.bx
    i8 6, label %bb.by
    i8 7, label %bb.bz
    i8 8, label %bb.ca
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.aic = load i32, ptr @hf_lbmc_umq_reg_reg_ctx, align 4
  %i.aid = call ptr @proto_tree_add_item(ptr noundef %i.ahj, i32 noundef %i.aic, ptr noundef %i.jl, i32 noundef 20, i32 noundef 12, i32 noundef 0)
  %i.aie = load i32, ptr @ett_lbmc_umq_reg_reg_ctx, align 4
  %i.aif = call ptr @proto_item_add_subtree(ptr noundef %i.aid, i32 noundef %i.aie) ; 4 uses
  %i.aig = load i32, ptr @hf_lbmc_umq_reg_reg_ctx_port, align 4
  %i.aih = call ptr @proto_tree_add_item(ptr noundef %i.aif, i32 noundef %i.aig, ptr noundef %i.jl, i32 noundef 20, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aii = load i32, ptr @hf_lbmc_umq_reg_reg_ctx_reserved, align 4
  %i.aij = call ptr @proto_tree_add_item(ptr noundef %i.aif, i32 noundef %i.aii, ptr noundef %i.jl, i32 noundef 22, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aik = load i32, ptr @hf_lbmc_umq_reg_reg_ctx_ip, align 4
  %i.ail = call ptr @proto_tree_add_item(ptr noundef %i.aif, i32 noundef %i.aik, ptr noundef %i.jl, i32 noundef 24, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aim = load i32, ptr @hf_lbmc_umq_reg_reg_ctx_capabilities, align 4
  %i.ain = call ptr @proto_tree_add_item(ptr noundef %i.aif, i32 noundef %i.aim, ptr noundef %i.jl, i32 noundef 28, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_nhdr_umq_reg.exit

bb.bu:                                            ; preds = %bb.bs
  %i.aio = load i32, ptr @hf_lbmc_umq_reg_reg_src, align 4
  %i.aip = call ptr @proto_tree_add_item(ptr noundef %i.ahj, i32 noundef %i.aio, ptr noundef %i.jl, i32 noundef 20, i32 noundef 8, i32 noundef 0)
  %i.aiq = load i32, ptr @ett_lbmc_umq_reg_reg_src, align 4
  %i.air = call ptr @proto_item_add_subtree(ptr noundef %i.aip, i32 noundef %i.aiq) ; 2 uses
  %i.ais = load i32, ptr @hf_lbmc_umq_reg_reg_src_transport_idx, align 4
  %i.ait = call ptr @proto_tree_add_item(ptr noundef %i.air, i32 noundef %i.ais, ptr noundef %i.jl, i32 noundef 20, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aiu = load i32, ptr @hf_lbmc_umq_reg_reg_src_topic_idx, align 4
  %i.aiv = call ptr @proto_tree_add_item(ptr noundef %i.air, i32 noundef %i.aiu, ptr noundef %i.jl, i32 noundef 24, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_nhdr_umq_reg.exit

bb.bv:                                            ; preds = %bb.bs
  %i.aiw = load i32, ptr @hf_lbmc_umq_reg_reg_rcv, align 4
  %i.aix = call ptr @proto_tree_add_item(ptr noundef %i.ahj, i32 noundef %i.aiw, ptr noundef %i.jl, i32 noundef 20, i32 noundef 12, i32 noundef 0)
  %i.aiy = load i32, ptr @ett_lbmc_umq_reg_reg_rcv, align 4
  %i.aiz = call ptr @proto_item_add_subtree(ptr noundef %i.aix, i32 noundef %i.aiy) ; 3 uses
  %i.aja = load i32, ptr @hf_lbmc_umq_reg_reg_rcv_assign_id, align 4
  %i.ajb = call ptr @proto_tree_add_item(ptr noundef %i.aiz, i32 noundef %i.aja, ptr noundef %i.jl, i32 noundef 20, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ajc = load i32, ptr @hf_lbmc_umq_reg_reg_rcv_rcv_type_id, align 4
  %i.ajd = call ptr @proto_tree_add_item(ptr noundef %i.aiz, i32 noundef %i.ajc, ptr noundef %i.jl, i32 noundef 24, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aje = load i32, ptr @hf_lbmc_umq_reg_reg_rcv_last_topic_rcr_tsp, align 4
  %i.ajf = call ptr @proto_tree_add_item(ptr noundef %i.aiz, i32 noundef %i.aje, ptr noundef %i.jl, i32 noundef 28, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_nhdr_umq_reg.exit

bb.bw:                                            ; preds = %bb.bs
  %i.ajg = load i32, ptr @hf_lbmc_umq_reg_rcv_dereg, align 4
  %i.ajh = call ptr @proto_tree_add_item(ptr noundef %i.ahj, i32 noundef %i.ajg, ptr noundef %i.jl, i32 noundef 20, i32 noundef 8, i32 noundef 0)
  %i.aji = load i32, ptr @ett_lbmc_umq_reg_rcv_dereg, align 4
  %i.ajj = call ptr @proto_item_add_subtree(ptr noundef %i.ajh, i32 noundef %i.aji) ; 2 uses
  %i.ajk = load i32, ptr @hf_lbmc_umq_reg_rcv_dereg_rcr_idx, align 4
  %i.ajl = call ptr @proto_tree_add_item(ptr noundef %i.ajj, i32 noundef %i.ajk, ptr noundef %i.jl, i32 noundef 20, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ajm = load i32, ptr @hf_lbmc_umq_reg_rcv_dereg_assign_id, align 4
  %i.ajn = call ptr @proto_tree_add_item(ptr noundef %i.ajj, i32 noundef %i.ajm, ptr noundef %i.jl, i32 noundef 24, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_nhdr_umq_reg.exit

bb.bx:                                            ; preds = %bb.bs
  %i.ajo = load i32, ptr @hf_lbmc_umq_reg_reg_ulb_rcv, align 4
  %i.ajp = call ptr @proto_tree_add_item(ptr noundef %i.ahj, i32 noundef %i.ajo, ptr noundef %i.jl, i32 noundef 20, i32 noundef 24, i32 noundef 0)
  %i.ajq = load i32, ptr @ett_lbmc_umq_reg_reg_ulb_rcv, align 4
  %i.ajr = call ptr @proto_item_add_subtree(ptr noundef %i.ajp, i32 noundef %i.ajq) ; 7 uses
  %i.ajs = load i32, ptr @hf_lbmc_umq_reg_reg_ulb_rcv_ulb_src_id, align 4
  %i.ajt = call ptr @proto_tree_add_item(ptr noundef %i.ajr, i32 noundef %i.ajs, ptr noundef %i.jl, i32 noundef 20, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aju = load i32, ptr @hf_lbmc_umq_reg_reg_ulb_rcv_assign_id, align 4
  %i.ajv = call ptr @proto_tree_add_item(ptr noundef %i.ajr, i32 noundef %i.aju, ptr noundef %i.jl, i32 noundef 24, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ajw = load i32, ptr @hf_lbmc_umq_reg_reg_ulb_rcv_rcv_type_id, align 4
  %i.ajx = call ptr @proto_tree_add_item(ptr noundef %i.ajr, i32 noundef %i.ajw, ptr noundef %i.jl, i32 noundef 28, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ajy = load i32, ptr @hf_lbmc_umq_reg_reg_ulb_rcv_port, align 4
  %i.ajz = call ptr @proto_tree_add_item(ptr noundef %i.ajr, i32 noundef %i.ajy, ptr noundef %i.jl, i32 noundef 32, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.aka = load i32, ptr @hf_lbmc_umq_reg_reg_ulb_rcv_reserved, align 4
  %i.akb = call ptr @proto_tree_add_item(ptr noundef %i.ajr, i32 noundef %i.aka, ptr noundef %i.jl, i32 noundef 34, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.akc = load i32, ptr @hf_lbmc_umq_reg_reg_ulb_rcv_ip, align 4
  %i.akd = call ptr @proto_tree_add_item(ptr noundef %i.ajr, i32 noundef %i.akc, ptr noundef %i.jl, i32 noundef 36, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ake = load i32, ptr @hf_lbmc_umq_reg_reg_ulb_rcv_capabilities, align 4
  %i.akf = call ptr @proto_tree_add_item(ptr noundef %i.ajr, i32 noundef %i.ake, ptr noundef %i.jl, i32 noundef 40, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_nhdr_umq_reg.exit

bb.by:                                            ; preds = %bb.bs
  %i.akg = load i32, ptr @hf_lbmc_umq_reg_ulb_rcv_dereg, align 4
  %i.akh = call ptr @proto_tree_add_item(ptr noundef %i.ahj, i32 noundef %i.akg, ptr noundef %i.jl, i32 noundef 20, i32 noundef 8, i32 noundef 0)
  %i.aki = load i32, ptr @ett_lbmc_umq_reg_ulb_rcv_dereg, align 4
  %i.akj = call ptr @proto_item_add_subtree(ptr noundef %i.akh, i32 noundef %i.aki) ; 2 uses
  %i.akk = load i32, ptr @hf_lbmc_umq_reg_ulb_rcv_dereg_ulb_src_id, align 4
  %i.akl = call ptr @proto_tree_add_item(ptr noundef %i.akj, i32 noundef %i.akk, ptr noundef %i.jl, i32 noundef 20, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.akm = load i32, ptr @hf_lbmc_umq_reg_ulb_rcv_dereg_assign_id, align 4
  %i.akn = call ptr @proto_tree_add_item(ptr noundef %i.akj, i32 noundef %i.akm, ptr noundef %i.jl, i32 noundef 24, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_nhdr_umq_reg.exit

bb.bz:                                            ; preds = %bb.bs
  %i.ako = load i32, ptr @hf_lbmc_umq_reg_reg_observer_rcv, align 4
  %i.akp = call ptr @proto_tree_add_item(ptr noundef %i.ahj, i32 noundef %i.ako, ptr noundef %i.jl, i32 noundef 20, i32 noundef 12, i32 noundef 0)
  %i.akq = load i32, ptr @ett_lbmc_umq_reg_reg_observer_rcv, align 4
  %i.akr = call ptr @proto_item_add_subtree(ptr noundef %i.akp, i32 noundef %i.akq) ; 3 uses
  %i.aks = load i32, ptr @hf_lbmc_umq_reg_reg_observer_rcv_assign_id, align 4
  %i.akt = call ptr @proto_tree_add_item(ptr noundef %i.akr, i32 noundef %i.aks, ptr noundef %i.jl, i32 noundef 20, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.aku = load i32, ptr @hf_lbmc_umq_reg_reg_observer_rcv_rcv_type_id, align 4
  %i.akv = call ptr @proto_tree_add_item(ptr noundef %i.akr, i32 noundef %i.aku, ptr noundef %i.jl, i32 noundef 24, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.akw = load i32, ptr @hf_lbmc_umq_reg_reg_observer_rcv_last_topic_rcr_tsp, align 4
  %i.akx = call ptr @proto_tree_add_item(ptr noundef %i.akr, i32 noundef %i.akw, ptr noundef %i.jl, i32 noundef 28, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_nhdr_umq_reg.exit

bb.ca:                                            ; preds = %bb.bs
  %i.aky = load i32, ptr @hf_lbmc_umq_reg_observer_rcv_dereg, align 4
  %i.akz = call ptr @proto_tree_add_item(ptr noundef %i.ahj, i32 noundef %i.aky, ptr noundef %i.jl, i32 noundef 20, i32 noundef 8, i32 noundef 0)
  %i.ala = load i32, ptr @ett_lbmc_umq_reg_observer_rcv_dereg, align 4
  %i.alb = call ptr @proto_item_add_subtree(ptr noundef %i.akz, i32 noundef %i.ala) ; 2 uses
  %i.alc = load i32, ptr @hf_lbmc_umq_reg_observer_rcv_dereg_rcr_idx, align 4
  %i.ald = call ptr @proto_tree_add_item(ptr noundef %i.alb, i32 noundef %i.alc, ptr noundef %i.jl, i32 noundef 20, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ale = load i32, ptr @hf_lbmc_umq_reg_observer_rcv_dereg_assign_id, align 4
  %i.alf = call ptr @proto_tree_add_item(ptr noundef %i.alb, i32 noundef %i.ale, ptr noundef %i.jl, i32 noundef 24, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_nhdr_umq_reg.exit

bb.cb:                                            ; preds = %bb.bs
  %i.alg = zext i8 %i.aib to i32
  %i.alh = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.ahs, ptr noundef nonnull @ei_lbmc_analysis_invalid_value, ptr noundef nonnull @.str.1745, i32 noundef %i.alg) ; 0 uses
  br label %dissect_nhdr_umq_reg.exit

dissect_nhdr_umq_reg.exit:                        ; preds = %bb.bt, %bb.bu, %bb.bv, %bb.bw, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb
  %.0.i842 = phi i32 [ 20, %bb.cb ], [ 32, %bb.bt ], [ 28, %bb.bu ], [ 32, %bb.bv ], [ 28, %bb.bw ], [ 44, %bb.bx ], [ 28, %bb.by ], [ 32, %bb.bz ], [ 28, %bb.ca ] ; 2 uses
  call void @proto_item_set_len(ptr noundef %i.ahh, i32 noundef %.0.i842)
  br label %bb.ib

bb.cc:                                            ; preds = %bb.w
  %i.ali = call zeroext i8 @tvb_get_uint8(ptr noundef %i.jl, i32 noundef 1)
  %i.alj = call zeroext i8 @tvb_get_uint8(ptr noundef %i.jl, i32 noundef 3) ; 4 uses
  %i.alk = load i32, ptr @hf_lbmc_umq_reg_resp, align 4
  %i.all = zext i8 %i.ali to i32
  %i.alm = call ptr @proto_tree_add_item(ptr noundef %i.hz, i32 noundef %i.alk, ptr noundef %i.jl, i32 noundef 0, i32 noundef %i.all, i32 noundef 0) ; 2 uses
  %i.aln = load i32, ptr @ett_lbmc_umq_reg_resp, align 4
  %i.alo = call ptr @proto_item_add_subtree(ptr noundef %i.alm, i32 noundef %i.aln) ; 18 uses
  %i.alp = load i32, ptr @hf_lbmc_umq_reg_resp_next_hdr, align 4
  %i.alq = call ptr @proto_tree_add_item(ptr noundef %i.alo, i32 noundef %i.alp, ptr noundef %i.jl, i32 noundef 0, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.alr = load i32, ptr @hf_lbmc_umq_reg_resp_hdr_len, align 4
  %i.als = call ptr @proto_tree_add_item(ptr noundef %i.alo, i32 noundef %i.alr, ptr noundef %i.jl, i32 noundef 1, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.alt = load i32, ptr @hf_lbmc_umq_reg_resp_flags, align 4
  %i.alu = load i32, ptr @ett_lbmc_umq_reg_resp_flags, align 4
  %switch.selectcmp.i = icmp eq i8 %i.alj, -1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @dissect_nhdr_umq_reg_resp.flags_err, ptr @dissect_nhdr_umq_reg_resp.flags
  %switch.selectcmp98.i = icmp eq i8 %i.alj, 2
  %switch.select99.i = select i1 %switch.selectcmp98.i, ptr @dissect_nhdr_umq_reg_resp.flags_src, ptr %switch.select.i
  %i.alv = call ptr @proto_tree_add_bitmask(ptr noundef %i.alo, ptr noundef %i.jl, i32 noundef 2, i32 noundef %i.alt, i32 noundef %i.alu, ptr noundef nonnull %switch.select99.i, i32 noundef 0) ; 0 uses
  %i.alw = load i32, ptr @hf_lbmc_umq_reg_resp_resp_type, align 4
  %i.alx = call ptr @proto_tree_add_item(ptr noundef %i.alo, i32 noundef %i.alw, ptr noundef %i.jl, i32 noundef 3, i32 noundef 1, i32 noundef 0)
  %i.aly = load i32, ptr @hf_lbmc_umq_reg_resp_queue_id, align 4
  %i.alz = call ptr @proto_tree_add_item(ptr noundef %i.alo, i32 noundef %i.aly, ptr noundef %i.jl, i32 noundef 4, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ama = load i32, ptr @hf_lbmc_umq_reg_resp_cmd_id, align 4
  %i.amb = call ptr @proto_tree_add_item(ptr noundef %i.alo, i32 noundef %i.ama, ptr noundef %i.jl, i32 noundef 8, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.amc = load i32, ptr @hf_lbmc_umq_reg_resp_inst_idx, align 4
  %i.amd = call ptr @proto_tree_add_item(ptr noundef %i.alo, i32 noundef %i.amc, ptr noundef %i.jl, i32 noundef 10, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ame = load i32, ptr @hf_lbmc_umq_reg_resp_regid, align 4
  %i.amf = call ptr @proto_tree_add_item(ptr noundef %i.alo, i32 noundef %i.ame, ptr noundef %i.jl, i32 noundef 12, i32 noundef 8, i32 noundef 0) ; 0 uses
  switch i8 %i.alj, label %bb.cn [
    i8 1, label %bb.cd
    i8 9, label %bb.ce
    i8 -1, label %bb.cf
    i8 2, label %bb.cg
    i8 3, label %bb.ch
    i8 4, label %bb.ci
    i8 5, label %bb.cj
    i8 6, label %bb.ck
    i8 7, label %bb.cl
    i8 8, label %bb.cm
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.amg = load i32, ptr @hf_lbmc_umq_reg_resp_reg_ctx, align 4
  %i.amh = call ptr @proto_tree_add_item(ptr noundef %i.alo, i32 noundef %i.amg, ptr noundef %i.jl, i32 noundef 20, i32 noundef 4, i32 noundef 0)
end_hunk_0
