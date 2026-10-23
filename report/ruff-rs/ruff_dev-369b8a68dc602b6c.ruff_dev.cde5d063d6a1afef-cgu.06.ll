Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_dev-369b8a68dc602b6c.ruff_dev.cde5d063d6a1afef-cgu.06?download=true
inline.NumInlined: 1153
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvNtCshFZivb7RUAJ_8ruff_dev10format_dev18format_dev_project:bb.a
  %i.yf = trunc nuw i8 %.sroa.0107.2 to i1
  br i1 %i.yf, label %bb.it, label %bb.gw

bb.it:                                            ; preds = %bb.is
  call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %i.yg = load i64, ptr %i.dr, align 8, !range !7, !alias.scope !1073, !noalias !1074, !noundef !4
  %.not.i.i.i340 = icmp eq i64 %i.yg, 2
  br i1 %.not.i.i.i340, label %.noexc343, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.yh = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  invoke void @_RNvMs2_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.yh)
          to label %.noexc343 unwind label %.thread.thread

.noexc343:                                        ; preds = %bb.iu, %bb.it
  %i.yi = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1074
  %i.yj = icmp eq i8 %i.yi, 0
  br i1 %i.yj, label %bb.iv, label %.sink.split500

bb.iv:                                            ; preds = %.noexc343
  %i.yk = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.yl = load ptr, ptr %i.yk, align 8, !alias.scope !1073, !noalias !1074, !align !11, !noundef !4 ; 3 uses
  %.not4.i.i.i341 = icmp eq ptr %i.yl, null
  br i1 %.not4.i.i.i341, label %.sink.split500, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1075
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %i.yn = load ptr, ptr %i.ym, align 8, !noalias !1074, !nonnull !4, !noundef !4
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yl, i64 24
  %i.yp = load i64, ptr %i.yo, align 8, !noalias !1074, !noundef !4
  store ptr %i.yn, ptr %i.b, align 8, !noalias !1075
  %i.yq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.yp, ptr %i.yq, align 8, !noalias !1075
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1075
  store ptr %i.b, ptr %i.a, align 8, !noalias !1075
  %.sroa.43.0..sroa_idx.i.i.i342 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCshFZivb7RUAJ_8ruff_dev, ptr %.sroa.43.0..sroa_idx.i.i.i342, align 8, !noalias !1075
  invoke fastcc void @_RNvMNtCsdbMkb98Dhky_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.dr, ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 21, ptr noundef nonnull @32, ptr noundef nonnull %i.a)
          to label %.noexc344 unwind label %.thread.thread

.noexc344:                                        ; preds = %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1075
  br label %.sink.split500

bb.ix:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdbMkb98Dhky_7tracing4span7EnteredECshFZivb7RUAJ_8ruff_dev(ptr nonnull %i.dr) #23
          to label %.thread unwind label %bb.t

.thread.thread407:                                ; preds = %bb.l, %bb.iy, %.thread
  %.pn248405 = phi { ptr, i32 } [ %.pn248406, %bb.iy ], [ %.pn246, %.thread ], [ %i.ew, %bb.l ]
  resume { ptr, i32 } %.pn248405

