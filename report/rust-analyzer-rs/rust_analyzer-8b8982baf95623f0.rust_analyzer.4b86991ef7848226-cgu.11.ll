Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.11?download=true
inline.NumInlined: 4205
inline.NumDeleted: 1515
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_RNSNvYNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableBc_:bb.a
  %i.gh = phi ptr [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pre27.i.i.i.i, %bb.bt ], [ %.pre27.i.i.i.i, %bb.br ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2830
  %i.gi = load i8, ptr %i.fi, align 8, !range !50, !alias.scope !2828, !noalias !2827, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.gi, -1
  br i1 %.not.i.i.i.i, label %bb.bv, label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.gj = load ptr, ptr %i.o, align 8, !alias.scope !2829, !noalias !2827, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %.pre27.i.i.i.i, ptr nonnull %i.gj, i64 %i.fx), !noalias !2831
  %i.gk = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.gk, label %_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.thread7.i.i, label %bb.bs

_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.thread7.i.i: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2827
  br label %.loopexit349.i

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.420.0..sroa_idx.i.i.i.i, i64 39, i1 false), !noalias !2832
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %i.gl = load i8, ptr %i.fj, align 2, !range !6, !alias.scope !2828, !noalias !2827, !noundef !5
  %i.gm = load i8, ptr %i.fe, align 8, !range !38, !alias.scope !2828, !noalias !2827, !noundef !5
  %i.gn = load i8, ptr %i.fg, align 1, !range !38, !alias.scope !2828, !noalias !2827, !noundef !5
  store ptr %i.gh, ptr %i.n, align 8, !noalias !2830
  store i64 %i.fx, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2830
  store i8 %i.gi, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !2830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i.i.i, i64 39, i1 false), !noalias !2830
  store i8 %i.gm, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !2830
  store i8 %i.gn, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 1, !noalias !2830
  store i8 %i.gl, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 2, !noalias !2830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2830
  %i.go = load ptr, ptr %i.o, align 8, !alias.scope !2829, !noalias !2827, !nonnull !5, !noundef !5
  %i.gp = load i8, ptr %i.fk, align 8, !range !50, !alias.scope !2829, !noalias !2827, !noundef !5 ; 2 uses
  %.not26.i.i.i.i = icmp eq i8 %i.gp, -1
  br i1 %.not26.i.i.i.i, label %_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.425.0..sroa_idx.i.i.i.i, i64 39, i1 false), !noalias !2833
  br label %_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.i.i

_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.i.i: ; preds = %bb.bw, %bb.bv
  %i.gq = load i8, ptr %i.fl, align 2, !range !6, !alias.scope !2829, !noalias !2827, !noundef !5
  %i.gr = load i8, ptr %i.ff, align 8, !range !38, !alias.scope !2829, !noalias !2827, !noundef !5
  %i.gs = load i8, ptr %i.fh, align 1, !range !38, !alias.scope !2829, !noalias !2827, !noundef !5
  store ptr %i.go, ptr %i.m, align 8, !noalias !2830
  store i64 %i.fy, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !2830
  store i8 %i.gp, ptr %.sroa.511.0..sroa_idx.i.i.i.i, align 8, !noalias !2830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i.i.i, i64 39, i1 false), !noalias !2830
  store i8 %i.gr, ptr %.sroa.612.0..sroa_idx.i.i.i.i, align 8, !noalias !2830
  store i8 %i.gs, ptr %.sroa.713.0..sroa_idx.i.i.i.i, align 1, !noalias !2830
  store i8 %i.gq, ptr %.sroa.814.0..sroa_idx.i.i.i.i, align 2, !noalias !2830
  %i.gt = invoke noundef zeroext i1 @_RINvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevNtNtCscAsMj0W7j8b_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.m)
          to label %.noexc208.i unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc208.i:                                      ; preds = %_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2830
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2827
  br i1 %i.gt, label %.loopexit349.i, label %_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.thread.i.i

