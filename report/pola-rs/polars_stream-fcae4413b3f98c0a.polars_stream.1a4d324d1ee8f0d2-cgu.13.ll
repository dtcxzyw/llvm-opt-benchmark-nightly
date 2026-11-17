Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.13?download=true
inline.NumInlined: 5868
inline.NumDeleted: 2281
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvMNtNtCs2g09Ig8GZd6_13polars_stream5nodes8io_sinksNtB3_10IOSinkNode3newNtNtB3_6config16IOSinkNodeConfigEB7_:bb.a
; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RINvMs0_NtNtCskAlUH1kY1DR_10polars_ooc13spill_context5statsNtB6_22SpillContextStatistics12sample_scoreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngECs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull align 16 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !3802 !guid !4347 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4428
  call void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexNtNtNtCskAlUH1kY1DR_10polars_ooc13spill_context5stats10StatisticsE8try_lockCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 16 %0), !dbg !4429
  %i.d = load i64, ptr %i.c, align 8, !dbg !4428, !range !2331, !noundef !2249
  %i.e = trunc nuw i64 %i.d to i1, !dbg !4430
  br i1 %i.e, label %bb.by, label %bb.b, !dbg !4430

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4431
  %i.g = load ptr, ptr %i.f, align 8, !dbg !4431, !nonnull !2249, !align !2347, !noundef !2249 ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4431
  %i.i = load i8, ptr %i.h, align 8, !dbg !4431, !range !2348, !noundef !2249 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !4432 ; 2 uses
  %.val = load ptr, ptr %1, align 8, !dbg !4433   ; 26 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4350), !dbg !4433
  %i.k = invoke { i64, i32 } @_RNvMNtCsh8eZTKRCwoO_3std4timeNtB2_7Instant3now()
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4434 ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.l = extractvalue { i64, i32 } %i.k, 0, !dbg !4434
  %i.m = extractvalue { i64, i32 } %i.k, 1, !dbg !4434
  invoke void @_RNvMs1_NtNtCskAlUH1kY1DR_10polars_ooc13spill_context5statsNtB5_10Statistics9step_time(ptr noalias noundef nonnull align 16 dereferenceable(224) %i.j, i64 noundef %i.l, i32 noundef %i.m)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4435

.noexc8:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 136, !dbg !4436
  %i.o = load double, ptr %i.n, align 8, !dbg !4436, !alias.scope !4350, !noundef !2249 ; 2 uses
  %i.p = fcmp ult double %i.o, 1.100000e+00, !dbg !4436
  br i1 %i.p, label %bb.an, label %bb.c, !dbg !4436

bb.c:                                             ; preds = %.noexc8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 144, !dbg !4437
  %i.r = load double, ptr %i.q, align 16, !dbg !4437, !alias.scope !4350, !noundef !2249 ; 2 uses
  %i.s = fsub double %i.o, %i.r, !dbg !4438
  %i.t = insertelement <2 x double> poison, double %i.s, i64 0, !dbg !4439
  %i.u = insertelement <2 x double> %i.t, double %i.r, i64 1, !dbg !4439
  %i.v = tail call nsz <2 x double> @llvm.maximumnum.v2f64(<2 x double> %i.u, <2 x double> zeroinitializer), !dbg !4439
  %i.w = fadd <2 x double> %i.v, splat (double 1.000000e+00), !dbg !4440 ; 4 uses
  %i.x = extractelement <2 x double> %i.w, i64 0, !dbg !4441 ; 4 uses
  %i.y = extractelement <2 x double> %i.w, i64 1, !dbg !4441 ; 4 uses
  %i.z = fcmp uge double %i.y, %i.x, !dbg !4441   ; 6 uses
  %i.aa = insertelement <2 x i1> poison, i1 %i.z, i64 0, !dbg !4442
  %i.ab = shufflevector <2 x i1> %i.aa, <2 x i1> poison, <2 x i32> zeroinitializer, !dbg !4442
  %i.ac = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !4442
  %i.ad = select <2 x i1> %i.ab, <2 x double> %i.w, <2 x double> %i.ac, !dbg !4442 ; 5 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0, !dbg !4443 ; 9 uses
  %i.af = fcmp ogt double %i.ae, 1.000000e+00, !dbg !4443
  br i1 %i.af, label %bb.e, label %bb.d, !dbg !4444

bb.d:                                             ; preds = %bb.c
  %i.ag = xor i1 %i.z, true, !dbg !4445
  %i.ah = fadd double %i.y, %i.x, !dbg !4446      ; 2 uses
  %i.ai = extractelement <2 x double> %i.ad, i64 1, !dbg !4447 ; 3 uses
  %i.aj = fadd double %i.ai, 1.000000e+00, !dbg !4447
  %i.ak = fsub double %i.aj, %i.ae, !dbg !4448    ; 2 uses
  %i.al = fmul nnan double %i.ae, f0x3FA5555555555555, !dbg !4449
  %i.am = fadd nnan double %i.al, f0x3F8C71C71C71C71C, !dbg !4450
  %i.an = fmul double %i.ak, %i.am, !dbg !4451
  %i.ao = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 poison, i32 0>, !dbg !4452
  %i.ap = insertelement <2 x double> %i.ao, double %i.ak, i64 0, !dbg !4452
  %i.aq = fdiv <2 x double> <double 2.500000e-01, double 1.000000e+00>, %i.ap, !dbg !4452 ; 2 uses
  %i.ar = fadd <2 x double> %i.aq, <double 5.000000e-01, double -0.000000e+00>, !dbg !4453
  %i.as = fmul <2 x double> %i.ad, %i.ar, !dbg !4454 ; 2 uses
  %i.at = extractelement <2 x double> %i.as, i64 1, !dbg !4455
  %i.au = fadd double %i.at, f0xBFE8E38E38E38E39, !dbg !4455
  %i.av = fdiv double %i.an, %i.au, !dbg !4456
  %i.aw = extractelement <2 x double> %i.as, i64 0, !dbg !4457
  %i.ax = fadd double %i.aw, 2.500000e-01, !dbg !4457
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 9 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 268 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val, i64 272 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 320 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 20 ; 2 uses
  %.pre28.i.i = load i32, ptr %i.ay, align 4, !dbg !4458, !alias.scope !4360, !noalias !4361
  %i.bd = extractelement <2 x double> %i.aq, i64 1, !dbg !4459 ; 2 uses
  br label %.backedge.i.i, !dbg !4460