bb.iy:                                            ; preds = %.thread.thread, %.thread
  %.pn248406 = phi { ptr, i32 } [ %i.vc, %.thread.thread ], [ %.pn246, %.thread ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdbMkb98Dhky_7tracing4span4SpanECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(40) %i.dr) #23
          to label %.thread.thread407 unwind label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCshFZivb7RUAJ_8ruff_dev10format_dev4main(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [4 x i8], align 4                ; 6 uses
  %i.ak = alloca [80 x i8], align 8               ; 14 uses
  %i.al = alloca [4 x i8], align 4                ; 5 uses
  %i.am = alloca [96 x i8], align 8               ; 13 uses
  %.sroa.8553.i = alloca [88 x i8], align 8       ; 7 uses
  %i.an = alloca [32 x i8], align 8               ; 10 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  %i.ap = alloca [32 x i8], align 8               ; 8 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 10 uses
  %i.as = alloca [64 x i8], align 8               ; 11 uses
  %i.at = alloca [4 x i8], align 4                ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [32 x i8], align 8               ; 7 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [64 x i8], align 8               ; 11 uses
  %i.az = alloca [4 x i8], align 4                ; 4 uses
  %i.ba = alloca [16 x i8], align 8               ; 5 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [32 x i8], align 8               ; 8 uses
  %i.bd = alloca [40 x i8], align 8               ; 4 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [16 x i8], align 8               ; 5 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [32 x i8], align 8               ; 7 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %i.bk = alloca [32 x i8], align 8               ; 7 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [16 x i8], align 8               ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 5 uses
  %i.bo = alloca [32 x i8], align 8               ; 8 uses
  %i.bp = alloca [8 x i8], align 8                ; 7 uses
  %i.bq = alloca [96 x i8], align 8               ; 5 uses
  %i.br = alloca [16 x i8], align 8               ; 5 uses
  %i.bs = alloca [16 x i8], align 8               ; 5 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [24 x i8], align 8               ; 9 uses
  %i.bv = alloca [16 x i8], align 8               ; 5 uses
  %i.bw = alloca [16 x i8], align 8               ; 5 uses
  %i.bx = alloca [16 x i8], align 8               ; 5 uses
  %i.by = alloca [32 x i8], align 8               ; 7 uses
  %i.bz = alloca [24 x i8], align 8               ; 7 uses
  %i.ca = alloca [16 x i8], align 8               ; 5 uses
  %i.cb = alloca [24 x i8], align 8               ; 9 uses
  %i.cc = alloca [16 x i8], align 8               ; 5 uses
  %i.cd = alloca [16 x i8], align 8               ; 5 uses
  %i.ce = alloca [16 x i8], align 8               ; 5 uses
  %i.cf = alloca [32 x i8], align 8               ; 8 uses
  %i.cg = alloca [112 x i8], align 8              ; 17 uses
  %i.ch = alloca [4 x i8], align 4                ; 4 uses
  %i.ci = alloca [4 x i8], align 4                ; 4 uses
  %i.cj = alloca [8 x i8], align 8                ; 4 uses
  %i.ck = alloca [16 x i8], align 8               ; 5 uses
  %i.cl = alloca [16 x i8], align 8               ; 5 uses
  %i.cm = alloca [16 x i8], align 8               ; 5 uses
  %i.cn = alloca [32 x i8], align 8               ; 7 uses
  %i.co = alloca [24 x i8], align 8               ; 7 uses
  %i.cp = alloca [112 x i8], align 8              ; 17 uses
  %i.cq = alloca [4 x i8], align 4                ; 4 uses
  %i.cr = alloca [4 x i8], align 4                ; 4 uses
  %i.cs = alloca [8 x i8], align 8                ; 4 uses
  %i.ct = alloca [16 x i8], align 8               ; 5 uses
  %i.cu = alloca [16 x i8], align 8               ; 5 uses
  %i.cv = alloca [16 x i8], align 8               ; 5 uses
  %i.cw = alloca [32 x i8], align 8               ; 8 uses
  %i.cx = alloca [96 x i8], align 8               ; 15 uses
  %i.cy = alloca [96 x i8], align 8               ; 6 uses
  %i.cz = alloca [16 x i8], align 8               ; 5 uses
  %i.da = alloca [16 x i8], align 8               ; 5 uses
  %i.db = alloca [16 x i8], align 8               ; 5 uses
  %i.dc = alloca [16 x i8], align 8               ; 5 uses
  %i.dd = alloca [32 x i8], align 8               ; 7 uses
  %i.de = alloca [24 x i8], align 8               ; 7 uses
  %i.df = alloca [16 x i8], align 8               ; 5 uses
  %i.dg = alloca [16 x i8], align 8               ; 5 uses
  %i.dh = alloca [16 x i8], align 8               ; 5 uses
  %i.di = alloca [16 x i8], align 8               ; 5 uses
  %i.dj = alloca [32 x i8], align 8               ; 8 uses
  %i.dk = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.7.i = alloca [16 x i8], align 8          ; 6 uses
  %i.dl = alloca [32 x i8], align 8               ; 8 uses
  %i.dm = alloca [24 x i8], align 8               ; 14 uses
  %i.dn = alloca [136 x i8], align 8              ; 6 uses
  %i.do = alloca [32 x i8], align 8               ; 7 uses
  %i.dp = alloca [40 x i8], align 8               ; 7 uses
  %i.dq = alloca [32 x i8], align 8               ; 7 uses
  %i.dr = alloca [40 x i8], align 8               ; 22 uses
  %i.ds = alloca [40 x i8], align 8               ; 7 uses
  %i.dt = alloca [40 x i8], align 8               ; 10 uses
  %i.du = alloca [24 x i8], align 8               ; 6 uses
  %i.dv = alloca [48 x i8], align 8               ; 6 uses
  %i.dw = alloca [16 x i8], align 8               ; 12 uses
  %i.dx = alloca [16 x i8], align 8               ; 4 uses
  %i.dy = alloca [16 x i8], align 8               ; 5 uses
  %i.dz = alloca [24 x i8], align 8               ; 13 uses
  %i.ea = alloca [16 x i8], align 8               ; 6 uses
  %i.eb = alloca [4 x i8], align 4                ; 11 uses
  %i.ec = alloca [8 x i8], align 8                ; 8 uses
  %i.ed = alloca [8 x i8], align 8                ; 9 uses
  %i.ee = alloca [16 x i8], align 8               ; 5 uses
  %i.ef = alloca [24 x i8], align 8               ; 7 uses
  %i.eg = alloca [80 x i8], align 8               ; 9 uses
  %i.eh = alloca [112 x i8], align 8              ; 6 uses
  %i.ei = alloca [112 x i8], align 8              ; 8 uses
  %i.ej = alloca [8 x i8], align 4                ; 4 uses
  %i.ek = alloca [16 x i8], align 8               ; 6 uses
  %i.el = alloca [32 x i8], align 8               ; 5 uses
  %i.em = alloca [20 x i8], align 4               ; 7 uses
  %i.en = alloca [344 x i8], align 8              ; 4 uses
  %i.eo = alloca [24 x i8], align 8               ; 4 uses
  %i.ep = alloca [1768 x i8], align 8             ; 4 uses
  %i.eq = alloca [544 x i8], align 8              ; 4 uses
  %i.er = alloca [2320 x i8], align 8             ; 4 uses
  %i.es = alloca [2352 x i8], align 8             ; 4 uses
  %i.et = alloca [2704 x i8], align 8             ; 4 uses
  %i.eu = alloca [2728 x i8], align 8             ; 4 uses
  %i.ev = alloca [24 x i8], align 8               ; 9 uses
  %i.ew = alloca [24 x i8], align 8               ; 12 uses
  %i.ex = alloca [136 x i8], align 8              ; 7 uses
  %i.ey = alloca [136 x i8], align 8              ; 4 uses
  %i.ez = alloca [344 x i8], align 8              ; 5 uses
  %i.fa = alloca [344 x i8], align 8              ; 8 uses
  %i.fb = alloca [1768 x i8], align 8             ; 6 uses
  %i.fc = alloca [1768 x i8], align 8             ; 8 uses
  %i.fd = alloca [8 x i8], align 8                ; 4 uses
  %i.fe = alloca [24 x i8], align 8               ; 4 uses
  %i.ff = alloca [24 x i8], align 8               ; 4 uses
  %i.fg = alloca [32 x i8], align 8               ; 7 uses
  %i.fh = alloca [16 x i8], align 8               ; 5 uses
  %i.fi = alloca [16 x i8], align 8               ; 5 uses
  %i.fj = alloca [32 x i8], align 8               ; 7 uses
  %i.fk = alloca [24 x i8], align 8               ; 7 uses
  %i.fl = alloca [32 x i8], align 8               ; 7 uses
  %i.fm = alloca [16 x i8], align 8               ; 5 uses
  %i.fn = alloca [16 x i8], align 8               ; 5 uses
  %i.fo = alloca [32 x i8], align 8               ; 7 uses
  %i.fp = alloca [4 x i8], align 4                ; 6 uses
  %i.fq = alloca [96 x i8], align 8               ; 15 uses
  %i.fr = alloca [4 x i8], align 4                ; 4 uses
  %i.fs = alloca [4 x i8], align 4                ; 4 uses
  %i.ft = alloca [16 x i8], align 8               ; 5 uses
  %i.fu = alloca [16 x i8], align 8               ; 5 uses
  %i.fv = alloca [32 x i8], align 8               ; 7 uses
  %i.fw = alloca [24 x i8], align 8               ; 7 uses
  %i.fx = alloca [96 x i8], align 8               ; 15 uses
  %i.fy = alloca [4 x i8], align 4                ; 4 uses
  %i.fz = alloca [4 x i8], align 4                ; 4 uses
  %i.ga = alloca [16 x i8], align 8               ; 5 uses
  %i.gb = alloca [16 x i8], align 8               ; 5 uses
  %i.gc = alloca [32 x i8], align 8               ; 8 uses
  %i.gd = alloca [16 x i8], align 8               ; 5 uses
  %i.ge = alloca [16 x i8], align 8               ; 5 uses
  %i.gf = alloca [16 x i8], align 8               ; 5 uses
  %i.gg = alloca [16 x i8], align 8               ; 5 uses
  %i.gh = alloca [16 x i8], align 8               ; 5 uses
  %i.gi = alloca [16 x i8], align 8               ; 5 uses
  %i.gj = alloca [32 x i8], align 8               ; 7 uses
  %i.gk = alloca [24 x i8], align 8               ; 7 uses
  %i.gl = alloca [16 x i8], align 8               ; 5 uses
  %i.gm = alloca [16 x i8], align 8               ; 5 uses
  %i.gn = alloca [16 x i8], align 8               ; 5 uses
  %i.go = alloca [16 x i8], align 8               ; 5 uses
  %i.gp = alloca [32 x i8], align 8               ; 8 uses
  %i.gq = alloca [8 x i8], align 8                ; 8 uses
  %i.gr = alloca [96 x i8], align 8               ; 7 uses
  %i.gs = alloca [96 x i8], align 8               ; 29 uses
  %i.gt = alloca [32 x i8], align 8               ; 11 uses
  %i.gu = alloca [16 x i8], align 8               ; 4 uses
  %i.gv = alloca [16 x i8], align 8               ; 7 uses
  %i.gw = alloca [32 x i8], align 8               ; 5 uses
  %i.gx = alloca [32 x i8], align 8               ; 14 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ha = load i64, ptr %i.gz, align 8, !range !6, !noundef !4
  %.not = icmp eq i64 %i.ha, -1
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.hc = load ptr, ptr %i.hb, align 8, !nonnull !4
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.he = load i64, ptr %i.hd, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 111
  %i.hg = load i8, ptr %i.hf, align 1, !range !21, !alias.scope !1241, !noundef !4
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 110
  %i.hj = load i8, ptr %i.hi, align 2, !range !21, !alias.scope !1241, !noundef !4
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.hl = load i8, ptr %i.gy, align 1, !range !21, !alias.scope !1241, !noundef !4
  %i.hm = trunc nuw i8 %i.hl to i1
  %spec.select.i = select i1 %i.hm, i64 1, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 3, %bb.b ], [ 4, %bb.a ], [ %spec.select.i, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fc), !noalias !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb), !noalias !1242
  call void @_RNvMs_NtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3envNtB4_9EnvFilter20try_from_default_env(ptr noalias noundef nonnull sret([1768 x i8]) align 8 captures(address) dereferenceable(1768) %i.fb), !noalias !1241
  %i.hn = load i64, ptr %i.fb, align 8, !range !14, !noalias !1242, !noundef !4
  %i.ho = icmp eq i64 %i.hn, -2
  br i1 %i.ho, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el), !noalias !1242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.el, ptr noundef nonnull align 8 dereferenceable(32) %i.hp, i64 32, i1 false), !noalias !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei), !noalias !1243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !noalias !1243
  %i.hq = getelementptr inbounds nuw i8, ptr %i.eh, i64 104
  store i8 1, ptr %i.hq, align 8, !noalias !1243
  %i.hr = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  store i64 -1, ptr %i.hr, align 8, !noalias !1243
  store i64 -2, ptr %i.eh, align 8, !noalias !1243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !noalias !1243
  %i.hs = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  store i64 -1, ptr %i.hs, align 8, !noalias !1243
  %i.ht = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i64 0, ptr %i.ht, align 8, !noalias !1243
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !1243
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1243
  %i.hu = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  store i64 -1, ptr %i.hu, align 8, !noalias !1243
  store i64 %.sroa.0.0.i, ptr %i.eg, align 8, !noalias !1243
  invoke void @_RNvMNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env7builderNtB2_7Builder22with_default_directive(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ei, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.eg)
          to label %bb.g unwind label %bb.f, !noalias !1244

