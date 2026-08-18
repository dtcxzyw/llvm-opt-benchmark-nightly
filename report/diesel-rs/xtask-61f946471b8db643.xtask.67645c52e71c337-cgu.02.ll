inline.NumInlined: 341
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCsyoCoCcM3Qh_5xtask5testsNtB2_8TestArgs9run_tests:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !353
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsyoCoCcM3Qh_5xtask.exit.i278 unwind label %bb.fv, !noalias !359

bb.fv:                                            ; preds = %bb.fu
  %i.lw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %.body272 unwind label %bb.fw, !noalias !359

bb.fw:                                            ; preds = %bb.fv
  %i.lx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #14, !noalias !359
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsyoCoCcM3Qh_5xtask.exit.i278: ; preds = %bb.fu
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at)
          to label %_RINvMs4_CsknFUbXuePIn_6caminoNtB6_8Utf8Path4joinNtNtCs40k4W9msRzi_5alloc6string6StringECsyoCoCcM3Qh_5xtask.exit282 unwind label %bb.fr

bb.fx:                                            ; preds = %bb.ft
  %i.ly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #14, !noalias !359
  unreachable

_RINvMs4_CsknFUbXuePIn_6caminoNtB6_8Utf8Path4joinNtNtCs40k4W9msRzi_5alloc6string6StringECsyoCoCcM3Qh_5xtask.exit282: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsyoCoCcM3Qh_5xtask.exit.i278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask.exit.i284 unwind label %bb.fy

bb.fy:                                            ; preds = %_RINvMs4_CsknFUbXuePIn_6caminoNtB6_8Utf8Path4joinNtNtCs40k4W9msRzi_5alloc6string6StringECsyoCoCcM3Qh_5xtask.exit282
  %i.lz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %.body189 unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ma = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask.exit.i284: ; preds = %_RINvMs4_CsknFUbXuePIn_6caminoNtB6_8Utf8Path4joinNtNtCs40k4W9msRzi_5alloc6string6StringECsyoCoCcM3Qh_5xtask.exit282
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsknFUbXuePIn_6camino11Utf8PathBufECsyoCoCcM3Qh_5xtask.exit288 unwind label %bb.ga

.body189:                                         ; preds = %bb.gw, %bb.gx, %bb.gf, %bb.ga, %bb.fy, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtCsdfAJ7lwe7WW_14cargo_metadata7PackageENCNvMNtCsyoCoCcM3Qh_5xtask5testsNtB2O_8TestArgs9run_testss_0EEB2Q_.exit
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtCsdfAJ7lwe7WW_14cargo_metadata7PackageENCNvMNtCsyoCoCcM3Qh_5xtask5testsNtB2O_8TestArgs9run_testss_0EEB2Q_.exit ], [ %i.mi, %bb.gf ], [ %i.lz, %bb.fy ], [ %i.mb, %bb.ga ], [ %i.og, %bb.gx ], [ %i.og, %bb.gw ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsknFUbXuePIn_6camino11Utf8PathBufECsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24) %i.av) #15
          to label %.body186 unwind label %bb.eg

bb.ga:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask.exit.i284, %bb.gq, %bb.gb
  %i.mb = landingpad { ptr, i32 }
          cleanup
  br label %.body189

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsknFUbXuePIn_6camino11Utf8PathBufECsyoCoCcM3Qh_5xtask.exit288: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask.exit.i284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.mc = icmp eq i8 %i.dp, 1                     ; 2 uses
  br i1 %i.mc, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsknFUbXuePIn_6camino11Utf8PathBufECsyoCoCcM3Qh_5xtask.exit288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke void @_RNvNtCsgpSKRLfVQC3_8tempfile3dir7tempdir(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar)
          to label %bb.gd unwind label %bb.ga

bb.gc:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsknFUbXuePIn_6camino11Utf8PathBufECsyoCoCcM3Qh_5xtask.exit288
  %i.md = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i8 2, ptr %i.md, align 8
  br label %bb.gj

bb.gd:                                            ; preds = %bb.gb
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.me = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.mf = load i8, ptr %i.me, align 8, !range !22, !alias.scope !361, !noalias !364, !noundef !5
  %i.mg = icmp eq i8 %i.mf, 2
  br i1 %i.mg, label %bb.ge, label %bb.gi, !prof !282

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !366
  %i.mh = load ptr, ptr %i.ar, align 8, !alias.scope !361, !noalias !364, !nonnull !5, !noundef !5
  store ptr %i.mh, ptr %i.q, align 8, !noalias !366
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #16
          to label %bb.gg unwind label %bb.gf, !noalias !366

bb.gf:                                            ; preds = %bb.ge
  %i.mi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #15
          to label %.body189 unwind label %bb.gh, !noalias !366

bb.gg:                                            ; preds = %bb.ge
  unreachable

bb.gh:                                            ; preds = %bb.gf
  %i.mj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #14, !noalias !366
  unreachable

