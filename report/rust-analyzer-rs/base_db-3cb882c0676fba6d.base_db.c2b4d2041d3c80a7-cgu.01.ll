Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/base_db-3cb882c0676fba6d.base_db.c2b4d2041d3c80a7-cgu.01?download=true
inline.NumInlined: 422
inline.NumDeleted: 231
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMsk_NtCsgIpRO4v45SJ_7base_db5inputNtB5_17CrateGraphBuilder6extend:bb.a
  %.idx202 = mul nuw nsw i64 %i.aq, 240
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx202
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB24_.exit14.i, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i201, i64 240 ; 2 uses
  %i.au = add i32 %.sroa.7.0.i200, 1
  %i.av = icmp eq ptr %i.at, %i.ar
  br i1 %i.av, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB24_.exit14.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.h unwind label %bb.g, !noalias !294

.lr.ph:                                           ; preds = %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1K_8adapters9enumerateINtB2z_9EnumeratepEB1E_4fold9enumerateQBT_uNCINvNtB2B_3map8map_foldTjB3C_ETINtCsbq3eHDLgq0Z_8la_arena3IdxBT_EB3C_EuNCNvMsm_B4g_INtB4g_5ArenaBT_E8iter_mut0NCINvNvB1E_8for_each4callB4c_NCNvMsk_BV_NtBV_17CrateGraphBuilder6extend0E0E0E0EBX_.exit, %bb.e
  %.sroa.0.0.i201 = phi ptr [ %i.at, %bb.e ], [ %i.ao, %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1K_8adapters9enumerateINtB2z_9EnumeratepEB1E_4fold9enumerateQBT_uNCINvNtB2B_3map8map_foldTjB3C_ETINtCsbq3eHDLgq0Z_8la_arena3IdxBT_EB3C_EuNCNvMsm_B4g_INtB4g_5ArenaBT_E8iter_mut0NCINvNvB1E_8for_each4callB4c_NCNvMsk_BV_NtBV_17CrateGraphBuilder6extend0E0E0E0EBX_.exit ]
  %.sroa.7.0.i200 = phi i32 [ %i.au, %bb.e ], [ 0, %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1K_8adapters9enumerateINtB2z_9EnumeratepEB1E_4fold9enumerateQBT_uNCINvNtB2B_3map8map_foldTjB3C_ETINtCsbq3eHDLgq0Z_8la_arena3IdxBT_EB3C_EuNCNvMsm_B4g_INtB4g_5ArenaBT_E8iter_mut0NCINvNvB1E_8for_each4callB4c_NCNvMsk_BV_NtBV_17CrateGraphBuilder6extend0E0E0E0EBX_.exit ] ; 2 uses
  invoke fastcc void @_RNvNvMsk_NtCsgIpRO4v45SJ_7base_db5inputNtB7_17CrateGraphBuilder27crates_in_topological_order2go(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias nofree noundef align 8 dereferenceable(32) %i.l, ptr noalias nofree noundef align 8 dereferenceable(24) %i.m, i32 noundef %.sroa.7.0.i200)
          to label %bb.e unwind label %bb.f, !noalias !295

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB24_.exit14.i: ; preds = %bb.e, %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1K_8adapters9enumerateINtB2z_9EnumeratepEB1E_4fold9enumerateQBT_uNCINvNtB2B_3map8map_foldTjB3C_ETINtCsbq3eHDLgq0Z_8la_arena3IdxBT_EB3C_EuNCNvMsm_B4g_INtB4g_5ArenaBT_E8iter_mut0NCINvNvB1E_8for_each4callB4c_NCNvMsk_BV_NtBV_17CrateGraphBuilder6extend0E0E0E0EBX_.exit
  %.sroa.0.0.copyload = load i64, ptr %i.m, align 8, !noalias !293
  %.sroa.4.0.copyload = load ptr, ptr %i.al, align 8, !noalias !293 ; 4 uses
  %.sroa.5.0.copyload = load i64, ptr %i.am, align 8, !noalias !293 ; 2 uses
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %bb.i unwind label %.loopexit.split-lp54.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !294
  unreachable

