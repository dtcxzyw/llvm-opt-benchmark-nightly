Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_sort-67924ef9ea112bf2.uu_sort.bca978c67578681b-cgu.0?download=true
inline.NumInlined: 5661
inline.NumDeleted: 2556
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_RNvCsgcf5BHVXlUt_7uu_sort10compare_by:bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !5, !noundef !5
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.dj ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !range !538, !noundef !5
  %i.dv = trunc nuw i64 %i.du to i1
  br i1 %i.dv, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dx = load double, ptr %i.dp, align 8, !noundef !5 ; 2 uses
  %i.dy = load double, ptr %i.dw, align 8, !noundef !5 ; 2 uses
  %i.dz = fcmp ugt double %i.dx, %i.dy
  %i.ea = fcmp oge double %i.dx, %i.dy            ; 2 uses
  br i1 %i.dz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ea, label %bb.ag, label %bb.aj

bb.af:                                            ; preds = %bb.ad
  br i1 %i.ea, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ai
  %.sroa.0.0 = phi i8 [ 0, %bb.ai ], [ 1, %bb.ae ], [ -1, %bb.af ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.ec = load i8, ptr %i.eb, align 4, !range !69, !noundef !5
  %i.ed = trunc nuw i8 %i.ec to i1
  %switch.offset = sub nsw i8 0, %.sroa.0.0
  %spec.select892 = select i1 %i.ed, i8 %switch.offset, i8 %.sroa.0.0
  br label %switch.lookup

bb.ah:                                            ; preds = %bb.af
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !5 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !noundef !5
  %i.ei = icmp eq i64 %i.ef, %i.eh
  br i1 %i.ei, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ej = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ek = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %bcmp130 = tail call i32 @bcmp(ptr nonnull %i.ek, ptr nonnull %i.ej, i64 %i.ef)
  %i.el = icmp eq i32 %bcmp130, 0
  br i1 %i.el, label %bb.ag, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ae, %bb.aa, %bb.t, %bb.ab, %bb.ac
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ep, 56
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %.idx
  %i.er = icmp eq i64 %i.ep, 0
  br i1 %i.er, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aj
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.et = load i64, ptr %i.es, align 8            ; 2 uses
  %i.eu = mul i64 %i.et, %i.cg
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ew = load i64, ptr %i.ev, align 8            ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ey = load i64, ptr %i.ex, align 8            ; 3 uses
  %i.ez = mul i64 %i.ey, %i.et
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.fb = load i64, ptr %i.fa, align 8            ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !nonnull !5
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !nonnull !5
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 137
  %.sroa.070.0.copyload = load i8, ptr %i.fg, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 138
  %i.fh = trunc nuw i8 %.sroa.070.0.copyload to i1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.fp = load i64, ptr %i.fo, align 8            ; 2 uses
  %i.fq = mul i64 %i.fp, %i.cg
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.fs = load i64, ptr %i.fr, align 8            ; 2 uses
  %i.ft = mul i64 %i.ey, %i.fp
  %i.fu = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.fv = load i64, ptr %i.fu, align 8            ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.fx = load ptr, ptr %i.fw, align 8, !nonnull !5
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.fz = load ptr, ptr %i.fy, align 8, !nonnull !5
  %i.ga = load i64, ptr %i.d, align 8             ; 2 uses
  %i.gb = mul i64 %i.ga, %i.cg                    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.gd = load i64, ptr %i.gc, align 8            ; 4 uses
  %i.ge = mul i64 %i.ey, %i.ga                    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.gg = load i64, ptr %i.gf, align 8            ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !nonnull !5 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8, !nonnull !5 ; 2 uses
  br label %bb.ak

default.unreachable583:                           ; preds = %bb.cz, %bb.am
  unreachable

bb.ak:                                            ; preds = %.lr.ph, %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread
  %.sroa.018.0391 = phi i64 [ 0, %.lr.ph ], [ %.sroa.018.1, %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread ] ; 4 uses
  %.sroa.021.0390 = phi i64 [ 0, %.lr.ph ], [ %.sroa.021.2, %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread ] ; 17 uses
  %.sroa.027.0389 = phi i64 [ 0, %.lr.ph ], [ %.sroa.027.2, %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread ] ; 25 uses
  %.sroa.037.0388 = phi ptr [ %i.en, %.lr.ph ], [ %i.gl, %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread ] ; 11 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.037.0388, i64 56 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.037.0388, i64 55
  %i.gn = load i8, ptr %i.gm, align 1, !range !69, !noundef !5
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.al, label %bb.am

._crit_edge:                                      ; preds = %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread, %bb.aj
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 155
  %i.gq = load i8, ptr %i.gp, align 1, !range !71, !noundef !5
  %i.gr = icmp eq i8 %i.gq, 5
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 133
  %i.gt = load i8, ptr %i.gs, align 1, !range !69
  %i.gu = trunc nuw i8 %i.gt to i1
  %or.cond = select i1 %i.gr, i1 true, i1 %i.gu
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 134
  %i.gw = load i8, ptr %i.gv, align 2, !range !69
  %i.gx = trunc nuw i8 %i.gw to i1
  %or.cond6 = select i1 %or.cond, i1 true, i1 %i.gx
  br i1 %or.cond6, label %switch.lookup, label %bb.dj

bb.al:                                            ; preds = %bb.ak
  %i.gy = add i64 %i.eu, %.sroa.018.0391          ; 3 uses
  %i.gz = icmp ult i64 %i.gy, %i.ew
  br i1 %i.gz, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %bb.ak, %bb.ap
  %.pn = phi ptr [ %i.hf, %bb.ap ], [ %1, %bb.ak ] ; 2 uses
  %.pn131 = phi ptr [ %i.he, %bb.ap ], [ %0, %bb.ak ] ; 2 uses
  %.sroa.018.1 = phi i64 [ %i.hg, %bb.ap ], [ %.sroa.018.0391, %bb.ak ]
  %.sroa.039.0 = load ptr, ptr %.pn131, align 8, !nonnull !5, !noundef !5 ; 12 uses
  %.sroa.039.0514 = ptrtoaddr ptr %.sroa.039.0 to i64 ; 2 uses
  %.sroa.10.0.in = getelementptr inbounds nuw i8, ptr %.pn131, i64 8
  %.sroa.10.0 = load i64, ptr %.sroa.10.0.in, align 8, !noundef !5 ; 13 uses
  %.sroa.054.0 = load ptr, ptr %.pn, align 8, !nonnull !5, !noundef !5 ; 11 uses
  %.sroa.1062.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %.sroa.1062.0 = load i64, ptr %.sroa.1062.0.in, align 8, !noundef !5 ; 11 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.037.0388, i64 53
  %i.hb = load i8, ptr %i.ha, align 1, !range !71, !noundef !5
  switch i8 %i.hb, label %default.unreachable583 [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.au
    i8 4, label %bb.av
    i8 5, label %bb.aw
    i8 6, label %bb.ax
  ]

bb.an:                                            ; preds = %bb.al
  %i.hc = add i64 %i.ez, %.sroa.018.0391          ; 3 uses
  %i.hd = icmp ult i64 %i.hc, %i.fb
  br i1 %i.hd, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.al
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.gy, i64 noundef %i.ew, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #40
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.ff, i64 %i.gy
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %i.hc
  %i.hg = add i64 %.sroa.018.0391, 1
  br label %bb.am

bb.aq:                                            ; preds = %bb.an
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.hc, i64 noundef %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @210) #40
  unreachable

