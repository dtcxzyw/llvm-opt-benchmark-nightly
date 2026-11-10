Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-ipv6?download=true
inline.NumInlined: 153
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@dissect_opts:bb.a
  %i.nk = call ptr @proto_tree_add_item(ptr noundef %i.nf, i32 noundef %i.ni, ptr noundef %0, i32 noundef %i.nj, i32 noundef 7, i32 noundef 0) ; 0 uses
  %i.nl = add i32 %.7.i.i.i, 8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.8.i.i.i = phi i32 [ %i.nl, %bb.cl ], [ %.7.i.i.i, %bb.ck ] ; 5 uses
  br i1 %i.lp, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nm = call ptr @proto_tree_add_subtree(ptr noundef %i.ly, ptr noundef %0, i32 noundef %.8.i.i.i, i32 noundef 8, i32 noundef 0, ptr noundef null, ptr noundef @.str.399) ; 2 uses
  %i.nn = load i32, ptr @hf_ipv6_opt_ioam_trace_node_iif_wide, align 4
  %i.no = call ptr @proto_tree_add_item(ptr noundef %i.nm, i32 noundef %i.nn, ptr noundef %0, i32 noundef %.8.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.np = load i32, ptr @hf_ipv6_opt_ioam_trace_node_eif_wide, align 4
  %i.nq = add i32 %.8.i.i.i, 4
  %i.nr = call ptr @proto_tree_add_item(ptr noundef %i.nm, i32 noundef %i.np, ptr noundef %0, i32 noundef %i.nq, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ns = add i32 %.8.i.i.i, 8
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.9.i.i.i = phi i32 [ %i.ns, %bb.cn ], [ %.8.i.i.i, %bb.cm ] ; 3 uses
  br i1 %i.lo, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nt = load i32, ptr @hf_ipv6_opt_ioam_trace_node_nsdata_wide, align 4
  %i.nu = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.nt, ptr noundef %0, i32 noundef %.9.i.i.i, i32 noundef 8, i32 noundef 0) ; 0 uses
  %i.nv = add i32 %.9.i.i.i, 8
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.10.i.i.i = phi i32 [ %i.nv, %bb.cp ], [ %.9.i.i.i, %bb.co ] ; 3 uses
  br i1 %i.ln, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nw = load i32, ptr @hf_ipv6_opt_ioam_trace_node_bufoccup, align 4
  %i.nx = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.nw, ptr noundef %0, i32 noundef %.10.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ny = add i32 %.10.i.i.i, 4
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.11.i.i.i = phi i32 [ %i.ny, %bb.cr ], [ %.10.i.i.i, %bb.cq ] ; 3 uses
  br i1 %i.lm, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.nz = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.oa = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.nz, ptr noundef %0, i32 noundef %.11.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ob = add i32 %.11.i.i.i, 4
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.12.i.i.i = phi i32 [ %i.ob, %bb.ct ], [ %.11.i.i.i, %bb.cs ] ; 3 uses
  br i1 %i.ll, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.oc = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.od = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.oc, ptr noundef %0, i32 noundef %.12.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.oe = add i32 %.12.i.i.i, 4
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.13.i.i.i = phi i32 [ %i.oe, %bb.cv ], [ %.12.i.i.i, %bb.cu ] ; 3 uses
  br i1 %i.lk, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.of = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.og = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.of, ptr noundef %0, i32 noundef %.13.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.oh = add i32 %.13.i.i.i, 4
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.14.i.i.i = phi i32 [ %i.oh, %bb.cx ], [ %.13.i.i.i, %bb.cw ] ; 3 uses
  br i1 %i.lj, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.oi = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.oj = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.oi, ptr noundef %0, i32 noundef %.14.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ok = add i32 %.14.i.i.i, 4
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.15.i.i.i = phi i32 [ %i.ok, %bb.cz ], [ %.14.i.i.i, %bb.cy ] ; 3 uses
  br i1 %i.li, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ol = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.om = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.ol, ptr noundef %0, i32 noundef %.15.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.on = add i32 %.15.i.i.i, 4
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.16.i.i.i = phi i32 [ %i.on, %bb.db ], [ %.15.i.i.i, %bb.da ] ; 3 uses
  br i1 %i.lh, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.oo = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.op = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.oo, ptr noundef %0, i32 noundef %.16.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.oq = add i32 %.16.i.i.i, 4
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.17.i.i.i = phi i32 [ %i.oq, %bb.dd ], [ %.16.i.i.i, %bb.dc ] ; 3 uses
  br i1 %i.lg, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.or = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.os = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.or, ptr noundef %0, i32 noundef %.17.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ot = add i32 %.17.i.i.i, 4
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.18.i.i.i = phi i32 [ %i.ot, %bb.df ], [ %.17.i.i.i, %bb.de ] ; 3 uses
  br i1 %i.lf, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ou = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.ov = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.ou, ptr noundef %0, i32 noundef %.18.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.ow = add i32 %.18.i.i.i, 4
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.19.i.i.i = phi i32 [ %i.ow, %bb.dh ], [ %.18.i.i.i, %bb.dg ] ; 3 uses
  br i1 %i.le, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ox = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.oy = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.ox, ptr noundef %0, i32 noundef %.19.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.oz = add i32 %.19.i.i.i, 4
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.20.i.i.i = phi i32 [ %i.oz, %bb.dj ], [ %.19.i.i.i, %bb.di ] ; 3 uses
  br i1 %i.ld, label %dissect_opt_ioam_trace_node.exit.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pa = load i32, ptr @hf_ipv6_opt_ioam_trace_node_undefined, align 4
  %i.pb = call ptr @proto_tree_add_item(ptr noundef %i.ly, i32 noundef %i.pa, ptr noundef %0, i32 noundef %.20.i.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.pc = add i32 %.20.i.i.i, 4
  br label %dissect_opt_ioam_trace_node.exit.i.i

dissect_opt_ioam_trace_node.exit.i.i:             ; preds = %bb.dl, %bb.dk
  %.21.i.i.i = phi i32 [ %i.pc, %bb.dl ], [ %.20.i.i.i, %bb.dk ] ; 8 uses
  %i.pd = sub i32 %.21.i.i.i, %.1131166.i.i
  %.not146.i.i = icmp eq i32 %i.pd, %i.kq
  br i1 %.not146.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %dissect_opt_ioam_trace_node.exit.i.i
  %i.pe = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.kb, ptr noundef @ei_ipv6_opt_ioam_invalid_trace_type) ; 0 uses
  br label %dissect_opt_ioam_trace.exit.i

bb.dn:                                            ; preds = %dissect_opt_ioam_trace_node.exit.i.i
  %i.pf = sub nuw nsw i16 %.0123167.i.i, %i.la    ; 3 uses
  br i1 %i.lc, label %.backedge.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.pg = icmp ult i16 %i.pf, 4
  br i1 %i.pg, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.ph = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef @ei_ipv6_opt_invalid_len, ptr noundef @.str.920, i32 noundef %i.cd) ; 0 uses
  br label %dissect_opt_ioam_trace.exit.i