bb.h:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEEEB1G_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #31
          to label %.body unwind label %bb.g, !noalias !294

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB24_.exit14.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) @14, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.ay = icmp ult i64 %.sroa.5.0.copyload, 2305843009213693952
  call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %.sroa.4.0.copyload, ptr %i.v, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store ptr %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  store ptr %i.az, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.be = icmp eq i64 %i.aj, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 93
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 92
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.bn = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  %i.bp = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 232
  br label %bb.j

bb.j:                                             ; preds = %bb.bf, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.br = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !296, !nonnull !7, !noundef !7
  %i.bs = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !296, !nonnull !7, !noundef !7 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, %i.br
  br i1 %i.bt, label %bb.l, label %bb.k

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.split.i, %.lr.ph.i.i.i.i, %.thread45, %bb.ac, %bb.aa, %bb.z, %bb.bf, %select.unfold.i.i, %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body35

.body35:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bc, %bb.af, %bb.ap
  %eh.lpad-body36 = phi { ptr, i32 } [ %.pn.pn.pn.i, %bb.ap ], [ %i.fk, %bb.bc ], [ %.pn.pn.i.i, %bb.af ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEEEB1X_.exit unwind label %bb.bg

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store ptr %i.bu, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !296
  %i.bv = load i32, ptr %i.bs, align 4, !noalias !296, !noundef !7 ; 2 uses
  %i.bw = zext i32 %i.bv to i64                   ; 3 uses
  %i.bx = load i64, ptr %i.ap, align 8, !noundef !7 ; 2 uses
  %i.by = icmp ugt i64 %i.bx, %i.bw
  br i1 %i.by, label %bb.s, label %bb.w

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEEEB1X_.exit24 unwind label %bb.m

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEEEB1X_.exit: ; preds = %.body35, %bb.p, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.m ], [ %i.cb, %bb.p ], [ %eh.lpad-body36, %.body35 ]
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEBP_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %.body unwind label %bb.bg

bb.m:                                             ; preds = %bb.l, %bb.n, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEEEB1X_.exit24
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEEEB1X_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEEEB1X_.exit24: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) @14, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCshzWfHUSfYae_4core6result6ResultTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCs9R0CJ7nmiec_5paths10AbsPathBufENtB1j_21ProcMacroLoadingErrorENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtNtNtB27_4iter6traits7collect12IntoIterator9into_iterB1l_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.o)
          to label %bb.n unwind label %bb.m

bb.n:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEEEB1X_.exit24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr %i.w, ptr %i.ca, align 8
  invoke void @_RINvXs1c_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB7_7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCshzWfHUSfYae_4core6result6ResultTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCs9R0CJ7nmiec_5paths10AbsPathBufENtB1B_21ProcMacroLoadingErrorENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtB2p_4iter6traits7collect12FromIteratorTB15_B2k_EE9from_iterINtNtNtB5r_8adapters3map3MapINtB7_8IntoIterB15_B2k_ENCNvMsk_B1B_NtB1B_17CrateGraphBuilder6extends3_0EEB1D_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.r)
          to label %bb.o unwind label %bb.m

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCshzWfHUSfYae_4core6result6ResultTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCs9R0CJ7nmiec_5paths10AbsPathBufENtB1l_21ProcMacroLoadingErrorEEENtNtNtB29_3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %3)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtB4_6result6ResultTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCs9R0CJ7nmiec_5paths10AbsPathBufENtB22_21ProcMacroLoadingErrorENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB24_.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEEEB1X_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtB4_6result6ResultTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCs9R0CJ7nmiec_5paths10AbsPathBufENtB22_21ProcMacroLoadingErrorENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB24_.exit: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input17CrateGraphBuilderEBF_.exit unwind label %bb.q

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtB4_6result6ResultTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCs9R0CJ7nmiec_5paths10AbsPathBufENtB22_21ProcMacroLoadingErrorENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB24_.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.q ], [ %.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input17CrateGraphBuilderEBF_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtB4_6result6ResultTNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCs9R0CJ7nmiec_5paths10AbsPathBufENtB22_21ProcMacroLoadingErrorENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEB24_.exit
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.s:                                             ; preds = %bb.k
  %i.ce = load ptr, ptr %i.an, align 8, !nonnull !7, !noundef !7
  %i.cf = getelementptr inbounds nuw [240 x i8], ptr %i.ce, i64 %i.bw ; 14 uses
  store ptr %i.cf, ptr %i.u, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !7 ; 2 uses
  %.idx = shl nuw nsw i64 %i.cj, 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !297)
  %i.cl = icmp eq i64 %i.cj, 0
  br i1 %i.cl, label %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutINtNtCsgIpRO4v45SJ_7base_db5input10DependencyINtCsbq3eHDLgq0Z_8la_arena3IdxNtBW_12CrateBuilderEEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsk_BW_NtBW_17CrateGraphBuilder6extends_0EBY_.exit.thread, label %.lr.ph.i