bb.ar:                                            ; preds = %bb.am
  %i.hh = add i64 %i.gb, %.sroa.021.0390          ; 3 uses
  %i.hi = icmp ult i64 %i.hh, %i.gd
  br i1 %i.hi, label %bb.ay, label %bb.az

bb.as:                                            ; preds = %bb.am
  %i.hj = add i64 %i.gb, %.sroa.021.0390          ; 3 uses
  %i.hk = icmp ult i64 %i.hj, %i.gd
  br i1 %i.hk, label %bb.br, label %bb.bs

bb.at:                                            ; preds = %bb.am
  %i.hl = add i64 %i.fq, %.sroa.027.0389          ; 3 uses
  %i.hm = icmp ult i64 %i.hl, %i.fs
  br i1 %i.hm, label %bb.cp, label %bb.cq

bb.au:                                            ; preds = %bb.am
  %i.hn = call fastcc { i8, i64 } @_RNvCsgcf5BHVXlUt_7uu_sort11month_parse(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.039.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.10.0) #34, !noalias !9482
  %i.ho = extractvalue { i8, i64 } %i.hn, 0
  %i.hp = call fastcc { i8, i64 } @_RNvCsgcf5BHVXlUt_7uu_sort11month_parse(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.054.0, i64 noundef range(i64 0, -9223372036854775808) %.sroa.1062.0) #34, !noalias !9485
  %i.hq = extractvalue { i8, i64 } %i.hp, 0
  %i.hr = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %i.ho, i8 %i.hq)
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit

bb.av:                                            ; preds = %bb.am
  %i.hs = call noundef i8 @_RNvNtNtCsh036I4OHgIr_6uucore8features11version_cmp11version_cmp(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.039.0, i64 noundef %.sroa.10.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.054.0, i64 noundef %.sroa.1062.0) #34
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit

bb.aw:                                            ; preds = %bb.am
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.037.0388, i64 51
  %i.hu = load i8, ptr %i.ht, align 1, !range !69, !noundef !5
  %i.hv = trunc nuw i8 %i.hu to i1
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.037.0388, i64 50
  %i.hx = load i8, ptr %i.hw, align 2, !range !69, !noundef !5
  %i.hy = trunc nuw i8 %i.hx to i1
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.037.0388, i64 49
  %i.ia = load i8, ptr %i.hz, align 1, !range !69, !noundef !5
  %i.ib = trunc nuw i8 %i.ia to i1
  %i.ic = call fastcc noundef i8 @_RNvNtCsgcf5BHVXlUt_7uu_sort14custom_str_cmp14custom_str_cmp(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.039.0, i64 noundef %.sroa.10.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.054.0, i64 noundef %.sroa.1062.0, i1 noundef zeroext %i.hv, i1 noundef zeroext %i.hy, i1 noundef zeroext %i.ib) #34
  %i.id = icmp eq i8 %i.ic, 0
  br i1 %i.id, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread, label %bb.de

bb.ax:                                            ; preds = %bb.am
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.037.0388, i64 49
  %i.if = load i8, ptr %i.ie, align 1, !range !69, !noundef !5
  %i.ig = trunc nuw i8 %i.if to i1                ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.037.0388, i64 50
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !range !69
  %i.ih = trunc nuw i8 %.pre to i1                ; 2 uses
  %brmerge = select i1 %i.ig, i1 true, i1 %i.ih
  %not. = xor i1 %i.ig, true
  %.mux = select i1 %not., i1 true, i1 %i.ih
  br i1 %brmerge, label %._crit_edge517, label %bb.dh

bb.ay:                                            ; preds = %bb.ar
  %i.ii = add i64 %i.ge, %.sroa.021.0390          ; 3 uses
  %i.ij = icmp ult i64 %i.ii, %i.gg
  br i1 %i.ij, label %bb.ba, label %bb.bq

bb.az:                                            ; preds = %bb.ar
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.hh, i64 noundef %i.gd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @211) #40
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %i.hh ; 2 uses
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.ii ; 2 uses
  %i.im = add i64 %.sroa.021.0390, 1              ; 8 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.io = load i8, ptr %i.in, align 8, !range !69, !noalias !9487, !noundef !5 ; 5 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.iq = load i8, ptr %i.ip, align 8, !range !69, !noalias !9487, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.io, %i.iq
  br i1 %.not.i, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ir = load i64, ptr %i.ik, align 8, !noalias !9487, !noundef !5 ; 2 uses
  %i.is = load i64, ptr %i.il, align 8, !noalias !9487, !noundef !5 ; 2 uses
  %i.it = icmp eq i64 %i.ir, %i.is
  %i.iu = icmp eq i64 %.sroa.10.0, 0
  %or.cond.i = or i1 %i.iu, %i.it
  %i.iv = icmp eq i64 %.sroa.1062.0, 0
  %or.cond1.i = or i1 %i.iv, %or.cond.i
  br i1 %or.cond1.i, label %bb.bd, label %bb.be