_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.thread.i.i: ; preds = %.noexc208.i, %bb.bp
  %i.gu = add nuw nsw i64 %.sroa.02.014.i.i, 1
  %i.gv = icmp eq ptr %i.fn, %i.ey
  br i1 %i.gv, label %.thread306.i, label %bb.bm

.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ca, %bb.ci, %bb.cn, %_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.i.i, %.noexc206.i, %.sink.split.i.i.i, %bb.bq, %bb.bo, %bb.cm
  %lpad.loopexit.split-lp323 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge192.i

.loopexit349.i:                                   ; preds = %.noexc208.i, %_RNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers12notification12run_flychecks_0s_0B9_.exit.thread7.i.i
  %i.gw = icmp ult i64 %.sroa.02.014.i.i, %i.ex
  call void @llvm.assume(i1 %i.gw)
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gy = load ptr, ptr %i.gx, align 8, !alias.scope !2817, !nonnull !5, !noundef !5
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ha = load i64, ptr %i.gz, align 8, !alias.scope !2817, !noundef !5 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 8 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ha, 72
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %.idx
  %i.hd = icmp eq i64 %i.ha, 0
  br i1 %i.hd, label %.thread306.i, label %.lr.ph

bb.bx:                                            ; preds = %.lr.ph
  %i.he = getelementptr inbounds nuw i8, ptr %i.hg, i64 72 ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.hc
  br i1 %i.hf, label %.thread306.i, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit349.i, %bb.bx
  %i.hg = phi ptr [ %i.he, %bb.bx ], [ %i.hb, %.loopexit349.i ] ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 64
  %i.hi = load i64, ptr %i.hh, align 8, !noalias !2834, !noundef !5
  %i.hj = icmp eq i64 %i.hi, %.sroa.02.014.i.i
  br i1 %i.hj, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck14FlycheckHandleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvNtNtBU_8handlers12notification12run_flychecks_0s0_0EBU_.exit.i, label %bb.bx

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck14FlycheckHandleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvNtNtBU_8handlers12notification12run_flychecks_0s0_0EBU_.exit.i: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  %.val.i = load ptr, ptr %i.es, align 8, !alias.scope !2817 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2835)
  %i.hk = load i64, ptr %i.az, align 8, !range !7, !alias.scope !2835, !noalias !2817, !noundef !5
  %.not.i210.i = icmp eq i64 %i.hk, -1
  br i1 %.not.i210.i, label %bb.ce, label %bb.by

bb.by:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck14FlycheckHandleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvNtNtBU_8handlers12notification12run_flychecks_0s0_0EBU_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !2836, !nonnull !5, !noundef !5 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.ho = load i64, ptr %i.hn, align 8, !noalias !2836, !noundef !5 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ho, 704
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.idx.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2837)
  %i.hq = icmp eq i64 %i.ho, 0
  br i1 %i.hq, label %_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.by
  %i.hr = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !alias.scope !2838, !noalias !2817, !nonnull !5
  %i.ht = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !2838, !noalias !2817
  %.sroa.4.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.12.0..sroa_idx268.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %bb.bz

