inline.NumInlined: 1335
inline.NumDeleted: 466
begin_hunk_0_@_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sj_0Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.l = load i64, ptr %i.k, align 8, !noundef !14
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !14, !nonnull !14
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sl_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00si_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00si_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !14, !noundef !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !14
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !14, !nonnull !14
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [288 x i8], align 8               ; 4 uses
  %i.l = alloca [288 x i8], align 8               ; 6 uses
  %.sroa.4.i.i833 = alloca [54 x i8], align 2     ; 4 uses
  %.sroa.4.i.i821 = alloca [54 x i8], align 2     ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 5 uses
  %i.p = alloca [40 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.535.i.i = alloca [16 x i8], align 8      ; 8 uses
  %i.r = alloca [32 x i8], align 8                ; 10 uses
  %i.s = alloca [40 x i8], align 8                ; 11 uses
  %i.t = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.713.i = alloca [16 x i8], align 8        ; 7 uses
  %.sroa.10.i = alloca [16 x i8], align 8         ; 8 uses
  %.sroa.4.i.i733 = alloca [54 x i8], align 2     ; 4 uses
  %.sroa.4.i.i = alloca [54 x i8], align 2        ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [112 x i8], align 8              ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [16 x i8], align 8               ; 6 uses
  %i.ak = alloca [32 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [16 x i8], align 8               ; 6 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  %i.ap = alloca [112 x i8], align 8              ; 8 uses
  %i.aq = alloca [16 x i8], align 16              ; 10 uses
  %i.ar = alloca [16 x i8], align 8               ; 6 uses
  %i.as = alloca [16 x i8], align 8               ; 6 uses
  %i.at = alloca [32 x i8], align 8               ; 8 uses
  %i.au = alloca [24 x i8], align 8               ; 5 uses
  %i.av = alloca [16 x i8], align 8               ; 6 uses
  %i.aw = alloca [16 x i8], align 8               ; 6 uses
  %i.ax = alloca [32 x i8], align 8               ; 8 uses
  %i.ay = alloca [112 x i8], align 8              ; 5 uses
  %i.az = alloca [16 x i8], align 8               ; 6 uses
  %i.ba = alloca [16 x i8], align 8               ; 6 uses
  %i.bb = alloca [32 x i8], align 8               ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 5 uses
  %i.bd = alloca [16 x i8], align 8               ; 6 uses
  %i.be = alloca [16 x i8], align 8               ; 6 uses
  %i.bf = alloca [32 x i8], align 8               ; 8 uses
  %i.bg = alloca [112 x i8], align 8              ; 8 uses
  %i.bh = alloca [16 x i8], align 16              ; 12 uses
  %i.bi = alloca [24 x i8], align 8               ; 8 uses
  %i.bj = alloca [112 x i8], align 8              ; 5 uses
  %i.bk = alloca [8 x i8], align 8                ; 5 uses
  %i.bl = alloca [16 x i8], align 8               ; 6 uses
  %i.bm = alloca [32 x i8], align 8               ; 8 uses
  %i.bn = alloca [32 x i8], align 8               ; 8 uses
  %i.bo = alloca [24 x i8], align 8               ; 5 uses
  %i.bp = alloca [8 x i8], align 8                ; 5 uses
  %i.bq = alloca [16 x i8], align 8               ; 6 uses
  %i.br = alloca [32 x i8], align 8               ; 8 uses
  %i.bs = alloca [32 x i8], align 8               ; 9 uses
  %i.bt = alloca [112 x i8], align 8              ; 9 uses
  %i.bu = alloca [288 x i8], align 8              ; 3 uses
  %i.bv = alloca [288 x i8], align 8              ; 7 uses
  %i.bw = alloca [40 x i8], align 8               ; 5 uses
  %i.bx = alloca [1384 x i8], align 8             ; 9 uses
  %i.by = alloca [1424 x i8], align 8             ; 5 uses
  %i.bz = alloca [1424 x i8], align 8             ; 8 uses
  %i.ca = alloca [8 x i8], align 8                ; 5 uses
  %i.cb = alloca [16 x i8], align 8               ; 6 uses
  %i.cc = alloca [32 x i8], align 8               ; 8 uses
  %i.cd = alloca [24 x i8], align 8               ; 5 uses
  %i.ce = alloca [8 x i8], align 8                ; 5 uses
  %i.cf = alloca [16 x i8], align 8               ; 6 uses
  %i.cg = alloca [32 x i8], align 8               ; 9 uses
  %i.ch = alloca [16 x i8], align 8               ; 6 uses
  %i.ci = alloca [16 x i8], align 8               ; 6 uses
  %i.cj = alloca [16 x i8], align 8               ; 6 uses
  %i.ck = alloca [32 x i8], align 8               ; 8 uses
  %i.cl = alloca [24 x i8], align 8               ; 5 uses
  %i.cm = alloca [16 x i8], align 8               ; 6 uses
  %i.cn = alloca [16 x i8], align 8               ; 6 uses
  %i.co = alloca [16 x i8], align 8               ; 6 uses
  %i.cp = alloca [32 x i8], align 8               ; 9 uses
  %i.cq = alloca [16 x i8], align 8               ; 6 uses
  %i.cr = alloca [16 x i8], align 8               ; 6 uses
  %i.cs = alloca [32 x i8], align 8               ; 8 uses
  %i.ct = alloca [24 x i8], align 8               ; 5 uses
  %i.cu = alloca [16 x i8], align 8               ; 6 uses
  %i.cv = alloca [16 x i8], align 8               ; 6 uses
  %i.cw = alloca [32 x i8], align 8               ; 8 uses
  %i.cx = alloca [16 x i8], align 8               ; 6 uses
  %i.cy = alloca [16 x i8], align 8               ; 6 uses
  %i.cz = alloca [16 x i8], align 8               ; 6 uses
  %i.da = alloca [32 x i8], align 8               ; 8 uses
  %i.db = alloca [24 x i8], align 8               ; 5 uses
  %i.dc = alloca [16 x i8], align 8               ; 6 uses
  %i.dd = alloca [16 x i8], align 8               ; 6 uses
  %i.de = alloca [16 x i8], align 8               ; 6 uses
  %i.df = alloca [32 x i8], align 8               ; 9 uses
  %i.dg = alloca [16 x i8], align 8               ; 6 uses
  %i.dh = alloca [16 x i8], align 8               ; 6 uses
  %i.di = alloca [16 x i8], align 8               ; 6 uses
  %i.dj = alloca [32 x i8], align 8               ; 8 uses
  %i.dk = alloca [24 x i8], align 8               ; 5 uses
  %i.dl = alloca [16 x i8], align 8               ; 6 uses
  %i.dm = alloca [16 x i8], align 8               ; 6 uses
  %i.dn = alloca [16 x i8], align 8               ; 6 uses
  %i.do = alloca [32 x i8], align 8               ; 8 uses
  %i.dp = alloca [112 x i8], align 8              ; 5 uses
  %i.dq = alloca [16 x i8], align 8               ; 6 uses
  %i.dr = alloca [16 x i8], align 8               ; 6 uses
  %i.ds = alloca [32 x i8], align 8               ; 8 uses
  %i.dt = alloca [24 x i8], align 8               ; 5 uses
  %i.du = alloca [16 x i8], align 8               ; 6 uses
  %i.dv = alloca [16 x i8], align 8               ; 6 uses
  %i.dw = alloca [32 x i8], align 8               ; 8 uses
  %i.dx = alloca [112 x i8], align 8              ; 6 uses
  %i.dy = alloca [112 x i8], align 8              ; 8 uses
  %i.dz = alloca [112 x i8], align 8              ; 7 uses
  %i.ea = alloca [16 x i8], align 8               ; 6 uses
  %i.eb = alloca [16 x i8], align 8               ; 6 uses
  %i.ec = alloca [32 x i8], align 8               ; 8 uses
  %i.ed = alloca [24 x i8], align 8               ; 5 uses
  %i.ee = alloca [16 x i8], align 8               ; 6 uses
  %i.ef = alloca [16 x i8], align 8               ; 6 uses
  %i.eg = alloca [32 x i8], align 8               ; 8 uses
  %i.eh = alloca [16 x i8], align 8               ; 6 uses
  %i.ei = alloca [112 x i8], align 8              ; 7 uses
  %i.ej = alloca [16 x i8], align 8               ; 6 uses
  %i.ek = alloca [16 x i8], align 8               ; 6 uses
  %i.el = alloca [32 x i8], align 8               ; 8 uses
  %i.em = alloca [24 x i8], align 8               ; 5 uses
  %i.en = alloca [16 x i8], align 8               ; 6 uses
  %i.eo = alloca [16 x i8], align 8               ; 6 uses
  %i.ep = alloca [32 x i8], align 8               ; 8 uses
  %i.eq = alloca [16 x i8], align 8               ; 6 uses
  %i.er = alloca [16 x i8], align 8               ; 6 uses
  %i.es = alloca [16 x i8], align 8               ; 6 uses
  %i.et = alloca [32 x i8], align 8               ; 8 uses
  %i.eu = alloca [24 x i8], align 8               ; 5 uses
  %i.ev = alloca [16 x i8], align 8               ; 6 uses
  %i.ew = alloca [16 x i8], align 8               ; 6 uses
  %i.ex = alloca [32 x i8], align 8               ; 8 uses
  %i.ey = alloca [16 x i8], align 16              ; 10 uses
  %i.ez = alloca [112 x i8], align 8              ; 6 uses
  %i.fa = alloca [16 x i8], align 8               ; 6 uses
  %i.fb = alloca [16 x i8], align 8               ; 6 uses
  %i.fc = alloca [32 x i8], align 8               ; 8 uses
  %i.fd = alloca [24 x i8], align 8               ; 5 uses
  %i.fe = alloca [16 x i8], align 8               ; 6 uses
  %i.ff = alloca [16 x i8], align 8               ; 6 uses
  %i.fg = alloca [32 x i8], align 8               ; 8 uses
  %i.fh = alloca [48 x i8], align 8               ; 6 uses
  %i.fi = alloca [48 x i8], align 8               ; 7 uses
  %i.fj = alloca [112 x i8], align 8              ; 6 uses
  %i.fk = alloca [16 x i8], align 8               ; 6 uses
  %i.fl = alloca [16 x i8], align 8               ; 6 uses
  %i.fm = alloca [32 x i8], align 8               ; 8 uses
  %i.fn = alloca [24 x i8], align 8               ; 5 uses
  %i.fo = alloca [16 x i8], align 8               ; 6 uses
  %i.fp = alloca [16 x i8], align 8               ; 6 uses
  %i.fq = alloca [32 x i8], align 8               ; 8 uses
  %2 = alloca [48 x i8], align 8                  ; 6 uses
  %i.fr = alloca [48 x i8], align 8               ; 7 uses
  %i.fs = alloca [32 x i8], align 8               ; 5 uses
  %i.ft = alloca [120 x i8], align 8              ; 7 uses
  %i.fu = alloca [112 x i8], align 8              ; 5 uses
  %i.fv = alloca [16 x i8], align 8               ; 6 uses
  %i.fw = alloca [16 x i8], align 8               ; 6 uses
  %i.fx = alloca [32 x i8], align 8               ; 8 uses
  %i.fy = alloca [24 x i8], align 8               ; 5 uses
  %i.fz = alloca [16 x i8], align 8               ; 6 uses
  %i.ga = alloca [16 x i8], align 8               ; 6 uses
  %i.gb = alloca [32 x i8], align 8               ; 8 uses
  %i.gc = alloca [112 x i8], align 8              ; 8 uses
  %i.gd = alloca [40 x i8], align 8               ; 4 uses
  %.sroa.61093 = alloca [24 x i8], align 8        ; 4 uses
  %.sroa.81089.sroa.6 = alloca [24 x i8], align 8 ; 10 uses
  %i.ge = alloca [32 x i8], align 8               ; 13 uses
  %i.gf = alloca [16 x i8], align 8               ; 6 uses
  %i.gg = alloca [16 x i8], align 8               ; 6 uses
  %i.gh = alloca [32 x i8], align 8               ; 8 uses
  %i.gi = alloca [24 x i8], align 8               ; 5 uses
  %i.gj = alloca [16 x i8], align 8               ; 6 uses
  %i.gk = alloca [16 x i8], align 8               ; 6 uses
  %i.gl = alloca [32 x i8], align 8               ; 8 uses
  %i.gm = alloca [112 x i8], align 8              ; 5 uses
  %i.gn = alloca [16 x i8], align 8               ; 6 uses
  %i.go = alloca [16 x i8], align 8               ; 6 uses
  %i.gp = alloca [32 x i8], align 8               ; 8 uses
  %i.gq = alloca [24 x i8], align 8               ; 5 uses
  %i.gr = alloca [16 x i8], align 8               ; 6 uses
  %i.gs = alloca [16 x i8], align 8               ; 6 uses
  %i.gt = alloca [32 x i8], align 8               ; 8 uses
  %i.gu = alloca [112 x i8], align 8              ; 7 uses
  %i.gv = alloca [376 x i8], align 8              ; 6 uses
  %i.gw = alloca [376 x i8], align 8              ; 10 uses
  %i.gx = alloca [48 x i8], align 8               ; 3 uses
  %i.gy = alloca [16 x i8], align 8               ; 13 uses
  %i.gz = alloca [32 x i8], align 8               ; 8 uses
  %i.ha = alloca [40 x i8], align 8               ; 8 uses
  %i.hb = alloca [32 x i8], align 8               ; 8 uses
  %i.hc = alloca [40 x i8], align 8               ; 12 uses
  %i.hd = alloca [40 x i8], align 8               ; 8 uses
  %i.he = alloca [112 x i8], align 8              ; 6 uses
  %i.hf = alloca [16 x i8], align 8               ; 6 uses
  %i.hg = alloca [16 x i8], align 8               ; 6 uses
  %i.hh = alloca [32 x i8], align 8               ; 8 uses
  %i.hi = alloca [24 x i8], align 8               ; 5 uses
  %i.hj = alloca [16 x i8], align 8               ; 6 uses
  %i.hk = alloca [16 x i8], align 8               ; 6 uses
  %i.hl = alloca [32 x i8], align 8               ; 8 uses
  %i.hm = alloca [48 x i8], align 8               ; 6 uses
  %i.hn = alloca [48 x i8], align 8               ; 7 uses
  %i.ho = alloca [112 x i8], align 8              ; 6 uses
  %i.hp = alloca [16 x i8], align 8               ; 6 uses
  %i.hq = alloca [16 x i8], align 8               ; 6 uses
  %i.hr = alloca [32 x i8], align 8               ; 8 uses
  %i.hs = alloca [24 x i8], align 8               ; 5 uses
  %i.ht = alloca [16 x i8], align 8               ; 6 uses
  %i.hu = alloca [16 x i8], align 8               ; 6 uses
  %i.hv = alloca [32 x i8], align 8               ; 8 uses
  %3 = alloca [48 x i8], align 8                  ; 6 uses
  %i.hw = alloca [48 x i8], align 8               ; 7 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.hy = load i8, ptr %i.hx, align 4, !range !516, !noundef !14
  switch i8 %i.hy, label %default.unreachable1524 [
    i8 0, label %bb.d
    i8 1, label %bb.fo
    i8 2, label %bb.fp
    i8 3, label %bb.fq
    i8 4, label %bb.qq
    i8 5, label %bb.xz
    i8 6, label %bb.c
  ]

default.unreachable1524:                          ; preds = %bb.fz, %bb.fu, %bb.fq, %bb.a
  unreachable

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit878, %bb.ij
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  br label %bb.re

bb.d:                                             ; preds = %bb.a
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 91 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.ia, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hw)
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.id = getelementptr i8, ptr %i.ic, i64 8
  %.val620 = load ptr, ptr %i.id, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ie = getelementptr i8, ptr %i.ic, i64 16
  %.val621 = load i64, ptr %i.ie, align 8, !noundef !14
  %i.if = getelementptr inbounds nuw [48 x i8], ptr %.val620, i64 %.val621
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !nonnull !14, !align !259, !noundef !14
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !nonnull !14, !align !259, !noundef !14
  invoke void @_RNvMNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12interceptorsINtB2_12InterceptorsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtB2D_12interceptors17SharedInterceptorEENCNvMs1_B2B_NtB2B_17RuntimeComponents12interceptors0EE27modify_before_serializationCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.hw, ptr noundef nonnull %.val620, ptr noundef nonnull %i.if, ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.ih, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.ic, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ij)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %5

