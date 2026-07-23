inline.NumInlined: 1165
inline.NumDeleted: 366
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8simdjson8westmere25dom_parser_implementation6stage1EPKhmNS_11stage1_modeE:bb.a
  %i.ll = icmp samesign ugt i64 %i.ir, 12
  br i1 %i.ll, label %bb.q, label %.loopexit1483.i, !prof !60

bb.q:                                             ; preds = %bb.p
  %i.lm = add i64 %i.lg, -2
  %i.ln = and i64 %i.lm, %i.lg                    ; 3 uses
  %i.lo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ln, i1 true)
  %i.lp = trunc nuw nsw i64 %i.lo to i32
  %i.lq = or disjoint i32 %i.ip, %i.lp
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 48
  store i32 %i.lq, ptr %i.lr, align 4
  %i.ls = add i64 %i.ln, -2
  %i.lt = and i64 %i.ls, %i.ln                    ; 3 uses
  %i.lu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lt, i1 true)
  %i.lv = trunc nuw nsw i64 %i.lu to i32
  %i.lw = or disjoint i32 %i.ip, %i.lv
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 52
  store i32 %i.lw, ptr %i.lx, align 4
  %i.ly = add i64 %i.lt, -2
  %i.lz = and i64 %i.ly, %i.lt                    ; 3 uses
  %i.ma = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.lz, i1 true)
  %i.mb = trunc nuw nsw i64 %i.ma to i32
  %i.mc = or disjoint i32 %i.ip, %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 56
  store i32 %i.mc, ptr %i.md, align 4
  %i.me = add i64 %i.lz, -2
  %i.mf = and i64 %i.me, %i.lz                    ; 3 uses
  %i.mg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mf, i1 true)
  %i.mh = trunc nuw nsw i64 %i.mg to i32
  %i.mi = or disjoint i32 %i.ip, %i.mh
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 60
  store i32 %i.mi, ptr %i.mj, align 4
  %i.mk = icmp samesign ugt i64 %i.ir, 16
  br i1 %i.mk, label %bb.r, label %.loopexit1483.i, !prof !60

bb.r:                                             ; preds = %bb.q
  %i.ml = add i64 %i.mf, -1
  %i.mm = and i64 %i.ml, %i.mf                    ; 3 uses
  %i.mn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.mm, i1 true)
  %i.mo = trunc nuw nsw i64 %i.mn to i32
  %i.mp = or disjoint i32 %i.ip, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 64
  store i32 %i.mp, ptr %i.mq, align 4
  %i.mr = add i64 %i.mm, -2
  %i.ms = and i64 %i.mr, %i.mm                    ; 3 uses
  %i.mt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ms, i1 true)
  %i.mu = trunc nuw nsw i64 %i.mt to i32
  %i.mv = or disjoint i32 %i.ip, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 68
  store i32 %i.mv, ptr %i.mw, align 4
  %i.mx = add i64 %i.ms, -2
  %i.my = and i64 %i.mx, %i.ms                    ; 3 uses
  %i.mz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.my, i1 true)
  %i.na = trunc nuw nsw i64 %i.mz to i32
  %i.nb = or disjoint i32 %i.ip, %i.na
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 72
  store i32 %i.nb, ptr %i.nc, align 4
  %i.nd = add i64 %i.my, -2
  %i.ne = and i64 %i.nd, %i.my                    ; 3 uses
  %i.nf = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ne, i1 true)
  %i.ng = trunc nuw nsw i64 %i.nf to i32
  %i.nh = or disjoint i32 %i.ip, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 76
  store i32 %i.nh, ptr %i.ni, align 4
  %i.nj = icmp samesign ugt i64 %i.ir, 20
  br i1 %i.nj, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer21write_indexes_steppedILi0ELi24ELi4EEEijRmi.exit90.i, label %.loopexit1483.i, !prof !60

