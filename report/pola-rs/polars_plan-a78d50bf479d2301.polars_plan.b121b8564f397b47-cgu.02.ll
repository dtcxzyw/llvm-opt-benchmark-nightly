Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.02?download=true
inline.NumInlined: 11828
inline.NumDeleted: 4829
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RINvMs0_NtNtCs1d9mkheQt2j_4http6header3mapNtB6_9HeaderMap3getReECsfcROwRM8ZtH_11polars_plan:bb.a
  %.lcssa64.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.016.0.copyload.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.do = icmp ult i64 %.sroa.517.0.copyload.i.i.i, 8, !dbg !7904
  br i1 %i.do, label %_RINvNtNtCs1d9mkheQt2j_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !dbg !7904

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i.i.i, i64 1, !dbg !7905
  %i.dq = load i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i.i.i, align 1, !dbg !7906, !alias.scope !7773, !noalias !7774, !noundef !4698
  %i.dr = zext i8 %i.dq to i64, !dbg !7907
  %i.ds = xor i64 %.sroa.0.06.i.i.i.i.i.i.i.i.i.i, %i.dr, !dbg !7908
  %i.dt = mul i64 %i.ds, 1099511628211, !dbg !7909
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i.i.i, i64 2, !dbg !7905
  %i.dv = load i8, ptr %i.dp, align 1, !dbg !7906, !alias.scope !7773, !noalias !7774, !noundef !4698
  %i.dw = zext i8 %i.dv to i64, !dbg !7907
  %i.dx = xor i64 %i.dt, %i.dw, !dbg !7908
  %i.dy = mul i64 %i.dx, 1099511628211, !dbg !7909
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i.i.i, i64 3, !dbg !7905
  %i.ea = load i8, ptr %i.du, align 1, !dbg !7906, !alias.scope !7773, !noalias !7774, !noundef !4698
  %i.eb = zext i8 %i.ea to i64, !dbg !7907
  %i.ec = xor i64 %i.dy, %i.eb, !dbg !7908
  %i.ed = mul i64 %i.ec, 1099511628211, !dbg !7909
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i.i.i, i64 4, !dbg !7905
  %i.ef = load i8, ptr %i.dz, align 1, !dbg !7906, !alias.scope !7773, !noalias !7774, !noundef !4698
  %i.eg = zext i8 %i.ef to i64, !dbg !7907
  %i.eh = xor i64 %i.ed, %i.eg, !dbg !7908
  %i.ei = mul i64 %i.eh, 1099511628211, !dbg !7909
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i.i.i, i64 5, !dbg !7905
  %i.ek = load i8, ptr %i.ee, align 1, !dbg !7906, !alias.scope !7773, !noalias !7774, !noundef !4698
  %i.el = zext i8 %i.ek to i64, !dbg !7907
  %i.em = xor i64 %i.ei, %i.el, !dbg !7908
  %i.en = mul i64 %i.em, 1099511628211, !dbg !7909
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i.i.i, i64 6, !dbg !7905
  %i.ep = load i8, ptr %i.ej, align 1, !dbg !7906, !alias.scope !7773, !noalias !7774, !noundef !4698
  %i.eq = zext i8 %i.ep to i64, !dbg !7907
  %i.er = xor i64 %i.en, %i.eq, !dbg !7908
  %i.es = mul i64 %i.er, 1099511628211, !dbg !7909
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i.i.i, i64 7, !dbg !7905
  %i.eu = load i8, ptr %i.eo, align 1, !dbg !7906, !alias.scope !7773, !noalias !7774, !noundef !4698
  %i.ev = zext i8 %i.eu to i64, !dbg !7907
  %i.ew = xor i64 %i.es, %i.ev, !dbg !7908
  %i.ex = mul i64 %i.ew, 1099511628211, !dbg !7909
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i.i.i, i64 8, !dbg !7905 ; 2 uses
  %i.ez = load i8, ptr %i.et, align 1, !dbg !7906, !alias.scope !7773, !noalias !7774, !noundef !4698
  %i.fa = zext i8 %i.ez to i64, !dbg !7907
  %i.fb = xor i64 %i.ex, %i.fa, !dbg !7908
  %i.fc = mul i64 %i.fb, 1099511628211, !dbg !7909 ; 2 uses
  %i.fd = icmp eq ptr %i.ey, %i.cy, !dbg !7910
  br i1 %i.fd, label %_RINvNtNtCs1d9mkheQt2j_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !dbg !7904

.lr.ph.i.i.i20.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i20.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i20.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gj, %.lr.ph.i.i.i20.i.i.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i20.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.lcssa789.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gi, %.lr.ph.i.i.i20.i.i.i.i.i.i ], [ %.lcssa789.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i20.i.i.i.i.i.i.prol.loopexit ]
  %i.fe = load i8, ptr %.sroa.0.010.i.i.i.i.i.i.i.i.i, align 1, !dbg !7897, !noalias !7771, !noundef !4698
  %i.ff = zext i8 %i.fe to i64, !dbg !7898
  %i.fg = getelementptr inbounds nuw i8, ptr @30, i64 %i.ff, !dbg !7899
  %i.fh = load i8, ptr %i.fg, align 1, !dbg !7899, !noalias !7772, !noundef !4698
  %i.fi = zext i8 %i.fh to i64, !dbg !7900
  %i.fj = xor i64 %.lcssa789.i.i.i.i.i.i.i.i.i, %i.fi, !dbg !7901
  %i.fk = mul i64 %i.fj, 1099511628211, !dbg !7902
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i.i.i.i, i64 1, !dbg !7903
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !7897, !noalias !7771, !noundef !4698
  %i.fn = zext i8 %i.fm to i64, !dbg !7898
  %i.fo = getelementptr inbounds nuw i8, ptr @30, i64 %i.fn, !dbg !7899
  %i.fp = load i8, ptr %i.fo, align 1, !dbg !7899, !noalias !7772, !noundef !4698
  %i.fq = zext i8 %i.fp to i64, !dbg !7900
  %i.fr = xor i64 %i.fk, %i.fq, !dbg !7901
  %i.fs = mul i64 %i.fr, 1099511628211, !dbg !7902
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i.i.i.i, i64 2, !dbg !7903
  %i.fu = load i8, ptr %i.ft, align 1, !dbg !7897, !noalias !7771, !noundef !4698
  %i.fv = zext i8 %i.fu to i64, !dbg !7898
  %i.fw = getelementptr inbounds nuw i8, ptr @30, i64 %i.fv, !dbg !7899
  %i.fx = load i8, ptr %i.fw, align 1, !dbg !7899, !noalias !7772, !noundef !4698
  %i.fy = zext i8 %i.fx to i64, !dbg !7900
  %i.fz = xor i64 %i.fs, %i.fy, !dbg !7901
  %i.ga = mul i64 %i.fz, 1099511628211, !dbg !7902
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i.i.i.i, i64 3, !dbg !7903
  %i.gc = load i8, ptr %i.gb, align 1, !dbg !7897, !noalias !7771, !noundef !4698
  %i.gd = zext i8 %i.gc to i64, !dbg !7898
  %i.ge = getelementptr inbounds nuw i8, ptr @30, i64 %i.gd, !dbg !7899
  %i.gf = load i8, ptr %i.ge, align 1, !dbg !7899, !noalias !7772, !noundef !4698
  %i.gg = zext i8 %i.gf to i64, !dbg !7900
  %i.gh = xor i64 %i.ga, %i.gg, !dbg !7901
  %i.gi = mul i64 %i.gh, 1099511628211, !dbg !7902 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i.i.i.i.i.i.i, i64 4, !dbg !7903 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.cy, !dbg !7911
  br i1 %i.gk, label %_RINvNtNtCs1d9mkheQt2j_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i, label %.lr.ph.i.i.i20.i.i.i.i.i.i, !dbg !7896