.body.i.i:                                        ; preds = %.body.i.i.i, %bb.h, %bb.f
  %.pn.i.i = phi { ptr, i32 } [ %i.hw, %bb.h ], [ %i.hv, %bb.f ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env12FromEnvErrorECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.el) #23
          to label %common.resume unwind label %bb.o, !noalias !1245

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECshFZivb7RUAJ_8ruff_dev.exit.i.i.i, %bb.e
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !1243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !1243
  invoke void @_RINvMNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env7builderNtB3_7Builder11parse_lossyReECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([1768 x i8]) align 8 captures(address) dereferenceable(1768) %i.fc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ei, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.i unwind label %bb.h, !noalias !1246

bb.h:                                             ; preds = %bb.g
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env7builder7BuilderECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(112) %i.ei) #23
          to label %.body.i.i unwind label %bb.o, !noalias !1244

bb.i:                                             ; preds = %bb.g
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ei, i64 80 ; 4 uses
  %i.hy = load i64, ptr %i.hx, align 8, !range !6, !alias.scope !1247, !noalias !1243, !noundef !4
  %i.hz = icmp eq i64 %i.hy, -1
  br i1 %i.hz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECshFZivb7RUAJ_8ruff_dev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i unwind label %bb.k, !noalias !1244

