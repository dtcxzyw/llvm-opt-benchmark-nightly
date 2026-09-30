Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-docsis-tlv?download=true
inline.NumInlined: 58
inline.NumDeleted: 55
begin_hunk_0_@dissect_docsis_tlv:bb.a
  %i.aoj = load i32, ptr @hf_docsis_tlv_sflow_qos_param, align 4
  %i.aok = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.aoj, ptr noundef %0, i32 noundef %i.ami, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.pe:                                            ; preds = %bb.pc
  %i.aol = zext i8 %i.amj to i32
  %i.aom = load ptr, ptr %i.as, align 8
  %i.aon = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.aom, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.aol) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.pf:                                            ; preds = %.lr.ph.i469
  %i.aoo = icmp eq i8 %i.amj, 1
  br i1 %i.aoo, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  %i.aop = load i32, ptr @hf_docsis_tlv_sflow_traf_pri, align 4
  %i.aoq = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.aop, ptr noundef %0, i32 noundef %i.ami, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.ph:                                            ; preds = %bb.pf
  %i.aor = zext i8 %i.amj to i32
  %i.aos = load ptr, ptr %i.as, align 8
  %i.aot = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.aos, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.aor) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.pi:                                            ; preds = %.lr.ph.i469
  %i.aou = icmp eq i8 %i.amj, 4
  br i1 %i.aou, label %bb.pj, label %bb.pk

bb.pj:                                            ; preds = %bb.pi
  %i.aov = load i32, ptr @hf_docsis_tlv_sflow_max_sus, align 4
  %i.aow = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.aov, ptr noundef %0, i32 noundef %i.ami, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.pk:                                            ; preds = %bb.pi
  %i.aox = zext i8 %i.amj to i32
  %i.aoy = load ptr, ptr %i.as, align 8
  %i.aoz = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.aoy, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.aox) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.pl:                                            ; preds = %.lr.ph.i469
  %i.apa = icmp eq i8 %i.amj, 4
  br i1 %i.apa, label %bb.pm, label %bb.pn

bb.pm:                                            ; preds = %bb.pl
  %i.apb = load i32, ptr @hf_docsis_tlv_sflow_max_burst, align 4
  %i.apc = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.apb, ptr noundef %0, i32 noundef %i.ami, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.pn:                                            ; preds = %bb.pl
  %i.apd = zext i8 %i.amj to i32
  %i.ape = load ptr, ptr %i.as, align 8
  %i.apf = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ape, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.apd) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.po:                                            ; preds = %.lr.ph.i469
  %i.apg = icmp eq i8 %i.amj, 4
  br i1 %i.apg, label %bb.pp, label %bb.pq

bb.pp:                                            ; preds = %bb.po
  %i.aph = load i32, ptr @hf_docsis_tlv_sflow_min_traf, align 4
  %i.api = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.aph, ptr noundef %0, i32 noundef %i.ami, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.pq:                                            ; preds = %bb.po
  %i.apj = zext i8 %i.amj to i32
  %i.apk = load ptr, ptr %i.as, align 8
  %i.apl = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.apk, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.apj) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.pr:                                            ; preds = %.lr.ph.i469
  %i.apm = icmp eq i8 %i.amj, 2
  br i1 %i.apm, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %bb.pr
  %i.apn = load i32, ptr @hf_docsis_tlv_sflow_ass_min_pkt_size, align 4
  %i.apo = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.apn, ptr noundef %0, i32 noundef %i.ami, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.pt:                                            ; preds = %bb.pr
  %i.app = zext i8 %i.amj to i32
  %i.apq = load ptr, ptr %i.as, align 8
  %i.apr = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.apq, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.app) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.pu:                                            ; preds = %.lr.ph.i469
  %i.aps = icmp eq i8 %i.amj, 2
  br i1 %i.aps, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %bb.pu
  %i.apt = load i32, ptr @hf_docsis_tlv_sflow_timeout_active, align 4
  %i.apu = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.apt, ptr noundef %0, i32 noundef %i.ami, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.pw:                                            ; preds = %bb.pu
  %i.apv = zext i8 %i.amj to i32
  %i.apw = load ptr, ptr %i.as, align 8
  %i.apx = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.apw, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.apv) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.px:                                            ; preds = %.lr.ph.i469
  %i.apy = icmp eq i8 %i.amj, 2
  br i1 %i.apy, label %bb.py, label %bb.pz

