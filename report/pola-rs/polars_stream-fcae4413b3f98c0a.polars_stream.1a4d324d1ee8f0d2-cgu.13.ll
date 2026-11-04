Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.13?download=true
inline.NumInlined: 5868
inline.NumDeleted: 2281
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvMs0_NtNtCskAlUH1kY1DR_10polars_ooc13spill_context5statsNtB6_22SpillContextStatistics12sample_scoreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngECs2g09Ig8GZd6_13polars_stream:bb.a

bb.ba:                                            ; preds = %bb.az
  %i.nd = load i32, ptr %i.ld, align 4, !dbg !4738, !alias.scope !4393, !noalias !4394, !noundef !2247
  %i.ne = load i64, ptr %i.lf, align 4, !dbg !4739, !alias.scope !4395, !noalias !4394
  %i.nf = icmp ugt i64 %i.ne, 1023, !dbg !4740
  br i1 %i.nf, label %bb.bb, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i, !dbg !4740, !prof !2257

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvMs_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.le) #43
          to label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4741

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  invoke void @_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.le, ptr noalias noundef nonnull align 4 dereferenceable(320) %i.lc)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4742

.noexc24:                                         ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i
  %i.ng = load i32, ptr %i.lc, align 4, !dbg !4743, !alias.scope !4393, !noalias !4394, !noundef !2247 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i, 63, !dbg !4744
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomdECs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.bc, !dbg !4744

bb.bc:                                            ; preds = %.noexc24
  %i.nh = load i32, ptr %i.lg, align 4, !dbg !4745, !alias.scope !4393, !noalias !4394, !noundef !2247
  br label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomdECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !4746

bb.bd:                                            ; preds = %bb.az
  %i.ni = zext nneg i32 %.sroa.0.0.i.i.i to i64, !dbg !4747
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.ni, !dbg !4748 ; 2 uses
  %i.nk = load i32, ptr %i.nj, align 4, !dbg !4748, !alias.scope !4393, !noalias !4394, !noundef !2247
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 4, !dbg !4749
  %i.nm = load i32, ptr %i.nl, align 4, !dbg !4749, !alias.scope !4393, !noalias !4394, !noundef !2247
  %i.nn = add nuw nsw i32 %.sroa.0.0.i.i.i, 2, !dbg !4750
  br label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomdECs2g09Ig8GZd6_13polars_stream.exit.i, !dbg !4751

_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomdECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %bb.bd, %bb.bc, %.noexc24
  %.sroa.03.0.i.i.i.i.i.i.i = phi i32 [ %i.nm, %bb.bd ], [ %i.nh, %bb.bc ], [ %i.ng, %.noexc24 ], !dbg !4752
  %.sroa.02.0.i.i.i.i.i.i.i = phi i32 [ %i.nk, %bb.bd ], [ %i.ng, %bb.bc ], [ %i.nd, %.noexc24 ], !dbg !4752
  %.sroa.0.0.i.i.i.i.i.i.i = phi i32 [ %i.nn, %bb.bd ], [ 2, %bb.bc ], [ 1, %.noexc24 ], !dbg !4752 ; 3 uses
  store i32 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.lc, align 4, !dbg !4753, !alias.scope !4393, !noalias !4394
  %i.no = zext i32 %.sroa.03.0.i.i.i.i.i.i.i to i64, !dbg !4754
  %i.np = shl nuw i64 %i.no, 32, !dbg !4755
  %i.nq = zext i32 %.sroa.02.0.i.i.i.i.i.i.i to i64, !dbg !4756
  %i.nr = or disjoint i64 %i.np, %i.nq, !dbg !4755
  %i.ns = lshr i64 %i.nr, 11, !dbg !4757
  %i.nt = uitofp nneg i64 %i.ns to double, !dbg !4758
  %i.nu = fmul nnan double %i.nt, f0x3CA0000000000000, !dbg !4759
  %i.nv = fneg double %i.mq, !dbg !4760
  %i.nw = fmul double %i.mq, %i.nv, !dbg !4760
  %i.nx = fmul double %i.nw, 5.000000e-01, !dbg !4761
  %i.ny = tail call noundef double @llvm.exp.f64(double %i.nx), !dbg !4762
  %i.nz = fsub double %i.nb, %i.mz, !dbg !4763
  %i.oa = fmul double %i.nz, %i.nu, !dbg !4763
  %i.ob = fadd double %i.mz, %i.oa, !dbg !4735
  %i.oc = fcmp olt double %i.ob, %i.ny, !dbg !4735
  br i1 %i.oc, label %_RINvNtCshxxEFTT9rch_10rand_distr5utils8zigguratNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNvNvXs_NtB4_6normalNtB1B_14StandardNormalINtNtNtBP_5distr12distribution12DistributiondE6sample3pdfINvB1w_9zero_caseBJ_EECs2g09Ig8GZd6_13polars_stream.exit35.i, label %bb.as, !dbg !4735

