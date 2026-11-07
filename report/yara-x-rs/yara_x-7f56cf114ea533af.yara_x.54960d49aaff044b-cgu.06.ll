Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.06?download=true
inline.NumInlined: 4309
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNvXs1L_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB6_17UnknownIdentifierNtNtCskKLDkoKarTP_4core3fmt7Display3fmt:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !align !17, !noundef !9
  %i.e = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @72, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1T_NtNtCs7gfv9tzbXmh_6yara_x8compiler8warningsNtB6_16TextPatternAsHexNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(184) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5_6ReportNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !align !17, !noundef !9
  %i.e = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @72, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1V_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB6_13UnknownModuleNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5_6ReportNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !align !17, !noundef !9
  %i.e = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @72, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs1_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB5_13EmitWasmErrorNtNtCskKLDkoKarTP_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXs0_NtCscK5W4trzgIe_6anyhow5errorNtB7_5ErrorNtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !9, !nonnull !9
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef %i.b) #47
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 3) i8 @_RNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8CompilerNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7visitor7Visitor10visit_post(ptr noalias nofree noundef align 8 dereferenceable(240) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [2 x i8], align 1                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [2 x i8], align 1                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 10 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 13 uses
  %.sroa.8.i.i = alloca [24 x i8], align 8        ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [32 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 12 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.0734 = alloca i32, align 4               ; 14 uses
  %i.v = alloca [24 x i8], align 8                ; 11 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [16 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 7 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  %i.ae = alloca [48 x i8], align 8               ; 9 uses
  %i.af = alloca [16 x i8], align 8               ; 7 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 7 uses
  %i.ak = alloca [16 x i8], align 8               ; 7 uses
  %i.al = alloca [16 x i8], align 8               ; 7 uses
  %i.am = alloca [16 x i8], align 8               ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 7 uses
  %i.ao = alloca [16 x i8], align 8               ; 7 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 7 uses
  %i.ar = alloca [16 x i8], align 8               ; 7 uses
  %i.as = alloca [16 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %i.az = alloca [24 x i8], align 8               ; 6 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [32 x i8], align 8               ; 7 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [24 x i8], align 8               ; 7 uses
  %i.bg = alloca [24 x i8], align 8               ; 6 uses
  %i.bh = alloca [32 x i8], align 8               ; 6 uses
  %i.bi = alloca [32 x i8], align 8               ; 6 uses
  %i.bj = alloca [24 x i8], align 8               ; 7 uses
  %i.bk = alloca [12 x i8], align 4               ; 8 uses
  %i.bl = alloca [24 x i8], align 8               ; 7 uses
  %i.bm = alloca [24 x i8], align 8               ; 6 uses
  %i.bn = alloca [24 x i8], align 8               ; 6 uses
  %i.bo = alloca [24 x i8], align 8               ; 7 uses
  %i.bp = alloca [24 x i8], align 8               ; 7 uses
  %i.bq = alloca [24 x i8], align 8               ; 5 uses
  %i.br = alloca [24 x i8], align 8               ; 6 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [24 x i8], align 8               ; 7 uses
  %i.bu = alloca [24 x i8], align 8               ; 7 uses
  %i.bv = alloca [32 x i8], align 8               ; 6 uses
  %i.bw = alloca [24 x i8], align 8               ; 6 uses
  %i.bx = alloca [24 x i8], align 8               ; 10 uses
  %i.by = alloca [32 x i8], align 8               ; 6 uses
  %i.bz = alloca [24 x i8], align 8               ; 6 uses
  %i.ca = alloca [24 x i8], align 8               ; 7 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [24 x i8], align 8               ; 6 uses
  %i.cd = alloca [24 x i8], align 8               ; 7 uses
  %i.ce = alloca [8 x i8], align 8                ; 4 uses
  %i.cf = alloca [2 x i8], align 1                ; 5 uses
  %i.cg = alloca [8 x i8], align 8                ; 4 uses
  %i.ch = alloca [2 x i8], align 1                ; 5 uses
  %i.ci = alloca [8 x i8], align 8                ; 4 uses
  %i.cj = alloca [2 x i8], align 1                ; 5 uses
  %i.ck = alloca [8 x i8], align 8                ; 4 uses
  %i.cl = alloca [2 x i8], align 1                ; 5 uses
  %i.cm = alloca [8 x i8], align 8                ; 4 uses
  %i.cn = alloca [2 x i8], align 1                ; 5 uses
  %i.co = alloca [8 x i8], align 8                ; 4 uses
  %i.cp = alloca [2 x i8], align 1                ; 5 uses
  %i.cq = alloca [8 x i8], align 8                ; 4 uses
  %i.cr = alloca [2 x i8], align 1                ; 5 uses
  %i.cs = alloca [8 x i8], align 8                ; 4 uses
  %i.ct = alloca [2 x i8], align 1                ; 5 uses
  %i.cu = alloca [8 x i8], align 8                ; 4 uses
  %i.cv = alloca [2 x i8], align 1                ; 5 uses
  %i.cw = alloca [8 x i8], align 8                ; 4 uses
  %i.cx = alloca [2 x i8], align 1                ; 5 uses
  %i.cy = alloca [8 x i8], align 8                ; 4 uses
  %i.cz = alloca [2 x i8], align 1                ; 5 uses
  %i.da = alloca [8 x i8], align 8                ; 4 uses
  %i.db = alloca [2 x i8], align 1                ; 5 uses
  %i.dc = alloca [8 x i8], align 8                ; 4 uses
  %i.dd = alloca [2 x i8], align 1                ; 5 uses
  %i.de = alloca [8 x i8], align 8                ; 4 uses
  %i.df = alloca [2 x i8], align 1                ; 5 uses
  %i.dg = alloca [8 x i8], align 8                ; 4 uses
  %i.dh = alloca [2 x i8], align 1                ; 5 uses
  %i.di = alloca [8 x i8], align 8                ; 4 uses
  %i.dj = alloca [2 x i8], align 1                ; 5 uses
  %i.dk = alloca [16 x i8], align 8               ; 4 uses
  %i.dl = alloca [8 x i8], align 8                ; 4 uses
  %i.dm = alloca [8 x i8], align 8                ; 4 uses
  %i.dn = alloca [8 x i8], align 8                ; 4 uses
  %i.do = alloca [1 x i8], align 1                ; 4 uses
  %i.dp = alloca [2 x i8], align 1                ; 5 uses
  %i.dq = alloca [8 x i8], align 8                ; 4 uses
  %i.dr = alloca [8 x i8], align 8                ; 4 uses
  %i.ds = alloca [1 x i8], align 1                ; 4 uses
  %i.dt = alloca [2 x i8], align 1                ; 5 uses
  %i.du = alloca [40 x i8], align 8               ; 8 uses
  %i.dv = alloca [64 x i8], align 8               ; 6 uses
  %i.dw = alloca [40 x i8], align 8               ; 10 uses
  %i.dx = alloca [24 x i8], align 8               ; 8 uses
  %i.dy = alloca [24 x i8], align 8               ; 13 uses
  %i.dz = alloca [24 x i8], align 8               ; 4 uses
  %i.ea = alloca [24 x i8], align 8               ; 4 uses
  %i.eb = alloca [32 x i8], align 8               ; 7 uses
  %i.ec = alloca [24 x i8], align 8               ; 12 uses
  %i.ed = alloca [24 x i8], align 8               ; 4 uses
  %i.ee = alloca [24 x i8], align 8               ; 5 uses
  %i.ef = alloca [40 x i8], align 8               ; 11 uses
  %i.eg = alloca [24 x i8], align 8               ; 12 uses
  %i.eh = alloca [24 x i8], align 8               ; 5 uses
  %i.ei = alloca [24 x i8], align 8               ; 6 uses
  %i.ej = alloca [24 x i8], align 8               ; 9 uses
  %i.ek = alloca [40 x i8], align 8               ; 7 uses
  %i.el = alloca [24 x i8], align 8               ; 11 uses
  %i.em = alloca [24 x i8], align 8               ; 13 uses
  %i.en = alloca [24 x i8], align 8               ; 4 uses
  %i.eo = alloca [32 x i8], align 8               ; 14 uses
  %i.ep = alloca [24 x i8], align 8               ; 4 uses
  %i.eq = alloca [24 x i8], align 8               ; 4 uses
  %i.er = alloca [32 x i8], align 8               ; 6 uses
  %i.es = alloca [32 x i8], align 8               ; 4 uses
  %i.et = alloca [24 x i8], align 8               ; 10 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.ev = load i32, ptr %i.eu, align 8, !noundef !9
  %i.ew = add i32 %i.ev, -1
  store i32 %i.ew, ptr %i.eu, align 8
  %i.ex = load i64, ptr %1, align 8, !range !34, !noundef !9 ; 4 uses
  %i.ey = icmp ne i64 %i.ex, 4
  tail call void @llvm.assume(i1 %i.ey)
  %i.ez = add nsw i64 %i.ex, -2
  %.inv = icmp samesign ult i64 %i.ex, 2          ; 2 uses
  %i.fa = select i1 %.inv, i64 2, i64 %i.ez
  switch i64 %i.fa, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.ac
    i64 3, label %bb.ai
    i64 4, label %bb.du
    i64 5, label %bb.jr
    i64 6, label %bb.js
    i64 7, label %bb.jt
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.fc = load i32, ptr %i.fb, align 4, !noundef !9
  %.not71 = icmp eq i32 %i.fc, 0
  br i1 %.not71, label %bb.ju, label %bb.qt

bb.d:                                             ; preds = %bb.a
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.fd, align 8, !nonnull !9, !noundef !9 ; 9 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val81 = load i64, ptr %i.fe, align 8, !noundef !9 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6039)
  %i.ff = getelementptr inbounds nuw i8, ptr %.val, i64 %.val81 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6040)
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !6041, !noundef !9
  %i.fi = icmp samesign eq i64 %.val81, 0
  br i1 %i.fi, label %_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i.thread, label %.lr.ph.i.i

_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i.thread: ; preds = %bb.d
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler12emit_literal.exit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %.val, %.lr.ph.i.i ], [ %i.fn, %bb.p ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  %i.fo = load i8, ptr %.sroa.0.08.i.i, align 1, !noalias !6042, !noundef !9 ; 2 uses
  %i.fp = icmp eq i8 %i.fo, -86
  br i1 %i.fp, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !6042
  store i8 -86, ptr %i.dt, align 1, !noalias !6042
  store i8 -86, ptr %i.fm, align 1, !noalias !6042
  %i.fq = call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dt, i64 noundef 2), !noalias !6043 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i2.i.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit3.i.i, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !6044
  store ptr %i.fq, ptr %i.dq, align 8, !noalias !6044
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41
          to label %bb.i unwind label %bb.h, !noalias !6043

bb.h:                                             ; preds = %bb.g
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dq) #42
          to label %common.resume unwind label %bb.j, !noalias !6043

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6043
  unreachable