bb.k:                                             ; preds = %bb.j
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hx)
          to label %.body.i.i.i unwind label %bb.l, !noalias !1244

bb.l:                                             ; preds = %bb.k
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !1244
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i: ; preds = %bb.j
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECshFZivb7RUAJ_8ruff_dev.exit.i.i.i unwind label %bb.m, !noalias !1244

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.m, %bb.k
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ic, %bb.m ], [ %i.ia, %bb.k ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9DirectiveEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ei) #23
          to label %.body.i.i unwind label %bb.n, !noalias !1244

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECshFZivb7RUAJ_8ruff_dev.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i, %bb.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9DirectiveEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ei)
          to label %_RNCNvNtCshFZivb7RUAJ_8ruff_dev10format_dev13setup_logging0B5_.exit.i unwind label %bb.f, !noalias !1244

bb.n:                                             ; preds = %.body.i.i.i
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !1244
  unreachable

bb.o:                                             ; preds = %bb.h, %.body.i.i
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !1245
  unreachable

common.resume:                                    ; preds = %bb.le, %bb.ol, %.thread, %.body.i.i, %.thread88.i, %bb.ap, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %i.jw, %bb.ap ], [ %.pn.i.i, %.body.i.i ], [ %.pn2851.i, %.thread.i ], [ %.pn28.i, %.thread88.i ], [ %eh.lpad-body189, %bb.le ], [ %.pn225, %bb.ol ], [ %.pn225, %.thread ]
  resume { ptr, i32 } %common.resume.op

_RNCNvNtCshFZivb7RUAJ_8ruff_dev10format_dev13setup_logging0B5_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECshFZivb7RUAJ_8ruff_dev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei), !noalias !1243
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env12FromEnvErrorECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.el), !noalias !1245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el), !noalias !1242
  br label %bb.q

bb.p:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1768) %i.fc, ptr noundef nonnull align 8 dereferenceable(1768) %i.fb, i64 1768, i1 false), !noalias !1242
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RNCNvNtCshFZivb7RUAJ_8ruff_dev10format_dev13setup_logging0B5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb), !noalias !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fa), !noalias !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ez), !noalias !1242
  invoke void @_RNvXs5_Csh8k9AkFYpg3_17tracing_indicatifINtB5_14IndicatifLayerINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtNtB15_3fmt9fmt_layer5LayerIBZ_NtNtNtB15_6filter3env9EnvFilterNtNtNtB15_8registry7sharded8RegistryENtNtB24_6format13DefaultFieldsNtB3G_6FormatNtNtB5_6writer15IndicatifWriterEB2u_EENtNtCs4NRVxsYgnAr_4core7default7Default7defaultCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([344 x i8]) align 8 captures(none) dereferenceable(344) %i.ez)
          to label %bb.r unwind label %bb.s, !noalias !1241

.thread88.i:                                      ; preds = %bb.aw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtNtBI_8registry7sharded8RegistryENtNtBG_6format13DefaultFieldsNtB3c_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEECshFZivb7RUAJ_8ruff_dev.exit36.i, %bb.x
  %.sroa.016.0.i = phi i1 [ %.sroa.016.3.ph.i, %bb.x ], [ %.sroa.016.161.i, %bb.aw ], [ %.sroa.016.268.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtNtBI_8registry7sharded8RegistryENtNtBG_6format13DefaultFieldsNtB3c_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEECshFZivb7RUAJ_8ruff_dev.exit36.i ]
  %.pn28.i = phi { ptr, i32 } [ %lpad.thr_comm76.i, %bb.x ], [ %.pn2662.i, %bb.aw ], [ %.pn70.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtNtBI_8registry7sharded8RegistryENtNtBG_6format13DefaultFieldsNtB3c_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEECshFZivb7RUAJ_8ruff_dev.exit36.i ] ; 2 uses
  br i1 %.sroa.016.0.i, label %.thread.i, label %common.resume

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ey), !noalias !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ex), !noalias !1242
  invoke void @_RNvMNtCs1UvybGPDVxf_9indicatif5styleNtB2_13ProgressStyle13with_template(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.ex, ptr noalias noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 48)
          to label %bb.t unwind label %bb.ax, !noalias !1241

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtNtBI_8registry7sharded8RegistryENtNtBG_6format13DefaultFieldsNtB3c_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEECshFZivb7RUAJ_8ruff_dev.exit.i, %bb.v, %bb.q
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  %i.if = load i64, ptr %i.ex, align 8, !range !6, !alias.scope !1249, !noalias !1242, !noundef !4
  %i.ig = icmp eq i64 %i.if, -1
  br i1 %i.ig, label %bb.u, label %bb.v, !prof !18

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej), !noalias !1250
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ii = load i32, ptr %i.ih, align 8, !range !1251, !alias.scope !1249, !noalias !1242, !noundef !4
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.ik = load i8, ptr %i.ij, align 4, !range !22, !alias.scope !1249, !noalias !1242, !noundef !4
  store i32 %i.ii, ptr %i.ej, align 4, !noalias !1250
  %i.il = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i8 %i.ik, ptr %i.il, align 4, !noalias !1250
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.ej, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #26
          to label %.noexc.i unwind label %bb.ax, !noalias !1241