bb.py:                                            ; preds = %bb.px
  %i.apz = load i32, ptr @hf_docsis_tlv_sflow_timeout_admitted, align 4
  %i.aqa = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.apz, ptr noundef %0, i32 noundef %i.ami, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.pz:                                            ; preds = %bb.px
  %i.aqb = zext i8 %i.amj to i32
  %i.aqc = load ptr, ptr %i.as, align 8
  %i.aqd = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.aqc, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.aqb) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.qa:                                            ; preds = %.lr.ph.i469
  %i.aqe = icmp eq i8 %i.amj, 2
  br i1 %i.aqe, label %bb.qb, label %bb.qc

bb.qb:                                            ; preds = %bb.qa
  %i.aqf = load i32, ptr @hf_docsis_tlv_sflow_ip_tos_overwrite, align 4
  %i.aqg = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.aqf, ptr noundef %0, i32 noundef %i.ami, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.qc:                                            ; preds = %bb.qa
  %i.aqh = zext i8 %i.amj to i32
  %i.aqi = load ptr, ptr %i.as, align 8
  %i.aqj = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.aqi, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.aqh) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.qd:                                            ; preds = %.lr.ph.i469
  %i.aqk = icmp eq i8 %i.amj, 4
  br i1 %i.aqk, label %bb.qe, label %bb.qf

bb.qe:                                            ; preds = %bb.qd
  %i.aql = load i32, ptr @hf_docsis_tlv_sflow_peak_traffic_rate, align 4
  %i.aqm = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.aql, ptr noundef %0, i32 noundef %i.ami, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.qf:                                            ; preds = %bb.qd
  %i.aqn = zext i8 %i.amj to i32
  %i.aqo = load ptr, ptr %i.as, align 8
  %i.aqp = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.aqo, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.aqn) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.qg:                                            ; preds = %.lr.ph.i469
  %i.aqq = icmp eq i8 %i.amj, 4
  br i1 %i.aqq, label %bb.qh, label %bb.qi

bb.qh:                                            ; preds = %bb.qg
  %i.aqr = load i32, ptr @hf_docsis_tlv_sflow_req_attr_mask, align 4
  %i.aqs = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.aqr, ptr noundef %0, i32 noundef %i.ami, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.qi:                                            ; preds = %bb.qg
  %i.aqt = zext i8 %i.amj to i32
  %i.aqu = load ptr, ptr %i.as, align 8
  %i.aqv = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.aqu, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.aqt) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.qj:                                            ; preds = %.lr.ph.i469
  %i.aqw = icmp eq i8 %i.amj, 4
  br i1 %i.aqw, label %bb.qk, label %bb.ql

bb.qk:                                            ; preds = %bb.qj
  %i.aqx = load i32, ptr @hf_docsis_tlv_sflow_forb_attr_mask, align 4
  %i.aqy = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.aqx, ptr noundef %0, i32 noundef %i.ami, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.ql:                                            ; preds = %bb.qj
  %i.aqz = zext i8 %i.amj to i32
  %i.ara = load ptr, ptr %i.as, align 8
  %i.arb = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.ara, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.aqz) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.qm:                                            ; preds = %.lr.ph.i469
  %i.arc = icmp eq i8 %i.amj, 4
  br i1 %i.arc, label %bb.qn, label %bb.qo

bb.qn:                                            ; preds = %bb.qm
  %i.ard = load i32, ptr @hf_docsis_tlv_sflow_attr_aggr_rule_mask, align 4
  %i.are = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.ard, ptr noundef %0, i32 noundef %i.ami, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.qo:                                            ; preds = %bb.qm
  %i.arf = zext i8 %i.amj to i32
  %i.arg = load ptr, ptr %i.as, align 8
  %i.arh = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.arg, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.arf) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.qp:                                            ; preds = %.lr.ph.i469
  %i.ari = load i32, ptr @hf_docsis_tlv_sflow_vendor_spec, align 4
  %i.arj = zext i8 %i.amj to i32
  %i.ark = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.ari, ptr noundef %0, i32 noundef %i.ami, i32 noundef %i.arj, i32 noundef 0) ; 0 uses
  br label %dissect_upstream_sflow.exit.i