common.resume:                                    ; preds = %bb.qm, %bb.qc, %bb.mz, %bb.mq, %bb.lz, %bb.lu, %bb.kr, %.body197, %.thread357, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.jw, %bb.ke, %.thread372, %bb.io, %bb.jn, %bb.am, %bb.ar, %bb.aw, %bb.bb, %bb.bg, %bb.bl, %bb.bq, %bb.bv, %bb.ca, %bb.cf, %bb.ck, %bb.cp, %bb.cu, %bb.cz, %bb.de, %bb.dj, %bb.h, %bb.m, %bb.t, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.bhf, %bb.qc ], [ %i.gm, %bb.y ], [ %i.my, %bb.dj ], [ %i.ami, %bb.jn ], [ %i.anv, %bb.ke ], [ %eh.lpad-body198, %.body197 ], [ %i.asx, %bb.lu ], [ %i.ati, %bb.lz ], [ %i.avs, %bb.mq ], [ %i.axf, %bb.mz ], [ %i.fu, %bb.m ], [ %i.fr, %bb.h ], [ %i.gj, %bb.t ], [ %i.mn, %bb.de ], [ %i.hy, %bb.am ], [ %i.ij, %bb.ar ], [ %i.ip, %bb.aw ], [ %i.ja, %bb.bb ], [ %i.jg, %bb.bg ], [ %i.jr, %bb.bl ], [ %i.jx, %bb.bq ], [ %i.ki, %bb.bv ], [ %i.ko, %bb.ca ], [ %i.kz, %bb.cf ], [ %i.lf, %bb.ck ], [ %i.lq, %bb.cp ], [ %i.lw, %bb.cu ], [ %i.mh, %bb.cz ], [ %i.aim, %bb.io ], [ %.pn63.pn355, %.thread357 ], [ %lpad.loopexit.split-lp1460, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %eh.lpad-body194, %.thread372 ], [ %i.amx, %bb.jw ], [ %i.bjj, %bb.qm ], [ %i.apz, %bb.kr ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit3.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !6042
  br label %bb.p

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !6042
  store i8 %i.fo, ptr %i.ds, align 1, !noalias !6042
  %i.ft = call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef 1), !noalias !6043 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !6045
  store ptr %i.ft, ptr %i.dr, align 8, !noalias !6045
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.dr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #41
          to label %bb.n unwind label %bb.m, !noalias !6043

bb.m:                                             ; preds = %bb.l
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dr) #42
          to label %common.resume unwind label %bb.o, !noalias !6043

bb.n:                                             ; preds = %bb.l
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6043
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !6042
  br label %bb.p

bb.p:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit3.i.i
  %i.fw = icmp eq ptr %i.fn, %i.ff
  br i1 %i.fw, label %_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i, label %bb.e

_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i: ; preds = %bb.p
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !alias.scope !6039, !noundef !9 ; 2 uses
  %.not.i = icmp eq i64 %i.fz, 0
  %i.ga = load ptr, ptr %i.fx, align 8, !alias.scope !6039, !nonnull !9
  %i.gb = getelementptr [48 x i8], ptr %i.ga, i64 %i.fz
  %i.gc = getelementptr i8, ptr %i.gb, i64 -48
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.gd, ptr %i.gc ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  br label %bb.q

bb.q:                                             ; preds = %bb.ab, %_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i
  %.sroa.4.08.i.i = phi ptr [ %i.ff, %_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i ], [ %i.gf, %bb.ab ]
  %i.gf = getelementptr inbounds i8, ptr %.sroa.4.08.i.i, i64 -1 ; 3 uses
  %i.gg = load i8, ptr %i.gf, align 1, !noalias !6046, !noundef !9 ; 2 uses
  %i.gh = icmp eq i8 %i.gg, -86
  br i1 %i.gh, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp), !noalias !6046
  store i8 -86, ptr %i.dp, align 1, !noalias !6046
  store i8 -86, ptr %i.ge, align 1, !noalias !6046
  %i.gi = call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dp, i64 noundef 2), !noalias !6043 ; 2 uses
  %.not.i2.i9.i = icmp eq ptr %i.gi, null
  br i1 %.not.i2.i9.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit3.i10.i, label %bb.s, !prof !10

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !6047
  store ptr %i.gi, ptr %i.dm, align 8, !noalias !6047
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.dm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #41
          to label %bb.u unwind label %bb.t, !noalias !6043

bb.t:                                             ; preds = %bb.s
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dm) #42
          to label %common.resume unwind label %bb.v, !noalias !6043

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6043
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit3.i10.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !6046
  br label %bb.ab

bb.w:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !6046
  store i8 %i.gg, ptr %i.do, align 1, !noalias !6046
  %i.gl = call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.0.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.do, i64 noundef 1), !noalias !6043 ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i5.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i8.i, label %bb.x, !prof !10

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !6048
  store ptr %i.gl, ptr %i.dn, align 8, !noalias !6048
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #41
          to label %bb.z unwind label %bb.y, !noalias !6043

bb.y:                                             ; preds = %bb.x
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dn) #42
          to label %common.resume unwind label %bb.aa, !noalias !6043

bb.z:                                             ; preds = %bb.x
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6043
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i8.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !6046
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit.i8.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs7gfv9tzbXmh_6yara_x.exit3.i10.i
  %i.go = icmp eq ptr %.val, %i.gf
  br i1 %i.go, label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler12emit_literal.exit, label %bb.q

_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler12emit_literal.exit: ; preds = %bb.ab, %_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i.thread
  %i.gp = phi ptr [ %i.fl, %_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i.thread ], [ %i.gd, %bb.ab ]
  %i.gq = phi ptr [ %i.fk, %_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i.thread ], [ %i.fy, %bb.ab ]
  %i.gr = phi ptr [ %i.fj, %_RINvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB6_8InstrSeq12emit_literalINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEEBc_.exit.i.thread ], [ %i.fx, %bb.ab ]
  %i.gs = load i64, ptr %i.gq, align 8, !alias.scope !6049, !noundef !9 ; 2 uses
  %.not.i96 = icmp eq i64 %i.gs, 0
  %i.gt = load ptr, ptr %i.gr, align 8, !alias.scope !6049, !nonnull !9
  %i.gu = getelementptr [48 x i8], ptr %i.gt, i64 %i.gs
  %i.gv = getelementptr i8, ptr %i.gu, i64 -48
  %.sroa.0.0.i97 = select i1 %.not.i96, ptr %i.gp, ptr %i.gv ; 2 uses
  %i.gw = getelementptr i8, ptr %.sroa.0.0.i97, i64 32
  %.val87 = load i64, ptr %i.gw, align 8, !noundef !9
  %i.gx = getelementptr i8, ptr %.sroa.0.0.i97, i64 24
  %.val93 = load i64, ptr %i.gx, align 8, !noundef !9
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.gz = load i32, ptr %i.gy, align 4, !noundef !9
  %.not69 = icmp eq i32 %i.gz, 0
  br i1 %.not69, label %bb.jz, label %bb.qt

bb.ac:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6050)
  br i1 %.inv, label %bb.ad, label %bb.kk