bb.f:                                             ; preds = %bb.d
  %i.il = load i64, ptr %i.hw, align 8, !range !666, !noundef !14
  %.not = icmp eq i64 %i.il, -9223372036854775807
  br i1 %.not, label %bb.g, label %bb.eo

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hn)
  %i.im = load ptr, ptr %i.ib, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.in = getelementptr i8, ptr %i.im, i64 8
  %.val618 = load ptr, ptr %i.in, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.io = getelementptr i8, ptr %i.im, i64 16
  %.val619 = load i64, ptr %i.io, align 8, !noundef !14
  %i.ip = getelementptr inbounds nuw [48 x i8], ptr %.val618, i64 %.val619
  %i.iq = load ptr, ptr %i.ig, align 8, !nonnull !14, !align !259, !noundef !14
  %i.ir = load ptr, ptr %i.ii, align 8, !nonnull !14, !align !259, !noundef !14
  invoke void @_RNvMNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12interceptorsINtB2_12InterceptorsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtB2D_12interceptors17SharedInterceptorEENCNvMs1_B2B_NtB2B_17RuntimeComponents12interceptors0EE25read_before_serializationCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.hn, ptr noundef nonnull %.val618, ptr noundef nonnull %i.ip, ptr noundef nonnull align 8 %i.iq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.im, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.ir)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %4

bb.i:                                             ; preds = %bb.g
  %i.it = load i64, ptr %i.hn, align 8, !range !666, !noundef !14
  %.not63 = icmp eq i64 %i.it, -9223372036854775807
  br i1 %.not63, label %bb.j, label %bb.do

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hn)
  %i.iu = load ptr, ptr %i.ig, align 8, !nonnull !14, !align !259, !noundef !14
  invoke void @_RNvMs1_NtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7contextNtB5_18InterceptorContext25enter_serialization_phaseCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.iu)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc)
  %i.iw = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ix = icmp ult i64 %i.iw, 2
  br i1 %i.ix, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.iy = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s0_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.iz = icmp ult i8 %i.iy, 3
  br i1 %i.iz, label %bb.p, label %bb.n, !prof !1223

bb.n:                                             ; preds = %bb.m
  %i.ja = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s0_10___CALLSITE) #26
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.i = phi i8 [ %i.iy, %bb.m ], [ %i.ja, %bb.n ] ; 2 uses
  %i.jc = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.jc, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.jd = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s0_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.je = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jd, i8 noundef %.sroa.0.0.i)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.q
  br i1 %i.je, label %bb.ah, label %bb.v

bb.t:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha)
  br label %.body

bb.u:                                             ; preds = %bb.v, %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hc, ptr noundef nonnull align 8 dereferenceable(40) %i.ha, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha)
  br label %bb.z

bb.v:                                             ; preds = %bb.l, %bb.s, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha)
  %i.jg = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s0_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 2 uses
  store i64 2, ptr %i.ha, align 8, !alias.scope !1224, !noalias !1227
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  store ptr %i.jg, ptr %i.jh, align 8, !alias.scope !1224, !noalias !1227
  %i.ji = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1460 = icmp eq i8 %i.ji, 0
  br i1 %.not1460, label %bb.w, label %bb.u

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gz)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  store i64 1, ptr %i.gz, align 8, !alias.scope !1229, !noalias !1232
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1229, !noalias !1232
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1229, !noalias !1232
  %i.jk = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  store ptr %i.jj, ptr %i.jk, align 8, !alias.scope !1229, !noalias !1232
  %i.jl = invoke noundef nonnull align 8 ptr @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span10record_all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ha, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gz)
          to label %bb.y unwind label %bb.x       ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.ha) #23
          to label %bb.t unwind label %bb.af

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz)
  br label %bb.u

bb.z:                                             ; preds = %bb.ai, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  %i.jn = load i64, ptr %i.hc, align 8, !range !359, !alias.scope !1235, !noalias !1238, !noundef !14
  %.not.i = icmp eq i64 %i.jn, 2
  br i1 %.not.i, label %.noexc407, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jo)
          to label %.noexc407 unwind label %bb.ad

.noexc407:                                        ; preds = %bb.z, %bb.aa
  %i.jp = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.jq = icmp eq i8 %i.jp, 0
  br i1 %i.jq, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %.noexc407
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.js = load ptr, ptr %i.jr, align 8, !alias.scope !1235, !noalias !1238, !align !259, !noundef !14 ; 3 uses
  %.not4.i = icmp eq ptr %i.js, null
  br i1 %.not4.i, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1241
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !noalias !1238, !nonnull !14, !noundef !14
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.jw = load i64, ptr %i.jv, align 8, !noalias !1238, !noundef !14
  store ptr %i.ju, ptr %i.x, align 8, !noalias !1241
  %i.jx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.jw, ptr %i.jx, align 8, !noalias !1241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1241
  store ptr %i.x, ptr %i.w, align 8, !noalias !1241
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1241
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 21, ptr noundef nonnull @73, ptr noundef nonnull %i.w) #27
          to label %.noexc408 unwind label %bb.ad

.noexc408:                                        ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1241
  br label %bb.aj

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %i.jy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.hc) #23
          to label %.body unwind label %bb.ae, !noalias !1238

bb.ae:                                            ; preds = %bb.ad
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !1238
  unreachable

bb.af:                                            ; preds = %bb.acc, %bb.abz, %bb.zp, %bb.po, %bb.lk, %bb.if, %bb.dm, %bb.qr, %bb.ya, %bb.yj, %bb.ace, %bb.rf, %bb.abx, %bb.aaw, %bb.su, %bb.rd, %bb.qp, %.body738, %bb.qo, %bb.ho, %bb.pm, %bb.om, %bb.nl, %bb.mk, %bb.ki, %bb.fn, %bb.en, %bb.dk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6ser_de23SharedRequestSerializerECs9rVkZwOUgsI_13deltalake_aws.exit715, %bb.x
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ag:                                            ; preds = %bb.ah
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb)
  br label %.body

bb.ah:                                            ; preds = %bb.s
  %i.kc = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s0_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 48
  store i64 1, ptr %i.hb, align 8, !alias.scope !1242, !noalias !1245
  %.sroa.4.0..sroa_idx.i679 = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i679, align 8, !alias.scope !1242, !noalias !1245
  %.sroa.5.0..sroa_idx.i680 = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i680, align 8, !alias.scope !1242, !noalias !1245
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  store ptr %i.kd, ptr %i.ke, align 8, !alias.scope !1242, !noalias !1245
  invoke void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.hc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hb)
          to label %bb.ai unwind label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb)
  br label %bb.z

.body:                                            ; preds = %bb.ad, %bb.o, %bb.ag, %bb.t, %bb.r
  %.pn70 = phi { ptr, i32 } [ %i.jy, %bb.ad ], [ %i.kb, %bb.ag ], [ %i.jb, %bb.o ], [ %i.jm, %bb.t ], [ %i.jf, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc)
  br label %bb.ba

bb.aj:                                            ; preds = %.noexc407, %bb.ab, %.noexc408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hd, ptr noundef nonnull align 8 dereferenceable(40) %i.hc, i64 40, i1 false), !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gy)
  %i.kf = load ptr, ptr %i.ii, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1248
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 24
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !alias.scope !1254, !nonnull !14, !noundef !14 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kk = load i64, ptr %i.kj, align 8, !alias.scope !1254, !noundef !14
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kk
  store ptr %i.ki, ptr %i.v, align 8, !noalias !1254
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.kl, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1254
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %i.kg, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1254
end_hunk_0
begin_hunk_1_@_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.cp:                                            ; preds = %bb.cn
  %i.oe = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s1_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.of = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.oe, i8 noundef %.sroa.0.0.i703)
          to label %bb.cq unwind label %bb.co

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.of, label %bb.db, label %bb.cr

bb.cr:                                            ; preds = %bb.cj, %bb.cn, %bb.cq
  %i.og = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1478 = icmp eq i8 %i.og, 0
  br i1 %.not1478, label %bb.cs, label %bb.de

bb.cs:                                            ; preds = %bb.cr
  %i.oh = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.oi = icmp ult i64 %i.oh, 6
  call void @llvm.assume(i1 %i.oi)
  %i.oj = icmp samesign ugt i64 %i.oh, 3
  br i1 %i.oj, label %bb.cu, label %bb.de

bb.ct:                                            ; preds = %bb.cu
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.cu:                                            ; preds = %bb.cs
  %i.ol = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s1_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.om = getelementptr i8, ptr %i.ol, i64 32
  %.val660 = load ptr, ptr %i.om, align 8, !nonnull !14, !noundef !14
  %i.on = getelementptr i8, ptr %i.ol, i64 40
  %.val661 = load i64, ptr %i.on, align 8, !noundef !14
  store i64 4, ptr %i.gq, align 8, !alias.scope !1304
  %.sroa.61060.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store ptr %.val660, ptr %.sroa.61060.0..sroa_idx, align 8, !alias.scope !1304
  %.sroa.81061.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store i64 %.val661, ptr %.sroa.81061.0..sroa_idx, align 8, !alias.scope !1304
  %i.oo = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.cv unwind label %bb.ct     ; 2 uses

bb.cv:                                            ; preds = %bb.cu
  %i.op = extractvalue { ptr, ptr } %i.oo, 0      ; 2 uses
  %i.oq = extractvalue { ptr, ptr } %i.oo, 1      ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.os = load ptr, ptr %i.or, align 8, !invariant.load !14, !nonnull !14
  %i.ot = invoke noundef zeroext i1 %i.os(ptr noundef %i.op, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gq)
          to label %bb.cx unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.cx:                                            ; preds = %bb.cv
  br i1 %i.ot, label %bb.cy, label %bb.de

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gp)
  %i.ov = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s1_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.go)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gn)
  store ptr @42, ptr %i.gn, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.ox, align 8
  store ptr %i.gn, ptr %i.go, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr @24, ptr %i.oy, align 8
  store i64 1, ptr %i.gp, align 8, !alias.scope !1308, !noalias !1311
  %.sroa.4.0..sroa_idx.i708 = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr %i.go, ptr %.sroa.4.0..sroa_idx.i708, align 8, !alias.scope !1308, !noalias !1311
  %.sroa.5.0..sroa_idx.i709 = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i709, align 8, !alias.scope !1308, !noalias !1311
  %i.oz = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  store ptr %i.ow, ptr %i.oz, align 8, !alias.scope !1308, !noalias !1311
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ol, ptr noundef nonnull %i.op, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.oq, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.gq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.gp)
          to label %bb.da unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp)
  br label %bb.dk

bb.da:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.go)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp)
  br label %bb.de

bb.db:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gt)
  %i.pb = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s1_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gr)
  store ptr @42, ptr %i.gr, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.pd, align 8
  store ptr %i.gr, ptr %i.gs, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store ptr @24, ptr %i.pe, align 8
  store i64 1, ptr %i.gt, align 8
  %.sroa.61053.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store ptr %i.gs, ptr %.sroa.61053.0..sroa_idx, align 8
  %.sroa.71054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  store i64 1, ptr %.sroa.71054.0..sroa_idx, align 8
  %.sroa.81055.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  store ptr %i.pc, ptr %.sroa.81055.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s2_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.gt)
          to label %bb.dd unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.pf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs)
  br label %bb.dk

bb.dd:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gs)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.cr, %bb.cs, %bb.cx, %bb.da
  %i.pg = load ptr, ptr %i.ig, align 8, !nonnull !14, !align !259, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.gm, ptr noundef nonnull align 8 dereferenceable(112) %i.gu, i64 112, i1 false)
  invoke void @_RNvMs2_NtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7contextNtB5_18InterceptorContext4failCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.pg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.gm)
          to label %bb.dg unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ph = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm)
  br label %bb.dj

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gu)
  call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %i.pi = load ptr, ptr %i.gy, align 8, !alias.scope !1323, !nonnull !14, !noundef !14
  %i.pj = atomicrmw sub ptr %i.pi, i64 1 release, align 8, !noalias !1323
  %i.pk = icmp eq i64 %i.pj, 1
  br i1 %i.pk, label %bb.dh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6ser_de23SharedRequestSerializerECs9rVkZwOUgsI_13deltalake_aws.exit713