bb.e:                                             ; preds = %bb.c
  %i.be = fadd double %i.y, %i.x, !dbg !4461      ; 4 uses
  %i.bf = fadd double %i.be, -2.000000e+00, !dbg !4462
  %i.bg = fmul nnan double %i.ae, 2.000000e+00, !dbg !4463
  %i.bh = extractelement <2 x double> %i.ad, i64 1, !dbg !4464 ; 5 uses
  %i.bi = fmul double %i.bh, %i.bg, !dbg !4464
  %i.bj = fsub double %i.bi, %i.be, !dbg !4465
  %i.bk = fdiv double %i.bf, %i.bj, !dbg !4466
  %i.bl = tail call noundef double @llvm.sqrt.f64(double %i.bk), !dbg !4467 ; 2 uses
  %i.bm = fdiv double 1.000000e+00, %i.bl, !dbg !4468
  %i.bn = fadd double %i.ae, %i.bm, !dbg !4469
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.val, i64 268 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 272 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 320 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 20 ; 2 uses
  %.pre.i.i = load i32, ptr %i.bo, align 4, !dbg !4470, !alias.scope !4368, !noalias !4369
  br label %bb.f, !dbg !4471

bb.f:                                             ; preds = %bb.p, %bb.e
  %i.bt = phi i32 [ %.sroa.0.0.i.i.i.i.i.i30.i.i, %bb.p ], [ %.pre.i.i, %bb.e ], !dbg !4470 ; 4 uses
  %i.bu = icmp ult i32 %i.bt, 63, !dbg !4472
  br i1 %i.bu, label %bb.j, label %bb.g, !dbg !4472

bb.g:                                             ; preds = %bb.f
  %i.bv = load i32, ptr %i.bp, align 4, !dbg !4473, !alias.scope !4368, !noalias !4369, !noundef !2249
  %i.bw = load i64, ptr %i.br, align 4, !dbg !4474, !alias.scope !4370, !noalias !4369
  %i.bx = icmp ugt i64 %i.bw, 1023, !dbg !4475
  br i1 %i.bx, label %bb.h, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i, !dbg !4475, !prof !2259

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.bq) #43
          to label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4476

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  invoke void @_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.bq, ptr noalias noundef nonnull align 4 dereferenceable(320) %i.bo)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4477

.noexc10:                                         ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i
  %i.by = load i32, ptr %i.bo, align 4, !dbg !4478, !alias.scope !4368, !noalias !4369, !noundef !2249 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.bt, 63, !dbg !4479
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit.i.i, label %bb.i, !dbg !4479

bb.i:                                             ; preds = %.noexc10
  %i.bz = load i32, ptr %i.bs, align 4, !dbg !4480, !alias.scope !4368, !noalias !4369, !noundef !2249
  br label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !4481

bb.j:                                             ; preds = %bb.f
  %i.ca = zext nneg i32 %i.bt to i64, !dbg !4482
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ca, !dbg !4483 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !dbg !4483, !alias.scope !4368, !noalias !4369, !noundef !2249
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4, !dbg !4484
  %i.ce = load i32, ptr %i.cd, align 4, !dbg !4484, !alias.scope !4368, !noalias !4369, !noundef !2249
  %i.cf = add nuw nsw i32 %i.bt, 2, !dbg !4485
  br label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit.i.i, !dbg !4486

_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit.i.i: ; preds = %bb.j, %bb.i, %.noexc10
  %.sroa.03.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ce, %bb.j ], [ %i.bz, %bb.i ], [ %i.by, %.noexc10 ], !dbg !4487
  %.sroa.02.0.i.i.i.i.i.i.i.i = phi i32 [ %i.cc, %bb.j ], [ %i.by, %bb.i ], [ %i.bv, %.noexc10 ], !dbg !4487
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i32 [ %i.cf, %bb.j ], [ 2, %bb.i ], [ 1, %.noexc10 ], !dbg !4487 ; 5 uses
  store i32 %.sroa.0.0.i.i.i.i.i.i.i.i, ptr %i.bo, align 4, !dbg !4488, !alias.scope !4368, !noalias !4369
  %i.cg = zext i32 %.sroa.03.0.i.i.i.i.i.i.i.i to i64, !dbg !4489
  %i.ch = shl nuw i64 %i.cg, 32, !dbg !4490
  %i.ci = zext i32 %.sroa.02.0.i.i.i.i.i.i.i.i to i64, !dbg !4491
  %i.cj = or disjoint i64 %i.ch, %i.ci, !dbg !4490
  %i.ck = lshr i64 %i.cj, 12, !dbg !4492
  %i.cl = or disjoint i64 %i.ck, 4607182418800017408, !dbg !4493
  %i.cm = bitcast i64 %i.cl to double, !dbg !4494
  %i.cn = fadd double %i.cm, f0xBFEFFFFFFFFFFFFF, !dbg !4495 ; 4 uses
  %i.co = icmp samesign ult i32 %.sroa.0.0.i.i.i.i.i.i.i.i, 63, !dbg !4496
  br i1 %i.co, label %bb.n, label %bb.k, !dbg !4496