_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer21write_indexes_steppedILi0ELi24ELi4EEEijRmi.exit90.i: ; preds = %bb.r
  %i.nk = add i64 %i.ne, -2
  %i.nl = and i64 %i.nk, %i.ne                    ; 3 uses
  %i.nm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nl, i1 true)
  %i.nn = trunc nuw nsw i64 %i.nm to i32
  %i.no = or disjoint i32 %i.ip, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 80
  store i32 %i.no, ptr %i.np, align 4
  %i.nq = add i64 %i.nl, -1
  %i.nr = and i64 %i.nq, %i.nl                    ; 3 uses
  %i.ns = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nr, i1 true)
  %i.nt = trunc nuw nsw i64 %i.ns to i32
  %i.nu = or disjoint i32 %i.ip, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 84
  store i32 %i.nu, ptr %i.nv, align 4
  %i.nw = add i64 %i.nr, -2
  %i.nx = and i64 %i.nw, %i.nr                    ; 3 uses
  %i.ny = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.nx, i1 true)
  %i.nz = trunc nuw nsw i64 %i.ny to i32
  %i.oa = or disjoint i32 %i.ip, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 88
  store i32 %i.oa, ptr %i.ob, align 4
  %i.oc = add i64 %i.nx, -2
  %i.od = and i64 %i.oc, %i.nx                    ; 3 uses
  %i.oe = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.od, i1 true)
  %i.of = trunc nuw nsw i64 %i.oe to i32
  %i.og = or disjoint i32 %i.ip, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.59.01497.i, i64 92
  store i32 %i.og, ptr %i.oh, align 4
  %i.oi = icmp samesign ugt i64 %i.ir, 24
  br i1 %i.oi, label %.lr.ph.i.preheader, label %.loopexit1483.i, !prof !74

.lr.ph.i.preheader:                               ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer21write_indexes_steppedILi0ELi24ELi4EEEijRmi.exit90.i
  %i.oj = add i64 %i.od, -2
  %i.ok = and i64 %i.oj, %i.od                    ; 2 uses
  %xtraiter = and i64 %i.ir, 1
  %i.ol = icmp eq i64 %i.ir, 25
  br i1 %i.ol, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %i.om = and i64 %i.ir, 126
  %i.on = add nsw i64 %i.om, -26
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 24, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.014161490.i = phi i64 [ %i.ok, %.lr.ph.i.preheader.new ], [ %i.pa, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ] ; 2 uses
  %i.oo = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.014161490.i, i1 true)
  %i.op = trunc nuw nsw i64 %i.oo to i32
  %i.oq = or disjoint i32 %i.ip, %i.op
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01497.i, i64 %indvars.iv.i
  store i32 %i.oq, ptr %i.or, align 4
  %i.os = add i64 %.014161490.i, -1
  %i.ot = and i64 %i.os, %.014161490.i            ; 3 uses
  %i.ou = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ot, i1 true)
  %i.ov = trunc nuw nsw i64 %i.ou to i32
  %i.ow = or disjoint i32 %i.ip, %i.ov
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01497.i, i64 %indvars.iv.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  store i32 %i.ow, ptr %i.oy, align 4
  %i.oz = add i64 %i.ot, -2
  %i.pa = and i64 %i.oz, %i.ot                    ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.on
  br i1 %niter.ncmp.1, label %.loopexit1483.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !223

.loopexit1483.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit1483.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit1483.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 24, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %.loopexit1483.i.loopexit.unr-lcssa ]
  %.014161490.i.epil.init = phi i64 [ %i.ok, %.lr.ph.i.preheader ], [ %i.pa, %.loopexit1483.i.loopexit.unr-lcssa ]
  %lcmp.mod89 = trunc i64 %i.ir to i1
  tail call void @llvm.assume(i1 %lcmp.mod89)
  %i.pb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.014161490.i.epil.init, i1 true)
  %i.pc = trunc nuw nsw i64 %i.pb to i32
  %i.pd = or disjoint i32 %i.ip, %i.pc
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01497.i, i64 %indvars.iv.i.epil.init
  store i32 %i.pd, ptr %i.pe, align 4
  br label %.loopexit1483.i

.loopexit1483.i:                                  ; preds = %.lr.ph.i.epil.preheader, %.loopexit1483.i.loopexit.unr-lcssa, %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer21write_indexes_steppedILi0ELi24ELi4EEEijRmi.exit90.i, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.59.01497.i, i64 %i.ir
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i: ; preds = %.loopexit1483.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4nextERKNS1_4simd8simd8x64IhEERKNS2_10json_blockEm.exit.i
  %.sroa.59.2.i = phi ptr [ %.sroa.59.01497.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4nextERKNS1_4simd8simd8x64IhEERKNS2_10json_blockEm.exit.i ], [ %i.pf, %.loopexit1483.i ] ; 2 uses
  %i.pg = xor i64 %i.ek, -1
  %i.ph = and i64 %i.pg, %i.eg
  %i.pi = or i64 %i.ph, %i.ee
  %i.pj = xor i64 %i.cg, %i.ck
  %i.pk = xor i64 %i.pj, -1
  %i.pl = and i64 %i.pi, %i.pk                    ; 2 uses
  %i.pm = and i64 %i.ck, %i.fa
  %i.pn = or i64 %i.pm, %.sroa.148.01495.i        ; 2 uses
  %i.po = add nuw i64 %.sroa.11.01492.i, 64       ; 4 uses
  %i.pp = icmp ult i64 %i.po, %spec.select.i.i
  br i1 %i.pp, label %.lr.ph1502.i, label %._crit_edge.i, !llvm.loop !224

