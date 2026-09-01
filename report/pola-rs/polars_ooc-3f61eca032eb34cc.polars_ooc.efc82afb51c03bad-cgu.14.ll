Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ooc-3f61eca032eb34cc.polars_ooc.efc82afb51c03bad-cgu.14?download=true
inline.NumInlined: 896
inline.NumDeleted: 318
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_RINvMs0_NtNtCskAlUH1kY1DR_10polars_ooc13spill_context5statsNtB6_22SpillContextStatistics12sample_scoreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngEBa_:bb.a
  %i.cj = fmul <2 x double> %i.cd, %i.ci, !dbg !232 ; 4 uses
  %i.ck = shufflevector <2 x double> %i.cg, <2 x double> %i.cj, <2 x i32> <i32 1, i32 3>, !dbg !229
  store <2 x double> %i.ck, ptr %i.bu, align 16, !dbg !229, !alias.scope !184, !noalias !175
  %i.cl = extractelement <2 x double> %i.cg, i64 0, !dbg !231
  store double %i.cl, ptr %i.bw, align 16, !dbg !231, !alias.scope !184, !noalias !175
  %i.cm = extractelement <2 x double> %i.cj, i64 0, !dbg !232
  store double %i.cm, ptr %i.bx, align 8, !dbg !232, !alias.scope !184, !noalias !175
  %i.cn = getelementptr inbounds nuw i8, ptr %i.t, i64 128, !dbg !233 ; 2 uses
  %i.co = load double, ptr %i.cn, align 16, !dbg !233, !alias.scope !184, !noalias !175, !noundef !15
  %i.cp = fmul double %i.bq, %i.co, !dbg !233     ; 3 uses
  store double %i.cp, ptr %i.cn, align 16, !dbg !233, !alias.scope !184, !noalias !175
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 144, !dbg !234 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 16, !dbg !234, !alias.scope !184, !noalias !175, !noundef !15
  %i.cs = fmul double %i.bq, %i.cr, !dbg !234     ; 3 uses
  store double %i.cs, ptr %i.cq, align 16, !dbg !234, !alias.scope !184, !noalias !175
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 136, !dbg !235 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !dbg !235, !alias.scope !184, !noalias !175, !noundef !15
  %i.cv = fmul double %i.bq, %i.cu, !dbg !235     ; 3 uses
  store double %i.cv, ptr %i.ct, align 8, !dbg !235, !alias.scope !184, !noalias !175
  store i64 %i.z, ptr %i.ab, align 16, !dbg !236, !alias.scope !184, !noalias !175
  store i32 %i.aa, ptr %i.ad, align 8, !dbg !236, !alias.scope !184, !noalias !175
  %i.cw = fcmp ult double %i.cv, 1.100000e+00, !dbg !237
  br i1 %i.cw, label %bb.o, label %bb.e, !dbg !237

bb.e:                                             ; preds = %.noexc7
  %i.cx = tail call nsz double @llvm.maximumnum.f64(double %i.cs, double 0.000000e+00), !dbg !238
  %i.cy = fadd double %i.cx, 1.000000e+00, !dbg !244
  %i.cz = fsub double %i.cv, %i.cs, !dbg !245
  %i.da = tail call nsz double @llvm.maximumnum.f64(double %i.cz, double 0.000000e+00), !dbg !247
  %i.db = fadd double %i.da, 1.000000e+00, !dbg !249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !250, !noalias !252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !250, !noalias !252
  invoke void @_RNvMs0_NtCshxxEFTT9rch_10rand_distr4betaINtB5_4BetadE3newCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, double noundef %i.cy, double noundef %i.db)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !250

.noexc8:                                          ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253), !dbg !256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257), !dbg !256
  %i.dc = load i64, ptr %i.d, align 8, !dbg !259, !range !263, !alias.scope !257, !noalias !264, !noundef !15
  %i.dd = icmp eq i64 %i.dc, 2, !dbg !259
  br i1 %i.dd, label %bb.f, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCshxxEFTT9rch_10rand_distr4beta4BetadENtBK_5ErrorE6unwrapCskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !265, !prof !266

bb.f:                                             ; preds = %.noexc8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !267, !noalias !268
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !267
  %i.df = load i8, ptr %i.de, align 8, !dbg !267, !range !159, !alias.scope !257, !noalias !264, !noundef !15
  store i8 %i.df, ptr %i.c, align 1, !dbg !267, !noalias !268
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #32
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !269

.noexc9:                                          ; preds = %bb.f
  unreachable

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCshxxEFTT9rch_10rand_distr4beta4BetadENtBK_5ErrorE6unwrapCskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %.noexc8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.d, i64 64, i1 false), !dbg !271, !alias.scope !272, !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !273, !noalias !252
  %i.dg = invoke noundef double @_RINvXs1_NtCshxxEFTT9rch_10rand_distr4betaINtB6_4BetadEINtNtNtCsci2cbTAlhZn_4rand5distr12distribution12DistributiondE6sampleNtNtNtBX_4rngs6thread9ThreadRngECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !274 ; 5 uses

.noexc10:                                         ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtCshxxEFTT9rch_10rand_distr4beta4BetadENtBK_5ErrorE6unwrapCskAlUH1kY1DR_10polars_ooc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !275, !noalias !252
  %.val37.i = load ptr, ptr %1, align 8, !dbg !276, !alias.scope !175, !noalias !171 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !252
  store double %i.dg, ptr %i.b, align 8, !noalias !252
  %i.dh = fcmp oge double %i.dg, 0.000000e+00, !dbg !278
  %i.di = fcmp olt double %i.dg, 1.000000e+00
  %spec.select.i.i.i = and i1 %i.dh, %i.di, !dbg !311
  br i1 %spec.select.i.i.i, label %bb.i, label %bb.g, !dbg !312

bb.g:                                             ; preds = %.noexc10
  %i.dj = fcmp oeq double %i.dg, 1.000000e+00, !dbg !313
  br i1 %i.dj, label %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCskAlUH1kY1DR_10polars_ooc.exit.thread.i, label %bb.h, !dbg !313, !prof !134

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !314, !noalias !252
  store ptr %i.b, ptr %i.a, align 8, !dbg !314, !noalias !252
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !314
  store ptr @_RNvXs6_NtNtCscgRAwXFJnXP_4core3fmt5floatdNtB7_5Debug3fmt, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !dbg !314, !noalias !252
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @84, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #33
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !318

.noexc11:                                         ; preds = %bb.h
  unreachable, !dbg !318

bb.i:                                             ; preds = %.noexc10
  %i.dk = fmul nnan double %i.dg, f0x43F0000000000000, !dbg !319
  %i.dl = call i64 @llvm.fptoui.sat.i64.f64(double %i.dk), !dbg !319 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, -1, !dbg !320
  br i1 %i.dm, label %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCskAlUH1kY1DR_10polars_ooc.exit.thread.i, label %bb.j, !dbg !320

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val37.i) ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.val37.i, i64 16, !dbg !327 ; 5 uses
  %i.do = load i32, ptr %i.dn, align 4, !dbg !348, !alias.scope !357, !noalias !360, !noundef !15 ; 4 uses
  %i.dp = icmp ult i32 %i.do, 63, !dbg !363
  br i1 %i.dp, label %bb.n, label %bb.k, !dbg !363

bb.k:                                             ; preds = %bb.j
  %i.dq = getelementptr inbounds nuw i8, ptr %.val37.i, i64 268, !dbg !367
  %i.dr = load i32, ptr %i.dq, align 4, !dbg !367, !alias.scope !357, !noalias !360, !noundef !15
  %i.ds = getelementptr inbounds nuw i8, ptr %.val37.i, i64 272, !dbg !368 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val37.i, i64 320, !dbg !369
  %i.du = load i64, ptr %i.dt, align 4, !dbg !396, !alias.scope !402, !noalias !405
  %i.dv = icmp ugt i64 %i.du, 1023, !dbg !407
  br i1 %i.dv, label %bb.l, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i, !dbg !407, !prof !266

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.ds) #31
          to label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !408

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  call fastcc void @_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.ds, ptr noalias noundef nonnull align 4 dereferenceable(320) %i.dn), !dbg !409, !noalias !360
  %i.dw = load i32, ptr %i.dn, align 4, !dbg !410, !alias.scope !357, !noalias !360, !noundef !15 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.do, 63, !dbg !411
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCskAlUH1kY1DR_10polars_ooc.exit.i, label %bb.m, !dbg !411

bb.m:                                             ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.val37.i, i64 20, !dbg !412
  %i.dy = load i32, ptr %i.dx, align 4, !dbg !412, !alias.scope !357, !noalias !360, !noundef !15
  br label %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !413

bb.n:                                             ; preds = %bb.j
  %i.dz = zext nneg i32 %i.do to i64, !dbg !414
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dz, !dbg !432 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !dbg !432, !alias.scope !357, !noalias !360, !noundef !15
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 4, !dbg !433
  %i.ed = load i32, ptr %i.ec, align 4, !dbg !433, !alias.scope !357, !noalias !360, !noundef !15
  %i.ee = add nuw nsw i32 %i.do, 2, !dbg !434
  br label %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !445

_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCskAlUH1kY1DR_10polars_ooc.exit.thread.i: ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !446, !noalias !252
  br label %bb.o, !dbg !447

_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCskAlUH1kY1DR_10polars_ooc.exit.i: ; preds = %bb.n, %bb.m, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i
  %.sroa.03.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ed, %bb.n ], [ %i.dy, %bb.m ], [ %i.dw, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i ], !dbg !448
  %.sroa.02.0.i.i.i.i.i.i.i.i = phi i32 [ %i.eb, %bb.n ], [ %i.dw, %bb.m ], [ %i.dr, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i ], !dbg !448
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ee, %bb.n ], [ 2, %bb.m ], [ 1, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i ], !dbg !448
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.dn, align 4, !dbg !449, !alias.scope !357, !noalias !360
  %i.ef = zext i32 %.sroa.03.0.i.i.i.i.i.i.i.i to i64, !dbg !450
  %i.eg = shl nuw i64 %i.ef, 32, !dbg !454
  %i.eh = zext i32 %.sroa.02.0.i.i.i.i.i.i.i.i to i64, !dbg !455
  %i.ei = or disjoint i64 %i.eg, %i.eh, !dbg !454
  %i.ej = icmp ult i64 %i.ei, %i.dl, !dbg !457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !446, !noalias !252
  br i1 %i.ej, label %bb.o, label %bb.bd, !dbg !447