bb.ad:                                            ; preds = %bb.ac
  %i.ha = trunc nuw i64 %i.ex to i1
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !6050, !nonnull !9, !noundef !9 ; 9 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hd = load i64, ptr %2, align 8, !alias.scope !6050, !noundef !9 ; 4 uses
  %.not3.i = icmp eq i64 %i.hd, 0                 ; 3 uses
  br i1 %i.ha, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not3.i, label %.thread862, label %bb.ah

.thread862:                                       ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  br label %.critedge

bb.af:                                            ; preds = %bb.ad
  br i1 %.not3.i, label %.thread336, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.he = load i32, ptr %i.hc, align 4, !range !58, !noalias !6050, !noundef !9
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %.split, label %.thread336

.split:                                           ; preds = %bb.ag
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  %i.hh = load i32, ptr %i.hg, align 4, !range !58, !noalias !6050, !noundef !9
  %i.hi = icmp eq i32 %i.hh, 1114111
  br i1 %i.hi, label %bb.ls, label %.thread336

bb.ah:                                            ; preds = %bb.ae
  %i.hj = load i8, ptr %i.hc, align 1, !noalias !6050, !noundef !9 ; 2 uses
  %i.hk = icmp eq i8 %i.hj, 0
  br i1 %i.hk, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x2re3hir8any_byte.exit, label %.thread865

.thread865:                                       ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  br label %bb.kl

_RNvNtNtCs7gfv9tzbXmh_6yara_x2re3hir8any_byte.exit: ; preds = %bb.ah
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !noalias !6050, !noundef !9
  %i.hn = icmp eq i8 %i.hm, -1
  br i1 %i.hn, label %bb.ls, label %.thread861

.thread861:                                       ; preds = %_RNvNtNtCs7gfv9tzbXmh_6yara_x2re3hir8any_byte.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  br label %bb.kl

bb.ai:                                            ; preds = %bb.a
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6052)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  store ptr %i.ho, ptr %i.dl, align 8, !noalias !6053
  %i.hp = load i32, ptr %i.ho, align 8, !range !61, !alias.scope !6052, !noundef !9
  %i.hq = zext nneg i32 %i.hp to i64              ; 2 uses
  %i.hr = tail call range(i64 1, 19) i64 @llvm.ctpop.i64(i64 %i.hq)
  %i.hs = icmp eq i64 %i.hr, 1
  br i1 %i.hs, label %.split.i, label %bb.aj, !prof !6054

.split.i:                                         ; preds = %bb.ai
  %i.ht = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.hq, i1 true)
  switch i64 %i.ht, label %bb.aj [
    i64 0, label %bb.ak
    i64 1, label %bb.au
    i64 2, label %bb.be
    i64 3, label %bb.bo
    i64 4, label %bb.be
    i64 5, label %bb.bo
    i64 6, label %bb.by
    i64 7, label %bb.ci
    i64 10, label %bb.cs
    i64 11, label %bb.dc
  ], !prof !6055

bb.aj:                                            ; preds = %.split.i, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !6053
  store ptr %i.dl, ptr %i.dk, align 8, !noalias !6053
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs2r1H4NiMXj9_12regex_syntax3hir4LookNtB6_5Debug3fmtCs7gfv9tzbXmh_6yara_x, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !6053
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @109, ptr noundef nonnull %i.dk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #46, !noalias !6056
  unreachable

bb.ak:                                            ; preds = %.split.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6057)
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hv = load i64, ptr %i.hu, align 8, !alias.scope !6058, !noalias !6059, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !6060
  store i8 -86, ptr %i.dh, align 1, !noalias !6060
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  store i8 10, ptr %i.hw, align 1, !noalias !6060
  %i.hx = call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dh, i64 noundef 2), !noalias !6061 ; 2 uses
  %.not.i5.i76.i = icmp eq ptr %i.hx, null
  br i1 %.not.i5.i76.i, label %bb.ap, label %bb.al, !prof !10

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !6062
  store ptr %i.hx, ptr %i.dg, align 8, !noalias !6062
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.dg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #41
          to label %bb.an unwind label %bb.am, !noalias !6061

bb.am:                                            ; preds = %bb.al
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dg) #42
          to label %common.resume unwind label %bb.ao, !noalias !6061

bb.an:                                            ; preds = %bb.al
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6061
  unreachable

bb.ap:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !6060
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ic = load i64, ptr %i.ib, align 8, !alias.scope !6063, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ic, 0
  %i.id = load ptr, ptr %i.ia, align 8, !alias.scope !6063, !nonnull !9
  %i.ie = getelementptr [48 x i8], ptr %i.id, i64 %i.ic
  %i.if = getelementptr i8, ptr %i.ie, i64 -48
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.08.0.i.i = select i1 %.not.i.i, ptr %i.ig, ptr %i.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !6064
  store i8 -86, ptr %i.dj, align 1, !noalias !6064
  %i.ih = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store i8 10, ptr %i.ih, align 1, !noalias !6064
  %i.ii = call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.08.0.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dj, i64 noundef 2), !noalias !6065 ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i5.i.i, label %bb.dm, label %bb.aq, !prof !10

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !6066
  store ptr %i.ii, ptr %i.di, align 8, !noalias !6066
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.di, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #41
          to label %bb.as unwind label %bb.ar, !noalias !6065

bb.ar:                                            ; preds = %bb.aq
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.di) #42
          to label %common.resume unwind label %bb.at, !noalias !6065

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6065
  unreachable

bb.au:                                            ; preds = %.split.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6067)
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.im = load i64, ptr %i.il, align 8, !alias.scope !6068, !noalias !6069, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !6070
  store i8 -86, ptr %i.dd, align 1, !noalias !6070
  %i.in = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  store i8 11, ptr %i.in, align 1, !noalias !6070
  %i.io = call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef 2), !noalias !6071 ; 2 uses
  %.not.i5.i84.i = icmp eq ptr %i.io, null
  br i1 %.not.i5.i84.i, label %bb.az, label %bb.av, !prof !10

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !6072
  store ptr %i.io, ptr %i.dc, align 8, !noalias !6072
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.dc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #41
          to label %bb.ax unwind label %bb.aw, !noalias !6071

bb.aw:                                            ; preds = %bb.av
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dc) #42
          to label %common.resume unwind label %bb.ay, !noalias !6071

bb.ax:                                            ; preds = %bb.av
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6071
  unreachable

bb.az:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !6070
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.it = load i64, ptr %i.is, align 8, !alias.scope !6073, !noundef !9 ; 2 uses
  %.not.i33.i = icmp eq i64 %i.it, 0
  %i.iu = load ptr, ptr %i.ir, align 8, !alias.scope !6073, !nonnull !9
  %i.iv = getelementptr [48 x i8], ptr %i.iu, i64 %i.it
  %i.iw = getelementptr i8, ptr %i.iv, i64 -48
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.08.0.i34.i = select i1 %.not.i33.i, ptr %i.ix, ptr %i.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !6074
  store i8 -86, ptr %i.df, align 1, !noalias !6074
  %i.iy = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  store i8 11, ptr %i.iy, align 1, !noalias !6074
  %i.iz = call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.08.0.i34.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.df, i64 noundef 2), !noalias !6075 ; 2 uses
  %.not.i5.i80.i = icmp eq ptr %i.iz, null
  br i1 %.not.i5.i80.i, label %bb.dn, label %bb.ba, !prof !10

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !6076
  store ptr %i.iz, ptr %i.de, align 8, !noalias !6076
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.de, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #41
          to label %bb.bc unwind label %bb.bb, !noalias !6075

bb.bb:                                            ; preds = %bb.ba
  %i.ja = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.de) #42
          to label %common.resume unwind label %bb.bd, !noalias !6075

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.jb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6075
  unreachable

bb.be:                                            ; preds = %.split.i, %.split.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6077)
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jd = load i64, ptr %i.jc, align 8, !alias.scope !6078, !noalias !6079, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !6080
  store i8 -86, ptr %i.cz, align 1, !noalias !6080
  %i.je = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  store i8 18, ptr %i.je, align 1, !noalias !6080
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8CompilerNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7visitor7Visitor10visit_post:bb.a

.thread:                                          ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.amv, ptr noundef nonnull align 8 dereferenceable(32) %i.es, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  %i.amy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.amz = load i64, ptr %i.amy, align 8, !alias.scope !6238, !noundef !9
  %i.ana = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.anb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.anc = load i64, ptr %i.anb, align 8, !alias.scope !6238, !noundef !9 ; 2 uses
  %.not.i109 = icmp eq i64 %i.anc, 0
  %i.and = load ptr, ptr %i.ana, align 8, !alias.scope !6238, !nonnull !9
  %i.ane = getelementptr [48 x i8], ptr %i.and, i64 %i.anc
  %i.anf = getelementptr i8, ptr %i.ane, i64 -48
  %i.ang = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.i110 = select i1 %.not.i109, ptr %i.ang, ptr %i.anf
  %i.anh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i110, i64 24
  %.sroa.7226.0.copyload852.cast = ptrtoint ptr %i.amv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  store i64 %i.amz, ptr %i.et, align 8
  %.sroa.13.0..sroa_idx855 = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ani = load <2 x i64>, ptr %i.anh, align 8, !noalias !6239
  %i.anj = shufflevector <2 x i64> %i.ani, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.anj, ptr %.sroa.13.0..sroa_idx855, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  br label %bb.qa