bb.bz:                                            ; preds = %.backedge.i.i.i, %.lr.ph.i.i.i
  %i.hv = phi ptr [ %i.hm, %.lr.ph.i.i.i ], [ %i.hw, %.backedge.i.i.i ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 704 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2839)
  %i.hx = load i64, ptr %i.hv, align 8, !range !10, !alias.scope !2839, !noalias !2840, !noundef !5
  %i.hy = icmp eq i64 %i.hx, 1
  br i1 %i.hy, label %bb.ca, label %.backedge.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 8 ; 2 uses
  %i.ia = invoke noundef align 8 ptr @_RNvMs_NtCsdcPuHeDsw6v_13project_model12project_jsonNtB4_11ProjectJson14crate_by_label(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.hz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hs, i64 noundef %i.hu)
          to label %.noexc214.i unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc214.i:                                      ; preds = %bb.ca
  %.not.i.i.i211.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i211.i, label %.backedge.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %.noexc214.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = load ptr, ptr %i.ib, align 8, !noalias !2841, !nonnull !5, !noundef !5 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  %i.ie = load i64, ptr %i.id, align 8, !noalias !2841, !noundef !5
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.ic, i64 %i.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) @41, i64 32, i1 false), !noalias !2842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2843
  store ptr %i.ic, ptr %i.k, align 8, !alias.scope !2844, !noalias !2845
  store ptr %i.if, ptr %.sroa.4.0..sroa_idx1.i.i.i.i, align 8, !alias.scope !2844, !noalias !2845
  store ptr %i.hz, ptr %.sroa.5.0..sroa_idx2.i.i.i.i, align 8, !alias.scope !2844, !noalias !2845
  invoke void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifieruNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2D_8adapters3map3MapIB3E_INtNtB3I_10filter_map9FilterMapIB3E_INtNtNtB2F_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json3DepENCNvMs0_B5d_NtB5d_5Crate9iter_deps0ENCNCNvMs1_NtBT_12global_stateNtB6L_19GlobalStateSnapshot38all_workspace_dependencies_for_packages_00ENCB6D_s_0ENCINvXs8_NtB9_3setINtB8x_7HashSetBP_B1O_EIB2x_BP_E6extendB45_E0EEBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapINtNtB44_10filter_map9FilterMapIB40_INtNtNtB2T_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json3DepENCNvMs0_B5u_NtB5u_5Crate9iter_deps0ENCNCNvMs1_NtB18_12global_stateNtB72_19GlobalStateSnapshot38all_workspace_dependencies_for_packages_00ENCB6U_s_0EEB18_.exit.i.i.i.i unwind label %bb.cc, !noalias !2846

bb.cc:                                            ; preds = %bb.cb
  %i.ig = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifieruEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %.critedge192.i unwind label %bb.cd, !noalias !2846

bb.cd:                                            ; preds = %bb.cc
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2846
  unreachable

_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapINtNtB44_10filter_map9FilterMapIB40_INtNtNtB2T_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json3DepENCNvMs0_B5u_NtB5u_5Crate9iter_deps0ENCNCNvMs1_NtB18_12global_stateNtB72_19GlobalStateSnapshot38all_workspace_dependencies_for_packages_00ENCB6U_s_0EEB18_.exit.i.i.i.i: ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2843
  %.sroa.0265.0.copyload266.i = load ptr, ptr %i.l, align 8, !noalias !2847 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx268.i, i64 24, i1 false), !noalias !2847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2842
  %i.ii = icmp eq ptr %.sroa.0265.0.copyload266.i, null
  br i1 %i.ii, label %.backedge.i.i.i, label %_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i

.backedge.i.i.i:                                  ; preds = %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapINtNtB44_10filter_map9FilterMapIB40_INtNtNtB2T_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json3DepENCNvMs0_B5u_NtB5u_5Crate9iter_deps0ENCNCNvMs1_NtB18_12global_stateNtB72_19GlobalStateSnapshot38all_workspace_dependencies_for_packages_00ENCB6U_s_0EEB18_.exit.i.i.i.i, %.noexc214.i, %bb.bz
  %i.ij = icmp eq ptr %i.hw, %i.hp
  br i1 %i.ij, label %_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i, label %bb.bz

bb.ce:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck14FlycheckHandleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvNtNtBU_8handlers12notification12run_flychecks_0s0_0EBU_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !2836, !nonnull !5, !noundef !5 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.in = load i64, ptr %i.im, align 8, !noalias !2836, !noundef !5 ; 2 uses
  %.idx3.i.i = mul nuw nsw i64 %i.in, 704
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 %.idx3.i.i
  %i.ip = icmp eq i64 %i.in, 0
  br i1 %i.ip, label %_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i, label %.lr.ph.i2.i.i

.lr.ph.i2.i.i:                                    ; preds = %bb.ce
  %1 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.411.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.512.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %2 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.iq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i.i.i212.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.12.0..sroa_idx269.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %3 = insertelement <2 x ptr> poison, ptr %1, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %2, i64 1
  br label %bb.cf