bb.qq:                                            ; preds = %.lr.ph.i469
  %i.arl = load ptr, ptr %i.as, align 8           ; 14 uses
  %i.arm = zext i8 %i.amj to i32
  %i.arn = add i32 %.0194.i, %i.arm               ; 3 uses
  %i.aro = icmp slt i32 %.0194.i, %i.arn
  br i1 %i.aro, label %bb.qr, label %dissect_upstream_sflow.exit.i

bb.qr:                                            ; preds = %bb.qq
  br i1 %i.ama, label %.lr.ph.i191.i, label %.lr.ph.i192.i

.lr.ph.i191.i:                                    ; preds = %bb.qr, %bb.sc
  %.0149.i.i = phi i32 [ %i.aui, %bb.sc ], [ %.0194.i, %bb.qr ] ; 4 uses
  %i.arp = add nsw i32 %.0149.i.i, 1
  %i.arq = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.0149.i.i)
  %i.arr = add i32 %.0149.i.i, 2                  ; 14 uses
  %i.ars = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.arp) ; 24 uses
  switch i8 %i.arq, label %bb.sb [
    i8 14, label %bb.qs
    i8 15, label %bb.qv
    i8 16, label %bb.qy
    i8 17, label %bb.qz
    i8 18, label %bb.rc
    i8 19, label %bb.rf
    i8 20, label %bb.ri
    i8 21, label %bb.rl
    i8 22, label %bb.ro
    i8 24, label %bb.rr
    i8 25, label %bb.ru
    i8 26, label %bb.rx
  ]

bb.qs:                                            ; preds = %.lr.ph.i191.i
  %i.art = icmp eq i8 %i.ars, 2
  br i1 %i.art, label %bb.qt, label %bb.qu

bb.qt:                                            ; preds = %bb.qs
  %i.aru = load i32, ptr @hf_docsis_tlv_sflow_max_concat_burst, align 4
  %i.arv = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.aru, ptr noundef %0, i32 noundef %i.arr, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.sc

bb.qu:                                            ; preds = %bb.qs
  %i.arw = zext i8 %i.ars to i32
  %i.arx = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.arl, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.arw) ; 0 uses
  br label %bb.sc

bb.qv:                                            ; preds = %.lr.ph.i191.i
  %i.ary = icmp eq i8 %i.ars, 1
  br i1 %i.ary, label %bb.qw, label %bb.qx

bb.qw:                                            ; preds = %bb.qv
  %i.arz = load i32, ptr @hf_docsis_tlv_sflow_sched_type, align 4
  %i.asa = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.arz, ptr noundef %0, i32 noundef %i.arr, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.sc

bb.qx:                                            ; preds = %bb.qv
  %i.asb = zext i8 %i.ars to i32
  %i.asc = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.arl, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.asb) ; 0 uses
  br label %bb.sc

bb.qy:                                            ; preds = %.lr.ph.i191.i
  %i.asd = load i32, ptr @hf_docsis_tlv_sflow_reqxmit_pol, align 4
  %i.ase = load i32, ptr @ett_docsis_tlv_reqxmitpol, align 4
  %i.asf = call ptr @proto_tree_add_bitmask(ptr noundef %i.amd, ptr noundef %0, i32 noundef %i.arr, i32 noundef %i.asd, i32 noundef %i.ase, ptr noundef nonnull @dissect_reqxmit_policy.requests, i32 noundef 0) ; 0 uses
  br label %bb.sc

bb.qz:                                            ; preds = %.lr.ph.i191.i
  %i.asg = icmp eq i8 %i.ars, 4
  br i1 %i.asg, label %bb.ra, label %bb.rb

bb.ra:                                            ; preds = %bb.qz
  %i.ash = load i32, ptr @hf_docsis_tlv_sflow_nominal_polling, align 4
  %i.asi = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.ash, ptr noundef %0, i32 noundef %i.arr, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.sc

bb.rb:                                            ; preds = %bb.qz
  %i.asj = zext i8 %i.ars to i32
  %i.ask = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.arl, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.asj) ; 0 uses
  br label %bb.sc

bb.rc:                                            ; preds = %.lr.ph.i191.i
  %i.asl = icmp eq i8 %i.ars, 4
  br i1 %i.asl, label %bb.rd, label %bb.re

bb.rd:                                            ; preds = %bb.rc
  %i.asm = load i32, ptr @hf_docsis_tlv_sflow_tolerated_jitter, align 4
  %i.asn = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.asm, ptr noundef %0, i32 noundef %i.arr, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.sc