bb.bc:                                            ; preds = %bb.ba
  %i.iw = sub nsw i8 %i.io, %i.iq
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 %.sroa.10.0 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.054.0, i64 %.sroa.1062.0 ; 4 uses
  br label %bb.bg

bb.be:                                            ; preds = %bb.bb
  %i.iz = call i8 @llvm.scmp.i8.i64(i64 %i.ir, i64 %i.is)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bn, %bb.be
  %.sroa.0.0.i = phi i8 [ %i.js, %bb.bn ], [ %i.iz, %bb.be ] ; 2 uses
  %i.ja = icmp eq i8 %i.io, 0
  br i1 %i.ja, label %bb.bo, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit

bb.bg:                                            ; preds = %bb.bl, %bb.bd
  %.sroa.0181.0 = phi ptr [ %.sroa.054.0, %bb.bd ], [ %i.jg, %bb.bl ] ; 2 uses
  %.sroa.0179.0 = phi ptr [ %.sroa.039.0, %bb.bd ], [ %.sroa.0179.2, %bb.bl ] ; 4 uses
  %i.jb = getelementptr i8, ptr %.sroa.0179.0, i64 %.sroa.10.0
  %scevgep = getelementptr i8, ptr %i.jb, i64 %.sroa.039.0514
  %.sroa.0179.0515 = ptrtoaddr ptr %.sroa.0179.0 to i64
  %i.jc = sub i64 0, %.sroa.0179.0515
  %scevgep516 = getelementptr i8, ptr %scevgep, i64 %i.jc ; 2 uses
  %.not.not.not.i.not865 = icmp eq ptr %.sroa.0179.0, %i.ix
  br i1 %.not.not.not.i.not865, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit, label %.lr.ph869

bb.bh:                                            ; preds = %.lr.ph869
  %.not.not.not.i.not = icmp eq ptr %i.jd, %i.ix
  br i1 %.not.not.not.i.not, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit, label %.lr.ph869