_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutINtNtCsgIpRO4v45SJ_7base_db5input10DependencyINtCsbq3eHDLgq0Z_8la_arena3IdxNtBW_12CrateBuilderEEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsk_BW_NtBW_17CrateGraphBuilder6extends_0EBY_.exit.thread: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !298
  br label %bb.ab

.lr.ph.i:                                         ; preds = %bb.s
  %i.cm = load i64, ptr %i.ba, align 8, !alias.scope !299, !noalias !300, !noundef !7
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = load i64, ptr %i.bc, align 8, !alias.scope !297 ; 2 uses
  %i.cp = load ptr, ptr %i.w, align 8, !alias.scope !297, !nonnull !7 ; 2 uses
  br i1 %i.cn, label %select.unfold.i.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCNvMsk_NtCsgIpRO4v45SJ_7base_db5inputNtB7_17CrateGraphBuilder6extends_0B9_.exit.i
  %.sroa.0.04.i = phi ptr [ %i.cq, %_RNCNvMsk_NtCsgIpRO4v45SJ_7base_db5inputNtB7_17CrateGraphBuilder6extends_0B9_.exit.i ], [ %i.ch, %.lr.ph.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 8 ; 3 uses
  %i.cs = invoke noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEEB27_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bb, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.cr)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc27:                                         ; preds = %.lr.ph.split.i
  %i.ct = lshr i64 %i.cs, 57
  %i.cu = trunc nuw nsw i64 %i.ct to i8
  %i.cv = insertelement <16 x i8> poison, i8 %i.cu, i64 0
  %i.cw = shufflevector <16 x i8> %i.cv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %.noexc27
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %.noexc27 ], [ %i.dn, %bb.v ]
  %.pn.i.i.i.i = phi i64 [ %i.cs, %.noexc27 ], [ %i.do, %bb.v ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.co ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.cx, align 1, !noalias !301 ; 2 uses
  %i.cy = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.cw
  %i.cz = bitcast <16 x i1> %i.cy to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.cz, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %bb.u
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.dm, %bb.u ], [ %i.cz, %bb.t ] ; 3 uses
  %i.da = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.db = zext nneg i16 %i.da to i64
  %i.dc = add i64 %.sroa.01.0.i.i.i.i.i, %i.db
  %i.dd = and i64 %i.dc, %i.co
  %i.de = sub nsw i64 0, %i.dd
  %i.df = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -8
  %i.dh = invoke noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtB2_10EquivalentBq_E10equivalentBY_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.cr, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.dg)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %.lr.ph.i.i.i.i
  br i1 %i.dh, label %_RNCNvMsk_NtCsgIpRO4v45SJ_7base_db5inputNtB7_17CrateGraphBuilder6extends_0B9_.exit.i, label %bb.u, !prof !12