bb.m:                                             ; preds = %bb.i
  %i.gl = ptrtoint ptr %.sroa.016.0.copyload.i.i.i to i64, !dbg !7912
  %i.gm = and i64 %i.gl, 255, !dbg !7912
  %i.gn = xor i64 %i.gm, %i.cw, !dbg !7913
  %i.go = mul i64 %i.gn, 2232315406967589409, !dbg !7914
  br label %_RINvNtNtCs1d9mkheQt2j_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i, !dbg !7915

_RINvNtNtCs1d9mkheQt2j_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i20.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i20.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %bb.m, %bb.l, %bb.k, %_RINvXsB_NtNtCs1d9mkheQt2j_4http6header4nameNtB6_7HdrNameNtNtCscgRAwXFJnXP_4core4hash4Hash4hashNtNtNtCsh8eZTKRCwoO_3std4hash6random13DefaultHasherECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.cs, %_RINvXsB_NtNtCs1d9mkheQt2j_4http6header4nameNtB6_7HdrNameNtNtCscgRAwXFJnXP_4core4hash4Hash4hashNtNtNtCsh8eZTKRCwoO_3std4hash6random13DefaultHasherECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i.i ], [ %i.cw, %bb.k ], [ %i.go, %bb.m ], [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.cw, %bb.l ], [ %.lcssa64.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.lcssa66.unr, %.lr.ph.i.i.i20.i.i.i.i.i.i.prol.loopexit ], [ %i.gi, %.lr.ph.i.i.i20.i.i.i.i.i.i ], !dbg !7916
  %i.gp = trunc i64 %.sroa.0.0.i.i.i.i.i.i to i16, !dbg !7917
  %i.gq = and i16 %i.gp, 32767, !dbg !7917        ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !7918
  %i.gs = load i16, ptr %i.gr, align 8, !dbg !7918, !alias.scope !7754, !noalias !7755, !noundef !4698 ; 3 uses
  %i.gt = and i16 %i.gq, %i.gs, !dbg !7919
  %i.gu = zext nneg i16 %i.gt to i64, !dbg !7919
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !7754, !noalias !7755, !noundef !4698 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !7754, !noalias !7755, !nonnull !4698
  %i.gz = zext i16 %i.gs to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !alias.scope !7754, !noalias !7755, !nonnull !4698
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not2.i.i.i.i.i.i = icmp eq i8 %i.i, 2
  %i.hf = ptrtoint ptr %.sroa.016.0.copyload.i.i.i to i64
  %i.hg = trunc i64 %i.hf to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload.i.i.i, i64 %.sroa.517.0.copyload.i.i.i
  %.not = icmp eq i64 %i.gw, 0
  br label %.outer, !dbg !7920