_RINvNtCshxxEFTT9rch_10rand_distr5utils8zigguratNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNvNvXs_NtB4_6normalNtB1B_14StandardNormalINtNtNtBP_5distr12distribution12DistributiondE6sample3pdfINvB1w_9zero_caseBJ_EECs2g09Ig8GZd6_13polars_stream.exit35.i: ; preds = %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomdECs2g09Ig8GZd6_13polars_stream.exit.i, %_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u64Cs2g09Ig8GZd6_13polars_stream.exit.i, %.noexc22
  %.pre57.i = phi i32 [ %.pre57.pre.i, %.noexc22 ], [ %.sroa.0.0.i.i.i.i.i.i.i, %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomdECs2g09Ig8GZd6_13polars_stream.exit.i ], [ %.sroa.0.0.i.i.i, %_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u64Cs2g09Ig8GZd6_13polars_stream.exit.i ], !dbg !4733
  %.sroa.0.0.i34.i = phi double [ %i.mx, %.noexc22 ], [ %i.mq, %_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u64Cs2g09Ig8GZd6_13polars_stream.exit.i ], [ %i.mq, %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomdECs2g09Ig8GZd6_13polars_stream.exit.i ], !dbg !4764 ; 2 uses
  br label %bb.be, !dbg !4765

bb.be:                                            ; preds = %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomdECs2g09Ig8GZd6_13polars_stream.exit60.i, %_RINvNtCshxxEFTT9rch_10rand_distr5utils8zigguratNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNvNvXs_NtB4_6normalNtB1B_14StandardNormalINtNtNtBP_5distr12distribution12DistributiondE6sample3pdfINvB1w_9zero_caseBJ_EECs2g09Ig8GZd6_13polars_stream.exit35.i
  %i.od = phi i32 [ %.sroa.0.0.i.i.i.i.i.i59.i, %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomdECs2g09Ig8GZd6_13polars_stream.exit60.i ], [ %.pre57.i, %_RINvNtCshxxEFTT9rch_10rand_distr5utils8zigguratNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNvNvXs_NtB4_6normalNtB1B_14StandardNormalINtNtNtBP_5distr12distribution12DistributiondE6sample3pdfINvB1w_9zero_caseBJ_EECs2g09Ig8GZd6_13polars_stream.exit35.i ], !dbg !4733 ; 4 uses
  %i.oe = icmp ult i32 %i.od, 63, !dbg !4766
  br i1 %i.oe, label %bb.bi, label %bb.bf, !dbg !4766

bb.bf:                                            ; preds = %bb.be
  %i.of = load i32, ptr %i.ld, align 4, !dbg !4767, !alias.scope !4389, !noalias !4390, !noundef !2247
  %i.og = load i64, ptr %i.lf, align 4, !dbg !4768, !alias.scope !4399, !noalias !4390
  %i.oh = icmp ugt i64 %i.og, 1023, !dbg !4769
  br i1 %i.oh, label %bb.bg, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i49.i, !dbg !4769, !prof !2257

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvMs_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.le) #43
          to label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i49.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4770

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i49.i: ; preds = %bb.bg, %bb.bf
  invoke void @_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.le, ptr noalias noundef nonnull align 4 dereferenceable(320) %i.lc)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4771

.noexc26:                                         ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i49.i
  %i.oi = load i32, ptr %i.lc, align 4, !dbg !4772, !alias.scope !4389, !noalias !4390, !noundef !2247 ; 2 uses
  %.not.i.i50.i = icmp eq i32 %i.od, 63, !dbg !4773
  br i1 %.not.i.i50.i, label %_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u64Cs2g09Ig8GZd6_13polars_stream.exit54.i, label %bb.bh, !dbg !4773

bb.bh:                                            ; preds = %.noexc26
  %i.oj = load i32, ptr %i.lg, align 4, !dbg !4774, !alias.scope !4389, !noalias !4390, !noundef !2247
  br label %_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u64Cs2g09Ig8GZd6_13polars_stream.exit54.i, !dbg !4775

bb.bi:                                            ; preds = %bb.be
  %i.ok = zext nneg i32 %i.od to i64, !dbg !4776
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.ok, !dbg !4777 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4, !dbg !4777, !alias.scope !4389, !noalias !4390, !noundef !2247
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 4, !dbg !4778
  %i.oo = load i32, ptr %i.on, align 4, !dbg !4778, !alias.scope !4389, !noalias !4390, !noundef !2247
  %i.op = add nuw nsw i32 %i.od, 2, !dbg !4779
  br label %_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u64Cs2g09Ig8GZd6_13polars_stream.exit54.i, !dbg !4780