bb.jx:                                            ; preds = %bb.px, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler7CodeLocEEB1g_.exit137, %bb.mo, %bb.ml, %bb.mh, %bb.mf, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit116
  %.sroa.0265.0.ph = phi i64 [ %.sroa.0305.0.copyload, %bb.px ], [ %.sroa.0265.2.lcssa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler7CodeLocEEB1g_.exit137 ], [ %.sroa.0293.0.copyload, %bb.mo ], [ %.sroa.41244.0, %bb.ml ], [ %.sroa.0181.0.i, %bb.mh ], [ %.sroa.0265.1, %bb.mf ], [ %i.aot, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit116 ]
  %.sroa.13.0.ph = phi i64 [ %.val82, %bb.px ], [ %.sroa.13.1.lcssa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler7CodeLocEEB1g_.exit137 ], [ %.val83, %bb.mo ], [ %.val84, %bb.ml ], [ %.val85, %bb.mh ], [ %.val86, %bb.mf ], [ %.val87, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit116 ]
  %.sroa.21.0.ph = phi i64 [ %.val88, %bb.px ], [ %.sroa.21.1.lcssa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler7CodeLocEEB1g_.exit137 ], [ %.val89, %bb.mo ], [ %.val90, %bb.ml ], [ %.val91, %bb.mh ], [ %.val92, %bb.mf ], [ %i.aos, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit116 ]
  %.sroa.0.0.copyload.pr = load i64, ptr %i.ec, align 8 ; 3 uses
  %.sroa.7226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.7226.0.copyload = load i64, ptr %.sroa.7226.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.sroa.7231.0.copyload = load i64, ptr %.sroa.7231.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  store i64 %.sroa.0265.0.ph, ptr %i.et, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %.sroa.13.0.ph, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store i64 %.sroa.21.0.ph, ptr %.sroa.21.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  %.not72 = icmp eq i64 %.sroa.0.0.copyload.pr, -1
  br i1 %.not72, label %bb.pz, label %bb.py

bb.jy:                                            ; preds = %bb.ke, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread352, %.thread357, %bb.pu, %.body147
  %i.ank = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.jz:                                            ; preds = %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler12emit_literal.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  %i.anl = add nuw i64 %.val81, 1                 ; 3 uses
  %umin.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val81, i64 4)
  %i.anm = sub i64 %i.anl, %umin.i.i
  br label %bb.ka

bb.ka:                                            ; preds = %bb.kc, %bb.jz
  %.sroa.0.024.i.i = phi i32 [ -2147483648, %bb.jz ], [ %.sroa.0.1.i.i, %bb.kc ] ; 2 uses
  %.sroa.02.023.i.i = phi i64 [ 0, %bb.jz ], [ %.sroa.02.1.i.i, %bb.kc ]
  %.sroa.3.022.i.i = phi i64 [ 0, %bb.jz ], [ %.sroa.3.1.i.i, %bb.kc ]
  %.sroa.0.01121.i.i = phi i64 [ 0, %bb.jz ], [ %i.ano, %bb.kc ] ; 6 uses
  %i.ann = add nuw i64 %.sroa.0.01121.i.i, 4
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ann, i64 range(i64 0, -9223372036854775808) %.val81) ; 3 uses
  %exitcond.i.i = icmp eq i64 %.sroa.0.01121.i.i, %i.anl
  br i1 %exitcond.i.i, label %bb.kb, label %bb.kc, !prof !24

bb.kb:                                            ; preds = %bb.ka
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.anl, i64 noundef %..i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.val81, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @452) #46, !noalias !6240
  unreachable

bb.kc:                                            ; preds = %bb.ka
  %i.ano = add nuw i64 %.sroa.0.01121.i.i, 1      ; 2 uses
  %i.anp = sub nuw nsw i64 %..i.i.i, %.sroa.0.01121.i.i
  %i.anq = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.01121.i.i
  %i.anr = call fastcc noundef i32 @_RINvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality12atom_qualityRShEB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.anq, i64 noundef %i.anp) #47, !noalias !6240 ; 2 uses
  %i.ans = icmp sgt i32 %i.anr, %.sroa.0.024.i.i  ; 2 uses
  %.sroa.3.1.i.i = select i1 %i.ans, i64 %..i.i.i, i64 %.sroa.3.022.i.i ; 2 uses
  %.sroa.02.1.i.i = select i1 %i.ans, i64 %.sroa.0.01121.i.i, i64 %.sroa.02.023.i.i ; 2 uses
  %.sroa.0.1.i.i = call i32 @llvm.smax.i32(i32 %i.anr, i32 %.sroa.0.024.i.i)
  %exitcond27.not.i.i = icmp eq i64 %i.ano, %i.anm
  br i1 %exitcond27.not.i.i, label %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i, label %bb.ka

_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i: ; preds = %bb.kc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6241
  call void @_RINvMs3_NtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB6_4Atom16from_slice_rangeINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEEBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef range(i64 0, -9223372036854775808) %.val81, i64 noundef %.sroa.02.1.i.i, i64 noundef %.sroa.3.1.i.i), !noalias !6242
  %i.ant = getelementptr inbounds nuw i8, ptr %i.z, i64 26
  %i.anu = load i8, ptr %i.ant, align 2, !range !16, !noalias !6241, !noundef !9
  %.not.i111 = icmp eq i8 %i.anu, 2
  br i1 %.not.i111, label %bb.kd, label %bb.kf, !prof !11

bb.kd:                                            ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @451) #46, !noalias !6242
  unreachable

bb.ke:                                            ; preds = %bb.ki, %bb.kh
  %i.anv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecAhj4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.er)
          to label %common.resume unwind label %bb.jy

bb.kf:                                            ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler5atoms7quality19best_range_in_bytes.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !6243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6241
  %i.anw = getelementptr inbounds nuw i8, ptr %i.er, i64 24 ; 2 uses
  %.val95 = load i16, ptr %i.anw, align 8, !noundef !9 ; 3 uses
  %i.anx = zext i16 %.val95 to i64                ; 7 uses
  %.not70 = icmp ult i64 %.val81, %i.anx
  br i1 %.not70, label %bb.kh, label %bb.kg, !prof !24

bb.kg:                                            ; preds = %bb.kf
  %i.any = getelementptr inbounds nuw i8, ptr %.val, i64 %i.anx
  %i.anz = icmp eq i16 %.val95, 0
  br i1 %i.anz, label %.loopexit385, label %.lr.ph.i113.preheader

.lr.ph.i113.preheader:                            ; preds = %bb.kg
  %min.iters.check = icmp ult i16 %.val95, 4
  br i1 %min.iters.check, label %.lr.ph.i113.preheader1463, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i113.preheader
  %n.vec = and i64 %i.anx, 65532                  ; 3 uses
  %i.aoa = getelementptr i8, ptr %.val, i64 %n.vec
  %i.aob = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.anx, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.aob, %vector.ph ], [ %i.aoh, %vector.body ]
  %vec.phi1456 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aoi, %vector.body ]
  %next.gep = getelementptr i8, ptr %.val, i64 %index ; 2 uses
  %i.aoc = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !alias.scope !6244
  %wide.load1457 = load <2 x i8>, ptr %i.aoc, align 1, !alias.scope !6244
  %i.aod = icmp eq <2 x i8> %wide.load, splat (i8 -86)
  %i.aoe = icmp eq <2 x i8> %wide.load1457, splat (i8 -86)
  %i.aof = zext <2 x i1> %i.aod to <2 x i64>
  %i.aog = zext <2 x i1> %i.aoe to <2 x i64>
  %i.aoh = add <2 x i64> %vec.phi, %i.aof         ; 2 uses
  %i.aoi = add <2 x i64> %vec.phi1456, %i.aog     ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aoj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aoj, label %middle.block, label %vector.body, !llvm.loop !5900

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.aoi, %i.aoh
  %i.aok = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.anx
  br i1 %cmp.n, label %.loopexit385, label %.lr.ph.i113.preheader1463

.lr.ph.i113.preheader1463:                        ; preds = %.lr.ph.i113.preheader, %middle.block
  %.sroa.0.05.i.ph = phi i64 [ %i.anx, %.lr.ph.i113.preheader ], [ %i.aok, %middle.block ]
  %.sroa.02.04.i.ph = phi ptr [ %.val, %.lr.ph.i113.preheader ], [ %i.aoa, %middle.block ]
  br label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %.lr.ph.i113.preheader1463, %.lr.ph.i113
  %.sroa.0.05.i = phi i64 [ %spec.select.i, %.lr.ph.i113 ], [ %.sroa.0.05.i.ph, %.lr.ph.i113.preheader1463 ]
  %.sroa.02.04.i = phi ptr [ %i.aol, %.lr.ph.i113 ], [ %.sroa.02.04.i.ph, %.lr.ph.i113.preheader1463 ] ; 2 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i, i64 1 ; 2 uses
  %i.aom = load i8, ptr %.sroa.02.04.i, align 1, !alias.scope !6244, !noundef !9
  %i.aon = icmp eq i8 %i.aom, -86
  %i.aoo = zext i1 %i.aon to i64
  %spec.select.i = add i64 %.sroa.0.05.i, %i.aoo  ; 2 uses
  %i.aop = icmp eq ptr %i.aol, %i.any
  br i1 %i.aop, label %.loopexit385, label %.lr.ph.i113, !llvm.loop !5901