bb.gi:                                            ; preds = %bb.gd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  invoke void @_RNvMs_CsdfAJ7lwe7WW_14cargo_metadataNtB4_8Metadata18workspace_packages(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %1)
          to label %bb.gl unwind label %bb.gk

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtCsdfAJ7lwe7WW_14cargo_metadata7PackageENCNvMNtCsyoCoCcM3Qh_5xtask5testsNtB2O_8TestArgs9run_testss_0EEB2Q_.exit: ; preds = %.body300, %bb.gk
  %.pn.pn.pn = phi { ptr, i32 } [ %i.mk, %bb.gk ], [ %.pn.pn, %.body300 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgpSKRLfVQC3_8tempfile3dir7TempDirEECsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24) %i.as) #15
          to label %.body189 unwind label %bb.eg

bb.gk:                                            ; preds = %bb.jm, %bb.gp, %bb.gj
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtCsdfAJ7lwe7WW_14cargo_metadata7PackageENCNvMNtCsyoCoCcM3Qh_5xtask5testsNtB2O_8TestArgs9run_testss_0EEB2Q_.exit

bb.gl:                                            ; preds = %bb.gj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.mn = load i64, ptr %i.aq, align 8, !range !35, !noundef !5
  %i.mo = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.mp = load i64, ptr %i.mo, align 8, !noundef !5 ; 2 uses
  %i.mq = icmp ult i64 %i.mp, 1152921504606846976
  call void @llvm.assume(i1 %i.mq)
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.mp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr %i.mm, ptr %i.ap, align 8
  %.sroa.022.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.mm, ptr %.sroa.022.sroa.2.0..sroa_idx, align 8
  %.sroa.022.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.mn, ptr %.sroa.022.sroa.3.0..sroa_idx, align 8
  %.sroa.022.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.mr, ptr %.sroa.022.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  store ptr %i.av, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.mx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.nf = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.42.0..sroa_idx.i313 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.53.0..sroa_idx.i314 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.4.0..sroa_idx.i315 = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.5.0..sroa_idx.i316 = getelementptr inbounds nuw i8, ptr %i.d, i64 22
  %i.nh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.8.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.9.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %.sroa.10.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %.sroa.11.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %.sroa.42.0..sroa_idx.i334 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.53.0..sroa_idx.i335 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ni = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i336 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5.0..sroa_idx.i337 = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.nj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.no = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.np = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.4142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.nt = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.sroa.4150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.nv = load i8, ptr %i.nu, align 1, !range !285
  %i.nw = trunc nuw i8 %i.nv to i1
  %i.nx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  br label %bb.gm

bb.gm:                                            ; preds = %bb.hl, %bb.gl
  %.sroa.6.0 = phi ptr [ undef, %bb.gl ], [ %.sroa.6.1, %bb.hl ] ; 4 uses
  %.sroa.021.0 = phi i1 [ false, %bb.gl ], [ %.sroa.021.1, %bb.hl ] ; 3 uses
  %i.ny = invoke noundef align 8 ptr @_RINvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB6_8IntoIterRNtCsdfAJ7lwe7WW_14cargo_metadata7PackageENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1D_4find5checkBX_QNCNvMNtCsyoCoCcM3Qh_5xtask5testsNtB3d_8TestArgs9run_testss_0E0INtNtNtB1L_3ops12control_flow11ControlFlowBX_EEB3f_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.2.0..sroa_idx)
          to label %bb.gn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 7 uses

.body300:                                         ; preds = %.split.thread.loopexit, %.split.thread.loopexit.split-lp, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.hz, %bb.hj, %bb.hg, %bb.jq, %bb.io, %bb.il, %.body318, %bb.hc
  %.pn.pn = phi { ptr, i32 } [ %.pn413, %bb.jq ], [ %eh.lpad-body, %bb.io ], [ %i.or, %bb.hc ], [ %lpad.phi429, %.body318 ], [ %i.qq, %bb.il ], [ %i.ov, %bb.hj ], [ %i.ot, %bb.hg ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.pn, %bb.hz ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit420, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit423, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit435, %.split.thread.loopexit ], [ %lpad.loopexit.split-lp436, %.split.thread.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterRNtCsdfAJ7lwe7WW_14cargo_metadata7PackageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ap)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtCsdfAJ7lwe7WW_14cargo_metadata7PackageENCNvMNtCsyoCoCcM3Qh_5xtask5testsNtB2O_8TestArgs9run_testss_0EEB2Q_.exit unwind label %bb.eg

.loopexit:                                        ; preds = %bb.ie
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body300

.loopexit.split-lp.loopexit:                      ; preds = %bb.ho
  %lpad.loopexit420 = landingpad { ptr, i32 }
          cleanup
  br label %.body300

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.gm, %bb.go, %bb.hs, %bb.hb, %.noexc294, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask.exit.i299, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask.exit.i305, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsyoCoCcM3Qh_5xtask.exit.i, %.loopexit498
  %lpad.loopexit423 = landingpad { ptr, i32 }
          cleanup
  br label %.body300

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke523
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body300