._crit_edge.i.i.i.i:                              ; preds = %bb.u, %bb.t
  %i.di = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.dj = bitcast <16 x i1> %i.di to i16
  %i.dk = icmp eq i16 %i.dj, 0
  br i1 %i.dk, label %bb.v, label %select.unfold.i.i, !prof !8

bb.u:                                             ; preds = %.noexc28
  %i.dl = add i16 %.sroa.06.0.i31.i.i.i.i, -1
  %i.dm = and i16 %i.dl, %.sroa.06.0.i31.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.dm, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dn = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.do = add i64 %.sroa.01.0.i.i.i.i.i, %i.dn
  br label %bb.t

select.unfold.i.i:                                ; preds = %.lr.ph.i, %._crit_edge.i.i.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #33
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %select.unfold.i.i
  unreachable

_RNCNvMsk_NtCsgIpRO4v45SJ_7base_db5inputNtB7_17CrateGraphBuilder6extends_0B9_.exit.i: ; preds = %.noexc28
  %i.dp = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !noundef !7
  store i32 %i.dq, ptr %i.cr, align 8, !alias.scope !300, !noalias !297
  %i.dr = icmp eq ptr %i.cq, %i.ck
  br i1 %i.dr, label %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutINtNtCsgIpRO4v45SJ_7base_db5input10DependencyINtCsbq3eHDLgq0Z_8la_arena3IdxNtBW_12CrateBuilderEEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsk_BW_NtBW_17CrateGraphBuilder6extends_0EBY_.exit, label %.lr.ph.split.i

bb.w:                                             ; preds = %bb.k
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef %i.bx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #34
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  unreachable

_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutINtNtCsgIpRO4v45SJ_7base_db5input10DependencyINtCsbq3eHDLgq0Z_8la_arena3IdxNtBW_12CrateBuilderEEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsk_BW_NtBW_17CrateGraphBuilder6extends_0EBY_.exit: ; preds = %_RNCNvMsk_NtCsgIpRO4v45SJ_7base_db5inputNtB7_17CrateGraphBuilder6extends_0B9_.exit.i
  %.pr = load i64, ptr %i.ci, align 8             ; 4 uses
  %.pre = load ptr, ptr %i.cg, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !298
  store ptr %i.a, ptr %i.k, align 8, !noalias !302
  %i.ds = icmp samesign ult i64 %.pr, 2
  br i1 %i.ds, label %bb.ab, label %bb.y, !prof !303

bb.y:                                             ; preds = %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutINtNtCsgIpRO4v45SJ_7base_db5input10DependencyINtCsbq3eHDLgq0Z_8la_arena3IdxNtBW_12CrateBuilderEEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsk_BW_NtBW_17CrateGraphBuilder6extends_0EBY_.exit
  %i.dt = icmp samesign ult i64 %.pr, 21
  br i1 %i.dt, label %bb.aa, label %bb.z, !prof !12