bb.k:                                             ; preds = %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.cp = load i32, ptr %i.bp, align 4, !dbg !4497, !alias.scope !4371, !noalias !4372, !noundef !2249
  %i.cq = load i64, ptr %i.br, align 4, !dbg !4498, !alias.scope !4373, !noalias !4372
  %i.cr = icmp ugt i64 %i.cq, 1023, !dbg !4499
  br i1 %i.cr, label %bb.l, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i26.i.i, !dbg !4499, !prof !2259

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.bq) #43
          to label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i26.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4500

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i26.i.i: ; preds = %bb.l, %bb.k
  invoke void @_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.bq, ptr noalias noundef nonnull align 4 dereferenceable(320) %i.bo)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4501

.noexc12:                                         ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i26.i.i
  %i.cs = load i32, ptr %i.bo, align 4, !dbg !4502, !alias.scope !4371, !noalias !4372, !noundef !2249 ; 2 uses
  %.not.i.i.i.i.i.i27.i.i = icmp eq i32 %.sroa.0.0.i.i.i.i.i.i.i.i, 63, !dbg !4503
  br i1 %.not.i.i.i.i.i.i27.i.i, label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit31.i.i, label %bb.m, !dbg !4503

bb.m:                                             ; preds = %.noexc12
  %i.ct = load i32, ptr %i.bs, align 4, !dbg !4504, !alias.scope !4371, !noalias !4372, !noundef !2249
  br label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit31.i.i, !dbg !4505

bb.n:                                             ; preds = %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit.i.i
  %i.cu = zext nneg i32 %.sroa.0.0.i.i.i.i.i.i.i.i to i64, !dbg !4506
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.cu, !dbg !4507 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !dbg !4507, !alias.scope !4371, !noalias !4372, !noundef !2249
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 4, !dbg !4508
  %i.cy = load i32, ptr %i.cx, align 4, !dbg !4508, !alias.scope !4371, !noalias !4372, !noundef !2249
  %i.cz = add nuw nsw i32 %.sroa.0.0.i.i.i.i.i.i.i.i, 2, !dbg !4509
  br label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit31.i.i, !dbg !4510

_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit31.i.i: ; preds = %bb.n, %bb.m, %.noexc12
  %.sroa.03.0.i.i.i.i.i.i28.i.i = phi i32 [ %i.cy, %bb.n ], [ %i.ct, %bb.m ], [ %i.cs, %.noexc12 ], !dbg !4511
  %.sroa.02.0.i.i.i.i.i.i29.i.i = phi i32 [ %i.cw, %bb.n ], [ %i.cs, %bb.m ], [ %i.cp, %.noexc12 ], !dbg !4511
  %.sroa.0.0.i.i.i.i.i.i30.i.i = phi i32 [ %i.cz, %bb.n ], [ 2, %bb.m ], [ 1, %.noexc12 ], !dbg !4511 ; 5 uses
  store i32 %.sroa.0.0.i.i.i.i.i.i30.i.i, ptr %i.bo, align 4, !dbg !4512, !alias.scope !4371, !noalias !4372
  %i.da = zext i32 %.sroa.03.0.i.i.i.i.i.i28.i.i to i64, !dbg !4513
  %i.db = shl nuw i64 %i.da, 32, !dbg !4514
  %i.dc = zext i32 %.sroa.02.0.i.i.i.i.i.i29.i.i to i64, !dbg !4515
  %i.dd = or disjoint i64 %i.db, %i.dc, !dbg !4514
  %i.de = lshr i64 %i.dd, 12, !dbg !4516
  %i.df = or disjoint i64 %i.de, 4607182418800017408, !dbg !4517
  %i.dg = bitcast i64 %i.df to double, !dbg !4518
  %i.dh = fadd nnan ninf double %i.dg, f0xBFEFFFFFFFFFFFFF, !dbg !4519
  %i.di = fsub double 1.000000e+00, %i.cn, !dbg !4520
  %i.dj = fdiv double %i.cn, %i.di, !dbg !4521
  %i.dk = tail call noundef double @llvm.log.f64(double %i.dj), !dbg !4522
  %i.dl = fmul double %i.bl, %i.dk, !dbg !4523    ; 2 uses
  %i.dm = tail call noundef double @llvm.exp.f64(double %i.dl), !dbg !4524
  %i.dn = fmul double %i.ae, %i.dm, !dbg !4525    ; 5 uses
  %i.do = fmul nnan double %i.cn, %i.cn, !dbg !4526
  %i.dp = fmul double %i.do, %i.dh, !dbg !4527    ; 2 uses
  %i.dq = fmul double %i.bn, %i.dl, !dbg !4528
  %i.dr = fadd double %i.dq, f0xBFF62E42FEFA39EF, !dbg !4529 ; 2 uses
  %i.ds = fadd double %i.ae, %i.dr, !dbg !4530
  %i.dt = fsub double %i.ds, %i.dn, !dbg !4531    ; 2 uses
  %i.du = fadd double %i.dt, 1.000000e+00, !dbg !4532
  %i.dv = fadd double %i.du, f0x3FF9C041F7ED8D33, !dbg !4533
  %i.dw = fmul double %i.dp, 5.000000e+00, !dbg !4534
  %i.dx = fcmp ult double %i.dv, %i.dw, !dbg !4535
  br i1 %i.dx, label %bb.o, label %.loopexit.i.i, !dbg !4536