bb.re:                                            ; preds = %bb.rc
  %i.aso = zext i8 %i.ars to i32
  %i.asp = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.arl, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.aso) ; 0 uses
  br label %bb.sc

bb.rf:                                            ; preds = %.lr.ph.i191.i
  %i.asq = icmp eq i8 %i.ars, 2
  br i1 %i.asq, label %bb.rg, label %bb.rh

bb.rg:                                            ; preds = %bb.rf
  %i.asr = load i32, ptr @hf_docsis_tlv_sflow_ugs_size, align 4
  %i.ass = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.asr, ptr noundef %0, i32 noundef %i.arr, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.sc

bb.rh:                                            ; preds = %bb.rf
  %i.ast = zext i8 %i.ars to i32
  %i.asu = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.arl, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.ast) ; 0 uses
  br label %bb.sc

bb.ri:                                            ; preds = %.lr.ph.i191.i
  %i.asv = icmp eq i8 %i.ars, 4
  br i1 %i.asv, label %bb.rj, label %bb.rk

bb.rj:                                            ; preds = %bb.ri
  %i.asw = load i32, ptr @hf_docsis_tlv_sflow_nom_grant_intvl, align 4
  %i.asx = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.asw, ptr noundef %0, i32 noundef %i.arr, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.sc

bb.rk:                                            ; preds = %bb.ri
  %i.asy = zext i8 %i.ars to i32
  %i.asz = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.arl, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.asy) ; 0 uses
  br label %bb.sc

bb.rl:                                            ; preds = %.lr.ph.i191.i
  %i.ata = icmp eq i8 %i.ars, 4
  br i1 %i.ata, label %bb.rm, label %bb.rn

bb.rm:                                            ; preds = %bb.rl
  %i.atb = load i32, ptr @hf_docsis_tlv_sflow_tol_grant_jitter, align 4
  %i.atc = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.atb, ptr noundef %0, i32 noundef %i.arr, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.sc

bb.rn:                                            ; preds = %bb.rl
  %i.atd = zext i8 %i.ars to i32
  %i.ate = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.arl, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.atd) ; 0 uses
  br label %bb.sc

bb.ro:                                            ; preds = %.lr.ph.i191.i
  %i.atf = icmp eq i8 %i.ars, 1
  br i1 %i.atf, label %bb.rp, label %bb.rq

bb.rp:                                            ; preds = %bb.ro
  %i.atg = load i32, ptr @hf_docsis_tlv_sflow_grants_per_intvl, align 4
  %i.ath = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.atg, ptr noundef %0, i32 noundef %i.arr, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.sc

bb.rq:                                            ; preds = %bb.ro
  %i.ati = zext i8 %i.ars to i32
  %i.atj = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.arl, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.ati) ; 0 uses
  br label %bb.sc

bb.rr:                                            ; preds = %.lr.ph.i191.i
  %i.atk = icmp eq i8 %i.ars, 4
  br i1 %i.atk, label %bb.rs, label %bb.rt

bb.rs:                                            ; preds = %bb.rr
  %i.atl = load i32, ptr @hf_docsis_tlv_sflow_ugs_timeref, align 4
  %i.atm = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.atl, ptr noundef %0, i32 noundef %i.arr, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.sc

bb.rt:                                            ; preds = %bb.rr
  %i.atn = zext i8 %i.ars to i32
  %i.ato = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.arl, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.atn) ; 0 uses
  br label %bb.sc

bb.ru:                                            ; preds = %.lr.ph.i191.i
  %i.atp = icmp eq i8 %i.ars, 1
  br i1 %i.atp, label %bb.rv, label %bb.rw

bb.rv:                                            ; preds = %bb.ru
  %i.atq = load i32, ptr @hf_docsis_tlv_sflow_cont_req_backoff_window_mult, align 4
  %i.atr = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.atq, ptr noundef %0, i32 noundef %i.arr, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.sc

bb.rw:                                            ; preds = %bb.ru
  %i.ats = zext i8 %i.ars to i32
  %i.att = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.arl, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.ats) ; 0 uses
  br label %bb.sc

bb.rx:                                            ; preds = %.lr.ph.i191.i
  %i.atu = icmp eq i8 %i.ars, 1
  br i1 %i.atu, label %bb.ry, label %bb.sa

