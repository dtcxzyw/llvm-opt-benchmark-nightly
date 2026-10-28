Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-dis?download=true
inline.NumInlined: 157
inline.NumDeleted: 68
begin_hunk_0_@dissect_dis:bb.a
  %i.ms = call ptr @proto_tree_add_item(ptr noundef %i.mg, i32 noundef %i.mr, ptr noundef %0, i32 noundef 44, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mt = load i32, ptr @hf_dis_iff_system_status_parameter_6, align 4
  %i.mu = call ptr @proto_tree_add_item(ptr noundef %i.mg, i32 noundef %i.mt, ptr noundef %0, i32 noundef 44, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mv = load i32, ptr @hf_dis_iff_system_status_operational, align 4
  %i.mw = call ptr @proto_tree_add_item(ptr noundef %i.mg, i32 noundef %i.mv, ptr noundef %0, i32 noundef 44, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mx = load i32, ptr @hf_dis_iff_alternate_parameter_4, align 4
  %i.my = call ptr @proto_tree_add_item(ptr noundef %i.mc, i32 noundef %i.mx, ptr noundef %0, i32 noundef 45, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.mz = load i32, ptr @hf_dis_iff_information_layers, align 4
  %i.na = call ptr @proto_tree_add_item(ptr noundef %i.mc, i32 noundef %i.mz, ptr noundef %0, i32 noundef 46, i32 noundef 1, i32 noundef 0)
  %i.nb = load i32, ptr @ett_iff_information_layers, align 4
  %i.nc = call ptr @proto_item_add_subtree(ptr noundef %i.na, i32 noundef %i.nb) ; 7 uses
  %i.nd = load i32, ptr @hf_dis_iff_information_layers_layer_1, align 4
  %i.ne = call ptr @proto_tree_add_item(ptr noundef %i.nc, i32 noundef %i.nd, ptr noundef %0, i32 noundef 46, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nf = load i32, ptr @hf_dis_iff_information_layers_layer_2, align 4
  %i.ng = call ptr @proto_tree_add_item(ptr noundef %i.nc, i32 noundef %i.nf, ptr noundef %0, i32 noundef 46, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nh = load i32, ptr @hf_dis_iff_information_layers_layer_3, align 4
  %i.ni = call ptr @proto_tree_add_item(ptr noundef %i.nc, i32 noundef %i.nh, ptr noundef %0, i32 noundef 46, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nj = load i32, ptr @hf_dis_iff_information_layers_layer_4, align 4
  %i.nk = call ptr @proto_tree_add_item(ptr noundef %i.nc, i32 noundef %i.nj, ptr noundef %0, i32 noundef 46, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nl = load i32, ptr @hf_dis_iff_information_layers_layer_5, align 4
  %i.nm = call ptr @proto_tree_add_item(ptr noundef %i.nc, i32 noundef %i.nl, ptr noundef %0, i32 noundef 46, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nn = load i32, ptr @hf_dis_iff_information_layers_layer_6, align 4
  %i.no = call ptr @proto_tree_add_item(ptr noundef %i.nc, i32 noundef %i.nn, ptr noundef %0, i32 noundef 46, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.np = load i32, ptr @hf_dis_iff_information_layers_layer_7, align 4
  %i.nq = call ptr @proto_tree_add_item(ptr noundef %i.nc, i32 noundef %i.np, ptr noundef %0, i32 noundef 46, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nr = load i32, ptr @hf_dis_iff_modifier, align 4
  %i.ns = call ptr @proto_tree_add_item(ptr noundef %i.mc, i32 noundef %i.nr, ptr noundef %0, i32 noundef 47, i32 noundef 1, i32 noundef 0)
  %i.nt = load i32, ptr @ett_iff_modifier, align 4
  %i.nu = call ptr @proto_item_add_subtree(ptr noundef %i.ns, i32 noundef %i.nt) ; 4 uses
  %i.nv = load i32, ptr @hf_dis_iff_modifier_emergency, align 4
  %i.nw = call ptr @proto_tree_add_item(ptr noundef %i.nu, i32 noundef %i.nv, ptr noundef %0, i32 noundef 47, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nx = load i32, ptr @hf_dis_iff_modifier_ident, align 4
  %i.ny = call ptr @proto_tree_add_item(ptr noundef %i.nu, i32 noundef %i.nx, ptr noundef %0, i32 noundef 47, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.nz = load i32, ptr @hf_dis_iff_modifier_sti, align 4
  %i.oa = call ptr @proto_tree_add_item(ptr noundef %i.nu, i32 noundef %i.nz, ptr noundef %0, i32 noundef 47, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ob = load i32, ptr @hf_dis_iff_modifier_unmanned_aircraft, align 4
  %i.oc = call ptr @proto_tree_add_item(ptr noundef %i.nu, i32 noundef %i.ob, ptr noundef %0, i32 noundef 47, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.od = icmp eq i16 %i.ku, 5
  %i.oe = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 48) ; 5 uses
  br i1 %i.od, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.of = and i16 %i.oe, 31
  %i.og = load i32, ptr @hf_dis_iff_rrb, align 4
  %i.oh = call ptr @proto_tree_add_item(ptr noundef %i.mc, i32 noundef %i.og, ptr noundef %0, i32 noundef 48, i32 noundef 2, i32 noundef 0)
  %i.oi = load i32, ptr @ett_iff_rrb, align 4
  %i.oj = call ptr @proto_item_add_subtree(ptr noundef %i.oh, i32 noundef %i.oi) ; 4 uses
  %i.ok = load i32, ptr @hf_dis_iff_rrb_rrb_code, align 4
  %i.ol = call ptr @proto_tree_add_item(ptr noundef %i.oj, i32 noundef %i.ok, ptr noundef %0, i32 noundef 48, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.om = load i32, ptr @hf_dis_iff_rrb_power_reduction_indicator, align 4
  %i.on = call ptr @proto_tree_add_item(ptr noundef %i.oj, i32 noundef %i.om, ptr noundef %0, i32 noundef 48, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.oo = load i32, ptr @hf_dis_iff_rrb_radar_enhancement_indicator, align 4
  %i.op = call ptr @proto_tree_add_item(ptr noundef %i.oj, i32 noundef %i.oo, ptr noundef %0, i32 noundef 48, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.oq = icmp eq i16 %i.oe, 0
  %i.or = zext nneg i16 %i.of to i32
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.os = and i16 %i.oe, 63
  %i.ot = and i16 %i.oe, 7
  %i.ou = lshr i16 %i.oe, 3
  %i.ov = and i16 %i.ou, 7
  %i.ow = load i32, ptr @hf_dis_iff_parameter_1, align 4
  %i.ox = call ptr @proto_tree_add_item(ptr noundef %i.mc, i32 noundef %i.ow, ptr noundef %0, i32 noundef 48, i32 noundef 2, i32 noundef 0)
  %i.oy = load i32, ptr @ett_iff_parameter_1, align 4
  %i.oz = call ptr @proto_item_add_subtree(ptr noundef %i.ox, i32 noundef %i.oy) ; 3 uses
  %i.pa = load i32, ptr @hf_dis_iff_mode_code_element_1, align 4
  %i.pb = call ptr @proto_tree_add_item(ptr noundef %i.oz, i32 noundef %i.pa, ptr noundef %0, i32 noundef 48, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.pc = load i32, ptr @hf_dis_iff_mode_code_element_2, align 4
  %i.pd = call ptr @proto_tree_add_item(ptr noundef %i.oz, i32 noundef %i.pc, ptr noundef %0, i32 noundef 48, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.pe = icmp eq i16 %i.os, 0
  %i.pf = zext nneg i16 %i.ot to i32
  %i.pg = zext nneg i16 %i.ov to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0432.i = phi ptr [ %i.oj, %bb.ac ], [ %i.oz, %bb.ad ] ; 3 uses
  %.0431.i = phi i1 [ true, %bb.ac ], [ %i.pe, %bb.ad ]
  %.0430.i = phi i32 [ 0, %bb.ac ], [ %i.pf, %bb.ad ]
  %.0429.i = phi i32 [ 0, %bb.ac ], [ %i.pg, %bb.ad ]
  %.0428.i = phi i1 [ %i.oq, %bb.ac ], [ true, %bb.ad ]
  %.0427.i = phi i32 [ %i.or, %bb.ac ], [ 0, %bb.ad ]
  %i.ph = load i32, ptr @hf_dis_iff_mode_status, align 4
  %i.pi = call ptr @proto_tree_add_item(ptr noundef %.0432.i, i32 noundef %i.ph, ptr noundef %0, i32 noundef 48, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.pj = load i32, ptr @hf_dis_iff_mode_damage, align 4
  %i.pk = call ptr @proto_tree_add_item(ptr noundef %.0432.i, i32 noundef %i.pj, ptr noundef %0, i32 noundef 48, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.pl = load i32, ptr @hf_dis_iff_mode_malfunction, align 4
  %i.pm = call ptr @proto_tree_add_item(ptr noundef %.0432.i, i32 noundef %i.pl, ptr noundef %0, i32 noundef 48, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.pn = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 50) ; 5 uses
  %i.po = and i16 %i.pn, 4095
  %i.pp = and i16 %i.pn, 7
  %i.pq = lshr i16 %i.pn, 3
  %i.pr = and i16 %i.pq, 7
  %i.ps = lshr i16 %i.pn, 6
  %i.pt = and i16 %i.ps, 7
  %i.pu = lshr i16 %i.pn, 9
  %i.pv = and i16 %i.pu, 7
  %i.pw = load i32, ptr @hf_dis_iff_parameter_2, align 4
  %i.px = call ptr @proto_tree_add_item(ptr noundef %i.mc, i32 noundef %i.pw, ptr noundef %0, i32 noundef 50, i32 noundef 2, i32 noundef 0)
  %i.py = load i32, ptr @ett_iff_parameter_2, align 4
  %i.pz = call ptr @proto_item_add_subtree(ptr noundef %i.px, i32 noundef %i.py) ; 7 uses
  %i.qa = load i32, ptr @hf_dis_iff_mode_code_element_1, align 4
  %i.qb = call ptr @proto_tree_add_item(ptr noundef %i.pz, i32 noundef %i.qa, ptr noundef %0, i32 noundef 50, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.qc = load i32, ptr @hf_dis_iff_mode_code_element_2, align 4
  %i.qd = call ptr @proto_tree_add_item(ptr noundef %i.pz, i32 noundef %i.qc, ptr noundef %0, i32 noundef 50, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.qe = load i32, ptr @hf_dis_iff_mode_code_element_3, align 4
  %i.qf = call ptr @proto_tree_add_item(ptr noundef %i.pz, i32 noundef %i.qe, ptr noundef %0, i32 noundef 50, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.qg = load i32, ptr @hf_dis_iff_mode_code_element_4, align 4
  %i.qh = call ptr @proto_tree_add_item(ptr noundef %i.pz, i32 noundef %i.qg, ptr noundef %0, i32 noundef 50, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.qi = load i32, ptr @hf_dis_iff_mode_status, align 4
  %i.qj = call ptr @proto_tree_add_item(ptr noundef %i.pz, i32 noundef %i.qi, ptr noundef %0, i32 noundef 50, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.qk = load i32, ptr @hf_dis_iff_mode_damage, align 4
  %i.ql = call ptr @proto_tree_add_item(ptr noundef %i.pz, i32 noundef %i.qk, ptr noundef %0, i32 noundef 50, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.qm = load i32, ptr @hf_dis_iff_mode_malfunction, align 4
  %i.qn = call ptr @proto_tree_add_item(ptr noundef %i.pz, i32 noundef %i.qm, ptr noundef %0, i32 noundef 50, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.qo = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 52) ; 4 uses
  %i.qp = and i16 %i.qo, 4095                     ; 2 uses
  %i.qq = and i16 %i.qo, 7
  %i.qr = lshr i16 %i.qo, 3
  %i.qs = and i16 %i.qr, 7
  %i.qt = lshr i16 %i.qp, 9
  %i.qu = lshr i16 %i.qo, 6
  %i.qv = and i16 %i.qu, 7
  %i.qw = load i32, ptr @hf_dis_iff_parameter_3, align 4
  %i.qx = call ptr @proto_tree_add_item(ptr noundef %i.mc, i32 noundef %i.qw, ptr noundef %0, i32 noundef 52, i32 noundef 2, i32 noundef 0)
  %i.qy = load i32, ptr @ett_iff_parameter_3, align 4
  %i.qz = call ptr @proto_item_add_subtree(ptr noundef %i.qx, i32 noundef %i.qy) ; 7 uses
  %i.ra = load i32, ptr @hf_dis_iff_mode_code_element_1, align 4
  %i.rb = call ptr @proto_tree_add_item(ptr noundef %i.qz, i32 noundef %i.ra, ptr noundef %0, i32 noundef 52, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.rc = load i32, ptr @hf_dis_iff_mode_code_element_2, align 4
  %i.rd = call ptr @proto_tree_add_item(ptr noundef %i.qz, i32 noundef %i.rc, ptr noundef %0, i32 noundef 52, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.re = load i32, ptr @hf_dis_iff_mode_code_element_3, align 4
  %i.rf = call ptr @proto_tree_add_item(ptr noundef %i.qz, i32 noundef %i.re, ptr noundef %0, i32 noundef 52, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.rg = load i32, ptr @hf_dis_iff_mode_code_element_4, align 4
  %i.rh = call ptr @proto_tree_add_item(ptr noundef %i.qz, i32 noundef %i.rg, ptr noundef %0, i32 noundef 52, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ri = load i32, ptr @hf_dis_iff_mode_status, align 4
  %i.rj = call ptr @proto_tree_add_item(ptr noundef %i.qz, i32 noundef %i.ri, ptr noundef %0, i32 noundef 52, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.rk = load i32, ptr @hf_dis_iff_mode_damage, align 4
  %i.rl = call ptr @proto_tree_add_item(ptr noundef %i.qz, i32 noundef %i.rk, ptr noundef %0, i32 noundef 52, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.rm = load i32, ptr @hf_dis_iff_mode_malfunction, align 4
  %i.rn = call ptr @proto_tree_add_item(ptr noundef %i.qz, i32 noundef %i.rm, ptr noundef %0, i32 noundef 52, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ro = icmp eq i16 %i.ku, 8                    ; 2 uses
  %i.rp = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 54) ; 5 uses
  br i1 %i.ro, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.rq = and i16 %i.rp, 1
  %i.rr = lshr i16 %i.rp, 1
  %i.rs = and i16 %i.rr, 127
  %i.rt = lshr i16 %i.rp, 9
  %i.ru = load i32, ptr @hf_dis_iff_mode_s_interrogator_identifier, align 4
  %i.rv = call ptr @proto_tree_add_item(ptr noundef %i.mc, i32 noundef %i.ru, ptr noundef %0, i32 noundef 54, i32 noundef 2, i32 noundef 0)
  %i.rw = load i32, ptr @ett_iff_mode_s_interrogator_identifier, align 4
  %i.rx = call ptr @proto_item_add_subtree(ptr noundef %i.rv, i32 noundef %i.rw) ; 4 uses
  %i.ry = load i32, ptr @hf_dis_iff_mode_s_interrogator_identifier_primary_ic_type, align 4
  %i.rz = call ptr @proto_tree_add_item(ptr noundef %i.rx, i32 noundef %i.ry, ptr noundef %0, i32 noundef 54, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sa = load i32, ptr @hf_dis_iff_mode_s_interrogator_identifier_primary_ic_code, align 4
  %i.sb = call ptr @proto_tree_add_item(ptr noundef %i.rx, i32 noundef %i.sa, ptr noundef %0, i32 noundef 54, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sc = load i32, ptr @hf_dis_iff_mode_s_interrogator_identifier_secondary_ic_type, align 4
  %i.sd = call ptr @proto_tree_add_item(ptr noundef %i.rx, i32 noundef %i.sc, ptr noundef %0, i32 noundef 54, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.se = load i32, ptr @hf_dis_iff_mode_s_interrogator_identifier_secondary_ic_code, align 4
  %i.sf = call ptr @proto_tree_add_item(ptr noundef %i.rx, i32 noundef %i.se, ptr noundef %0, i32 noundef 54, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sg = icmp eq i16 %i.rq, 0
  %i.sh = zext nneg i16 %i.rs to i32
  %i.si = and i16 %i.rp, 256
  %i.sj = icmp eq i16 %i.si, 0
  %i.sk = zext nneg i16 %i.rt to i32
  %i.sl = select i1 %i.sg, ptr @.str.5283, ptr @.str.5284
  %i.sm = select i1 %i.sj, ptr @.str.5286, ptr @.str.5287
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.sn = and i16 %i.rp, 4095
  %i.so = load i32, ptr @hf_dis_iff_parameter_4, align 4
  %i.sp = call ptr @proto_tree_add_item(ptr noundef %i.mc, i32 noundef %i.so, ptr noundef %0, i32 noundef 54, i32 noundef 2, i32 noundef 0)
  %i.sq = load i32, ptr @ett_iff_parameter_4, align 4
  %i.sr = call ptr @proto_item_add_subtree(ptr noundef %i.sp, i32 noundef %i.sq) ; 4 uses
  %i.ss = load i32, ptr @hf_dis_iff_mode_4, align 4
  %i.st = call ptr @proto_tree_add_item(ptr noundef %i.sr, i32 noundef %i.ss, ptr noundef %0, i32 noundef 54, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.su = load i32, ptr @hf_dis_iff_mode_status, align 4
  %i.sv = call ptr @proto_tree_add_item(ptr noundef %i.sr, i32 noundef %i.su, ptr noundef %0, i32 noundef 54, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sw = load i32, ptr @hf_dis_iff_mode_damage, align 4
  %i.sx = call ptr @proto_tree_add_item(ptr noundef %i.sr, i32 noundef %i.sw, ptr noundef %0, i32 noundef 54, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.sy = load i32, ptr @hf_dis_iff_mode_malfunction, align 4
  %i.sz = call ptr @proto_tree_add_item(ptr noundef %i.sr, i32 noundef %i.sy, ptr noundef %0, i32 noundef 54, i32 noundef 2, i32 noundef 0) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.0426.i = phi i16 [ 0, %bb.af ], [ %i.sn, %bb.ag ] ; 2 uses
  %.0425.i = phi ptr [ %i.sl, %bb.af ], [ @.str.5283, %bb.ag ]
  %.0424.i = phi i32 [ %i.sh, %bb.af ], [ 0, %bb.ag ]
  %.0423.i = phi ptr [ %i.sm, %bb.af ], [ @.str.5286, %bb.ag ]
  %.0.i63 = phi i32 [ %i.sk, %bb.af ], [ 0, %bb.ag ]
  %i.ta = load i32, ptr @hf_dis_iff_parameter_5, align 4
  %i.tb = call ptr @proto_tree_add_item(ptr noundef %i.mc, i32 noundef %i.ta, ptr noundef %0, i32 noundef 56, i32 noundef 2, i32 noundef 0)
  %i.tc = load i32, ptr @ett_iff_parameter_5, align 4
  %i.td = call ptr @proto_item_add_subtree(ptr noundef %i.tb, i32 noundef %i.tc) ; 5 uses
  %i.te = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 56) ; 2 uses
  %i.tf = zext i16 %i.te to i32                   ; 2 uses
  %i.tg = lshr i16 %i.te, 1
  %i.th = and i16 %i.tg, 2047                     ; 2 uses
  %i.ti = and i32 %i.tf, 1
  %.not.i = icmp eq i32 %i.ti, 0
  %i.tj = sub nsw i16 0, %i.th
  %i.tk = select i1 %.not.i, i16 %i.th, i16 %i.tj ; 2 uses
  %i.tl = load i32, ptr @hf_dis_iff_mode_c_altitude_indicator, align 4
  %i.tm = call ptr @proto_tree_add_item(ptr noundef %i.td, i32 noundef %i.tl, ptr noundef %0, i32 noundef 56, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tn = load i32, ptr @hf_dis_iff_mode_c_altitude, align 4
  %i.to = call ptr @proto_tree_add_item(ptr noundef %i.td, i32 noundef %i.tn, ptr noundef %0, i32 noundef 56, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tp = load i32, ptr @hf_dis_iff_mode_status, align 4
  %i.tq = call ptr @proto_tree_add_item(ptr noundef %i.td, i32 noundef %i.tp, ptr noundef %0, i32 noundef 56, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tr = load i32, ptr @hf_dis_iff_mode_damage, align 4
  %i.ts = call ptr @proto_tree_add_item(ptr noundef %i.td, i32 noundef %i.tr, ptr noundef %0, i32 noundef 56, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tt = load i32, ptr @hf_dis_iff_mode_malfunction, align 4
  %i.tu = call ptr @proto_tree_add_item(ptr noundef %i.td, i32 noundef %i.tt, ptr noundef %0, i32 noundef 56, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tv = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 58)
  %i.tw = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 58)
  %i.tx = and i16 %i.tw, 2
  %i.ty = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 58)
  %i.tz = lshr i16 %i.ty, 9
  %i.ua = and i16 %i.tz, 7
  %i.ub = call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef 58)
  %i.uc = load i32, ptr @hf_dis_iff_parameter_6, align 4
  %i.ud = call ptr @proto_tree_add_item(ptr noundef %i.mc, i32 noundef %i.uc, ptr noundef %0, i32 noundef 58, i32 noundef 2, i32 noundef 0)
  %i.ue = load i32, ptr @ett_iff_parameter_6, align 4
  %i.uf = call ptr @proto_item_add_subtree(ptr noundef %i.ud, i32 noundef %i.ue) ; 8 uses
  %i.ug = load i32, ptr @hf_dis_iff_tcas_acas_basic_advanced_indicator, align 4
  %i.uh = call ptr @proto_tree_add_item(ptr noundef %i.uf, i32 noundef %i.ug, ptr noundef %0, i32 noundef 58, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ui = load i32, ptr @hf_dis_iff_tcas_acas_tcas_acas_indicator, align 4
  %i.uj = call ptr @proto_tree_add_item(ptr noundef %i.uf, i32 noundef %i.ui, ptr noundef %0, i32 noundef 58, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.uk = load i32, ptr @hf_dis_iff_tcas_acas_software_version, align 4
  %i.ul = call ptr @proto_tree_add_item(ptr noundef %i.uf, i32 noundef %i.uk, ptr noundef %0, i32 noundef 58, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.um = load i32, ptr @hf_dis_iff_tcas_acas_tcas_acas_type, align 4
  %i.un = call ptr @proto_tree_add_item(ptr noundef %i.uf, i32 noundef %i.um, ptr noundef %0, i32 noundef 58, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.uo = load i32, ptr @hf_dis_iff_tcas_acas_tcas_type, align 4
  %i.up = call ptr @proto_tree_add_item(ptr noundef %i.uf, i32 noundef %i.uo, ptr noundef %0, i32 noundef 58, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.uq = load i32, ptr @hf_dis_iff_mode_status, align 4
  %i.ur = call ptr @proto_tree_add_item(ptr noundef %i.uf, i32 noundef %i.uq, ptr noundef %0, i32 noundef 58, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.us = load i32, ptr @hf_dis_iff_mode_damage, align 4
  %i.ut = call ptr @proto_tree_add_item(ptr noundef %i.uf, i32 noundef %i.us, ptr noundef %0, i32 noundef 58, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.uu = load i32, ptr @hf_dis_iff_mode_malfunction, align 4
  %i.uv = call ptr @proto_tree_add_item(ptr noundef %i.uf, i32 noundef %i.uu, ptr noundef %0, i32 noundef 58, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.uw = load ptr, ptr %i.h, align 8
  %i.ux = zext i16 %i.jr to i32
  %i.uy = zext i16 %i.js to i32
  %i.uz = zext i16 %i.jt to i32
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.uw, i32 noundef 25, ptr noundef @.str.5278, i32 noundef %i.ux, i32 noundef %i.uy, i32 noundef %i.uz)
  br i1 %.0431.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.va = load ptr, ptr %i.h, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.va, i32 noundef 25, ptr noundef @.str.5279, i32 noundef %.0430.i, i32 noundef %.0429.i)
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  br i1 %.0428.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.vb = load ptr, ptr %i.h, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.vb, i32 noundef 25, ptr noundef @.str.5280, i32 noundef %.0427.i)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.not437.i = icmp eq i16 %i.po, 0
  br i1 %.not437.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.vc = load ptr, ptr %i.h, align 8
  %i.vd = zext nneg i16 %i.pp to i32
  %i.ve = zext nneg i16 %i.pr to i32
  %i.vf = zext nneg i16 %i.pt to i32
  %i.vg = zext nneg i16 %i.pv to i32
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.vc, i32 noundef 25, ptr noundef @.str.5281, i32 noundef %i.vd, i32 noundef %i.ve, i32 noundef %i.vf, i32 noundef %i.vg)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.not438.i = icmp eq i16 %i.qp, 0
  br i1 %.not438.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.vh = load ptr, ptr %i.h, align 8
  %i.vi = zext nneg i16 %i.qq to i32
  %i.vj = zext nneg i16 %i.qs to i32
  %i.vk = zext nneg i16 %i.qv to i32
  %i.vl = zext nneg i16 %i.qt to i32
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.vh, i32 noundef 25, ptr noundef @.str.5282, i32 noundef %i.vi, i32 noundef %i.vj, i32 noundef %i.vk, i32 noundef %i.vl)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %i.ro, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.vm = load ptr, ptr %i.h, align 8
  call void @col_append_str(ptr noundef %i.vm, i32 noundef 25, ptr noundef %.0425.i)
  %i.vn = load ptr, ptr %i.h, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.vn, i32 noundef 25, ptr noundef @.str.5285, i32 noundef %.0424.i)
  %i.vo = load ptr, ptr %i.h, align 8
  call void @col_append_str(ptr noundef %i.vo, i32 noundef 25, ptr noundef %.0423.i)
  %i.vp = load ptr, ptr %i.h, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.vp, i32 noundef 25, ptr noundef @.str.5285, i32 noundef %.0.i63)
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %.not439.i = icmp eq i16 %.0426.i, 0
  br i1 %.not439.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.vq = load ptr, ptr %i.h, align 8
  %i.vr = zext nneg i16 %.0426.i to i32
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.vq, i32 noundef 25, ptr noundef @.str.5288, i32 noundef %i.vr)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.not440.i = icmp eq i16 %i.tk, 0
  %i.vs = and i32 %i.tf, 8192
  %.not441.i = icmp eq i32 %i.vs, 0
  %or.cond.i = select i1 %.not440.i, i1 %.not441.i, i1 false
  br i1 %or.cond.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.vt = sext i16 %i.tk to i32
  %i.vu = load ptr, ptr %i.h, align 8
  call void (ptr, i32, ptr, ...) @col_append_fstr(ptr noundef %i.vu, i32 noundef 25, ptr noundef @.str.5289, i32 noundef %i.vt)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.not442.i = icmp eq i16 %i.tv, 0
  br i1 %.not442.i, label %parse_persistent_pdu_payload.exit.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.vv = icmp eq i16 %i.tx, 0
  br i1 %i.vv, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %i.vw = and i16 %i.ub, 4096
  %i.vx = icmp eq i16 %i.vw, 0
  %i.vy = load ptr, ptr %i.h, align 8             ; 2 uses
  br i1 %i.vx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call void @col_append_str(ptr noundef %i.vy, i32 noundef 25, ptr noundef @.str.5290)
  br label %parse_persistent_pdu_payload.exit.thread

bb.az:                                            ; preds = %bb.ax
  call void @col_append_str(ptr noundef %i.vy, i32 noundef 25, ptr noundef @.str.5291)
  br label %parse_persistent_pdu_payload.exit.thread

bb.ba:                                            ; preds = %bb.aw
  switch i16 %i.ua, label %parse_persistent_pdu_payload.exit.thread [
    i16 1, label %bb.bb
    i16 2, label %bb.bc
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.vz = load ptr, ptr %i.h, align 8
  call void @col_append_str(ptr noundef %i.vz, i32 noundef 25, ptr noundef @.str.5292)
  br label %parse_persistent_pdu_payload.exit.thread

bb.bc:                                            ; preds = %bb.ba
  %i.wa = load ptr, ptr %i.h, align 8
  call void @col_append_str(ptr noundef %i.wa, i32 noundef 25, ptr noundef @.str.5293)
  br label %parse_persistent_pdu_payload.exit.thread

parse_persistent_pdu_payload.exit:                ; preds = %bb.x
  %i.wb = call fastcc i32 @parse_pdu_payload(ptr noundef %0, ptr noundef %1, ptr noundef %i.jp, i8 noundef zeroext %i.x, ptr noundef %i.d) ; 2 uses
  %.not = icmp eq i32 %i.wb, 12
  br i1 %.not, label %parse_persistent_pdu_payload.exit.thread73, label %parse_persistent_pdu_payload.exit.thread

parse_persistent_pdu_payload.exit.thread:         ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.av, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.w, %parse_persistent_pdu_payload.exit
  %.06072 = phi i32 [ %i.wb, %parse_persistent_pdu_payload.exit ], [ 60, %bb.bc ], [ 60, %bb.bb ], [ 60, %bb.ba ], [ 60, %bb.az ], [ 60, %bb.ay ], [ 60, %bb.av ], [ 38, %bb.v ], [ 25, %bb.u ], [ 35, %bb.t ], [ 31, %bb.s ], [ 44, %bb.r ], [ 118, %bb.q ], [ 32, %bb.w ]
  %i.wc = load ptr, ptr %i.a, align 8
  call void @proto_item_set_end(ptr noundef %i.wc, ptr noundef %0, i32 noundef %.06072)
  br label %parse_persistent_pdu_payload.exit.thread73

parse_persistent_pdu_payload.exit.thread73:       ; preds = %bb.p, %parse_persistent_pdu_payload.exit.thread, %parse_persistent_pdu_payload.exit
  %i.wd = load i32, ptr @dis_tap, align 4         ; 2 uses
  %.not62 = icmp eq i32 %i.wd, -1
  br i1 %.not62, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %parse_persistent_pdu_payload.exit.thread73
  %i.we = load i8, ptr %i.d, align 8, !range !7, !noundef !8
  %i.wf = trunc nuw i8 %i.we to i1
  br i1 %i.wf, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @tap_queue_packet(i32 noundef %i.wd, ptr noundef %1, ptr noundef %i.d)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %parse_persistent_pdu_payload.exit.thread73
  %i.wg = call i32 @tvb_captured_length(ptr noundef %0)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.a, %bb.bf
  %.0 = phi i32 [ %i.wg, %bb.bf ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare i32 @register_tap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @expert_register_protocol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @expert_register_field_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @proto_reg_handoff_dis() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @dis_dissector_handle, align 8
  tail call void @dissector_add_uint_with_preference(ptr noundef @.str.876, i32 noundef 3000, ptr noundef %i.a)
  %i.b = load i32, ptr @proto_dis, align 4
  %i.c = tail call ptr @find_dissector_add_dependency(ptr noundef @.str.877, i32 noundef %i.b)
  store ptr %i.c, ptr @link16_handle, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @dissector_add_uint_with_preference(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @find_dissector_add_dependency(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc0(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_set_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_clear(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_item_add_subtree(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_get_ntohl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_ext_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_add_fstr(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @col_append_str(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc i32 @parse_pdu_payload(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 6 uses
  %i.d = alloca i16, align 2                      ; 6 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %struct.nstime_t, align 8           ; 5 uses
  %6 = alloca %struct.nstime_t, align 8           ; 5 uses
  %7 = alloca %struct.nstime_t, align 8           ; 5 uses
  %8 = alloca %struct.nstime_t, align 8           ; 5 uses
  %9 = alloca %struct.nstime_t, align 8           ; 5 uses
  %10 = alloca %struct.nstime_t, align 8          ; 5 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %11 = alloca %struct.Link16State, align 4       ; 4 uses
  %12 = alloca %struct.nstime_t, align 8          ; 5 uses
  %i.j = alloca i16, align 2                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca i8, align 1                       ; 5 uses
  %i.n = alloca i8, align 1                       ; 5 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  switch i8 %3, label %dissect_DIS_PARSER_UNDERWATER_ACOUSTIC_PDU.exit [
    i8 1, label %bb.b
    i8 4, label %bb.n
    i8 23, label %bb.o
    i8 29, label %bb.p
    i8 24, label %bb.r
    i8 25, label %bb.s
    i8 26, label %bb.x
    i8 31, label %bb.x
    i8 27, label %bb.al
    i8 32, label %bb.am
    i8 2, label %bb.an
    i8 3, label %bb.ao
    i8 13, label %bb.ap
    i8 14, label %bb.aq
end_hunk_0