bb.dh:                                            ; preds = %bb.dg
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6ser_de16SerializeRequestEL_E9drop_slowCs2HJ6gJZ22Qg_18aws_smithy_runtime(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gy) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6ser_de23SharedRequestSerializerECs9rVkZwOUgsI_13deltalake_aws.exit713 unwind label %bb.ap

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6ser_de23SharedRequestSerializerECs9rVkZwOUgsI_13deltalake_aws.exit713: ; preds = %bb.dg, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span11EnteredSpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.hd)
          to label %bb.di unwind label %bb.bb

bb.di:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6ser_de23SharedRequestSerializerECs9rVkZwOUgsI_13deltalake_aws.exit713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd)
  br label %common.ret

common.ret:                                       ; preds = %bb.yb, %bb.qs, %bb.di, %bb.el, %bb.fl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtB4_4time8DurationNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEEECs9rVkZwOUgsI_13deltalake_aws.exit995, %bb.ok, %bb.pk, %bb.qm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtB4_4time8DurationNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.rh, %bb.he
  %.sink = phi i8 [ 4, %bb.qs ], [ 6, %bb.rh ], [ 1, %bb.di ], [ 3, %bb.he ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtB4_4time8DurationNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEEECs9rVkZwOUgsI_13deltalake_aws.exit ], [ 1, %bb.qm ], [ 1, %bb.pk ], [ 1, %bb.ok ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtB4_4time8DurationNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEEECs9rVkZwOUgsI_13deltalake_aws.exit995 ], [ 1, %bb.fl ], [ 1, %bb.el ], [ 5, %bb.yb ]
  %common.ret.op = phi i1 [ true, %bb.qs ], [ true, %bb.rh ], [ false, %bb.di ], [ true, %bb.he ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtB4_4time8DurationNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEEECs9rVkZwOUgsI_13deltalake_aws.exit ], [ false, %bb.qm ], [ false, %bb.pk ], [ false, %bb.ok ], [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtB4_4time8DurationNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEEECs9rVkZwOUgsI_13deltalake_aws.exit995 ], [ false, %bb.fl ], [ false, %bb.el ], [ true, %bb.yb ]
  store i8 %.sink, ptr %i.hx, align 4
  ret i1 %common.ret.op

bb.dj:                                            ; preds = %bb.df, %bb.dk
  %.pn316.pn1336 = phi { ptr, i32 } [ %.pn316.pn.ph, %bb.dk ], [ %i.ph, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gu)
  br label %bb.dl

bb.dk:                                            ; preds = %bb.dc, %bb.co, %bb.cm, %bb.cw, %bb.cz, %bb.ct
  %.pn316.pn.ph = phi { ptr, i32 } [ %i.od, %bb.co ], [ %i.pf, %bb.dc ], [ %i.ok, %bb.ct ], [ %i.ou, %bb.cw ], [ %i.pa, %bb.cz ], [ %i.ob, %bb.cm ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtBL_12interceptors7context5ErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(112) %i.gu) #23
          to label %bb.dj unwind label %bb.af

bb.dl:                                            ; preds = %bb.au, %bb.dj, %bb.ax, %bb.as
  %.pn316.pn.pn.pn = phi { ptr, i32 } [ %i.kw, %bb.as ], [ %i.le, %bb.ax ], [ %.pn316.pn1336, %bb.dj ], [ %i.ky, %bb.au ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  %i.pl = load ptr, ptr %i.gy, align 8, !alias.scope !1333, !nonnull !14, !noundef !14
  %i.pm = atomicrmw sub ptr %i.pl, i64 1 release, align 8, !noalias !1333
  %i.pn = icmp eq i64 %i.pm, 1
  br i1 %i.pn, label %bb.dm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6ser_de23SharedRequestSerializerECs9rVkZwOUgsI_13deltalake_aws.exit715

bb.dm:                                            ; preds = %bb.dl
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6ser_de16SerializeRequestEL_E9drop_slowCs2HJ6gJZ22Qg_18aws_smithy_runtime(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gy) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client6ser_de23SharedRequestSerializerECs9rVkZwOUgsI_13deltalake_aws.exit715 unwind label %bb.af

bb.dn:                                            ; preds = %bb.br, %bb.bx, %bb.bu, %bb.bd, %bb.cc, %bb.ca, %bb.bm, %bb.bk, %7, %6, %bb.nm, %bb.hu, %5, %4, %bb.ba, %bb.k
  %.pn345.pn.pn.pn = phi { ptr, i32 } [ %.pn345.pn.pn, %5 ], [ %.pn333.pn.pn, %4 ], [ %.pn323, %bb.ba ], [ %i.iv, %bb.k ], [ %.pn288.pn.pn, %7 ], [ %.pn276.pn.pn, %6 ], [ %.pn262.pn.pn.pn, %bb.nm ], [ %i.wz, %bb.hu ], [ %.pn300.pn.pn.pn.pn, %bb.cc ], [ %i.nf, %bb.ca ], [ %i.mb, %bb.bk ], [ %i.lr, %bb.bd ], [ %i.na, %bb.bx ], [ %i.mu, %bb.bu ], [ %i.md, %bb.bm ], [ %i.mk, %bb.br ]
  store i8 2, ptr %i.hx, align 4
  resume { ptr, i32 } %.pn345.pn.pn.pn

bb.do:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hm, ptr noundef nonnull align 8 dereferenceable(48) %i.hn, i64 48, i1 false)
  %i.po = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.pp = icmp ult i64 %i.po, 2
  br i1 %i.pp, label %bb.dp, label %bb.dw

bb.dp:                                            ; preds = %bb.do
  %i.pq = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.pr = icmp ult i8 %i.pq, 3
  br i1 %i.pr, label %bb.ds, label %bb.dq, !prof !1223

bb.dq:                                            ; preds = %bb.dp
  %i.ps = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s_10___CALLSITE) #26
          to label %bb.ds unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.pt = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ds:                                            ; preds = %bb.dq, %bb.dp
  %.sroa.0.0.i716 = phi i8 [ %i.pq, %bb.dp ], [ %i.ps, %bb.dq ] ; 2 uses
  %i.pu = icmp eq i8 %.sroa.0.0.i716, 0
  br i1 %i.pu, label %bb.dw, label %bb.du

bb.dt:                                            ; preds = %bb.du
  %i.pv = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.du:                                            ; preds = %bb.ds
  %i.pw = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.px = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.pw, i8 noundef %.sroa.0.0.i716)
          to label %bb.dv unwind label %bb.dt

bb.dv:                                            ; preds = %bb.du
  br i1 %i.px, label %bb.eg, label %bb.dw

bb.dw:                                            ; preds = %bb.do, %bb.ds, %bb.dv
  %i.py = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1459 = icmp eq i8 %i.py, 0
  br i1 %.not1459, label %bb.dx, label %bb.ej

bb.dx:                                            ; preds = %bb.dw
  %i.pz = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.qa = icmp ult i64 %i.pz, 6
  tail call void @llvm.assume(i1 %i.qa)
  %i.qb = icmp samesign ugt i64 %i.pz, 3
  br i1 %i.qb, label %bb.dz, label %bb.ej

bb.dy:                                            ; preds = %bb.dz
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.dz:                                            ; preds = %bb.dx
  %i.qd = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.qe = getelementptr i8, ptr %i.qd, i64 32
  %.val658 = load ptr, ptr %i.qe, align 8, !nonnull !14, !noundef !14
  %i.qf = getelementptr i8, ptr %i.qd, i64 40
  %.val659 = load i64, ptr %i.qf, align 8, !noundef !14
  store i64 4, ptr %i.hi, align 8, !alias.scope !1334
  %.sroa.61029.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store ptr %.val658, ptr %.sroa.61029.0..sroa_idx, align 8, !alias.scope !1334
  %.sroa.81030.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store i64 %.val659, ptr %.sroa.81030.0..sroa_idx, align 8, !alias.scope !1334
  %i.qg = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ea unwind label %bb.dy     ; 2 uses

bb.ea:                                            ; preds = %bb.dz
  %i.qh = extractvalue { ptr, ptr } %i.qg, 0      ; 2 uses
  %i.qi = extractvalue { ptr, ptr } %i.qg, 1      ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qk = load ptr, ptr %i.qj, align 8, !invariant.load !14, !nonnull !14
  %i.ql = invoke noundef zeroext i1 %i.qk(ptr noundef %i.qh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hi)
          to label %bb.ec unwind label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ec:                                            ; preds = %bb.ea
  br i1 %i.ql, label %bb.ed, label %bb.ej

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hh)
  %i.qn = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hf)
  store ptr @42, ptr %i.hf, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.qp, align 8
  store ptr %i.hf, ptr %i.hg, align 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store ptr @24, ptr %i.qq, align 8
  store i64 1, ptr %i.hh, align 8, !alias.scope !1338, !noalias !1341
  %.sroa.4.0..sroa_idx.i721 = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store ptr %i.hg, ptr %.sroa.4.0..sroa_idx.i721, align 8, !alias.scope !1338, !noalias !1341
  %.sroa.5.0..sroa_idx.i722 = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i722, align 8, !alias.scope !1338, !noalias !1341
  %i.qr = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  store ptr %i.qo, ptr %i.qr, align 8, !alias.scope !1338, !noalias !1341
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.qd, ptr noundef nonnull %i.qh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qi, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.hi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hh)
          to label %bb.ef unwind label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.qs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hh)
  br label %bb.en

bb.ef:                                            ; preds = %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hh)
  br label %bb.ej

bb.eg:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hl)
  %i.qt = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hj)
  store ptr @42, ptr %i.hj, align 8
  %i.qv = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.qv, align 8
  store ptr %i.hj, ptr %i.hk, align 8
  %i.qw = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store ptr @24, ptr %i.qw, align 8
  store i64 1, ptr %i.hl, align 8
  %.sroa.61022.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store ptr %i.hk, ptr %.sroa.61022.0..sroa_idx, align 8
  %.sroa.71023.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store i64 1, ptr %.sroa.71023.0..sroa_idx, align 8
  %.sroa.81024.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  store ptr %i.qu, ptr %.sroa.81024.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s1_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.hl)
          to label %bb.ei unwind label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.qx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk)
  br label %bb.en

bb.ei:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk)
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.dw, %bb.dx, %bb.ec, %bb.ef
  %i.qy = load ptr, ptr %i.ig, align 8, !nonnull !14, !align !259, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %.sroa.4.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.4.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.hm, i64 48, i1 false)
  store i16 5, ptr %i.he, align 8, !alias.scope !1344, !noalias !1349
  %.sroa.4.0..sroa_idx.i.i723 = getelementptr inbounds nuw i8, ptr %i.he, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(54) %.sroa.4.0..sroa_idx.i.i723, ptr noundef nonnull align 2 dereferenceable(54) %.sroa.4.i.i, i64 54, i1 false), !noalias !1349
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  invoke void @_RNvMs2_NtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7contextNtB5_18InterceptorContext4failCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.qy, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.he)
          to label %bb.el unwind label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.qz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he)
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hn)
  br label %common.ret

bb.em:                                            ; preds = %bb.ek, %bb.en
  %.pn333.pn1342 = phi { ptr, i32 } [ %.pn333.pn.ph, %bb.en ], [ %i.qz, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hm)
  br label %4

bb.en:                                            ; preds = %bb.eh, %bb.dt, %bb.dr, %bb.eb, %bb.ee, %bb.dy
  %.pn333.pn.ph = phi { ptr, i32 } [ %i.pv, %bb.dt ], [ %i.qx, %bb.eh ], [ %i.qc, %bb.dy ], [ %i.qm, %bb.eb ], [ %i.qs, %bb.ee ], [ %i.pt, %bb.dr ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors5error16InterceptorErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.hm) #23
          to label %bb.em unwind label %bb.af

4:                                                ; preds = %bb.h, %bb.em
  %.pn333.pn.pn = phi { ptr, i32 } [ %.pn333.pn1342, %bb.em ], [ %i.is, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hn)
  br label %bb.dn

bb.eo:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.hw, i64 48, i1 false)
  %i.ra = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.rb = icmp ult i64 %i.ra, 2
  br i1 %i.rb, label %bb.ep, label %bb.ew

bb.ep:                                            ; preds = %bb.eo
  %i.rc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op0010___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.rd = icmp ult i8 %i.rc, 3
  br i1 %i.rd, label %bb.es, label %bb.eq, !prof !1223

bb.eq:                                            ; preds = %bb.ep
  %i.re = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op0010___CALLSITE) #26
          to label %bb.es unwind label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.rf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.es:                                            ; preds = %bb.eq, %bb.ep
  %.sroa.0.0.i726 = phi i8 [ %i.rc, %bb.ep ], [ %i.re, %bb.eq ] ; 2 uses
  %i.rg = icmp eq i8 %.sroa.0.0.i726, 0
  br i1 %i.rg, label %bb.ew, label %bb.eu

bb.et:                                            ; preds = %bb.eu
  %i.rh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.eu:                                            ; preds = %bb.es
  %i.ri = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op0010___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.rj = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ri, i8 noundef %.sroa.0.0.i726)
          to label %bb.ev unwind label %bb.et

bb.ev:                                            ; preds = %bb.eu
  br i1 %i.rj, label %bb.fg, label %bb.ew

bb.ew:                                            ; preds = %bb.eo, %bb.es, %bb.ev
  %i.rk = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1458 = icmp eq i8 %i.rk, 0
  br i1 %.not1458, label %bb.ex, label %bb.fj

bb.ex:                                            ; preds = %bb.ew
  %i.rl = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.rm = icmp ult i64 %i.rl, 6
  tail call void @llvm.assume(i1 %i.rm)
  %i.rn = icmp samesign ugt i64 %i.rl, 3
  br i1 %i.rn, label %bb.ez, label %bb.fj

bb.ey:                                            ; preds = %bb.ez
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.ez:                                            ; preds = %bb.ex
  %i.rp = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op0010___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.rq = getelementptr i8, ptr %i.rp, i64 32
  %.val656 = load ptr, ptr %i.rq, align 8, !nonnull !14, !noundef !14
  %i.rr = getelementptr i8, ptr %i.rp, i64 40
  %.val657 = load i64, ptr %i.rr, align 8, !noundef !14
  store i64 4, ptr %i.hs, align 8, !alias.scope !1352
  %.sroa.61017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store ptr %.val656, ptr %.sroa.61017.0..sroa_idx, align 8, !alias.scope !1352
  %.sroa.81018.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  store i64 %.val657, ptr %.sroa.81018.0..sroa_idx, align 8, !alias.scope !1352
  %i.rs = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.fa unwind label %bb.ey     ; 2 uses