bb.o:                                             ; preds = %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCskAlUH1kY1DR_10polars_ooc.exit.i, %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCskAlUH1kY1DR_10polars_ooc.exit.thread.i, %.noexc7
  %i.ek = getelementptr inbounds nuw i8, ptr %i.t, i64 152, !dbg !459
  %i.el = load i64, ptr %i.ek, align 8, !dbg !459, !alias.scope !171, !noalias !175, !noundef !15 ; 2 uses
  %.not.i = icmp eq i64 %i.el, 0, !dbg !459
  br i1 %.not.i, label %bb.q, label %bb.p, !dbg !459

bb.p:                                             ; preds = %bb.o
  %i.em = uitofp i64 %i.el to double, !dbg !466   ; 3 uses
  %i.en = uitofp i128 %i.aw to double, !dbg !467
  %i.eo = getelementptr inbounds nuw i8, ptr %i.t, i64 168, !dbg !470
  %i.ep = load i64, ptr %i.eo, align 8, !dbg !470, !alias.scope !171, !noalias !175, !noundef !15
  %i.eq = uitofp i64 %i.ep to double, !dbg !470
  %i.er = fdiv double %i.ax, %i.em, !dbg !472     ; 2 uses
  %i.es = fmul double %i.er, %i.ax, !dbg !476
  %i.et = fadd double %i.bh, %i.es, !dbg !477
  %i.eu = fadd double %i.bt, %i.em, !dbg !478
  %i.ev = insertelement <2 x double> poison, double %i.eq, i64 0, !dbg !470
  %i.ew = insertelement <2 x double> %i.ev, double %i.en, i64 1, !dbg !470
  %i.ex = fdiv <2 x double> %i.ew, splat (double 1.000000e+09), !dbg !470 ; 4 uses
  %i.ey = extractelement <2 x double> %i.ex, i64 1, !dbg !481
  %i.ez = fmul double %i.ey, %i.er, !dbg !481
  %i.fa = fadd double %i.bo, %i.ez, !dbg !482
  %i.fb = insertelement <2 x double> poison, double %i.ax, i64 0, !dbg !483
  %i.fc = insertelement <2 x double> %i.fb, double %i.em, i64 1, !dbg !483
  %i.fd = fdiv <2 x double> %i.ex, %i.fc, !dbg !483 ; 3 uses
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> %i.ex, <2 x i32> <i32 0, i32 3>, !dbg !484
  %i.ff = fmul <2 x double> %i.fe, %i.fd, !dbg !484 ; 2 uses
  %i.fg = insertelement <2 x double> poison, double %i.et, i64 0, !dbg !484
  %i.fh = insertelement <2 x double> %i.fg, double %i.bn, i64 1, !dbg !484 ; 2 uses
  %i.fi = fmul <2 x double> %i.fh, %i.ff, !dbg !484
  %i.fj = fadd <2 x double> %i.fh, %i.ff, !dbg !484
  %i.fk = shufflevector <2 x double> %i.fi, <2 x double> %i.fj, <2 x i32> <i32 0, i32 3>, !dbg !484
  %i.fl = fadd <2 x double> %i.cg, %i.ex, !dbg !485
  %i.fm = fadd <2 x double> %i.cj, %i.fk, !dbg !486
  %i.fn = extractelement <2 x double> %i.fd, i64 0, !dbg !487
  %i.fo = fmul double %i.fa, %i.fn, !dbg !487
  %i.fp = fadd double %i.cp, %i.fo, !dbg !488
  br label %bb.q, !dbg !489

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.016.0.i = phi double [ %i.fp, %bb.p ], [ %i.cp, %bb.o ], !dbg !490
  %.sroa.03.0.i = phi double [ %i.eu, %bb.p ], [ %i.bt, %bb.o ], !dbg !491 ; 3 uses
  %i.fq = phi <2 x double> [ %i.fl, %bb.p ], [ %i.cg, %bb.o ], !dbg !492
  %i.fr = phi <2 x double> [ %i.fm, %bb.p ], [ %i.cj, %bb.o ], !dbg !493
  %i.fs = fcmp olt double %.sroa.03.0.i, 1.100000e+00, !dbg !494
  br i1 %i.fs, label %bb.bd, label %bb.r, !dbg !494

bb.r:                                             ; preds = %bb.q
  %i.ft = insertelement <2 x double> poison, double %.sroa.03.0.i, i64 0, !dbg !495
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !495
  %i.fv = fadd <2 x double> %i.fu, <double -0.000000e+00, double -1.000000e+00>, !dbg !495
  %i.fw = insertelement <2 x double> <double 1.000000e+00, double poison>, double %.sroa.03.0.i, i64 1, !dbg !497
  %i.fx = fdiv <2 x double> %i.fw, %i.fv, !dbg !497 ; 4 uses
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !498 ; 2 uses
  %i.fz = fmul <2 x double> %i.fq, %i.fy, !dbg !498 ; 5 uses
  %i.ga = fmul <2 x double> %i.fr, %i.fy, !dbg !501
  %i.gb = fmul <2 x double> %i.fz, %i.fz, !dbg !504
  %i.gc = fsub <2 x double> %i.ga, %i.gb, !dbg !505
  %i.gd = call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %i.gc, <2 x double> zeroinitializer), !dbg !506
  %i.ge = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> <i32 1, i32 1>, !dbg !508
  %i.gf = fmul <2 x double> %i.ge, %i.gd, !dbg !508 ; 3 uses
  %2 = extractelement <2 x double> %i.fx, i64 0, !dbg !509
  %3 = fmul double %.sroa.016.0.i, %2, !dbg !509
  %shift = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>, !dbg !511
  %foldExtExtBinop = fmul <2 x double> %shift, %i.fz, !dbg !511
  %i.gg = extractelement <2 x double> %foldExtExtBinop, i64 0, !dbg !511
  %i.gh = fsub double %3, %i.gg, !dbg !512
  %i.gi = extractelement <2 x double> %i.fx, i64 1, !dbg !513
  %i.gj = fmul double %i.gi, %i.gh, !dbg !513
  %i.gk = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.gf), !dbg !514 ; 3 uses
  %i.gl = extractelement <2 x double> %i.gf, i64 1
  %i.gm = fcmp ogt double %i.gl, 0.000000e+00
  %i.gn = extractelement <2 x double> %i.gf, i64 0
  %i.go = fcmp ogt double %i.gn, 0.000000e+00
  %or.cond.i = and i1 %i.gm, %i.go
  %shift337 = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop338 = fmul <2 x double> %shift337, %i.gk
  %i.gp = extractelement <2 x double> %foldExtExtBinop338, i64 0
  %i.gq = fdiv double %i.gj, %i.gp                ; 2 uses
  %i.gr = fcmp olt double %i.gq, -1.000000e+00
  %spec.store.select.i.i = select i1 %i.gr, double -1.000000e+00, double %i.gq ; 2 uses
  %i.gs = fcmp ogt double %spec.store.select.i.i, 1.000000e+00
  %spec.store.select1.i.i = select i1 %i.gs, double 1.000000e+00, double %spec.store.select.i.i ; 3 uses
  %i.gt = fmul double %spec.store.select1.i.i, %spec.store.select1.i.i
  %i.gu = fsub double 1.000000e+00, %i.gt
  %i.gv = call double @llvm.sqrt.f64(double %i.gu)
  br label %bb.s, !dbg !514

bb.s:                                             ; preds = %.backedge, %bb.r
  %.val.i = load ptr, ptr %1, align 8, !dbg !523, !alias.scope !535, !noalias !171, !nonnull !15, !noundef !15 ; 23 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.val.i, i64 16, !dbg !538 ; 6 uses
  %i.gx = load i32, ptr %i.gw, align 4, !dbg !542, !alias.scope !545, !noalias !548, !noundef !15 ; 4 uses
  %i.gy = icmp ult i32 %i.gx, 63, !dbg !551
  br i1 %i.gy, label %bb.z, label %bb.t, !dbg !551

bb.t:                                             ; preds = %bb.s
  %i.gz = getelementptr inbounds nuw i8, ptr %.val.i, i64 268, !dbg !552
  %i.ha = load i32, ptr %i.gz, align 4, !dbg !552, !alias.scope !545, !noalias !548, !noundef !15
  %i.hb = getelementptr inbounds nuw i8, ptr %.val.i, i64 272, !dbg !553 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.val.i, i64 320, !dbg !554 ; 3 uses
  %i.hd = load i64, ptr %i.hc, align 4, !dbg !561, !alias.scope !563, !noalias !566
  %i.he = icmp ugt i64 %i.hd, 1023, !dbg !568
  br i1 %i.he, label %bb.u, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i, !dbg !568, !prof !266

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.hb) #31
          to label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i unwind label %.loopexit.split-lp.loopexit, !dbg !569

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !570), !dbg !573
  call void @llvm.experimental.noalias.scope.decl(metadata !574), !dbg !573
  %i.hf = load atomic i8, ptr @_RNvNtCsejN9i34LGCw_8chacha2010avx2_cpuid7STORAGE monotonic, align 1, !dbg !576, !noalias !592
  %i.hg = icmp eq i8 %i.hf, 1, !dbg !593
  br i1 %i.hg, label %bb.v, label %bb.w, !dbg !593

bb.v:                                             ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i
  call fastcc void @_RINvNtNtCsejN9i34LGCw_8chacha208backends4avx29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECskAlUH1kY1DR_10polars_ooc(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.hb, ptr noalias noundef nonnull align 4 dereferenceable(320) %i.gw), !dbg !594, !alias.scope !595, !noalias !548
  %.pre.i = load i32, ptr %i.gw, align 4, !dbg !596, !alias.scope !545, !noalias !548
  br label %_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCskAlUH1kY1DR_10polars_ooc.exit.i, !dbg !594