bb.kh:                                            ; preds = %bb.kf
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.anx, i64 noundef %.val81, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #41
          to label %bb.kj unwind label %bb.ke

.loopexit385:                                     ; preds = %.lr.ph.i113, %middle.block, %bb.kg
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.kg ], [ %i.aok, %middle.block ], [ %spec.select.i, %.lr.ph.i113 ] ; 2 uses
  store i16 0, ptr %i.anw, align 8, !alias.scope !6247
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45
  %i.aoq = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) 32, i64 noundef 8) #45 ; 3 uses
  %i.aor = icmp eq ptr %i.aoq, null
  br i1 %i.aor, label %bb.ki, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit116, !prof !11

bb.ki:                                            ; preds = %.loopexit385
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #41
          to label %.noexc115 unwind label %bb.ke

.noexc115:                                        ; preds = %bb.ki
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit116: ; preds = %.loopexit385
  %i.aos = sub i64 %.val93, %.sroa.0.0.lcssa.i
  %i.aot = add i64 %.sroa.0.0.lcssa.i, %i.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aoq, ptr noundef nonnull align 8 dereferenceable(32) %i.er, i64 32, i1 false)
  store i64 1, ptr %i.ec, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.aoq, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store i64 1, ptr %.sroa.59.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  br label %bb.jx

bb.kj:                                            ; preds = %bb.qj, %bb.pt, %bb.pe, %bb.kh
  unreachable

bb.kk:                                            ; preds = %bb.ac
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre751.pre = load i64, ptr %.phi.trans.insert.phi.trans.insert, align 8, !alias.scope !6248, !noalias !6249 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6248)
  %i.aou = icmp eq i64 %.pre751.pre, 0
  %.phi.trans.insert752 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.pre = load ptr, ptr %.phi.trans.insert752, align 8 ; 3 uses
  br i1 %i.aou, label %.critedge, label %._crit_edge1172

._crit_edge1172:                                  ; preds = %bb.kk
  %.pre1175 = load i8, ptr %.val.i.pre, align 1, !noalias !6250
  br label %bb.kl

bb.kl:                                            ; preds = %._crit_edge1172, %.thread865, %.thread861
  %3 = phi i8 [ 0, %.thread861 ], [ %.pre1175, %._crit_edge1172 ], [ %i.hj, %.thread865 ] ; 4 uses
  %4 = phi ptr [ %i.hc, %.thread861 ], [ %.val.i.pre, %._crit_edge1172 ], [ %i.hc, %.thread865 ] ; 5 uses
  %5 = phi i64 [ %i.hd, %.thread861 ], [ %.pre751.pre, %._crit_edge1172 ], [ %i.hd, %.thread865 ] ; 4 uses
  %.idx.i208 = shl i64 %5, 1                      ; 2 uses
  %i.aov = getelementptr i8, ptr %4, i64 %.idx.i208 ; 2 uses
  %i.aow = getelementptr i8, ptr %i.aov, i64 -1
  %i.aox = load i8, ptr %i.aow, align 1, !noalias !6250, !noundef !9
  %i.aoy = xor i8 %i.aox, %3                      ; 2 uses
  %i.aoz = icmp eq i64 %.idx.i208, 0
  br i1 %i.aoz, label %.critedge, label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %bb.kl, %bb.ko
  %.sroa.03.021.i = phi i32 [ %i.apm, %bb.ko ], [ 0, %bb.kl ]
  %.sroa.05.020.i = phi ptr [ %i.apa, %bb.ko ], [ %4, %bb.kl ] ; 4 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %.sroa.05.020.i, i64 2 ; 2 uses
  %i.apb = load i8, ptr %.sroa.05.020.i, align 1, !noalias !6250, !noundef !9
  %i.apc = getelementptr inbounds nuw i8, ptr %.sroa.05.020.i, i64 1
  %i.apd = load i8, ptr %i.apc, align 1, !noalias !6250, !noundef !9
  br label %bb.km

._crit_edge.i215:                                 ; preds = %bb.ko
  %i.ape = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.aoy)
  %i.apf = zext nneg i8 %i.ape to i32
  %i.apg = shl nuw nsw i32 1, %i.apf
  %.not12.i = icmp eq i32 %i.apg, %i.apm
  br i1 %.not12.i, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x2re3hir20class_to_masked_byte.exit, label %.critedge

bb.km:                                            ; preds = %bb.kn, %.lr.ph.i209
  %.sroa.6.014.i = phi i8 [ %i.apb, %.lr.ph.i209 ], [ %i.api, %bb.kn ] ; 4 uses
  %.sroa.0.013.i = phi i1 [ false, %.lr.ph.i209 ], [ %i.aph, %bb.kn ]
  %.not.i.i210 = icmp ugt i8 %.sroa.6.014.i, %i.apd
  %or.cond.i211 = select i1 %.sroa.0.013.i, i1 true, i1 %.not.i.i210
  br i1 %or.cond.i211, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.aph = icmp eq i8 %.sroa.6.014.i, -1
  %i.api = add i8 %.sroa.6.014.i, 1
  %i.apj = and i8 %.sroa.6.014.i, %3
  %.not.i212 = icmp eq i8 %i.apj, %3
  br i1 %.not.i212, label %bb.km, label %.critedge

bb.ko:                                            ; preds = %bb.km
  %i.apk = tail call noundef i64 @_RNvMsi_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_15ClassBytesRange3len(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %.sroa.05.020.i), !noalias !6250
  %i.apl = trunc i64 %i.apk to i32
  %i.apm = add i32 %.sroa.03.021.i, %i.apl        ; 2 uses
  %i.apn = icmp eq ptr %i.apa, %i.aov
  br i1 %i.apn, label %._crit_edge.i215, label %.lr.ph.i209

_RNvNtNtCs7gfv9tzbXmh_6yara_x2re3hir20class_to_masked_byte.exit: ; preds = %._crit_edge.i215
  %i.apo = xor i8 %i.aoy, -1
  %i.app = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  call fastcc void @_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16emit_masked_byte(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.app, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, i8 noundef %3, i8 noundef %i.apo), !noalias !9
  br label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit.thread

.thread336:                                       ; preds = %bb.af, %bb.ag, %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  %i.apq = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6251
  call void @_RNvMsa_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_12ClassUnicode13to_byte_class(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.apq), !noalias !6249, !inline_history !5910
  %i.apr = load i64, ptr %i.y, align 8, !range !20, !noalias !6251, !noundef !9
  %.not.i117 = icmp eq i64 %i.apr, -1
  br i1 %.not.i117, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %.thread336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !6251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !6251
  %i.aps = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val37.i = load ptr, ptr %i.aps, align 8, !noalias !6251
  %i.apt = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val38.i = load i64, ptr %i.apt, align 8, !noalias !6251, !noundef !9
  invoke fastcc void @_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler10emit_class(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, ptr %.val37.i, i64 %.val38.i)
          to label %bb.ks unwind label %bb.kr, !noalias !6252, !inline_history !5910

bb.kq:                                            ; preds = %.thread336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !6251
  store i64 0, ptr %i.v, align 8, !noalias !6251
  %i.apu = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.apu, align 8, !noalias !6251
  %i.apv = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 6 uses
  store i64 0, ptr %i.apv, align 8, !noalias !6251
  %.idx632.a = shl nuw nsw i64 %i.hd, 3
  %i.apw = getelementptr inbounds nuw i8, ptr %i.hc, i64 %.idx632.a
  br i1 %.not3.i, label %._crit_edge621, label %.lr.ph620

.lr.ph620:                                        ; preds = %bb.kq
  %i.apx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0..sroa_idx.i199 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5.0..sroa_idx.i200 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.apy = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.0734.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0734, i64 1
  %.sroa.0734.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0734, i64 2
  %.sroa.0734.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0734, i64 3
  %.sroa.0734.1..sroa_idx1563 = getelementptr inbounds nuw i8, ptr %.sroa.0734, i64 1
  %.sroa.0734.2..sroa_idx1565 = getelementptr inbounds nuw i8, ptr %.sroa.0734, i64 2
  %.sroa.0734.1..sroa_idx1564 = getelementptr inbounds nuw i8, ptr %.sroa.0734, i64 1
  br label %bb.ku

bb.kr:                                            ; preds = %bb.kp
  %i.apz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir10ClassBytesECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.x) #42
          to label %common.resume unwind label %bb.kt, !noalias !6252, !inline_history !5910