bb.ry:                                            ; preds = %bb.rx
  %i.atv = load i32, ptr @hf_docsis_tlv_sflow_num_of_bytes_requested_mult, align 4
  %i.atw = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.atv, ptr noundef %0, i32 noundef %i.arr, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.atx = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.arr) ; 3 uses
  %i.aty = call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.atx)
  %i.atz = icmp eq i8 %i.aty, 1
  %i.aua = and i8 %i.atx, 31
  %switch.i.i = icmp ne i8 %i.aua, 0
  %or.cond.i.i = and i1 %i.atz, %switch.i.i
  br i1 %or.cond.i.i, label %bb.sc, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.aub = zext i8 %i.atx to i32
  %i.auc = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.arl, ptr noundef nonnull @ei_docsis_tlv_tlvval_bad, ptr noundef nonnull @.str.1053, i32 noundef %i.aub) ; 0 uses
  br label %bb.sc

bb.sa:                                            ; preds = %bb.rx
  %i.aud = zext i8 %i.ars to i32
  %i.aue = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.arl, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.aud) ; 0 uses
  br label %bb.sc

bb.sb:                                            ; preds = %.lr.ph.i191.i
  %i.auf = zext i8 %i.ars to i16
  %i.aug = add nuw nsw i16 %i.auf, 2
  call fastcc void @dissect_unknown_tlv(ptr noundef %0, ptr noundef %1, ptr noundef %i.amd, i32 noundef %.0149.i.i, i16 noundef zeroext %i.aug)
  br label %bb.sc

bb.sc:                                            ; preds = %bb.sb, %bb.sa, %bb.rz, %bb.ry, %bb.rw, %bb.rv, %bb.rt, %bb.rs, %bb.rq, %bb.rp, %bb.rn, %bb.rm, %bb.rk, %bb.rj, %bb.rh, %bb.rg, %bb.re, %bb.rd, %bb.rb, %bb.ra, %bb.qy, %bb.qx, %bb.qw, %bb.qu, %bb.qt
  %i.auh = zext i8 %i.ars to i32
  %i.aui = add i32 %i.arr, %i.auh                 ; 2 uses
  %i.auj = icmp slt i32 %i.aui, %i.arn
  br i1 %i.auj, label %.lr.ph.i191.i, label %dissect_upstream_sflow.exit.i, !llvm.loop !20

.lr.ph.i192.i:                                    ; preds = %bb.qr, %bb.sk
  %.034.i.i = phi i32 [ %i.avb, %bb.sk ], [ %.0194.i, %bb.qr ] ; 4 uses
  %i.auk = add nsw i32 %.034.i.i, 1
  %i.aul = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.034.i.i)
  %i.aum = add i32 %.034.i.i, 2                   ; 3 uses
  %i.aun = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.auk) ; 6 uses
  switch i8 %i.aul, label %bb.sj [
    i8 14, label %bb.sd
    i8 17, label %bb.sg
  ]

bb.sd:                                            ; preds = %.lr.ph.i192.i
  %i.auo = icmp eq i8 %i.aun, 4
  br i1 %i.auo, label %bb.se, label %bb.sf

bb.se:                                            ; preds = %bb.sd
  %i.aup = load i32, ptr @hf_docsis_tlv_sflow_max_down_latency, align 4
  %i.auq = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.aup, ptr noundef %0, i32 noundef %i.aum, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.sk

bb.sf:                                            ; preds = %bb.sd
  %i.aur = zext i8 %i.aun to i32
  %i.aus = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.arl, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.aur) ; 0 uses
  br label %bb.sk

bb.sg:                                            ; preds = %.lr.ph.i192.i
  %i.aut = icmp eq i8 %i.aun, 1
  br i1 %i.aut, label %bb.sh, label %bb.si

bb.sh:                                            ; preds = %bb.sg
  %i.auu = load i32, ptr @hf_docsis_tlv_sflow_down_reseq, align 4
  %i.auv = call ptr @proto_tree_add_item(ptr noundef %i.amd, i32 noundef %i.auu, ptr noundef %0, i32 noundef %i.aum, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.sk

bb.si:                                            ; preds = %bb.sg
  %i.auw = zext i8 %i.aun to i32
  %i.aux = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.arl, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.auw) ; 0 uses
  br label %bb.sk