bb.dq:                                            ; preds = %bb.do
  %i.pi = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.21.i.i.i) ; 2 uses
  %i.pj = zext i8 %i.pi to i32
  %i.pk = shl nuw nsw i32 %i.pj, 2                ; 5 uses
  %i.pl = add nuw nsw i32 %i.pk, 4
  %i.pm = call ptr @proto_tree_add_subtree(ptr noundef %i.ly, ptr noundef %0, i32 noundef %.21.i.i.i, i32 noundef %i.pl, i32 noundef 0, ptr noundef null, ptr noundef @.str.407) ; 3 uses
  %i.pn = load i32, ptr @hf_ipv6_opt_ioam_trace_node_oss_len, align 4
  %i.po = call ptr @proto_tree_add_item(ptr noundef %i.pm, i32 noundef %i.pn, ptr noundef %0, i32 noundef %.21.i.i.i, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.pp = load i32, ptr @hf_ipv6_opt_ioam_trace_node_oss_scid, align 4
  %i.pq = add i32 %.21.i.i.i, 1
  %i.pr = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.pm, i32 noundef %i.pp, ptr noundef %0, i32 noundef %i.pq, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %i.d) ; 0 uses
  %i.ps = add i32 %.21.i.i.i, 4                   ; 4 uses
  %i.pt = add nsw i16 %i.pf, -4                   ; 3 uses
  %i.pu = zext nneg i16 %i.pt to i32
  %.not149.i.i = icmp samesign ugt i32 %i.pk, %i.pu
  br i1 %.not149.i.i, label %.split.thread.i.i, label %bb.dr