bb.gn:                                            ; preds = %bb.gm
  %.not160 = icmp eq ptr %i.ny, null
  br i1 %.not160, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 128
  %i.oa = load ptr, ptr %i.nz, align 8, !nonnull !5, !noundef !5
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 136
  %i.oc = load i64, ptr %i.ob, align 8, !noundef !5
  %i.od = invoke { ptr, i64 } @_RNvMs16_NtCsgczF5crJ4sT_3std4pathNtB6_4Path6parent(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.oa, i64 noundef %i.oc)
          to label %bb.ha unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.gp:                                            ; preds = %bb.gn
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterRNtCsdfAJ7lwe7WW_14cargo_metadata7PackageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ap)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtCsdfAJ7lwe7WW_14cargo_metadata7PackageENCNvMNtCsyoCoCcM3Qh_5xtask5testsNtB2O_8TestArgs9run_testss_0EEB2Q_.exit291 unwind label %bb.gk

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtCsdfAJ7lwe7WW_14cargo_metadata7PackageENCNvMNtCsyoCoCcM3Qh_5xtask5testsNtB2O_8TestArgs9run_testss_0EEB2Q_.exit291: ; preds = %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br i1 %.sroa.021.0, label %bb.gu, label %bb.gq

bb.gq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtCsdfAJ7lwe7WW_14cargo_metadata7PackageENCNvMNtCsyoCoCcM3Qh_5xtask5testsNtB2O_8TestArgs9run_testss_0EEB2Q_.exit291
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgpSKRLfVQC3_8tempfile3dir7TempDirEECsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24) %i.as)
          to label %bb.gr unwind label %bb.ga

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsknFUbXuePIn_6camino11Utf8PathBufECsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24) %i.av)
          to label %bb.gs unwind label %bb.bg

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.gt

bb.gt:                                            ; preds = %bb.fm, %bb.gs
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std7process7CommandECsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(200) %i.cj)
          to label %bb.jr unwind label %bb.be

bb.gu:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtCsdfAJ7lwe7WW_14cargo_metadata7PackageENCNvMNtCsyoCoCcM3Qh_5xtask5testsNtB2O_8TestArgs9run_testss_0EEB2Q_.exit291, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtCsdfAJ7lwe7WW_14cargo_metadata7PackageENCNvMNtCsyoCoCcM3Qh_5xtask5testsNtB2O_8TestArgs9run_testss_0EEB2Q_.exit344
  %i.oe = load i8, ptr %i.nb, align 8, !range !22, !alias.scope !367, !noundef !5
  %i.of = icmp eq i8 %i.oe, 2
  br i1 %i.of, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgpSKRLfVQC3_8tempfile3dir7TempDirEECsyoCoCcM3Qh_5xtask.exit, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  invoke void @_RNvXs1_NtCsgpSKRLfVQC3_8tempfile3dirNtB5_7TempDirNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %bb.gy unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.og = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i.i = load i64, ptr %i.nc, align 8, !alias.scope !370, !noundef !5 ; 2 uses
  %i.oh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.oh, label %.body189, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %.val2.i.i = load ptr, ptr %i.as, align 8, !alias.scope !370, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef range(i64 1, 0) %.val3.i.i, i64 noundef 1) #13
  br label %.body189

bb.gy:                                            ; preds = %bb.gv
  %.val1.i.i = load i64, ptr %i.nc, align 8, !alias.scope !370, !noundef !5 ; 2 uses
  %i.oi = icmp eq i64 %.val1.i.i, 0
  br i1 %i.oi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgpSKRLfVQC3_8tempfile3dir7TempDirEECsyoCoCcM3Qh_5xtask.exit, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %.val.i.i = load ptr, ptr %i.as, align 8, !alias.scope !370, !nonnull !5, !noundef !5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #13
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgpSKRLfVQC3_8tempfile3dir7TempDirEECsyoCoCcM3Qh_5xtask.exit

bb.ha:                                            ; preds = %bb.go
  %i.oj = extractvalue { ptr, i64 } %i.od, 0      ; 3 uses
  %.not161 = icmp eq ptr %i.oj, null
  br i1 %.not161, label %.invoke523, label %bb.hb, !prof !282

bb.hb:                                            ; preds = %bb.ha
  %i.ok = extractvalue { ptr, i64 } %i.od, 1      ; 2 uses
  store ptr %i.oj, ptr %i.ao, align 8
  store i64 %i.ok, ptr %i.ms, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.ol = invoke { ptr, i64 } @_RINvMs4_CsknFUbXuePIn_6caminoNtB6_8Utf8Path3neweECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 10)
          to label %.noexc294 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc294:                                        ; preds = %bb.hb
  %i.om = extractvalue { ptr, i64 } %i.ol, 0
  %i.on = extractvalue { ptr, i64 } %i.ol, 1
  invoke void @_RINvMs16_NtCsgczF5crJ4sT_3std4pathNtB7_4Path4joinRBw_ECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.oj, i64 noundef %i.ok, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.om, i64 noundef %i.on)
          to label %_RINvMs4_CsknFUbXuePIn_6caminoNtB6_8Utf8Path4joinReECsyoCoCcM3Qh_5xtask.exit296 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.invoke523:                                       ; preds = %bb.hm, %bb.ha, %.noexc312, %bb.hp
  %i.oo = phi ptr [ @63, %.noexc312 ], [ @63, %bb.hp ], [ @62, %bb.hm ], [ @61, %bb.ha ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oo) #16
          to label %.cont524 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont524:                                         ; preds = %.invoke523
  unreachable