bb.w:                                             ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !597), !dbg !600, !noalias !601
  call void @llvm.experimental.noalias.scope.decl(metadata !602), !dbg !600, !noalias !601
  %.sroa.013.0.copyload25.i.i.i = load <4 x i32>, ptr %i.hb, align 4, !dbg !604, !alias.scope !620, !noalias !621 ; 8 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.val.i, i64 288, !dbg !622
  %.sroa.014.0.copyload26.i.i.i = load <4 x i32>, ptr %i.hh, align 4, !dbg !628, !alias.scope !620, !noalias !621 ; 8 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.val.i, i64 304, !dbg !632
  %.sroa.015.0.copyload27.i.i.i = load <4 x i32>, ptr %i.hi, align 4, !dbg !634, !alias.scope !620, !noalias !621 ; 8 uses
  %.sroa.016.0.copyload.i.i.i = load <2 x i64>, ptr %i.hc, align 4, !dbg !638, !alias.scope !620, !noalias !621 ; 5 uses
  %i.hj = bitcast <2 x i64> %.sroa.016.0.copyload.i.i.i to <4 x i32> ; 2 uses
  %i.hk = add <2 x i64> %.sroa.016.0.copyload.i.i.i, <i64 1, i64 0>, !dbg !642
  %i.hl = add <2 x i64> %.sroa.016.0.copyload.i.i.i, <i64 2, i64 0>, !dbg !642
  %i.hm = add <2 x i64> %.sroa.016.0.copyload.i.i.i, <i64 3, i64 0>, !dbg !642
  %i.hn = bitcast <2 x i64> %i.hk to <4 x i32>    ; 2 uses
  %i.ho = bitcast <2 x i64> %i.hl to <4 x i32>    ; 2 uses
  %i.hp = bitcast <2 x i64> %i.hm to <4 x i32>    ; 2 uses
  br label %bb.x, !dbg !654

bb.x:                                             ; preds = %bb.x, %bb.w
  %.sroa.048.0116.i.i.i.i = phi i64 [ 0, %bb.w ], [ %i.ig, %bb.x ]
  %i.hq = phi <4 x i32> [ %.sroa.013.0.copyload25.i.i.i, %bb.w ], [ %i.mn, %bb.x ]
  %i.hr = phi <4 x i32> [ %.sroa.014.0.copyload26.i.i.i, %bb.w ], [ %i.la, %bb.x ] ; 2 uses
  %i.hs = phi <4 x i32> [ %i.hj, %bb.w ], [ %i.mm, %bb.x ]
  %i.ht = phi <4 x i32> [ %.sroa.015.0.copyload27.i.i.i, %bb.w ], [ %i.ml, %bb.x ]
  %i.hu = phi <4 x i32> [ %.sroa.013.0.copyload25.i.i.i, %bb.w ], [ %i.mq, %bb.x ]
  %i.hv = phi <4 x i32> [ %.sroa.014.0.copyload26.i.i.i, %bb.w ], [ %i.lm, %bb.x ] ; 2 uses
  %i.hw = phi <4 x i32> [ %i.hn, %bb.w ], [ %i.mp, %bb.x ]
  %i.hx = phi <4 x i32> [ %.sroa.015.0.copyload27.i.i.i, %bb.w ], [ %i.mo, %bb.x ]
  %i.hy = phi <4 x i32> [ %.sroa.013.0.copyload25.i.i.i, %bb.w ], [ %i.mt, %bb.x ]
  %i.hz = phi <4 x i32> [ %.sroa.014.0.copyload26.i.i.i, %bb.w ], [ %i.ly, %bb.x ] ; 2 uses
  %i.ia = phi <4 x i32> [ %i.ho, %bb.w ], [ %i.ms, %bb.x ]
  %i.ib = phi <4 x i32> [ %.sroa.015.0.copyload27.i.i.i, %bb.w ], [ %i.mr, %bb.x ]
  %i.ic = phi <4 x i32> [ %.sroa.013.0.copyload25.i.i.i, %bb.w ], [ %i.mw, %bb.x ]
  %i.id = phi <4 x i32> [ %.sroa.014.0.copyload26.i.i.i, %bb.w ], [ %i.mk, %bb.x ] ; 2 uses
  %i.ie = phi <4 x i32> [ %i.hp, %bb.w ], [ %i.mv, %bb.x ]
  %i.if = phi <4 x i32> [ %.sroa.015.0.copyload27.i.i.i, %bb.w ], [ %i.mu, %bb.x ]
  %i.ig = add nuw nsw i64 %.sroa.048.0116.i.i.i.i, 1, !dbg !665 ; 2 uses
  %i.ih = add <4 x i32> %i.hr, %i.hq, !dbg !674   ; 2 uses
  %i.ii = xor <4 x i32> %i.hs, %i.ih, !dbg !683   ; 2 uses
  %i.ij = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ii, <4 x i32> %i.ii, <4 x i32> splat (i32 16)), !dbg !686 ; 2 uses
  %i.ik = add <4 x i32> %i.ij, %i.ht, !dbg !689   ; 2 uses
  %i.il = xor <4 x i32> %i.ik, %i.hr, !dbg !691   ; 2 uses
  %i.im = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.il, <4 x i32> %i.il, <4 x i32> splat (i32 12)), !dbg !694 ; 2 uses
  %i.in = add <4 x i32> %i.im, %i.ih, !dbg !696   ; 2 uses
  %i.io = xor <4 x i32> %i.in, %i.ij, !dbg !698   ; 2 uses
  %i.ip = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.io, <4 x i32> %i.io, <4 x i32> splat (i32 8)), !dbg !700 ; 2 uses
  %i.iq = add <4 x i32> %i.ip, %i.ik, !dbg !702   ; 2 uses
  %i.ir = xor <4 x i32> %i.iq, %i.im, !dbg !704   ; 2 uses
  %i.is = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ir, <4 x i32> %i.ir, <4 x i32> splat (i32 7)), !dbg !706 ; 2 uses
  %i.it = add <4 x i32> %i.hv, %i.hu, !dbg !674   ; 2 uses
  %i.iu = xor <4 x i32> %i.hw, %i.it, !dbg !683   ; 2 uses
  %i.iv = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.iu, <4 x i32> %i.iu, <4 x i32> splat (i32 16)), !dbg !686 ; 2 uses
  %i.iw = add <4 x i32> %i.iv, %i.hx, !dbg !689   ; 2 uses
  %i.ix = xor <4 x i32> %i.iw, %i.hv, !dbg !691   ; 2 uses
  %i.iy = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ix, <4 x i32> %i.ix, <4 x i32> splat (i32 12)), !dbg !694 ; 2 uses
  %i.iz = add <4 x i32> %i.iy, %i.it, !dbg !696   ; 2 uses
  %i.ja = xor <4 x i32> %i.iz, %i.iv, !dbg !698   ; 2 uses
  %i.jb = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ja, <4 x i32> %i.ja, <4 x i32> splat (i32 8)), !dbg !700 ; 2 uses
  %i.jc = add <4 x i32> %i.jb, %i.iw, !dbg !702   ; 2 uses
  %i.jd = xor <4 x i32> %i.jc, %i.iy, !dbg !704   ; 2 uses
  %i.je = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.jd, <4 x i32> %i.jd, <4 x i32> splat (i32 7)), !dbg !706 ; 2 uses
  %i.jf = add <4 x i32> %i.hz, %i.hy, !dbg !674   ; 2 uses
  %i.jg = xor <4 x i32> %i.ia, %i.jf, !dbg !683   ; 2 uses
  %i.jh = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.jg, <4 x i32> %i.jg, <4 x i32> splat (i32 16)), !dbg !686 ; 2 uses
  %i.ji = add <4 x i32> %i.jh, %i.ib, !dbg !689   ; 2 uses
  %i.jj = xor <4 x i32> %i.ji, %i.hz, !dbg !691   ; 2 uses
  %i.jk = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.jj, <4 x i32> %i.jj, <4 x i32> splat (i32 12)), !dbg !694 ; 2 uses
  %i.jl = add <4 x i32> %i.jk, %i.jf, !dbg !696   ; 2 uses
  %i.jm = xor <4 x i32> %i.jl, %i.jh, !dbg !698   ; 2 uses
  %i.jn = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.jm, <4 x i32> %i.jm, <4 x i32> splat (i32 8)), !dbg !700 ; 2 uses
  %i.jo = add <4 x i32> %i.jn, %i.ji, !dbg !702   ; 2 uses
  %i.jp = xor <4 x i32> %i.jo, %i.jk, !dbg !704   ; 2 uses
  %i.jq = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.jp, <4 x i32> %i.jp, <4 x i32> splat (i32 7)), !dbg !706 ; 2 uses
  %i.jr = add <4 x i32> %i.id, %i.ic, !dbg !674   ; 2 uses
  %i.js = xor <4 x i32> %i.ie, %i.jr, !dbg !683   ; 2 uses
  %i.jt = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.js, <4 x i32> %i.js, <4 x i32> splat (i32 16)), !dbg !686 ; 2 uses
  %i.ju = add <4 x i32> %i.jt, %i.if, !dbg !689   ; 2 uses
  %i.jv = xor <4 x i32> %i.ju, %i.id, !dbg !691   ; 2 uses
  %i.jw = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.jv, <4 x i32> %i.jv, <4 x i32> splat (i32 12)), !dbg !694 ; 2 uses
  %i.jx = add <4 x i32> %i.jw, %i.jr, !dbg !696   ; 2 uses
  %i.jy = xor <4 x i32> %i.jx, %i.jt, !dbg !698   ; 2 uses
  %i.jz = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.jy, <4 x i32> %i.jy, <4 x i32> splat (i32 8)), !dbg !700 ; 2 uses
  %i.ka = add <4 x i32> %i.jz, %i.ju, !dbg !702   ; 2 uses
  %i.kb = xor <4 x i32> %i.ka, %i.jw, !dbg !704   ; 2 uses
  %i.kc = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.kb, <4 x i32> %i.kb, <4 x i32> splat (i32 7)), !dbg !706 ; 2 uses
  %i.kd = shufflevector <4 x i32> %i.iq, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>, !dbg !708
  %i.ke = shufflevector <4 x i32> %i.ip, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !718
  %i.kf = shufflevector <4 x i32> %i.in, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !723
  %i.kg = shufflevector <4 x i32> %i.jc, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>, !dbg !708
  %i.kh = shufflevector <4 x i32> %i.jb, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !718
  %i.ki = shufflevector <4 x i32> %i.iz, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !723
  %i.kj = shufflevector <4 x i32> %i.jo, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>, !dbg !708
  %i.kk = shufflevector <4 x i32> %i.jn, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !718
  %i.kl = shufflevector <4 x i32> %i.jl, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !723
  %i.km = shufflevector <4 x i32> %i.ka, <4 x i32> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>, !dbg !708
  %i.kn = shufflevector <4 x i32> %i.jz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>, !dbg !718
  %i.ko = shufflevector <4 x i32> %i.jx, <4 x i32> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>, !dbg !723
  %i.kp = add <4 x i32> %i.is, %i.kf, !dbg !728   ; 2 uses
  %i.kq = xor <4 x i32> %i.kp, %i.ke, !dbg !731   ; 2 uses
  %i.kr = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.kq, <4 x i32> %i.kq, <4 x i32> splat (i32 16)), !dbg !733 ; 2 uses
  %i.ks = add <4 x i32> %i.kr, %i.kd, !dbg !735   ; 2 uses
  %i.kt = xor <4 x i32> %i.ks, %i.is, !dbg !737   ; 2 uses
  %i.ku = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.kt, <4 x i32> %i.kt, <4 x i32> splat (i32 12)), !dbg !739 ; 2 uses
  %i.kv = add <4 x i32> %i.ku, %i.kp, !dbg !741   ; 2 uses
  %i.kw = xor <4 x i32> %i.kv, %i.kr, !dbg !743   ; 2 uses
  %i.kx = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.kw, <4 x i32> %i.kw, <4 x i32> splat (i32 8)), !dbg !745 ; 2 uses
  %i.ky = add <4 x i32> %i.kx, %i.ks, !dbg !747   ; 2 uses
  %i.kz = xor <4 x i32> %i.ky, %i.ku, !dbg !749   ; 2 uses
  %i.la = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.kz, <4 x i32> %i.kz, <4 x i32> splat (i32 7)), !dbg !751 ; 2 uses
  %i.lb = add <4 x i32> %i.je, %i.ki, !dbg !728   ; 2 uses
  %i.lc = xor <4 x i32> %i.lb, %i.kh, !dbg !731   ; 2 uses
  %i.ld = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.lc, <4 x i32> %i.lc, <4 x i32> splat (i32 16)), !dbg !733 ; 2 uses
  %i.le = add <4 x i32> %i.ld, %i.kg, !dbg !735   ; 2 uses
  %i.lf = xor <4 x i32> %i.le, %i.je, !dbg !737   ; 2 uses
  %i.lg = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.lf, <4 x i32> %i.lf, <4 x i32> splat (i32 12)), !dbg !739 ; 2 uses
  %i.lh = add <4 x i32> %i.lg, %i.lb, !dbg !741   ; 2 uses
  %i.li = xor <4 x i32> %i.lh, %i.ld, !dbg !743   ; 2 uses
  %i.lj = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.li, <4 x i32> %i.li, <4 x i32> splat (i32 8)), !dbg !745 ; 2 uses
  %i.lk = add <4 x i32> %i.lj, %i.le, !dbg !747   ; 2 uses
  %i.ll = xor <4 x i32> %i.lk, %i.lg, !dbg !749   ; 2 uses
  %i.lm = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ll, <4 x i32> %i.ll, <4 x i32> splat (i32 7)), !dbg !751 ; 2 uses
  %i.ln = add <4 x i32> %i.jq, %i.kl, !dbg !728   ; 2 uses
  %i.lo = xor <4 x i32> %i.ln, %i.kk, !dbg !731   ; 2 uses
  %i.lp = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.lo, <4 x i32> %i.lo, <4 x i32> splat (i32 16)), !dbg !733 ; 2 uses
  %i.lq = add <4 x i32> %i.lp, %i.kj, !dbg !735   ; 2 uses
  %i.lr = xor <4 x i32> %i.lq, %i.jq, !dbg !737   ; 2 uses
  %i.ls = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.lr, <4 x i32> %i.lr, <4 x i32> splat (i32 12)), !dbg !739 ; 2 uses
  %i.lt = add <4 x i32> %i.ls, %i.ln, !dbg !741   ; 2 uses
  %i.lu = xor <4 x i32> %i.lt, %i.lp, !dbg !743   ; 2 uses
  %i.lv = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.lu, <4 x i32> %i.lu, <4 x i32> splat (i32 8)), !dbg !745 ; 2 uses
  %i.lw = add <4 x i32> %i.lv, %i.lq, !dbg !747   ; 2 uses
  %i.lx = xor <4 x i32> %i.lw, %i.ls, !dbg !749   ; 2 uses
  %i.ly = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.lx, <4 x i32> %i.lx, <4 x i32> splat (i32 7)), !dbg !751 ; 2 uses
  %i.lz = add <4 x i32> %i.kc, %i.ko, !dbg !728   ; 2 uses
  %i.ma = xor <4 x i32> %i.lz, %i.kn, !dbg !731   ; 2 uses
  %i.mb = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.ma, <4 x i32> %i.ma, <4 x i32> splat (i32 16)), !dbg !733 ; 2 uses
  %i.mc = add <4 x i32> %i.mb, %i.km, !dbg !735   ; 2 uses
  %i.md = xor <4 x i32> %i.mc, %i.kc, !dbg !737   ; 2 uses
  %i.me = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.md, <4 x i32> %i.md, <4 x i32> splat (i32 12)), !dbg !739 ; 2 uses
  %i.mf = add <4 x i32> %i.me, %i.lz, !dbg !741   ; 2 uses
  %i.mg = xor <4 x i32> %i.mf, %i.mb, !dbg !743   ; 2 uses
  %i.mh = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %i.mg, <4 x i32> %i.mg, <4 x i32> splat (i32 8)), !dbg !745 ; 2 uses
  %i.mi = add <4 x i32> %i.mh, %i.mc, !dbg !747   ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.sqrt.v2f64