.outer:                                           ; preds = %_RNvXss_NtNtCs1d9mkheQt2j_4http6header4nameNtB5_10HeaderNameINtNtCscgRAwXFJnXP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i, %_RINvNtNtCs1d9mkheQt2j_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i
  %.sroa.05.0.i.i.i.i.i.ph = phi i64 [ %i.hu, %_RNvXss_NtNtCs1d9mkheQt2j_4http6header4nameNtB5_10HeaderNameINtNtCscgRAwXFJnXP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i ], [ 0, %_RINvNtNtCs1d9mkheQt2j_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.ph = phi i64 [ %i.hv, %_RNvXss_NtNtCs1d9mkheQt2j_4http6header4nameNtB5_10HeaderNameINtNtCscgRAwXFJnXP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i ], [ %i.gu, %_RINvNtNtCs1d9mkheQt2j_4http6header3map15hash_elem_usingNtNtB4_4name7HdrNameECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i.i ] ; 2 uses
  %i.hi = icmp ult i64 %.sroa.0.0.i.i.i.i.i.ph, %i.gw, !dbg !7921 ; 2 uses
  %.not.not = xor i1 %.not, true, !dbg !7921
  %brmerge = or i1 %i.hi, %.not.not, !dbg !7921
  %.sroa.0.0.i.i.i.i.i.ph.mux = select i1 %i.hi, i64 %.sroa.0.0.i.i.i.i.i.ph, i64 0, !dbg !7921 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop, !dbg !7921

.loopexit:                                        ; preds = %.outer
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.sroa.0.0.i.i.i.i.i.ph.mux, !dbg !7922 ; 2 uses
  %i.hk = load i16, ptr %i.hj, align 2, !dbg !7923, !noalias !7775, !noundef !4698 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.hk, -1, !dbg !7923
  br i1 %.not.i.i.i.i.i, label %_RINvXs4_NtNtNtCs1d9mkheQt2j_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsfcROwRM8ZtH_11polars_plan.exit.i, label %bb.n, !dbg !7924

bb.n:                                             ; preds = %.loopexit
  %i.hl = zext i16 %i.hk to i64, !dbg !7925       ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 2, !dbg !7926
  %i.hn = load i16, ptr %i.hm, align 2, !dbg !7926, !noalias !7775, !noundef !4698 ; 2 uses
  %i.ho = and i16 %i.hn, %i.gs, !dbg !7927
  %i.hp = zext i16 %i.ho to i64, !dbg !7927
  %i.hq = sub i64 %.sroa.0.0.i.i.i.i.i.ph.mux, %i.hp, !dbg !7928
  %i.hr = and i64 %i.hq, %i.gz, !dbg !7929
  %i.hs = icmp samesign ugt i64 %.sroa.05.0.i.i.i.i.i.ph, %i.hr, !dbg !7930
  br i1 %i.hs, label %_RINvXs4_NtNtNtCs1d9mkheQt2j_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsfcROwRM8ZtH_11polars_plan.exit.i, label %bb.o, !dbg !7930

bb.o:                                             ; preds = %bb.n
  %i.ht = icmp eq i16 %i.hn, %i.gq, !dbg !7931
  br i1 %i.ht, label %bb.p, label %_RNvXss_NtNtCs1d9mkheQt2j_4http6header4nameNtB5_10HeaderNameINtNtCscgRAwXFJnXP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i, !dbg !7932

_RNvXss_NtNtCs1d9mkheQt2j_4http6header4nameNtB5_10HeaderNameINtNtCscgRAwXFJnXP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i: ; preds = %_RNvXss_NtNtCs1d9mkheQt2j_4http6header4nameNtB5_10HeaderNameINtNtCscgRAwXFJnXP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i.i.i.i, %.split.i.i.i.i.i, %bb.w, %bb.t, %.split11.i.i.i.i.i, %bb.s, %bb.r, %bb.o
  %i.hu = add nuw nsw i64 %.sroa.05.0.i.i.i.i.i.ph, 1, !dbg !7933
  %i.hv = add i64 %.sroa.0.0.i.i.i.i.i.ph.mux, 1, !dbg !7934
  br label %.outer, !dbg !7935

bb.p:                                             ; preds = %bb.o
  %i.hw = icmp samesign ugt i64 %i.l, %i.hl, !dbg !7936
  br i1 %i.hw, label %bb.q, label %bb.x, !dbg !7936

bb.q:                                             ; preds = %bb.p
  %i.hx = getelementptr inbounds nuw [104 x i8], ptr %i.hb, i64 %i.hl, !dbg !7937 ; 7 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 64, !dbg !7938
  %i.hz = load ptr, ptr %i.hy, align 8, !dbg !7939, !noalias !7776, !noundef !4698
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hz, null, !dbg !7939
  br i1 %.not.i.i.i.i.i.i, label %bb.s, label %bb.r, !dbg !7940

bb.r:                                             ; preds = %bb.q
  switch i8 %i.i, label %bb.w [
    i8 2, label %_RNvXss_NtNtCs1d9mkheQt2j_4http6header4nameNtB5_10HeaderNameINtNtCscgRAwXFJnXP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i
    i8 0, label %bb.t
  ], !dbg !7941

bb.s:                                             ; preds = %bb.q
  br i1 %.not2.i.i.i.i.i.i, label %.split11.i.i.i.i.i, label %_RNvXss_NtNtCs1d9mkheQt2j_4http6header4nameNtB5_10HeaderNameINtNtCscgRAwXFJnXP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i, !dbg !7942

.split11.i.i.i.i.i:                               ; preds = %bb.s
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 72, !dbg !7943
  %i.ib = load i8, ptr %i.ia, align 8, !dbg !7943, !range !4857, !noalias !7776, !noundef !4698
  %i.ic = icmp eq i8 %i.ib, %i.hg, !dbg !7944
  br i1 %i.ic, label %.loopexit.i, label %_RNvXss_NtNtCs1d9mkheQt2j_4http6header4nameNtB5_10HeaderNameINtNtCscgRAwXFJnXP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i, !dbg !7938

bb.t:                                             ; preds = %bb.r
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 80, !dbg !7945
  %i.ie = load i64, ptr %i.id, align 8, !dbg !7945, !noalias !7776, !noundef !4698
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ie, %.sroa.517.0.copyload.i.i.i, !dbg !7946
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %_RNvXss_NtNtCs1d9mkheQt2j_4http6header4nameNtB5_10HeaderNameINtNtCscgRAwXFJnXP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i, !dbg !7946

bb.u:                                             ; preds = %bb.t
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 72, !dbg !7947
  %i.ig = load ptr, ptr %i.if, align 8, !dbg !7947, !noalias !7776, !noundef !4698 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !7948, !noalias !7782
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.sroa.517.0.copyload.i.i.i, !dbg !7949
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.ig, ptr noundef nonnull readonly %i.ih, ptr noundef nonnull readonly %.sroa.016.0.copyload.i.i.i, ptr noundef nonnull readonly %i.hh), !dbg !7950, !noalias !7776
  call void @llvm.experimental.noalias.scope.decl(metadata !7783), !dbg !7951
  %i.ii = load i64, ptr %i.hd, align 8, !alias.scope !7784, !noalias !7782, !noundef !4698 ; 3 uses
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %i.hc, align 8, !alias.scope !7784, !noalias !7782 ; 3 uses
  %.val2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !7783, !noalias !7782, !nonnull !4698
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.he, align 8, !alias.scope !7783, !noalias !7782, !nonnull !4698
  %umax.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %.promoted.i.i.i.i.i.i.i.i, i64 %i.ii), !dbg !7952
  %exitcond.not.i3.not.i.i.i.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i.i.i.i, %i.ii, !dbg !7953
  br i1 %exitcond.not.i3.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.sink.split.i.i.i.i.i, !dbg !7953

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ij = add i64 %i.ik, 1, !dbg !7954            ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ij, %umax.i.i.i.i.i.i.i.i, !dbg !7953
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.sink.split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !dbg !7953

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.u, %bb.v
  %i.ik = phi i64 [ %i.ij, %bb.v ], [ %.promoted.i.i.i.i.i.i.i.i, %bb.u ] ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i.i.i.i, i64 %i.ik, !dbg !7955
  %i.im = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %i.ik, !dbg !7956
  %.val.i.i.i.i.i.i.i.i = load i8, ptr %i.il, align 1, !dbg !7957, !noalias !7785, !noundef !4698
  %.val7.i.i.i.i.i.i.i.i = load i8, ptr %i.im, align 1, !dbg !7957, !noalias !7785, !noundef !4698
  %i.in = zext i8 %.val7.i.i.i.i.i.i.i.i to i64, !dbg !7958
  %i.io = getelementptr inbounds nuw i8, ptr @30, i64 %i.in, !dbg !7959
  %i.ip = load i8, ptr %i.io, align 1, !dbg !7959, !noalias !7789, !noundef !4698
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i.i.i.i, %i.ip, !dbg !7960
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.v, label %_RNvXss_NtNtCs1d9mkheQt2j_4http6header4nameNtB5_10HeaderNameINtNtCscgRAwXFJnXP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i.i.i.i, !dbg !7957

