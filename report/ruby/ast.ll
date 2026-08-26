Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ast?download=true
inline.NumInlined: 226
inline.NumDeleted: 46
begin_hunk_0_@node_children:bb.a
  %i.lu = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.lp, i64 noundef %i.lt) #10
  br label %bb.ic

bb.de:                                            ; preds = %bb.a
  %i.lv = getelementptr i8, ptr %1, i64 32
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !239
  %i.lx = tail call i64 @rb_id2sym(i64 noundef %i.lw) #10
  %i.ly = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.lx) #10
  br label %bb.ic

bb.df:                                            ; preds = %bb.a
  %i.lz = getelementptr i8, ptr %1, i64 32
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !241
  %i.mb = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 1, ptr noundef %i.ma)
  br label %bb.ic

bb.dg:                                            ; preds = %bb.a
  %i.mc = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 0)
  br label %bb.ic

bb.dh:                                            ; preds = %bb.a
  %i.md = tail call fastcc i64 @dump_array(i64 noundef %0, ptr noundef nonnull %1)
  br label %bb.ic

bb.di:                                            ; preds = %bb.a
  %i.me = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 0)
  br label %bb.ic

bb.dj:                                            ; preds = %bb.a
  %i.mf = getelementptr i8, ptr %1, i64 32
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !243
  %i.mh = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 1, ptr noundef %i.mg)
  br label %bb.ic

bb.dk:                                            ; preds = %bb.a
  %i.mi = getelementptr i8, ptr %1, i64 32
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !245
  %i.mk = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 1, ptr noundef %i.mj)
  br label %bb.ic

bb.dl:                                            ; preds = %bb.a
  %i.ml = getelementptr i8, ptr %1, i64 32
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !247
  %i.mn = tail call fastcc i64 @var_name(i64 noundef %i.mm)
  %i.mo = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.mn) #10
  br label %bb.ic

bb.dm:                                            ; preds = %bb.a
  %i.mp = getelementptr i8, ptr %1, i64 32
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !249
  %i.mr = tail call fastcc i64 @var_name(i64 noundef %i.mq)
  %i.ms = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.mr) #10
  br label %bb.ic

bb.dn:                                            ; preds = %bb.a
  %i.mt = getelementptr i8, ptr %1, i64 32
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !251
  %i.mv = tail call i64 @rb_id2sym(i64 noundef %i.mu) #10
  %i.mw = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.mv) #10
  br label %bb.ic

bb.do:                                            ; preds = %bb.a
  %i.mx = getelementptr i8, ptr %1, i64 32
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !253
  %i.mz = tail call i64 @rb_id2sym(i64 noundef %i.my) #10
  %i.na = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.mz) #10
  br label %bb.ic

bb.dp:                                            ; preds = %bb.a
  %i.nb = getelementptr i8, ptr %1, i64 32
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !255
  %i.nd = tail call i64 @rb_id2sym(i64 noundef %i.nc) #10
  %i.ne = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.nd) #10
  br label %bb.ic

bb.dq:                                            ; preds = %bb.a
  %i.nf = getelementptr i8, ptr %1, i64 32
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !257
  %i.nh = tail call i64 @rb_id2sym(i64 noundef %i.ng) #10
  %i.ni = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.nh) #10
  br label %bb.ic

bb.dr:                                            ; preds = %bb.a
  %i.nj = getelementptr i8, ptr %1, i64 32
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !259
  %i.nl = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.a, i64 noundef 22, ptr noundef nonnull @.str.33, i64 noundef %i.nk) #10 ; 0 uses
  %i.nm = call i64 @rb_intern(ptr noundef nonnull %i.a) #10
  %i.nn = call i64 @rb_id2sym(i64 noundef %i.nm) #10
  %i.no = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.nn) #10
  br label %bb.ic