.split.thread.i.i:                                ; preds = %bb.dq
  %i.pv = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef @ei_ipv6_opt_invalid_len, ptr noundef @.str.920, i32 noundef %i.cd) ; 0 uses
  br label %dissect_opt_ioam_trace.exit.i

bb.dr:                                            ; preds = %bb.dq
  %.not148.i.i = icmp eq i8 %i.pi, 0
  br i1 %.not148.i.i, label %.backedge.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.pw = load i32, ptr @hf_ipv6_opt_ioam_trace_node_oss_data, align 4
  %i.px = call ptr @proto_tree_add_item(ptr noundef %i.pm, i32 noundef %i.pw, ptr noundef %0, i32 noundef %i.ps, i32 noundef %i.pk, i32 noundef 0) ; 0 uses
  %i.py = trunc nuw nsw i32 %i.pk to i16
  %i.pz = sub nuw nsw i16 %i.pt, %i.py
  %i.qa = add i32 %i.pk, %i.ps
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.ds, %bb.dr, %bb.dn
  %.1131.be.i.i = phi i32 [ %.21.i.i.i, %bb.dn ], [ %i.ps, %bb.dr ], [ %i.qa, %bb.ds ] ; 2 uses
  %.0123.be.i.i = phi i16 [ %i.pf, %bb.dn ], [ %i.pt, %bb.dr ], [ %i.pz, %bb.ds ] ; 4 uses
  %i.qb = zext nneg i16 %.0123.be.i.i to i32
  %i.qc = icmp ne i16 %.0123.be.i.i, 0
  %i.qd = icmp samesign ule i32 %i.kq, %i.qb
  %i.qe = select i1 %i.qc, i1 %i.qd, i1 false
  br i1 %i.qe, label %bb.bu, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.bt
  %.1131.lcssa.i.i = phi i32 [ %.0130.i.i, %bb.bt ], [ %.1131.be.i.i, %.backedge.i.i ] ; 2 uses
  %.0123.lcssa.i.i = phi i16 [ %i.ko, %bb.bt ], [ %.0123.be.i.i, %.backedge.i.i ]
  %.not145.i.i = icmp eq i16 %.0123.lcssa.i.i, 0
  br i1 %.not145.i.i, label %dissect_opt_ioam_trace.exit.i, label %bb.dt

bb.dt:                                            ; preds = %._crit_edge.i.i
  %i.qf = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef @ei_ipv6_opt_invalid_len, ptr noundef @.str.920, i32 noundef %i.cd) ; 0 uses
  br label %dissect_opt_ioam_trace.exit.i