bb.z:                                             ; preds = %bb.y
  invoke void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainINtNtCsgIpRO4v45SJ_7base_db5input10DependencyINtCsbq3eHDLgq0Z_8la_arena3IdxNtB12_12CrateBuilderEENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyB1I_NCNvMsk_B12_NtB12_17CrateGraphBuilder6extends0_0E0INtNtB2G_3vec3VecBZ_EEB14_(ptr noalias nofree noundef nonnull align 8 %.pre, i64 noundef range(i64 0, 576460752303423488) %.pr, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #29
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.y
  invoke void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtCsgIpRO4v45SJ_7base_db5input10DependencyINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1p_12CrateBuilderEENCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_11sort_by_keyB25_NCNvMsk_B1p_NtB1p_17CrateGraphBuilder6extends0_0E0EB1r_(ptr noalias nofree noundef nonnull align 8 %.pre, i64 noundef range(i64 0, 576460752303423488) %.pr, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutINtNtCsgIpRO4v45SJ_7base_db5input10DependencyINtCsbq3eHDLgq0Z_8la_arena3IdxNtBW_12CrateBuilderEEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsk_BW_NtBW_17CrateGraphBuilder6extends_0EBY_.exit.thread, %_RINvXs2Q_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_7IterMutINtNtCsgIpRO4v45SJ_7base_db5input10DependencyINtCsbq3eHDLgq0Z_8la_arena3IdxNtBW_12CrateBuilderEEENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMsk_BW_NtBW_17CrateGraphBuilder6extends_0EBY_.exit, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.du = load ptr, ptr %i.x, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.dv = load i64, ptr %i.z, align 8, !noundef !7
  %i.dw = getelementptr inbounds nuw [240 x i8], ptr %i.du, i64 %i.dv
  store ptr %i.du, ptr %i.t, align 8
  store ptr %i.dw, ptr %.sroa.410.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  store i64 %i.aj, ptr %i.bd, align 8
  br i1 %i.be, label %.thread45, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dx = invoke { i32, i32 } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB2J_5ArenaB1P_E4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB8_4takeINtB4n_4TakepEB3v_8try_fold5checkTINtB2J_3IdxB1P_ERB1P_EuINtNtNtBc_3ops12control_flow11ControlFlowB55_ENCINvNvB3v_8find_map5checkB54_B55_NCNvMsk_B1R_NtB1R_17CrateGraphBuilder6extends1_0E0E0IB5t_B5s_EEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.dy = extractvalue { i32, i32 } %i.dx, 0
  %i.dz = trunc i32 %i.dy to i1
  br i1 %i.dz, label %bb.ae, label %.thread45

bb.ae:                                            ; preds = %bb.ad
  %i.ea = extractvalue { i32, i32 } %i.dx, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bf

.thread45:                                        ; preds = %bb.ab, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !306
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  %i.ec = load i32, ptr %i.eb, align 8, !alias.scope !309, !noundef !7
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cf, i64 93
  %i.ee = load i8, ptr %i.ed, align 1, !range !14, !alias.scope !309, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !310
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCsgIpRO4v45SJ_7base_db5input10DependencyINtCsbq3eHDLgq0Z_8la_arena3IdxNtBI_12CrateBuilderEEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneBK_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %i.cf)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %.thread45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !310
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  invoke fastcc void @_RNvXs12_NtCsgIpRO4v45SJ_7base_db5inputNtB6_11CrateOriginNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ef)
          to label %bb.ah unwind label %bb.ag, !noalias !311

bb.af:                                            ; preds = %bb.ai, %bb.ag
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.ai ], [ %i.eg, %bb.ag ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtCsgIpRO4v45SJ_7base_db5input10DependencyINtCsbq3eHDLgq0Z_8la_arena3IdxNtB1b_12CrateBuilderEEEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #31
          to label %.body35 unwind label %bb.ao, !noalias !311

bb.ag:                                            ; preds = %.noexc34
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ah:                                            ; preds = %.noexc34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !310
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ei = invoke { ptr, i64 } @_RNvXse_NtCsbSS6DM8SDEO_5alloc5boxedINtB5_3BoxSIBy_eEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eh)
          to label %bb.ak unwind label %bb.aj, !noalias !311 ; 2 uses