.noexc.i:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ey, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.ex, i64 136, i1 false), !alias.scope !1252, !noalias !1242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex), !noalias !1242
  invoke void @_RNvMs6_Csh8k9AkFYpg3_17tracing_indicatifINtB5_14IndicatifLayerINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtNtB15_3fmt9fmt_layer5LayerIBZ_NtNtNtB15_6filter3env9EnvFilterNtNtNtB15_8registry7sharded8RegistryENtNtB24_6format13DefaultFieldsNtB3G_6FormatNtNtB5_6writer15IndicatifWriterEB2u_EE19with_progress_styleCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([344 x i8]) align 8 captures(none) dereferenceable(344) %i.fa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(344) %i.ez, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(136) %i.ey)
          to label %bb.w unwind label %bb.s, !noalias !1241

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey), !noalias !1242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez), !noalias !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ew), !noalias !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev), !noalias !1242
  invoke void @_RNvXs3_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerINtNtNtB9_5layer7layered7LayeredNtNtNtB9_6filter3env9EnvFilterNtNtNtB9_8registry7sharded8RegistryEENtNtCs4NRVxsYgnAr_4core7default7Default7defaultCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ev)
          to label %bb.y unwind label %.thread57.i, !noalias !1241

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtB14_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1X_IBY_IB1X_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtB12_6format13DefaultFieldsNtB4F_6FormatNtNtB2w_6writer15IndicatifWriterEB3s_EEB3j_EB4D_B57_NtNtCs2AWtUsOyxgP_3std2fs4FileEEECshFZivb7RUAJ_8ruff_dev.exit.i
  br i1 %.sroa.014.2.ph.i, label %bb.aw, label %.thread88.i

.thread57.i:                                      ; preds = %bb.ag, %bb.w
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.y:                                             ; preds = %bb.w
  %i.in = getelementptr inbounds nuw i8, ptr %i.fa, i64 136 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !noalias !1242, !nonnull !4, !noundef !4
  %i.ip = atomicrmw add ptr %i.io, i64 1 monotonic, align 8, !noalias !1241
  %i.iq = icmp slt i64 %i.ip, 0
  br i1 %i.iq, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ir = load ptr, ptr %i.in, align 8, !noalias !1242, !nonnull !4, !noundef !4
  %i.is = getelementptr inbounds nuw i8, ptr %i.ev, i64 7
  %i.it = load i8, ptr %i.is, align 1, !range !23, !noalias !1242, !noundef !4
  %i.iu = load i8, ptr %i.ev, align 8, !range !21, !noalias !1242, !noundef !4
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ev, i64 6
  %i.ix = load i8, ptr %i.iw, align 2, !range !21, !noalias !1242, !noundef !4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ev, i64 20
  %i.ja = load i8, ptr %i.iz, align 4, !range !21, !noalias !1242, !noundef !4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 5 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.jc = load <4 x i8>, ptr %i.iv, align 2, !noalias !1242
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 6
  %.sroa.1020.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 7
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.je = load <4 x i8>, ptr %i.iy, align 8, !noalias !1242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev), !noalias !1242
  store ptr %i.ir, ptr %i.jb, align 8, !noalias !1242
  store i8 %i.iu, ptr %i.ew, align 8, !noalias !1242
  store i8 0, ptr %.sroa.4.0..sroa_idx.i, align 1, !noalias !1242
  store <4 x i8> %i.jc, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !1242
  store i8 %i.ix, ptr %.sroa.9.0..sroa_idx.i, align 2, !noalias !1242
  store i8 %i.it, ptr %.sroa.1020.0..sroa_idx.i, align 1, !noalias !1242
  store <4 x i8> %i.je, ptr %i.jd, align 8, !noalias !1242
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ew, i64 20
  store i8 %i.ja, ptr %i.jf, align 4, !noalias !1242
  br i1 %.not, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek), !noalias !1242
  invoke void @_RINvMs2_NtCs2AWtUsOyxgP_3std2fsNtB6_4File6createRNtNtB8_4path4PathECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ek, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hc, i64 noundef %i.he)
          to label %bb.ae unwind label %bb.ad, !noalias !1241

bb.ac:                                            ; preds = %bb.aj, %bb.z
  %.sroa.7.sroa.0.0.i = phi i56 [ %.sroa.046.1.extract.trunc.i, %bb.aj ], [ undef, %bb.z ]
  %.sroa.8.0.i = phi i64 [ %.sroa.747.16.insert.insert.i, %bb.aj ], [ undef, %bb.z ]
  %.sroa.740.0.i = phi i32 [ %.sroa.69.0.copyload.i, %bb.aj ], [ undef, %bb.z ] ; 2 uses
  %.sroa.037.0.i = phi i8 [ %.sroa.046.0.extract.trunc.i, %bb.aj ], [ 2, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu), !noalias !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et), !noalias !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es), !noalias !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er), !noalias !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq), !noalias !1242
  invoke void @_RNvCsj06xRw2G0SJ_18tracing_subscriber8registry(ptr noalias noundef nonnull sret([544 x i8]) align 8 captures(address) dereferenceable(544) %i.eq)
          to label %bb.ak unwind label %bb.as, !noalias !1241

bb.ad:                                            ; preds = %bb.ab
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %.thread63.i

bb.ae:                                            ; preds = %bb.ab
  %.sroa.08.0.copyload.i = load i32, ptr %i.ek, align 8, !noalias !1242
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %.sroa.69.0.copyload.i = load i32, ptr %.sroa.69.0..sroa_idx.i, align 4, !noalias !1242 ; 3 uses
  %.sroa.710.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %.sroa.710.0.copyload.i = load ptr, ptr %.sroa.710.0..sroa_idx.i, align 8, !noalias !1242 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek), !noalias !1242
  %i.jh = trunc i32 %.sroa.08.0.copyload.i to i1
  br i1 %i.jh, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.710.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1253)
  call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  %i.ji = load ptr, ptr %i.jb, align 8, !alias.scope !1258, !noalias !1242, !nonnull !4, !noundef !4
  %i.jj = atomicrmw add ptr %i.ji, i64 -1 release, align 8, !noalias !1259
  %i.jk = icmp eq i64 %i.jj, 1
  br i1 %i.jk, label %bb.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtNtBI_8registry7sharded8RegistryENtNtBG_6format13DefaultFieldsNtB3c_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEECshFZivb7RUAJ_8ruff_dev.exit.i

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEE9drop_slowB1A_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jb)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtNtBI_8registry7sharded8RegistryENtNtBG_6format13DefaultFieldsNtB3c_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEECshFZivb7RUAJ_8ruff_dev.exit.i unwind label %.thread57.i, !noalias !1241