dissect_opt_ioam_trace.exit.i:                    ; preds = %bb.dt, %._crit_edge.i.i, %.split.thread.i.i, %bb.dp, %bb.dm, %bb.bq, %bb.bp
  %.5.i.i = phi i32 [ %i.kf, %bb.bp ], [ %i.kf, %bb.bq ], [ %i.ps, %.split.thread.i.i ], [ %.1131.lcssa.i.i, %bb.dt ], [ %.1131.lcssa.i.i, %._crit_edge.i.i ], [ %.21.i.i.i, %bb.dp ], [ %.1131166.i.i, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %dissect_opt_ioam.exit

bb.du:                                            ; preds = %bb.bj
  %i.qg = icmp ult i8 %i.by, 10
  br i1 %i.qg, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.qh = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef @ei_ipv6_opt_invalid_len, ptr noundef @.str.920, i32 noundef %i.cd) ; 0 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.qi = load i32, ptr @hf_ipv6_opt_ioam_dex_ns, align 4
  %i.qj = call ptr @proto_tree_add_item(ptr noundef %i.iz, i32 noundef %i.qi, ptr noundef %0, i32 noundef range(i32 -2147483644, 2052) %i.iv, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.qk = add nuw nsw i32 %.0229296, 6
  %i.ql = load i32, ptr @hf_ipv6_opt_ioam_dex_flags, align 4
  %i.qm = call ptr @proto_tree_add_item(ptr noundef %i.iz, i32 noundef %i.ql, ptr noundef %0, i32 noundef %i.qk, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.qn = add nuw nsw i32 %.0229296, 7            ; 2 uses
  %i.qo = shl nuw nsw i32 %i.qn, 3
  %i.qp = call zeroext i8 @tvb_get_bits8(ptr noundef %0, i32 noundef %i.qo, i32 noundef 8) ; 2 uses
  %i.qq = load i32, ptr @hf_ipv6_opt_ioam_dex_extflags, align 4
  %i.qr = load i32, ptr @ett_ipv6_opt_ioam_dex_extflags, align 4
  %i.qs = call ptr @proto_tree_add_bitmask(ptr noundef %i.iz, ptr noundef %0, i32 noundef %i.qn, i32 noundef %i.qq, i32 noundef %i.qr, ptr noundef @dissect_opt_ioam_dex.ioam_dex_extflags, i32 noundef 0) ; 0 uses
  %i.qt = add nuw nsw i32 %.0229296, 8
  %i.qu = load i32, ptr @hf_ipv6_opt_ioam_trace_type, align 4
  %i.qv = load i32, ptr @ett_ipv6_opt_ioam_trace_types, align 4
  %i.qw = call ptr @proto_tree_add_bitmask(ptr noundef %i.iz, ptr noundef %0, i32 noundef %i.qt, i32 noundef %i.qu, i32 noundef %i.qv, ptr noundef @dissect_opt_ioam_dex.ioam_dex_trace_types, i32 noundef 0) ; 0 uses
  %i.qx = load i32, ptr @hf_ipv6_opt_ioam_trace_rsv, align 4
  %i.qy = add nuw nsw i32 %.0229296, 11
  %i.qz = call ptr @proto_tree_add_item(ptr noundef %i.iz, i32 noundef %i.qx, ptr noundef %0, i32 noundef %i.qy, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.ra = add nuw nsw i32 %.0229296, 12           ; 2 uses
  %.not.i28.i = icmp sgt i8 %i.qp, -1
  br i1 %.not.i28.i, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.rb = load i32, ptr @hf_ipv6_opt_ioam_dex_extflag_flowid, align 4
  %i.rc = call ptr @proto_tree_add_item(ptr noundef %i.iz, i32 noundef %i.rb, ptr noundef %0, i32 noundef %i.ra, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.rd = add nuw nsw i32 %.0229296, 16
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.0.i.i = phi i32 [ %i.rd, %bb.dx ], [ %i.ra, %bb.dw ] ; 3 uses
  %i.re = and i8 %i.qp, 64
  %.not36.i.i = icmp eq i8 %i.re, 0
  br i1 %.not36.i.i, label %dissect_opt_ioam.exit, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.rf = load i32, ptr @hf_ipv6_opt_ioam_dex_extflag_seqnum, align 4
  %i.rg = call ptr @proto_tree_add_item(ptr noundef %i.iz, i32 noundef %i.rf, ptr noundef %0, i32 noundef %.0.i.i, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.rh = add nsw i32 %.0.i.i, 4
  br label %dissect_opt_ioam.exit

dissect_opt_ioam.exit:                            ; preds = %bb.bj, %dissect_opt_ioam_trace.exit.i, %bb.dy, %bb.dz
  %.0.i260 = phi i32 [ %i.iv, %bb.bj ], [ %.5.i.i, %dissect_opt_ioam_trace.exit.i ], [ %i.rh, %bb.dz ], [ %.0.i.i, %bb.dy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %dissect_opt_apn6.exit

bb.ea:                                            ; preds = %ipv6_opt_type_hdr.exit.thread
  %.not.i262 = icmp eq i8 %i.by, 4
  br i1 %.not.i262, label %dissect_opt_tpf.exit, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.ri = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef @ei_ipv6_opt_invalid_len, ptr noundef @.str.925, i32 noundef %i.cd) ; 0 uses
  br label %dissect_opt_tpf.exit

dissect_opt_tpf.exit:                             ; preds = %bb.ea, %bb.eb
  %i.rj = load i32, ptr @hf_ipv6_opt_tpf_information, align 4
  %i.rk = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.rj, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.rl = add nuw nsw i32 %.0229296, 6
  br label %dissect_opt_apn6.exit

bb.ec:                                            ; preds = %ipv6_opt_type_hdr.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i32 0, ptr %i.c, align 4
  %i.rm = icmp ult i8 %i.by, 8
  br i1 %i.rm, label %bb.ed, label %dissect_opt_calipso.exit

bb.ed:                                            ; preds = %bb.ec
  %i.rn = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef @ei_ipv6_opt_invalid_len, ptr noundef @.str.926, i32 noundef %i.cd) ; 0 uses
  br label %dissect_opt_calipso.exit

dissect_opt_calipso.exit:                         ; preds = %bb.ec, %bb.ed
  %i.ro = load i32, ptr @hf_ipv6_opt_calipso_doi, align 4
  %i.rp = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.ro, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef 4, i32 noundef 0) ; 0 uses
  %i.rq = add nuw nsw i32 %.0229296, 6
  %i.rr = load i32, ptr @hf_ipv6_opt_calipso_cmpt_length, align 4
  %i.rs = call ptr @proto_tree_add_item_ret_uint(ptr noundef %i.ch, i32 noundef %i.rr, ptr noundef %0, i32 noundef %i.rq, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.c) ; 0 uses
  %i.rt = add nuw nsw i32 %.0229296, 7
  %i.ru = load i32, ptr @hf_ipv6_opt_calipso_sens_level, align 4
  %i.rv = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.ru, ptr noundef %0, i32 noundef %i.rt, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.rw = add nuw nsw i32 %.0229296, 8
  %i.rx = load i32, ptr @hf_ipv6_opt_calipso_checksum, align 4
  %i.ry = call ptr @proto_tree_add_checksum(ptr noundef %i.ch, ptr noundef %0, i32 noundef %i.rw, i32 noundef %i.rx, i32 noundef -1, ptr noundef null, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0) ; 0 uses
  %i.rz = add nuw nsw i32 %.0229296, 10           ; 2 uses
  %i.sa = load i32, ptr @hf_ipv6_opt_calipso_cmpt_bitmap, align 4
  %i.sb = load i32, ptr %i.c, align 4
  %i.sc = shl i32 %i.sb, 2
  %i.sd = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.sa, ptr noundef %0, i32 noundef %i.rz, i32 noundef %i.sc, i32 noundef 0) ; 0 uses
  %i.se = load i32, ptr %i.c, align 4
  %i.sf = shl i32 %i.se, 2
  %i.sg = add i32 %i.sf, %i.rz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %dissect_opt_apn6.exit

bb.ee:                                            ; preds = %ipv6_opt_type_hdr.exit.thread
  %i.sh = load i32, ptr @hf_ipv6_opt_smf_dpd_hash_bit, align 4
  %i.si = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.sh, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sj = call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm) ; 3 uses
  %.not.i263 = icmp sgt i8 %i.sj, -1
  br i1 %.not.i263, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.sk = load i32, ptr @hf_ipv6_opt_smf_dpd_hav, align 4
  %i.sl = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.sk, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef %i.cd, i32 noundef 0) ; 0 uses
  %i.sm = add nuw nsw i32 %i.dm, %i.cd
  br label %dissect_opt_apn6.exit