_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u64Cs2g09Ig8GZd6_13polars_stream.exit54.i: ; preds = %bb.bi, %bb.bh, %.noexc26
  %.sroa.03.0.i.i51.i = phi i32 [ %i.oo, %bb.bi ], [ %i.oj, %bb.bh ], [ %i.oi, %.noexc26 ], !dbg !4781
  %.sroa.02.0.i.i52.i = phi i32 [ %i.om, %bb.bi ], [ %i.oi, %bb.bh ], [ %i.of, %.noexc26 ], !dbg !4781
  %.sroa.0.0.i.i53.i = phi i32 [ %i.op, %bb.bi ], [ 2, %bb.bh ], [ 1, %.noexc26 ], !dbg !4781 ; 5 uses
  store i32 %.sroa.0.0.i.i53.i, ptr %i.lc, align 4, !dbg !4782, !alias.scope !4389, !noalias !4390
  %i.oq = zext i32 %.sroa.03.0.i.i51.i to i64, !dbg !4783
  %i.or = shl nuw i64 %i.oq, 32, !dbg !4784
  %i.os = zext i32 %.sroa.02.0.i.i52.i to i64, !dbg !4785 ; 2 uses
  %i.ot = or disjoint i64 %i.or, %i.os, !dbg !4784
  %i.ou = and i64 %i.os, 255, !dbg !4786          ; 4 uses
  %i.ov = lshr i64 %i.ot, 12, !dbg !4787
  %i.ow = or disjoint i64 %i.ov, 4611686018427387904, !dbg !4788
  %i.ox = bitcast i64 %i.ow to double, !dbg !4789
  %i.oy = fadd double %i.ox, -3.000000e+00, !dbg !4787 ; 2 uses
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCshxxEFTT9rch_10rand_distr15ziggurat_tables10ZIG_NORM_X, i64 %i.ou, !dbg !4790
  %i.pa = load double, ptr %i.oz, align 8, !dbg !4790, !noalias !4400, !noundef !2247
  %i.pb = fmul double %i.pa, %i.oy, !dbg !4791    ; 5 uses
  %i.pc = tail call double @llvm.fabs.f64(double %i.pb), !dbg !4792
  %i.pd = add nuw nsw i64 %i.ou, 1, !dbg !4793    ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCshxxEFTT9rch_10rand_distr15ziggurat_tables10ZIG_NORM_X, i64 %i.pd, !dbg !4794
  %i.pf = load double, ptr %i.pe, align 8, !dbg !4794, !noalias !4400, !noundef !2247
  %i.pg = fcmp olt double %i.pc, %i.pf, !dbg !4795
  br i1 %i.pg, label %_RINvNtCshxxEFTT9rch_10rand_distr5utils8zigguratNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNvNvXs_NtB4_6normalNtB1B_14StandardNormalINtNtNtBP_5distr12distribution12DistributiondE6sample3pdfINvB1w_9zero_caseBJ_EECs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.bj, !dbg !4795

bb.bj:                                            ; preds = %_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u64Cs2g09Ig8GZd6_13polars_stream.exit54.i
  %i.ph = icmp eq i64 %i.ou, 0, !dbg !4796
  br i1 %i.ph, label %bb.bk, label %bb.bl, !dbg !4796

bb.bk:                                            ; preds = %bb.bj
  %i.pi = invoke fastcc noundef double @_RNvYINvNvXs_NtCshxxEFTT9rch_10rand_distr6normalNtBa_14StandardNormalINtNtNtCsci2cbTAlhZn_4rand5distr12distribution12DistributiondE6sample9zero_caseNtNtNtB1b_4rngs6thread9ThreadRngEINtNtNtCscgRAwXFJnXP_4core3ops8function5FnMutTQB2l_dEE8call_mutCs2g09Ig8GZd6_13polars_stream(ptr nonnull %.val, double noundef %i.oy)
          to label %_RINvNtCshxxEFTT9rch_10rand_distr5utils8zigguratNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNvNvXs_NtB4_6normalNtB1B_14StandardNormalINtNtNtBP_5distr12distribution12DistributiondE6sample3pdfINvB1w_9zero_caseBJ_EECs2g09Ig8GZd6_13polars_stream.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4797