bb.ah:                                            ; preds = %bb.ae
  %i.jl = icmp ne i32 %.sroa.69.0.copyload.i, -1
  call void @llvm.assume(i1 %i.jl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !1260
  invoke void @_RNvXs3_NtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerINtNtNtB9_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB18_IBW_IB18_NtNtNtB9_6filter3env9EnvFilterNtNtNtB9_8registry7sharded8RegistryENtNtB7_6format13DefaultFieldsNtB3N_6FormatNtNtB1G_6writer15IndicatifWriterEB2C_EEB2t_EENtNtCs4NRVxsYgnAr_4core7default7Default7defaultCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ef)
          to label %bb.aj unwind label %bb.ai, !noalias !1261

bb.ai:                                            ; preds = %bb.ah
  %i.jm = landingpad { ptr, i32 }
          cleanup
  %i.jn = call noundef i32 @close(i32 noundef range(i32 0, -1) %.sroa.69.0.copyload.i) #25, !noalias !1261 ; 0 uses
  br label %.thread63.i

bb.aj:                                            ; preds = %bb.ah
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ef, align 8, !noalias !1260 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.jp = load i16, ptr %i.jo, align 8, !noalias !1260
  %i.jq = zext i16 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ef, i64 19
  %2 = load i8, ptr %i.jr, align 1, !range !21, !noalias !1260, !noundef !4
  %3 = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  %4 = load i8, ptr %3, align 4, !range !21, !noalias !1260, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !1260
  %.sroa.747.15.insert.ext.i = zext nneg i8 %2 to i64
  %.sroa.747.15.insert.shift.i = shl nuw nsw i64 %.sroa.747.15.insert.ext.i, 24
  %.sroa.747.15.insert.insert.i = or disjoint i64 %.sroa.747.15.insert.shift.i, %i.jq
  %.sroa.747.16.insert.ext.i = zext nneg i8 %4 to i64
  %.sroa.747.16.insert.shift.i = shl nuw nsw i64 %.sroa.747.16.insert.ext.i, 32
  %.sroa.747.16.insert.insert.i = or disjoint i64 %.sroa.747.15.insert.insert.i, %.sroa.747.16.insert.shift.i
  %.sroa.046.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i to i8
  %.sroa.046.1.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 8
  %.sroa.046.1.extract.trunc.i = trunc nuw i64 %.sroa.046.1.extract.shift.i to i56
  br label %bb.ac

bb.ak:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep), !noalias !1242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1768) %i.ep, ptr noundef nonnull align 8 dereferenceable(1768) %i.fc, i64 1768, i1 false), !noalias !1242
  invoke void @_RNvYNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9EnvFilterINtNtB8_5layer5LayerNtNtNtB8_8registry7sharded8RegistryE15with_subscriberCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([2320 x i8]) align 8 captures(address) dereferenceable(2320) %i.er, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1768) %i.ep, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(544) %i.eq)
          to label %bb.al unwind label %bb.as, !noalias !1241

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !noalias !1242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq), !noalias !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo), !noalias !1242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 8 dereferenceable(24) %i.ew, i64 24, i1 false), !noalias !1242
  invoke void @_RNvYINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtB9_5layer7layered7LayeredNtNtNtB9_6filter3env9EnvFilterNtNtNtB9_8registry7sharded8RegistryENtNtB7_6format13DefaultFieldsNtB2D_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEINtB16_5LayerB11_E15with_subscriberCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([2352 x i8]) align 8 captures(address) dereferenceable(2352) %i.es, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.eo, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(2320) %i.er)
          to label %bb.am unwind label %bb.as, !noalias !1241

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo), !noalias !1242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er), !noalias !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en), !noalias !1242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.en, ptr noundef nonnull align 8 dereferenceable(344) %i.fa, i64 344, i1 false), !noalias !1242
  invoke void @_RNvYINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtNtBZ_3fmt9fmt_layer5LayerIBT_NtNtNtBZ_6filter3env9EnvFilterNtNtNtBZ_8registry7sharded8RegistryENtNtB1Y_6format13DefaultFieldsNtB3x_6FormatNtNtB5_6writer15IndicatifWriterEB2n_EEINtBX_5LayerBS_E15with_subscriberCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([2704 x i8]) align 8 captures(address) dereferenceable(2704) %i.et, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(344) %i.en, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(2352) %i.es)
          to label %bb.an unwind label %bb.as, !noalias !1241

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en), !noalias !1242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es), !noalias !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em), !noalias !1242
  store i8 %.sroa.037.0.i, ptr %i.em, align 4, !noalias !1242
  %.sroa.7.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store i56 %.sroa.7.sroa.0.0.i, ptr %.sroa.7.0..sroa_idx39.i, align 1, !noalias !1242
  %.sroa.740.0..sroa_idx41.i = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i32 %.sroa.740.0.i, ptr %.sroa.740.0..sroa_idx41.i, align 4, !noalias !1242
  %.sroa.8.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i64 %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx44.i, align 4, !noalias !1242
  call void @_RNvYINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtBL_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1E_IBF_IB1E_NtNtNtBL_6filter3env9EnvFilterNtNtNtBL_8registry7sharded8RegistryENtNtBJ_6format13DefaultFieldsNtB4j_6FormatNtNtB2c_6writer15IndicatifWriterEB38_EEB2Z_EB4h_B4K_NtNtCs2AWtUsOyxgP_3std2fs4FileEEINtB1I_5LayerB1D_E15with_subscriberCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([2728 x i8]) align 8 captures(address) dereferenceable(2728) %i.eu, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(20) %i.em, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(2704) %i.et), !noalias !1241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em), !noalias !1242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et), !noalias !1242
  %i.js = call { ptr, ptr } @_RNvYINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtNtB9_3fmt9fmt_layer5LayerIB3_INtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB3_IB1G_IB3_NtNtNtB9_6filter3env9EnvFilterNtNtNtB9_8registry7sharded8RegistryENtNtB1K_6format13DefaultFieldsNtB4m_6FormatNtNtB2g_6writer15IndicatifWriterEB3c_EEB33_EB4k_B4O_NtNtCs2AWtUsOyxgP_3std2fs4FileEEB29_ENtNtB9_4util17SubscriberInitExt8try_initCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(2728) %i.eu), !noalias !1241 ; 2 uses
  %i.jt = extractvalue { ptr, ptr } %i.js, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i, label %bb.az, label %bb.ao, !prof !24