._crit_edge.thread.i:                             ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i
  %.ph.i = phi ptr [ %i.ad, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.af, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.0131581.ph.i = phi i64 [ %.013.ph.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %.013.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  %.sroa.59.0.lcssa.ph.i = phi ptr [ %i.ae, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.thread.i ], [ %i.ag, %_ZN8simdjson8westmere12_GLOBAL__N_16stage117trim_partial_utf8EPKhm.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i

._crit_edge.i:                                    ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit73.i
  %i.pq = bitcast <2 x i64> %.sroa.48.1.i to <16 x i8>
  %i.pr = or <2 x i64> %.sroa.23148.1.i, %.sroa.53.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ps = icmp eq i64 %.013.i, %i.po
  br i1 %i.ps, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer6finishERNS0_25dom_parser_implementationEmmNS_11stage1_modeE.exit.i, label %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i

_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i: ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.sroa.18.0.lcssa1604.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.cl, %._crit_edge.i ]
  %.sroa.23148.0.lcssa1603.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %.sroa.23148.1.i, %._crit_edge.i ]
  %.sroa.48.0.lcssa1602.i = phi <16 x i8> [ zeroinitializer, %._crit_edge.thread.i ], [ %i.pq, %._crit_edge.i ] ; 3 uses
  %.sroa.53.0.lcssa1601.i = phi <2 x i64> [ zeroinitializer, %._crit_edge.thread.i ], [ %i.pr, %._crit_edge.i ]
  %.sroa.59.0.lcssa1600.i = phi ptr [ %.sroa.59.0.lcssa.ph.i, %._crit_edge.thread.i ], [ %.sroa.59.2.i, %._crit_edge.i ] ; 29 uses
  %.sroa.142.0.lcssa1599.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.pl, %._crit_edge.i ] ; 5 uses
  %.sroa.148.0.lcssa1598.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.pn, %._crit_edge.i ]
  %.sroa.8.0.lcssa1597.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %.sroa.8.1.i, %._crit_edge.i ] ; 3 uses
  %.sroa.0.0.lcssa1596.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.el, %._crit_edge.i ]
  %.sroa.11.0.lcssa1595.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.po, %._crit_edge.i ] ; 30 uses
  %.01315811594.i = phi i64 [ %.0131581.ph.i, %._crit_edge.thread.i ], [ %.013.i, %._crit_edge.i ] ; 3 uses
  %i.pt = phi ptr [ %.ph.i, %._crit_edge.thread.i ], [ %i.af, %._crit_edge.i ] ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 32, i64 64, i1 false)
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.lcssa1595.i
  %i.pv = sub i64 %.01315811594.i, %.sroa.11.0.lcssa1595.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.pu, i64 %i.pv, i1 false)
  %.0..0..0..0..0..i = load <2 x i64>, ptr %i.a, align 16 ; 4 uses
  %.16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16..16..16..16..i = load <2 x i64>, ptr %.16..16..16..16..16..sroa_idx, align 16 ; 4 uses
  %.32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..i = load <2 x i64>, ptr %.32..32..32..32..32..sroa_idx, align 16 ; 4 uses
  %.48..48..48..48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.48..48..48..48..48..i = load <2 x i64>, ptr %.48..48..48..48..48..sroa_idx, align 16 ; 4 uses
  %i.pw = bitcast <2 x i64> %.0..0..0..0..0..i to <16 x i8> ; 12 uses
  %i.px = icmp eq <16 x i8> %i.pw, splat (i8 92)
  %i.py = bitcast <2 x i64> %.16..16..16..16..16..i to <16 x i8> ; 12 uses
  %i.pz = icmp eq <16 x i8> %i.py, splat (i8 92)
  %i.qa = bitcast <2 x i64> %.32..32..32..32..32..i to <16 x i8> ; 12 uses
  %i.qb = icmp eq <16 x i8> %i.qa, splat (i8 92)
  %i.qc = bitcast <2 x i64> %.48..48..48..48..48..i to <16 x i8> ; 10 uses
  %i.qd = icmp eq <16 x i8> %i.qc, splat (i8 92)
  %i.qe = bitcast <16 x i1> %i.px to i16
  %i.qf = bitcast <16 x i1> %i.pz to i16
  %i.qg = bitcast <16 x i1> %i.qb to i16
  %i.qh = bitcast <16 x i1> %i.qd to i16
  %i.qi = insertelement <4 x i16> poison, i16 %i.qe, i64 0
  %i.qj = insertelement <4 x i16> %i.qi, i16 %i.qf, i64 1
  %i.qk = insertelement <4 x i16> %i.qj, i16 %i.qg, i64 2
  %i.ql = insertelement <4 x i16> %i.qk, i16 %i.qh, i64 3
  %i.qm = bitcast <4 x i16> %i.ql to i64          ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.qm, 0
  br i1 %.not.i.i.i, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %i.qn = xor i64 %.sroa.8.0.lcssa1597.i, -1
  %i.qo = and i64 %i.qm, %i.qn                    ; 2 uses
  %i.qp = shl i64 %i.qo, 1
  %i.qq = or i64 %i.qp, -6148914691236517206
  %i.qr = sub i64 %i.qq, %i.qo
  %i.qs = or i64 %.sroa.8.0.lcssa1597.i, %i.qm
  %i.qt = xor i64 %i.qs, %i.qr
  %i.qu = xor i64 %i.qt, -6148914691236517206
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i: ; preds = %bb.s, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %.sroa.0.0.i.i.i = phi i64 [ %i.qu, %bb.s ], [ %.sroa.8.0.lcssa1597.i, %_ZNK8simdjson8westmere12_GLOBAL__N_16stage116buf_block_readerILm64EE13get_remainderEPh.exit.i ]
  %i.qv = icmp eq <16 x i8> %i.pw, splat (i8 34)
  %i.qw = icmp eq <16 x i8> %i.py, splat (i8 34)
  %i.qx = icmp eq <16 x i8> %i.qa, splat (i8 34)
  %i.qy = icmp eq <16 x i8> %i.qc, splat (i8 34)
  %i.qz = bitcast <16 x i1> %i.qv to i16
  %i.ra = bitcast <16 x i1> %i.qw to i16
  %i.rb = bitcast <16 x i1> %i.qx to i16
  %i.rc = bitcast <16 x i1> %i.qy to i16
  %i.rd = insertelement <4 x i16> poison, i16 %i.qz, i64 0
  %i.re = insertelement <4 x i16> %i.rd, i16 %i.ra, i64 1
  %i.rf = insertelement <4 x i16> %i.re, i16 %i.rb, i64 2
  %i.rg = insertelement <4 x i16> %i.rf, i16 %i.rc, i64 3
  %i.rh = bitcast <4 x i16> %i.rg to i64
  %i.ri = xor i64 %.sroa.0.0.i.i.i, -1
  %i.rj = and i64 %i.rh, %i.ri                    ; 3 uses
  %i.rk = insertelement <2 x i64> poison, i64 %i.rj, i64 0
  %i.rl = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.rk, <2 x i64> <i64 -1, i64 poison>, i8 0)
  %i.rm = extractelement <2 x i64> %i.rl, i64 0
  %i.rn = xor i64 %i.rm, %.sroa.18.0.lcssa1604.i  ; 3 uses
  %i.ro = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.pw)
  %i.rp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.py)
  %i.rq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.qa)
  %i.rr = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 32, i8 100, i8 100, i8 100, i8 17, i8 100, i8 113, i8 2, i8 100, i8 9, i8 10, i8 112, i8 100, i8 13, i8 100, i8 100>, <16 x i8> %i.qc)
  %i.rs = icmp eq <16 x i8> %i.rq, %i.qa
  %i.rt = icmp eq <16 x i8> %i.rr, %i.qc
  %i.ru = bitcast <16 x i1> %i.rs to i16
  %i.rv = zext i16 %i.ru to i64
  %i.rw = bitcast <16 x i1> %i.rt to i16
  %i.rx = zext i16 %i.rw to i64
  %i.ry = shufflevector <16 x i8> %i.ro, <16 x i8> %i.rp, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %4 = shufflevector <16 x i8> %i.pw, <16 x i8> %i.py, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.rz = icmp eq <32 x i8> %i.ry, %4
  %i.sa = bitcast <32 x i1> %i.rz to i32
  %i.sb = zext i32 %i.sa to i64
  %i.sc = shl nuw nsw i64 %i.rv, 32
  %i.sd = or disjoint i64 %i.sc, %i.sb
  %i.se = shl nuw i64 %i.rx, 48
  %i.sf = or disjoint i64 %i.sd, %i.se
  %i.sg = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.pw)
  %i.sh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.py)
  %i.si = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.qa)
  %i.sj = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 58, i8 123, i8 44, i8 125, i8 0, i8 0>, <16 x i8> %i.qc)
  %i.sk = bitcast <2 x i64> %.32..32..32..32..32..i to <16 x i8>
  %i.sl = or <16 x i8> %i.sk, splat (i8 32)
  %i.sm = icmp eq <16 x i8> %i.sl, %i.si
  %i.sn = bitcast <2 x i64> %.48..48..48..48..48..i to <16 x i8>
  %i.so = or <16 x i8> %i.sn, splat (i8 32)
  %i.sp = icmp eq <16 x i8> %i.so, %i.sj
  %i.sq = bitcast <16 x i1> %i.sm to i16
  %i.sr = zext i16 %i.sq to i64
  %i.ss = bitcast <16 x i1> %i.sp to i16
  %i.st = zext i16 %i.ss to i64
  %i.su = shufflevector <2 x i64> %.0..0..0..0..0..i, <2 x i64> %.16..16..16..16..16..i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sv = bitcast <4 x i64> %i.su to <32 x i8>
  %i.sw = or <32 x i8> %i.sv, splat (i8 32)
  %i.sx = shufflevector <16 x i8> %i.sg, <16 x i8> %i.sh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.sy = icmp eq <32 x i8> %i.sw, %i.sx
  %i.sz = bitcast <32 x i1> %i.sy to i32
  %i.ta = zext i32 %i.sz to i64
  %i.tb = shl nuw nsw i64 %i.sr, 32
  %i.tc = or disjoint i64 %i.tb, %i.ta
  %i.td = shl nuw i64 %i.st, 48
  %i.te = or disjoint i64 %i.tc, %i.td            ; 2 uses
  %i.tf = or i64 %i.te, %i.sf
  %i.tg = xor i64 %i.tf, -1                       ; 2 uses
  %i.th = xor i64 %i.rj, -1
  %i.ti = and i64 %i.tg, %i.th
  %i.tj = shl i64 %i.ti, 1
  %i.tk = or disjoint i64 %i.tj, %.sroa.0.0.lcssa1596.i
  %i.tl = icmp ult <16 x i8> %i.qa, splat (i8 32)
  %i.tm = icmp ult <16 x i8> %i.qc, splat (i8 32)
  %i.tn = bitcast <16 x i1> %i.tl to i16
  %i.to = zext i16 %i.tn to i64
  %i.tp = bitcast <16 x i1> %i.tm to i16
  %i.tq = zext i16 %i.tp to i64
  %5 = shufflevector <16 x i8> %i.pw, <16 x i8> %i.py, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.tr = icmp ult <32 x i8> %5, splat (i8 32)
  %i.ts = bitcast <32 x i1> %i.tr to i32
  %i.tt = zext i32 %i.ts to i64
  %i.tu = shl nuw nsw i64 %i.to, 32
  %i.tv = or disjoint i64 %i.tu, %i.tt
  %i.tw = shl nuw i64 %i.tq, 48
  %i.tx = or disjoint i64 %i.tv, %i.tw
  %i.ty = or <2 x i64> %.16..16..16..16..16..i, %.0..0..0..0..0..i
  %i.tz = or <2 x i64> %i.ty, %.32..32..32..32..32..i
  %i.ua = or <2 x i64> %i.tz, %.48..48..48..48..48..i
  %i.ub = bitcast <2 x i64> %i.ua to <16 x i8>
  %i.uc = icmp slt <16 x i8> %i.ub, zeroinitializer
  %i.ud = bitcast <16 x i1> %i.uc to i16
  %i.ue = icmp eq i16 %i.ud, 0
  br i1 %i.ue, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4nextERKNS1_4simd8simd8x64IhEERKNS2_10json_blockEm.exit70.i, label %bb.t, !prof !73