bb.fa:                                            ; preds = %bb.ez
  %i.rt = extractvalue { ptr, ptr } %i.rs, 0      ; 2 uses
  %i.ru = extractvalue { ptr, ptr } %i.rs, 1      ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 24
  %i.rw = load ptr, ptr %i.rv, align 8, !invariant.load !14, !nonnull !14
  %i.rx = invoke noundef zeroext i1 %i.rw(ptr noundef %i.rt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hs)
          to label %bb.fc unwind label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.ry = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.fc:                                            ; preds = %bb.fa
  br i1 %i.rx, label %bb.fd, label %bb.fj

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hr)
  %i.rz = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op0010___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hp)
  store ptr @42, ptr %i.hp, align 8
  %i.sb = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.sb, align 8
  store ptr %i.hp, ptr %i.hq, align 8
  %i.sc = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store ptr @24, ptr %i.sc, align 8
  store i64 1, ptr %i.hr, align 8, !alias.scope !1356, !noalias !1359
  %.sroa.4.0..sroa_idx.i731 = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store ptr %i.hq, ptr %.sroa.4.0..sroa_idx.i731, align 8, !alias.scope !1356, !noalias !1359
  %.sroa.5.0..sroa_idx.i732 = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i732, align 8, !alias.scope !1356, !noalias !1359
  %i.sd = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  store ptr %i.sa, ptr %i.sd, align 8, !alias.scope !1356, !noalias !1359
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.rp, ptr noundef nonnull %i.rt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ru, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.hs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.hr)
          to label %bb.ff unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.se = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hr)
  br label %bb.fn

bb.ff:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hr)
  br label %bb.fj

bb.fg:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hv)
  %i.sf = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op0010___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ht)
  store ptr @42, ptr %i.ht, align 8
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.sh, align 8
  store ptr %i.ht, ptr %i.hu, align 8
  %i.si = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  store ptr @24, ptr %i.si, align 8
  store i64 1, ptr %i.hv, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store ptr %i.hu, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx1012 = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  store ptr %i.sg, ptr %.sroa.8.0..sroa_idx1012, align 8
  invoke fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.hv)
          to label %bb.fi unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.sj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ht)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hu)
  br label %bb.fn

bb.fi:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ht)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hu)
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.ew, %bb.ex, %bb.fc, %bb.ff
  %i.sk = load ptr, ptr %i.ig, align 8, !nonnull !14, !align !259, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ho)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i733)
  %.sroa.4.8..sroa_idx.i.i734 = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i733, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.4.8..sroa_idx.i.i734, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  store i16 5, ptr %i.ho, align 8, !alias.scope !1362, !noalias !1367
  %.sroa.4.0..sroa_idx.i.i735 = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(54) %.sroa.4.0..sroa_idx.i.i735, ptr noundef nonnull align 2 dereferenceable(54) %.sroa.4.i.i733, i64 54, i1 false), !noalias !1367
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i733)
  invoke void @_RNvMs2_NtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7contextNtB5_18InterceptorContext4failCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.sk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.ho)
          to label %bb.fl unwind label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.sl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ho)
  br label %bb.fm

bb.fl:                                            ; preds = %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ho)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hw)
  br label %common.ret

bb.fm:                                            ; preds = %bb.fk, %bb.fn
  %.pn345.pn1348 = phi { ptr, i32 } [ %.pn345.pn.ph, %bb.fn ], [ %i.sl, %bb.fk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %5

bb.fn:                                            ; preds = %bb.fh, %bb.et, %bb.er, %bb.fb, %bb.fe, %bb.ey
  %.pn345.pn.ph = phi { ptr, i32 } [ %i.rh, %bb.et ], [ %i.sj, %bb.fh ], [ %i.ro, %bb.ey ], [ %i.ry, %bb.fb ], [ %i.se, %bb.fe ], [ %i.rf, %bb.er ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors5error16InterceptorErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %3) #23
          to label %bb.fm unwind label %bb.af

5:                                                ; preds = %bb.e, %bb.fm
  %.pn345.pn.pn = phi { ptr, i32 } [ %.pn345.pn1348, %bb.fm ], [ %i.ik, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hw)
  br label %bb.dn

bb.fo:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #25
  unreachable

bb.fp:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #25
  unreachable

bb.fq:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ge)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 784
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !517, !noalias !1370
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.81089.sroa.6)
  %i.sm = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.713.i)
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 6 uses
  switch i8 %.pre, label %default.unreachable1524 [
    i8 0, label %.thread28.i
    i8 1, label %bb.fs
    i8 2, label %bb.ft
    i8 3, label %bb.fu
  ]

.thread28.i:                                      ; preds = %.thread, %bb.fq
  %i.so = phi ptr [ %i.nr, %.thread ], [ %i.sn, %bb.fq ]
  %i.sp = phi ptr [ %i.nq, %.thread ], [ %i.sm, %bb.fq ] ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.sq, ptr noundef nonnull align 8 dereferenceable(120) %i.sp, i64 120, i1 false), !noalias !1370
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  store i8 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1370
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.535.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1370
  br label %bb.fw

bb.fr:                                            ; preds = %.body.i, %bb.gz
  %i.sr = phi ptr [ %i.tv, %bb.gz ], [ %i.vw, %.body.i ]
  %i.ss = phi ptr [ %i.tw, %bb.gz ], [ %i.vx, %.body.i ]
  %.pn4.i = phi { ptr, i32 } [ %i.vt, %bb.gz ], [ %.pn2.i, %.body.i ]
  store i8 2, ptr %i.sr, align 8, !noalias !1370
  br label %.body738

bb.fs:                                            ; preds = %bb.fq
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #25
          to label %.noexc740 unwind label %bb.hd

.noexc740:                                        ; preds = %bb.fs
  unreachable

bb.ft:                                            ; preds = %bb.fq
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #25
          to label %.noexc741 unwind label %bb.hd

.noexc741:                                        ; preds = %bb.ft
  unreachable

bb.fu:                                            ; preds = %bb.fq
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 5 uses
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 8, !range !517, !noalias !1374
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.535.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1370
  switch i8 %.pre.i, label %default.unreachable1524 [
    i8 0, label %bb.fw
    i8 1, label %bb.fx
    i8 2, label %bb.fy
    i8 3, label %bb.fz
  ]

.body14.i.i:                                      ; preds = %bb.gt, %bb.gq, %bb.gn, %bb.fv
  %i.su = phi ptr [ %i.ux, %bb.gn ], [ %i.ux, %bb.gt ], [ %i.tv, %bb.fv ], [ %i.tv, %bb.gq ]
  %i.sv = phi ptr [ %i.uy, %bb.gn ], [ %i.uy, %bb.gt ], [ %i.tw, %bb.fv ], [ %i.tw, %bb.gq ]
  %i.sw = phi ptr [ %i.uz, %bb.gn ], [ %i.uz, %bb.gt ], [ %i.tx, %bb.fv ], [ %i.tx, %bb.gq ]
  %i.sx = phi ptr [ %i.va, %bb.gn ], [ %i.va, %bb.gt ], [ %i.ty, %bb.fv ], [ %i.ty, %bb.gq ]
  %.pn11.i.i = phi { ptr, i32 } [ %.pn9.i.i, %bb.gn ], [ %.pn9.i.i, %bb.gt ], [ %i.tc, %bb.fv ], [ %i.vf, %bb.gq ]
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 777
  store i8 0, ptr %i.sy, align 1, !noalias !1374
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 778 ; 2 uses
  %i.ta = load i8, ptr %i.sz, align 2, !range !541, !noalias !1374, !noundef !14
  %i.tb = trunc nuw i8 %i.ta to i1
  br i1 %i.tb, label %bb.gv, label %bb.gu

bb.fv:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i

bb.fw:                                            ; preds = %bb.fu, %.thread28.i
  %i.td = phi ptr [ %i.so, %.thread28.i ], [ %i.sn, %bb.fu ]
  %i.te = phi ptr [ %i.sp, %.thread28.i ], [ %i.sm, %bb.fu ]
  %i.tf = phi ptr [ %.sroa.7.0..sroa_idx.i, %.thread28.i ], [ %.phi.trans.insert.i, %bb.fu ]
  %i.tg = phi ptr [ %i.sq, %.thread28.i ], [ %i.st, %bb.fu ] ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %0, i64 777
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 778
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.tj, ptr noundef nonnull align 8 dereferenceable(120) %i.tg, i64 120, i1 false), !noalias !1374
  %i.tk = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i64 0, ptr %i.tk, align 8, !alias.scope !1378, !noalias !1374
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1378, !noalias !1374
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 592
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !alias.scope !1378, !noalias !1374
  store i8 1, ptr %i.th, align 1, !noalias !1374
  store i8 0, ptr %i.ti, align 2, !noalias !1374
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.tl, ptr noundef nonnull align 8 dereferenceable(120) %i.tg, i64 120, i1 false), !noalias !1374
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 736
  store ptr %i.tl, ptr %i.tm, align 8, !noalias !1374
  br label %.thread.i.i

bb.fx:                                            ; preds = %bb.fu
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #25
          to label %.noexc.i unwind label %bb.gw, !noalias !1381

.noexc.i:                                         ; preds = %bb.fx
  unreachable

bb.fy:                                            ; preds = %bb.fu
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #25
          to label %.noexc6.i unwind label %bb.gw, !noalias !1381

.noexc6.i:                                        ; preds = %bb.fy
  unreachable

bb.fz:                                            ; preds = %bb.fu
  %.phi.trans.insert48.i.i = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 3 uses
  %.pre.i.i = load i8, ptr %.phi.trans.insert48.i.i, align 8, !range !517, !noalias !1382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1374
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  switch i8 %.pre.i.i, label %default.unreachable1524 [
    i8 0, label %._crit_edge.i
    i8 1, label %bb.gb
    i8 2, label %bb.gc
    i8 3, label %bb.gd
  ]

._crit_edge.i:                                    ; preds = %bb.fz
  %.phi.trans.insert25.i = getelementptr inbounds nuw i8, ptr %0, i64 744
  %.pre26.i = load ptr, ptr %.phi.trans.insert25.i, align 8, !noalias !1382
  br label %bb.ga

bb.ga:                                            ; preds = %.thread.i.i, %._crit_edge.i
  %i.tn = phi ptr [ %i.ur, %.thread.i.i ], [ %i.sn, %._crit_edge.i ]
  %i.to = phi ptr [ %i.us, %.thread.i.i ], [ %i.sm, %._crit_edge.i ]
  %i.tp = phi ptr [ %i.ut, %.thread.i.i ], [ %.phi.trans.insert.i, %._crit_edge.i ]
  %i.tq = phi ptr [ %i.uu, %.thread.i.i ], [ %i.st, %._crit_edge.i ]
  %i.tr = phi ptr [ %.val.i.i, %.thread.i.i ], [ %.pre26.i, %._crit_edge.i ]
  %i.ts = phi ptr [ %.sroa.10.0..sroa_idx.i.i, %.thread.i.i ], [ %.phi.trans.insert48.i.i, %._crit_edge.i ]
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  store ptr %i.tr, ptr %i.tt, align 8, !noalias !1382
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 760
  store ptr %i.tt, ptr %i.tu, align 8, !noalias !1382
  br label %bb.gd

bb.gb:                                            ; preds = %bb.fz
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #25
          to label %.noexc.i.i unwind label %bb.gf, !noalias !1387

.noexc.i.i:                                       ; preds = %bb.gb
  unreachable

bb.gc:                                            ; preds = %bb.fz
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #25
          to label %.noexc13.i.i unwind label %bb.gf, !noalias !1387

.noexc13.i.i:                                     ; preds = %bb.gc
  unreachable

bb.gd:                                            ; preds = %bb.ga, %bb.fz
  %i.tv = phi ptr [ %i.tn, %bb.ga ], [ %i.sn, %bb.fz ] ; 10 uses
  %i.tw = phi ptr [ %i.to, %bb.ga ], [ %i.sm, %bb.fz ] ; 7 uses
  %i.tx = phi ptr [ %i.tp, %bb.ga ], [ %.phi.trans.insert.i, %bb.fz ] ; 9 uses
  %i.ty = phi ptr [ %i.tq, %bb.ga ], [ %i.st, %bb.fz ] ; 7 uses
  %i.tz = phi ptr [ %i.ts, %bb.ga ], [ %.phi.trans.insert48.i.i, %bb.fz ] ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %0, i64 760
  invoke void @_RNvXs0_NtNtCsbvkFyIu7lgC_4core6future7poll_fnINtB5_6PollFnNCNCNvMs0_NtCs2DiVQAxFeQE_16aws_smithy_types4bodyNtB14_7SdkBody4next00ENtNtB7_6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ua, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.gg unwind label %bb.ge, !noalias !1388

bb.ge:                                            ; preds = %bb.gd
  %i.ub = landingpad { ptr, i32 }
          cleanup
  store i8 2, ptr %i.tz, align 8, !noalias !1382
  br label %.body.i.i

bb.gf:                                            ; preds = %bb.gc, %bb.gb
  %i.uc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.gg:                                            ; preds = %bb.gd
  %i.ud = load i64, ptr %i.s, align 8, !range !359, !alias.scope !1386, !noalias !1389, !noundef !14 ; 2 uses
  %i.ue = icmp eq i64 %i.ud, 2                    ; 2 uses
  %spec.select.i.i.i = select i1 %i.ue, i8 3, i8 1
  store i8 %spec.select.i.i.i, ptr %i.tz, align 8, !noalias !1382
  br i1 %i.ue, label %.thread.i, label %bb.gi

.thread.i:                                        ; preds = %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1374
end_hunk_1
begin_hunk_2_@_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00Cs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.gz:                                            ; preds = %bb.hb, %bb.gy
  %i.vt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.ha:                                            ; preds = %bb.gy
  %i.vu = icmp eq i64 %.sroa.027.0.i22.i, -9223372036854775808
  br i1 %i.vu, label %bb.hb, label %bb.hh

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.329.0.i23.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.432.0.i24.i) ]
  %i.vv = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  invoke void @_RINvMNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5errorNtB3_5Error9streamingINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1V_6marker4SyncNtB2s_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.vv, ptr noundef nonnull %.sroa.329.0.i23.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.432.0.i24.i)
          to label %bb.hg unwind label %bb.gz, !noalias !1381