bb.w:                                             ; preds = %bb.r
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hx, i64 80, !dbg !7961
  %i.ir = load i64, ptr %i.iq, align 8, !dbg !7961, !noalias !7776, !noundef !4698
  %i.is = icmp eq i64 %i.ir, %.sroa.517.0.copyload.i.i.i, !dbg !7962
  br i1 %i.is, label %.split.i.i.i.i.i, label %_RNvXss_NtNtCs1d9mkheQt2j_4http6header4nameNtB5_10HeaderNameINtNtCscgRAwXFJnXP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i, !dbg !7962

.split.i.i.i.i.i:                                 ; preds = %bb.w
  %i.it = getelementptr inbounds nuw i8, ptr %i.hx, i64 72, !dbg !7963
  %i.iu = load ptr, ptr %i.it, align 8, !dbg !7963, !noalias !7776, !noundef !4698
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.iu, ptr nonnull %.sroa.016.0.copyload.i.i.i, i64 %.sroa.517.0.copyload.i.i.i), !dbg !7964, !noalias !7776
  %i.iv = icmp eq i32 %bcmp.i.i.i.i.i.i, 0, !dbg !7964
  br i1 %i.iv, label %.loopexit.i, label %_RNvXss_NtNtCs1d9mkheQt2j_4http6header4nameNtB5_10HeaderNameINtNtCscgRAwXFJnXP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i, !dbg !7938

_RNvXss_NtNtCs1d9mkheQt2j_4http6header4nameNtB5_10HeaderNameINtNtCscgRAwXFJnXP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not16.i.i.i.i.i = icmp ult i64 %i.ik, %i.ii, !dbg !7953
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7965, !noalias !7782
  br i1 %.not16.i.i.i.i.i, label %_RNvXss_NtNtCs1d9mkheQt2j_4http6header4nameNtB5_10HeaderNameINtNtCscgRAwXFJnXP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.thread.i.i.i.i.i, label %.loopexit.i, !dbg !7938

bb.x:                                             ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.hl, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #50, !dbg !7936, !noalias !7775
  unreachable, !dbg !7936

.loopexit.sink.split.i.i.i.i.i:                   ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !7965, !noalias !7782
  br label %.loopexit.i, !dbg !7966

_RINvXs4_NtNtNtCs1d9mkheQt2j_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsfcROwRM8ZtH_11polars_plan.exit.thread.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !7799, !noalias !7748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !7967, !noalias !7748
  br label %_RINvMs0_NtNtCs1d9mkheQt2j_4http6header3mapNtB6_9HeaderMap4get2ReECsfcROwRM8ZtH_11polars_plan.exit, !dbg !7968

_RINvXs4_NtNtNtCs1d9mkheQt2j_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.n, %.loopexit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !7967, !noalias !7748
  br label %_RINvMs0_NtNtCs1d9mkheQt2j_4http6header3mapNtB6_9HeaderMap4get2ReECsfcROwRM8ZtH_11polars_plan.exit, !dbg !7968

.loopexit.i:                                      ; preds = %_RNvXss_NtNtCs1d9mkheQt2j_4http6header4nameNtB5_10HeaderNameINtNtCscgRAwXFJnXP_4core3cmp9PartialEqNtB5_7HdrNameE2eq.exit.i.i.i.i.i, %.split.i.i.i.i.i, %.split11.i.i.i.i.i, %.loopexit.sink.split.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !7967, !noalias !7748
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hx, i64 24, !dbg !7969
  br label %_RINvMs0_NtNtCs1d9mkheQt2j_4http6header3mapNtB6_9HeaderMap4get2ReECsfcROwRM8ZtH_11polars_plan.exit, !dbg !7970

_RINvMs0_NtNtCs1d9mkheQt2j_4http6header3mapNtB6_9HeaderMap4get2ReECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RINvXs4_NtNtNtCs1d9mkheQt2j_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsfcROwRM8ZtH_11polars_plan.exit.thread.i, %_RINvXs4_NtNtNtCs1d9mkheQt2j_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsfcROwRM8ZtH_11polars_plan.exit.i, %.loopexit.i
  %.sroa.0.0.i = phi ptr [ %i.iw, %.loopexit.i ], [ null, %_RINvXs4_NtNtNtCs1d9mkheQt2j_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsfcROwRM8ZtH_11polars_plan.exit.i ], [ null, %_RINvXs4_NtNtNtCs1d9mkheQt2j_4http6header3map14as_header_nameReNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsfcROwRM8ZtH_11polars_plan.exit.thread.i ], !dbg !7971
  ret ptr %.sroa.0.0.i, !dbg !7972

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread5queueINtB6_5LocalINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtB8_6handle6HandleEE21push_back_or_overflowB1U_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !7973 {
bb.a:
  br label %bb.b, !dbg !8027

bb.b:                                             ; preds = %bb.a, %bb.e
  %storemerge = phi ptr [ %1, %bb.a ], [ %i.s, %bb.e ] ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !dbg !8028, !nonnull !4698, !noundef !4698
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !8029
  %i.c = load atomic i64, ptr %i.b acquire, align 8, !dbg !8030 ; 2 uses
  %i.d = lshr i64 %i.c, 32, !dbg !8031
  %i.e = trunc nuw i64 %i.d to i32, !dbg !8032    ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !dbg !8033, !nonnull !4698, !noundef !4698 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !8034
  %i.h = load i32, ptr %i.g, align 4, !dbg !8035, !noundef !4698 ; 4 uses
  %i.i = sub i32 %i.h, %i.e, !dbg !8036
  %i.j = icmp ult i32 %i.i, 256, !dbg !8037
  br i1 %i.j, label %bb.d, label %bb.c, !dbg !8037

bb.c:                                             ; preds = %bb.b
  %i.k = trunc i64 %i.c to i32, !dbg !8038
  %.not = icmp eq i32 %i.e, %i.k, !dbg !8039
  br i1 %.not, label %bb.e, label %bb.f, !dbg !8039

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = and i32 %i.h, 255, !dbg !8040
  %i.n = zext nneg i32 %i.m to i64, !dbg !8040
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !8041
  %i.p = load ptr, ptr %i.o, align 8, !dbg !8041, !noalias !8025, !nonnull !4698, !noundef !4698
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n, !dbg !8041
  store ptr %storemerge, ptr %i.q, align 8, !dbg !8042, !noalias !8025
  %i.r = add i32 %i.h, 1, !dbg !8043
  store atomic i32 %i.r, ptr %i.l release, align 8, !dbg !8044, !noalias !8025
  br label %.loopexit, !dbg !8045

bb.e:                                             ; preds = %bb.c
  %i.s = tail call noundef ptr @_RINvMs0_NtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread5queueINtB6_5LocalINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtB8_6handle6HandleEE13push_overflowB1U_EBe_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %storemerge, i32 noundef %i.e, i32 noundef %i.h, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(72) %3), !dbg !8046 ; 2 uses
  %.not4 = icmp eq ptr %i.s, null, !dbg !8047
  br i1 %.not4, label %.loopexit, label %bb.b, !dbg !8048

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvXs3_NtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6HandleINtNtB7_8overflow8OverflowINtNtCsgZ49sUHp3tW_5alloc4sync3ArcB1a_EE4push(ptr noundef nonnull align 8 %2, ptr noundef nonnull %storemerge), !dbg !8049
  br label %.loopexit, !dbg !8049

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.d
  ret void, !dbg !8050
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtCs1lTGjXZLbkb_7reqwest10async_impl6clientNtB6_13ClientBuilder10user_agentReECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(1016) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(1016) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !8051 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [40 x i8], align 8                ; 2 uses
  %i.g = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !8104
  invoke void @_RINvMNtNtCs1d9mkheQt2j_4http6header5valueNtB3_11HeaderValue16try_from_genericReNCNvB2_8from_str0ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %_RNvXs4_NtCscgRAwXFJnXP_4core7convertReINtB5_7TryIntoNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueE8try_intoCsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.c, !dbg !8105