bb.t:                                             ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %i.uf = shufflevector <16 x i8> %.sroa.48.0.lcssa1602.i, <16 x i8> %i.pw, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.ug = bitcast <16 x i8> %i.uf to <8 x i16>
  %i.uh = lshr <8 x i16> %i.ug, splat (i16 4)
  %i.ui = bitcast <8 x i16> %i.uh to <16 x i8>
  %i.uj = and <16 x i8> %i.ui, splat (i8 15)
  %i.uk = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.uj)
  %i.ul = and <16 x i8> %i.uf, splat (i8 15)
  %i.um = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.ul)
  %i.un = bitcast <2 x i64> %.0..0..0..0..0..i to <8 x i16>
  %i.uo = lshr <8 x i16> %i.un, splat (i16 4)
  %i.up = bitcast <8 x i16> %i.uo to <16 x i8>
  %i.uq = and <16 x i8> %i.up, splat (i8 15)
  %i.ur = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.uq)
  %i.us = and <16 x i8> %i.um, %i.uk
  %i.ut = and <16 x i8> %i.us, %i.ur
  %i.uu = shufflevector <16 x i8> %.sroa.48.0.lcssa1602.i, <16 x i8> %i.pw, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.uv = shufflevector <16 x i8> %.sroa.48.0.lcssa1602.i, <16 x i8> %i.pw, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.uw = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.uu, <16 x i8> splat (i8 96))
  %i.ux = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.uv, <16 x i8> splat (i8 112))
  %i.uy = or <16 x i8> %i.uw, %i.ux
  %.inner69 = and <16 x i8> %i.uy, splat (i8 -128)
  %.inner70 = xor <16 x i8> %.inner69, %i.ut
  %i.uz = bitcast <16 x i8> %.inner70 to <2 x i64>
  %i.va = shufflevector <16 x i8> %i.pw, <16 x i8> %i.py, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.vb = bitcast <16 x i8> %i.va to <8 x i16>
  %i.vc = lshr <8 x i16> %i.vb, splat (i16 4)
  %i.vd = bitcast <8 x i16> %i.vc to <16 x i8>
  %i.ve = and <16 x i8> %i.vd, splat (i8 15)
  %i.vf = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.ve)
  %i.vg = and <16 x i8> %i.va, splat (i8 15)
  %i.vh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.vg)
  %i.vi = bitcast <2 x i64> %.16..16..16..16..16..i to <8 x i16>
  %i.vj = lshr <8 x i16> %i.vi, splat (i16 4)
  %i.vk = bitcast <8 x i16> %i.vj to <16 x i8>
  %i.vl = and <16 x i8> %i.vk, splat (i8 15)
  %i.vm = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.vl)
  %i.vn = and <16 x i8> %i.vh, %i.vf
  %i.vo = and <16 x i8> %i.vn, %i.vm
  %i.vp = shufflevector <16 x i8> %i.pw, <16 x i8> %i.py, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.vq = shufflevector <16 x i8> %i.pw, <16 x i8> %i.py, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.vr = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.vp, <16 x i8> splat (i8 96))
  %i.vs = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.vq, <16 x i8> splat (i8 112))
  %i.vt = or <16 x i8> %i.vr, %i.vs
  %.inner73 = and <16 x i8> %i.vt, splat (i8 -128)
  %.inner74 = xor <16 x i8> %.inner73, %i.vo
  %i.vu = bitcast <16 x i8> %.inner74 to <2 x i64>
  %i.vv = shufflevector <16 x i8> %i.py, <16 x i8> %i.qa, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.vw = bitcast <16 x i8> %i.vv to <8 x i16>
  %i.vx = lshr <8 x i16> %i.vw, splat (i16 4)
  %i.vy = bitcast <8 x i16> %i.vx to <16 x i8>
  %i.vz = and <16 x i8> %i.vy, splat (i8 15)
  %i.wa = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.vz)
  %i.wb = and <16 x i8> %i.vv, splat (i8 15)
  %i.wc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.wb)
  %i.wd = bitcast <2 x i64> %.32..32..32..32..32..i to <8 x i16>
  %i.we = lshr <8 x i16> %i.wd, splat (i16 4)
  %i.wf = bitcast <8 x i16> %i.we to <16 x i8>
  %i.wg = and <16 x i8> %i.wf, splat (i8 15)
  %i.wh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.wg)
  %i.wi = and <16 x i8> %i.wc, %i.wa
  %i.wj = and <16 x i8> %i.wi, %i.wh
  %i.wk = shufflevector <16 x i8> %i.py, <16 x i8> %i.qa, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.wl = shufflevector <16 x i8> %i.py, <16 x i8> %i.qa, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.wm = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.wk, <16 x i8> splat (i8 96))
  %i.wn = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.wl, <16 x i8> splat (i8 112))
  %i.wo = or <16 x i8> %i.wm, %i.wn
  %.inner77 = and <16 x i8> %i.wo, splat (i8 -128)
  %.inner78 = xor <16 x i8> %.inner77, %i.wj
  %i.wp = bitcast <16 x i8> %.inner78 to <2 x i64>
  %i.wq = shufflevector <16 x i8> %i.qa, <16 x i8> %i.qc, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.wr = bitcast <16 x i8> %i.wq to <8 x i16>
  %i.ws = lshr <8 x i16> %i.wr, splat (i16 4)
  %i.wt = bitcast <8 x i16> %i.ws to <16 x i8>
  %i.wu = and <16 x i8> %i.wt, splat (i8 15)
  %i.wv = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.wu)
  %i.ww = and <16 x i8> %i.wq, splat (i8 15)
  %i.wx = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.ww)
  %i.wy = bitcast <2 x i64> %.48..48..48..48..48..i to <8 x i16>
  %i.wz = lshr <8 x i16> %i.wy, splat (i16 4)
  %i.xa = bitcast <8 x i16> %i.wz to <16 x i8>
  %i.xb = and <16 x i8> %i.xa, splat (i8 15)
  %i.xc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.xb)
  %i.xd = and <16 x i8> %i.wx, %i.wv
  %i.xe = and <16 x i8> %i.xd, %i.xc
  %i.xf = shufflevector <16 x i8> %i.qa, <16 x i8> %i.qc, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.xg = shufflevector <16 x i8> %i.qa, <16 x i8> %i.qc, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.xh = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.xf, <16 x i8> splat (i8 96))
  %i.xi = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.xg, <16 x i8> splat (i8 112))
  %i.xj = or <16 x i8> %i.xh, %i.xi
  %.inner81 = and <16 x i8> %i.xj, splat (i8 -128)
  %.inner82 = xor <16 x i8> %.inner81, %i.xe
  %i.xk = bitcast <16 x i8> %.inner82 to <2 x i64>
  %i.xl = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.qc, <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -17, i8 -33, i8 -65>)
  %i.xm = bitcast <16 x i8> %i.xl to <2 x i64>
  %i.xn = or <2 x i64> %.sroa.23148.0.lcssa1603.i, %i.xm
  %i.xo = or <2 x i64> %i.xn, %i.uz
  %i.xp = or <2 x i64> %i.xo, %i.vu
  %i.xq = or <2 x i64> %i.xp, %i.wp
  %i.xr = or <2 x i64> %i.xq, %i.xk
  br label %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4nextERKNS1_4simd8simd8x64IhEERKNS2_10json_blockEm.exit70.i