bb.eg:                                            ; preds = %bb.ee
  %i.sn = load i32, ptr @hf_ipv6_opt_smf_dpd_tid_type, align 4
  %i.so = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.sn, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sp = load i32, ptr @hf_ipv6_opt_smf_dpd_tid_len, align 4
  %i.sq = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.sp, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.sr = add nuw nsw i32 %.0229296, 3            ; 3 uses
  %i.ss = add nsw i32 %i.cd, -1                   ; 2 uses
  %.not40.i = icmp samesign ult i8 %i.sj, 16
  br i1 %.not40.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.st = and i8 %i.sj, 15
  %narrow.i = add nuw nsw i8 %i.st, 1
  %i.su = load i32, ptr @hf_ipv6_opt_smf_dpd_tagger_id, align 4
  %i.sv = zext nneg i8 %narrow.i to i32           ; 3 uses
  %i.sw = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.su, ptr noundef %0, i32 noundef %i.sr, i32 noundef %i.sv, i32 noundef 0) ; 0 uses
  %i.sx = add nuw nsw i32 %i.sr, %i.sv
  %i.sy = sub nsw i32 %i.ss, %i.sv
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.039.i = phi i32 [ %i.sx, %bb.eh ], [ %i.sr, %bb.eg ] ; 3 uses
  %.0.i264 = phi i32 [ %i.sy, %bb.eh ], [ %i.ss, %bb.eg ] ; 3 uses
  %i.sz = icmp sgt i32 %.0.i264, 0
  br i1 %i.sz, label %bb.ej, label %dissect_opt_apn6.exit