bb.b:                                             ; preds = %bb.m, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.m ], [ %i.h, %bb.c ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1lTGjXZLbkb_7reqwest10async_impl6client13ClientBuilderECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(1016) %1) #45
          to label %bb.o unwind label %bb.n, !dbg !8106

bb.c:                                             ; preds = %bb.h, %bb.f, %bb.a, %bb.j, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

_RNvXs4_NtCscgRAwXFJnXP_4core7convertReINtB5_7TryIntoNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueE8try_intoCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !8104
  %i.j = load i8, ptr %i.i, align 8, !dbg !8104, !range !4952, !noundef !4698
  %i.k = icmp eq i8 %i.j, 2, !dbg !8104
  br i1 %i.k, label %bb.j, label %bb.d, !dbg !8107

bb.d:                                             ; preds = %_RNvXs4_NtCscgRAwXFJnXP_4core7convertReINtB5_7TryIntoNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueE8try_intoCsfcROwRM8ZtH_11polars_plan.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !dbg !8108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !8109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !8110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @23, i64 32, i1 false), !dbg !8111
  invoke fastcc void @_RINvMs0_NtNtCs1d9mkheQt2j_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef align 8 dereferenceable(96) %1, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.f)
          to label %bb.e unwind label %bb.c, !dbg !8112

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8111
  call void @llvm.experimental.noalias.scope.decl(metadata !8092), !dbg !8113
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !8114
  %i.m = load i8, ptr %i.l, align 8, !dbg !8114, !range !4863, !alias.scope !8093, !noalias !8092, !noundef !4698
  %i.n = icmp eq i8 %i.m, 3, !dbg !8114
  br i1 %i.n, label %bb.f, label %bb.g, !dbg !8115, !prof !4710

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @808, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #46
          to label %.noexc unwind label %bb.c, !dbg !8116

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.d, i64 40, i1 false), !dbg !8117, !alias.scope !8094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !8118
  call void @llvm.experimental.noalias.scope.decl(metadata !8095), !dbg !8119
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !8120
  %i.p = load i8, ptr %i.o, align 8, !dbg !8120, !range !4952, !alias.scope !8095, !noundef !4698
  %i.q = icmp eq i8 %i.p, 2, !dbg !8120
  br i1 %i.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueEECsfcROwRM8ZtH_11polars_plan.exit, label %bb.h, !dbg !8120

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !8096), !dbg !8120
  call void @llvm.experimental.noalias.scope.decl(metadata !8097), !dbg !8121
  call void @llvm.experimental.noalias.scope.decl(metadata !8098), !dbg !8122
  %i.r = load ptr, ptr %i.e, align 8, !dbg !8123, !alias.scope !8099, !nonnull !4698, !align !4821, !noundef !4698
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !8123
  %i.t = load ptr, ptr %i.s, align 8, !dbg !8123, !noalias !8099, !nonnull !4698, !noundef !4698
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !8124
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !8125
  %i.w = load ptr, ptr %i.v, align 8, !dbg !8125, !alias.scope !8099, !noundef !4698
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !8126
  %i.y = load i64, ptr %i.x, align 8, !dbg !8126, !alias.scope !8099, !noundef !4698
  invoke void %i.t(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef %i.w, i64 noundef %i.y)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueEECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.c, !dbg !8123, !inline_history !152

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !8119
  br label %bb.i, !dbg !8127

bb.i:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs1lTGjXZLbkb_7reqwest5error5ErrorEECsfcROwRM8ZtH_11polars_plan.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs1d9mkheQt2j_4http6header5value11HeaderValueEECsfcROwRM8ZtH_11polars_plan.exit
end_hunk_0
begin_hunk_1_@_RNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0CsfcROwRM8ZtH_11polars_plan:bb.a
  %i.bvw = getelementptr inbounds nuw i8, ptr %1, i64 285, !dbg !107722
  %i.bvx = load i8, ptr %i.bvw, align 1, !dbg !107722, !range !5104, !noundef !4698
  %i.bvy = trunc nuw i8 %i.bvx to i1, !dbg !107722
  br i1 %i.bvy, label %bb.agd, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit470, !dbg !107722

bb.agc:                                           ; preds = %bb.agb
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.btk)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit468 unwind label %bb.bn, !dbg !109121

bb.agd:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit468
  %i.bvz = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !107722 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107455), !dbg !107722
  call void @llvm.experimental.noalias.scope.decl(metadata !107456), !dbg !109122
  call void @llvm.experimental.noalias.scope.decl(metadata !107457), !dbg !109123
  call void @llvm.experimental.noalias.scope.decl(metadata !107458), !dbg !109124
  %i.bwa = load ptr, ptr %i.bvz, align 8, !dbg !109125, !alias.scope !107459, !nonnull !4698, !noundef !4698
  %i.bwb = atomicrmw sub ptr %i.bwa, i64 1 release, align 8, !dbg !109126, !noalias !107459
  %i.bwc = icmp eq i64 %i.bwb, 1, !dbg !109127
  br i1 %i.bwc, label %bb.age, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit470, !dbg !109127

bb.age:                                           ; preds = %bb.agd
  fence acquire, !dbg !109128
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bvz) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit470 unwind label %bb.bn, !dbg !109129