_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4nextERKNS1_4simd8simd8x64IhEERKNS2_10json_blockEm.exit70.i: ; preds = %bb.t, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i
  %.sroa.23148.2.i = phi <2 x i64> [ %i.xr, %bb.t ], [ %.sroa.53.0.lcssa1601.i, %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4stepILm64EEEvPKhRNS2_16buf_block_readerIXT_EEE.exit.i ] ; 2 uses
  %i.xs = trunc i64 %.sroa.11.0.lcssa1595.i to i32
  %i.xt = add i32 %i.xs, -64                      ; 27 uses
  %i.xu = icmp eq i64 %.sroa.142.0.lcssa1599.i, 0
  br i1 %i.xu, label %_ZN8simdjson8westmere12_GLOBAL__N_16stage111bit_indexer5writeEjm.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZN8simdjson8westmere12_GLOBAL__N_16stage123json_structural_indexer4nextERKNS1_4simd8simd8x64IhEERKNS2_10json_blockEm.exit70.i
  %i.xv = tail call noundef range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.sroa.142.0.lcssa1599.i) ; 11 uses
  %i.xw = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sroa.142.0.lcssa1599.i, i1 true)
  %i.xx = trunc nuw nsw i64 %i.xw to i32
  %i.xy = or disjoint i32 %i.xt, %i.xx
  store i32 %i.xy, ptr %.sroa.59.0.lcssa1600.i, align 4
  %i.xz = add i64 %.sroa.142.0.lcssa1599.i, -1
  %i.ya = and i64 %i.xz, %.sroa.142.0.lcssa1599.i ; 3 uses
  %i.yb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ya, i1 true)
  %i.yc = trunc nuw nsw i64 %i.yb to i32
  %i.yd = or disjoint i32 %i.xt, %i.yc
  %i.ye = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1600.i, i64 4
  store i32 %i.yd, ptr %i.ye, align 4
  %i.yf = add i64 %i.ya, -2
  %i.yg = and i64 %i.yf, %i.ya                    ; 3 uses
  %i.yh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yg, i1 true)
  %i.yi = trunc nuw nsw i64 %i.yh to i32
  %i.yj = or disjoint i32 %i.xt, %i.yi
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1600.i, i64 8
  store i32 %i.yj, ptr %i.yk, align 4
  %i.yl = add i64 %i.yg, -2
  %i.ym = and i64 %i.yl, %i.yg                    ; 3 uses
  %i.yn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ym, i1 true)
  %i.yo = trunc nuw nsw i64 %i.yn to i32
  %i.yp = or disjoint i32 %i.xt, %i.yo
  %i.yq = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1600.i, i64 12
  store i32 %i.yp, ptr %i.yq, align 4
  %i.yr = icmp samesign ugt i64 %i.xv, 4
  br i1 %i.yr, label %bb.v, label %.loopexit1481.i, !prof !60