bb.ks:                                            ; preds = %bb.kp
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqa, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !6253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !6251
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir10ClassBytesECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(32) %i.x), !noalias !6252, !inline_history !5910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !6251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6251
  br label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit.thread

bb.kt:                                            ; preds = %.body197, %bb.kr
  %i.aqb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6252, !inline_history !5910
  unreachable

.loopexit391.a:                                   ; preds = %bb.li, %bb.ku
  %i.aqc = phi i64 [ %i.aqe, %bb.ku ], [ %i.ars, %bb.li ] ; 2 uses
  %i.aqd = icmp eq ptr %i.aqf, %i.apw
  br i1 %i.aqd, label %._crit_edge621, label %bb.ku

bb.ku:                                            ; preds = %.lr.ph620, %.loopexit391.a
  %i.aqe = phi i64 [ 0, %.lr.ph620 ], [ %i.aqc, %.loopexit391.a ]
  %.sroa.01.0.i618 = phi ptr [ %i.hc, %.lr.ph620 ], [ %i.aqf, %.loopexit391.a ] ; 3 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i618, i64 8 ; 2 uses
  %i.aqg = load i32, ptr %.sroa.01.0.i618, align 4, !range !58, !noalias !6249, !noundef !9 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i618, i64 4
  %i.aqi = load i32, ptr %i.aqh, align 4, !range !58, !noalias !6249, !noundef !9 ; 2 uses
  %.not.i205614 = icmp samesign ugt i32 %i.aqg, %i.aqi
  br i1 %.not.i205614, label %.loopexit391.a, label %.lr.ph617

._crit_edge621:                                   ; preds = %.loopexit391.a, %bb.kq
  %i.aqj = phi i64 [ 0, %bb.kq ], [ %i.aqc, %.loopexit391.a ]
  %i.aqk = invoke fastcc noundef i8 @_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler21visit_pre_alternation(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %i.aqj)
          to label %bb.lj unwind label %.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6252, !inline_history !5910 ; 2 uses

.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.lp, %bb.lm, %.lr.ph625, %bb.lc, %._crit_edge626, %._crit_edge621
  %lpad.loopexit.split-lp1473 = landingpad { ptr, i32 }
          cleanup
  br label %.body197

.body197:                                         ; preds = %.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.lg, %bb.ld
  %eh.lpad-body198 = phi { ptr, i32 } [ %i.ark, %bb.ld ], [ %i.aro, %bb.lg ], [ %lpad.loopexit.split-lp1473, %.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #42
          to label %common.resume unwind label %bb.kt, !noalias !6252, !inline_history !5910

.lr.ph617:                                        ; preds = %bb.ku, %bb.li
  %.sroa.0315.0615 = phi i32 [ %..i.i, %bb.li ], [ %i.aqg, %bb.ku ] ; 10 uses
  %i.aql = add nuw nsw i32 %.sroa.0315.0615, 1
  %or.cond.i.i.i = icmp eq i32 %.sroa.0315.0615, 55295
  %spec.select.i.i.i206 = select i1 %or.cond.i.i.i, i32 57344, i32 %i.aql ; 2 uses
  %i.aqm = icmp samesign ugt i32 %spec.select.i.i.i206, 1114111
  %..i.i = call i32 @llvm.umin.i32(i32 %spec.select.i.i.i206, i32 1114111) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0734)
  store i32 0, ptr %.sroa.0734, align 4, !noalias !6251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !6251
  %i.aqn = icmp samesign ult i32 %.sroa.0315.0615, 128
  br i1 %i.aqn, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %.lr.ph617
  %i.aqo = icmp samesign ult i32 %.sroa.0315.0615, 2048
  %i.aqp = trunc i32 %.sroa.0315.0615 to i8
  %i.aqq = and i8 %i.aqp, 63
  %i.aqr = or disjoint i8 %i.aqq, -128            ; 3 uses
  %i.aqs = lshr i32 %.sroa.0315.0615, 6
  %i.aqt = trunc i32 %i.aqs to i8                 ; 2 uses
  %i.aqu = and i8 %i.aqt, 63
  %i.aqv = or disjoint i8 %i.aqu, -128            ; 2 uses
  %i.aqw = lshr i32 %.sroa.0315.0615, 12
  %i.aqx = trunc i32 %i.aqw to i8                 ; 2 uses
  %i.aqy = and i8 %i.aqx, 63
  %i.aqz = or disjoint i8 %i.aqy, -128
  %i.ara = lshr i32 %.sroa.0315.0615, 18
  %i.arb = trunc nuw nsw i32 %i.ara to i8
  %i.arc = or disjoint i8 %i.arb, -16
  br i1 %i.aqo, label %bb.kx, label %bb.ky

bb.kw:                                            ; preds = %.lr.ph617
  %i.ard = trunc nuw nsw i32 %.sroa.0315.0615 to i8
  store i8 %i.ard, ptr %.sroa.0734, align 4, !alias.scope !6254, !noalias !6251
  br label %bb.lb

bb.kx:                                            ; preds = %bb.kv
  %i.are = or disjoint i8 %i.aqt, -64
  store i8 %i.are, ptr %.sroa.0734, align 4, !alias.scope !6254, !noalias !6251
  store i8 %i.aqr, ptr %.sroa.0734.1..sroa_idx1564, align 1, !alias.scope !6254, !noalias !6251
  br label %bb.lb

bb.ky:                                            ; preds = %bb.kv
  %i.arf = icmp samesign ult i32 %.sroa.0315.0615, 65536
  br i1 %i.arf, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %bb.ky
  %i.arg = or disjoint i8 %i.aqx, -32
  store i8 %i.arg, ptr %.sroa.0734, align 4, !alias.scope !6254, !noalias !6251
  store i8 %i.aqv, ptr %.sroa.0734.1..sroa_idx1563, align 1, !alias.scope !6254, !noalias !6251
  store i8 %i.aqr, ptr %.sroa.0734.2..sroa_idx1565, align 2, !alias.scope !6254, !noalias !6251
  br label %bb.lb

bb.la:                                            ; preds = %bb.ky
  store i8 %i.arc, ptr %.sroa.0734, align 4, !alias.scope !6254, !noalias !6251
  store i8 %i.aqz, ptr %.sroa.0734.1..sroa_idx, align 1, !alias.scope !6254, !noalias !6251
  store i8 %i.aqv, ptr %.sroa.0734.2..sroa_idx, align 2, !alias.scope !6254, !noalias !6251
  store i8 %i.aqr, ptr %.sroa.0734.3..sroa_idx, align 1, !alias.scope !6254, !noalias !6251
  br label %bb.lb

bb.lb:                                            ; preds = %bb.la, %bb.kz, %bb.kx, %bb.kw
  %.sroa.0.05.i204 = phi i64 [ 1, %bb.kw ], [ 2, %bb.kx ], [ 3, %bb.kz ], [ 4, %bb.la ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6255)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !6256
  %i.arh = call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 5) %.sroa.0.05.i204, i64 noundef 1) #45, !noalias !6256 ; 5 uses
  %i.ari = icmp eq ptr %i.arh, null
  br i1 %i.ari, label %bb.lc, label %_RNvXs1_NtCskKLDkoKarTP_4core7convertRShINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxBz_EE4intoCs7gfv9tzbXmh_6yara_x.exit.i

bb.lc:                                            ; preds = %bb.lb
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef range(i64 1, 5) %.sroa.0.05.i204) #41
          to label %.noexc201 unwind label %.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc201:                                        ; preds = %bb.lc
  unreachable

_RNvXs1_NtCskKLDkoKarTP_4core7convertRShINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxBz_EE4intoCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.lb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.arh, ptr noundef nonnull readonly align 4 dereferenceable(1) %.sroa.0734, i64 range(i64 1, 5) %.sroa.0.05.i204, i1 false), !noalias !6257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6258
  store ptr %i.arh, ptr %i.f, align 8, !noalias !6258
  store i64 %.sroa.0.05.i204, ptr %i.apx, align 8, !noalias !6258
  %i.arj = invoke noundef nonnull align 8 ptr @_RNvMso_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_10Properties7literal(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.le unwind label %bb.ld, !noalias !6258

bb.ld:                                            ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertRShINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxBz_EE4intoCs7gfv9tzbXmh_6yara_x.exit.i
  %i.ark = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.arh, i64 noundef range(i64 1, 5) %.sroa.0.05.i204, i64 noundef 1) #45, !noalias !6258
  br label %.body197

bb.le:                                            ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertRShINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxBz_EE4intoCs7gfv9tzbXmh_6yara_x.exit.i
  store i64 3, ptr %i.u, align 8, !alias.scope !6255, !noalias !6249
  store ptr %i.arh, ptr %.sroa.4.0..sroa_idx.i199, align 8, !alias.scope !6255, !noalias !6249
  store i64 %.sroa.0.05.i204, ptr %.sroa.5.0..sroa_idx.i200, align 8, !alias.scope !6255, !noalias !6249
  store ptr %i.arj, ptr %i.apy, align 8, !alias.scope !6255, !noalias !6249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6258
  %i.arl = load i64, ptr %i.apv, align 8, !alias.scope !6259, !noalias !6249, !noundef !9 ; 3 uses
  %i.arm = load i64, ptr %i.v, align 8, !range !14, !alias.scope !6259, !noalias !6249, !noundef !9
  %i.arn = icmp eq i64 %i.arl, %i.arm
  br i1 %i.arn, label %bb.lf, label %bb.li