bb.o:                                             ; preds = %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit31.i.i
  %i.dy = tail call noundef double @llvm.log.f64(double %i.dp), !dbg !4537 ; 2 uses
  %i.dz = fcmp ult double %i.dt, %i.dy, !dbg !4538
  br i1 %i.dz, label %bb.p, label %.loopexit.i.i, !dbg !4539

bb.p:                                             ; preds = %bb.o
  %i.ea = fadd double %i.bh, %i.dn, !dbg !4540
  %i.eb = fdiv double %i.be, %i.ea, !dbg !4541
  %i.ec = tail call noundef double @llvm.log.f64(double %i.eb), !dbg !4542
  %i.ed = fmul double %i.be, %i.ec, !dbg !4543
  %i.ee = fadd double %i.dr, %i.ed, !dbg !4544
  %i.ef = fcmp olt double %i.ee, %i.dy, !dbg !4545
  br i1 %i.ef, label %bb.f, label %.loopexit.i.i, !dbg !4546

.loopexit.i.i:                                    ; preds = %bb.ab, %bb.p, %bb.o, %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit31.i.i
  %i.eg = phi i32 [ %.sroa.0.0.i.i.i.i.i.i30.i.i, %bb.p ], [ %.sroa.0.0.i.i.i.i.i.i30.i.i, %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit31.i.i ], [ %.sroa.0.0.i.i.i.i.i.i30.i.i, %bb.o ], [ %.sroa.0.0.i.i.i.i.i.i42.i.i, %bb.ab ] ; 2 uses
  %.sroa.21.020.i = phi double [ %i.bh, %bb.p ], [ %i.bh, %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit31.i.i ], [ %i.bh, %bb.o ], [ %i.ae, %bb.ab ] ; 2 uses
  %.sroa.24.017.i = phi i1 [ %i.z, %bb.p ], [ %i.z, %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit31.i.i ], [ %i.z, %bb.o ], [ %i.ag, %bb.ab ]
  %.sroa.0.018.i.i = phi double [ %i.dn, %bb.p ], [ %i.dn, %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit31.i.i ], [ %i.dn, %bb.o ], [ %i.gt, %bb.ab ], !dbg !4547 ; 2 uses
  br i1 %.sroa.24.017.i, label %bb.ad, label %bb.ac, !dbg !4548

.backedge.i.i:                                    ; preds = %.backedge.i.i.backedge, %bb.d
  %i.eh = phi i32 [ %.pre28.i.i, %bb.d ], [ %.sroa.0.0.i.i.i.i.i.i42.i.i, %.backedge.i.i.backedge ], !dbg !4458 ; 4 uses
  %i.ei = icmp ult i32 %i.eh, 63, !dbg !4549
  br i1 %i.ei, label %bb.t, label %bb.q, !dbg !4549

bb.q:                                             ; preds = %.backedge.i.i
  %i.ej = load i32, ptr %i.az, align 4, !dbg !4550, !alias.scope !4360, !noalias !4361, !noundef !2249
  %i.ek = load i64, ptr %i.bb, align 4, !dbg !4551, !alias.scope !4374, !noalias !4361
  %i.el = icmp ugt i64 %i.ek, 1023, !dbg !4552
  br i1 %i.el, label %bb.r, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i32.i.i, !dbg !4552, !prof !2259

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.ba) #43
          to label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i32.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4553

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i32.i.i: ; preds = %bb.r, %bb.q
  invoke void @_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.ba, ptr noalias noundef nonnull align 4 dereferenceable(320) %i.ay)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4554

.noexc14:                                         ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i32.i.i
  %i.em = load i32, ptr %i.ay, align 4, !dbg !4555, !alias.scope !4360, !noalias !4361, !noundef !2249 ; 2 uses
  %.not.i.i.i.i.i.i33.i.i = icmp eq i32 %i.eh, 63, !dbg !4556
  br i1 %.not.i.i.i.i.i.i33.i.i, label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit37.i.i, label %bb.s, !dbg !4556

bb.s:                                             ; preds = %.noexc14
  %i.en = load i32, ptr %i.bc, align 4, !dbg !4557, !alias.scope !4360, !noalias !4361, !noundef !2249
  br label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit37.i.i, !dbg !4558

bb.t:                                             ; preds = %.backedge.i.i
  %i.eo = zext nneg i32 %i.eh to i64, !dbg !4559
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.eo, !dbg !4560 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !dbg !4560, !alias.scope !4360, !noalias !4361, !noundef !2249
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 4, !dbg !4561
  %i.es = load i32, ptr %i.er, align 4, !dbg !4561, !alias.scope !4360, !noalias !4361, !noundef !2249
  %i.et = add nuw nsw i32 %i.eh, 2, !dbg !4562
  br label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit37.i.i, !dbg !4563

_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit37.i.i: ; preds = %bb.t, %bb.s, %.noexc14
  %.sroa.03.0.i.i.i.i.i.i34.i.i = phi i32 [ %i.es, %bb.t ], [ %i.en, %bb.s ], [ %i.em, %.noexc14 ], !dbg !4564
  %.sroa.02.0.i.i.i.i.i.i35.i.i = phi i32 [ %i.eq, %bb.t ], [ %i.em, %bb.s ], [ %i.ej, %.noexc14 ], !dbg !4564
  %.sroa.0.0.i.i.i.i.i.i36.i.i = phi i32 [ %i.et, %bb.t ], [ 2, %bb.s ], [ 1, %.noexc14 ], !dbg !4564 ; 5 uses
  store i32 %.sroa.0.0.i.i.i.i.i.i36.i.i, ptr %i.ay, align 4, !dbg !4565, !alias.scope !4360, !noalias !4361
  %i.eu = zext i32 %.sroa.03.0.i.i.i.i.i.i34.i.i to i64, !dbg !4566
  %i.ev = shl nuw i64 %i.eu, 32, !dbg !4567
  %i.ew = zext i32 %.sroa.02.0.i.i.i.i.i.i35.i.i to i64, !dbg !4568
  %i.ex = or disjoint i64 %i.ev, %i.ew, !dbg !4567
  %i.ey = lshr i64 %i.ex, 12, !dbg !4569
  %i.ez = or disjoint i64 %i.ey, 4607182418800017408, !dbg !4570
  %i.fa = bitcast i64 %i.ez to double, !dbg !4571
  %i.fb = fadd double %i.fa, f0xBFEFFFFFFFFFFFFF, !dbg !4572 ; 9 uses
  %i.fc = icmp samesign ult i32 %.sroa.0.0.i.i.i.i.i.i36.i.i, 63, !dbg !4573
  br i1 %i.fc, label %bb.x, label %bb.u, !dbg !4573