bb.v:                                             ; preds = %bb.u
  %i.ys = add i64 %i.ym, -2
  %i.yt = and i64 %i.ys, %i.ym                    ; 3 uses
  %i.yu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yt, i1 true)
  %i.yv = trunc nuw nsw i64 %i.yu to i32
  %i.yw = or disjoint i32 %i.xt, %i.yv
  %i.yx = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1600.i, i64 16
  store i32 %i.yw, ptr %i.yx, align 4
  %i.yy = add i64 %i.yt, -2
  %i.yz = and i64 %i.yy, %i.yt                    ; 3 uses
  %i.za = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.yz, i1 true)
  %i.zb = trunc nuw nsw i64 %i.za to i32
  %i.zc = or disjoint i32 %i.xt, %i.zb
  %i.zd = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1600.i, i64 20
  store i32 %i.zc, ptr %i.zd, align 4
  %i.ze = add i64 %i.yz, -1
  %i.zf = and i64 %i.ze, %i.yz                    ; 3 uses
  %i.zg = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zf, i1 true)
  %i.zh = trunc nuw nsw i64 %i.zg to i32
  %i.zi = or disjoint i32 %i.xt, %i.zh
  %i.zj = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1600.i, i64 24
  store i32 %i.zi, ptr %i.zj, align 4
  %i.zk = add i64 %i.zf, -2
  %i.zl = and i64 %i.zk, %i.zf                    ; 3 uses
  %i.zm = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zl, i1 true)
  %i.zn = trunc nuw nsw i64 %i.zm to i32
  %i.zo = or disjoint i32 %i.xt, %i.zn
  %i.zp = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1600.i, i64 28
  store i32 %i.zo, ptr %i.zp, align 4
  %i.zq = icmp samesign ugt i64 %i.xv, 8
  br i1 %i.zq, label %bb.w, label %.loopexit1481.i, !prof !60

bb.w:                                             ; preds = %bb.v
  %i.zr = add i64 %i.zl, -2
  %i.zs = and i64 %i.zr, %i.zl                    ; 3 uses
  %i.zt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zs, i1 true)
  %i.zu = trunc nuw nsw i64 %i.zt to i32
  %i.zv = or disjoint i32 %i.xt, %i.zu
  %i.zw = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1600.i, i64 32
  store i32 %i.zv, ptr %i.zw, align 4
  %i.zx = add i64 %i.zs, -2
  %i.zy = and i64 %i.zx, %i.zs                    ; 3 uses
  %i.zz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.zy, i1 true)
  %i.aaa = trunc nuw nsw i64 %i.zz to i32
  %i.aab = or disjoint i32 %i.xt, %i.aaa
  %i.aac = getelementptr inbounds nuw i8, ptr %.sroa.59.0.lcssa1600.i, i64 36
end_hunk_0