_RINvMs4_CsknFUbXuePIn_6caminoNtB6_8Utf8Path4joinReECsyoCoCcM3Qh_5xtask.exit296: ; preds = %.noexc294
  %i.op = load ptr, ptr %i.mt, align 8, !nonnull !5, !noundef !5
  %i.oq = load i64, ptr %i.mu, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RINvNtCsgczF5crJ4sT_3std2fs8metadataRNtNtB4_4path4PathECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.op, i64 noundef %i.oq)
          to label %bb.hd unwind label %bb.hc

bb.hc:                                            ; preds = %bb.he, %_RINvMs4_CsknFUbXuePIn_6caminoNtB6_8Utf8Path4joinReECsyoCoCcM3Qh_5xtask.exit296
  %i.or = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsknFUbXuePIn_6camino11Utf8PathBufECsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24) %i.an) #15
          to label %.body300 unwind label %bb.eg

bb.hd:                                            ; preds = %_RINvMs4_CsknFUbXuePIn_6caminoNtB6_8Utf8Path4joinReECsyoCoCcM3Qh_5xtask.exit296
  %i.os = load i64, ptr %i.x, align 8, !range !37, !noundef !5
  %.not.i = icmp eq i64 %i.os, -1
  br i1 %.not.i, label %bb.he, label %bb.hi

bb.he:                                            ; preds = %bb.hd
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.nx)
          to label %bb.hf unwind label %bb.hc

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask.exit.i299 unwind label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.ot = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body300 unwind label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.ou = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask.exit.i299: ; preds = %bb.hf
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsknFUbXuePIn_6camino11Utf8PathBufECsyoCoCcM3Qh_5xtask.exit303 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.hi:                                            ; preds = %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask.exit.i305 unwind label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.ov = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body300 unwind label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ow = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask.exit.i305: ; preds = %bb.hi
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsknFUbXuePIn_6camino11Utf8PathBufECsyoCoCcM3Qh_5xtask.exit309 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsknFUbXuePIn_6camino11Utf8PathBufECsyoCoCcM3Qh_5xtask.exit303: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask.exit.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.hl

bb.hl:                                            ; preds = %bb.jp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsknFUbXuePIn_6camino11Utf8PathBufECsyoCoCcM3Qh_5xtask.exit303
  %.sroa.6.1 = phi ptr [ %.sroa.6.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsknFUbXuePIn_6camino11Utf8PathBufECsyoCoCcM3Qh_5xtask.exit303 ], [ %.sroa.6.2, %bb.jp ]
  %.sroa.021.1 = phi i1 [ %.sroa.021.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsknFUbXuePIn_6camino11Utf8PathBufECsyoCoCcM3Qh_5xtask.exit303 ], [ %.sroa.021.2, %bb.jp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.gm

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsknFUbXuePIn_6camino11Utf8PathBufECsyoCoCcM3Qh_5xtask.exit309: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask.exit.i305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  br i1 %i.mc, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsknFUbXuePIn_6camino11Utf8PathBufECsyoCoCcM3Qh_5xtask.exit309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.ox = load i8, ptr %i.nb, align 8, !range !22, !noundef !5
  %.not166 = icmp eq i8 %i.ox, 2
  br i1 %.not166, label %.invoke523, label %bb.hs, !prof !282

bb.hn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsknFUbXuePIn_6camino11Utf8PathBufECsyoCoCcM3Qh_5xtask.exit309
  %i.oy = load ptr, ptr %i.mv, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.oz = load i64, ptr %i.mw, align 8, !noundef !5 ; 4 uses
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hp, %bb.hn
  %i.pa = phi i64 [ %i.oz, %bb.hn ], [ %i.pe, %bb.hp ]
  %i.pb = invoke { i64, i64 } @_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr7memrchr(i8 noundef 47, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.oy, i64 noundef %i.pa)
          to label %.noexc312 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc312:                                        ; preds = %bb.ho
  %i.pc = extractvalue { i64, i64 } %i.pb, 0
  %i.pd = trunc nuw i64 %i.pc to i1
  br i1 %i.pd, label %bb.hq, label %.invoke523

bb.hp:                                            ; preds = %bb.hr, %bb.hq
  %.not.i.i = icmp ugt i64 %i.pe, %i.oz
  br i1 %.not.i.i, label %.invoke523, label %bb.ho

bb.hq:                                            ; preds = %.noexc312
  %i.pe = extractvalue { i64, i64 } %i.pb, 1      ; 6 uses
  %or.cond17.i.not.i = icmp ult i64 %i.pe, %i.oz
  br i1 %or.cond17.i.not.i, label %bb.hr, label %bb.hp

bb.hr:                                            ; preds = %bb.hq
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.pe
  %lhsc.i = load i8, ptr %i.pf, align 1, !alias.scope !373, !noalias !376
  %i.pg = icmp eq i8 %lhsc.i, 47
  br i1 %i.pg, label %bb.ic, label %bb.hp

bb.hs:                                            ; preds = %bb.hm
  %i.ph = load ptr, ptr %i.as, align 8, !nonnull !5, !noundef !5
  %i.pi = load i64, ptr %i.nc, align 8, !noundef !5
  invoke void @_RINvMs16_NtCsgczF5crJ4sT_3std4pathNtB7_4Path4joinRNtNtCs40k4W9msRzi_5alloc6string6StringECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ph, i64 noundef %i.pi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ny)
          to label %bb.ht unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ht:                                            ; preds = %bb.hs
  %i.pj = load ptr, ptr %i.nd, align 8, !nonnull !5, !noundef !5
  %i.pk = load i64, ptr %i.ne, align 8, !noundef !5
  store ptr %i.pj, ptr %i.al, align 8
  store i64 %i.pk, ptr %i.nf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !378
  store i64 0, ptr %i.e, align 8, !noalias !378
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i313, align 8, !noalias !378
  store i64 0, ptr %.sroa.53.0..sroa_idx.i314, align 8, !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !378
  store i32 1610612768, ptr %i.ng, align 8, !noalias !378
  store i16 0, ptr %.sroa.4.0..sroa_idx.i315, align 4, !noalias !378
  store i16 0, ptr %.sroa.5.0..sroa_idx.i316, align 2, !noalias !378
  store ptr %i.e, ptr %i.d, align 8, !noalias !378
  store ptr @127, ptr %i.nh, align 8, !noalias !378
  %i.pl = invoke noundef zeroext i1 @_RNvXs1b_NtCsgczF5crJ4sT_3std4pathNtB6_7DisplayNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.hv unwind label %.loopexit425, !noalias !382