bb.u:                                             ; preds = %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit37.i.i
  %i.fd = load i32, ptr %i.az, align 4, !dbg !4574, !alias.scope !4375, !noalias !4376, !noundef !2249
  %i.fe = load i64, ptr %i.bb, align 4, !dbg !4575, !alias.scope !4377, !noalias !4376
  %i.ff = icmp ugt i64 %i.fe, 1023, !dbg !4576
  br i1 %i.ff, label %bb.v, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i38.i.i, !dbg !4576, !prof !2259

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.ba) #43
          to label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i38.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4577

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i38.i.i: ; preds = %bb.v, %bb.u
  invoke void @_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.ba, ptr noalias noundef nonnull align 4 dereferenceable(320) %i.ay)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4578

.noexc16:                                         ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i38.i.i
  %i.fg = load i32, ptr %i.ay, align 4, !dbg !4579, !alias.scope !4375, !noalias !4376, !noundef !2249 ; 2 uses
  %.not.i.i.i.i.i.i39.i.i = icmp eq i32 %.sroa.0.0.i.i.i.i.i.i36.i.i, 63, !dbg !4580
  br i1 %.not.i.i.i.i.i.i39.i.i, label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit43.i.i, label %bb.w, !dbg !4580

bb.w:                                             ; preds = %.noexc16
  %i.fh = load i32, ptr %i.bc, align 4, !dbg !4581, !alias.scope !4375, !noalias !4376, !noundef !2249
  br label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit43.i.i, !dbg !4582

bb.x:                                             ; preds = %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit37.i.i
  %i.fi = zext nneg i32 %.sroa.0.0.i.i.i.i.i.i36.i.i to i64, !dbg !4583
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.fi, !dbg !4584 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !dbg !4584, !alias.scope !4375, !noalias !4376, !noundef !2249
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 4, !dbg !4585
  %i.fm = load i32, ptr %i.fl, align 4, !dbg !4585, !alias.scope !4375, !noalias !4376, !noundef !2249
  %i.fn = add nuw nsw i32 %.sroa.0.0.i.i.i.i.i.i36.i.i, 2, !dbg !4586
  br label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit43.i.i, !dbg !4587

_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit43.i.i: ; preds = %bb.x, %bb.w, %.noexc16
  %.sroa.03.0.i.i.i.i.i.i40.i.i = phi i32 [ %i.fm, %bb.x ], [ %i.fh, %bb.w ], [ %i.fg, %.noexc16 ], !dbg !4588
  %.sroa.02.0.i.i.i.i.i.i41.i.i = phi i32 [ %i.fk, %bb.x ], [ %i.fg, %bb.w ], [ %i.fd, %.noexc16 ], !dbg !4588
  %.sroa.0.0.i.i.i.i.i.i42.i.i = phi i32 [ %i.fn, %bb.x ], [ 2, %bb.w ], [ 1, %.noexc16 ], !dbg !4588 ; 5 uses
  store i32 %.sroa.0.0.i.i.i.i.i.i42.i.i, ptr %i.ay, align 4, !dbg !4589, !alias.scope !4375, !noalias !4376
  %i.fo = zext i32 %.sroa.03.0.i.i.i.i.i.i40.i.i to i64, !dbg !4590
  %i.fp = shl nuw i64 %i.fo, 32, !dbg !4591
  %i.fq = zext i32 %.sroa.02.0.i.i.i.i.i.i41.i.i to i64, !dbg !4592
  %i.fr = or disjoint i64 %i.fp, %i.fq, !dbg !4591
  %i.fs = lshr i64 %i.fr, 12, !dbg !4593
  %i.ft = or disjoint i64 %i.fs, 4607182418800017408, !dbg !4594
  %i.fu = bitcast i64 %i.ft to double, !dbg !4595
  %i.fv = fadd double %i.fu, f0xBFEFFFFFFFFFFFFF, !dbg !4596 ; 3 uses
  %i.fw = fcmp olt double %i.fb, 5.000000e-01, !dbg !4597
  br i1 %i.fw, label %bb.z, label %bb.y, !dbg !4598

bb.y:                                             ; preds = %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit43.i.i
  %i.fx = fmul nnan double %i.fb, %i.fb, !dbg !4599
  %i.fy = fmul double %i.fx, %i.fv, !dbg !4600    ; 3 uses
  %i.fz = fcmp ugt double %i.fy, 2.500000e-01, !dbg !4601
  br i1 %i.fz, label %bb.aa, label %.split.i, !dbg !4602