bb.lf:                                            ; preds = %bb.le
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.li unwind label %bb.lg, !noalias !6260

bb.lg:                                            ; preds = %bb.lf
  %i.aro = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u) #42
          to label %.body197 unwind label %bb.lh, !noalias !6249

bb.lh:                                            ; preds = %bb.lg
  %i.arp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6249
  unreachable

bb.li:                                            ; preds = %bb.lf, %bb.le
  %i.arq = load ptr, ptr %i.apu, align 8, !alias.scope !6259, !noalias !6249, !nonnull !9, !noundef !9
  %i.arr = getelementptr inbounds nuw [48 x i8], ptr %i.arq, i64 %i.arl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.arr, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false), !noalias !6249
  %i.ars = add i64 %i.arl, 1                      ; 2 uses
  store i64 %i.ars, ptr %i.apv, align 8, !alias.scope !6259, !noalias !6249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !6251
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0734)
  %.not.i205 = icmp samesign ugt i32 %..i.i, %i.aqi
  %or.cond = select i1 %i.aqm, i1 true, i1 %.not.i205
  br i1 %or.cond, label %.loopexit391.a, label %.lr.ph617

bb.lj:                                            ; preds = %._crit_edge621
  %.not30.i = icmp eq i8 %i.aqk, -1
  br i1 %.not30.i, label %bb.lk, label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit.thread862

bb.lk:                                            ; preds = %bb.lj
  %i.art = load ptr, ptr %i.apu, align 8, !noalias !6251, !nonnull !9, !noundef !9 ; 2 uses
  %i.aru = load i64, ptr %i.apv, align 8, !noalias !6251, !noundef !9 ; 2 uses
  %.idx633.a = mul nuw nsw i64 %i.aru, 48
  %i.arv = getelementptr inbounds nuw i8, ptr %i.art, i64 %.idx633.a
  %i.arw = icmp eq i64 %i.aru, 0
  br i1 %i.arw, label %._crit_edge626, label %.lr.ph625

.lr.ph625:                                        ; preds = %bb.lk, %bb.lq
  %.sroa.8320.0623 = phi i64 [ %i.ary, %bb.lq ], [ 0, %bb.lk ] ; 2 uses
  %.sroa.0318.0622 = phi ptr [ %i.arx, %bb.lq ], [ %i.art, %bb.lk ] ; 3 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %.sroa.0318.0622, i64 48 ; 2 uses
  %i.ary = add nuw nsw i64 %.sroa.8320.0623, 1
  %i.arz = invoke noundef i8 @_RNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8CompilerNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7visitor7Visitor9visit_pre(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0318.0622)
          to label %bb.ll unwind label %.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6252, !inline_history !5910 ; 2 uses

._crit_edge626.loopexit:                          ; preds = %bb.lq
  %.pre750 = load i64, ptr %i.apv, align 8, !noalias !6251
  br label %._crit_edge626

._crit_edge626:                                   ; preds = %._crit_edge626.loopexit, %bb.lk
  %i.asa = phi i64 [ %.pre750, %._crit_edge626.loopexit ], [ 0, %bb.lk ]
  invoke fastcc void @_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler22visit_post_alternation(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %i.eo, ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, i64 noundef %i.asa)
          to label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit unwind label %.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !5910

bb.ll:                                            ; preds = %.lr.ph625
  %.not32.i = icmp eq i8 %i.arz, -1
  br i1 %.not32.i, label %bb.lm, label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit.thread862

bb.lm:                                            ; preds = %bb.ll
  %i.asb = invoke noundef i8 @_RNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8CompilerNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7visitor7Visitor10visit_post(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0318.0622)
          to label %bb.ln unwind label %.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6252, !inline_history !5910 ; 2 uses

bb.ln:                                            ; preds = %bb.lm
  %.not33.i = icmp eq i8 %i.asb, -1
  br i1 %.not33.i, label %bb.lo, label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit.thread862

bb.lo:                                            ; preds = %bb.ln
  %i.asc = load i64, ptr %i.apv, align 8, !noalias !6251, !noundef !9 ; 2 uses
  %i.asd = icmp ult i64 %i.asc, 192153584101141163
  call void @llvm.assume(i1 %i.asd)
  %i.ase = add nsw i64 %i.asc, -1
  %i.asf = icmp ult i64 %.sroa.8320.0623, %i.ase
  br i1 %i.asf, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  %i.asg = invoke noundef i8 @_RNvXs1_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8CompilerNtNtNtCs2r1H4NiMXj9_12regex_syntax3hir7visitor7Visitor20visit_alternation_in(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0)
          to label %bb.lr unwind label %.loopexit.split-lp387.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6252, !inline_history !5910 ; 2 uses

bb.lq:                                            ; preds = %bb.lr, %bb.lo
  %i.ash = icmp eq ptr %i.arx, %i.arv
  br i1 %i.ash, label %._crit_edge626.loopexit, label %.lr.ph625

bb.lr:                                            ; preds = %bb.lp
  %.not34.i = icmp eq i8 %i.asg, -1
  br i1 %.not34.i, label %bb.lq, label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit.thread862

_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit.thread862: ; preds = %bb.lr, %bb.ln, %bb.ll, %bb.lj
  %.sink = phi i8 [ %i.aqk, %bb.lj ], [ %i.asg, %bb.lr ], [ %i.arz, %bb.ll ], [ %i.asb, %bb.ln ]
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v), !noalias !6252, !inline_history !5910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6251
  br label %bb.mc

.critedge:                                        ; preds = %bb.kn, %bb.kk, %.thread862, %._crit_edge.i215, %bb.kl
  %6 = phi i64 [ 0, %.thread862 ], [ %5, %bb.kl ], [ %5, %._crit_edge.i215 ], [ 0, %bb.kk ], [ %5, %bb.kn ] ; 2 uses
  %.val.i = phi ptr [ %i.hc, %.thread862 ], [ %4, %bb.kl ], [ %4, %._crit_edge.i215 ], [ %.val.i.pre, %bb.kk ], [ %4, %bb.kn ] ; 2 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6262)
  %i.asj = tail call fastcc noundef i64 @_RNvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8InstrSeq10emit_class(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, ptr readonly %.val.i, i64 %6), !noalias !6261
  %i.ask = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.asl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.asm = load i64, ptr %i.asl, align 8, !alias.scope !6262, !noalias !9, !noundef !9 ; 2 uses
  %.not.i955 = icmp eq i64 %i.asm, 0
  %i.asn = load ptr, ptr %i.ask, align 8, !alias.scope !6262, !noalias !9, !nonnull !9
  %i.aso = getelementptr [48 x i8], ptr %i.asn, i64 %i.asm
  %i.asp = getelementptr i8, ptr %i.aso, i64 -48
  %i.asq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.i956 = select i1 %.not.i955, ptr %i.asq, ptr %i.asp
  %i.asr = tail call fastcc noundef i64 @_RNvMs3_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8InstrSeq10emit_class(ptr noalias nofree noundef align 8 dereferenceable(48) %.sroa.0.0.i956, ptr readonly %.val.i, i64 %6), !noalias !6261 ; 0 uses
  store i64 %i.asj, ptr %i.asi, align 8, !alias.scope !6261, !noalias !9
  br label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit.thread

_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit: ; preds = %._crit_edge626
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v), !noalias !6252, !inline_history !5910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6251
  %.pre754 = load i8, ptr %i.eo, align 8
  %i.ass = trunc nuw i8 %.pre754 to i1
  br i1 %i.ass, label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit._crit_edge, label %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit.thread

_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit._crit_edge: ; preds = %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %.pre1171 = load i8, ptr %.phi.trans.insert, align 1, !range !16
  br label %bb.mc

bb.ls:                                            ; preds = %.split, %_RNvNtNtCs7gfv9tzbXmh_6yara_x2re3hir8any_byte.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6263)
  %i.ast = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.asu = load i64, ptr %i.ast, align 8, !alias.scope !6263, !noalias !6264, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6265
  store i8 -86, ptr %i.c, align 1, !noalias !6265
  %i.asv = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 5, ptr %i.asv, align 1, !noalias !6265
  %i.asw = call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 2), !noalias !6266 ; 2 uses
  %.not.i5.i219 = icmp eq ptr %i.asw, null
  br i1 %.not.i5.i219, label %bb.lx, label %bb.lt, !prof !10

bb.lt:                                            ; preds = %bb.ls
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6267
  store ptr %i.asw, ptr %i.b, align 8, !noalias !6267
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #41
          to label %bb.lv unwind label %bb.lu, !noalias !6266

bb.lu:                                            ; preds = %bb.lt
  %i.asx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #42
          to label %common.resume unwind label %bb.lw, !noalias !6266

bb.lv:                                            ; preds = %bb.lt
  unreachable