.body.i:                                          ; preds = %bb.gw, %bb.gu
  %i.vw = phi ptr [ %i.su, %bb.gu ], [ %i.sn, %bb.gw ]
  %i.vx = phi ptr [ %i.sv, %bb.gu ], [ %i.sm, %bb.gw ]
  %i.vy = phi ptr [ %i.sx, %bb.gu ], [ %i.st, %bb.gw ]
  %.pn2.i = phi { ptr, i32 } [ %.pn11.i.i, %bb.gu ], [ %i.vq, %bb.gw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs5_NtCs2DiVQAxFeQE_16aws_smithy_types11byte_streamNtBO_5Inner7collect0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.vy) #23
          to label %bb.fr unwind label %bb.hc, !noalias !1381

bb.hc:                                            ; preds = %.body.i
  %i.vz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !1381
  unreachable

bb.hd:                                            ; preds = %bb.ft, %bb.fs
  %i.wa = landingpad { ptr, i32 }
          cleanup
  br label %.body738

bb.he:                                            ; preds = %bb.gx, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  store i8 3, ptr %i.tv, align 8, !noalias !1370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.713.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81089.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge)
  br label %common.ret

bb.hf:                                            ; preds = %bb.hg, %bb.hh
  %i.wb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit

bb.hg:                                            ; preds = %bb.hb
  %.sroa.81089.sroa.0.0.copyload1357 = load ptr, ptr %i.vv, align 8, !noalias !1391
  %.sroa.81089.sroa.6.0..sroa.81089.0..sroa_idx1090.sroa_idx1358 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.81089.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.81089.sroa.6.0..sroa.81089.0..sroa_idx1090.sroa_idx1358, i64 24, i1 false), !noalias !1391
  store i8 1, ptr %i.tv, align 8, !noalias !1370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.713.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61093, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.81089.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81089.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1392
  store ptr %.sroa.81089.sroa.0.0.copyload1357, ptr %i.q, align 8, !noalias !1396
  %.sroa.61093.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61093.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.61093, i64 16, i1 false), !noalias !1396
  %i.wc = invoke { ptr, ptr } @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtB7_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBW_6marker4SyncNtB1t_4SendEL_EINtNtBW_7convert4FromNtNtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5error5ErrorE4fromCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q)
          to label %bb.pp unwind label %bb.hf     ; 2 uses

bb.hh:                                            ; preds = %bb.ha
  store i64 %.sroa.027.0.i22.i, ptr %i.t, align 8, !alias.scope !1397, !noalias !1370
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.329.0.i23.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !1397, !noalias !1370
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  store ptr %.sroa.432.0.i24.i, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !1397, !noalias !1370
  %.sroa.713.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.713.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.713.i, i64 16, i1 false), !alias.scope !1397, !noalias !1370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.81089.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512.0..sroa_idx.i, i64 24, i1 false), !noalias !1391
  store i8 1, ptr %i.tv, align 8, !noalias !1370
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.713.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61093, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.81089.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.81089.sroa.6)
  %i.wd = inttoptr i64 %.sroa.027.0.i22.i to ptr
  store ptr %i.wd, ptr %i.gd, align 8
  %.sroa.121078.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %.sroa.329.0.i23.i, ptr %.sroa.121078.8..sroa_idx, align 8
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.61093, i64 24, i1 false)
  invoke void @_RNvMs3_NtCs2DiVQAxFeQE_16aws_smithy_types11byte_streamNtB5_15AggregatedBytes10into_bytes(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ge, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.gd)
          to label %bb.hi unwind label %bb.hf

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs)
  %i.we = load ptr, ptr %i.ge, align 8, !noalias !1401, !nonnull !14, !align !259, !noundef !14
  %i.wf = load ptr, ptr %i.we, align 8, !noalias !1401, !nonnull !14, !noundef !14
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ge, i64 24 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 2 uses
  %i.wi = load ptr, ptr %i.wh, align 8, !noalias !1401, !noundef !14
  %i.wj = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %i.wk = load i64, ptr %i.wj, align 8, !noalias !1401, !noundef !14
  invoke void %i.wf(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.fs, ptr noundef nonnull align 8 %i.wg, ptr noundef %i.wi, i64 noundef %i.wk)
          to label %_RNvXs2_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.hj, !inline_history !1404

bb.hj:                                            ; preds = %bb.hi
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

_RNvXs2_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.hi
  invoke void @_RNvXs2_NtCs2DiVQAxFeQE_16aws_smithy_types4bodyNtB5_7SdkBodyINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4from(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.ft, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.fs)
          to label %bb.hm unwind label %bb.hl

bb.hk:                                            ; preds = %bb.hl, %bb.hj
  %.pn90 = phi { ptr, i32 } [ %i.wm, %bb.hl ], [ %i.wl, %bb.hj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs)
  br label %bb.po

bb.hl:                                            ; preds = %_RNvXs2_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  %i.wm = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

bb.hm:                                            ; preds = %_RNvXs2_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs)
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.wo = load ptr, ptr %i.wn, align 8, !nonnull !14, !align !259, !noundef !14 ; 2 uses
  %i.wp = load i64, ptr %i.wo, align 8, !range !359, !alias.scope !1405, !noundef !14
  %.not.i748 = icmp eq i64 %i.wp, 2
  br i1 %.not.i748, label %bb.hn, label %bb.hq, !prof !16

bb.hn:                                            ; preds = %bb.hm
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #25
          to label %.noexc753 unwind label %bb.ho

.noexc753:                                        ; preds = %bb.hn
  unreachable

bb.ho:                                            ; preds = %bb.hn
  %i.wq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.ft) #23
          to label %bb.po unwind label %bb.af

bb.hp:                                            ; preds = %bb.hq
  %i.wr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ws, ptr noundef nonnull align 8 dereferenceable(120) %i.ft, i64 120, i1 false)
  br label %bb.po

bb.hq:                                            ; preds = %bb.hm
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wo, i64 120 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4body7SdkBodyECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.ws)
          to label %bb.hr unwind label %bb.hp

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ws, ptr noundef nonnull align 8 dereferenceable(120) %i.ft, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft)
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.wu = load ptr, ptr %i.wt, align 8, !nonnull !14, !align !259, !noundef !14
  %.sroa.51108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.51108.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.ge, i64 32, i1 false)
  store i64 2, ptr %i.p, align 8, !noalias !1412
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1413
  invoke void @_RINvMs0_NtCs2DiVQAxFeQE_16aws_smithy_types12type_erasureNtB6_13TypeErasedBox3newINtNtNtB8_10config_bag5value5ValueNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17LoadedRequestBodyEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.p)
          to label %.noexc754 unwind label %bb.pn

.noexc754:                                        ; preds = %bb.hr
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) @6, i64 16, i1 false), !noalias !1413
  invoke void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxINtNtBR_4hash18BuildHasherDefaultNtNtNtB1p_10config_bag10typeid_map8IdHasherEE6insertCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.wv, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.n)
          to label %.noexc755 unwind label %bb.pn

.noexc755:                                        ; preds = %.noexc754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1413
  %i.ww = load ptr, ptr %i.o, align 8, !alias.scope !1417, !noalias !1413, !noundef !14
  %i.wx = icmp eq ptr %i.ww, null
  br i1 %i.wx, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %.noexc755
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.o)
          to label %bb.ht unwind label %bb.pn

bb.ht:                                            ; preds = %.noexc755, %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge)
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 91
  store i8 0, ptr %i.wy, align 1
  br label %bb.bg

bb.hu:                                            ; preds = %bb.bg
  %i.wz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.hv:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr)
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.xb = load ptr, ptr %i.xa, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.xc = getelementptr i8, ptr %i.xb, i64 8
  %.val616 = load ptr, ptr %i.xc, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.xd = getelementptr i8, ptr %i.xb, i64 16
  %.val617 = load i64, ptr %i.xd, align 8, !noundef !14
  %i.xe = getelementptr inbounds nuw [48 x i8], ptr %.val616, i64 %.val617
  %i.xf = load ptr, ptr %i.lu, align 8, !nonnull !14, !align !259, !noundef !14
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.xh = load ptr, ptr %i.xg, align 8, !nonnull !14, !align !259, !noundef !14
  invoke void @_RNvMNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12interceptorsINtB2_12InterceptorsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtB2D_12interceptors17SharedInterceptorEENCNvMs1_B2B_NtB2B_17RuntimeComponents12interceptors0EE24read_after_serializationCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.fr, ptr noundef nonnull %.val616, ptr noundef nonnull %i.xe, ptr noundef nonnull align 8 %i.xf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.xb, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.xh)
          to label %bb.hx unwind label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.xi = landingpad { ptr, i32 }
          cleanup
  br label %7

bb.hx:                                            ; preds = %bb.hv
  %i.xj = load i64, ptr %i.fr, align 8, !range !666, !noundef !14
  %.not97 = icmp eq i64 %i.xj, -9223372036854775807
  br i1 %.not97, label %bb.hy, label %bb.on

bb.hy:                                            ; preds = %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi)
  %i.xk = load ptr, ptr %i.xa, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.xl = getelementptr i8, ptr %i.xk, i64 8
  %.val614 = load ptr, ptr %i.xl, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.xm = getelementptr i8, ptr %i.xk, i64 16
  %.val615 = load i64, ptr %i.xm, align 8, !noundef !14
  %i.xn = getelementptr inbounds nuw [48 x i8], ptr %.val614, i64 %.val615
  %i.xo = load ptr, ptr %i.lu, align 8, !nonnull !14, !align !259, !noundef !14
  %i.xp = load ptr, ptr %i.xg, align 8, !nonnull !14, !align !259, !noundef !14
  invoke void @_RNvMNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12interceptorsINtB2_12InterceptorsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client18runtime_components7TrackedNtNtB2D_12interceptors17SharedInterceptorEENCNvMs1_B2B_NtB2B_17RuntimeComponents12interceptors0EE24modify_before_retry_loopCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.fi, ptr noundef nonnull %.val614, ptr noundef nonnull %i.xn, ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.xo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.xk, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.xp)
          to label %bb.ia unwind label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.xq = landingpad { ptr, i32 }
          cleanup
  br label %6

bb.ia:                                            ; preds = %bb.hy
  %i.xr = load i64, ptr %i.fi, align 8, !range !666, !noundef !14
  %.not98 = icmp eq i64 %i.xr, -9223372036854775807
  br i1 %.not98, label %bb.ib, label %bb.nn

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey)
  %i.xs = load ptr, ptr %i.xa, align 8, !nonnull !14, !align !259, !noundef !14
  %i.xt = getelementptr i8, ptr %i.xs, i64 280    ; 2 uses
  %i.xu = load <2 x ptr>, ptr %i.xt, align 8
  %.val666 = load ptr, ptr %i.xt, align 8, !nonnull !14, !noundef !14
  %i.xv = atomicrmw add ptr %.val666, i64 1 monotonic, align 8
  %i.xw = icmp slt i64 %i.xv, 0
  br i1 %i.xw, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  call void @llvm.trap()
  unreachable

bb.id:                                            ; preds = %bb.ib
  store <2 x ptr> %i.xu, ptr %i.ey, align 16
  %i.xx = load ptr, ptr %i.xa, align 8, !nonnull !14, !align !259, !noundef !14
  %i.xy = load ptr, ptr %i.xg, align 8, !nonnull !14, !align !259, !noundef !14
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void @_RNvXs0_NtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retriesNtB5_19SharedRetryStrategyNtB5_13RetryStrategy30should_attempt_initial_request(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.xz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ey, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(392) %i.xx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.xy)
          to label %bb.ig unwind label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.ya = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  call void @llvm.experimental.noalias.scope.decl(metadata !1426)
  %i.yb = load ptr, ptr %i.ey, align 16, !alias.scope !1429, !nonnull !14, !noundef !14
  %i.yc = atomicrmw sub ptr %i.yb, i64 1 release, align 8, !noalias !1429
  %i.yd = icmp eq i64 %i.yc, 1
  br i1 %i.yd, label %bb.if, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit

bb.if:                                            ; preds = %bb.ie
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries13RetryStrategyEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ey) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.af

bb.ig:                                            ; preds = %bb.id
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  store i8 1, ptr %i.ye, align 2
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  call void @llvm.experimental.noalias.scope.decl(metadata !1433)
  call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  %i.yf = load ptr, ptr %i.ey, align 16, !alias.scope !1439, !nonnull !14, !noundef !14
  %i.yg = atomicrmw sub ptr %i.yf, i64 1 release, align 8, !noalias !1439
  %i.yh = icmp eq i64 %i.yg, 1
  br i1 %i.yh, label %bb.ih, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit759

bb.ih:                                            ; preds = %bb.ig
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries13RetryStrategyEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ey) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit759 unwind label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.yi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit759: ; preds = %bb.ig, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  %i.yj = load i64, ptr %i.xz, align 8, !range !13, !noundef !14
  %i.yk = trunc nuw i64 %i.yj to i1
  br i1 %i.yk, label %bb.mm, label %bb.ij

bb.ij:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit759
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ym = load i32, ptr %i.yl, align 8, !range !1440, !noundef !14 ; 3 uses
  %i.yn = add nsw i32 %i.ym, -1000000000
  %i.yo = icmp samesign ugt i32 %i.ym, 999999999
  %narrow = select i1 %i.yo, i32 %i.yn, i32 2
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.io
    i32 1, label %bb.ik
    i32 2, label %bb.il
  ]

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  %i.yp = invoke fastcc ptr @_RNvXs1_NtCsbvkFyIu7lgC_4core7convertReINtB5_4IntoINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SyncNtB1G_4SendEL_EE4intoCs9rVkZwOUgsI_13deltalake_aws()
          to label %._crit_edge unwind label %bb.jk ; 2 uses

bb.il:                                            ; preds = %bb.ij
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ys = load i64, ptr %i.yq, align 8, !noundef !14
  store i64 %i.ys, ptr %i.yr, align 8
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i32 %i.ym, ptr %i.yt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  %i.yu = load ptr, ptr %i.xa, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1441)
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 360
  %i.yw = load ptr, ptr %i.yv, align 8, !alias.scope !1441, !noundef !14
  %.not.i760 = icmp eq ptr %i.yw, null
  br i1 %.not.i760, label %bb.kk, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 376
  %i.yy = load ptr, ptr %i.yx, align 8, !alias.scope !1441, !nonnull !14, !noundef !14 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yu, i64 384
  %i.za = load ptr, ptr %i.yz, align 8, !alias.scope !1441, !nonnull !14, !align !259, !noundef !14
  %i.zb = atomicrmw add ptr %i.yy, i64 1 monotonic, align 8, !noalias !1441
  %i.zc = icmp slt i64 %i.zb, 0
  br i1 %i.zc, label %bb.in, label %bb.kk