bb.bl:                                            ; preds = %bb.bj
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCshxxEFTT9rch_10rand_distr15ziggurat_tables10ZIG_NORM_F, i64 %i.pd, !dbg !4798
  %i.pk = load double, ptr %i.pj, align 8, !dbg !4798, !noalias !4400, !noundef !2247 ; 2 uses
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCshxxEFTT9rch_10rand_distr15ziggurat_tables10ZIG_NORM_F, i64 %i.ou, !dbg !4799
  %i.pm = load double, ptr %i.pl, align 8, !dbg !4799, !noalias !4400, !noundef !2247
  %i.pn = icmp samesign ult i32 %.sroa.0.0.i.i53.i, 63, !dbg !4800
  br i1 %i.pn, label %bb.bp, label %bb.bm, !dbg !4800

bb.bm:                                            ; preds = %bb.bl
  %i.po = load i32, ptr %i.ld, align 4, !dbg !4801, !alias.scope !4401, !noalias !4402, !noundef !2247
  %i.pp = load i64, ptr %i.lf, align 4, !dbg !4802, !alias.scope !4403, !noalias !4402
  %i.pq = icmp ugt i64 %i.pp, 1023, !dbg !4803
  br i1 %i.pq, label %bb.bn, label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i55.i, !dbg !4803, !prof !2257

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvMs_NtNtCsci2cbTAlhZn_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.le) #43
          to label %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i55.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4804

_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i55.i: ; preds = %bb.bn, %bb.bm
  invoke void @_RNvXs_NtCsejN9i34LGCw_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCs53V80GKKPEw_9rand_core5block9Generator8generateCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 4 dereferenceable(64) %i.le, ptr noalias noundef nonnull align 4 dereferenceable(320) %i.lc)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !4805

.noexc29:                                         ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i55.i
  %i.pr = load i32, ptr %i.lc, align 4, !dbg !4806, !alias.scope !4401, !noalias !4402, !noundef !2247 ; 2 uses
  %.not.i.i.i.i.i.i56.i = icmp eq i32 %.sroa.0.0.i.i53.i, 63, !dbg !4807
  br i1 %.not.i.i.i.i.i.i56.i, label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomdECs2g09Ig8GZd6_13polars_stream.exit60.i, label %bb.bo, !dbg !4807

bb.bo:                                            ; preds = %.noexc29
  %i.ps = load i32, ptr %i.lg, align 4, !dbg !4808, !alias.scope !4401, !noalias !4402, !noundef !2247
  br label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomdECs2g09Ig8GZd6_13polars_stream.exit60.i, !dbg !4809

bb.bp:                                            ; preds = %bb.bl
  %i.pt = zext nneg i32 %.sroa.0.0.i.i53.i to i64, !dbg !4810
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.pt, !dbg !4811 ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !dbg !4811, !alias.scope !4401, !noalias !4402, !noundef !2247
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pu, i64 4, !dbg !4812
  %i.px = load i32, ptr %i.pw, align 4, !dbg !4812, !alias.scope !4401, !noalias !4402, !noundef !2247
  %i.py = add nuw nsw i32 %.sroa.0.0.i.i53.i, 2, !dbg !4813
  br label %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomdECs2g09Ig8GZd6_13polars_stream.exit60.i, !dbg !4814

_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomdECs2g09Ig8GZd6_13polars_stream.exit60.i: ; preds = %bb.bp, %bb.bo, %.noexc29
  %.sroa.03.0.i.i.i.i.i.i57.i = phi i32 [ %i.px, %bb.bp ], [ %i.ps, %bb.bo ], [ %i.pr, %.noexc29 ], !dbg !4815
  %.sroa.02.0.i.i.i.i.i.i58.i = phi i32 [ %i.pv, %bb.bp ], [ %i.pr, %bb.bo ], [ %i.po, %.noexc29 ], !dbg !4815
  %.sroa.0.0.i.i.i.i.i.i59.i = phi i32 [ %i.py, %bb.bp ], [ 2, %bb.bo ], [ 1, %.noexc29 ], !dbg !4815 ; 2 uses
  store i32 %.sroa.0.0.i.i.i.i.i.i59.i, ptr %i.lc, align 4, !dbg !4816, !alias.scope !4401, !noalias !4402
  %i.pz = zext i32 %.sroa.03.0.i.i.i.i.i.i57.i to i64, !dbg !4817
  %i.qa = shl nuw i64 %i.pz, 32, !dbg !4818
  %i.qb = zext i32 %.sroa.02.0.i.i.i.i.i.i58.i to i64, !dbg !4819
  %i.qc = or disjoint i64 %i.qa, %i.qb, !dbg !4818
  %i.qd = lshr i64 %i.qc, 11, !dbg !4820
  %i.qe = uitofp nneg i64 %i.qd to double, !dbg !4821
  %i.qf = fmul nnan double %i.qe, f0x3CA0000000000000, !dbg !4822
  %i.qg = fneg double %i.pb, !dbg !4823
  %i.qh = fmul double %i.pb, %i.qg, !dbg !4823
  %i.qi = fmul double %i.qh, 5.000000e-01, !dbg !4824
  %i.qj = tail call noundef double @llvm.exp.f64(double %i.qi), !dbg !4825
  %i.qk = fsub double %i.pm, %i.pk, !dbg !4826
  %i.ql = fmul double %i.qk, %i.qf, !dbg !4826
  %i.qm = fadd double %i.pk, %i.ql, !dbg !4798
  %i.qn = fcmp olt double %i.qm, %i.qj, !dbg !4798
  br i1 %i.qn, label %_RINvNtCshxxEFTT9rch_10rand_distr5utils8zigguratNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNvNvXs_NtB4_6normalNtB1B_14StandardNormalINtNtNtBP_5distr12distribution12DistributiondE6sample3pdfINvB1w_9zero_caseBJ_EECs2g09Ig8GZd6_13polars_stream.exit.i, label %bb.be, !dbg !4798