bb.cf:                                            ; preds = %.backedge.i3.i.i, %.lr.ph.i2.i.i
  %i.ir = phi ptr [ %i.il, %.lr.ph.i2.i.i ], [ %i.is, %.backedge.i3.i.i ] ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 704 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2848)
  %i.it = load i64, ptr %i.ir, align 8, !range !10, !alias.scope !2848, !noalias !2849, !noundef !5
  switch i64 %i.it, label %default.unreachable [
    i64 0, label %bb.cg
    i64 2, label %bb.ch
    i64 1, label %.backedge.i3.i.i
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 40
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !range !7, !alias.scope !2848, !noalias !2849, !noundef !5
  %.not.i.i5.i.i = icmp eq i64 %i.iw, -1
  br i1 %.not.i.i5.i.i, label %.backedge.i3.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.iu, %bb.cg ], [ %i.iv, %bb.ch ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2850
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !alias.scope !2848, !noalias !2849, !nonnull !5, !noundef !5 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !alias.scope !2848, !noalias !2849, !noundef !5 ; 3 uses
  %i.jb = getelementptr inbounds nuw [448 x i8], ptr %i.iy, i64 %i.ja
  store ptr %i.iy, ptr %i.j, align 8, !noalias !2850
  store ptr %i.jb, ptr %.sroa.411.0..sroa_idx.i.i.i.i, align 8, !noalias !2850
  store i64 0, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !2850
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2850
  store ptr %.sroa.0.0.i.i.i.i, ptr %i.i, align 8, !noalias !2850
  store <2 x ptr> %4, ptr %i.iq, align 8, !noalias !2850
  %i.jc = invoke { i32, i32 } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB30_5ArenaB1P_E4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldTINtB30_3IdxB1P_ERB1P_EB4R_uINtNtNtBc_3ops12control_flow11ControlFlowB4R_ENCNvMs4_B1R_NtB1R_14CargoWorkspace8packages0NCINvNvB3M_4find5checkB4R_NCNCNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB7k_19GlobalStateSnapshot38all_workspace_dependencies_for_package00E0E0B5i_EB7m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i)
          to label %.noexc217.i unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc217.i:                                      ; preds = %bb.ci
  %i.jd = extractvalue { i32, i32 } %i.jc, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2850
  %i.je = trunc i32 %i.jd to i1
  br i1 %i.je, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.noexc217.i
  %i.jf = extractvalue { i32, i32 } %i.jc, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2850
  %i.jg = zext i32 %i.jf to i64                   ; 3 uses
  %i.jh = icmp ugt i64 %i.ja, %i.jg
  br i1 %i.jh, label %bb.cl, label %bb.cm

bb.ck:                                            ; preds = %.noexc217.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2850
  br label %.backedge.i3.i.i

bb.cl:                                            ; preds = %bb.cj
  %i.ji = getelementptr inbounds nuw [448 x i8], ptr %i.iy, i64 %i.jg
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 408 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !noalias !2851, !noundef !5
  %.not19.i.i.i.i = icmp eq ptr %i.jk, null
  br i1 %.not19.i.i.i.i, label %.backedge.i3.i.i, label %bb.cn

bb.cm:                                            ; preds = %bb.cj
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.jg, i64 noundef %i.ja, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #46
          to label %.noexc218.i unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc218.i:                                      ; preds = %bb.cm
  unreachable

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2852
  invoke void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.jj)
          to label %.noexc219.i unwind label %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc219.i:                                      ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @41, i64 32, i1 false), !noalias !2853
  store ptr %.sroa.0.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i212.i, align 8, !alias.scope !2854, !noalias !2855
  invoke void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifieruNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2D_8adapters3map3MapIB3E_IB3E_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNCNCNvMs1_NtBT_12global_stateNtB6Q_19GlobalStateSnapshot38all_workspace_dependencies_for_package0s_00ENCB6G_s_0ENCINvXs8_NtB9_3setINtB8D_7HashSetBP_B1O_EIB2x_BP_E6extendB45_E0EEBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
          to label %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapIB40_INtB6_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNCNCNvMs1_NtB18_12global_stateNtB6q_19GlobalStateSnapshot38all_workspace_dependencies_for_package0s_00ENCB6g_s_0EEB18_.exit.i.i.i.i unwind label %bb.co, !noalias !2856