bb.lw:                                            ; preds = %bb.lu
  %i.asy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6266
  unreachable

bb.lx:                                            ; preds = %bb.ls
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6265
  %i.asz = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ata = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.atb = load i64, ptr %i.ata, align 8, !alias.scope !6268, !noundef !9 ; 2 uses
  %.not.i118 = icmp eq i64 %i.atb, 0
  %i.atc = load ptr, ptr %i.asz, align 8, !alias.scope !6268, !nonnull !9
  %i.atd = getelementptr [48 x i8], ptr %i.atc, i64 %i.atb
  %i.ate = getelementptr i8, ptr %i.atd, i64 -48
  %i.atf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.08.0.i = select i1 %.not.i118, ptr %i.atf, ptr %i.ate
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6269
  store i8 -86, ptr %i.e, align 1, !noalias !6269
  %i.atg = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 5, ptr %i.atg, align 1, !noalias !6269
  %i.ath = call noundef ptr @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc2io6cursorINtNtB9_3vec3VechENtNtNtCskKLDkoKarTP_4core2io6cursor18WriteThroughCursor9write_allCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.08.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 2), !noalias !6270 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.ath, null
  br i1 %.not.i5.i, label %bb.me, label %bb.ly, !prof !10

bb.ly:                                            ; preds = %bb.lx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6271
  store ptr %i.ath, ptr %i.d, align 8, !noalias !6271
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @92, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #41
          to label %bb.ma unwind label %bb.lz, !noalias !6270

bb.lz:                                            ; preds = %bb.ly
  %i.ati = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #42
          to label %common.resume unwind label %bb.mb, !noalias !6270

bb.ma:                                            ; preds = %bb.ly
  unreachable

bb.mb:                                            ; preds = %bb.lz
  %i.atj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43, !noalias !6270
  unreachable

bb.mc:                                            ; preds = %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit._crit_edge, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit.thread862
  %i.atk = phi i8 [ %.pre1171, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit._crit_edge ], [ %.sink, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit.thread862 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  br label %bb.qt

_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit.thread: ; preds = %.critedge, %_RNvNtNtCs7gfv9tzbXmh_6yara_x2re3hir20class_to_masked_byte.exit, %bb.ks, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit
  %i.atl = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %.sroa.0302.0.copyload = load i64, ptr %i.atl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  br label %bb.md

bb.md:                                            ; preds = %bb.me, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit.thread
  %.sroa.0265.1 = phi i64 [ %i.asu, %bb.me ], [ %.sroa.0302.0.copyload, %_RNvMs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compilerNtB5_8Compiler16visit_post_class.exit.thread ]
  %i.atm = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.atn = load i32, ptr %i.atm, align 4, !noundef !9
  %.not68 = icmp eq i32 %i.atn, 0
  br i1 %.not68, label %bb.mf, label %bb.qt

bb.me:                                            ; preds = %bb.lx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6269
  br label %bb.md

bb.mf:                                            ; preds = %bb.md
  %i.ato = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.atp = load i64, ptr %i.ato, align 8, !alias.scope !6272, !noundef !9 ; 2 uses
  %.not.i119 = icmp eq i64 %i.atp, 0
  %i.atq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.atr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ats = load ptr, ptr %i.atr, align 8, !alias.scope !6272, !nonnull !9
  %i.att = getelementptr [48 x i8], ptr %i.ats, i64 %i.atp
  %i.atu = getelementptr i8, ptr %i.att, i64 -48
  %.sroa.0.0.i120 = select i1 %.not.i119, ptr %i.atq, ptr %i.atu ; 2 uses
  %i.atv = getelementptr i8, ptr %.sroa.0.0.i120, i64 24
  %.val92 = load i64, ptr %i.atv, align 8, !noundef !9
  %i.atw = getelementptr i8, ptr %.sroa.0.0.i120, i64 32
  %.val86 = load i64, ptr %i.atw, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  %i.atx = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_RNvMNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB2_9Extractor7extract(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.en, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.atx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  call fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler12seq_to_atoms(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ec, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.en)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  br label %bb.jx

bb.mg:                                            ; preds = %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dm
  %.sroa.0181.0.i = phi i64 [ %i.hv, %bb.dm ], [ %i.im, %bb.dn ], [ %i.jd, %bb.do ], [ %i.ju, %bb.dp ], [ %i.kl, %bb.dq ], [ %i.lc, %bb.dr ], [ %i.lt, %bb.ds ], [ %i.mk, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  %i.aty = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.atz = load i32, ptr %i.aty, align 4, !noundef !9
  %.not67 = icmp eq i32 %i.atz, 0
  br i1 %.not67, label %bb.mh, label %bb.qt

bb.mh:                                            ; preds = %bb.mg
  %i.aua = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aub = load i64, ptr %i.aua, align 8, !alias.scope !6273, !noundef !9 ; 2 uses
  %.not.i123 = icmp eq i64 %i.aub, 0
  %i.auc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aud = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aue = load ptr, ptr %i.aud, align 8, !alias.scope !6273, !nonnull !9
  %i.auf = getelementptr [48 x i8], ptr %i.aue, i64 %i.aub
  %i.aug = getelementptr i8, ptr %i.auf, i64 -48
  %.sroa.0.0.i124 = select i1 %.not.i123, ptr %i.auc, ptr %i.aug ; 2 uses
  %i.auh = getelementptr i8, ptr %.sroa.0.0.i124, i64 24
  %.val91 = load i64, ptr %i.auh, align 8, !noundef !9
  %i.aui = getelementptr i8, ptr %.sroa.0.0.i124, i64 32
  %.val85 = load i64, ptr %i.aui, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  %i.auj = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_RNvMNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB2_9Extractor7extract(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ep, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.auj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  call fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler12seq_to_atoms(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ec, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ep)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  br label %bb.jx

bb.mi:                                            ; preds = %bb.iz, %bb.hw, %bb.ih, %bb.ij, %bb.hd, %bb.he, %bb.fi, %bb.eq, %bb.fy, %bb.ie, %bb.ic, %bb.ia, %bb.hy
  %.sroa.25.5.ph = phi i8 [ %i.afh, %bb.hy ], [ %i.afs, %bb.ia ], [ %i.afx, %bb.ic ], [ %i.agi, %bb.ie ], [ %.sink.i, %bb.fy ], [ %.sroa.25.3, %bb.eq ], [ 0, %bb.fi ], [ %i.abk, %bb.he ], [ %.sroa.25.4, %bb.hd ], [ %i.agv, %bb.ij ], [ %i.agt, %bb.ih ], [ 0, %bb.hw ], [ %.sroa.25.2, %bb.iz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.qt

bb.mj:                                            ; preds = %bb.jl, %._crit_edge604.i, %._crit_edge589.i, %bb.fx, %bb.fh, %bb.eo
  %.sroa.41244.0 = phi i64 [ %i.sw, %bb.fh ], [ %.sroa.41244.8.copyload245, %bb.jl ], [ %.sroa.0196.0.copyload.i, %._crit_edge604.i ], [ %i.ps, %bb.eo ], [ %i.wh, %bb.fx ], [ %.sroa.0188.0.copyload.i, %._crit_edge589.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.auk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aul = load i64, ptr %i.auk, align 8, !alias.scope !6274, !noundef !9 ; 2 uses
  %.not.i127 = icmp eq i64 %i.aul, 0
  %i.aum = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aun = load ptr, ptr %i.aum, align 8, !alias.scope !6274, !nonnull !9
  %i.auo = getelementptr [48 x i8], ptr %i.aun, i64 %i.aul
  %i.aup = getelementptr i8, ptr %i.auo, i64 -48
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.i128 = select i1 %.not.i127, ptr %i.auq, ptr %i.aup ; 2 uses
  %i.aur = getelementptr i8, ptr %.sroa.0.0.i128, i64 32
  %.val84 = load i64, ptr %i.aur, align 8, !noundef !9
  %i.aus = getelementptr i8, ptr %.sroa.0.0.i128, i64 24
  %.val90 = load i64, ptr %i.aus, align 8, !noundef !9
  %i.aut = icmp eq i32 %i.nc, 0
  %i.auu = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.auv = load i32, ptr %i.auu, align 4          ; 2 uses
  br i1 %i.aut, label %.thread350.a, label %bb.mk

.thread350.a:                                     ; preds = %bb.mj
  %i.auw = add i32 %i.auv, -1
  store i32 %i.auw, ptr %i.auu, align 4
  br label %bb.qt

bb.mk:                                            ; preds = %bb.mj
  %.not383 = icmp eq i32 %i.auv, 0
  br i1 %.not383, label %bb.ml, label %bb.qt

bb.ml:                                            ; preds = %bb.mk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  %i.aux = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_RNvMNtNtCs2r1H4NiMXj9_12regex_syntax3hir7literalNtB2_9Extractor7extract(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aux, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  call fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x2re8thompson8compiler12seq_to_atoms(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ec, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  br label %bb.jx

bb.mm:                                            ; preds = %bb.jr
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @464) #46
end_hunk_1