bb.in:                                            ; preds = %bb.im
  call void @llvm.trap()
  unreachable

bb.io:                                            ; preds = %bb.ij
  %i.zd = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ze = icmp ult i64 %i.zd, 2
  br i1 %i.ze, label %bb.ip, label %bb.iw

bb.ip:                                            ; preds = %bb.io
  %i.zf = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s6_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.zg = icmp ult i8 %i.zf, 3
  br i1 %i.zg, label %bb.is, label %bb.iq, !prof !1223

bb.iq:                                            ; preds = %bb.ip
  %i.zh = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s6_10___CALLSITE) #26
          to label %bb.is unwind label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.zi = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit

bb.is:                                            ; preds = %bb.iq, %bb.ip
  %.sroa.0.0.i762 = phi i8 [ %i.zf, %bb.ip ], [ %i.zh, %bb.iq ] ; 2 uses
  %i.zj = icmp eq i8 %.sroa.0.0.i762, 0
  br i1 %i.zj, label %bb.iw, label %bb.iu

bb.it:                                            ; preds = %bb.iu
  %i.zk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit

bb.iu:                                            ; preds = %bb.is
  %i.zl = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s6_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.zm = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.zl, i8 noundef %.sroa.0.0.i762)
          to label %bb.iv unwind label %bb.it

bb.iv:                                            ; preds = %bb.iu
  br i1 %i.zm, label %bb.jg, label %bb.iw

bb.iw:                                            ; preds = %bb.io, %bb.is, %bb.iv
  %i.zn = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1468 = icmp eq i8 %i.zn, 0
  br i1 %.not1468, label %bb.ix, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit851

bb.ix:                                            ; preds = %bb.iw
  %i.zo = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.zp = icmp ult i64 %i.zo, 6
  call void @llvm.assume(i1 %i.zp)
  %i.zq = icmp samesign ugt i64 %i.zo, 3
  br i1 %i.zq, label %bb.iz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit851

bb.iy:                                            ; preds = %bb.iz
  %i.zr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit

bb.iz:                                            ; preds = %bb.ix
  %i.zs = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s6_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.zt = getelementptr i8, ptr %i.zs, i64 32
  %.val654 = load ptr, ptr %i.zt, align 8, !nonnull !14, !noundef !14
  %i.zu = getelementptr i8, ptr %i.zs, i64 40
  %.val655 = load i64, ptr %i.zu, align 8, !noundef !14
  store i64 4, ptr %i.eu, align 8, !alias.scope !1444
  %.sroa.61143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %.val654, ptr %.sroa.61143.0..sroa_idx, align 8, !alias.scope !1444
  %.sroa.81144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i64 %.val655, ptr %.sroa.81144.0..sroa_idx, align 8, !alias.scope !1444
  %i.zv = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.ja unwind label %bb.iy     ; 2 uses

bb.ja:                                            ; preds = %bb.iz
  %i.zw = extractvalue { ptr, ptr } %i.zv, 0      ; 2 uses
  %i.zx = extractvalue { ptr, ptr } %i.zv, 1      ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 24
  %i.zz = load ptr, ptr %i.zy, align 8, !invariant.load !14, !nonnull !14
  %i.aaa = invoke noundef zeroext i1 %i.zz(ptr noundef %i.zw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eu)
          to label %bb.jc unwind label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.aab = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit

bb.jc:                                            ; preds = %bb.ja
  br i1 %i.aaa, label %bb.jd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit851

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  %i.aac = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s6_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
end_hunk_2
begin_hunk_3_@_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  br label %.body848

bb.lh:                                            ; preds = %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %bb.le

bb.li:                                            ; preds = %bb.le
  %i.ady = landingpad { ptr, i32 }
          cleanup
  br label %.body848

bb.lj:                                            ; preds = %bb.le
  %i.adz = extractvalue { ptr, ptr } %i.ads, 0
  %i.aea = extractvalue { ptr, ptr } %i.ads, 1
  %i.aeb = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.adz, ptr %i.aeb, align 8
  %i.aec = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.aea, ptr %i.aec, align 8
  br label %bb.qq

.body848:                                         ; preds = %bb.qy, %bb.qx, %bb.kw, %bb.lc, %bb.kz, %bb.qr, %bb.kp, %bb.kr, %bb.lg, %bb.li
  %.pn112 = phi { ptr, i32 } [ %i.adj, %bb.kz ], [ %i.amj, %bb.qr ], [ %i.acq, %bb.kp ], [ %i.ady, %bb.li ], [ %i.adx, %bb.lg ], [ %i.ams, %bb.qy ], [ %i.ams, %bb.qx ], [ %i.acz, %bb.kw ], [ %i.adp, %bb.lc ], [ %i.acs, %bb.kr ] ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  call void @llvm.experimental.noalias.scope.decl(metadata !1489)
  %i.aee = load ptr, ptr %i.aed, align 8, !alias.scope !1492, !nonnull !14, !noundef !14
  %i.aef = atomicrmw sub ptr %i.aee, i64 1 release, align 8, !noalias !1492
  %i.aeg = icmp eq i64 %i.aef, 1
  br i1 %i.aeg, label %bb.lk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit

bb.lk:                                            ; preds = %.body848
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep10AsyncSleepEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aed) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.af

bb.ll:                                            ; preds = %bb.kl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dx, ptr noundef nonnull align 8 dereferenceable(112) %i.dy, i64 112, i1 false)
  %i.aeh = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.aei = icmp ult i64 %i.aeh, 2
  br i1 %i.aei, label %bb.lm, label %bb.lt

bb.lm:                                            ; preds = %bb.ll
  %i.aej = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s9_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.aek = icmp ult i8 %i.aej, 3
  br i1 %i.aek, label %bb.lp, label %bb.ln, !prof !1223

bb.ln:                                            ; preds = %bb.lm
  %i.ael = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s9_10___CALLSITE) #26
          to label %bb.lp unwind label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.aem = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.lp:                                            ; preds = %bb.ln, %bb.lm
  %.sroa.0.0.i794 = phi i8 [ %i.aej, %bb.lm ], [ %i.ael, %bb.ln ] ; 2 uses
  %i.aen = icmp eq i8 %.sroa.0.0.i794, 0
  br i1 %i.aen, label %bb.lt, label %bb.lr

bb.lq:                                            ; preds = %bb.lr
  %i.aeo = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.lr:                                            ; preds = %bb.lp
  %i.aep = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s9_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.aeq = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aep, i8 noundef %.sroa.0.0.i794)
          to label %bb.ls unwind label %bb.lq

bb.ls:                                            ; preds = %bb.lr
  br i1 %i.aeq, label %bb.md, label %bb.lt

bb.lt:                                            ; preds = %bb.ll, %bb.lp, %bb.ls
  %i.aer = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1465 = icmp eq i8 %i.aer, 0
  br i1 %.not1465, label %bb.lu, label %bb.mg

bb.lu:                                            ; preds = %bb.lt
  %i.aes = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.aet = icmp ult i64 %i.aes, 6
  call void @llvm.assume(i1 %i.aet)
  %i.aeu = icmp samesign ugt i64 %i.aes, 3
  br i1 %i.aeu, label %bb.lw, label %bb.mg

bb.lv:                                            ; preds = %bb.lw
  %i.aev = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.lw:                                            ; preds = %bb.lu
  %i.aew = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s9_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.aex = getelementptr i8, ptr %i.aew, i64 32
  %.val648 = load ptr, ptr %i.aex, align 8, !nonnull !14, !noundef !14
  %i.aey = getelementptr i8, ptr %i.aew, i64 40
  %.val649 = load i64, ptr %i.aey, align 8, !noundef !14
  store i64 4, ptr %i.dt, align 8, !alias.scope !1493
  %.sroa.61189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %.val648, ptr %.sroa.61189.0..sroa_idx, align 8, !alias.scope !1493
  %.sroa.81190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 %.val649, ptr %.sroa.81190.0..sroa_idx, align 8, !alias.scope !1493
  %i.aez = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.lx unwind label %bb.lv     ; 2 uses

bb.lx:                                            ; preds = %bb.lw
  %i.afa = extractvalue { ptr, ptr } %i.aez, 0    ; 2 uses
  %i.afb = extractvalue { ptr, ptr } %i.aez, 1    ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 24
  %i.afd = load ptr, ptr %i.afc, align 8, !invariant.load !14, !nonnull !14
  %i.afe = invoke noundef zeroext i1 %i.afd(ptr noundef %i.afa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt)
          to label %bb.lz unwind label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.aff = landingpad { ptr, i32 }
          cleanup
  br label %bb.mk

bb.lz:                                            ; preds = %bb.lx
  br i1 %i.afe, label %bb.ma, label %bb.mg

bb.ma:                                            ; preds = %bb.lz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  %i.afg = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s9_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq)
  store ptr @42, ptr %i.dq, align 8
  %i.afi = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.afi, align 8
  store ptr %i.dq, ptr %i.dr, align 8
  %i.afj = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr @24, ptr %i.afj, align 8
  store i64 1, ptr %i.ds, align 8, !alias.scope !1497, !noalias !1500
  %.sroa.4.0..sroa_idx.i799 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store ptr %i.dr, ptr %.sroa.4.0..sroa_idx.i799, align 8, !alias.scope !1497, !noalias !1500
  %.sroa.5.0..sroa_idx.i800 = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i800, align 8, !alias.scope !1497, !noalias !1500
  %i.afk = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store ptr %i.afh, ptr %i.afk, align 8, !alias.scope !1497, !noalias !1500
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aew, ptr noundef nonnull %i.afa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.afb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ds)
          to label %bb.mc unwind label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.afl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  br label %bb.mk

bb.mc:                                            ; preds = %bb.ma
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  br label %bb.mg

bb.md:                                            ; preds = %bb.ls
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  %i.afm = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s9_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  store ptr @42, ptr %i.du, align 8
  %i.afo = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.afo, align 8
  store ptr %i.du, ptr %i.dv, align 8
  %i.afp = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr @24, ptr %i.afp, align 8
  store i64 1, ptr %i.dw, align 8
  %.sroa.61182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.dv, ptr %.sroa.61182.0..sroa_idx, align 8
  %.sroa.71183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i64 1, ptr %.sroa.71183.0..sroa_idx, align 8
  %.sroa.81184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store ptr %i.afn, ptr %.sroa.81184.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sb_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.dw)
          to label %bb.mf unwind label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.afq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %bb.mk

bb.mf:                                            ; preds = %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv)
  br label %bb.mg

bb.mg:                                            ; preds = %bb.mf, %bb.lt, %bb.lu, %bb.lz, %bb.mc
  %i.afr = load ptr, ptr %i.lu, align 8, !nonnull !14, !align !259, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dp, ptr noundef nonnull align 8 dereferenceable(112) %i.dx, i64 112, i1 false)
  invoke void @_RNvMs2_NtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7contextNtB5_18InterceptorContext4failCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.afr, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.dp)
          to label %bb.mi unwind label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.afs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  br label %bb.mj

bb.mi:                                            ; preds = %bb.mg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtB4_4time8DurationNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEEECs9rVkZwOUgsI_13deltalake_aws.exit995

bb.mj:                                            ; preds = %bb.mh, %bb.mk
  %.pn122.pn1386 = phi { ptr, i32 } [ %.pn122.pn.ph, %bb.mk ], [ %i.afs, %bb.mh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  br label %bb.ml

bb.mk:                                            ; preds = %bb.me, %bb.lq, %bb.lo, %bb.ly, %bb.mb, %bb.lv
  %.pn122.pn.ph = phi { ptr, i32 } [ %i.aeo, %bb.lq ], [ %i.afq, %bb.me ], [ %i.aev, %bb.lv ], [ %i.aff, %bb.ly ], [ %i.afl, %bb.mb ], [ %i.aem, %bb.lo ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtBL_12interceptors7context5ErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(112) %i.dx) #23
          to label %bb.mj unwind label %bb.af

bb.ml:                                            ; preds = %bb.mj, %bb.kj
  %.pn122.pn.pn = phi { ptr, i32 } [ %.pn122.pn1386, %bb.mj ], [ %i.acg, %bb.kj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit

bb.mm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  store i8 0, ptr %i.ye, align 2
  %i.aft = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.afu = load ptr, ptr %i.aft, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.afw = load ptr, ptr %i.afv, align 8, !nonnull !14, !align !259, !noundef !14 ; 2 uses
  store ptr %i.afu, ptr %i.eh, align 8
  %i.afx = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.afw, ptr %i.afx, align 8
  %i.afy = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.afz = icmp ult i64 %i.afy, 2
  br i1 %i.afz, label %bb.mn, label %bb.mu

bb.mn:                                            ; preds = %bb.mm
  %i.aga = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s8_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.agb = icmp ult i8 %i.aga, 3
  br i1 %i.agb, label %bb.mq, label %bb.mo, !prof !1223

bb.mo:                                            ; preds = %bb.mn
  %i.agc = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s8_10___CALLSITE) #26
          to label %bb.mq unwind label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.agd = landingpad { ptr, i32 }
          cleanup
  br label %bb.nl

bb.mq:                                            ; preds = %bb.mo, %bb.mn
  %.sroa.0.0.i803 = phi i8 [ %i.aga, %bb.mn ], [ %i.agc, %bb.mo ] ; 2 uses
  %i.age = icmp eq i8 %.sroa.0.0.i803, 0
  br i1 %i.age, label %bb.mu, label %bb.ms

bb.mr:                                            ; preds = %bb.ms
  %i.agf = landingpad { ptr, i32 }
          cleanup
  br label %bb.nl

bb.ms:                                            ; preds = %bb.mq
  %i.agg = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s8_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.agh = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.agg, i8 noundef %.sroa.0.0.i803)
          to label %bb.mt unwind label %bb.mr

bb.mt:                                            ; preds = %bb.ms
  br i1 %i.agh, label %bb.ne, label %bb.mu

bb.mu:                                            ; preds = %bb.mm, %bb.mq, %bb.mt
  %i.agi = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1477 = icmp eq i8 %i.agi, 0
  br i1 %.not1477, label %bb.mv, label %bb.nh