bb.sj:                                            ; preds = %.lr.ph.i192.i
  %i.auy = zext i8 %i.aun to i16
  %i.auz = add nuw nsw i16 %i.auy, 2
  call fastcc void @dissect_unknown_tlv(ptr noundef %0, ptr noundef %1, ptr noundef %i.amd, i32 noundef %.034.i.i, i16 noundef zeroext %i.auz)
  br label %bb.sk

bb.sk:                                            ; preds = %bb.sj, %bb.si, %bb.sh, %bb.sf, %bb.se
  %i.ava = zext i8 %i.aun to i32
  %i.avb = add i32 %i.aum, %i.ava                 ; 2 uses
  %i.avc = icmp slt i32 %i.avb, %i.arn
  br i1 %i.avc, label %.lr.ph.i192.i, label %dissect_upstream_sflow.exit.i, !llvm.loop !21

dissect_upstream_sflow.exit.i:                    ; preds = %bb.sk, %bb.sc, %bb.qq, %bb.qp, %bb.qo, %bb.qn, %bb.ql, %bb.qk, %bb.qi, %bb.qh, %bb.qf, %bb.qe, %bb.qc, %bb.qb, %bb.pz, %bb.py, %bb.pw, %bb.pv, %bb.pt, %bb.ps, %bb.pq, %bb.pp, %bb.pn, %bb.pm, %bb.pk, %bb.pj, %bb.ph, %bb.pg, %bb.pe, %bb.pd, %dissect_sflow_err.exit.i, %bb.or, %bb.oq, %bb.op, %bb.on, %bb.om, %bb.ok, %bb.oj
  %i.avd = zext i8 %i.amj to i32
  %i.ave = add i32 %i.ami, %i.avd                 ; 2 uses
  %i.avf = icmp slt i32 %i.ave, %i.ame
  br i1 %i.avf, label %.lr.ph.i469, label %dissect_sflow.exit, !llvm.loop !22

dissect_sflow.exit:                               ; preds = %dissect_upstream_sflow.exit.i, %bb.oh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #6
  br label %dissect_snmpv3_kickstart.exit

bb.sl:                                            ; preds = %bb.b
  %i.avg = zext i8 %i.bq to i16
  call fastcc void @dissect_phs(ptr noundef %0, ptr noundef %1, ptr noundef %i.bk, i32 noundef %i.bp, i16 noundef zeroext %i.avg)
  br label %dissect_snmpv3_kickstart.exit

bb.sm:                                            ; preds = %bb.b
  %i.avh = icmp eq i8 %i.bq, 20
  br i1 %i.avh, label %bb.sn, label %bb.so

bb.sn:                                            ; preds = %bb.sm
  %i.avi = load i32, ptr @hf_docsis_tlv_hmac_digest, align 4
  %i.avj = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.avi, ptr noundef %0, i32 noundef %i.bp, i32 noundef 20, i32 noundef 0) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.so:                                            ; preds = %bb.sm
  %i.avk = zext i8 %i.bq to i32
  %i.avl = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bi, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.avk) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.sp:                                            ; preds = %bb.b
  %i.avm = icmp eq i8 %i.bq, 2
  br i1 %i.avm, label %bb.sq, label %bb.sr

bb.sq:                                            ; preds = %bb.sp
  %i.avn = load i32, ptr @hf_docsis_tlv_max_classifiers, align 4
  %i.avo = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.avn, ptr noundef %0, i32 noundef %i.bp, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.sr:                                            ; preds = %bb.sp
  %i.avp = zext i8 %i.bq to i32
  %i.avq = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bi, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.avp) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.ss:                                            ; preds = %bb.b
  %i.avr = icmp eq i8 %i.bq, 1
  br i1 %i.avr, label %bb.st, label %bb.su

bb.st:                                            ; preds = %bb.ss
  %i.avs = load i32, ptr @hf_docsis_tlv_privacy_enable, align 4
  %i.avt = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.avs, ptr noundef %0, i32 noundef %i.bp, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.su:                                            ; preds = %bb.ss
  %i.avu = zext i8 %i.bq to i32
  %i.avv = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bi, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.avu) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.sv:                                            ; preds = %bb.b
  %i.avw = load i32, ptr @hf_docsis_tlv_auth_block, align 4
  %i.avx = zext i8 %i.bq to i32
  %i.avy = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.avw, ptr noundef %0, i32 noundef %i.bp, i32 noundef %i.avx, i32 noundef 0) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.sw:                                            ; preds = %bb.b
  %i.avz = icmp eq i8 %i.bq, 1
  br i1 %i.avz, label %bb.sx, label %bb.sy