bb.co:                                            ; preds = %.noexc219.i
  %i.jl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifieruEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.critedge192.i unwind label %bb.cp, !noalias !2856

bb.cp:                                            ; preds = %bb.co
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42, !noalias !2856
  unreachable

_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapIB40_INtB6_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNCNCNvMs1_NtB18_12global_stateNtB6q_19GlobalStateSnapshot38all_workspace_dependencies_for_package0s_00ENCB6g_s_0EEB18_.exit.i.i.i.i: ; preds = %.noexc219.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2852
  %.sroa.0265.0.copyload267.i = load ptr, ptr %i.h, align 8, !noalias !2857 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx269.i, i64 24, i1 false), !noalias !2857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2853
  %i.jn = icmp eq ptr %.sroa.0265.0.copyload267.i, null
  br i1 %i.jn, label %.backedge.i3.i.i, label %_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i

.backedge.i3.i.i:                                 ; preds = %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapIB40_INtB6_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNCNCNvMs1_NtB18_12global_stateNtB6q_19GlobalStateSnapshot38all_workspace_dependencies_for_package0s_00ENCB6g_s_0EEB18_.exit.i.i.i.i, %bb.cl, %bb.ck, %bb.ch, %bb.cf
  %i.jo = icmp eq ptr %i.is, %i.io
  br i1 %i.jo, label %_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i, label %bb.cf

_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i: ; preds = %.backedge.i.i.i, %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapINtNtB44_10filter_map9FilterMapIB40_INtNtNtB2T_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json3DepENCNvMs0_B5u_NtB5u_5Crate9iter_deps0ENCNCNvMs1_NtB18_12global_stateNtB72_19GlobalStateSnapshot38all_workspace_dependencies_for_packages_00ENCB6U_s_0EEB18_.exit.i.i.i.i, %.backedge.i3.i.i, %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapIB40_INtB6_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNCNCNvMs1_NtB18_12global_stateNtB6q_19GlobalStateSnapshot38all_workspace_dependencies_for_package0s_00ENCB6g_s_0EEB18_.exit.i.i.i.i, %bb.ce, %bb.by
  %i.jp = phi ptr [ null, %bb.ce ], [ %.sroa.0265.0.copyload267.i, %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapIB40_INtB6_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNCNCNvMs1_NtB18_12global_stateNtB6q_19GlobalStateSnapshot38all_workspace_dependencies_for_package0s_00ENCB6g_s_0EEB18_.exit.i.i.i.i ], [ null, %bb.by ], [ null, %.backedge.i3.i.i ], [ %.sroa.0265.0.copyload266.i, %_RINvXs7_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB6_7HashSetNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB2R_8adapters3map3MapINtNtB44_10filter_map9FilterMapIB40_INtNtNtB2T_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model12project_json3DepENCNvMs0_B5u_NtB5u_5Crate9iter_deps0ENCNCNvMs1_NtB18_12global_stateNtB72_19GlobalStateSnapshot38all_workspace_dependencies_for_packages_00ENCB6U_s_0EEB18_.exit.i.i.i.i ], [ null, %.backedge.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !2817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !noalias !2817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !2817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false), !noalias !2817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !2817
  store ptr %i.jp, ptr %i.aw, align 8, !noalias !2817
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.i, i64 24, i1 false), !noalias !2817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !2817
  %i.jq = load i64, ptr %i.bh, align 8, !range !7, !noalias !2817, !noundef !5
  %.not172.i = icmp eq i64 %i.jq, -1
  br i1 %.not172.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2817
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bh)
          to label %bb.cu unwind label %bb.cy

bb.cr:                                            ; preds = %_RNvMs1_NtCs6u1mgJOKDyY_13rust_analyzer12global_stateNtB5_19GlobalStateSnapshot38all_workspace_dependencies_for_package.exit.i
  store i64 -1, ptr %i.av, align 8, !noalias !2817
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cu, %bb.cr
  invoke void @_RNvMs2_NtCs6u1mgJOKDyY_13rust_analyzer8flycheckNtB5_14FlycheckHandle19restart_for_package(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.hg, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.ax, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.av)
          to label %bb.cv unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %.body200.i

