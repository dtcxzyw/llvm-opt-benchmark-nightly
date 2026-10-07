Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.07?download=true
inline.NumInlined: 3983
inline.NumDeleted: 1469
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request15handle_run_test:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.k:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.04.0112 = phi ptr [ %i.x, %.lr.ph ], [ %i.aj, %bb.p ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.0112, i64 704 ; 2 uses
  %i.ak = load i64, ptr %.sroa.04.0112, align 8, !range !13, !noundef !4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.o, label %bb.p

._crit_edge.loopexit:                             ; preds = %bb.p
  %.pre = load i64, ptr %i.t, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.am = phi i64 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.i ] ; 2 uses
  %i.an = icmp ult i64 %i.am, 72057594037927936
  call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.ap = shl nuw nsw i64 %i.am, 1
  store i64 %i.ap, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.aq = load i64, ptr %i.n, align 8, !range !6, !alias.scope !5620, !noundef !4
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleEEEB1y_.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleEEB1c_.exit.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleEEB1c_.exit.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleEEEB1y_.exit unwind label %bb.aq

bb.o:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.04.0112, i64 40 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.av = load i64, ptr %1, align 8, !range !6, !noundef !4
  %.not63 = icmp eq i64 %i.av, -1
  br i1 %.not63, label %bb.r, label %bb.q

bb.p:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtB4_6option6OptionReEEEEB1u_.exit77, %bb.k
  %.not71 = icmp eq ptr %i.aj, %i.aa
  br i1 %.not71, label %._crit_edge.loopexit, label %bb.k

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aw = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ax = load i64, ptr %i.ac, align 8, !noundef !4
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.ax
  invoke void @_RNvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENtCscFGNKo4Sl5v_9itertools9Itertools6uniqueCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.i, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ay)
          to label %bb.u unwind label %.loopexit

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.04.0112, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.04.0112, i64 56
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !4
  %i.bd = getelementptr inbounds nuw [448 x i8], ptr %i.ba, i64 %i.bc
  store ptr null, ptr %i.h, align 8
  store ptr null, ptr %.sroa.546.0..sroa_idx, align 8
  store ptr %i.ba, ptr %.sroa.748.0..sroa_idx, align 8
  store ptr %i.bd, ptr %.sroa.748.sroa.4.0..sroa.748.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %.sroa.748.sroa.5.0..sroa.748.0..sroa_idx.sroa_idx, align 8
  store ptr %i.au, ptr %.sroa.748.sroa.6.0..sroa.748.0..sroa_idx.sroa_idx, align 8
  store ptr %i.au, ptr %.sroa.748.sroa.7.0..sroa.748.0..sroa_idx.sroa_idx, align 8
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtCshzWfHUSfYae_4core6option6OptionReEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB23_4iter8adapters3map3MapINtNtB3e_7flatten7FlatMapINtNtB3e_6filter6FilterIB3a_IB3a_INtNtB3e_9enumerate9EnumerateINtNtNtB23_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model15cargo_workspace11PackageDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6J_5ArenaB5y_E4iter0ENCNvMs4_B5A_NtB5A_14CargoWorkspace8packages0ENCNvNtNtB16_8handlers7request16all_test_targets0EINtNtB3e_10filter_map9FilterMapIB58_INtB6J_3IdxNtB5A_10TargetDataEENCNCB8g_s_00ENCB8g_s_0ENCNvB8i_15handle_run_tests_0EE9from_iterB16_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.h)
          to label %bb.s unwind label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.r, %bb.u, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtCshzWfHUSfYae_4core6option6OptionReEEENtNtNtNtB1Y_4iter6traits8iterator8Iterator4nextB11_.exit.thread
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtB4_6option6OptionReEEEEB1u_.exit