_RINvNtCshxxEFTT9rch_10rand_distr5utils8zigguratNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNvNvXs_NtB4_6normalNtB1B_14StandardNormalINtNtNtBP_5distr12distribution12DistributiondE6sample3pdfINvB1w_9zero_caseBJ_EECs2g09Ig8GZd6_13polars_stream.exit.i: ; preds = %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomdECs2g09Ig8GZd6_13polars_stream.exit60.i, %_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u64Cs2g09Ig8GZd6_13polars_stream.exit54.i, %bb.bk
  %.sroa.0.0.i.i = phi double [ %i.pi, %bb.bk ], [ %i.pb, %_RNvXCs53V80GKKPEw_9rand_coreNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtB2_3Rng8next_u64Cs2g09Ig8GZd6_13polars_stream.exit54.i ], [ %i.pb, %_RINvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt6randomdECs2g09Ig8GZd6_13polars_stream.exit60.i ], !dbg !4827 ; 2 uses
  %i.qo = fmul double %spec.store.select1.i.i, %.sroa.0.0.i34.i, !dbg !4828
  %i.qp = fmul double %i.lr, %.sroa.0.0.i.i, !dbg !4828
  %i.qq = fadd double %i.qo, %i.qp, !dbg !4828
  %.pn32.i = select i1 %or.cond.i, double %i.qq, double %.sroa.0.0.i.i, !dbg !4828
  %i.qr = insertelement <2 x double> poison, double %.pn32.i, i64 0, !dbg !4829
  %i.qs = insertelement <2 x double> %i.qr, double %.sroa.0.0.i34.i, i64 1, !dbg !4829
  %i.qt = fmul <2 x double> %i.lb, %i.qs, !dbg !4829
  %i.qu = fadd <2 x double> %i.ko, %i.qt, !dbg !4829 ; 3 uses
  %2 = fcmp oge <2 x double> %i.qu, zeroinitializer ; 2 uses
  %3 = extractelement <2 x i1> %2, i64 0, !dbg !4830
  %4 = extractelement <2 x i1> %2, i64 1, !dbg !4830
  %or.cond2.i = select i1 %4, i1 %3, i1 false, !dbg !4830
  br i1 %or.cond2.i, label %bb.bq, label %bb.ar, !dbg !4830

bb.bq:                                            ; preds = %_RINvNtCshxxEFTT9rch_10rand_distr5utils8zigguratNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNvNvXs_NtB4_6normalNtB1B_14StandardNormalINtNtNtBP_5distr12distribution12DistributiondE6sample3pdfINvB1w_9zero_caseBJ_EECs2g09Ig8GZd6_13polars_stream.exit.i
  %i.qv = extractelement <2 x double> %i.qu, i64 0, !dbg !4831
  %i.qw = fadd double %i.qv, f0x3EB0C6F7A0B5ED8D, !dbg !4831
  %i.qx = extractelement <2 x double> %i.qu, i64 1, !dbg !4832
  %i.qy = fdiv double %i.qx, %i.qw, !dbg !4832
  br label %bb.br, !dbg !4833

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i26.i.i, %bb.l, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i.i, %bb.h, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i55.i, %bb.bn, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i49.i, %bb.bg, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i, %bb.bb, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i, %bb.au, %bb.bk, %bb.ay, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i38.i.i, %bb.v, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i32.i.i, %bb.r, %_RNvXNtNtCsci2cbTAlhZn_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCs53V80GKKPEw_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i44.i, %bb.ak, %bb.ag, %.noexc, %bb.b
  %lpad.loopexit.split-lp169 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCskAlUH1kY1DR_10polars_ooc13spill_context5stats10StatisticsEECs2g09Ig8GZd6_13polars_stream(ptr nonnull %i.g, i8 %i.i) #38
          to label %bb.bx unwind label %bb.bw, !dbg !4834