bb.sx:                                            ; preds = %bb.sw
  %i.awa = load i32, ptr @hf_docsis_tlv_key_seq_num, align 4
  %i.awb = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.awa, ptr noundef %0, i32 noundef %i.bp, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.sy:                                            ; preds = %bb.sw
  %i.awc = zext i8 %i.bq to i32
  %i.awd = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bi, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.awc) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.sz:                                            ; preds = %bb.b
  %i.awe = load i32, ptr @hf_docsis_tlv_mfgr_cvc, align 4
  %i.awf = zext i8 %i.bq to i32
  %i.awg = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.awe, ptr noundef %0, i32 noundef %i.bp, i32 noundef %i.awf, i32 noundef 0) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.ta:                                            ; preds = %bb.b
  %i.awh = load i32, ptr @hf_docsis_tlv_cosign_cvc, align 4
  %i.awi = zext i8 %i.bq to i32
  %i.awj = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.awh, ptr noundef %0, i32 noundef %i.bp, i32 noundef %i.awi, i32 noundef 0) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.tb:                                            ; preds = %bb.b
  %i.awk = load i32, ptr @hf_docsis_tlv_snmpv3_kick, align 4
  %i.awl = zext i8 %i.bq to i32                   ; 2 uses
  %i.awm = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.awk, ptr noundef %0, i32 noundef %i.bp, i32 noundef %i.awl, i32 noundef 0)
  %i.awn = load i32, ptr @ett_docsis_tlv_snmpv3_kick, align 4
  %i.awo = call ptr @proto_item_add_subtree(ptr noundef %i.awm, i32 noundef %i.awn) ; 3 uses
  %i.awp = add i32 %i.bp, %i.awl                  ; 2 uses
  %i.awq = icmp slt i32 %i.bp, %i.awp
  br i1 %i.awq, label %.lr.ph.i472, label %dissect_snmpv3_kickstart.exit

.lr.ph.i472:                                      ; preds = %bb.tb, %bb.tf
  %.028.i = phi i32 [ %i.axd, %bb.tf ], [ %i.bp, %bb.tb ] ; 4 uses
  %i.awr = add nsw i32 %.028.i, 1
  %i.aws = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.028.i)
  %i.awt = add i32 %.028.i, 2                     ; 3 uses
  %i.awu = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %i.awr) ; 4 uses
  switch i8 %i.aws, label %bb.te [
    i8 1, label %bb.tc
    i8 2, label %bb.td
  ]

bb.tc:                                            ; preds = %.lr.ph.i472
  %i.awv = load i32, ptr @hf_docsis_tlv_snmpv3_kick_name, align 4
  %i.aww = zext i8 %i.awu to i32                  ; 2 uses
  %i.awx = call ptr @proto_tree_add_item(ptr noundef %i.awo, i32 noundef %i.awv, ptr noundef %0, i32 noundef %i.awt, i32 noundef %i.aww, i32 noundef 0) ; 0 uses
  br label %bb.tf

bb.td:                                            ; preds = %.lr.ph.i472
  %i.awy = load i32, ptr @hf_docsis_tlv_snmpv3_kick_publicnum, align 4
  %i.awz = zext i8 %i.awu to i32                  ; 2 uses
  %i.axa = call ptr @proto_tree_add_item(ptr noundef %i.awo, i32 noundef %i.awy, ptr noundef %0, i32 noundef %i.awt, i32 noundef %i.awz, i32 noundef 0) ; 0 uses
  br label %bb.tf

bb.te:                                            ; preds = %.lr.ph.i472
  %i.axb = zext i8 %i.awu to i16
  %i.axc = add nuw nsw i16 %i.axb, 2
  call fastcc void @dissect_unknown_tlv(ptr noundef %0, ptr noundef %1, ptr noundef %i.awo, i32 noundef %.028.i, i16 noundef zeroext %i.axc)
  %.pre.i = zext i8 %i.awu to i32
  br label %bb.tf