bb.z:                                             ; preds = %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6sampledNtNtNtB9_5distr5float6Open01ECs2g09Ig8GZd6_13polars_stream.exit43.i.i
  %i.ga = fmul nnan double %i.fb, %i.fv, !dbg !4603 ; 2 uses
  %i.gb = fmul double %i.fb, %i.ga, !dbg !4604    ; 2 uses
  %i.gc = fmul nnan double %i.fv, 2.500000e-01, !dbg !4605
  %i.gd = fadd double %i.gc, %i.gb, !dbg !4606
  %i.ge = fsub double %i.gd, %i.ga, !dbg !4607
  %i.gf = fcmp ult double %i.ge, %i.av, !dbg !4608
  br i1 %i.gf, label %bb.ab, label %.backedge.i.i.backedge, !dbg !4609

bb.aa:                                            ; preds = %bb.y
  %i.gg = fcmp ult double %i.fy, %i.ax, !dbg !4610
  br i1 %i.gg, label %bb.ab, label %.backedge.i.i.backedge, !dbg !4611

.split.i:                                         ; preds = %bb.y
  %i.gh = fsub double 1.000000e+00, %i.fb, !dbg !4612
  %i.gi = fdiv double %i.fb, %i.gh, !dbg !4613
  %i.gj = tail call noundef double @llvm.log.f64(double %i.gi), !dbg !4614
  %i.gk = fmul double %i.bd, %i.gj, !dbg !4615
  %i.gl = tail call noundef double @llvm.exp.f64(double %i.gk), !dbg !4616
  %i.gm = fmul double %i.ai, %i.gl, !dbg !4617    ; 2 uses
  br i1 %i.z, label %bb.ac, label %bb.ad, !dbg !4548

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gn = phi double [ %i.fy, %bb.aa ], [ %i.gb, %bb.z ]
  %i.go = fsub double 1.000000e+00, %i.fb, !dbg !4618
  %i.gp = fdiv double %i.fb, %i.go, !dbg !4619
  %i.gq = tail call noundef double @llvm.log.f64(double %i.gp), !dbg !4620
  %i.gr = fmul double %i.bd, %i.gq, !dbg !4459    ; 2 uses
  %i.gs = tail call noundef double @llvm.exp.f64(double %i.gr), !dbg !4621
  %i.gt = fmul double %i.ai, %i.gs, !dbg !4622    ; 2 uses
  %i.gu = fadd double %i.ae, %i.gt, !dbg !4623
  %i.gv = fdiv double %i.ah, %i.gu, !dbg !4624
  %i.gw = tail call noundef double @llvm.log.f64(double %i.gv), !dbg !4625
  %i.gx = fadd double %i.gr, %i.gw, !dbg !4626
  %i.gy = fmul double %i.ah, %i.gx, !dbg !4627
  %i.gz = fadd double %i.gy, f0xBFF62E42FEFA39EF, !dbg !4628
  %i.ha = tail call noundef double @llvm.log.f64(double %i.gn), !dbg !4629
  %i.hb = fcmp olt double %i.gz, %i.ha, !dbg !4630
  br i1 %i.hb, label %.backedge.i.i.backedge, label %.loopexit.i.i, !dbg !4631

.backedge.i.i.backedge:                           ; preds = %bb.ab, %bb.aa, %bb.z
  br label %.backedge.i.i, !dbg !4549