.loopexit425:                                     ; preds = %bb.ht
  %lpad.loopexit427 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

.loopexit.split-lp426:                            ; preds = %bb.hw
  %lpad.loopexit.split-lp428 = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.hu:                                            ; preds = %.loopexit.split-lp426, %.loopexit425
  %lpad.phi429 = phi { ptr, i32 } [ %lpad.loopexit427, %.loopexit425 ], [ %lpad.loopexit.split-lp428, %.loopexit.split-lp426 ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #15
          to label %.body318 unwind label %bb.hx, !noalias !382

bb.hv:                                            ; preds = %bb.ht
  br i1 %i.pl, label %bb.hw, label %bb.hy, !prof !282

bb.hw:                                            ; preds = %bb.hv
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #16
          to label %.noexc.i317 unwind label %.loopexit.split-lp426, !noalias !382

.noexc.i317:                                      ; preds = %bb.hw
  unreachable

bb.hx:                                            ; preds = %bb.hu
  %i.pm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #14, !noalias !382
  unreachable

.body318:                                         ; preds = %bb.hu
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(24) %i.ak) #15
          to label %.body300 unwind label %bb.eg

bb.hy:                                            ; preds = %bb.hv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !378
  invoke void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsyoCoCcM3Qh_5xtask.exit.i unwind label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.pn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %.body300 unwind label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.po = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsyoCoCcM3Qh_5xtask.exit.i: ; preds = %bb.hy
  invoke void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std3ffi6os_str8OsStringECsyoCoCcM3Qh_5xtask.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ik, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask.exit
  %.sroa.6.2 = phi ptr [ %.sroa.6.0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std4path7PathBufECsyoCoCcM3Qh_5xtask.exit ], [ %.sroa.6.3494, %bb.ik ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RINvMsk_NtCsgczF5crJ4sT_3std7processNtB6_7Command3newReECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 5)
          to label %bb.ip unwind label %.split

bb.ic:                                            ; preds = %bb.hr
  %i.pp = add nuw i64 %i.pe, 1                    ; 2 uses
  %i.pq = sub nuw i64 %i.oz, %i.pp                ; 4 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.pp ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.oy, ptr %i.aj, align 8
  store i64 %i.pe, ptr %i.mx, align 8
  br label %bb.id

bb.id:                                            ; preds = %bb.ih, %bb.ic
  %i.ps = phi i64 [ 0, %bb.ic ], [ %i.qh, %bb.ih ] ; 4 uses
  %i.pt = sub nuw i64 %i.pq, %i.ps                ; 5 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.ps ; 2 uses
  %i.pv = icmp samesign ult i64 %i.pt, 16
  br i1 %i.pv, label %.preheader.i.i.i, label %bb.ie

.preheader.i.i.i:                                 ; preds = %bb.id
  %.not.i.i.i = icmp eq i64 %i.pt, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ie:                                            ; preds = %bb.id
  %i.pw = invoke { i64, i64 } @_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr14memchr_aligned(i8 noundef 63, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.pu, i64 noundef range(i64 0, -9223372036854775808) %i.pt)
          to label %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i unwind label %.loopexit