bb.ao:                                            ; preds = %bb.an
  %i.ju = extractvalue { ptr, ptr } %i.js, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !1242
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ju) ]
  store ptr %i.jt, ptr %i.ee, align 8, !noalias !1242
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ju, ptr %i.jv, align 8, !noalias !1242
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 39, ptr noundef nonnull %i.ee, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #26
          to label %bb.aq unwind label %bb.ap, !noalias !1241

bb.ap:                                            ; preds = %bb.ao
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj06xRw2G0SJ_18tracing_subscriber4util12TryInitErrorECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ee) #23
          to label %common.resume unwind label %bb.ar, !noalias !1241

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !1241
  unreachable

bb.as:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.ac
  %.sroa.016.3.ph.i = phi i1 [ false, %bb.ak ], [ false, %bb.al ], [ false, %bb.am ], [ true, %bb.ac ] ; 3 uses
  %.sroa.014.2.ph.i = phi i1 [ true, %bb.ak ], [ true, %bb.al ], [ false, %bb.am ], [ true, %bb.ac ] ; 2 uses
  %.sroa.013.1.ph.i = phi i1 [ true, %bb.ak ], [ false, %bb.al ], [ false, %bb.am ], [ true, %bb.ac ]
  %lpad.thr_comm76.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.jy = icmp eq i8 %.sroa.037.0.i, 2
  br i1 %i.jy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtB14_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1X_IBY_IB1X_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtB12_6format13DefaultFieldsNtB4F_6FormatNtNtB2w_6writer15IndicatifWriterEB3s_EEB3j_EB4D_B57_NtNtCs2AWtUsOyxgP_3std2fs4FileEEECshFZivb7RUAJ_8ruff_dev.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jz = call noundef i32 @close(i32 noundef %.sroa.740.0.i) #25, !noalias !1241 ; 0 uses
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtB14_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1X_IBY_IB1X_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtB12_6format13DefaultFieldsNtB4F_6FormatNtNtB2w_6writer15IndicatifWriterEB3s_EEB3j_EB4D_B57_NtNtCs2AWtUsOyxgP_3std2fs4FileEEECshFZivb7RUAJ_8ruff_dev.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtB14_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1X_IBY_IB1X_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtB12_6format13DefaultFieldsNtB4F_6FormatNtNtB2w_6writer15IndicatifWriterEB3s_EEB3j_EB4D_B57_NtNtCs2AWtUsOyxgP_3std2fs4FileEEECshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %bb.at, %bb.as
  br i1 %.sroa.013.1.ph.i, label %.thread63.i, label %bb.x

bb.au:                                            ; preds = %.thread.i, %bb.ax, %bb.aw, %bb.av
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !1241
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtNtBI_8registry7sharded8RegistryENtNtBG_6format13DefaultFieldsNtB3c_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEECshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew), !noalias !1242
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtNtB1y_3fmt9fmt_layer5LayerIB1s_NtNtNtB1y_6filter3env9EnvFilterNtNtNtB1y_8registry7sharded8RegistryENtNtB2x_6format13DefaultFieldsNtB4a_6FormatNtNtBE_6writer15IndicatifWriterEB2X_EEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(344) %i.fa)
          to label %bb.ay unwind label %bb.s, !noalias !1241

.thread63.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtB14_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1X_IBY_IB1X_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtB12_6format13DefaultFieldsNtB4F_6FormatNtNtB2w_6writer15IndicatifWriterEB3s_EEB3j_EB4D_B57_NtNtCs2AWtUsOyxgP_3std2fs4FileEEECshFZivb7RUAJ_8ruff_dev.exit.i, %bb.ai, %bb.ad
  %.pn70.i = phi { ptr, i32 } [ %lpad.thr_comm76.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtB14_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1X_IBY_IB1X_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtB12_6format13DefaultFieldsNtB4F_6FormatNtNtB2w_6writer15IndicatifWriterEB3s_EEB3j_EB4D_B57_NtNtCs2AWtUsOyxgP_3std2fs4FileEEECshFZivb7RUAJ_8ruff_dev.exit.i ], [ %i.jm, %bb.ai ], [ %i.jg, %bb.ad ] ; 2 uses
  %.sroa.014.169.i = phi i1 [ %.sroa.014.2.ph.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtB14_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1X_IBY_IB1X_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtB12_6format13DefaultFieldsNtB4F_6FormatNtNtB2w_6writer15IndicatifWriterEB3s_EEB3j_EB4D_B57_NtNtCs2AWtUsOyxgP_3std2fs4FileEEECshFZivb7RUAJ_8ruff_dev.exit.i ], [ true, %bb.ai ], [ true, %bb.ad ]
  %.sroa.016.268.i = phi i1 [ %.sroa.016.3.ph.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtB14_5layer7layered7LayeredINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerIB1X_IBY_IB1X_NtNtNtB14_6filter3env9EnvFilterNtNtNtB14_8registry7sharded8RegistryENtNtB12_6format13DefaultFieldsNtB4F_6FormatNtNtB2w_6writer15IndicatifWriterEB3s_EEB3j_EB4D_B57_NtNtCs2AWtUsOyxgP_3std2fs4FileEEECshFZivb7RUAJ_8ruff_dev.exit.i ], [ true, %bb.ai ], [ true, %bb.ad ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %i.kb = load ptr, ptr %i.jb, align 8, !alias.scope !1267, !noalias !1242, !nonnull !4, !noundef !4
  %i.kc = atomicrmw add ptr %i.kb, i64 -1 release, align 8, !noalias !1268
  %i.kd = icmp eq i64 %i.kc, 1
  br i1 %i.kd, label %bb.av, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtNtBI_8registry7sharded8RegistryENtNtBG_6format13DefaultFieldsNtB3c_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEECshFZivb7RUAJ_8ruff_dev.exit36.i

bb.av:                                            ; preds = %.thread63.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtNtCs2AWtUsOyxgP_3std4sync6poison6rwlock6RwLockNtNtCs1UvybGPDVxf_9indicatif5multi10MultiStateEE9drop_slowB1A_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jb)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtNtBI_8registry7sharded8RegistryENtNtBG_6format13DefaultFieldsNtB3c_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEECshFZivb7RUAJ_8ruff_dev.exit36.i unwind label %bb.au, !noalias !1241

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtNtBI_8registry7sharded8RegistryENtNtBG_6format13DefaultFieldsNtB3c_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEECshFZivb7RUAJ_8ruff_dev.exit36.i: ; preds = %bb.av, %.thread63.i
  br i1 %.sroa.014.169.i, label %bb.aw, label %.thread88.i