bb.ai:                                            ; preds = %bb.am, %bb.aj
  %.pn.i.i = phi { ptr, i32 } [ %i.es, %bb.am ], [ %i.ej, %bb.aj ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input11CrateOriginEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #31
          to label %bb.af unwind label %bb.ao, !noalias !311

bb.aj:                                            ; preds = %bb.ah
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ak:                                            ; preds = %bb.ah
  %i.ek = extractvalue { ptr, i64 } %i.ei, 0      ; 2 uses
  %i.el = extractvalue { ptr, i64 } %i.ei, 1      ; 2 uses
  store ptr %i.ek, ptr %i.b, align 8, !noalias !310
  store i64 %i.el, ptr %i.bf, align 8, !noalias !310
  %i.em = getelementptr inbounds nuw i8, ptr %i.cf, i64 92
  %i.en = load i8, ptr %i.em, align 4, !range !15, !alias.scope !309, !noundef !7
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !309, !nonnull !7, !noundef !7 ; 2 uses
  %i.eq = atomicrmw add ptr %i.ep, i64 1 monotonic, align 8, !noalias !311
  %i.er = icmp slt i64 %i.eq, 0
  br i1 %i.er, label %bb.al, label %_RNvXs1C_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_12CrateBuilderEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB8_.exit.i, !prof !8

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #34
          to label %bb.an unwind label %bb.am, !noalias !311

bb.am:                                            ; preds = %bb.al
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSIBC_eEEECsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #31, !noalias !311
  br label %bb.ai

bb.an:                                            ; preds = %bb.al
  unreachable

bb.ao:                                            ; preds = %bb.ai, %bb.af
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !311
  unreachable

_RNvXs1C_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_12CrateBuilderEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB8_.exit.i: ; preds = %bb.ak
  store i32 %i.ec, ptr %i.bg, align 8, !alias.scope !307, !noalias !306
  store i8 %i.ee, ptr %i.bh, align 1, !alias.scope !307, !noalias !306
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !312
  store ptr %i.ek, ptr %i.bj, align 8, !alias.scope !307, !noalias !306
  store i64 %i.el, ptr %i.bk, align 8, !alias.scope !307, !noalias !306
  store i8 %i.en, ptr %i.bl, align 4, !alias.scope !307, !noalias !306
  store ptr %i.ep, ptr %i.bm, align 8, !alias.scope !307, !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !306
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  invoke fastcc void @_RNvXs1I_NtCsgIpRO4v45SJ_7base_db5inputNtB6_14ExtraCrateDataNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.eu)
          to label %bb.ar unwind label %bb.aq, !noalias !304

bb.ap:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4kMRW8zVVbM_3cfg10CfgOptionsECsgIpRO4v45SJ_7base_db.exit.i, %bb.aq
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4kMRW8zVVbM_3cfg10CfgOptionsECsgIpRO4v45SJ_7base_db.exit.i ], [ %i.ev, %bb.aq ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsgIpRO4v45SJ_7base_db5input9CrateDataINtCsbq3eHDLgq0Z_8la_arena3IdxNtBE_12CrateBuilderEEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.j) #31
          to label %.body35 unwind label %bb.az, !noalias !304

bb.aq:                                            ; preds = %_RNvXs1C_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_12CrateBuilderEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB8_.exit.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ar:                                            ; preds = %_RNvXs1C_NtCsgIpRO4v45SJ_7base_db5inputINtB6_9CrateDataINtCsbq3eHDLgq0Z_8la_arena3IdxNtB6_12CrateBuilderEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneB8_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !306
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cf, i64 168
  invoke void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ew)
          to label %bb.at unwind label %bb.as, !noalias !304

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4kMRW8zVVbM_3cfg10CfgOptionsECsgIpRO4v45SJ_7base_db.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input3EnvEBF_.exit.i, %bb.as
  %.pn.pn.i = phi { ptr, i32 } [ %i.ex, %bb.as ], [ %.pn.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input3EnvEBF_.exit.i ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input14ExtraCrateDataEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.i) #31
          to label %bb.ap unwind label %bb.az, !noalias !304

bb.as:                                            ; preds = %bb.ar
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4kMRW8zVVbM_3cfg10CfgOptionsECsgIpRO4v45SJ_7base_db.exit.i

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !306
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cf, i64 200
  invoke void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringBK_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ey)
          to label %bb.av unwind label %bb.au, !noalias !304

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsgIpRO4v45SJ_7base_db5input3EnvEBF_.exit.i: ; preds = %bb.ax, %bb.au
end_hunk_0