bb.ds:                                            ; preds = %bb.a
  store i8 36, ptr %i.a, align 16, !tbaa !18
  %i.np = getelementptr i8, ptr %1, i64 32
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !261
  %i.nr = trunc i64 %i.nq to i8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.nr, ptr %i.ns, align 1, !tbaa !18
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.nt, align 2, !tbaa !18
  %i.nu = call i64 @rb_intern(ptr noundef nonnull %i.a) #10
  %i.nv = call i64 @rb_id2sym(i64 noundef %i.nu) #10
  %i.nw = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.nv) #10
  br label %bb.ic

bb.dt:                                            ; preds = %bb.a
  %i.nx = tail call i64 @rb_node_regx_string_val(ptr noundef nonnull %1) #10
  %i.ny = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.nx) #10
  br label %bb.ic

bb.du:                                            ; preds = %bb.a
  %i.nz = getelementptr i8, ptr %1, i64 48
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !263 ; 2 uses
  %.not493 = icmp eq ptr %i.oa, null
  %i.ob = getelementptr i8, ptr %1, i64 32
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !265 ; 2 uses
  %i.od = getelementptr i8, ptr %1, i64 40
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !266 ; 2 uses
  br i1 %.not493, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.of = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 3, ptr noundef %i.oc, ptr noundef %i.oe, ptr noundef nonnull %i.oa)
  br label %bb.ic

bb.dw:                                            ; preds = %bb.du
  %i.og = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.oc, ptr noundef %i.oe)
  br label %bb.ic

bb.dx:                                            ; preds = %bb.a
  %i.oh = getelementptr i8, ptr %1, i64 32
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !267
  %i.oj = getelementptr i8, ptr %1, i64 40
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !269
  %i.ol = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.oi, ptr noundef %i.ok)
  br label %bb.ic

bb.dy:                                            ; preds = %bb.a, %bb.a
  %i.om = tail call i64 @rb_node_str_string_val(ptr noundef nonnull %1) #10
  %i.on = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.om) #10
  br label %bb.ic

bb.dz:                                            ; preds = %bb.a
  %i.oo = tail call i64 @rb_node_integer_literal_val(ptr noundef nonnull %1) #10
  %i.op = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.oo) #10
  br label %bb.ic

bb.ea:                                            ; preds = %bb.a
  %i.oq = tail call i64 @rb_node_float_literal_val(ptr noundef nonnull %1) #10
  %i.or = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.oq) #10
  br label %bb.ic

bb.eb:                                            ; preds = %bb.a
  %i.os = tail call i64 @rb_node_rational_literal_val(ptr noundef nonnull %1) #10
  %i.ot = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.os) #10
  br label %bb.ic

bb.ec:                                            ; preds = %bb.a
  %i.ou = tail call i64 @rb_node_imaginary_literal_val(ptr noundef nonnull %1) #10
  %i.ov = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.ou) #10
  br label %bb.ic

bb.ed:                                            ; preds = %bb.a
  %i.ow = tail call i64 @rb_node_regx_string_val(ptr noundef nonnull %1) #10
  %i.ox = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.ow) #10
  br label %bb.ic

bb.ee:                                            ; preds = %bb.a
  %i.oy = getelementptr i8, ptr %1, i64 32
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !270
  %i.pa = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 1, ptr noundef %i.oz)
  br label %bb.ic

bb.ef:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.pb = getelementptr i8, ptr %1, i64 48
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !272 ; 3 uses
  %.not490 = icmp eq ptr %i.pc, null
  br i1 %.not490, label %bb.ek, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.pd = getelementptr i8, ptr %i.pc, i64 32
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !275 ; 2 uses
  %.not491 = icmp eq ptr %i.pe, null
  br i1 %.not491, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.pf = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.pe)
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eg, %bb.eh
  %i.pg = phi i64 [ %i.pf, %bb.eh ], [ 4, %bb.eg ] ; 2 uses
  %i.ph = getelementptr i8, ptr %i.pc, i64 48
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !277 ; 2 uses
  %.not492 = icmp eq ptr %i.pi, null
  br i1 %.not492, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.pj = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.pi)
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei, %bb.ef
  %.0402 = phi i64 [ 4, %bb.ef ], [ %i.pg, %bb.ei ], [ %i.pg, %bb.ej ]
  %.0401 = phi i64 [ 4, %bb.ef ], [ 4, %bb.ei ], [ %i.pj, %bb.ej ]
  %i.pk = tail call i64 @rb_node_dstr_string_val(ptr noundef nonnull %1) #10
  %i.pl = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 3, i64 noundef %i.pk, i64 noundef %.0402, i64 noundef %.0401) #10
  br label %bb.ic