bb.aw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtNtBI_8registry7sharded8RegistryENtNtBG_6format13DefaultFieldsNtB3c_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEECshFZivb7RUAJ_8ruff_dev.exit36.i, %.thread57.i, %bb.x
  %.pn2662.i = phi { ptr, i32 } [ %i.im, %.thread57.i ], [ %lpad.thr_comm76.i, %bb.x ], [ %.pn70.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtNtBI_8registry7sharded8RegistryENtNtBG_6format13DefaultFieldsNtB3c_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEECshFZivb7RUAJ_8ruff_dev.exit36.i ]
  %.sroa.016.161.i = phi i1 [ true, %.thread57.i ], [ %.sroa.016.3.ph.i, %bb.x ], [ %.sroa.016.268.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtNtBI_8registry7sharded8RegistryENtNtBG_6format13DefaultFieldsNtB3c_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEECshFZivb7RUAJ_8ruff_dev.exit36.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtNtB1y_3fmt9fmt_layer5LayerIB1s_NtNtNtB1y_6filter3env9EnvFilterNtNtNtB1y_8registry7sharded8RegistryENtNtB2x_6format13DefaultFieldsNtB4a_6FormatNtNtBE_6writer15IndicatifWriterEB2X_EEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(344) %i.fa) #23
          to label %.thread88.i unwind label %bb.au, !noalias !1241

bb.ax:                                            ; preds = %bb.u, %bb.r
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsh8k9AkFYpg3_17tracing_indicatif14IndicatifLayerINtNtNtCsj06xRw2G0SJ_18tracing_subscriber5layer7layered7LayeredINtNtNtB1y_3fmt9fmt_layer5LayerIB1s_NtNtNtB1y_6filter3env9EnvFilterNtNtNtB1y_8registry7sharded8RegistryENtNtB2x_6format13DefaultFieldsNtB4a_6FormatNtNtBE_6writer15IndicatifWriterEB2X_EEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(344) %i.ez) #23
          to label %.thread.i unwind label %bb.au, !noalias !1241

.thread.i:                                        ; preds = %bb.ax, %bb.s, %.thread88.i
  %.pn2851.i = phi { ptr, i32 } [ %.pn28.i, %.thread88.i ], [ %lpad.thr_comm.split-lp.i, %bb.s ], [ %lpad.thr_comm.i, %bb.ax ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9EnvFilterECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(1768) %i.fc) #23
          to label %common.resume unwind label %bb.au, !noalias !1241

bb.ay:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsj06xRw2G0SJ_18tracing_subscriber3fmt9fmt_layer5LayerINtNtNtBI_5layer7layered7LayeredNtNtNtBI_6filter3env9EnvFilterNtNtNtBI_8registry7sharded8RegistryENtNtBG_6format13DefaultFieldsNtB3c_6FormatNtNtCsh8k9AkFYpg3_17tracing_indicatif6writer15IndicatifWriterEECshFZivb7RUAJ_8ruff_dev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa), !noalias !1242
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9EnvFilterECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(1768) %i.fc), !noalias !1241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc), !noalias !1242
  %i.ke = call noundef nonnull ptr @_RNvXs_NtCsiXichZnxgbf_6anyhow5errorNtB6_5ErrorINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorE4fromCshFZivb7RUAJ_8ruff_dev(ptr noundef nonnull %.sroa.710.0.copyload.i)
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ke, ptr %i.kf, align 8
  store i8 1, ptr %0, align 8
  br label %bb.ok

bb.az:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu), !noalias !1242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew), !noalias !1242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa), !noalias !1242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc), !noalias !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gx)
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !range !6, !noundef !4
  %.not164 = icmp eq i64 %i.kh, -1
  br i1 %.not164, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gu)
  call void @_RINvMs2_NtCs2AWtUsOyxgP_3std2fsNtB6_4File6createRNtNtB8_4path7PathBufECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.gu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kg)
  call void @_RINvXNtCsiXichZnxgbf_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std2fs4FileNtNtNtB1e_2io5error5ErrorEINtB5_7ContextB1a_B1E_E7contextReECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.gv, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.gu, ptr noalias noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 24)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gu)
  %i.ki = load i32, ptr %i.gv, align 8, !range !1269, !noundef !4
  %i.kj = trunc nuw i32 %i.ki to i1
  br i1 %i.kj, label %bb.bd, label %bb.be

bb.bb:                                            ; preds = %bb.az
  store i64 -1, ptr %i.gx, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.be, %bb.bb
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.kl = load i8, ptr %i.kk, align 4, !range !21, !noundef !4
  %i.km = trunc nuw i8 %i.kl to i1                ; 2 uses
  br i1 %i.km, label %bb.bg, label %bb.bf

bb.bd:                                            ; preds = %bb.ba
  %i.kn = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv)
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ko, ptr %i.kp, align 8
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufwriter9BufWriterNtNtB16_2fs4FileEEECshFZivb7RUAJ_8ruff_dev.exit

bb.be:                                            ; preds = %bb.ba
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.kr = load i32, ptr %i.kq, align 4, !range !15, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gv)
  call void @_RNvMNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufwriterINtB2_9BufWriterNtNtB8_2fs4FileE13with_capacityCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.gw, i64 noundef 8192, i32 noundef %i.kr)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gx, ptr noundef nonnull align 8 dereferenceable(32) %i.gw, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gw)
  br label %bb.bc

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gs)
end_hunk_0