bb.ej:                                            ; preds = %bb.ei
  %i.ta = load i32, ptr @hf_ipv6_opt_smf_dpd_ident, align 4
  %i.tb = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.ta, ptr noundef %0, i32 noundef %.039.i, i32 noundef %.0.i264, i32 noundef 0) ; 0 uses
  %i.tc = add nsw i32 %.0.i264, %.039.i
  br label %dissect_opt_apn6.exit

bb.ek:                                            ; preds = %ipv6_opt_type_hdr.exit.thread
  %.not.i265 = icmp eq i8 %i.by, 10
  br i1 %.not.i265, label %dissect_opt_pdm.exit, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.td = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef @ei_ipv6_opt_invalid_len, ptr noundef @.str.927, i32 noundef %i.cd) ; 0 uses
  br label %dissect_opt_pdm.exit

dissect_opt_pdm.exit:                             ; preds = %bb.ek, %bb.el
  %i.te = load i32, ptr @hf_ipv6_opt_pdm_scale_dtlr, align 4
  %i.tf = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.te, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.tg = add nuw nsw i32 %.0229296, 3
  %i.th = load i32, ptr @hf_ipv6_opt_pdm_scale_dtls, align 4
  %i.ti = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.th, ptr noundef %0, i32 noundef %i.tg, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.tj = add nuw nsw i32 %.0229296, 4
  %i.tk = load i32, ptr @hf_ipv6_opt_pdm_psn_this_pkt, align 4
  %i.tl = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.tk, ptr noundef %0, i32 noundef %i.tj, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tm = add nuw nsw i32 %.0229296, 6
  %i.tn = load i32, ptr @hf_ipv6_opt_pdm_psn_last_recv, align 4
  %i.to = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.tn, ptr noundef %0, i32 noundef %i.tm, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tp = add nuw nsw i32 %.0229296, 8
  %i.tq = load i32, ptr @hf_ipv6_opt_pdm_delta_last_recv, align 4
  %i.tr = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.tq, ptr noundef %0, i32 noundef %i.tp, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.ts = add nuw nsw i32 %.0229296, 10
  %i.tt = load i32, ptr @hf_ipv6_opt_pdm_delta_last_sent, align 4
  %i.tu = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.tt, ptr noundef %0, i32 noundef %i.ts, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.tv = add nuw nsw i32 %.0229296, 12
  br label %dissect_opt_apn6.exit

bb.em:                                            ; preds = %ipv6_opt_type_hdr.exit.thread
  %.not.i266 = icmp eq i8 %i.by, 16
  br i1 %.not.i266, label %dissect_opt_home_address.exit, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.tw = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef @ei_ipv6_opt_invalid_len, ptr noundef @.str.928, i32 noundef %i.cd) ; 0 uses
  br label %dissect_opt_home_address.exit

dissect_opt_home_address.exit:                    ; preds = %bb.em, %bb.en
end_hunk_0
begin_hunk_1_@dissect_opts:bb.a
bb.et:                                            ; preds = %bb.er
  %i.vm = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.cj, ptr noundef @ei_ipv6_opt_mpl_ipv6_src_seed_id) ; 0 uses
  br label %dissect_opt_apn6.exit