bb.agf:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit470
  %i.bwd = getelementptr inbounds nuw i8, ptr %1, i64 286, !dbg !107722
  %i.bwe = load i8, ptr %i.bwd, align 2, !dbg !107722, !range !5104, !noundef !4698
  %i.bwf = trunc nuw i8 %i.bwe to i1, !dbg !107722
  %i.bwg = icmp eq i8 %i.bvv, -40
  %or.cond1726 = and i1 %i.bwg, %i.bwf, !dbg !107722
  br i1 %or.cond1726, label %bb.agg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit472, !dbg !107722, !prof !5164

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit472: ; preds = %bb.agg, %bb.agf
  %i.bwh = getelementptr inbounds nuw i8, ptr %1, i64 287, !dbg !107722
  %i.bwi = load i8, ptr %i.bwh, align 1, !dbg !107722, !range !5104, !noundef !4698
  %i.bwj = trunc nuw i8 %i.bwi to i1, !dbg !107722
  br i1 %i.bwj, label %bb.agh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit460, !dbg !107722

bb.agg:                                           ; preds = %bb.agf
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.btj)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit472 unwind label %bb.bn, !dbg !109130

bb.agh:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit472
  %i.bwk = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !107722 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107460), !dbg !107722
  call void @llvm.experimental.noalias.scope.decl(metadata !107461), !dbg !109131
  call void @llvm.experimental.noalias.scope.decl(metadata !107462), !dbg !109132
  call void @llvm.experimental.noalias.scope.decl(metadata !107463), !dbg !109133
  %i.bwl = load ptr, ptr %i.bwk, align 8, !dbg !109134, !alias.scope !107464, !nonnull !4698, !noundef !4698
  %i.bwm = atomicrmw sub ptr %i.bwl, i64 1 release, align 8, !dbg !109135, !noalias !107464
  %i.bwn = icmp eq i64 %i.bwm, 1, !dbg !109136
  br i1 %i.bwn, label %bb.agi, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit460, !dbg !109136

bb.agi:                                           ; preds = %bb.agh
  fence acquire, !dbg !109137
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bwk) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit460 unwind label %bb.bn, !dbg !109138

bb.agj:                                           ; preds = %bb.aer
  %i.bwo = getelementptr inbounds nuw i8, ptr %1, i64 176, !dbg !108484 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107465), !dbg !108484
  %i.bwp = load ptr, ptr %i.bwo, align 8, !dbg !109139, !alias.scope !107465, !noundef !4698 ; 2 uses
  %i.bwq = icmp eq ptr %i.bwp, null, !dbg !109139
  br i1 %i.bwq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEECsfcROwRM8ZtH_11polars_plan.exit476, label %bb.agk, !dbg !109139

bb.agk:                                           ; preds = %bb.agj
  %i.bwr = atomicrmw sub ptr %i.bwp, i64 1 release, align 8, !dbg !109140, !noalias !107466
  %i.bws = icmp eq i64 %i.bwr, 1, !dbg !109141
  br i1 %i.bws, label %bb.agl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEECsfcROwRM8ZtH_11polars_plan.exit476, !dbg !109141

bb.agl:                                           ; preds = %bb.agk
  fence acquire, !dbg !109142
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bwo) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEECsfcROwRM8ZtH_11polars_plan.exit476 unwind label %bb.bn, !dbg !109143

bb.agm:                                           ; preds = %bb.agn, %bb.va
  %i.bwt = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !107722
  %i.bwu = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !107722
  %i.bwv = getelementptr inbounds nuw i8, ptr %1, i64 151, !dbg !107722
  %i.bww = load i8, ptr %i.bwv, align 1, !dbg !107722, !range !5060, !noundef !4698 ; 2 uses
  %.not207 = icmp eq i8 %i.bww, -38, !dbg !107722
  br i1 %.not207, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit480, label %bb.ago, !dbg !107722

bb.agn:                                           ; preds = %bb.va
  %i.bwx = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !107722
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(24) %i.bwx) #45
          to label %bb.agm unwind label %bb.bn, !dbg !107722

bb.ago:                                           ; preds = %bb.agm
  %i.bwy = getelementptr inbounds nuw i8, ptr %1, i64 284, !dbg !107722
  %i.bwz = load i8, ptr %i.bwy, align 4, !dbg !107722, !range !5104, !noundef !4698
  %i.bxa = trunc nuw i8 %i.bwz to i1, !dbg !107722
  %i.bxb = icmp eq i8 %i.bww, -40
  %or.cond1727 = and i1 %i.bxb, %i.bxa, !dbg !107722
  br i1 %or.cond1727, label %bb.agp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit478, !dbg !107722, !prof !5164

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit480: ; preds = %bb.agq, %bb.agr, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit478, %bb.agm
  %i.bxc = getelementptr inbounds nuw i8, ptr %1, i64 111, !dbg !107722
  %i.bxd = load i8, ptr %i.bxc, align 1, !dbg !107722, !range !5060, !noundef !4698 ; 2 uses
  %.not208 = icmp eq i8 %i.bxd, -38, !dbg !107722
  br i1 %.not208, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit460, label %bb.ags, !dbg !107722

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit478: ; preds = %bb.agp, %bb.ago
  %i.bxe = getelementptr inbounds nuw i8, ptr %1, i64 285, !dbg !107722
  %i.bxf = load i8, ptr %i.bxe, align 1, !dbg !107722, !range !5104, !noundef !4698
  %i.bxg = trunc nuw i8 %i.bxf to i1, !dbg !107722
  br i1 %i.bxg, label %bb.agq, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit480, !dbg !107722

bb.agp:                                           ; preds = %bb.ago
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bwu)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit478 unwind label %bb.bn, !dbg !109144

bb.agq:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit478
  %i.bxh = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !107722 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107467), !dbg !107722
  call void @llvm.experimental.noalias.scope.decl(metadata !107468), !dbg !109145
  call void @llvm.experimental.noalias.scope.decl(metadata !107469), !dbg !109146
  call void @llvm.experimental.noalias.scope.decl(metadata !107470), !dbg !109147
  %i.bxi = load ptr, ptr %i.bxh, align 8, !dbg !109148, !alias.scope !107471, !nonnull !4698, !noundef !4698
  %i.bxj = atomicrmw sub ptr %i.bxi, i64 1 release, align 8, !dbg !109149, !noalias !107471
  %i.bxk = icmp eq i64 %i.bxj, 1, !dbg !109150
  br i1 %i.bxk, label %bb.agr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit480, !dbg !109150

bb.agr:                                           ; preds = %bb.agq
  fence acquire, !dbg !109151
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bxh) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit480 unwind label %bb.bn, !dbg !109152