bb.ac:                                            ; preds = %.split.i, %.loopexit.i.i
  %.sroa.0.018.i79.i = phi double [ %i.gm, %.split.i ], [ %.sroa.0.018.i.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.21.02078.i = phi double [ %i.x, %.split.i ], [ %.sroa.21.020.i, %.loopexit.i.i ]
  %i.hc = phi i32 [ %.sroa.0.0.i.i.i.i.i.i42.i.i, %.split.i ], [ %i.eg, %.loopexit.i.i ]
  %i.hd = fcmp oeq double %.sroa.0.018.i79.i, +inf, !dbg !4632
  br i1 %i.hd, label %.thread.i, label %bb.ae, !dbg !4633

.thread.i:                                        ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4350
  br label %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCs2g09Ig8GZd6_13polars_stream.exit.thread.i, !dbg !4634

bb.ad:                                            ; preds = %.split.i, %.loopexit.i.i
  %.sroa.0.018.i80.i = phi double [ %i.gm, %.split.i ], [ %.sroa.0.018.i.i, %.loopexit.i.i ]
  %.sroa.21.02077.i = phi double [ %i.y, %.split.i ], [ %.sroa.21.020.i, %.loopexit.i.i ] ; 2 uses
  %i.he = phi i32 [ %.sroa.0.0.i.i.i.i.i.i42.i.i, %.split.i ], [ %i.eg, %.loopexit.i.i ]
  %i.hf = fadd double %.sroa.0.018.i80.i, %.sroa.21.02077.i, !dbg !4635
  %i.hg = fdiv double %.sroa.21.02077.i, %i.hf, !dbg !4636
  br label %_RINvXs1_NtCshxxEFTT9rch_10rand_distr4betaINtB6_4BetadEINtNtNtCsci2cbTAlhZn_4rand5distr12distribution12DistributiondE6sampleNtNtNtBX_4rngs6thread9ThreadRngECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !4637

bb.ae:                                            ; preds = %bb.ac
  %i.hh = fadd double %.sroa.0.018.i79.i, %.sroa.21.02078.i, !dbg !4638
  %i.hi = fdiv double %.sroa.0.018.i79.i, %i.hh, !dbg !4639
  br label %_RINvXs1_NtCshxxEFTT9rch_10rand_distr4betaINtB6_4BetadEINtNtNtCsci2cbTAlhZn_4rand5distr12distribution12DistributiondE6sampleNtNtNtBX_4rngs6thread9ThreadRngECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !4637

_RINvXs1_NtCshxxEFTT9rch_10rand_distr4betaINtB6_4BetadEINtNtNtCsci2cbTAlhZn_4rand5distr12distribution12DistributiondE6sampleNtNtNtBX_4rngs6thread9ThreadRngECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.ae, %bb.ad
  %i.hj = phi i32 [ %i.hc, %bb.ae ], [ %i.he, %bb.ad ] ; 4 uses
  %.sroa.0.1.i.i = phi double [ %i.hi, %bb.ae ], [ %i.hg, %bb.ad ], !dbg !4547 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4350
  store double %.sroa.0.1.i.i, ptr %i.b, align 8, !noalias !4350
  %i.hk = fcmp oge double %.sroa.0.1.i.i, 0.000000e+00, !dbg !4640
  %i.hl = fcmp olt double %.sroa.0.1.i.i, 1.000000e+00
  %spec.select.i.i.i = and i1 %i.hk, %i.hl, !dbg !4641
  br i1 %spec.select.i.i.i, label %bb.ah, label %bb.af, !dbg !4642

bb.af:                                            ; preds = %_RINvXs1_NtCshxxEFTT9rch_10rand_distr4betaINtB6_4BetadEINtNtNtCsci2cbTAlhZn_4rand5distr12distribution12DistributiondE6sampleNtNtNtBX_4rngs6thread9ThreadRngECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.hm = fcmp oeq double %.sroa.0.1.i.i, 1.000000e+00, !dbg !4634
  br i1 %i.hm, label %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCs2g09Ig8GZd6_13polars_stream.exit.thread.i, label %bb.ag, !dbg !4634, !prof !4387

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4643, !noalias !4350
  store ptr %i.b, ptr %i.a, align 8, !dbg !4643, !noalias !4350
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4643
  store ptr @_RNvXs6_NtNtCscgRAwXFJnXP_4core3fmt5floatdNtB7_5Debug3fmt, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !dbg !4643, !noalias !4350
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @621, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #42
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4644

.noexc17:                                         ; preds = %bb.ag
  unreachable, !dbg !4644

bb.ah:                                            ; preds = %_RINvXs1_NtCshxxEFTT9rch_10rand_distr4betaINtB6_4BetadEINtNtNtCsci2cbTAlhZn_4rand5distr12distribution12DistributiondE6sampleNtNtNtBX_4rngs6thread9ThreadRngECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.hn = fmul nnan double %.sroa.0.1.i.i, f0x43F0000000000000, !dbg !4645
  %i.ho = tail call i64 @llvm.fptoui.sat.i64.f64(double %i.hn), !dbg !4645 ; 2 uses
  %i.hp = icmp eq i64 %i.ho, -1, !dbg !4646
  br i1 %i.hp, label %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCs2g09Ig8GZd6_13polars_stream.exit.thread.i, label %bb.ai, !dbg !4646

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.val, i64 16, !dbg !4647 ; 4 uses
  %i.hr = icmp samesign ult i32 %i.hj, 63, !dbg !4648
  br i1 %i.hr, label %bb.am, label %bb.aj, !dbg !4648

bb.aj:                                            ; preds = %bb.ai
  %i.hs = getelementptr inbounds nuw i8, ptr %.val, i64 268, !dbg !4649
  %i.ht = load i32, ptr %i.hs, align 4, !dbg !4649, !alias.scope !4390, !noalias !4391, !noundef !2249
  %i.hu = getelementptr inbounds nuw i8, ptr %.val, i64 272, !dbg !4650 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.val, i64 320, !dbg !4651
  %i.hw = load i64, ptr %i.hv, align 4, !dbg !4652, !alias.scope !4392, !noalias !4391
  %i.hx = icmp ugt i64 %i.hw, 1023, !dbg !4653
  br i1 %i.hx, label %bb.ak, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i44.i, !dbg !4653, !prof !2259

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.hu) #43
          to label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i44.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4654

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i44.i: ; preds = %bb.ak, %bb.aj
  invoke void @_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.hu, ptr noalias noundef nonnull align 4 dereferenceable(320) %i.hq)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4655

.noexc19:                                         ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i44.i
  %i.hy = load i32, ptr %i.hq, align 4, !dbg !4656, !alias.scope !4390, !noalias !4391, !noundef !2249 ; 2 uses
  %.not.i.i.i.i.i.i.i45.i = icmp eq i32 %i.hj, 63, !dbg !4657
  br i1 %.not.i.i.i.i.i.i.i45.i, label %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.al, !dbg !4657

bb.al:                                            ; preds = %.noexc19
  %i.hz = getelementptr inbounds nuw i8, ptr %.val, i64 20, !dbg !4658
  %i.ia = load i32, ptr %i.hz, align 4, !dbg !4658, !alias.scope !4390, !noalias !4391, !noundef !2249
  br label %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !4659

bb.am:                                            ; preds = %bb.ai
  %i.ib = zext nneg i32 %i.hj to i64, !dbg !4660
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.ib, !dbg !4661 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !dbg !4661, !alias.scope !4390, !noalias !4391, !noundef !2249
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 4, !dbg !4662
  %i.if = load i32, ptr %i.ie, align 4, !dbg !4662, !alias.scope !4390, !noalias !4391, !noundef !2249
  %i.ig = add nuw nsw i32 %i.hj, 2, !dbg !4663
  br label %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !4664

_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCs2g09Ig8GZd6_13polars_stream.exit.thread.i: ; preds = %bb.ah, %bb.af, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4665, !noalias !4350
  br label %bb.an, !dbg !4666