bb.eu:                                            ; preds = %ipv6_opt_type_hdr.exit.thread
  %.not.i269 = icmp eq i8 %i.by, 3
  br i1 %.not.i269, label %dissect_opt_dff.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.vn = call ptr (ptr, ptr, ptr, ptr, ...) @expert_add_info_format(ptr noundef %2, ptr noundef %i.dl, ptr noundef @ei_ipv6_opt_invalid_len, ptr noundef @.str.929, i32 noundef %i.cd) ; 0 uses
  br label %dissect_opt_dff.exit

dissect_opt_dff.exit:                             ; preds = %bb.eu, %bb.ev
  %i.vo = load i32, ptr @hf_ipv6_opt_dff_flags, align 4
  %i.vp = load i32, ptr @ett_ipv6_opt_dff_flags, align 4
  %i.vq = call ptr @proto_tree_add_bitmask(ptr noundef %i.ch, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef %i.vo, i32 noundef %i.vp, ptr noundef @dissect_opt_dff.dff_flags, i32 noundef 0) ; 0 uses
  %i.vr = add nuw nsw i32 %.0229296, 3
  %i.vs = load i32, ptr @hf_ipv6_opt_dff_seqnum, align 4
  %i.vt = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.vs, ptr noundef %0, i32 noundef %i.vr, i32 noundef 2, i32 noundef 0) ; 0 uses
  %i.vu = add nuw nsw i32 %.0229296, 5
  br label %dissect_opt_apn6.exit

bb.ew:                                            ; preds = %ipv6_opt_type_hdr.exit.thread
  %i.vv = load i32, ptr @hf_ipv6_opt_unknown, align 4
  %i.vw = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.vv, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef %i.cd, i32 noundef 0)
  %i.vx = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.vw, ptr noundef @ei_ipv6_opt_unknown_data) ; 0 uses
  %i.vy = add nuw nsw i32 %i.dm, %i.cd
  %i.vz = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.cj, ptr noundef @ei_ipv6_opt_deprecated) ; 0 uses
  br label %dissect_opt_apn6.exit

bb.ex:                                            ; preds = %ipv6_opt_type_hdr.exit.thread, %ipv6_opt_type_hdr.exit.thread, %ipv6_opt_type_hdr.exit.thread, %ipv6_opt_type_hdr.exit.thread, %ipv6_opt_type_hdr.exit.thread, %ipv6_opt_type_hdr.exit.thread, %ipv6_opt_type_hdr.exit.thread, %ipv6_opt_type_hdr.exit.thread
  %i.wa = load i32, ptr @hf_ipv6_opt_experimental, align 4
  %i.wb = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.wa, ptr noundef %0, i32 noundef %i.dm, i32 noundef %i.cd, i32 noundef 0) ; 0 uses
  %i.wc = add nuw nsw i32 %i.dm, %i.cd
  br label %dissect_opt_apn6.exit

bb.ey:                                            ; preds = %ipv6_opt_type_hdr.exit.thread
  %i.wd = load i32, ptr @hf_ipv6_opt_unknown, align 4
  %i.we = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.wd, ptr noundef %0, i32 noundef range(i32 -2147483646, 2050) %i.dm, i32 noundef %i.cd, i32 noundef 0)
  %i.wf = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.we, ptr noundef @ei_ipv6_opt_unknown_data) ; 0 uses
  %i.wg = add nuw nsw i32 %i.dm, %i.cd
  br label %dissect_opt_apn6.exit