._crit_edge.i.i.i:                                ; preds = %bb.if, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.pt, %bb.if ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.if ], [ 1, %.lr.ph.i.i.i ]
  %i.px = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.py = insertvalue { i64, i64 } %i.px, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.if
  %.sroa.01.05.i.i.i = phi i64 [ %i.qc, %bb.if ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pu, i64 %.sroa.01.05.i.i.i
  %i.qa = load i8, ptr %i.pz, align 1, !alias.scope !384, !noalias !389, !noundef !5
  %i.qb = icmp eq i8 %i.qa, 63
  br i1 %i.qb, label %._crit_edge.i.i.i, label %bb.if

bb.if:                                            ; preds = %.lr.ph.i.i.i
  %i.qc = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.qc, %i.pt
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i: ; preds = %bb.ie, %._crit_edge.i.i.i
  %.merged.i.i.i = phi { i64, i64 } [ %i.py, %._crit_edge.i.i.i ], [ %i.pw, %bb.ie ] ; 2 uses
  %i.qd = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.qe = trunc nuw i64 %i.qd to i1
  br i1 %i.qe, label %bb.ig, label %.loopexit498

bb.ig:                                            ; preds = %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i
  %i.qf = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 2 uses
  %i.qg = add nuw i64 %i.ps, 1
  %i.qh = add i64 %i.qg, %i.qf                    ; 4 uses
  %.not13.i.i = icmp ugt i64 %i.qh, %i.pq
  %i.qi = add i64 %i.qf, %i.ps                    ; 2 uses
  %or.cond.i.not.i = icmp ult i64 %i.qi, %i.pq
  br i1 %or.cond.i.not.i, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ii, %bb.ig
  br i1 %.not13.i.i, label %.loopexit498, label %bb.id

bb.ii:                                            ; preds = %bb.ig
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.qi
  %lhsc.i324 = load i8, ptr %i.qj, align 1, !alias.scope !394, !noalias !395
  %i.qk = icmp eq i8 %lhsc.i324, 63
  br i1 %i.qk, label %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECsyoCoCcM3Qh_5xtask.exit, label %bb.ih

_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECsyoCoCcM3Qh_5xtask.exit: ; preds = %bb.ii
  %i.ql = sub nuw i64 %i.pq, %i.qh
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.qh
  br label %.loopexit498

.loopexit498:                                     ; preds = %bb.ih, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i, %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECsyoCoCcM3Qh_5xtask.exit
  %.sroa.6.3494 = phi ptr [ %i.qm, %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECsyoCoCcM3Qh_5xtask.exit ], [ %.sroa.6.0, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i ], [ %.sroa.6.0, %bb.ih ] ; 3 uses
  %.sroa.0402.0492 = phi i1 [ false, %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECsyoCoCcM3Qh_5xtask.exit ], [ true, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i ], [ true, %bb.ih ]
  %i.qn = phi i64 [ %i.ql, %_RINvMNtCscI6d9CVNmLh_4core3stre10split_oncecECsyoCoCcM3Qh_5xtask.exit ], [ undef, %_RNvNtNtCscI6d9CVNmLh_4core5slice6memchr6memchr.exit.i.i ], [ undef, %bb.ih ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.aj, ptr %i.ag, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsyoCoCcM3Qh_5xtask, ptr %.sroa.4128.0..sroa_idx, align 8
  store ptr %i.ny, ptr %i.my, align 8
  store ptr @_RNvXsC_CsdfAJ7lwe7WW_14cargo_metadataNtB5_11PackageNameNtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCsyoCoCcM3Qh_5xtask, ptr %.sroa.4132.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noundef nonnull @64, ptr noundef nonnull %i.ag)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsyoCoCcM3Qh_5xtask.exit330 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsyoCoCcM3Qh_5xtask.exit330: ; preds = %.loopexit498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %.not165419 = icmp eq ptr %.sroa.6.3494, null
  %.not165 = select i1 %.sroa.0402.0492, i1 true, i1 %.not165419
  br i1 %.not165, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsyoCoCcM3Qh_5xtask.exit330
  %i.qo = load i64, ptr %i.mz, align 8, !alias.scope !396, !noundef !5 ; 3 uses
  %i.qp = icmp sgt i64 %i.qo, -1
  call void @llvm.assume(i1 %i.qp)
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef 1)
          to label %bb.im unwind label %bb.il

bb.ik:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsyoCoCcM3Qh_5xtask.exit, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsyoCoCcM3Qh_5xtask.exit330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.ib

bb.il:                                            ; preds = %bb.im, %bb.ij
  %i.qq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai) #15
          to label %.body300 unwind label %bb.eg

bb.im:                                            ; preds = %bb.ij
  %i.qr = load ptr, ptr %i.na, align 8, !alias.scope !396, !nonnull !5, !noundef !5
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.qo
  store i8 63, ptr %i.qs, align 1
  %i.qt = add nuw i64 %i.qo, 1
  store i64 %i.qt, ptr %i.mz, align 8, !alias.scope !396
  invoke void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai, i64 noundef %i.qn)
          to label %.noexc333 unwind label %bb.il

.noexc333:                                        ; preds = %bb.im
  %i.qu = load i64, ptr %i.mz, align 8, !alias.scope !399, !noundef !5 ; 3 uses
  %i.qv = icmp sgt i64 %i.qu, -1
  call void @llvm.assume(i1 %i.qv)
  %.not.i332 = icmp eq i64 %i.qn, 0
  br i1 %.not.i332, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsyoCoCcM3Qh_5xtask.exit, label %bb.in