!298 = distinct !DILocation(line: 108, column: 24, scope: !299, inlinedAt: !305)
!299 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs0_NtNtCsci2cbTAlhZn_4rand5distr9bernoulliNtB5_9Bernoulli3new", scope: !301, file: !300, line: 107, type: !14, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!300 = !DIFile(filename: "src/distr/bernoulli.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand-0.10.1", checksumkind: CSK_MD5, checksum: "7561b95f4b0857cc57d6ff4d584fc27d")
!301 = !DINamespace(name: "Bernoulli", scope: !302)
!302 = !DINamespace(name: "bernoulli", scope: !303)
!303 = !DINamespace(name: "distr", scope: !304)
!304 = !DINamespace(name: "rand", scope: null)
!305 = distinct !DILocation(line: 190, column: 15, scope: !306, inlinedAt: !310)
!306 = distinct !DISubprogram(name: "random_bool<rand::rngs::thread::ThreadRng>", linkageName: "_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCskAlUH1kY1DR_10polars_ooc", scope: !308, file: !307, line: 189, type: !294, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!307 = !DIFile(filename: "src/rng.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand-0.10.1", checksumkind: CSK_MD5, checksum: "ac28652bd4c4172066daca04e3bdb484")
!308 = !DINamespace(name: "RngExt", scope: !309)
!309 = !DINamespace(name: "rng", scope: !304)
!310 = distinct !DILocation(line: 329, column: 21, scope: !277, inlinedAt: !180)
!311 = !DILocation(line: 873, column: 9, scope: !290, inlinedAt: !295)
!312 = !DILocation(line: 108, column: 13, scope: !299, inlinedAt: !305)
!313 = !DILocation(line: 109, column: 16, scope: !299, inlinedAt: !305)
!314 = !DILocation(line: 192, column: 23, scope: !315, inlinedAt: !310)
!315 = !DILexicalBlockFile(scope: !316, file: !307, discriminator: 0)
!316 = distinct !DILexicalBlock(scope: !306, file: !317, line: 62, column: 38)
!317 = !DIFile(filename: "library/core/src/panic.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "5ea139883c81a8074ac3b0ff123e16cc")
!318 = !DILocation(line: 192, column: 23, scope: !306, inlinedAt: !310)
!319 = !DILocation(line: 115, column: 20, scope: !299, inlinedAt: !305)
!320 = !DILocation(line: 156, column: 12, scope: !321, inlinedAt: !323)
!321 = distinct !DISubprogram(name: "sample<rand::rngs::thread::ThreadRng>", linkageName: "_RINvXs1_NtNtCsci2cbTAlhZn_4rand5distr9bernoulliNtB6_9BernoulliINtNtB8_12distribution12DistributionbE6sampleNtNtNtBa_4rngs6thread9ThreadRngECskAlUH1kY1DR_10polars_ooc", scope: !322, file: !300, line: 154, type: !294, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!322 = !DINamespace(name: "{impl#3}", scope: !302)
!323 = distinct !DILocation(line: 248, column: 15, scope: !324, inlinedAt: !325)
!324 = distinct !DISubprogram(name: "sample<rand::rngs::thread::ThreadRng, bool, rand::distr::bernoulli::Bernoulli>", linkageName: "_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6samplebNtNtNtB9_5distr9bernoulli9BernoulliECskAlUH1kY1DR_10polars_ooc", scope: !308, file: !307, line: 247, type: !294, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!325 = distinct !DILocation(line: 191, column: 27, scope: !326, inlinedAt: !310)
!326 = distinct !DILexicalBlock(scope: !306, file: !307, line: 191, column: 13)
!327 = !DILocation(line: 2447, column: 9, scope: !328, inlinedAt: !329)
!328 = distinct !DISubprogram(name: "get<rand_core::block::BlockRng<rand::rngs::thread::ReseedingCore>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtCs53V80GKKPEw_9rand_core5block8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreEE3getCskAlUH1kY1DR_10polars_ooc", scope: !165, file: !164, line: 2443, type: !14, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!329 = distinct !DILocation(line: 227, column: 43, scope: !330, inlinedAt: !335)
!330 = distinct !DISubprogram(name: "try_next_u64", linkageName: "_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng12try_next_u64", scope: !332, file: !331, line: 224, type: !14, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!331 = !DIFile(filename: "src/rngs/thread.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand-0.10.1", checksumkind: CSK_MD5, checksum: "df6773183ceecd8f30e63b8ea4079038")
!332 = !DINamespace(name: "{impl#5}", scope: !333)
!333 = !DINamespace(name: "thread", scope: !334)
!334 = !DINamespace(name: "rngs", scope: !304)
!335 = distinct !DILocation(line: 78, column: 20, scope: !336, inlinedAt: !340)
!336 = distinct !DISubprogram(name: "next_u64<rand::rngs::thread::ThreadRng>", linkageName: "_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u64CskAlUH1kY1DR_10polars_ooc", scope: !338, file: !337, line: 77, type: !294, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!337 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1", checksumkind: CSK_MD5, checksum: "975a4bbb89e6beb781c3af1d0e423338")
!338 = !DINamespace(name: "{impl#0}", scope: !339)
!339 = !DINamespace(name: "rand_core", scope: null)
!340 = distinct !DILocation(line: 52, column: 13, scope: !341, inlinedAt: !345)
!341 = distinct !DISubprogram(name: "sample<rand::rngs::thread::ThreadRng>", linkageName: "_RINvXs1_NtNtCsci2cbTAlhZn_4rand5distr7integerNtB8_15StandardUniformINtNtB8_12distribution12DistributionyE6sampleNtNtNtBa_4rngs6thread9ThreadRngECskAlUH1kY1DR_10polars_ooc", scope: !343, file: !342, line: 51, type: !294, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!342 = !DIFile(filename: "src/distr/integer.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand-0.10.1", checksumkind: CSK_MD5, checksum: "67ef890ba4fb4f8960ddd4f261612a7a")
!343 = !DINamespace(name: "{impl#3}", scope: !344)
!344 = !DINamespace(name: "integer", scope: !303)
!345 = distinct !DILocation(line: 97, column: 25, scope: !346, inlinedAt: !347)
!346 = distinct !DISubprogram(name: "random<rand::rngs::thread::ThreadRng, u64>", linkageName: "_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomyECskAlUH1kY1DR_10polars_ooc", scope: !308, file: !307, line: 93, type: !294, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!347 = distinct !DILocation(line: 159, column: 26, scope: !321, inlinedAt: !323)
!348 = !DILocation(line: 175, column: 9, scope: !349, inlinedAt: !353)
!349 = distinct !DISubprogram(name: "index<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNvMs1_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE5indexCskAlUH1kY1DR_10polars_ooc", scope: !351, file: !350, line: 174, type: !14, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!350 = !DIFile(filename: "src/block.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1", checksumkind: CSK_MD5, checksum: "05a8db703173f32a64ac37e21576a74a")
!351 = !DINamespace(name: "BlockRng", scope: !352)
!352 = !DINamespace(name: "block", scope: !339)
!353 = distinct !DILocation(line: 249, column: 26, scope: !354, inlinedAt: !355)
!354 = distinct !DISubprogram(name: "next_u64_from_u32<64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNvMs2_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32CskAlUH1kY1DR_10polars_ooc", scope: !351, file: !350, line: 248, type: !14, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!355 = distinct !DILocation(line: 228, column: 16, scope: !356, inlinedAt: !335)
!356 = distinct !DILexicalBlock(scope: !330, file: !331, line: 227, column: 9)
!357 = !{!358}
!358 = distinct !{!358, !359, !"_RNvMs2_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32CskAlUH1kY1DR_10polars_ooc: argument 0"}
!359 = distinct !{!359, !"_RNvMs2_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32CskAlUH1kY1DR_10polars_ooc"}
!360 = !{!361, !172}
!361 = distinct !{!361, !362, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng12try_next_u64: argument 0"}
!362 = distinct !{!362, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng12try_next_u64"}
!363 = !DILocation(line: 252, column: 12, scope: !364, inlinedAt: !355)
!364 = distinct !DILexicalBlock(scope: !365, file: !350, line: 251, column: 9)
!365 = distinct !DILexicalBlock(scope: !366, file: !350, line: 250, column: 9)
!366 = distinct !DILexicalBlock(scope: !354, file: !350, line: 249, column: 9)
!367 = !DILocation(line: 257, column: 18, scope: !364, inlinedAt: !355)
!368 = !DILocation(line: 258, column: 13, scope: !364, inlinedAt: !355)
!369 = !DILocation(line: 89, column: 24, scope: !370, inlinedAt: !375)
!370 = distinct !DILexicalBlock(scope: !372, file: !371, line: 87, column: 5)
!371 = !DIFile(filename: "library/core/src/slice/index.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "949bb7af491f1c6ef62f3972592a0143")
!372 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u32>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckmECskAlUH1kY1DR_10polars_ooc", scope: !373, file: !371, line: 82, type: !14, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!373 = !DINamespace(name: "index", scope: !374)
!374 = !DINamespace(name: "slice", scope: !27)
!375 = distinct !DILocation(line: 574, column: 15, scope: !376, inlinedAt: !379)
!376 = distinct !DILexicalBlock(scope: !377, file: !371, line: 573, column: 13)
!377 = distinct !DISubprogram(name: "index<u32>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSmE5indexCskAlUH1kY1DR_10polars_ooc", scope: !378, file: !371, line: 567, type: !14, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!378 = !DINamespace(name: "{impl#7}", scope: !373)
!379 = distinct !DILocation(line: 19, column: 15, scope: !380, inlinedAt: !382)
!380 = distinct !DISubprogram(name: "index<u32, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexSmINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCskAlUH1kY1DR_10polars_ooc", scope: !381, file: !371, line: 18, type: !14, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!381 = !DINamespace(name: "{impl#0}", scope: !373)
!382 = distinct !DILocation(line: 390, column: 9, scope: !383, inlinedAt: !387)
!383 = distinct !DISubprogram(name: "index<u32, core::ops::range::RangeFrom<usize>, 16>", linkageName: "_RNvXsd_NtCscgRAwXFJnXP_4core5arrayAmj10_INtNtNtB7_3ops5index5IndexINtNtBH_5range9RangeFromjEE5indexCskAlUH1kY1DR_10polars_ooc", scope: !385, file: !384, line: 389, type: !14, scopeLine: 389, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!384 = !DIFile(filename: "library/core/src/array/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c726f515c254459c73cb9352206a49a4")
!385 = !DINamespace(name: "{impl#15}", scope: !386)
!386 = !DINamespace(name: "array", scope: !27)
!387 = distinct !DILocation(line: 280, column: 37, scope: !388, inlinedAt: !392)
!388 = distinct !DISubprogram(name: "get_block_pos<chacha20::R12, chacha20::variants::Legacy>", linkageName: "_RNvMs1_CsejN9i34LGCw_8chacha20INtB5_10ChaChaCoreNtB5_3R12NtNtB5_8variants6LegacyE13get_block_posCskAlUH1kY1DR_10polars_ooc", scope: !390, file: !389, line: 279, type: !14, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!389 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chacha20-0.10.0", checksumkind: CSK_MD5, checksum: "89e7403dfb892fecb85a0562600a2d06")
!390 = !DINamespace(name: "ChaChaCore", scope: !391)
!391 = !DINamespace(name: "chacha20", scope: null)
!392 = distinct !DILocation(line: 53, column: 23, scope: !393, inlinedAt: !395)
!393 = distinct !DISubprogram(name: "generate", linkageName: "_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate", scope: !394, file: !331, line: 52, type: !14, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!394 = !DINamespace(name: "{impl#0}", scope: !333)
!395 = distinct !DILocation(line: 258, column: 23, scope: !364, inlinedAt: !355)
!396 = !DILocation(line: 70, column: 20, scope: !397, inlinedAt: !401)
!397 = distinct !DISubprogram(name: "get_block_pos", linkageName: "_RNvXs1_NtCsejN9i34LGCw_8chacha208variantsNtB5_6LegacyNtB5_7Variant13get_block_pos", scope: !399, file: !398, line: 69, type: !14, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!398 = !DIFile(filename: "src/variants.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chacha20-0.10.0", checksumkind: CSK_MD5, checksum: "b95ebc19fd2a8bf9e14b229a727fcb3d")
!399 = !DINamespace(name: "{impl#3}", scope: !400)
!400 = !DINamespace(name: "variants", scope: !391)
!401 = distinct !DILocation(line: 280, column: 9, scope: !388, inlinedAt: !392)
!402 = !{!403, !358}
!403 = distinct !{!403, !404, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate: argument 0"}
!404 = distinct !{!404, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate"}
!405 = !{!406, !361, !172}
!406 = distinct !{!406, !404, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate: argument 1"}
!407 = !DILocation(line: 53, column: 12, scope: !393, inlinedAt: !395)
!408 = !DILocation(line: 54, column: 18, scope: !393, inlinedAt: !395)
!409 = !DILocation(line: 56, column: 20, scope: !393, inlinedAt: !395)
!410 = !DILocation(line: 259, column: 18, scope: !364, inlinedAt: !355)
!411 = !DILocation(line: 261, column: 16, scope: !364, inlinedAt: !355)
!412 = !DILocation(line: 263, column: 22, scope: !364, inlinedAt: !355)
!413 = !DILocation(line: 261, column: 13, scope: !364, inlinedAt: !355)
!414 = !DILocation(line: 253, column: 20, scope: !415, inlinedAt: !421)
!415 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXsi_NtNtNtCscgRAwXFJnXP_4core7convert3num18ptr_try_from_implsjINtB9_7TryFrommE8try_from", scope: !417, file: !416, line: 252, type: !14, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!416 = !DIFile(filename: "library/core/src/convert/num.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "30106f13a83326e9aeb1563ee1913ab6")
!417 = !DINamespace(name: "{impl#20}", scope: !418)
!418 = !DINamespace(name: "ptr_try_from_impls", scope: !419)
!419 = !DINamespace(name: "num", scope: !420)
!420 = !DINamespace(name: "convert", scope: !27)
!421 = distinct !DILocation(line: 819, column: 9, scope: !422, inlinedAt: !425)
!422 = distinct !DISubprogram(name: "try_into<u32, usize>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core7convertmINtB5_7TryIntojE8try_intoCskAlUH1kY1DR_10polars_ooc", scope: !424, file: !423, line: 818, type: !14, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!423 = !DIFile(filename: "library/core/src/convert/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "895b07ad419949eb0829369911de237b")
!424 = !DINamespace(name: "{impl#6}", scope: !420)
!425 = distinct !DILocation(line: 41, column: 18, scope: !426, inlinedAt: !431)
!426 = distinct !DISubprogram(name: "into_usize", linkageName: "_RNvXNtNtCs53V80GKKPEw_9rand_core4word6sealedmNtB2_6Sealed10into_usize", scope: !428, file: !427, line: 40, type: !14, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!427 = !DIFile(filename: "src/word.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_core-0.10.1", checksumkind: CSK_MD5, checksum: "604c84d04a2b49fce54326900523aa64")
!428 = !DINamespace(name: "{impl#0}", scope: !429)
!429 = !DINamespace(name: "sealed", scope: !430)
!430 = !DINamespace(name: "word", scope: !339)
!431 = distinct !DILocation(line: 175, column: 25, scope: !349, inlinedAt: !353)
!432 = !DILocation(line: 253, column: 18, scope: !364, inlinedAt: !355)
!433 = !DILocation(line: 254, column: 18, scope: !364, inlinedAt: !355)
!434 = !DILocation(line: 298, column: 24, scope: !435, inlinedAt: !437)
!435 = distinct !DISubprogram(name: "try_from", linkageName: "_RNvXs0_NtNtNtCscgRAwXFJnXP_4core7convert3num18ptr_try_from_implsmINtB9_7TryFromjE8try_from", scope: !436, file: !416, line: 294, type: !14, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!436 = !DINamespace(name: "{impl#2}", scope: !418)
!437 = distinct !DILocation(line: 819, column: 9, scope: !438, inlinedAt: !440)
!438 = !DILexicalBlockFile(scope: !439, file: !423, discriminator: 2)
!439 = distinct !DISubprogram(name: "try_into<usize, u32>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core7convertjINtB5_7TryIntomE8try_intoCskAlUH1kY1DR_10polars_ooc", scope: !424, file: !423, line: 818, type: !14, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!440 = distinct !DILocation(line: 37, column: 17, scope: !441, inlinedAt: !442)
!441 = distinct !DISubprogram(name: "from_usize", linkageName: "_RNvXNtNtCs53V80GKKPEw_9rand_core4word6sealedmNtB2_6Sealed10from_usize", scope: !428, file: !427, line: 36, type: !14, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!442 = distinct !DILocation(line: 181, column: 27, scope: !443, inlinedAt: !444)
!443 = distinct !DISubprogram(name: "set_index<u32, 64, rand::rngs::thread::ReseedingCore>", linkageName: "_RNvMs1_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE9set_indexCskAlUH1kY1DR_10polars_ooc", scope: !351, file: !350, line: 179, type: !14, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!444 = distinct !DILocation(line: 267, column: 14, scope: !364, inlinedAt: !355)
!445 = !DILocation(line: 252, column: 9, scope: !364, inlinedAt: !355)
!446 = !DILocation(line: 194, column: 6, scope: !306, inlinedAt: !310)
!447 = !DILocation(line: 329, column: 17, scope: !277, inlinedAt: !180)
!448 = !DILocation(line: 0, scope: !364, inlinedAt: !355)
!449 = !DILocation(line: 181, column: 9, scope: !443, inlinedAt: !444)
!450 = !DILocation(line: 82, column: 17, scope: !451, inlinedAt: !453)
!451 = distinct !DISubprogram(name: "from", linkageName: "_RNvXs18_NtNtCscgRAwXFJnXP_4core7convert3numyINtB8_4FrommE4from", scope: !452, file: !416, line: 79, type: !14, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!452 = !DINamespace(name: "{impl#72}", scope: !419)
!453 = distinct !DILocation(line: 268, column: 10, scope: !364, inlinedAt: !355)
!454 = !DILocation(line: 268, column: 9, scope: !364, inlinedAt: !355)
!455 = !DILocation(line: 82, column: 17, scope: !451, inlinedAt: !456)
!456 = distinct !DILocation(line: 268, column: 33, scope: !364, inlinedAt: !355)
!457 = !DILocation(line: 160, column: 9, scope: !458, inlinedAt: !323)
!458 = distinct !DILexicalBlock(scope: !321, file: !300, line: 159, column: 9)
!459 = !DILocation(line: 341, column: 12, scope: !460, inlinedAt: !180)
!460 = distinct !DILexicalBlock(scope: !461, file: !72, line: 339, column: 9)
!461 = distinct !DILexicalBlock(scope: !462, file: !72, line: 338, column: 9)
!462 = distinct !DILexicalBlock(scope: !463, file: !72, line: 337, column: 9)
!463 = distinct !DILexicalBlock(scope: !464, file: !72, line: 336, column: 9)
!464 = distinct !DILexicalBlock(scope: !465, file: !72, line: 335, column: 9)
!465 = distinct !DILexicalBlock(scope: !178, file: !72, line: 334, column: 9)
!466 = !DILocation(line: 352, column: 21, scope: !460, inlinedAt: !180)
!467 = !DILocation(line: 354, column: 21, scope: !468, inlinedAt: !180)
!468 = distinct !DILexicalBlock(scope: !469, file: !72, line: 353, column: 13)
!469 = distinct !DILexicalBlock(scope: !460, file: !72, line: 352, column: 13)
!470 = !DILocation(line: 355, column: 21, scope: !471, inlinedAt: !180)
!471 = distinct !DILexicalBlock(scope: !468, file: !72, line: 354, column: 13)
!472 = !DILocation(line: 359, column: 53, scope: !473, inlinedAt: !180)
!473 = distinct !DILexicalBlock(scope: !474, file: !72, line: 358, column: 13)
!474 = distinct !DILexicalBlock(scope: !475, file: !72, line: 356, column: 13)
!475 = distinct !DILexicalBlock(scope: !471, file: !72, line: 355, column: 13)
!476 = !DILocation(line: 359, column: 49, scope: !473, inlinedAt: !180)
!477 = !DILocation(line: 359, column: 22, scope: !473, inlinedAt: !180)
!478 = !DILocation(line: 362, column: 13, scope: !479, inlinedAt: !180)
!479 = distinct !DILexicalBlock(scope: !480, file: !72, line: 360, column: 13)
!480 = distinct !DILexicalBlock(scope: !473, file: !72, line: 359, column: 13)
!481 = !DILocation(line: 360, column: 49, scope: !480, inlinedAt: !180)
!482 = !DILocation(line: 360, column: 22, scope: !480, inlinedAt: !180)
!483 = !DILocation(line: 356, column: 35, scope: !475, inlinedAt: !180)
!484 = !DILocation(line: 366, column: 23, scope: !479, inlinedAt: !180)
!485 = !DILocation(line: 365, column: 13, scope: !479, inlinedAt: !180)
!486 = !DILocation(line: 366, column: 13, scope: !479, inlinedAt: !180)
!487 = !DILocation(line: 367, column: 23, scope: !479, inlinedAt: !180)
!488 = !DILocation(line: 367, column: 13, scope: !479, inlinedAt: !180)
!489 = !DILocation(line: 341, column: 9, scope: !460, inlinedAt: !180)
!490 = !DILocation(line: 0, scope: !461, inlinedAt: !180)
!491 = !DILocation(line: 0, scope: !178, inlinedAt: !180)
!492 = !DILocation(line: 0, scope: !463, inlinedAt: !180)
!493 = !DILocation(line: 0, scope: !462, inlinedAt: !180)
!494 = !DILocation(line: 370, column: 12, scope: !460, inlinedAt: !180)
!495 = !DILocation(line: 376, column: 31, scope: !496, inlinedAt: !180)
!496 = distinct !DILexicalBlock(scope: !460, file: !72, line: 375, column: 9)
!497 = !DILocation(line: 375, column: 26, scope: !460, inlinedAt: !180)
!498 = !DILocation(line: 378, column: 22, scope: !499, inlinedAt: !180)
!499 = distinct !DILexicalBlock(scope: !500, file: !72, line: 377, column: 9)
!500 = distinct !DILexicalBlock(scope: !496, file: !72, line: 376, column: 9)
!501 = !DILocation(line: 380, column: 31, scope: !502, inlinedAt: !180)
!502 = distinct !DILexicalBlock(scope: !503, file: !72, line: 379, column: 9)
!503 = distinct !DILexicalBlock(scope: !499, file: !72, line: 378, column: 9)
!504 = !DILocation(line: 380, column: 53, scope: !502, inlinedAt: !180)
!505 = !DILocation(line: 380, column: 30, scope: !502, inlinedAt: !180)
!506 = !DILocation(line: 1011, column: 9, scope: !239, inlinedAt: !507)
!507 = distinct !DILocation(line: 380, column: 70, scope: !502, inlinedAt: !180)
!508 = !DILocation(line: 380, column: 21, scope: !502, inlinedAt: !180)
!509 = !DILocation(line: 381, column: 32, scope: !510, inlinedAt: !180)
!510 = distinct !DILexicalBlock(scope: !502, file: !72, line: 380, column: 9)
!511 = !DILocation(line: 381, column: 54, scope: !510, inlinedAt: !180)
!512 = !DILocation(line: 381, column: 31, scope: !510, inlinedAt: !180)
!513 = !DILocation(line: 381, column: 22, scope: !510, inlinedAt: !180)
!514 = !DILocation(line: 2040, column: 9, scope: !515, inlinedAt: !517)
!515 = distinct !DISubprogram(name: "sqrt", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core3f644math4sqrt", scope: !516, file: !240, line: 2039, type: !14, scopeLine: 2039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!516 = !DINamespace(name: "math", scope: !242)
!517 = distinct !DILocation(line: 385, column: 9, scope: !518, inlinedAt: !520)
!518 = !DILexicalBlockFile(scope: !519, file: !223, discriminator: 2)
!519 = distinct !DISubprogram(name: "sqrt", linkageName: "_RNvMNtCsh8eZTKRCwoO_3std3f64d4sqrt", scope: !224, file: !223, line: 384, type: !14, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!520 = distinct !DILocation(line: 383, column: 27, scope: !521, inlinedAt: !180)
!521 = distinct !DILexicalBlock(scope: !522, file: !72, line: 382, column: 9)
!522 = distinct !DILexicalBlock(scope: !510, file: !72, line: 381, column: 9)
!523 = !DILocation(line: 67, column: 24, scope: !524, inlinedAt: !528)
!524 = distinct !DISubprogram(name: "ziggurat<rand::rngs::thread::ThreadRng, fn(f64) -> f64, fn(&mut rand::rngs::thread::ThreadRng, f64) -> f64>", linkageName: "_RINvNtCshxxEFTT9rch_10rand_distr5utils8zigguratNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNvNvXs_NtB4_6normalNtB1B_14StandardNormalINtNtNtBP_5distr12distribution12DistributiondE6sample3pdfINvB1w_9zero_caseBJ_EECskAlUH1kY1DR_10polars_ooc", scope: !526, file: !525, line: 50, type: !14, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!525 = !DIFile(filename: "src/utils.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_distr-0.6.0", checksumkind: CSK_MD5, checksum: "1d4852b4509c79b64662ab07f2527171")
!526 = !DINamespace(name: "utils", scope: !527)
!527 = !DINamespace(name: "rand_distr", scope: null)
!528 = distinct !DILocation(line: 92, column: 9, scope: !529, inlinedAt: !533)
!529 = distinct !DISubprogram(name: "sample<rand::rngs::thread::ThreadRng>", linkageName: "_RINvXs_NtCshxxEFTT9rch_10rand_distr6normalNtB5_14StandardNormalINtNtNtCsci2cbTAlhZn_4rand5distr12distribution12DistributiondE6sampleNtNtNtB16_4rngs6thread9ThreadRngECskAlUH1kY1DR_10polars_ooc", scope: !531, file: !530, line: 61, type: !14, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!530 = !DIFile(filename: "src/normal.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/rand_distr-0.6.0", checksumkind: CSK_MD5, checksum: "d9f0e7c876af720806df16db8ebee1b9")
!531 = !DINamespace(name: "{impl#1}", scope: !532)
!532 = !DINamespace(name: "normal", scope: !527)
!533 = distinct !DILocation(line: 386, column: 54, scope: !534, inlinedAt: !180)
!534 = distinct !DILexicalBlock(scope: !521, file: !72, line: 383, column: 9)
!535 = !{!536, !176}
!536 = distinct !{!536, !537, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng12try_next_u64: argument 0"}
!537 = distinct !{!537, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng12try_next_u64"}
!538 = !DILocation(line: 2447, column: 9, scope: !328, inlinedAt: !539)
!539 = distinct !DILocation(line: 227, column: 43, scope: !330, inlinedAt: !540)
!540 = distinct !DILocation(line: 78, column: 20, scope: !336, inlinedAt: !541)
!541 = distinct !DILocation(line: 67, column: 24, scope: !524, inlinedAt: !528)
!542 = !DILocation(line: 175, column: 9, scope: !349, inlinedAt: !543)
!543 = distinct !DILocation(line: 249, column: 26, scope: !354, inlinedAt: !544)
!544 = distinct !DILocation(line: 228, column: 16, scope: !356, inlinedAt: !540)
!545 = !{!546}
!546 = distinct !{!546, !547, !"_RNvMs2_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32CskAlUH1kY1DR_10polars_ooc: argument 0"}
!547 = distinct !{!547, !"_RNvMs2_NtCs53V80GKKPEw_9rand_core5blockINtB5_8BlockRngNtNtNtCsci2cbTAlhZn_4rand4rngs6thread13ReseedingCoreE17next_u64_from_u32CskAlUH1kY1DR_10polars_ooc"}
!548 = !{!549, !172}
!549 = distinct !{!549, !550, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng12try_next_u64: argument 0"}
!550 = distinct !{!550, !"_RNvXs3_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB5_9ThreadRngNtCs53V80GKKPEw_9rand_core6TryRng12try_next_u64"}
!551 = !DILocation(line: 252, column: 12, scope: !364, inlinedAt: !544)
!552 = !DILocation(line: 257, column: 18, scope: !364, inlinedAt: !544)
!553 = !DILocation(line: 258, column: 13, scope: !364, inlinedAt: !544)
!554 = !DILocation(line: 89, column: 24, scope: !370, inlinedAt: !555)
!555 = distinct !DILocation(line: 574, column: 15, scope: !376, inlinedAt: !556)
!556 = distinct !DILocation(line: 19, column: 15, scope: !380, inlinedAt: !557)
!557 = distinct !DILocation(line: 390, column: 9, scope: !383, inlinedAt: !558)
!558 = distinct !DILocation(line: 280, column: 37, scope: !388, inlinedAt: !559)
!559 = distinct !DILocation(line: 53, column: 23, scope: !393, inlinedAt: !560)
!560 = distinct !DILocation(line: 258, column: 23, scope: !364, inlinedAt: !544)
!561 = !DILocation(line: 70, column: 20, scope: !397, inlinedAt: !562)
!562 = distinct !DILocation(line: 280, column: 9, scope: !388, inlinedAt: !559)
!563 = !{!564, !546}
!564 = distinct !{!564, !565, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate: argument 0"}
!565 = distinct !{!565, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate"}
!566 = !{!567, !549, !172}
!567 = distinct !{!567, !565, !"_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate: argument 1"}
!568 = !DILocation(line: 53, column: 12, scope: !393, inlinedAt: !560)
!569 = !DILocation(line: 54, column: 18, scope: !393, inlinedAt: !560)
!570 = !{!571}
!571 = distinct !{!571, !572, !"_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCskAlUH1kY1DR_10polars_ooc: argument 0"}
!572 = distinct !{!572, !"_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCskAlUH1kY1DR_10polars_ooc"}
!573 = !DILocation(line: 56, column: 20, scope: !393, inlinedAt: !560)
!574 = !{!575}
!575 = distinct !{!575, !572, !"_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCskAlUH1kY1DR_10polars_ooc: argument 1"}
!576 = !DILocation(line: 3904, column: 24, scope: !141, inlinedAt: !577)
!577 = distinct !DILocation(line: 2870, column: 26, scope: !578, inlinedAt: !579)
!578 = distinct !DISubprogram(name: "load", linkageName: "_RNvMsO_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomichE4load", scope: !84, file: !79, line: 2868, type: !14, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!579 = distinct !DILocation(line: 189, column: 17, scope: !580, inlinedAt: !585)
!580 = !DILexicalBlockFile(scope: !581, file: !389, discriminator: 0)
!581 = distinct !DISubprogram(name: "get", linkageName: "_RNvMNtCsejN9i34LGCw_8chacha2010avx2_cpuidNtB2_9InitToken3get", scope: !583, file: !582, line: 60, type: !14, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!582 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/cpufeatures-0.3.0", checksumkind: CSK_MD5, checksum: "05d2110538c27294706810eba0cc404a")
!583 = !DINamespace(name: "InitToken", scope: !584)
!584 = !DINamespace(name: "avx2_cpuid", scope: !391)
!585 = distinct !DILocation(line: 70, column: 39, scope: !586, inlinedAt: !591)
!586 = distinct !DILexicalBlock(scope: !588, file: !587, line: 68, column: 25)
!587 = !DIFile(filename: "src/rng.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chacha20-0.10.0", checksumkind: CSK_MD5, checksum: "172f50a980a26bc0bb1ac685872caf8f")
!588 = distinct !DISubprogram(name: "generate<chacha20::R12, chacha20::variants::Legacy>", linkageName: "_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCskAlUH1kY1DR_10polars_ooc", scope: !589, file: !587, line: 49, type: !14, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!589 = !DINamespace(name: "{impl#1}", scope: !590)
!590 = !DINamespace(name: "rng", scope: !391)
!591 = distinct !DILocation(line: 56, column: 20, scope: !393, inlinedAt: !560)
!592 = !{!571, !575, !549, !172, !176}
!593 = !DILocation(line: 70, column: 28, scope: !586, inlinedAt: !591)
!594 = !DILocation(line: 72, column: 33, scope: !586, inlinedAt: !591)
!595 = !{!571, !575}
!596 = !DILocation(line: 259, column: 18, scope: !364, inlinedAt: !544)
!597 = !{!598}
!598 = distinct !{!598, !599, !"_RINvNtNtCsejN9i34LGCw_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECskAlUH1kY1DR_10polars_ooc: argument 0"}
!599 = distinct !{!599, !"_RINvNtNtCsejN9i34LGCw_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECskAlUH1kY1DR_10polars_ooc"}
!600 = !DILocation(line: 76, column: 33, scope: !586, inlinedAt: !591)
!601 = !{!549}
!602 = !{!603}
!603 = distinct !{!603, !599, !"_RINvNtNtCsejN9i34LGCw_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECskAlUH1kY1DR_10polars_ooc: argument 1"}
!604 = !DILocation(line: 552, column: 14, scope: !605, inlinedAt: !606)
!605 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECskAlUH1kY1DR_10polars_ooc", scope: !26, file: !25, line: 531, type: !14, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!606 = distinct !DILocation(line: 1335, column: 5, scope: !607, inlinedAt: !613)
!607 = distinct !DILexicalBlock(scope: !609, file: !608, line: 1334, column: 5)
!608 = !DIFile(filename: "library/core/src/../../stdarch/crates/core_arch/src/x86/sse2.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "6b1864d45cac802b34c17e3c3e5be790")
!609 = distinct !DISubprogram(name: "_mm_loadu_si128", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128", scope: !610, file: !608, line: 1333, type: !14, scopeLine: 1333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!610 = !DINamespace(name: "sse2", scope: !611)
!611 = !DINamespace(name: "x86", scope: !612)
!612 = !DINamespace(name: "core_arch", scope: !27)
!613 = distinct !DILocation(line: 122, column: 13, scope: !614, inlinedAt: !619)
!614 = distinct !DILexicalBlock(scope: !616, file: !615, line: 119, column: 5)
!615 = !DIFile(filename: "src/backends/sse2.rs", directory: "/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/chacha20-0.10.0", checksumkind: CSK_MD5, checksum: "f2dfbba0396caca2ca32643b638fbd86")
!616 = distinct !DISubprogram(name: "rng_inner<chacha20::R12, chacha20::variants::Legacy>", linkageName: "_RINvNtNtCsejN9i34LGCw_8chacha208backends4sse29rng_innerNtB6_3R12NtNtB6_8variants6LegacyECskAlUH1kY1DR_10polars_ooc", scope: !617, file: !615, line: 114, type: !14, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!617 = !DINamespace(name: "sse2", scope: !618)
!618 = !DINamespace(name: "backends", scope: !391)
!619 = distinct !DILocation(line: 76, column: 33, scope: !586, inlinedAt: !591)
!620 = !{!598, !571}
!621 = !{!603, !575, !549, !172}
!622 = !DILocation(line: 863, column: 18, scope: !623, inlinedAt: !627)
!623 = distinct !DISubprogram(name: "add<core::core_arch::x86::__m128i>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPNtNtNtB6_9core_arch3x867___m128i3addCskAlUH1kY1DR_10polars_ooc", scope: !625, file: !624, line: 829, type: !14, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!624 = !DIFile(filename: "library/core/src/ptr/const_ptr.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "48638a38fe414ca30cde797e4a40b3a9")
!625 = !DINamespace(name: "{impl#0}", scope: !626)
!626 = !DINamespace(name: "const_ptr", scope: !26)
!627 = distinct !DILocation(line: 123, column: 39, scope: !614, inlinedAt: !619)
!628 = !DILocation(line: 552, column: 14, scope: !605, inlinedAt: !629)
!629 = distinct !DILocation(line: 1335, column: 5, scope: !630, inlinedAt: !631)
!630 = distinct !DILexicalBlock(scope: !609, file: !608, line: 1334, column: 5)
!631 = distinct !DILocation(line: 123, column: 13, scope: !614, inlinedAt: !619)
!632 = !DILocation(line: 863, column: 18, scope: !623, inlinedAt: !633)
!633 = distinct !DILocation(line: 124, column: 39, scope: !614, inlinedAt: !619)
!634 = !DILocation(line: 552, column: 14, scope: !605, inlinedAt: !635)
!635 = distinct !DILocation(line: 1335, column: 5, scope: !636, inlinedAt: !637)
!636 = distinct !DILexicalBlock(scope: !609, file: !608, line: 1334, column: 5)
!637 = distinct !DILocation(line: 124, column: 13, scope: !614, inlinedAt: !619)
!638 = !DILocation(line: 552, column: 14, scope: !605, inlinedAt: !639)
!639 = distinct !DILocation(line: 1335, column: 5, scope: !640, inlinedAt: !641)
!640 = distinct !DILexicalBlock(scope: !609, file: !608, line: 1334, column: 5)
!641 = distinct !DILocation(line: 125, column: 13, scope: !614, inlinedAt: !619)
!642 = !DILocation(line: 117, column: 24, scope: !643, inlinedAt: !644)
!643 = distinct !DISubprogram(name: "_mm_add_epi64", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse213__mm_add_epi64", scope: !610, file: !608, line: 116, type: !14, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!644 = distinct !DILocation(line: 162, column: 18, scope: !645, inlinedAt: !649)
!645 = distinct !DILexicalBlock(scope: !646, file: !615, line: 159, column: 5)
!646 = distinct !DILexicalBlock(scope: !647, file: !615, line: 159, column: 5)
!647 = distinct !DILexicalBlock(scope: !648, file: !615, line: 158, column: 5)
!648 = distinct !DISubprogram(name: "rounds<chacha20::R12, chacha20::variants::Legacy>", linkageName: "_RINvNtNtCsejN9i34LGCw_8chacha208backends4sse26roundsNtB6_3R12NtNtB6_8variants6LegacyECskAlUH1kY1DR_10polars_ooc", scope: !617, file: !615, line: 157, type: !14, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!649 = distinct !DILocation(line: 142, column: 23, scope: !650, inlinedAt: !652)
!650 = distinct !DISubprogram(name: "gen_ks_blocks<chacha20::R12, chacha20::variants::Legacy>", linkageName: "_RNvMNtNtCsejN9i34LGCw_8chacha208backends4sse2INtB2_7BackendNtB6_3R12NtNtB6_8variants6LegacyE13gen_ks_blocksCskAlUH1kY1DR_10polars_ooc", scope: !651, file: !615, line: 139, type: !14, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!651 = !DINamespace(name: "Backend", scope: !617)
!652 = distinct !DILocation(line: 130, column: 13, scope: !653, inlinedAt: !619)
!653 = distinct !DILexicalBlock(scope: !614, file: !615, line: 120, column: 5)
!654 = !DILocation(line: 781, column: 12, scope: !655, inlinedAt: !660)
!655 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCskAlUH1kY1DR_10polars_ooc", scope: !657, file: !656, line: 780, type: !14, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!656 = !DIFile(filename: "library/core/src/iter/range.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7915aa40df45185604e056d6562b6895")
!657 = !DINamespace(name: "{impl#5}", scope: !658)
!658 = !DINamespace(name: "range", scope: !659)
!659 = !DINamespace(name: "iter", scope: !27)
!660 = distinct !DILocation(line: 866, column: 14, scope: !661, inlinedAt: !663)
!661 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCskAlUH1kY1DR_10polars_ooc", scope: !662, file: !656, line: 865, type: !14, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!662 = !DINamespace(name: "{impl#6}", scope: !658)
!663 = distinct !DILocation(line: 167, column: 14, scope: !664, inlinedAt: !649)
!664 = distinct !DILexicalBlock(scope: !647, file: !615, line: 167, column: 5)
!665 = !DILocation(line: 898, column: 17, scope: !666, inlinedAt: !669)
!666 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !668, file: !667, line: 886, type: !14, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!667 = !DIFile(filename: "library/core/src/num/uint_macros.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7da08fe6de751b90c62a398311fb672e")
!668 = !DINamespace(name: "{impl#11}", scope: !201)
!669 = distinct !DILocation(line: 214, column: 28, scope: !670, inlinedAt: !672)
!670 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !671, file: !656, line: 212, type: !14, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!671 = !DINamespace(name: "{impl#43}", scope: !658)
!672 = distinct !DILocation(line: 784, column: 35, scope: !673, inlinedAt: !660)
!673 = distinct !DILexicalBlock(scope: !655, file: !656, line: 782, column: 13)
!674 = !DILocation(line: 105, column: 24, scope: !675, inlinedAt: !676)
!675 = distinct !DISubprogram(name: "_mm_add_epi32", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse213__mm_add_epi32", scope: !610, file: !608, line: 104, type: !14, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!676 = distinct !DILocation(line: 274, column: 14, scope: !677, inlinedAt: !680)
!677 = distinct !DILexicalBlock(scope: !678, file: !615, line: 272, column: 5)
!678 = distinct !DILexicalBlock(scope: !679, file: !615, line: 272, column: 5)
!679 = distinct !DISubprogram(name: "add_xor_rot", linkageName: "_RNvNtNtCsejN9i34LGCw_8chacha208backends4sse211add_xor_rot", scope: !617, file: !615, line: 271, type: !14, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!680 = distinct !DILocation(line: 189, column: 5, scope: !681, inlinedAt: !682)
!681 = distinct !DISubprogram(name: "double_quarter_round", linkageName: "_RNvNtNtCsejN9i34LGCw_8chacha208backends4sse220double_quarter_round", scope: !617, file: !615, line: 188, type: !14, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!682 = distinct !DILocation(line: 168, column: 9, scope: !664, inlinedAt: !649)
!683 = !DILocation(line: 599, column: 34, scope: !684, inlinedAt: !685)
!684 = distinct !DISubprogram(name: "_mm_slli_epi32<16>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse214__mm_slli_epi32Kl10_ECskAlUH1kY1DR_10polars_ooc", scope: !610, file: !608, line: 593, type: !14, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!685 = distinct !DILocation(line: 276, column: 28, scope: !677, inlinedAt: !680)
!686 = !DILocation(line: 902, column: 14, scope: !687, inlinedAt: !688)
!687 = distinct !DISubprogram(name: "_mm_xor_si128", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse213__mm_xor_si128", scope: !610, file: !608, line: 901, type: !14, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!688 = distinct !DILocation(line: 276, column: 14, scope: !677, inlinedAt: !680)
!689 = !DILocation(line: 105, column: 24, scope: !675, inlinedAt: !690)
!690 = distinct !DILocation(line: 279, column: 14, scope: !677, inlinedAt: !680)
!691 = !DILocation(line: 599, column: 34, scope: !692, inlinedAt: !693)
!692 = distinct !DISubprogram(name: "_mm_slli_epi32<12>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse214__mm_slli_epi32Klc_ECskAlUH1kY1DR_10polars_ooc", scope: !610, file: !608, line: 593, type: !14, scopeLine: 593, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!693 = distinct !DILocation(line: 281, column: 28, scope: !677, inlinedAt: !680)
!694 = !DILocation(line: 902, column: 14, scope: !687, inlinedAt: !695)
!695 = distinct !DILocation(line: 281, column: 14, scope: !677, inlinedAt: !680)
!696 = !DILocation(line: 105, column: 24, scope: !675, inlinedAt: !697)
!697 = distinct !DILocation(line: 284, column: 14, scope: !677, inlinedAt: !680)
!698 = !DILocation(line: 902, column: 14, scope: !687, inlinedAt: !699)
!699 = distinct !DILocation(line: 285, column: 14, scope: !677, inlinedAt: !680)
!700 = !DILocation(line: 902, column: 14, scope: !687, inlinedAt: !701)
!701 = distinct !DILocation(line: 286, column: 14, scope: !677, inlinedAt: !680)
!702 = !DILocation(line: 105, column: 24, scope: !675, inlinedAt: !703)
!703 = distinct !DILocation(line: 289, column: 14, scope: !677, inlinedAt: !680)
!704 = !DILocation(line: 902, column: 14, scope: !687, inlinedAt: !705)
!705 = distinct !DILocation(line: 290, column: 14, scope: !677, inlinedAt: !680)
!706 = !DILocation(line: 902, column: 14, scope: !687, inlinedAt: !707)
!707 = distinct !DILocation(line: 291, column: 14, scope: !677, inlinedAt: !680)
!708 = !DILocation(line: 157, column: 9, scope: !709, inlinedAt: !713)
!709 = !DILexicalBlockFile(scope: !711, file: !710, discriminator: 0)
!710 = !DIFile(filename: "library/core/src/../../stdarch/crates/core_arch/src/macros.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "6015d9bc4d27e0919fb573fe8215d832")
!711 = distinct !DILexicalBlock(scope: !712, file: !608, line: 1631, column: 9)
!712 = distinct !DISubprogram(name: "_mm_shuffle_epi32<57>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse217__mm_shuffle_epi32Kl39_ECskAlUH1kY1DR_10polars_ooc", scope: !610, file: !608, line: 1628, type: !14, scopeLine: 1628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!713 = distinct !DILocation(line: 235, column: 14, scope: !714, inlinedAt: !717)
!714 = distinct !DILexicalBlock(scope: !715, file: !615, line: 233, column: 5)
!715 = distinct !DILexicalBlock(scope: !716, file: !615, line: 233, column: 5)
!716 = distinct !DISubprogram(name: "rows_to_cols", linkageName: "_RNvNtNtCsejN9i34LGCw_8chacha208backends4sse212rows_to_cols", scope: !617, file: !615, line: 232, type: !14, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!717 = distinct !DILocation(line: 190, column: 5, scope: !681, inlinedAt: !682)
!718 = !DILocation(line: 157, column: 9, scope: !719, inlinedAt: !722)
!719 = !DILexicalBlockFile(scope: !720, file: !710, discriminator: 0)
!720 = distinct !DILexicalBlock(scope: !721, file: !608, line: 1631, column: 9)
!721 = distinct !DISubprogram(name: "_mm_shuffle_epi32<78>", linkageName: "_RINvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse217__mm_shuffle_epi32Kl4e_ECskAlUH1kY1DR_10polars_ooc", scope: !610, file: !608, line: 1628, type: !14, scopeLine: 1628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5, templateParams: !15)
!722 = distinct !DILocation(line: 236, column: 14, scope: !714, inlinedAt: !717)
end_hunk_1