bb.br:                                            ; preds = %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCs2g09Ig8GZd6_13polars_stream.exit.i, %bb.ap, %bb.bq
  %.sroa.0.0.i = phi double [ 0.000000e+00, %_RNvYNtNtNtCsci2cbTAlhZn_4rand4rngs6thread9ThreadRngNtNtB8_3rng6RngExt11random_boolCs2g09Ig8GZd6_13polars_stream.exit.i ], [ %i.qy, %bb.bq ], [ 1.000000e+30, %bb.ap ], !dbg !4684 ; 2 uses
  %i.qz = bitcast double %.sroa.0.0.i to i64, !dbg !4337
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !4835
  store atomic i64 %i.qz, ptr %i.ra monotonic, align 16, !dbg !4836
  %i.rb = getelementptr inbounds nuw i8, ptr %i.g, i64 4, !dbg !4837
  %i.rc = trunc nuw i8 %i.i to i1, !dbg !4838
  br i1 %i.rc, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bs, !dbg !4838

bb.bs:                                            ; preds = %bb.br
  %i.rd = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !4839
  %i.re = and i64 %i.rd, 9223372036854775807, !dbg !4840
  %i.rf = icmp eq i64 %i.re, 0, !dbg !4840
  br i1 %i.rf, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc30, !dbg !4840, !prof !2324

.noexc30:                                         ; preds = %bb.bs
  %i.rg = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #43, !dbg !4841
  br i1 %i.rg, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bt, !dbg !4842

bb.bt:                                            ; preds = %.noexc30
  store atomic i8 1, ptr %i.rb monotonic, align 4, !dbg !4843
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !4844

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bt, %.noexc30, %bb.bs, %bb.br
  %i.rh = atomicrmw xchg ptr %i.g, i32 0 release, align 4, !dbg !4845
  %i.ri = icmp eq i32 %i.rh, 2, !dbg !4846
  br i1 %i.ri, label %bb.bu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCskAlUH1kY1DR_10polars_ooc13spill_context5stats10StatisticsEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !4846, !prof !2257

bb.bu:                                            ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.g), !dbg !4847
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCskAlUH1kY1DR_10polars_ooc13spill_context5stats10StatisticsEECs2g09Ig8GZd6_13polars_stream.exit, !dbg !4847

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCskAlUH1kY1DR_10polars_ooc13spill_context5stats10StatisticsEECs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.bu, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4834
  br label %bb.bv, !dbg !4848

bb.bv:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCskAlUH1kY1DR_10polars_ooc13spill_context5stats10StatisticsEINtB17_12TryLockErrorB12_EEECs2g09Ig8GZd6_13polars_stream.exit39, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCskAlUH1kY1DR_10polars_ooc13spill_context5stats10StatisticsEECs2g09Ig8GZd6_13polars_stream.exit
  %.sroa.0.0 = phi double [ %i.rw, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCskAlUH1kY1DR_10polars_ooc13spill_context5stats10StatisticsEINtB17_12TryLockErrorB12_EEECs2g09Ig8GZd6_13polars_stream.exit39 ], [ %.sroa.0.0.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCskAlUH1kY1DR_10polars_ooc13spill_context5stats10StatisticsEECs2g09Ig8GZd6_13polars_stream.exit ], !dbg !4849
  ret double %.sroa.0.0, !dbg !4850

bb.bw:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.rj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !4851
  unreachable, !dbg !4851

bb.bx:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp169, !dbg !4851

bb.by:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4410), !dbg !4834
  %i.rk = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !4852
  %.val.i32 = load ptr, ptr %i.rk, align 8, !dbg !4852, !alias.scope !4410 ; 4 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !4852
  %.val3.i33 = load i8, ptr %i.rl, align 8, !dbg !4852, !range !2448, !alias.scope !4410, !noundef !2247 ; 2 uses
  %.not.i.i34 = icmp eq i8 %.val3.i33, 2, !dbg !4853
  br i1 %.not.i.i34, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCskAlUH1kY1DR_10polars_ooc13spill_context5stats10StatisticsEINtB17_12TryLockErrorB12_EEECs2g09Ig8GZd6_13polars_stream.exit39, label %bb.bz, !dbg !4853

bb.bz:                                            ; preds = %bb.by
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i32) ]
  %i.rm = getelementptr inbounds nuw i8, ptr %.val.i32, i64 4, !dbg !4854
  %i.rn = trunc nuw i8 %.val3.i33 to i1, !dbg !4855
  br i1 %i.rn, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i35, label %bb.ca, !dbg !4855