.lr.ph869:                                        ; preds = %bb.bg, %bb.bh
  %.sroa.0179.1866 = phi ptr [ %i.jd, %bb.bh ], [ %.sroa.0179.0, %bb.bg ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0179.1866, i64 1 ; 3 uses
  %.val.i = load i8, ptr %.sroa.0179.1866, align 1, !noalias !9491, !noundef !5 ; 3 uses
  %i.je = add i8 %.val.i, -58
  %.sroa.0.0.i.i.i.i.i.i = icmp ult i8 %i.je, -10 ; 3 uses
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.bh, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit: ; preds = %.lr.ph869, %bb.bh, %bb.bg
  %.not.not.not.i.not.lcssa = phi i1 [ true, %bb.bg ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.bh ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph869 ] ; 2 uses
  %.sroa.0179.2 = phi ptr [ %scevgep516, %bb.bg ], [ %i.jd, %.lr.ph869 ], [ %scevgep516, %bb.bh ] ; 3 uses
  %.sroa.3.0.i = phi i8 [ undef, %bb.bg ], [ %.val.i, %bb.bh ], [ %.val.i, %.lr.ph869 ] ; 3 uses
  %.not.not.not.i152.not877 = icmp eq ptr %.sroa.0181.0, %i.iy
  br i1 %.not.not.not.i152.not877, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit._crit_edge, label %.lr.ph878

bb.bi:                                            ; preds = %.lr.ph878
  %.not.not.not.i152.not = icmp eq ptr %i.jg, %i.iy
  br i1 %.not.not.not.i152.not, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit._crit_edge, label %.lr.ph878

.lr.ph878:                                        ; preds = %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit, %bb.bi
  %i.jf = phi ptr [ %i.jg, %bb.bi ], [ %.sroa.0181.0, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 1 ; 5 uses
  %.val.i154 = load i8, ptr %i.jf, align 1, !noalias !9494, !noundef !5 ; 4 uses
  %i.jh = add i8 %.val.i154, -48
  %.sroa.0.0.i.i.i.i.i.i155 = icmp ult i8 %i.jh, 10
  br i1 %.sroa.0.0.i.i.i.i.i.i155, label %bb.bj, label %bb.bi

bb.bj:                                            ; preds = %.lr.ph878
  br i1 %.not.not.not.i.not.lcssa, label %bb.bm, label %bb.bl

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit._crit_edge: ; preds = %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit, %bb.bi
  br i1 %.not.not.not.i.not.lcssa, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread, label %bb.bk

bb.bk:                                            ; preds = %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit._crit_edge
  %i.ji = icmp eq i8 %.sroa.3.0.i, 48
  br i1 %i.ji, label %.preheader.preheader, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp0E0E0E0B2j_EB4C_.exit

.preheader.preheader:                             ; preds = %bb.bk
  %.not.not.not.i158.not888 = icmp eq ptr %.sroa.0179.2, %i.ix
  br i1 %.not.not.not.i158.not888, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread, label %.lr.ph889

.preheader:                                       ; preds = %.lr.ph889
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jk, i64 1 ; 2 uses
  %.not.not.not.i158.not = icmp eq ptr %i.jj, %i.ix
  br i1 %.not.not.not.i158.not, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread, label %.lr.ph889

.lr.ph889:                                        ; preds = %.preheader.preheader, %.preheader
  %i.jk = phi ptr [ %i.jj, %.preheader ], [ %.sroa.0179.2, %.preheader.preheader ] ; 2 uses
  %.val.i159 = load i8, ptr %i.jk, align 1, !noalias !9497, !noundef !5
  %i.jl = add i8 %.val.i159, -49
  %spec.select.i.i.i = icmp ult i8 %i.jl, 9
  br i1 %spec.select.i.i.i, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp0E0E0E0B2j_EB4C_.exit, label %.preheader

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp0E0E0E0B2j_EB4C_.exit: ; preds = %bb.bk, %.lr.ph889
  %i.jm = icmp eq i8 %i.io, 0
  %spec.select392 = select i1 %i.jm, i8 -1, i8 1
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread195

bb.bl:                                            ; preds = %bb.bj
  %.not23.i = icmp eq i8 %.sroa.3.0.i, %.val.i154
  br i1 %.not23.i, label %bb.bg, label %bb.bn

bb.bm:                                            ; preds = %bb.bj
  %i.jn = icmp eq i8 %.val.i154, 48
  br i1 %i.jn, label %.preheader216.preheader, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmps_0E0E0E0B2j_EB4C_.exit

.preheader216.preheader:                          ; preds = %bb.bm
  %.not.not.not.i161.not886 = icmp eq ptr %i.jg, %i.iy
  br i1 %.not.not.not.i161.not886, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread, label %.lr.ph887

.preheader216:                                    ; preds = %.lr.ph887
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jp, i64 1 ; 2 uses
  %.not.not.not.i161.not = icmp eq ptr %i.jo, %i.iy
  br i1 %.not.not.not.i161.not, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread, label %.lr.ph887

.lr.ph887:                                        ; preds = %.preheader216.preheader, %.preheader216
  %i.jp = phi ptr [ %i.jo, %.preheader216 ], [ %i.jg, %.preheader216.preheader ] ; 2 uses
  %.val.i162 = load i8, ptr %i.jp, align 1, !noalias !9500, !noundef !5
  %i.jq = add i8 %.val.i162, -49
  %spec.select.i.i.i163 = icmp ult i8 %i.jq, 9
  br i1 %spec.select.i.i.i163, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmps_0E0E0E0B2j_EB4C_.exit, label %.preheader216

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmps_0E0E0E0B2j_EB4C_.exit: ; preds = %bb.bm, %.lr.ph887
  %i.jr = icmp eq i8 %i.io, 0
  %spec.select721 = select i1 %i.jr, i8 1, i8 -1
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread195

bb.bn:                                            ; preds = %bb.bl
  %i.js = call i8 @llvm.ucmp.i8.i8(i8 %.sroa.3.0.i, i8 %.val.i154)
  br label %bb.bf

bb.bo:                                            ; preds = %bb.bf
  switch i8 %.sroa.0.0.i, label %bb.bp [
    i8 -1, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread195
    i8 0, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread
    i8 1, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread195.loopexit
  ]

bb.bp:                                            ; preds = %bb.bo
  unreachable

bb.bq:                                            ; preds = %bb.ay
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.ii, i64 noundef %i.gg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #40
  unreachable

end_hunk_0
begin_hunk_1_@_RNvCsgcf5BHVXlUt_7uu_sort10compare_by:bb.a
switch.lookup895:                                 ; preds = %bb.by
  %i.ko = zext nneg i8 %switch.tableidx894 to i64
  %switch.gep896 = getelementptr inbounds nuw i8, ptr @switch.table._RNvCsgcf5BHVXlUt_7uu_sort10compare_by.1053, i64 %i.ko
  %switch.load897 = load i8, ptr %switch.gep896, align 1
  br label %bb.bz

bb.bz:                                            ; preds = %switch.lookup895, %bb.by, %bb.bx
  %.sroa.08.0.i = phi i8 [ 0, %bb.by ], [ 0, %bb.bx ], [ %switch.load897, %switch.lookup895 ] ; 3 uses
  %i.kp = icmp eq i8 %.sroa.02.0.i166, %.sroa.08.0.i
  br i1 %i.kp, label %bb.ca, label %bb.cm

bb.ca:                                            ; preds = %bb.bz
  %i.kq = load i64, ptr %i.jv, align 8, !noalias !9507, !noundef !5 ; 2 uses
  %i.kr = load i64, ptr %i.jw, align 8, !noalias !9507, !noundef !5 ; 2 uses
  %i.ks = icmp eq i64 %i.kq, %i.kr
  %or.cond.i.i = or i1 %i.kc, %i.ks
  %or.cond1.i.i = or i1 %i.kj, %or.cond.i.i
  br i1 %or.cond1.i.i, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 %.sroa.10.0 ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.054.0, i64 %.sroa.1062.0 ; 4 uses
  br label %bb.ce

bb.cc:                                            ; preds = %bb.ca
  %i.kv = call i8 @llvm.scmp.i8.i64(i64 %i.kq, i64 %i.kr)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cl, %bb.cc
  %.sroa.0.0.i.i = phi i8 [ %i.lo, %bb.cl ], [ %i.kv, %bb.cc ] ; 2 uses
  %i.kw = icmp eq i8 %i.jz, 0
  %switch.offset.i = sub nsw i8 0, %.sroa.0.0.i.i
  %spec.select215 = select i1 %i.kw, i8 %switch.offset.i, i8 %.sroa.0.0.i.i
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit

bb.ce:                                            ; preds = %bb.cj, %bb.cb
  %.sroa.039.0.i = phi ptr [ %.sroa.054.0, %bb.cb ], [ %i.lc, %bb.cj ] ; 2 uses
  %.sroa.0.044.i = phi ptr [ %.sroa.039.0, %bb.cb ], [ %.sroa.0.2.i, %bb.cj ] ; 4 uses
  %i.kx = getelementptr i8, ptr %.sroa.0.044.i, i64 %.sroa.10.0
  %scevgep.i = getelementptr i8, ptr %i.kx, i64 %.sroa.039.0514
  %.sroa.0.04468.i = ptrtoaddr ptr %.sroa.0.044.i to i64
  %i.ky = sub i64 0, %.sroa.0.04468.i
  %scevgep69.i = getelementptr i8, ptr %scevgep.i, i64 %i.ky ; 2 uses
  %.not.not.not.i.not.i841 = icmp eq ptr %.sroa.0.044.i, %i.kt
  br i1 %.not.not.not.i.not.i841, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit.i, label %.lr.ph845

bb.cf:                                            ; preds = %.lr.ph845
  %.not.not.not.i.not.i = icmp eq ptr %i.kz, %i.kt
  br i1 %.not.not.not.i.not.i, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit.i, label %.lr.ph845

.lr.ph845:                                        ; preds = %bb.ce, %bb.cf
  %.sroa.0.1.i842 = phi ptr [ %i.kz, %bb.cf ], [ %.sroa.0.044.i, %bb.ce ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i842, i64 1 ; 3 uses
  %.val.i.i = load i8, ptr %.sroa.0.1.i842, align 1, !noalias !9511, !noundef !5 ; 3 uses
  %i.la = add i8 %.val.i.i, -58
  %.sroa.0.0.i.i.i.i.i.i.i = icmp ult i8 %i.la, -10 ; 3 uses
  br i1 %.sroa.0.0.i.i.i.i.i.i.i, label %bb.cf, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit.i

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %bb.cf, %.lr.ph845, %bb.ce
  %.not.not.not.i.not.i.lcssa = phi i1 [ true, %bb.ce ], [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph845 ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.cf ] ; 2 uses
  %.sroa.0.2.i = phi ptr [ %scevgep69.i, %bb.ce ], [ %scevgep69.i, %bb.cf ], [ %i.kz, %.lr.ph845 ] ; 3 uses
  %.sroa.3.0.i.i = phi i8 [ undef, %bb.ce ], [ %.val.i.i, %.lr.ph845 ], [ %.val.i.i, %bb.cf ] ; 3 uses
  %.not.not.not.i26.not.i852 = icmp eq ptr %.sroa.039.0.i, %i.ku
  br i1 %.not.not.not.i26.not.i852, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit.i._crit_edge, label %.lr.ph853

bb.cg:                                            ; preds = %.lr.ph853
  %.not.not.not.i26.not.i = icmp eq ptr %i.lc, %i.ku
  br i1 %.not.not.not.i26.not.i, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit.i._crit_edge, label %.lr.ph853

.lr.ph853:                                        ; preds = %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit.i, %bb.cg
  %i.lb = phi ptr [ %i.lc, %bb.cg ], [ %.sroa.039.0.i, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit.i ] ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 1 ; 5 uses
  %.val.i28.i = load i8, ptr %i.lb, align 1, !noalias !9514, !noundef !5 ; 4 uses
  %i.ld = add i8 %.val.i28.i, -48
  %.sroa.0.0.i.i.i.i.i.i29.i = icmp ult i8 %i.ld, 10
  br i1 %.sroa.0.0.i.i.i.i.i.i29.i, label %bb.ch, label %bb.cg

bb.ch:                                            ; preds = %.lr.ph853
  br i1 %.not.not.not.i.not.i.lcssa, label %bb.ck, label %bb.cj

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit.i._crit_edge: ; preds = %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit.i, %bb.cg
  br i1 %.not.not.not.i.not.i.lcssa, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit.i._crit_edge
  %i.le = icmp eq i8 %.sroa.3.0.i.i, 48
  br i1 %i.le, label %.preheader.i.preheader, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp0E0E0E0B2j_EB4C_.exit.i

.preheader.i.preheader:                           ; preds = %bb.ci
  %.not.not.not.i32.not.i863 = icmp eq ptr %.sroa.0.2.i, %i.kt
  br i1 %.not.not.not.i32.not.i863, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread, label %.lr.ph864

.preheader.i:                                     ; preds = %.lr.ph864
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lg, i64 1 ; 2 uses
  %.not.not.not.i32.not.i = icmp eq ptr %i.lf, %i.kt
  br i1 %.not.not.not.i32.not.i, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread, label %.lr.ph864

.lr.ph864:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %i.lg = phi ptr [ %i.lf, %.preheader.i ], [ %.sroa.0.2.i, %.preheader.i.preheader ] ; 2 uses
  %.val.i33.i = load i8, ptr %i.lg, align 1, !noalias !9517, !noundef !5
  %i.lh = add i8 %.val.i33.i, -49
  %spec.select.i.i.i.i = icmp ult i8 %i.lh, 9
  br i1 %spec.select.i.i.i.i, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp0E0E0E0B2j_EB4C_.exit.i, label %.preheader.i

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp0E0E0E0B2j_EB4C_.exit.i: ; preds = %bb.ci, %.lr.ph864
  %i.li = icmp eq i8 %i.jz, 0
  %spec.select.i = select i1 %i.li, i8 -1, i8 1
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread195

bb.cj:                                            ; preds = %bb.ch
  %.not23.i.i = icmp eq i8 %.sroa.3.0.i.i, %.val.i28.i
  br i1 %.not23.i.i, label %bb.ce, label %bb.cl

bb.ck:                                            ; preds = %bb.ch
  %i.lj = icmp eq i8 %.val.i28.i, 48
  br i1 %i.lj, label %.preheader49.i.preheader, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmps_0E0E0E0B2j_EB4C_.exit.i

.preheader49.i.preheader:                         ; preds = %bb.ck
  %.not.not.not.i35.not.i861 = icmp eq ptr %i.lc, %i.ku
  br i1 %.not.not.not.i35.not.i861, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread, label %.lr.ph862

.preheader49.i:                                   ; preds = %.lr.ph862
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ll, i64 1 ; 2 uses
  %.not.not.not.i35.not.i = icmp eq ptr %i.lk, %i.ku
  br i1 %.not.not.not.i35.not.i, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread, label %.lr.ph862

.lr.ph862:                                        ; preds = %.preheader49.i.preheader, %.preheader49.i
  %i.ll = phi ptr [ %i.lk, %.preheader49.i ], [ %i.lc, %.preheader49.i.preheader ] ; 2 uses
  %.val.i36.i = load i8, ptr %i.ll, align 1, !noalias !9520, !noundef !5
  %i.lm = add i8 %.val.i36.i, -49
  %spec.select.i.i.i37.i = icmp ult i8 %i.lm, 9
  br i1 %spec.select.i.i.i37.i, label %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmps_0E0E0E0B2j_EB4C_.exit.i, label %.preheader49.i

_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmps_0E0E0E0B2j_EB4C_.exit.i: ; preds = %bb.ck, %.lr.ph862
  %i.ln = icmp eq i8 %i.jz, 0
  %spec.select88.i = select i1 %i.ln, i8 1, i8 -1
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread195

bb.cl:                                            ; preds = %bb.cj
  %i.lo = call i8 @llvm.ucmp.i8.i8(i8 %.sroa.3.0.i.i, i8 %.val.i28.i)
  br label %bb.cd

bb.cm:                                            ; preds = %bb.bz
  %i.lp = call i8 @llvm.ucmp.i8.i8(i8 %.sroa.02.0.i166, i8 %.sroa.08.0.i)
  %i.lq = icmp eq i8 %i.jz, 0
  br i1 %i.lq, label %bb.cn, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit

bb.cn:                                            ; preds = %bb.cm
  %i.lr = icmp samesign ult i8 %.sroa.02.0.i166, %.sroa.08.0.i
  %..i = select i1 %i.lr, i8 1, i8 -1
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread195

bb.co:                                            ; preds = %bb.br
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.jt, i64 noundef %i.gg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #40
  unreachable

bb.cp:                                            ; preds = %bb.at
  %i.ls = add i64 %i.ft, %.sroa.027.0389          ; 3 uses
  %i.lt = icmp ult i64 %i.ls, %i.fv
  br i1 %i.lt, label %bb.cr, label %bb.dd

bb.cq:                                            ; preds = %bb.at
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.hl, i64 noundef %i.fs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #40
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.lu = getelementptr inbounds nuw [40 x i8], ptr %i.fz, i64 %i.hl ; 5 uses
  %i.lv = getelementptr inbounds nuw [40 x i8], ptr %i.fx, i64 %i.ls ; 5 uses
  %i.lw = add i64 %.sroa.027.0389, 1              ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9523)
  call void @llvm.experimental.noalias.scope.decl(metadata !9526)
  %i.lx = load i64, ptr %i.lu, align 8, !range !1779, !alias.scope !9523, !noalias !9526, !noundef !5 ; 2 uses
  %i.ly = icmp ne i64 %i.lx, -9223372036854775805
  call void @llvm.assume(i1 %i.ly)
  %i.lz = xor i64 %i.lx, -9223372036854775808     ; 2 uses
  %i.ma = icmp ult i64 %i.lz, 5
  %i.mb = select i1 %i.ma, i64 %i.lz, i64 3       ; 2 uses
  %i.mc = load i64, ptr %i.lv, align 8, !range !1779, !alias.scope !9526, !noalias !9523, !noundef !5 ; 2 uses
  %i.md = icmp ne i64 %i.mc, -9223372036854775805
  call void @llvm.assume(i1 %i.md)
  %i.me = xor i64 %i.mc, -9223372036854775808     ; 2 uses
  %i.mf = icmp ult i64 %i.me, 5
  %i.mg = select i1 %i.mf, i64 %i.me, i64 3       ; 2 uses
  %i.mh = icmp eq i64 %i.mb, 3
  %i.mi = icmp eq i64 %i.mg, 3
  %or.cond.i167 = and i1 %i.mh, %i.mi
  br i1 %or.cond.i167, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.mj = call i8 @llvm.scmp.i8.i64(i64 %i.mb, i64 %i.mg)
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit

bb.ct:                                            ; preds = %bb.cr
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.ml = load i8, ptr %i.mk, align 8, !range !187, !alias.scope !9523, !noalias !9526, !noundef !5 ; 6 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  %i.mn = load i64, ptr %i.mm, align 8, !alias.scope !9523, !noalias !9526, !noundef !5 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  %i.mp = load i8, ptr %i.mo, align 8, !range !187, !alias.scope !9526, !noalias !9523, !noundef !5 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lv, i64 32
  %i.mr = load i64, ptr %i.mq, align 8, !alias.scope !9526, !noalias !9523, !noundef !5 ; 3 uses
  %i.ms = call i8 @llvm.ucmp.i8.i8(i8 %i.ml, i8 %i.mp)
  %.not.i.i = icmp eq i8 %i.ml, %i.mp
  br i1 %.not.i.i, label %bb.cu, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit

bb.cu:                                            ; preds = %bb.ct
  %i.mt = icmp eq i8 %i.ml, 1
  br i1 %i.mt, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mu = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %i.mn, i64 %i.mr)
  switch i8 %i.mu, label %bb.cw [
    i8 -1, label %bb.cx
    i8 0, label %bb.dc
    i8 1, label %bb.cy
  ]

bb.cw:                                            ; preds = %bb.cv
  unreachable

bb.cx:                                            ; preds = %bb.cv
  %i.mv = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.mr, i64 %i.mn) ; 2 uses
  %i.mw = extractvalue { i64, i1 } %i.mv, 1
  %i.mx = extractvalue { i64, i1 } %i.mv, 0       ; 2 uses
  %i.my = icmp slt i64 %i.mx, 0
  %narrow.i.i.not.i.i = or i1 %i.mw, %i.my
  br i1 %narrow.i.i.not.i.i, label %bb.da, label %bb.cz