.loopexit.split-lp:                               ; preds = %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtB4_6option6OptionReEEEEB1u_.exit

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s
  %i.be = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.bf = load i64, ptr %i.k, align 8, !range !19, !noundef !4
  %i.bg = load i64, ptr %i.af, align 8, !noundef !4 ; 3 uses
  %i.bh = icmp ult i64 %i.bg, 128102389400760776
  call void @llvm.assume(i1 %i.bh)
  %.idx113 = mul nuw nsw i64 %i.bg, 72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.be, ptr %i.g, align 8
  store ptr %i.be, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 %i.bf, ptr %.sroa.67.0..sroa_idx, align 8
  store ptr %i.bi, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bj = icmp eq i64 %i.bg, 0
  br i1 %i.bj, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtCshzWfHUSfYae_4core6option6OptionReEEENtNtNtNtB1Y_4iter6traits8iterator8Iterator4nextB11_.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtCshzWfHUSfYae_4core6option6OptionReEEENtNtNtNtB1Y_4iter6traits8iterator8Iterator4nextB11_.exit

bb.u:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  store ptr %i.au, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtCshzWfHUSfYae_4core6option6OptionReEEEINtB2_18SpecFromIterNestedB11_INtNtNtNtB23_4iter8adapters10filter_map9FilterMapINtNtCscFGNKo4Sl5v_9itertools11unique_impl6UniqueINtNtNtB23_5slice4iter4IterNtNtB6_6string6StringEENCNvNtNtB16_8handlers7request15handle_run_test0EE9from_iterB16_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.j)
          to label %bb.v unwind label %.loopexit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.t

.body80:                                          ; preds = %.thread108, %bb.ah, %bb.ap, %bb.x
  %.pn66.pn = phi { ptr, i32 } [ %.pn6697, %bb.ap ], [ %.pn.ph, %bb.x ], [ %i.bv, %.thread108 ], [ %i.cg, %bb.ah ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtCshzWfHUSfYae_4core6option6OptionReEEENtNtNtB1Y_3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtB4_6option6OptionReEEEEB1u_.exit unwind label %bb.j

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtCshzWfHUSfYae_4core6option6OptionReEEENtNtNtNtB1Y_4iter6traits8iterator8Iterator4nextB11_.exit: ; preds = %bb.t, %bb.aj
  %i.bk = phi ptr [ %i.cm, %bb.aj ], [ %i.be, %bb.t ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5621)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  store ptr %i.bl, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5621, !noalias !5622
  %.sroa.0.0.copyload = load i64, ptr %i.bk, align 8, !noalias !5621 ; 2 uses
  %.sroa.890.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %.sroa.890.0.copyload = load ptr, ptr %.sroa.890.0..sroa_idx, align 8, !noalias !5621
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !5621
  %.not64 = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not64, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtCshzWfHUSfYae_4core6option6OptionReEEENtNtNtNtB1Y_4iter6traits8iterator8Iterator4nextB11_.exit.thread, label %bb.w

bb.w:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtCshzWfHUSfYae_4core6option6OptionReEEENtNtNtNtB1Y_4iter6traits8iterator8Iterator4nextB11_.exit
  %.sroa.888.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.0.0.copyload, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.888.0..sroa_idx89, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.888.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bm = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  invoke void @_RNvMsa_NtCs6u1mgJOKDyY_13rust_analyzer6configNtB5_6Config18cargo_test_options(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(4640) %i.bn, i32 noundef 0, i32 undef)
          to label %bb.y unwind label %.body80.thread

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtCshzWfHUSfYae_4core6option6OptionReEEENtNtNtNtB1Y_4iter6traits8iterator8Iterator4nextB11_.exit.thread: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtCshzWfHUSfYae_4core6option6OptionReEEENtNtNtNtB1Y_4iter6traits8iterator8Iterator4nextB11_.exit, %bb.aj, %bb.t
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtCshzWfHUSfYae_4core6option6OptionReEEENtNtNtB1Y_3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtB4_6option6OptionReEEEEB1u_.exit77 unwind label %.loopexit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtB4_6option6OptionReEEEEB1u_.exit77: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtCshzWfHUSfYae_4core6option6OptionReEEENtNtNtNtB1Y_4iter6traits8iterator8Iterator4nextB11_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.p

bb.x:                                             ; preds = %bb.ao
  br i1 %.sroa.016.2.ph, label %bb.ap, label %.body80

.body80.thread:                                   ; preds = %bb.w
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.y:                                             ; preds = %bb.w
  %i.bp = invoke { ptr, i64 } @_RNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_14CargoWorkspace14workspace_root(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.au)
          to label %bb.aa unwind label %bb.z      ; 2 uses

bb.z:                                             ; preds = %bb.aa, %bb.y
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aa:                                            ; preds = %bb.y
  %i.br = extractvalue { ptr, i64 } %i.bp, 0
  %i.bs = extractvalue { ptr, i64 } %i.bp, 1
  %i.bt = invoke { ptr, i64 } @_RNvMs4_NtCsdcPuHeDsw6v_13project_model15cargo_workspaceNtB5_14CargoWorkspace16target_directory(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.au)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  %i.bu = invoke { i64, ptr } @_RNvXs4_NtCsM5evIHPibA_17crossbeam_channel7channelINtB5_6SenderNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner16CargoTestMessageENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB12_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah)
          to label %bb.ac unwind label %bb.an     ; 2 uses