bb.ca:                                            ; preds = %bb.bz
  %i.ro = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !4856, !noalias !4410
  %i.rp = and i64 %i.ro, 9223372036854775807, !dbg !4857
  %i.rq = icmp eq i64 %i.rp, 0, !dbg !4857
  br i1 %i.rq, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i35, label %bb.cb, !dbg !4857, !prof !2324

bb.cb:                                            ; preds = %bb.ca
  %i.rr = tail call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #43, !dbg !4858, !noalias !4410
  br i1 %i.rr, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i35, label %bb.cc, !dbg !4859

bb.cc:                                            ; preds = %bb.cb
  store atomic i8 1, ptr %i.rm monotonic, align 1, !dbg !4860, !noalias !4410
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i35, !dbg !4861

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i35: ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz
  %i.rs = atomicrmw xchg ptr %.val.i32, i32 0 release, align 4, !dbg !4862, !noalias !4410
  %i.rt = icmp eq i32 %i.rs, 2, !dbg !4863
  br i1 %i.rt, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCskAlUH1kY1DR_10polars_ooc13spill_context5stats10StatisticsEECs2g09Ig8GZd6_13polars_stream.exit.sink.split.i36, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCskAlUH1kY1DR_10polars_ooc13spill_context5stats10StatisticsEINtB17_12TryLockErrorB12_EEECs2g09Ig8GZd6_13polars_stream.exit39, !dbg !4863, !prof !2257

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCskAlUH1kY1DR_10polars_ooc13spill_context5stats10StatisticsEECs2g09Ig8GZd6_13polars_stream.exit.sink.split.i36: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i35
  tail call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i32), !dbg !4852, !noalias !4410
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCskAlUH1kY1DR_10polars_ooc13spill_context5stats10StatisticsEINtB17_12TryLockErrorB12_EEECs2g09Ig8GZd6_13polars_stream.exit39, !dbg !4852

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCskAlUH1kY1DR_10polars_ooc13spill_context5stats10StatisticsEINtB17_12TryLockErrorB12_EEECs2g09Ig8GZd6_13polars_stream.exit39: ; preds = %bb.by, %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i35, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardNtNtNtCskAlUH1kY1DR_10polars_ooc13spill_context5stats10StatisticsEECs2g09Ig8GZd6_13polars_stream.exit.sink.split.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4834
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !4864
  %i.rv = load atomic i64, ptr %i.ru monotonic, align 16, !dbg !4865
  %i.rw = bitcast i64 %i.rv to double, !dbg !4850
  br label %bb.bv, !dbg !4848
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread5queueINtB6_5LocalINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtB8_6handle6HandleEE21push_back_or_overflowB1U_ECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4866 {
bb.a:
  br label %bb.b, !dbg !4920

bb.b:                                             ; preds = %bb.a, %bb.e
  %storemerge = phi ptr [ %1, %bb.a ], [ %i.s, %bb.e ] ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !dbg !4921, !nonnull !2247, !noundef !2247
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !4922
  %i.c = load atomic i64, ptr %i.b acquire, align 8, !dbg !4923 ; 2 uses
  %i.d = lshr i64 %i.c, 32, !dbg !4924
  %i.e = trunc nuw i64 %i.d to i32, !dbg !4925    ; 3 uses
  %i.f = load ptr, ptr %0, align 8, !dbg !4926, !nonnull !2247, !noundef !2247 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !4927
  %i.h = load i32, ptr %i.g, align 4, !dbg !4928, !noundef !2247 ; 4 uses
  %i.i = sub i32 %i.h, %i.e, !dbg !4929
  %i.j = icmp ult i32 %i.i, 256, !dbg !4930
  br i1 %i.j, label %bb.d, label %bb.c, !dbg !4930

bb.c:                                             ; preds = %bb.b
  %i.k = trunc i64 %i.c to i32, !dbg !4931
  %.not = icmp eq i32 %i.e, %i.k, !dbg !4932
  br i1 %.not, label %bb.e, label %bb.f, !dbg !4932

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = and i32 %i.h, 255, !dbg !4933
  %i.n = zext nneg i32 %i.m to i64, !dbg !4933
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !4934
  %i.p = load ptr, ptr %i.o, align 8, !dbg !4934, !noalias !4918, !nonnull !2247, !noundef !2247
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n, !dbg !4934
  store ptr %storemerge, ptr %i.q, align 8, !dbg !4935, !noalias !4918
  %i.r = add i32 %i.h, 1, !dbg !4936
  store atomic i32 %i.r, ptr %i.l release, align 8, !dbg !4937, !noalias !4918
  br label %.loopexit, !dbg !4938

bb.e:                                             ; preds = %bb.c
  %i.s = tail call noundef ptr @_RINvMs0_NtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread5queueINtB6_5LocalINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtB8_6handle6HandleEE13push_overflowB1U_EBe_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %storemerge, i32 noundef %i.e, i32 noundef %i.h, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(72) %3), !dbg !4939 ; 2 uses
  %.not4 = icmp eq ptr %i.s, null, !dbg !4940
  br i1 %.not4, label %.loopexit, label %bb.b, !dbg !4941

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvXs3_NtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6workerNtNtB7_6handle6HandleINtNtB7_8overflow8OverflowINtNtCsgZ49sUHp3tW_5alloc4sync3ArcB1a_EE4push(ptr noundef nonnull align 8 %2, ptr noundef nonnull %storemerge), !dbg !4942
  br label %.loopexit, !dbg !4942