bb.ags:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit480
  %i.bxl = getelementptr inbounds nuw i8, ptr %1, i64 286, !dbg !107722
  %i.bxm = load i8, ptr %i.bxl, align 2, !dbg !107722, !range !5104, !noundef !4698
  %i.bxn = trunc nuw i8 %i.bxm to i1, !dbg !107722
  %i.bxo = icmp eq i8 %i.bxd, -40
  %or.cond1728 = and i1 %i.bxo, %i.bxn, !dbg !107722
  br i1 %or.cond1728, label %bb.agt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit482, !dbg !107722, !prof !5164

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit482: ; preds = %bb.agt, %bb.ags
  %i.bxp = getelementptr inbounds nuw i8, ptr %1, i64 287, !dbg !107722
  %i.bxq = load i8, ptr %i.bxp, align 1, !dbg !107722, !range !5104, !noundef !4698
  %i.bxr = trunc nuw i8 %i.bxq to i1, !dbg !107722
  br i1 %i.bxr, label %bb.agu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit460, !dbg !107722

bb.agt:                                           ; preds = %bb.ags
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bwt)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit482 unwind label %bb.bn, !dbg !109153

bb.agu:                                           ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsfcROwRM8ZtH_11polars_plan.exit482
  %i.bxs = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !107722 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !107472), !dbg !107722
  call void @llvm.experimental.noalias.scope.decl(metadata !107473), !dbg !109154
  call void @llvm.experimental.noalias.scope.decl(metadata !107474), !dbg !109155
  call void @llvm.experimental.noalias.scope.decl(metadata !107475), !dbg !109156
  %i.bxt = load ptr, ptr %i.bxs, align 8, !dbg !109157, !alias.scope !107476, !nonnull !4698, !noundef !4698
  %i.bxu = atomicrmw sub ptr %i.bxt, i64 1 release, align 8, !dbg !109158, !noalias !107476
  %i.bxv = icmp eq i64 %i.bxu, 1, !dbg !109159
  br i1 %i.bxv, label %bb.agv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit460, !dbg !109159

bb.agv:                                           ; preds = %bb.agu
  fence acquire, !dbg !109160
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bxs) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit460 unwind label %bb.bn, !dbg !109161
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !109162 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader, !dbg !109235

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !4698, !noundef !4698
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4698, !noundef !4698 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4698 ; 4 uses
  %i.h = icmp samesign ult i64 %i.g, 4
  %i.i = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us
  %.sroa.0.09.us = phi i16 [ %i.w, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09.us, i1 true), !dbg !109236 ; 2 uses
  %i.l = zext nneg i16 %i.k to i64, !dbg !109237
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l, !dbg !109238
  %i.n = getelementptr i8, ptr %i.m, i64 1, !dbg !109238 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109225), !dbg !109239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109226), !dbg !109239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !109240
  %i.o = getelementptr i8, ptr %i.n, i64 %i.g, !dbg !109241
  call void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly %i.e, ptr noundef nonnull readonly %i.i), !dbg !109242
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !dbg !109243, !noalias !109227 ; 2 uses
  %.sroa.522.0.copyload.i.us = load ptr, ptr %.sroa.522.0..sroa_idx.i, align 8, !dbg !109243, !noalias !109227 ; 2 uses
  %.sroa.623.0.copyload.i.us = load i64, ptr %.sroa.623.0..sroa_idx.i, align 8, !dbg !109243, !noalias !109227 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !109243, !noalias !109227 ; 2 uses
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.623.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us), !dbg !109244
  %exitcond.not.i.us18.not = icmp ult i64 %.sroa.623.0.copyload.i.us, %.sroa.8.0.copyload.i.us, !dbg !109245
  br i1 %exitcond.not.i.us18.not, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfcROwRM8ZtH_11polars_plan.exit.i.us.preheader, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread6, !dbg !109245

_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfcROwRM8ZtH_11polars_plan.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.522.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfcROwRM8ZtH_11polars_plan.exit.i.us, !dbg !109246

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfcROwRM8ZtH_11polars_plan.exit.i.us
  %i.p = add i64 %.sroa.623.0.i.us19, 1, !dbg !109247 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us, !dbg !109245
  br i1 %exitcond.not.i.us, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread6, label %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfcROwRM8ZtH_11polars_plan.exit.i.us, !dbg !109245

_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfcROwRM8ZtH_11polars_plan.exit.i.us: ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfcROwRM8ZtH_11polars_plan.exit.i.us.preheader, %bb.b
  %.sroa.623.0.i.us19 = phi i64 [ %i.p, %bb.b ], [ %.sroa.623.0.copyload.i.us, %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfcROwRM8ZtH_11polars_plan.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.623.0.i.us19, !dbg !109248
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.522.0.copyload.i.us, i64 %.sroa.623.0.i.us19, !dbg !109249
  %i.s = load i8, ptr %i.q, align 1, !dbg !109250, !noundef !4698
  %i.t = load i8, ptr %i.r, align 1, !dbg !109251, !noundef !4698
  %.not21.i.us = icmp eq i8 %i.s, %i.t, !dbg !109246
  br i1 %.not21.i.us, label %bb.b, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, !dbg !109246

_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCsfcROwRM8ZtH_11polars_plan.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !109252
  %i.u = shl nuw i16 1, %i.k, !dbg !109253
  %i.v = xor i16 %i.u, -1, !dbg !109254
  %i.w = and i16 %.sroa.0.09.us, %i.v, !dbg !109255 ; 2 uses
  %i.x = icmp eq i16 %i.w, 0, !dbg !109256
  br i1 %i.x, label %.loopexit, label %.preheader.split.us, !dbg !109256

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.09 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.09, i1 true), !dbg !109236 ; 2 uses
  %i.z = zext nneg i16 %i.y to i64, !dbg !109237
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z, !dbg !109238
  %i.ab = getelementptr i8, ptr %i.aa, i64 1, !dbg !109238 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109225), !dbg !109239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109226), !dbg !109239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !109240
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.g, !dbg !109241
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4, !dbg !109257 ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad, !dbg !109258
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit, !dbg !109258

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.030.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.029.i = phi ptr [ %i.ag, %bb.c ], [ %i.e, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.030.i, align 1, !dbg !109259, !alias.scope !109225, !noalias !109226
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.08.029.i, align 1, !dbg !109260, !alias.scope !109226, !noalias !109225
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.013.0.copyload.i, !dbg !109261
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, !dbg !109261

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.030.i, i64 4, !dbg !109262 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.029.i, i64 4, !dbg !109263
  %i.ah = icmp ult ptr %i.af, %i.ad, !dbg !109258
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit, !dbg !109258

_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread6: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !109252
  br label %.loopexit, !dbg !109239

_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread.loopexit8: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !109252
  br label %bb.d, !dbg !109239

_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.015.0.copyload.i = load i32, ptr %i.ad, align 1, !dbg !109264, !alias.scope !109225, !noalias !109226
  %.sroa.017.0.copyload.i = load i32, ptr %i.j, align 1, !dbg !109265, !alias.scope !109226, !noalias !109225
  %i.ai = icmp eq i32 %.sroa.015.0.copyload.i, %.sroa.017.0.copyload.i, !dbg !109266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !109252
  br i1 %i.ai, label %.loopexit, label %bb.d, !dbg !109239

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread6, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread6 ], [ false, %bb.a ], [ false, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ], !dbg !109267
  ret i1 %.sroa.03.0, !dbg !109268