.thread108:                                       ; preds = %bb.ac
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body80

bb.ac:                                            ; preds = %bb.ab
  %i.bw = extractvalue { ptr, i64 } %i.bt, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  %i.bx = extractvalue { ptr, i64 } %i.bt, 1
  %i.by = extractvalue { i64, ptr } %i.bu, 0
  %i.bz = extractvalue { i64, ptr } %i.bu, 1
  invoke void @_RNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11test_runnerNtB5_15CargoTestHandle3new(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.e, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.890.0.copyload, i64 %.sroa.9.0.copyload, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(208) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %i.bs, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bw, i64 %i.bx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.c, i64 noundef %i.by, ptr noundef %i.bz)
          to label %bb.ad unwind label %.thread108

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ca = load i64, ptr %i.e, align 8, !range !13, !noundef !4 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 2
  %i.cc = load ptr, ptr %.sroa.460.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.cb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtCshzWfHUSfYae_4core6option6OptionReEEENtNtNtB1Y_3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtB4_6option6OptionReEEEEB1u_.exit79 unwind label %.loopexit.split-lp

bb.af:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.8.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.561.0..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.ca, ptr %i.b, align 8
  store ptr %i.cc, ptr %.sroa.610.0..sroa_idx11, align 8
  %i.cd = load i64, ptr %i.t, align 8, !alias.scope !5623, !noalias !5624, !noundef !4 ; 3 uses
  %i.ce = load i64, ptr %i.l, align 8, !range !19, !alias.scope !5623, !noalias !5624, !noundef !4
  %i.cf = icmp eq i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.aj unwind label %bb.ah, !noalias !5624

bb.ah:                                            ; preds = %bb.ag
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.b) #43
          to label %.body80 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.aj:                                            ; preds = %bb.ag, %bb.af
  %i.ci = load ptr, ptr %i.s, align 8, !alias.scope !5623, !noalias !5624, !nonnull !4, !noundef !4
  %i.cj = getelementptr inbounds nuw [128 x i8], ptr %i.ci, i64 %i.cd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cj, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false)
  %i.ck = add i64 %i.cd, 1
  store i64 %i.ck, ptr %i.t, align 8, !alias.scope !5623, !noalias !5624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cl = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !5625, !noalias !5622, !nonnull !4, !noundef !4
  %i.cm = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !5625, !noalias !5622, !nonnull !4, !noundef !4 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.cl
  br i1 %i.cn, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtCshzWfHUSfYae_4core6option6OptionReEEENtNtNtNtB1Y_4iter6traits8iterator8Iterator4nextB11_.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtCshzWfHUSfYae_4core6option6OptionReEEENtNtNtNtB1Y_4iter6traits8iterator8Iterator4nextB11_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtB4_6option6OptionReEEEEB1u_.exit79: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtB4_6option6OptionReEEEEB1u_.exit79
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.am