bb.el:                                            ; preds = %bb.a
  %i.pm = tail call i64 @rb_node_sym_string_val(ptr noundef nonnull %1) #10
  %i.pn = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.pm) #10
  br label %bb.ic

bb.em:                                            ; preds = %bb.a
  %i.po = getelementptr i8, ptr %1, i64 32
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !278
  %i.pq = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 1, ptr noundef %i.pp)
  br label %bb.ic

bb.en:                                            ; preds = %bb.a
  %i.pr = getelementptr i8, ptr %1, i64 32
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !280
  %i.pt = getelementptr i8, ptr %1, i64 40
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !282
  %i.pv = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.ps, ptr noundef %i.pu)
  br label %bb.ic

bb.eo:                                            ; preds = %bb.a
  %i.pw = getelementptr i8, ptr %1, i64 32
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !283
  %i.py = getelementptr i8, ptr %1, i64 40
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !285
  %i.qa = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.px, ptr noundef %i.pz)
  br label %bb.ic

bb.ep:                                            ; preds = %bb.a
  %i.qb = getelementptr i8, ptr %1, i64 32
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !286
  %i.qd = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 1, ptr noundef %i.qc)
  br label %bb.ic

bb.eq:                                            ; preds = %bb.a
  %i.qe = getelementptr i8, ptr %1, i64 32
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !288
  %i.qg = getelementptr i8, ptr %1, i64 40
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !290
  %i.qi = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.qf, ptr noundef %i.qh)
  br label %bb.ic

bb.er:                                            ; preds = %bb.a
  %i.qj = getelementptr i8, ptr %1, i64 32
  %i.qk = load i64, ptr %i.qj, align 8, !tbaa !291
  %i.ql = tail call i64 @rb_id2sym(i64 noundef %i.qk) #10
  %i.qm = getelementptr i8, ptr %1, i64 40
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !293 ; 2 uses
  %.not489 = icmp eq ptr %i.qn, null
  br i1 %.not489, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.qo = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.qn)
  br label %bb.et

bb.et:                                            ; preds = %bb.er, %bb.es
  %i.qp = phi i64 [ %i.qo, %bb.es ], [ 4, %bb.er ]
  %i.qq = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.ql, i64 noundef %i.qp) #10
  br label %bb.ic

bb.eu:                                            ; preds = %bb.a
  %i.qr = getelementptr i8, ptr %1, i64 32
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !294 ; 2 uses
  %.not487 = icmp eq ptr %i.qs, null
  br i1 %.not487, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.qt = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.qs)
  br label %bb.ew

bb.ew:                                            ; preds = %bb.eu, %bb.ev
  %i.qu = phi i64 [ %i.qt, %bb.ev ], [ 4, %bb.eu ]
  %i.qv = getelementptr i8, ptr %1, i64 40
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !296
  %i.qx = tail call i64 @rb_id2sym(i64 noundef %i.qw) #10
  %i.qy = getelementptr i8, ptr %1, i64 48
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !297 ; 2 uses
  %.not488 = icmp eq ptr %i.qz, null
  br i1 %.not488, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ra = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.qz)
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ew, %bb.ex
  %i.rb = phi i64 [ %i.ra, %bb.ex ], [ 4, %bb.ew ]
  %i.rc = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 3, i64 noundef %i.qu, i64 noundef %i.qx, i64 noundef %i.rb) #10
  br label %bb.ic

bb.ez:                                            ; preds = %bb.a
  %i.rd = getelementptr i8, ptr %1, i64 32
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !298
  %i.rf = getelementptr i8, ptr %1, i64 40
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !300
  %i.rh = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.re, ptr noundef %i.rg)
  br label %bb.ic