bb.d:                                             ; preds = %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit.thread.loopexit8, %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y, !dbg !109253
  %i.ak = xor i16 %i.aj, -1, !dbg !109254
  %i.al = and i16 %.sroa.0.09, %i.ak, !dbg !109255 ; 2 uses
  %i.am = icmp eq i16 %i.al, 0, !dbg !109256
  br i1 %i.am, label %.loopexit, label %.preheader.split, !dbg !109256
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils31init_entries_from_uri_list_impl0CsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !109269 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 13 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [8 x i8], align 8                 ; 6 uses
  %i.r = alloca [72 x i8], align 8                ; 11 uses
  %i.s = alloca [72 x i8], align 8                ; 10 uses
  %i.t = alloca [16 x i8], align 8                ; 14 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.12179.sroa.6 = alloca [32 x i8], align 8 ; 5 uses
  %i.v = alloca [72 x i8], align 8                ; 10 uses
  %i.w = alloca [64 x i8], align 8                ; 8 uses
  %i.x = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.3.sroa.9.sroa.3 = alloca [32 x i8], align 8 ; 3 uses
  %.sroa.5133 = alloca [48 x i8], align 8         ; 3 uses
  %i.y = alloca [128 x i8], align 8               ; 12 uses
  %i.z = alloca [128 x i8], align 8               ; 15 uses
  %i.aa = alloca [40 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 115, !dbg !109796 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !109796, !range !5228, !noundef !4698
  switch i8 %i.ad, label %default.unreachable336 [
    i8 0, label %bb.b
    i8 1, label %bb.am
    i8 2, label %bb.an
    i8 3, label %bb.c
    i8 4, label %bb.bh
    i8 5, label %bb.bp
  ], !dbg !109796

default.unreachable336:                           ; preds = %bb.bu, %bb.bp, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 114, !dbg !109797 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 113, !dbg !109797 ; 3 uses
  store i8 0, ptr %i.af, align 1, !dbg !109797
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !109797 ; 3 uses
  store i8 0, ptr %i.ag, align 8, !dbg !109797
  store i8 1, ptr %i.ae, align 2, !dbg !109797
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !109797
  %i.ai = load <2 x ptr>, ptr %i.ah, align 8, !dbg !109797
  store <2 x ptr> %i.ai, ptr %1, align 8, !dbg !109797
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !109798 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !109798
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !109798, !align !4821, !noundef !4698
  store ptr %i.al, ptr %i.aj, align 8, !dbg !109798
  %i.am = invoke noundef i64 @_RNvXs2_NtNtCsgZ49sUHp3tW_5alloc5boxed4iterINtB7_3BoxDNtNtNtNtCscgRAwXFJnXP_4core4iter6traits10exact_size17ExactSizeIteratorp4ItemNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathNtNtBX_6marker4SendEL_EBP_3lenCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.e unwind label %bb.d, !dbg !109799

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !109796
  br label %bb.ap, !dbg !109800

bb.d:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.al, !dbg !109801

bb.e:                                             ; preds = %bb.b
  %i.ao = icmp eq i64 %i.am, 0, !dbg !109802
  br i1 %i.ao, label %bb.f, label %bb.g, !dbg !109802

bb.f:                                             ; preds = %bb.e, %bb.em
  %.sroa.10157.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.e ], [ %.sroa.10157.1, %bb.em ], !dbg !109803
  %.sroa.8146.0 = phi i64 [ 0, %bb.e ], [ %.sroa.8146.1, %bb.em ], !dbg !109803
  %.sroa.0140.0 = phi i64 [ 18, %bb.e ], [ %.sroa.0140.1, %bb.em ], !dbg !109803
  %i.ap = phi <2 x i64> [ <i64 0, i64 undef>, %bb.e ], [ %i.en, %bb.em ], !dbg !109803
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 114, !dbg !109804 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 2, !dbg !109804, !range !5104, !noundef !4698
  %i.as = trunc nuw i8 %i.ar to i1, !dbg !109804
  br i1 %i.as, label %bb.ep, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits10exact_size17ExactSizeIteratorp4ItemNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathNtNtB4_6marker4SendEL_EECsfcROwRM8ZtH_11polars_plan.exit, !dbg !109804

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.ae, align 2, !dbg !109805
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !109805 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !109806 ; 3 uses
  %i.av = load <2 x ptr>, ptr %1, align 8, !dbg !109805
  store <2 x ptr> %i.av, ptr %i.au, align 8, !dbg !109806, !alias.scope !109693, !noalias !109694
  store i64 0, ptr %i.at, align 8, !dbg !109806, !alias.scope !109693, !noalias !109694
  store i8 1, ptr %i.af, align 1, !dbg !109807
  %i.aw = invoke { ptr, i64 } @_RNvXNtNtCsgZ49sUHp3tW_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCscgRAwXFJnXP_4core4iter6traits10exact_size17ExactSizeIteratorp4ItemNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathNtNtBU_6marker4SendEL_ENtNtBQ_8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.au)
          to label %bb.i unwind label %bb.h, !dbg !109808 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit119, !dbg !109809

bb.i:                                             ; preds = %bb.g
  %i.ay = extractvalue { ptr, i64 } %i.aw, 0, !dbg !109810 ; 5 uses
  %i.az = extractvalue { ptr, i64 } %i.aw, 1, !dbg !109810 ; 3 uses
  store i64 1, ptr %i.at, align 8, !dbg !109811, !alias.scope !109698, !noalias !109699
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !109811 ; 2 uses
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !109811, !alias.scope !109698, !noalias !109699
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %1, i64 80, !dbg !109811
  store i64 %i.az, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !109811, !alias.scope !109698, !noalias !109699
  %.not.i63 = icmp eq ptr %i.ay, null, !dbg !109812
  br i1 %.not.i63, label %bb.j, label %_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionRNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathE6unwrapCsfcROwRM8ZtH_11polars_plan.exit, !dbg !109813, !prof !4710

end_hunk_1