bb.cy:                                            ; preds = %bb.cv
  %i.mz = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.mn, i64 %i.mr) ; 2 uses
  %i.na = extractvalue { i64, i1 } %i.mz, 1
  %i.nb = extractvalue { i64, i1 } %i.mz, 0       ; 2 uses
  %i.nc = icmp slt i64 %i.nb, 0
  %narrow.i3.i.not.i.i = or i1 %i.na, %i.nc
  br i1 %narrow.i3.i.not.i.i, label %bb.db, label %bb.dc

bb.cz:                                            ; preds = %bb.cx
  %i.nd = call noundef i8 @_RNvNtCs50dz3u0MOxO_10bigdecimal8impl_cmp23compare_scaled_biguints(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.lv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.lu, i64 noundef %i.mx) #34, !noalias !9528
  switch i8 %i.nd, label %default.unreachable583 [
    i8 -1, label %bb.da
    i8 0, label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread
    i8 1, label %bb.db
  ]

bb.da:                                            ; preds = %bb.cz, %bb.cx
  %i.ne = icmp eq i8 %i.ml, 0
  %spec.select.i.i = select i1 %i.ne, i8 -1, i8 1
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread195

bb.db:                                            ; preds = %bb.cz, %bb.cy
  %i.nf = icmp eq i8 %i.ml, 0
  %spec.select41.i.i = select i1 %i.nf, i8 1, i8 -1
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread195