bb.fa:                                            ; preds = %bb.a
  %i.ri = getelementptr i8, ptr %1, i64 32
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !301
  %i.rk = tail call i64 @rb_id2sym(i64 noundef %i.rj) #10
  %i.rl = getelementptr i8, ptr %1, i64 40
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !303
  %i.rn = tail call i64 @rb_id2sym(i64 noundef %i.rm) #10
  %i.ro = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.rk, i64 noundef %i.rn) #10
  br label %bb.ic

bb.fb:                                            ; preds = %bb.a
  %i.rp = getelementptr i8, ptr %1, i64 32
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !304
  %i.rr = tail call fastcc i64 @dump_parser_array(i64 noundef %0, ptr noundef %i.rq)
  %i.rs = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.rr) #10
  br label %bb.ic

bb.fc:                                            ; preds = %bb.a
  %i.rt = getelementptr i8, ptr %1, i64 32
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !306
  %i.rv = getelementptr i8, ptr %1, i64 48
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !308
  %i.rx = getelementptr i8, ptr %1, i64 40
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !309
  %i.rz = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 3, ptr noundef %i.ru, ptr noundef %i.rw, ptr noundef %i.ry)
  br label %bb.ic

bb.fd:                                            ; preds = %bb.a
  %i.sa = getelementptr i8, ptr %1, i64 32
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !310
  %i.sc = getelementptr i8, ptr %1, i64 40
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !312
  %i.se = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.sb, ptr noundef %i.sd)
  br label %bb.ic

bb.fe:                                            ; preds = %bb.a
  %i.sf = getelementptr i8, ptr %1, i64 32
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !313
  %i.sh = getelementptr i8, ptr %1, i64 40
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !315
  %i.sj = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.sg, ptr noundef %i.si)
  br label %bb.ic

bb.ff:                                            ; preds = %bb.a
  %i.sk = getelementptr i8, ptr %1, i64 32
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !316 ; 2 uses
  %.not486 = icmp eq ptr %i.sl, null
  br i1 %.not486, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.sm = tail call fastcc i64 @ast_new_internal(i64 noundef %0, ptr noundef %i.sl)
  br label %bb.fh

bb.fh:                                            ; preds = %bb.ff, %bb.fg
  %i.sn = phi i64 [ %i.sm, %bb.fg ], [ 4, %bb.ff ]
  %i.so = getelementptr i8, ptr %1, i64 40
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !201
  %i.sq = tail call i64 @rb_id2sym(i64 noundef %i.sp) #10
  %i.sr = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.sn, i64 noundef %i.sq) #10
  br label %bb.ic

bb.fi:                                            ; preds = %bb.a
  %i.ss = getelementptr i8, ptr %1, i64 32
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !317
  %i.su = tail call i64 @rb_id2sym(i64 noundef %i.st) #10
  %i.sv = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.su) #10
  br label %bb.ic

bb.fj:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.sw = getelementptr i8, ptr %1, i64 32
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !319
  %i.sy = getelementptr i8, ptr %1, i64 40
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !321
  %i.ta = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 2, ptr noundef %i.sx, ptr noundef %i.sz)
  br label %bb.ic

bb.fk:                                            ; preds = %bb.a
  %i.tb = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 0)
  br label %bb.ic

bb.fl:                                            ; preds = %bb.a
  %i.tc = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 0)
  br label %bb.ic

bb.fm:                                            ; preds = %bb.a
  %i.td = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 0)
  br label %bb.ic

bb.fn:                                            ; preds = %bb.a
  %i.te = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 0)
  br label %bb.ic

bb.fo:                                            ; preds = %bb.a
  %i.tf = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 0)
  br label %bb.ic

bb.fp:                                            ; preds = %bb.a
  %i.tg = getelementptr i8, ptr %1, i64 32
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !322
  %i.ti = tail call i64 (i64, i64, ...) @rb_ary_new_from_node_args(i64 noundef %0, i64 noundef 1, ptr noundef %i.th)
  br label %bb.ic

end_hunk_0