bb.in:                                            ; preds = %.noexc333
  %i.qw = load ptr, ptr %i.na, align 8, !alias.scope !399, !nonnull !5, !noundef !5
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qx, ptr nonnull readonly align 1 %.sroa.6.3494, i64 %i.qn, i1 false)
  %.pre.i = load i64, ptr %i.mz, align 8, !alias.scope !399
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsyoCoCcM3Qh_5xtask.exit

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE15append_elementsCsyoCoCcM3Qh_5xtask.exit: ; preds = %.noexc333, %bb.in
  %i.qy = phi i64 [ %.pre.i, %bb.in ], [ %i.qu, %.noexc333 ]
  %i.qz = add i64 %i.qy, %i.qn
  store i64 %i.qz, ptr %i.mz, align 8, !alias.scope !399
  br label %bb.ik

bb.io:                                            ; preds = %.body
  br i1 %.sroa.038.3.lpad-body, label %bb.jq, label %.body300

.split.thread.loopexit:                           ; preds = %bb.jj
  %lpad.loopexit435 = landingpad { ptr, i32 }
          cleanup
  br label %.body300

.split.thread.loopexit.split-lp:                  ; preds = %bb.jl
  %lpad.loopexit.split-lp436 = landingpad { ptr, i32 }
          cleanup
  br label %.body300

.split:                                           ; preds = %bb.ib
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.jq

bb.ip:                                            ; preds = %bb.ib
  %i.ra = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5
  %i.rb = load i64, ptr %i.ms, align 8, !noundef !5
  %i.rc = invoke noundef nonnull align 8 ptr @_RINvMsk_NtCsgczF5crJ4sT_3std7processNtB6_7Command11current_dirRNtCsknFUbXuePIn_6camino8Utf8PathECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ra, i64 noundef %i.rb)
          to label %bb.ir unwind label %bb.iq

bb.iq:                                            ; preds = %bb.ji, %bb.jb, %bb.ja, %bb.iz, %bb.iy, %bb.ix, %bb.ir, %bb.ip
  %.sroa.038.3 = phi i1 [ false, %bb.ji ], [ true, %bb.ip ], [ false, %bb.jb ], [ false, %bb.ja ], [ false, %bb.iz ], [ true, %bb.iy ], [ true, %bb.ix ], [ true, %bb.ir ]
  %i.rd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.je, %bb.it, %bb.iq
  %.sroa.038.3.lpad-body = phi i1 [ true, %bb.it ], [ %.sroa.038.3, %bb.iq ], [ false, %bb.je ]
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.phi434, %bb.it ], [ %i.rd, %bb.iq ], [ %i.rp, %bb.je ] ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std7process7CommandECsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(200) %i.af) #15
          to label %bb.io unwind label %bb.eg

bb.ir:                                            ; preds = %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr @20, ptr %i.v, align 8
  store i64 3, ptr %.sroa.3.0..sroa_idx3, align 8
  store ptr @21, ptr %.sroa.4.0..sroa_idx5, align 8
  store i64 2, ptr %.sroa.5.0..sroa_idx7, align 8
  store ptr @22, ptr %.sroa.6.0..sroa_idx9, align 8
  store i64 10, ptr %.sroa.7.0..sroa_idx11, align 8
  store ptr @23, ptr %.sroa.8.0..sroa_idx13, align 8
  store i64 21, ptr %.sroa.9.0..sroa_idx15, align 8
  store ptr @24, ptr %.sroa.10.0..sroa_idx17, align 8
  store i64 2, ptr %.sroa.11.0..sroa_idx19, align 8
  %i.re = invoke noundef nonnull align 8 ptr @_RINvMsk_NtCsgczF5crJ4sT_3std7processNtB6_7Command4argsARej5_BR_ECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.rc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.v)
          to label %bb.is unwind label %bb.iq

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.rf = load ptr, ptr %i.cp, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !402
  store i64 0, ptr %i.c, align 8, !noalias !402
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i334, align 8, !noalias !402
  store i64 0, ptr %.sroa.53.0..sroa_idx.i335, align 8, !noalias !402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !402
  store i32 1610612768, ptr %i.ni, align 8, !noalias !402
  store i16 0, ptr %.sroa.4.0..sroa_idx.i336, align 4, !noalias !402
  store i16 0, ptr %.sroa.5.0..sroa_idx.i337, align 2, !noalias !402
  store ptr %i.c, ptr %i.b, align 8, !noalias !402
  store ptr @127, ptr %i.nj, align 8, !noalias !402
  %i.rg = invoke noundef zeroext i1 @_RNvXs0_CsyoCoCcM3Qh_5xtaskNtB5_7BackendNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.rf, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.iu unwind label %.loopexit430, !noalias !406

.loopexit430:                                     ; preds = %bb.is
  %lpad.loopexit432 = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