bb.tf:                                            ; preds = %bb.te, %bb.td, %bb.tc
  %.pre-phi.i = phi i32 [ %.pre.i, %bb.te ], [ %i.awz, %bb.td ], [ %i.aww, %bb.tc ]
  %i.axd = add i32 %.pre-phi.i, %i.awt            ; 2 uses
  %i.axe = icmp slt i32 %i.axd, %i.awp
  br i1 %i.axe, label %.lr.ph.i472, label %dissect_snmpv3_kickstart.exit, !llvm.loop !23

bb.tg:                                            ; preds = %bb.b
  %i.axf = load i32, ptr @hf_docsis_tlv_subs_mgmt_ctrl, align 4
  %i.axg = zext i8 %i.bq to i32
  %i.axh = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.axf, ptr noundef %0, i32 noundef %i.bp, i32 noundef %i.axg, i32 noundef 0) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.th:                                            ; preds = %bb.b
  %i.axi = zext i8 %i.bq to i32                   ; 4 uses
  %i.axj = and i32 %i.axi, 3
  %i.axk = icmp eq i32 %i.axj, 0
  br i1 %i.axk, label %bb.ti, label %bb.tj

bb.ti:                                            ; preds = %bb.th
  %i.axl = load i32, ptr @hf_docsis_tlv_subs_mgmt_ip_table, align 4
  %i.axm = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.axl, ptr noundef %0, i32 noundef %i.bp, i32 noundef %i.axi, i32 noundef 0) ; 0 uses
  %.not = icmp eq i8 %i.bq, 0
  br i1 %.not, label %dissect_snmpv3_kickstart.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ti, %.lr.ph
  %.0522 = phi i32 [ %i.axq, %.lr.ph ], [ 0, %bb.ti ] ; 2 uses
  %i.axn = load i32, ptr @hf_docsis_tlv_subs_mgmt_ip_entry, align 4
  %i.axo = add i32 %.0522, %i.bp
  %i.axp = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.axn, ptr noundef %0, i32 noundef %i.axo, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.axq = add nuw nsw i32 %.0522, 4              ; 2 uses
  %i.axr = icmp samesign ult i32 %i.axq, %i.axi
  br i1 %i.axr, label %.lr.ph, label %dissect_snmpv3_kickstart.exit, !llvm.loop !24

bb.tj:                                            ; preds = %bb.th
  %i.axs = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bi, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.axi) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.tk:                                            ; preds = %bb.b
  %i.axt = load i32, ptr @hf_docsis_tlv_subs_mgmt_filter_grps, align 4
  %i.axu = zext i8 %i.bq to i32
  %i.axv = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.axt, ptr noundef %0, i32 noundef %i.bp, i32 noundef %i.axu, i32 noundef 0) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.tl:                                            ; preds = %bb.b
  %i.axw = load i32, ptr @hf_docsis_tlv_snmpv3_ntfy_rcvr, align 4
  %i.axx = zext i8 %i.bq to i32
  %i.axy = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.axw, ptr noundef %0, i32 noundef %i.bp, i32 noundef %i.axx, i32 noundef 0) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.tm:                                            ; preds = %bb.b
  %i.axz = icmp eq i8 %i.bq, 1
  br i1 %i.axz, label %bb.tn, label %bb.to

bb.tn:                                            ; preds = %bb.tm
  %i.aya = load i32, ptr @hf_docsis_tlv_enable_20_mode, align 4
  %i.ayb = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.aya, ptr noundef %0, i32 noundef %i.bp, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.to:                                            ; preds = %bb.tm
  %i.ayc = zext i8 %i.bq to i32
  %i.ayd = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %1, ptr noundef %i.bi, ptr noundef nonnull @ei_docsis_tlv_tlvlen_bad, ptr noundef nonnull @.str.1028, i32 noundef %i.ayc) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

bb.tp:                                            ; preds = %bb.b
  %i.aye = icmp eq i8 %i.bq, 1
  br i1 %i.aye, label %bb.tq, label %bb.tr

bb.tq:                                            ; preds = %bb.tp
  %i.ayf = load i32, ptr @hf_docsis_tlv_enable_test_modes, align 4
  %i.ayg = call ptr @proto_tree_add_item(ptr noundef %i.bk, i32 noundef %i.ayf, ptr noundef %0, i32 noundef %i.bp, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %dissect_snmpv3_kickstart.exit

end_hunk_0