bb.cu:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !2817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2817
  br label %bb.cs

bb.cv:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !2817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !2817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !2817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2817
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierEBF_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierEBF_.exit.i: ; preds = %bb.cv, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i199.i, %.thread296.i
  %.sroa.7.2.i = phi i64 [ %.sroa.02.014.i.i, %bb.cv ], [ %.sroa.7.1300.i, %.thread296.i ], [ %.sroa.3.0.i309.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i199.i ]
  %.sroa.0.2290.i = phi i64 [ 1, %bb.cv ], [ %.sroa.0.1289302.i, %.thread296.i ], [ %.sroa.0.0.i203310.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i199.i ]
  %.sroa.074.1.i = phi i8 [ 0, %bb.cv ], [ 1, %.thread296.i ], [ 1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i199.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !2817
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i unwind label %bb.cw

bb.cw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierEBF_.exit.i
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %.body220.i unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierEBF_.exit.i
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.dc

bb.cy:                                            ; preds = %bb.cq
  %i.ju = landingpad { ptr, i32 }
          cleanup
  %i.jv = icmp eq ptr %i.jp, null
  br i1 %i.jv, label %.noexc223.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifieruEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %.noexc223.i unwind label %bb.da

bb.da:                                            ; preds = %bb.gc, %bb.gb, %bb.ga, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body243.i, %.body246.i, %bb.df, %.critedge192.i, %.body200.i, %.critedge.i, %.noexc223.i, %bb.cz, %.body.i, %.body254.i
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #42
  unreachable

.noexc223.i:                                      ; preds = %bb.cz, %bb.cy
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck6TargetEEB11_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ax) #41
          to label %.critedge.i unwind label %bb.da

.critedge.i:                                      ; preds = %.noexc223.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ay) #41
          to label %.body200.i unwind label %bb.da

.body200.i:                                       ; preds = %.critedge192.i, %bb.db, %.critedge.i, %bb.ct, %bb.bj
  %.sroa.074.2.i = phi i8 [ 1, %.critedge192.i ], [ 1, %bb.db ], [ 1, %bb.bj ], [ 0, %.critedge.i ], [ 0, %bb.ct ]
  %.pn.pn.i = phi { ptr, i32 } [ %eh.lpad-body216.i, %.critedge192.i ], [ %i.jx, %bb.db ], [ %i.eq, %bb.bj ], [ %i.ju, %.critedge.i ], [ %i.jr, %bb.ct ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba) #41
          to label %.body220.i unwind label %bb.da

bb.db:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit.i199.i, %.thread296.i
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %.body200.i

.body220.i:                                       ; preds = %bb.dc, %.body200.i, %bb.cw
  %.sroa.074.3.i = phi i8 [ %.sroa.074.2.i, %.body200.i ], [ %.sroa.074.1.i, %bb.cw ], [ %.sroa.074.1.i, %bb.dc ]
  %.pn175.i = phi { ptr, i32 } [ %.pn.pn.i, %.body200.i ], [ %i.js, %bb.cw ], [ %i.jz, %bb.dc ] ; 2 uses
  %i.jy = trunc nuw i8 %.sroa.074.3.i to i1
  br i1 %i.jy, label %bb.df, label %.body.i

bb.dc:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %.body220.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9p4rgIae0RV_6camino11Utf8PathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2817
  %i.ka = trunc nuw i8 %.sroa.074.1.i to i1
  br i1 %i.ka, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.de, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2817
  br label %bb.bh

bb.de:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs9R0CJ7nmiec_5paths10AbsPathBufECs6u1mgJOKDyY_13rust_analyzer.exit.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck6TargetEEB11_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bb)
          to label %bb.dd unwind label %bb.aw

.critedge192.i:                                   ; preds = %.loopexit.split-lp337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.co, %bb.cc
end_hunk_0