bb.mv:                                            ; preds = %bb.mu
  %i.agj = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.agk = icmp ult i64 %i.agj, 6
  call void @llvm.assume(i1 %i.agk)
  %i.agl = icmp samesign ugt i64 %i.agj, 3
  br i1 %i.agl, label %bb.mx, label %bb.nh

bb.mw:                                            ; preds = %bb.mx
  %i.agm = landingpad { ptr, i32 }
          cleanup
  br label %bb.nl

bb.mx:                                            ; preds = %bb.mv
  %i.agn = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s8_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.ago = getelementptr i8, ptr %i.agn, i64 32
  %.val646 = load ptr, ptr %i.ago, align 8, !nonnull !14, !noundef !14
  %i.agp = getelementptr i8, ptr %i.agn, i64 40
  %.val647 = load i64, ptr %i.agp, align 8, !noundef !14
  store i64 4, ptr %i.ed, align 8, !alias.scope !1503
  %.sroa.61172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %.val646, ptr %.sroa.61172.0..sroa_idx, align 8, !alias.scope !1503
  %.sroa.81173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i64 %.val647, ptr %.sroa.81173.0..sroa_idx, align 8, !alias.scope !1503
  %i.agq = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.my unwind label %bb.mw     ; 2 uses

bb.my:                                            ; preds = %bb.mx
  %i.agr = extractvalue { ptr, ptr } %i.agq, 0    ; 2 uses
  %i.ags = extractvalue { ptr, ptr } %i.agq, 1    ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 24
  %i.agu = load ptr, ptr %i.agt, align 8, !invariant.load !14, !nonnull !14
  %i.agv = invoke noundef zeroext i1 %i.agu(ptr noundef %i.agr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ed)
          to label %bb.na unwind label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.agw = landingpad { ptr, i32 }
          cleanup
  br label %bb.nl

bb.na:                                            ; preds = %bb.my
  br i1 %i.agv, label %bb.nb, label %bb.nh

bb.nb:                                            ; preds = %bb.na
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  %i.agx = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s8_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  store ptr @42, ptr %i.ea, align 8
  %i.agz = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.agz, align 8
  store ptr %i.ea, ptr %i.eb, align 8
  %i.aha = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr @24, ptr %i.aha, align 8
  store i64 1, ptr %i.ec, align 8, !alias.scope !1507, !noalias !1510
  %.sroa.4.0..sroa_idx.i808 = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.eb, ptr %.sroa.4.0..sroa_idx.i808, align 8, !alias.scope !1507, !noalias !1510
  %.sroa.5.0..sroa_idx.i809 = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i809, align 8, !alias.scope !1507, !noalias !1510
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store ptr %i.agy, ptr %i.ahb, align 8, !alias.scope !1507, !noalias !1510
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.agn, ptr noundef nonnull %i.agr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ags, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ed, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ec)
          to label %bb.nd unwind label %bb.nc

bb.nc:                                            ; preds = %bb.nb
  %i.ahc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  br label %bb.nl

bb.nd:                                            ; preds = %bb.nb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec)
  br label %bb.nh

bb.ne:                                            ; preds = %bb.mt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  %i.ahd = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s8_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee)
  store ptr @42, ptr %i.ee, align 8
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.ahf, align 8
  store ptr %i.ee, ptr %i.ef, align 8
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr @24, ptr %i.ahg, align 8
  store i64 1, ptr %i.eg, align 8
  %.sroa.61165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.ef, ptr %.sroa.61165.0..sroa_idx, align 8
  %.sroa.71166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i64 1, ptr %.sroa.71166.0..sroa_idx, align 8
  %.sroa.81167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store ptr %i.ahe, ptr %.sroa.81167.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s9_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.eg)
          to label %bb.ng unwind label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  br label %bb.nl

bb.ng:                                            ; preds = %bb.ne
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef)
  br label %bb.nh

bb.nh:                                            ; preds = %bb.nd, %bb.na, %bb.mv, %bb.mu, %bb.ng
  %i.ahi = load ptr, ptr %i.lu, align 8, !nonnull !14, !align !259, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  store i16 10, ptr %i.dz, align 8, !alias.scope !1513
  %.sroa.51176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  store ptr %i.afu, ptr %.sroa.51176.0..sroa_idx, align 8, !alias.scope !1513
  %.sroa.61177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store ptr %i.afw, ptr %.sroa.61177.0..sroa_idx, align 8, !alias.scope !1513
  invoke void @_RNvMs2_NtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7contextNtB5_18InterceptorContext4failCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.ahi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.dz)
          to label %bb.nj unwind label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.ahj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  br label %bb.nk

bb.nj:                                            ; preds = %bb.nh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtB4_4time8DurationNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEEECs9rVkZwOUgsI_13deltalake_aws.exit995

bb.nk:                                            ; preds = %bb.ni, %bb.nl
  %.pn262.pn1392 = phi { ptr, i32 } [ %.pn262.pn.ph, %bb.nl ], [ %i.ahj, %bb.ni ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit

bb.nl:                                            ; preds = %bb.nf, %bb.mr, %bb.mp, %bb.mz, %bb.nc, %bb.mw
  %.pn262.pn.ph = phi { ptr, i32 } [ %i.agf, %bb.mr ], [ %i.ahh, %bb.nf ], [ %i.agm, %bb.mw ], [ %i.agw, %bb.mz ], [ %i.ahc, %bb.nc ], [ %i.agd, %bb.mp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.eh) #23
          to label %bb.nk unwind label %bb.af

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ie, %bb.if
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  br label %bb.nm

bb.nm:                                            ; preds = %bb.ace, %bb.acd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit
  %.pn262.pn.pn.pn = phi { ptr, i32 } [ %.pn262.pn.pn, %bb.ace ], [ %.pn262.pn.pn, %bb.acd ], [ %.pn262.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %i.ya, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit ]
  %i.ahk = getelementptr inbounds nuw i8, ptr %0, i64 90
  store i8 0, ptr %i.ahk, align 2
  br label %bb.dn

bb.nn:                                            ; preds = %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fh, ptr noundef nonnull align 8 dereferenceable(48) %i.fi, i64 48, i1 false)
  %i.ahl = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ahm = icmp ult i64 %i.ahl, 2
  br i1 %i.ahm, label %bb.no, label %bb.nv

bb.no:                                            ; preds = %bb.nn
  %i.ahn = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s5_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.aho = icmp ult i8 %i.ahn, 3
  br i1 %i.aho, label %bb.nr, label %bb.np, !prof !1223

bb.np:                                            ; preds = %bb.no
  %i.ahp = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s5_10___CALLSITE) #26
          to label %bb.nr unwind label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.ahq = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

bb.nr:                                            ; preds = %bb.np, %bb.no
  %.sroa.0.0.i814 = phi i8 [ %i.ahn, %bb.no ], [ %i.ahp, %bb.np ] ; 2 uses
  %i.ahr = icmp eq i8 %.sroa.0.0.i814, 0
  br i1 %i.ahr, label %bb.nv, label %bb.nt

bb.ns:                                            ; preds = %bb.nt
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

bb.nt:                                            ; preds = %bb.nr
  %i.aht = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s5_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.ahu = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aht, i8 noundef %.sroa.0.0.i814)
          to label %bb.nu unwind label %bb.ns

bb.nu:                                            ; preds = %bb.nt
  br i1 %i.ahu, label %bb.of, label %bb.nv

bb.nv:                                            ; preds = %bb.nn, %bb.nr, %bb.nu
  %i.ahv = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1464 = icmp eq i8 %i.ahv, 0
  br i1 %.not1464, label %bb.nw, label %bb.oi

bb.nw:                                            ; preds = %bb.nv
  %i.ahw = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ahx = icmp ult i64 %i.ahw, 6
  call void @llvm.assume(i1 %i.ahx)
  %i.ahy = icmp samesign ugt i64 %i.ahw, 3
  br i1 %i.ahy, label %bb.ny, label %bb.oi

bb.nx:                                            ; preds = %bb.ny
  %i.ahz = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

bb.ny:                                            ; preds = %bb.nw
  %i.aia = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s5_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.aib = getelementptr i8, ptr %i.aia, i64 32
  %.val644 = load ptr, ptr %i.aib, align 8, !nonnull !14, !noundef !14
  %i.aic = getelementptr i8, ptr %i.aia, i64 40
  %.val645 = load i64, ptr %i.aic, align 8, !noundef !14
  store i64 4, ptr %i.fd, align 8, !alias.scope !1520
  %.sroa.61131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store ptr %.val644, ptr %.sroa.61131.0..sroa_idx, align 8, !alias.scope !1520
  %.sroa.81132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store i64 %.val645, ptr %.sroa.81132.0..sroa_idx, align 8, !alias.scope !1520
  %i.aid = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.nz unwind label %bb.nx     ; 2 uses

bb.nz:                                            ; preds = %bb.ny
  %i.aie = extractvalue { ptr, ptr } %i.aid, 0    ; 2 uses
  %i.aif = extractvalue { ptr, ptr } %i.aid, 1    ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 24
  %i.aih = load ptr, ptr %i.aig, align 8, !invariant.load !14, !nonnull !14
  %i.aii = invoke noundef zeroext i1 %i.aih(ptr noundef %i.aie, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fd)
          to label %bb.ob unwind label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.aij = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

bb.ob:                                            ; preds = %bb.nz
  br i1 %i.aii, label %bb.oc, label %bb.oi

bb.oc:                                            ; preds = %bb.ob
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc)
  %i.aik = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s5_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa)
  store ptr @42, ptr %i.fa, align 8
  %i.aim = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.aim, align 8
  store ptr %i.fa, ptr %i.fb, align 8
  %i.ain = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr @24, ptr %i.ain, align 8
  store i64 1, ptr %i.fc, align 8, !alias.scope !1524, !noalias !1527
  %.sroa.4.0..sroa_idx.i819 = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  store ptr %i.fb, ptr %.sroa.4.0..sroa_idx.i819, align 8, !alias.scope !1524, !noalias !1527
  %.sroa.5.0..sroa_idx.i820 = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i820, align 8, !alias.scope !1524, !noalias !1527
  %i.aio = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  store ptr %i.ail, ptr %i.aio, align 8, !alias.scope !1524, !noalias !1527
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aia, ptr noundef nonnull %i.aie, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aif, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fc)
          to label %bb.oe unwind label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.aip = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  br label %bb.om

bb.oe:                                            ; preds = %bb.oc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  br label %bb.oi

bb.of:                                            ; preds = %bb.nu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fg)
  %i.aiq = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s5_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ff)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fe)
  store ptr @42, ptr %i.fe, align 8
  %i.ais = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.ais, align 8
  store ptr %i.fe, ptr %i.ff, align 8
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr @24, ptr %i.ait, align 8
  store i64 1, ptr %i.fg, align 8
  %.sroa.61124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %i.ff, ptr %.sroa.61124.0..sroa_idx, align 8
  %.sroa.71125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i64 1, ptr %.sroa.71125.0..sroa_idx, align 8
  %.sroa.81126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store ptr %i.air, ptr %.sroa.81126.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s6_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.fg)
          to label %bb.oh unwind label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.aiu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff)
  br label %bb.om

bb.oh:                                            ; preds = %bb.of
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fe)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ff)
  br label %bb.oi

bb.oi:                                            ; preds = %bb.oh, %bb.nv, %bb.nw, %bb.ob, %bb.oe
  %i.aiv = load ptr, ptr %i.lu, align 8, !nonnull !14, !align !259, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i821)
  %.sroa.4.8..sroa_idx.i.i822 = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i821, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.4.8..sroa_idx.i.i822, ptr noundef nonnull align 8 dereferenceable(48) %i.fh, i64 48, i1 false)
  store i16 5, ptr %i.ez, align 8, !alias.scope !1530, !noalias !1535
  %.sroa.4.0..sroa_idx.i.i823 = getelementptr inbounds nuw i8, ptr %i.ez, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(54) %.sroa.4.0..sroa_idx.i.i823, ptr noundef nonnull align 2 dereferenceable(54) %.sroa.4.i.i821, i64 54, i1 false), !noalias !1535
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i821)
  invoke void @_RNvMs2_NtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7contextNtB5_18InterceptorContext4failCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.aiv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.ez)
          to label %bb.ok unwind label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.aiw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  br label %bb.ol

bb.ok:                                            ; preds = %bb.oi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  br label %common.ret

bb.ol:                                            ; preds = %bb.oj, %bb.om
  %.pn276.pn1398 = phi { ptr, i32 } [ %.pn276.pn.ph, %bb.om ], [ %i.aiw, %bb.oj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh)
  br label %6

bb.om:                                            ; preds = %bb.og, %bb.ns, %bb.nq, %bb.oa, %bb.od, %bb.nx
  %.pn276.pn.ph = phi { ptr, i32 } [ %i.ahs, %bb.ns ], [ %i.aiu, %bb.og ], [ %i.ahz, %bb.nx ], [ %i.aij, %bb.oa ], [ %i.aip, %bb.od ], [ %i.ahq, %bb.nq ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors5error16InterceptorErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.fh) #23
          to label %bb.ol unwind label %bb.af

6:                                                ; preds = %bb.hz, %bb.ol
  %.pn276.pn.pn = phi { ptr, i32 } [ %.pn276.pn1398, %bb.ol ], [ %i.xq, %bb.hz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  br label %bb.dn

bb.on:                                            ; preds = %bb.hx
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.fr, i64 48, i1 false)
  %i.aix = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.aiy = icmp ult i64 %i.aix, 2
  br i1 %i.aiy, label %bb.oo, label %bb.ov

bb.oo:                                            ; preds = %bb.on
  %i.aiz = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s4_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.aja = icmp ult i8 %i.aiz, 3
  br i1 %i.aja, label %bb.or, label %bb.op, !prof !1223

bb.op:                                            ; preds = %bb.oo
  %i.ajb = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s4_10___CALLSITE) #26
          to label %bb.or unwind label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.ajc = landingpad { ptr, i32 }
          cleanup
  br label %bb.pm

bb.or:                                            ; preds = %bb.op, %bb.oo
  %.sroa.0.0.i826 = phi i8 [ %i.aiz, %bb.oo ], [ %i.ajb, %bb.op ] ; 2 uses
  %i.ajd = icmp eq i8 %.sroa.0.0.i826, 0
  br i1 %i.ajd, label %bb.ov, label %bb.ot