bb.dc:                                            ; preds = %bb.cy, %bb.cv
  %.sink.i34.i.i = phi i64 [ 0, %bb.cv ], [ %i.nb, %bb.cy ]
  %i.ng = call noundef i8 @_RNvNtCs50dz3u0MOxO_10bigdecimal8impl_cmp23compare_scaled_biguints(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.lu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.lv, i64 noundef %.sink.i34.i.i) #34, !noalias !9528 ; 2 uses
  %i.nh = icmp eq i8 %i.ml, 0
  %switch.offset.i.i = sub nsw i8 0, %i.ng
  %spec.select.i169 = select i1 %i.nh, i8 %switch.offset.i.i, i8 %i.ng
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit

bb.dd:                                            ; preds = %bb.cp
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.ls, i64 noundef %i.fv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #40
  unreachable

bb.de:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br i1 %i.fh, label %bb.df, label %bb.dg, !prof !34

bb.df:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, ptr noundef nonnull align 2 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9532
  store ptr %.sroa.039.0, ptr %i.b, align 8, !noalias !9532
  store i64 %.sroa.10.0, ptr %i.fi, align 8, !noalias !9532
  store ptr %i.c, ptr %i.fj, align 8, !noalias !9532
  store i64 16, ptr %i.fk, align 8, !noalias !9532
  %i.ni = call fastcc noundef i64 @_RINvCsgcf5BHVXlUt_7uu_sort8get_hashTRShBy_EEB2_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b) #34, !noalias !9537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9532
  store ptr %.sroa.054.0, ptr %i.a, align 8, !noalias !9532
  store i64 %.sroa.1062.0, ptr %i.fl, align 8, !noalias !9532
  store ptr %i.c, ptr %i.fm, align 8, !noalias !9532
  store i64 16, ptr %i.fn, align 8, !noalias !9532
  %i.nj = call fastcc noundef i64 @_RINvCsgcf5BHVXlUt_7uu_sort8get_hashTRShBy_EEB2_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9532
  %i.nk = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %i.ni, i64 %i.nj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit

bb.dg:                                            ; preds = %bb.de
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @217) #40
  unreachable

_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread: ; preds = %.preheader49.i, %.preheader.i, %.preheader216, %.preheader, %.preheader49.i.preheader, %.preheader.i.preheader, %.preheader216.preheader, %.preheader.preheader, %bb.cz, %bb.cu, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit.i._crit_edge, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit._crit_edge, %bb.bo, %bb.aw, %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit
  %.sroa.027.2 = phi i64 [ %.sroa.027.1, %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit ], [ %.sroa.027.0389, %bb.aw ], [ %.sroa.027.0389, %bb.bo ], [ %.sroa.027.0389, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit._crit_edge ], [ %.sroa.027.0389, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit.i._crit_edge ], [ %.sroa.027.0389, %.preheader.i.preheader ], [ %i.lw, %bb.cz ], [ %i.lw, %bb.cu ], [ %.sroa.027.0389, %.preheader216.preheader ], [ %.sroa.027.0389, %.preheader.preheader ], [ %.sroa.027.0389, %.preheader49.i.preheader ], [ %.sroa.027.0389, %.preheader.i ], [ %.sroa.027.0389, %.preheader ], [ %.sroa.027.0389, %.preheader216 ], [ %.sroa.027.0389, %.preheader49.i ]
  %.sroa.021.2 = phi i64 [ %.sroa.021.1, %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit ], [ %.sroa.021.0390, %bb.aw ], [ %i.im, %bb.bo ], [ %i.im, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit._crit_edge ], [ %i.jx, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowhENCINvNvBL_4find5checkhQNvMs4_NtBa_3numh14is_ascii_digitE0E0B2j_ECsgcf5BHVXlUt_7uu_sort.exit.i._crit_edge ], [ %i.jx, %.preheader.i.preheader ], [ %.sroa.021.0390, %bb.cz ], [ %.sroa.021.0390, %bb.cu ], [ %i.im, %.preheader216.preheader ], [ %i.im, %.preheader.preheader ], [ %i.jx, %.preheader49.i.preheader ], [ %i.jx, %.preheader.i ], [ %i.im, %.preheader ], [ %i.im, %.preheader216 ], [ %i.jx, %.preheader49.i ]
  %i.nl = icmp eq ptr %i.gl, %i.eq
  br i1 %i.nl, label %._crit_edge, label %bb.ak

._crit_edge517:                                   ; preds = %bb.ax, %bb.dh
  %i.nm = phi i1 [ %.mux, %bb.ax ], [ false, %bb.dh ]
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.037.0388, i64 51
  %i.no = load i8, ptr %i.nn, align 1, !range !69, !noundef !5
  %i.np = trunc nuw i8 %i.no to i1
  %i.nq = call fastcc noundef i8 @_RNvNtCsgcf5BHVXlUt_7uu_sort14custom_str_cmp14custom_str_cmp(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.039.0, i64 noundef %.sroa.10.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.054.0, i64 noundef %.sroa.1062.0, i1 noundef zeroext %i.np, i1 noundef zeroext %i.nm, i1 noundef zeroext %i.ig) #34
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit

bb.dh:                                            ; preds = %bb.ax
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.037.0388, i64 51
  %i.ns = load i8, ptr %i.nr, align 1, !range !69, !noundef !5
  %i.nt = trunc nuw i8 %i.ns to i1
  br i1 %i.nt, label %._crit_edge517, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.nu = call noundef i8 @_RNvNtNtNtCsh036I4OHgIr_6uucore8features4i18n8collator10locale_cmp(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.039.0, i64 noundef %.sroa.10.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.054.0, i64 noundef %.sroa.1062.0) #34
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit

_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread195.loopexit: ; preds = %bb.bo
  br label %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread195