bb.al:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtB4_6option6OptionReEEEEB1u_.exit79
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleEEB1c_.exit86 unwind label %bb.h

bb.am:                                            ; preds = %bb.ak
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleEEB1c_.exit86: ; preds = %bb.al, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleEEEB1y_.exit
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleEEEB1y_.exit ], [ %i.cc, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs6u1mgJOKDyY_13rust_analyzer3lsp3ext13RunTestParamsEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  ret ptr %.sroa.0.0

bb.an:                                            ; preds = %bb.ab
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #43
          to label %bb.ao unwind label %bb.j

bb.ao:                                            ; preds = %bb.an, %bb.z
  %.pn.ph = phi { ptr, i32 } [ %i.bq, %bb.z ], [ %i.cq, %bb.an ] ; 2 uses
  %.sroa.016.2.ph = phi i1 [ true, %bb.z ], [ false, %bb.an ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck12CargoOptionsEBF_(ptr noalias nofree noundef align 8 dereferenceable(208) %i.d) #43
          to label %bb.x unwind label %bb.j

bb.ap:                                            ; preds = %.body80.thread, %bb.x
  %.pn6697 = phi { ptr, i32 } [ %i.bo, %.body80.thread ], [ %.pn.ph, %bb.x ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.f) #43
          to label %.body80 unwind label %bb.j

bb.aq:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleEEB1c_.exit.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %bb.aq, %bb.m
  %eh.lpad-body74 = phi { ptr, i32 } [ %i.cr, %bb.aq ], [ %i.as, %bb.m ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %.body

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleEEEB1y_.exit: ; preds = %._crit_edge, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleEEB1c_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleEEB1c_.exit86

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner10TestTargetINtNtB4_6option6OptionReEEEEB1u_.exit: ; preds = %.loopexit, %.loopexit.split-lp, %.body80
  %.pn69 = phi { ptr, i32 } [ %.pn66.pn, %.body80 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6u1mgJOKDyY_13rust_analyzer11test_runner15CargoTestHandleEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #43
          to label %.body unwind label %bb.j

bb.ar:                                            ; preds = %.body
  resume { ptr, i32 } %.pn69.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request15handle_view_hir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(216) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.g = icmp ult i64 %i.f, 3
  br i1 %i.g, label %bb.c, label %.thread

.body:                                            ; preds = %bb.k, %bb.b, %bb.n
  %.pn = phi { ptr, i32 } [ %i.t, %bb.n ], [ %i.h, %bb.b ], [ %i.r, %bb.k ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures26TextDocumentPositionParamsECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(96) %2) #43
          to label %.body41 unwind label %bb.af

bb.b:                                             ; preds = %bb.ab, %bb.v, %bb.h, %bb.e, %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %bb.f, %bb.g, %bb.a, %bb.c
  store i64 2, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.i, align 8
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request15handle_view_hir10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.j, label %bb.d [
    i8 0, label %.thread
    i8 1, label %bb.e
    i8 2, label %bb.e
  ], !prof !16

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request15handle_view_hir10___CALLSITE)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.f
  %.sroa.05.0 = phi i8 [ %i.k, %bb.f ], [ %i.j, %bb.c ], [ %i.j, %bb.c ]
  %i.l = load ptr, ptr @_RNvNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request15handle_view_hir10___CALLSITE, align 8, !nonnull !4, !align !10, !noundef !4
  %i.m = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.l, i8 noundef %.sroa.05.0)
          to label %bb.g unwind label %bb.b

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %.thread, label %bb.e

bb.g:                                             ; preds = %bb.e
  br i1 %i.m, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr @_RNvNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request15handle_view_hir10___CALLSITE, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 1, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.o, ptr %i.p, align 8
  invoke void @_RNvMNtCsbDqbwph1Irx_7tracing4spanNtB2_4Span3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pr = load i64, ptr %i.c, align 8, !alias.scope !5629, !noalias !5630
  %.not.i = icmp eq i64 %.pr, 2
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
end_hunk_0