.loopexit.split-lp431:                            ; preds = %bb.iv
  %lpad.loopexit.split-lp433 = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.it:                                            ; preds = %.loopexit.split-lp431, %.loopexit430
  %lpad.phi434 = phi { ptr, i32 } [ %lpad.loopexit432, %.loopexit430 ], [ %lpad.loopexit.split-lp433, %.loopexit.split-lp431 ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #15
          to label %.body unwind label %bb.iw, !noalias !406

bb.iu:                                            ; preds = %bb.is
  br i1 %i.rg, label %bb.iv, label %bb.ix, !prof !282

bb.iv:                                            ; preds = %bb.iu
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #16
          to label %.noexc.i338 unwind label %.loopexit.split-lp431, !noalias !406

.noexc.i338:                                      ; preds = %bb.iv
  unreachable

bb.iw:                                            ; preds = %bb.it
  %i.rh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #14, !noalias !406
  unreachable

bb.ix:                                            ; preds = %bb.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !402
  %i.ri = invoke noundef nonnull align 8 ptr @_RINvMsk_NtCsgczF5crJ4sT_3std7processNtB6_7Command3argNtNtCs40k4W9msRzi_5alloc6string6StringECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.re, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ae)
          to label %bb.iy unwind label %bb.iq

bb.iy:                                            ; preds = %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr @25, ptr %i.ad, align 8
  store i64 2, ptr %i.nk, align 8
  store ptr @65, ptr %i.nl, align 8
  store i64 8, ptr %i.nm, align 8
  store ptr @66, ptr %i.nn, align 8
  store i64 5, ptr %i.no, align 8
  store ptr @67, ptr %i.np, align 8
  store i64 15, ptr %i.nq, align 8
  %i.rj = invoke noundef nonnull align 8 ptr @_RINvMsk_NtCsgczF5crJ4sT_3std7processNtB6_7Command4argsARej4_BR_ECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.ri, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.ad)
          to label %bb.iz unwind label %bb.iq

bb.iz:                                            ; preds = %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  %i.rk = invoke noundef nonnull align 8 ptr @_RINvMsk_NtCsgczF5crJ4sT_3std7processNtB6_7Command3envReNtNtCs40k4W9msRzi_5alloc6string6StringECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.rj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 12, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac)
          to label %bb.ja unwind label %bb.iq     ; 0 uses

bb.ja:                                            ; preds = %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ny, ptr %i.ab, align 8
  store ptr @_RNvXsC_CsdfAJ7lwe7WW_14cargo_metadataNtB5_11PackageNameNtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCsyoCoCcM3Qh_5xtask, ptr %.sroa.4138.0..sroa_idx, align 8
  store ptr %i.ao, ptr %i.nr, align 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtCsknFUbXuePIn_6camino8Utf8PathNtB6_7Display3fmtCsyoCoCcM3Qh_5xtask, ptr %.sroa.4142.0..sroa_idx, align 8
  store ptr %i.af, ptr %i.ns, align 8
  store ptr @_RNvXsl_NtCsgczF5crJ4sT_3std7processNtB5_7CommandNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.4146.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio6__print(ptr noundef nonnull @68, ptr noundef nonnull %i.ab)
          to label %bb.jb unwind label %bb.iq

bb.jb:                                            ; preds = %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvMsk_NtCsgczF5crJ4sT_3std7processNtB5_7Command6status(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.af)
          to label %bb.jc unwind label %bb.iq

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.rl = load i32, ptr %i.aa, align 8, !range !331, !alias.scope !408, !noalias !411, !noundef !5
  %i.rm = trunc nuw i32 %i.rl to i1
  br i1 %i.rm, label %bb.jd, label %bb.jh, !prof !282

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !413
  %i.rn = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ro = load ptr, ptr %i.rn, align 8, !alias.scope !408, !noalias !411, !nonnull !5, !noundef !5
  store ptr %i.ro, ptr %i.u, align 8, !noalias !413
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #16
          to label %bb.jf unwind label %bb.je, !noalias !408

bb.je:                                            ; preds = %bb.jd
  %i.rp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsgczF5crJ4sT_3std2io5error5ErrorECsyoCoCcM3Qh_5xtask(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u) #15
          to label %.body unwind label %bb.jg, !noalias !408

bb.jf:                                            ; preds = %bb.jd
  unreachable

bb.jg:                                            ; preds = %bb.je
  %i.rq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #14, !noalias !408
  unreachable

bb.jh:                                            ; preds = %bb.jc
  %i.rr = load i32, ptr %i.nt, align 4, !alias.scope !408, !noalias !411, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %.not167 = icmp eq i32 %i.rr, 0
  br i1 %.not167, label %bb.jj, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.ny, ptr %i.z, align 8
  store ptr @_RNvXsC_CsdfAJ7lwe7WW_14cargo_metadataNtB5_11PackageNameNtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCsyoCoCcM3Qh_5xtask, ptr %.sroa.4150.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsgczF5crJ4sT_3std2io5stdio7__eprint(ptr noundef nonnull @70, ptr noundef nonnull %i.z)
          to label %bb.jk unwind label %bb.iq

bb.jj:                                            ; preds = %bb.jk, %bb.jh
  %.sroa.021.2 = phi i1 [ true, %bb.jk ], [ %.sroa.021.0, %bb.jh ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsgczF5crJ4sT_3std7process7CommandECsyoCoCcM3Qh_5xtask(ptr noalias noundef align 8 dereferenceable(200) %i.af)
          to label %bb.jp unwind label %.split.thread.loopexit
end_hunk_0