_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread195: ; preds = %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit, %bb.bo, %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread195.loopexit, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmps_0E0E0E0B2j_EB4C_.exit, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp0E0E0E0B2j_EB4C_.exit, %bb.db, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp0E0E0E0B2j_EB4C_.exit.i, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmps_0E0E0E0B2j_EB4C_.exit.i, %bb.da, %bb.cn
  %.sroa.0.3200 = phi i8 [ %..i, %bb.cn ], [ %spec.select721, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmps_0E0E0E0B2j_EB4C_.exit ], [ %spec.select.i.i, %bb.da ], [ %spec.select392, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp0E0E0E0B2j_EB4C_.exit ], [ 1, %bb.bo ], [ %spec.select41.i.i, %bb.db ], [ %spec.select.i, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp0E0E0E0B2j_EB4C_.exit.i ], [ %spec.select88.i, %_RINvYINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvNtB1H_6filter15filter_try_foldhuB2j_NvMs4_NtBa_3numh14is_ascii_digitNCINvNvBL_3all5checkhNCNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmps_0E0E0E0B2j_EB4C_.exit.i ], [ %.sroa.0.3, %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit ], [ -1, %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread195.loopexit ] ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.037.0388, i64 52
  %i.nw = load i8, ptr %i.nv, align 4, !range !69, !noundef !5
  %i.nx = trunc nuw i8 %i.nw to i1
  %switch.offset704 = sub nsw i8 0, %.sroa.0.3200
  %spec.select898 = select i1 %i.nx, i8 %switch.offset704, i8 %.sroa.0.3200
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.dk, %bb.dj, %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread195, %bb.ag, %bb.y, %bb.c, %._crit_edge
  %.sroa.0.5 = phi i8 [ %spec.select891, %bb.y ], [ 0, %._crit_edge ], [ %spec.select900, %bb.dk ], [ %spec.select890, %bb.c ], [ %spec.select898, %_RNvNtCsgcf5BHVXlUt_7uu_sort15numeric_str_cmp15numeric_str_cmp.exit.thread195 ], [ %spec.select899, %bb.dj ], [ %spec.select892, %bb.ag ]
  ret i8 %.sroa.0.5

bb.dj:                                            ; preds = %._crit_edge
  %i.ny = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.oa = load i64, ptr %i.nz, align 8, !noundef !5 ; 2 uses
  %i.ob = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.od = load i64, ptr %i.oc, align 8, !noundef !5 ; 2 uses
  %spec.store.select7 = call i64 @llvm.umin.i64(i64 %i.oa, i64 %i.od)
  %i.oe = call i32 @memcmp(ptr nonnull %i.ny, ptr nonnull %i.ob, i64 %spec.store.select7) ; 2 uses
  %i.of = sext i32 %i.oe to i64
  %i.og = icmp eq i32 %i.oe, 0
  %i.oh = sub i64 %i.oa, %i.od
  %spec.select134 = select i1 %i.og, i64 %i.oh, i64 %i.of
  %i.oi = call i8 @llvm.scmp.i8.i64(i64 %spec.select134, i64 0) ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.ok = load i8, ptr %i.oj, align 4, !range !69, !noundef !5
  %i.ol = trunc nuw i8 %i.ok to i1
  %switch.offset708 = sub nsw i8 0, %i.oi
  %spec.select899 = select i1 %i.ol, i8 %switch.offset708, i8 %i.oi
  br label %switch.lookup

bb.dk:                                            ; preds = %bb.dl, %_RNvMNtCsgcf5BHVXlUt_7uu_sort6chunksNtB2_8LineData13collation_key.exit148
  %.sroa.0.7 = phi i8 [ %i.oz, %bb.dl ], [ %i.cb, %_RNvMNtCsgcf5BHVXlUt_7uu_sort6chunksNtB2_8LineData13collation_key.exit148 ] ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.on = load i8, ptr %i.om, align 4, !range !69, !noundef !5
  %i.oo = trunc nuw i8 %i.on to i1
  %switch.offset716 = sub nsw i8 0, %.sroa.0.7
  %spec.select900 = select i1 %i.oo, i8 %switch.offset716, i8 %.sroa.0.7
  br label %switch.lookup

bb.dl:                                            ; preds = %_RNvMNtCsgcf5BHVXlUt_7uu_sort6chunksNtB2_8LineData13collation_key.exit148
  %i.op = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.or = load i64, ptr %i.oq, align 8, !noundef !5 ; 2 uses
  %i.os = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ou = load i64, ptr %i.ot, align 8, !noundef !5 ; 2 uses
  %spec.store.select8 = tail call i64 @llvm.umin.i64(i64 %i.or, i64 %i.ou)
  %i.ov = tail call i32 @memcmp(ptr nonnull %i.op, ptr nonnull %i.os, i64 %spec.store.select8) ; 2 uses
  %i.ow = sext i32 %i.ov to i64
  %i.ox = icmp eq i32 %i.ov, 0
  %i.oy = sub i64 %i.or, %i.ou
  %spec.select135 = select i1 %i.ox, i64 %i.oy, i64 %i.ow
  %i.oz = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select135, i64 0)
  br label %bb.dk
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i8, i64 } @_RNvCsgcf5BHVXlUt_7uu_sort11month_parse(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not112 = icmp eq i64 %1, 0
  br i1 %.not112, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 %1
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.lr.ph, %bb.a
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.9.0113, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0114, %.lr.ph ], [ %scevgep, %bb.c ] ; 6 uses
  %i.a = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvCsgcf5BHVXlUt_7uu_sort22get_locale_month_table5TABLE, i64 24) acquire, align 8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_RNvCsgcf5BHVXlUt_7uu_sort22get_locale_month_table.exit, label %bb.b, !prof !34

bb.b:                                             ; preds = %._crit_edge
  tail call fastcc void @_RINvMNtNtCs2vKOLqTMYjT_3std4sync9once_lockINtB3_8OnceLockINtNtCs6JMX4GRUq9U_4core6option6OptionINtNtCs7tKScEop1B6_5alloc3vec3VecTIB1w_hENtCsgcf5BHVXlUt_7uu_sort5MonthEEEE10initializeNCINvB2_11get_or_initNCNvB2c_22get_locale_month_table0E0zEB2c_() #34
  br label %_RNvCsgcf5BHVXlUt_7uu_sort22get_locale_month_table.exit

end_hunk_1