_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.am, %bb.al, %.noexc19
  %.sroa.03.0.i.i.i.i.i.i.i46.i = phi i32 [ %i.if, %bb.am ], [ %i.ia, %bb.al ], [ %i.hy, %.noexc19 ], !dbg !4667
  %.sroa.02.0.i.i.i.i.i.i.i47.i = phi i32 [ %i.id, %bb.am ], [ %i.hy, %bb.al ], [ %i.ht, %.noexc19 ], !dbg !4667
  %.sroa.0.0.i.i.i.i.i.i.i48.i = phi i32 [ %i.ig, %bb.am ], [ 2, %bb.al ], [ 1, %.noexc19 ], !dbg !4667
  store i32 %.sroa.0.0.i.i.i.i.i.i.i48.i, ptr %i.hq, align 4, !dbg !4668, !alias.scope !4390, !noalias !4391
  %i.ih = zext i32 %.sroa.03.0.i.i.i.i.i.i.i46.i to i64, !dbg !4669
  %i.ii = shl nuw i64 %i.ih, 32, !dbg !4670
  %i.ij = zext i32 %.sroa.02.0.i.i.i.i.i.i.i47.i to i64, !dbg !4671
  %i.ik = or disjoint i64 %i.ii, %i.ij, !dbg !4670
  %i.il = icmp ult i64 %i.ik, %i.ho, !dbg !4672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4665, !noalias !4350
  br i1 %i.il, label %bb.an, label %bb.br, !dbg !4666

bb.an:                                            ; preds = %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCs2g09Ig8GZd6_13polars_stream.exit.i, %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCs2g09Ig8GZd6_13polars_stream.exit.thread.i, %.noexc8
  %i.im = getelementptr inbounds nuw i8, ptr %i.g, i64 88, !dbg !4673
  %i.in = load double, ptr %i.im, align 8, !dbg !4673, !alias.scope !4350, !noundef !2249 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.g, i64 96, !dbg !4674
  %i.ip = load <4 x double>, ptr %i.io, align 16, !dbg !4674, !alias.scope !4350 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.g, i64 128, !dbg !4675
  %i.ir = load double, ptr %i.iq, align 16, !dbg !4675, !alias.scope !4350, !noundef !2249 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.g, i64 152, !dbg !4676 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !dbg !4676, !alias.scope !4350, !noundef !2249
  %.not.i = icmp eq i64 %i.it, 0, !dbg !4676
  %i.iu = shufflevector <4 x double> %i.ip, <4 x double> poison, <2 x i32> <i32 2, i32 0>, !dbg !4677 ; 2 uses
  %i.iv = shufflevector <4 x double> %i.ip, <4 x double> poison, <2 x i32> <i32 3, i32 1>, !dbg !4678 ; 2 uses
  br i1 %.not.i, label %bb.ap, label %bb.ao, !dbg !4676

bb.ao:                                            ; preds = %bb.an
  %i.iw = load i128, ptr %i.j, align 16, !dbg !4679, !alias.scope !4350, !noundef !2249
  %i.ix = uitofp i128 %i.iw to double, !dbg !4679
  %i.iy = getelementptr inbounds nuw i8, ptr %i.g, i64 168, !dbg !4680
  %i.iz = load i64, ptr %i.iy, align 8, !dbg !4680, !alias.scope !4350, !noundef !2249
  %i.ja = uitofp i64 %i.iz to double, !dbg !4680
  %i.jb = getelementptr inbounds nuw i8, ptr %i.g, i64 176, !dbg !4681
  %i.jc = load double, ptr %i.jb, align 16, !dbg !4681, !alias.scope !4350, !noundef !2249
  %i.jd = getelementptr inbounds nuw i8, ptr %i.g, i64 184, !dbg !4682
  %i.je = insertelement <2 x double> poison, double %i.ja, i64 0, !dbg !4680
  %i.jf = insertelement <2 x double> %i.je, double %i.ix, i64 1, !dbg !4680
  %i.jg = fdiv <2 x double> %i.jf, splat (double 1.000000e+09), !dbg !4680 ; 4 uses
  %i.jh = fadd <2 x double> %i.iu, %i.jg, !dbg !4683
  %i.ji = load <2 x i64>, ptr %i.is, align 8, !dbg !4684, !alias.scope !4350
  %i.jj = uitofp <2 x i64> %i.ji to <2 x double>, !dbg !4684 ; 3 uses
  %i.jk = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> <i32 1, i32 0>, !dbg !4684 ; 2 uses
  %i.jl = extractelement <2 x double> %i.jj, i64 0, !dbg !4685 ; 2 uses
  %i.jm = extractelement <2 x double> %i.jj, i64 1, !dbg !4686
  %i.jn = fdiv double %i.jm, %i.jl, !dbg !4687
  %i.jo = fadd double %i.in, %i.jl, !dbg !4685
  %i.jp = fdiv <2 x double> %i.jg, %i.jk, !dbg !4688 ; 3 uses
  %i.jq = load <2 x double>, ptr %i.jd, align 8, !dbg !4682, !alias.scope !4350
  %i.jr = insertelement <2 x double> poison, double %i.jn, i64 0, !dbg !4686
  %i.js = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> zeroinitializer, !dbg !4686
  %i.jt = shufflevector <2 x double> %i.jk, <2 x double> %i.jg, <2 x i32> <i32 0, i32 3>, !dbg !4686
  %i.ju = fmul <2 x double> %i.js, %i.jt, !dbg !4686
  %i.jv = fadd <2 x double> %i.ju, %i.jq, !dbg !4682 ; 2 uses
  %i.jw = shufflevector <2 x double> %i.jp, <2 x double> %i.jg, <2 x i32> <i32 0, i32 3>, !dbg !4689
  %i.jx = fmul <2 x double> %i.jw, %i.jp, !dbg !4689 ; 2 uses
  %i.jy = insertelement <2 x double> %i.jv, double %i.jc, i64 1, !dbg !4689 ; 2 uses
  %i.jz = fmul <2 x double> %i.jy, %i.jx, !dbg !4689
end_hunk_0