dissect_opt_apn6.exit:                            ; preds = %bb.et, %bb.es, %bb.ej, %bb.ei, %bb.ef, %bb.ay, %bb.av, %bb.as, %bb.ar, %bb.ey, %bb.ex, %bb.ew, %dissect_opt_dff.exit, %dissect_opt_lio.exit, %bb.eo, %dissect_opt_home_address.exit, %dissect_opt_pdm.exit, %dissect_opt_calipso.exit, %dissect_opt_tpf.exit, %dissect_opt_ioam.exit, %dissect_opt_quickstart.exit, %dissect_opt_pmtu.exit, %dissect_opt_rtalert.exit, %dissect_opt_tel.exit, %dissect_opt_rpl.exit, %dissect_opt_jumbo.exit
  %.1 = phi i32 [ %i.wg, %bb.ey ], [ %i.eh, %dissect_opt_jumbo.exit ], [ %i.et, %dissect_opt_rpl.exit ], [ %i.ex, %dissect_opt_tel.exit ], [ %i.fb, %dissect_opt_rtalert.exit ], [ %i.fq, %dissect_opt_pmtu.exit ], [ %i.wc, %bb.ex ], [ %.0.i259, %dissect_opt_quickstart.exit ], [ %.0.i260, %dissect_opt_ioam.exit ], [ %i.rl, %dissect_opt_tpf.exit ], [ %i.sg, %dissect_opt_calipso.exit ], [ %i.gg, %bb.ar ], [ %i.tv, %dissect_opt_pdm.exit ], [ %i.uc, %dissect_opt_home_address.exit ], [ %i.uj, %bb.eo ], [ %i.uv, %dissect_opt_lio.exit ], [ %.039.i, %bb.ei ], [ %i.vu, %dissect_opt_dff.exit ], [ %i.vy, %bb.ew ], [ %i.gz, %bb.ay ], [ %i.gp, %bb.av ], [ %i.gj, %bb.as ], [ %i.sm, %bb.ef ], [ %i.tc, %bb.ej ], [ %i.vl, %bb.es ], [ %i.vh, %bb.et ] ; 4 uses
  %i.wh = and i32 %i.dm, 255
  %i.wi = add nuw nsw i32 %i.wh, %i.cd            ; 3 uses
  %i.wj = icmp slt i32 %.1, %i.wi
  br i1 %i.wj, label %bb.ez, label %.backedge

bb.ez:                                            ; preds = %dissect_opt_apn6.exit
  %i.wk = load i32, ptr @hf_ipv6_opt_unknown_data, align 4
  %i.wl = sub i32 %i.wi, %.1
  %i.wm = call ptr @proto_tree_add_item(ptr noundef %i.ch, i32 noundef %i.wk, ptr noundef %0, i32 noundef %.1, i32 noundef %i.wl, i32 noundef 0)
  %i.wn = call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.wm, ptr noundef @ei_ipv6_opt_unknown_data) ; 0 uses
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.j, ptr %i.a, align 1
  %i.wo = load ptr, ptr %i.o, align 8
  %i.wp = call dereferenceable_or_null(1) ptr @wmem_memdup(ptr noundef %i.wo, ptr noundef nonnull %i.a, i64 noundef 1) #17
  %i.wq = load ptr, ptr %i.o, align 8
  %i.wr = load i32, ptr @proto_ipv6, align 4
  %i.ws = getelementptr i8, ptr %2, i64 384
  %i.wt = load i8, ptr %i.ws, align 8
  %i.wu = zext i8 %i.wt to i32
  %i.wv = shl nuw nsw i32 %i.wu, 8
  %i.ww = or disjoint i32 %i.wv, 1
  call void @p_add_proto_data(ptr noundef %i.wq, ptr noundef %2, i32 noundef %i.wr, i32 noundef %i.ww, ptr noundef %i.wp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.wx = call ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %i.n)
  %i.wy = zext i8 %i.j to i32
  call void @ipv6_dissect_next(i32 noundef %i.wy, ptr noundef %i.wx, ptr noundef %2, ptr noundef %1, ptr noundef %3)
  %i.wz = call i32 @tvb_captured_length(ptr noundef %0)
  ret i32 %i.wz
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_none_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_list_tail(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_list_frame_prev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_list_frame_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str_const(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_subtree_format(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_checksum(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @val_to_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @fragment_add_check(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @process_reassembled_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_ipv6_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_int(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_array_sized_new(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @wmem_array_get_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_array_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wmem_array_append(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_uint_format(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind null_pointer_is_valid returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { allocsize(1) }
attributes #16 = { nounwind }
attributes #17 = { allocsize(2) }
attributes #18 = { nounwind returns_twice }
attributes #19 = { noreturn }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { allocsize(0) }
attributes #22 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = !{i64 2152811299}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
end_hunk_1