bb.os:                                            ; preds = %bb.ot
  %i.aje = landingpad { ptr, i32 }
          cleanup
  br label %bb.pm

bb.ot:                                            ; preds = %bb.or
  %i.ajf = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s4_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.ajg = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ajf, i8 noundef %.sroa.0.0.i826)
          to label %bb.ou unwind label %bb.os

bb.ou:                                            ; preds = %bb.ot
  br i1 %i.ajg, label %bb.pf, label %bb.ov

bb.ov:                                            ; preds = %bb.on, %bb.or, %bb.ou
  %i.ajh = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1463 = icmp eq i8 %i.ajh, 0
  br i1 %.not1463, label %bb.ow, label %bb.pi

bb.ow:                                            ; preds = %bb.ov
  %i.aji = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ajj = icmp ult i64 %i.aji, 6
  call void @llvm.assume(i1 %i.ajj)
  %i.ajk = icmp samesign ugt i64 %i.aji, 3
  br i1 %i.ajk, label %bb.oy, label %bb.pi

bb.ox:                                            ; preds = %bb.oy
  %i.ajl = landingpad { ptr, i32 }
          cleanup
  br label %bb.pm

bb.oy:                                            ; preds = %bb.ow
  %i.ajm = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s4_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.ajn = getelementptr i8, ptr %i.ajm, i64 32
  %.val642 = load ptr, ptr %i.ajn, align 8, !nonnull !14, !noundef !14
  %i.ajo = getelementptr i8, ptr %i.ajm, i64 40
  %.val643 = load i64, ptr %i.ajo, align 8, !noundef !14
  store i64 4, ptr %i.fn, align 8, !alias.scope !1538
  %.sroa.61119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %.val642, ptr %.sroa.61119.0..sroa_idx, align 8, !alias.scope !1538
  %.sroa.81120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i64 %.val643, ptr %.sroa.81120.0..sroa_idx, align 8, !alias.scope !1538
  %i.ajp = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.oz unwind label %bb.ox     ; 2 uses

bb.oz:                                            ; preds = %bb.oy
  %i.ajq = extractvalue { ptr, ptr } %i.ajp, 0    ; 2 uses
  %i.ajr = extractvalue { ptr, ptr } %i.ajp, 1    ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 24
  %i.ajt = load ptr, ptr %i.ajs, align 8, !invariant.load !14, !nonnull !14
  %i.aju = invoke noundef zeroext i1 %i.ajt(ptr noundef %i.ajq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fn)
          to label %bb.pb unwind label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.ajv = landingpad { ptr, i32 }
          cleanup
  br label %bb.pm

bb.pb:                                            ; preds = %bb.oz
  br i1 %i.aju, label %bb.pc, label %bb.pi

bb.pc:                                            ; preds = %bb.pb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  %i.ajw = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s4_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fk)
  store ptr @42, ptr %i.fk, align 8
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.ajy, align 8
  store ptr %i.fk, ptr %i.fl, align 8
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr @24, ptr %i.ajz, align 8
  store i64 1, ptr %i.fm, align 8, !alias.scope !1542, !noalias !1545
  %.sroa.4.0..sroa_idx.i831 = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store ptr %i.fl, ptr %.sroa.4.0..sroa_idx.i831, align 8, !alias.scope !1542, !noalias !1545
  %.sroa.5.0..sroa_idx.i832 = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i832, align 8, !alias.scope !1542, !noalias !1545
  %i.aka = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store ptr %i.ajx, ptr %i.aka, align 8, !alias.scope !1542, !noalias !1545
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ajm, ptr noundef nonnull %i.ajq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ajr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fm)
          to label %bb.pe unwind label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.akb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  br label %bb.pm

bb.pe:                                            ; preds = %bb.pc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  br label %bb.pi

bb.pf:                                            ; preds = %bb.ou
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq)
  %i.akc = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s4_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akc, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo)
  store ptr @42, ptr %i.fo, align 8
  %i.ake = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.ake, align 8
  store ptr %i.fo, ptr %i.fp, align 8
  %i.akf = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr @24, ptr %i.akf, align 8
  store i64 1, ptr %i.fq, align 8
  %.sroa.61112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store ptr %i.fp, ptr %.sroa.61112.0..sroa_idx, align 8
  %.sroa.71113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i64 1, ptr %.sroa.71113.0..sroa_idx, align 8
  %.sroa.81114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  store ptr %i.akd, ptr %.sroa.81114.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s5_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.fq)
          to label %bb.ph unwind label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.akg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
  br label %bb.pm

bb.ph:                                            ; preds = %bb.pf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
  br label %bb.pi

bb.pi:                                            ; preds = %bb.ph, %bb.ov, %bb.ow, %bb.pb, %bb.pe
  %i.akh = load ptr, ptr %i.lu, align 8, !nonnull !14, !align !259, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fj)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i833)
  %.sroa.4.8..sroa_idx.i.i834 = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i833, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(48) %.sroa.4.8..sroa_idx.i.i834, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  store i16 5, ptr %i.fj, align 8, !alias.scope !1548, !noalias !1553
  %.sroa.4.0..sroa_idx.i.i835 = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(54) %.sroa.4.0..sroa_idx.i.i835, ptr noundef nonnull align 2 dereferenceable(54) %.sroa.4.i.i833, i64 54, i1 false), !noalias !1553
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i833)
  invoke void @_RNvMs2_NtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7contextNtB5_18InterceptorContext4failCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.akh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.fj)
          to label %bb.pk unwind label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.aki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  br label %bb.pl

bb.pk:                                            ; preds = %bb.pi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fj)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr)
  br label %common.ret

bb.pl:                                            ; preds = %bb.pj, %bb.pm
  %.pn288.pn1404 = phi { ptr, i32 } [ %.pn288.pn.ph, %bb.pm ], [ %i.aki, %bb.pj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %7

bb.pm:                                            ; preds = %bb.pg, %bb.os, %bb.oq, %bb.pa, %bb.pd, %bb.ox
  %.pn288.pn.ph = phi { ptr, i32 } [ %i.aje, %bb.os ], [ %i.akg, %bb.pg ], [ %i.ajl, %bb.ox ], [ %i.ajv, %bb.pa ], [ %i.akb, %bb.pd ], [ %i.ajc, %bb.oq ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors5error16InterceptorErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %2) #23
          to label %bb.pl unwind label %bb.af

7:                                                ; preds = %bb.hw, %bb.pl
  %.pn288.pn.pn = phi { ptr, i32 } [ %.pn288.pn1404, %bb.pl ], [ %i.xi, %bb.hw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr)
  br label %bb.dn

bb.pn:                                            ; preds = %bb.hr, %.noexc754, %bb.hs
  %i.akj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.hf, %bb.qn, %.body738, %bb.po, %bb.pn
  %.pn300.pn.pn.pn = phi { ptr, i32 } [ %.pn95.ph, %bb.po ], [ %i.akj, %bb.pn ], [ %.pn300.pn1415, %bb.qn ], [ %i.wb, %bb.hf ], [ %.pn87, %.body738 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge)
  br label %bb.ci

bb.po:                                            ; preds = %bb.ho, %bb.hp, %bb.hk
  %.pn95.ph = phi { ptr, i32 } [ %.pn90, %bb.hk ], [ %i.wq, %bb.ho ], [ %i.wr, %bb.hp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft)
  call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  %i.akk = load ptr, ptr %i.ge, align 8, !alias.scope !1562, !nonnull !14, !align !259, !noundef !14
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 32
  %i.akm = load ptr, ptr %i.akl, align 8, !noalias !1562, !nonnull !14, !noundef !14
  %i.akn = load ptr, ptr %i.wh, align 8, !alias.scope !1562, !noundef !14
  %i.ako = load i64, ptr %i.wj, align 8, !alias.scope !1562, !noundef !14
  invoke void %i.akm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.wg, ptr noundef %i.akn, i64 noundef %i.ako)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.af, !inline_history !506

bb.pp:                                            ; preds = %bb.hg
  %i.akp = extractvalue { ptr, ptr } %i.wc, 0
  %i.akq = extractvalue { ptr, ptr } %i.wc, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc)
  store i16 10, ptr %i.gc, align 8
  %.sroa.91076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store ptr %i.akp, ptr %.sroa.91076.0..sroa_idx, align 8
  %.sroa.121078.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store ptr %i.akq, ptr %.sroa.121078.0..sroa_idx, align 8
  %i.akr = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.aks = icmp ult i64 %i.akr, 2
  br i1 %i.aks, label %bb.pq, label %bb.px

bb.pq:                                            ; preds = %bb.pp
  %i.akt = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s3_10___CALLSITE, i64 16) monotonic, align 8 ; 2 uses
  %i.aku = icmp ult i8 %i.akt, 3
  br i1 %i.aku, label %bb.pt, label %bb.pr, !prof !1223

bb.pr:                                            ; preds = %bb.pq
  %i.akv = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s3_10___CALLSITE) #26
          to label %bb.pt unwind label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.akw = landingpad { ptr, i32 }
          cleanup
  br label %bb.qo

bb.pt:                                            ; preds = %bb.pr, %bb.pq
  %.sroa.0.0.i839 = phi i8 [ %i.akt, %bb.pq ], [ %i.akv, %bb.pr ] ; 2 uses
  %i.akx = icmp eq i8 %.sroa.0.0.i839, 0
  br i1 %i.akx, label %bb.px, label %bb.pv

bb.pu:                                            ; preds = %bb.pv
  %i.aky = landingpad { ptr, i32 }
          cleanup
  br label %bb.qo

bb.pv:                                            ; preds = %bb.pt
  %i.akz = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s3_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.ala = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.akz, i8 noundef %.sroa.0.0.i839)
          to label %bb.pw unwind label %bb.pu

bb.pw:                                            ; preds = %bb.pv
  br i1 %i.ala, label %bb.qh, label %bb.px

bb.px:                                            ; preds = %bb.pp, %bb.pt, %bb.pw
  %i.alb = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %.not1462 = icmp eq i8 %i.alb, 0
  br i1 %.not1462, label %bb.py, label %bb.qk

bb.py:                                            ; preds = %bb.px
  %i.alc = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ald = icmp ult i64 %i.alc, 6
  call void @llvm.assume(i1 %i.ald)
  %i.ale = icmp samesign ugt i64 %i.alc, 3
  br i1 %i.ale, label %bb.qa, label %bb.qk

bb.pz:                                            ; preds = %bb.qa
  %i.alf = landingpad { ptr, i32 }
          cleanup
  br label %bb.qo

bb.qa:                                            ; preds = %bb.py
  %i.alg = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s3_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14 ; 3 uses
  %i.alh = getelementptr i8, ptr %i.alg, i64 32
  %.val640 = load ptr, ptr %i.alh, align 8, !nonnull !14, !noundef !14
  %i.ali = getelementptr i8, ptr %i.alg, i64 40
  %.val641 = load i64, ptr %i.ali, align 8, !noundef !14
  store i64 4, ptr %i.fy, align 8, !alias.scope !1563
  %.sroa.61104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr %.val640, ptr %.sroa.61104.0..sroa_idx, align 8, !alias.scope !1563
  %.sroa.81105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i64 %.val641, ptr %.sroa.81105.0..sroa_idx, align 8, !alias.scope !1563
  %i.alj = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.qb unwind label %bb.pz     ; 2 uses

bb.qb:                                            ; preds = %bb.qa
  %i.alk = extractvalue { ptr, ptr } %i.alj, 0    ; 2 uses
  %i.all = extractvalue { ptr, ptr } %i.alj, 1    ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 24
  %i.aln = load ptr, ptr %i.alm, align 8, !invariant.load !14, !nonnull !14
  %i.alo = invoke noundef zeroext i1 %i.aln(ptr noundef %i.alk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fy)
          to label %bb.qd unwind label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.alp = landingpad { ptr, i32 }
          cleanup
  br label %bb.qo

bb.qd:                                            ; preds = %bb.qb
  br i1 %i.alo, label %bb.qe, label %bb.qk

bb.qe:                                            ; preds = %bb.qd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx)
  %i.alq = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s3_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv)
  store ptr @42, ptr %i.fv, align 8
  %i.als = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.als, align 8
  store ptr %i.fv, ptr %i.fw, align 8
  %i.alt = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr @24, ptr %i.alt, align 8
  store i64 1, ptr %i.fx, align 8, !alias.scope !1567, !noalias !1570
  %.sroa.4.0..sroa_idx.i844 = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.fw, ptr %.sroa.4.0..sroa_idx.i844, align 8, !alias.scope !1567, !noalias !1570
  %.sroa.5.0..sroa_idx.i845 = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i845, align 8, !alias.scope !1567, !noalias !1570
  %i.alu = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  store ptr %i.alr, ptr %i.alu, align 8, !alias.scope !1567, !noalias !1570
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.alg, ptr noundef nonnull %i.alk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.all, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.fy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fx)
          to label %bb.qg unwind label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.alv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx)
  br label %bb.qo

bb.qg:                                            ; preds = %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx)
  br label %bb.qk

bb.qh:                                            ; preds = %bb.pw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb)
  %i.alw = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s3_10___CALLSITE, align 8, !nonnull !14, !align !259, !noundef !14
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fz)
  store ptr @42, ptr %i.fz, align 8
  %i.aly = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.aly, align 8
  store ptr %i.fz, ptr %i.ga, align 8
  %i.alz = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr @24, ptr %i.alz, align 8
  store i64 1, ptr %i.gb, align 8
  %.sroa.61097.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store ptr %i.ga, ptr %.sroa.61097.0..sroa_idx, align 8
  %.sroa.71098.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i64 1, ptr %.sroa.71098.0..sroa_idx, align 8
  %.sroa.81099.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  store ptr %i.alx, ptr %.sroa.81099.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s4_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.gb)
          to label %bb.qj unwind label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.ama = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  br label %bb.qo

bb.qj:                                            ; preds = %bb.qh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  br label %bb.qk

bb.qk:                                            ; preds = %bb.qj, %bb.px, %bb.py, %bb.qd, %bb.qg
  %i.amb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.amc = load ptr, ptr %i.amb, align 8, !nonnull !14, !align !259, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.fu, ptr noundef nonnull align 8 dereferenceable(112) %i.gc, i64 112, i1 false)
  invoke void @_RNvMs2_NtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7contextNtB5_18InterceptorContext4failCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.amc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.fu)
          to label %bb.qm unwind label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.amd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu)
end_hunk_3