.loopexit:                                        ; preds = %bb.e, %bb.f, %bb.d
  ret void, !dbg !4943
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs2_CscbFR6njYCjp_12thread_localINtB6_11ThreadLocalINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock6RwLockNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueEE10get_or_tryNCINvB2_6get_orNvYBR_NtNtCscgRAwXFJnXP_4core7default7Default7defaultE0uECs2g09Ig8GZd6_13polars_stream(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4944 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 2 uses
  %i.b = alloca [56 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  call void @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellINtNtBZ_6option6OptionNtNtCscbFR6njYCjp_12thread_local9thread_id6ThreadEEE4withNCNvB1Q_3get0B1O_ECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @22), !dbg !4977
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !4978
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !4978 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !4978
  %.sroa.46.0.copyload = load i64, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !4978
  %i.e = icmp ult i64 %.sroa.3.0.copyload, 63, !dbg !4979
  tail call void @llvm.assume(i1 %i.e), !dbg !4980
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.3.0.copyload, !dbg !4981
  %i.g = load atomic ptr, ptr %i.f acquire, align 8, !dbg !4982, !noalias !4974 ; 2 uses
  %i.h = icmp eq ptr %i.g, null, !dbg !4983
  br i1 %i.h, label %select.unfold, label %bb.b, !dbg !4983

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %.sroa.46.0.copyload, !dbg !4984 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56, !dbg !4985
  %i.k = load atomic i8, ptr %i.j monotonic, align 1, !dbg !4986, !noalias !4974
  %i.l = icmp eq i8 %i.k, 0, !dbg !4987
  br i1 %i.l, label %select.unfold, label %_RNvMs2_CscbFR6njYCjp_12thread_localINtB5_11ThreadLocalINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock6RwLockNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueEE9get_innerCs2g09Ig8GZd6_13polars_stream.exit, !dbg !4988

_RNvMs2_CscbFR6njYCjp_12thread_localINtB5_11ThreadLocalINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock6RwLockNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueEE9get_innerCs2g09Ig8GZd6_13polars_stream.exit: ; preds = %bb.b, %select.unfold
  %.sroa.0.0 = phi ptr [ %i.n, %select.unfold ], [ %i.i, %bb.b ], !dbg !4989
  ret ptr %.sroa.0.0, !dbg !4990

select.unfold:                                    ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !4991
  call void @_RNvXsb_NtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlockINtB5_6RwLockNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueENtNtCscgRAwXFJnXP_4core7default7Default7defaultCs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m), !dbg !4992
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !dbg !4993
  %i.n = call fastcc noundef nonnull align 8 ptr @_RNvMs2_CscbFR6njYCjp_12thread_localINtB5_11ThreadLocalINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock6RwLockNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueEE6insertCs2g09Ig8GZd6_13polars_stream(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.b), !dbg !4994
  br label %_RNvMs2_CscbFR6njYCjp_12thread_localINtB5_11ThreadLocalINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison6rwlock6RwLockNtNtCskAlUH1kY1DR_10polars_ooc13spill_context15LocalSpillQueueEE9get_innerCs2g09Ig8GZd6_13polars_stream.exit, !dbg !4995
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs4_NtCs2mZqlW55729_12polars_utils7pl_pathNtB6_9PlRefPath3newRNtNtCsgZ49sUHp3tW_5alloc6string6StringECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !4996 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5029
  %.val.i = load ptr, ptr %i.a, align 8, !dbg !5029, !nonnull !2247, !noundef !2247 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5029
  %.val1.i = load i64, ptr %i.b, align 8, !dbg !5029, !noundef !2247 ; 2 uses
  %i.c = tail call { ptr, i64 } @_RNvMNtCs2mZqlW55729_12polars_utils7pl_pathNtB2_6PlPath22normalize_windows_path(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i), !dbg !5030 ; 3 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0, !dbg !5030
end_hunk_0
