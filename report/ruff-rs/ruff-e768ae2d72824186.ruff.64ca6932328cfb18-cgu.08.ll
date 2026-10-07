Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff-e768ae2d72824186.ruff.64ca6932328cfb18-cgu.08?download=true
inline.NumInlined: 1655
inline.NumDeleted: 838
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_1__9StructKeyNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionRNtNtB1B_7resolve11SearchPathsENCINvMs9_B3F_B1x_3newNtNtCs8yaccCKGz54_10ruff_graph2db8ModuleDbB3Y_B52_E0Es_0ECs8EvorvD8vmS_4ruff:bb.a
  store i64 %i.co, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !1077
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 178
  store i8 %i.cq, ptr %i.cu, align 2, !noalias !1077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.cf, ptr noundef nonnull align 8 dereferenceable(184) %i.d, i64 184, i1 false), !noalias !1077
  %i.cv = add nuw nsw i64 %i.bv, 1
  store atomic i64 %i.cv, ptr %i.bx release, align 8, !noalias !1077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionRNtNtB1e_7resolve11SearchPathsENCINvMs9_B3q_B1a_3newNtNtCs8yaccCKGz54_10ruff_graph2db8ModuleDbB3J_B4N_E0Es_0ECs8EvorvD8vmS_4ruff.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentEECs8EvorvD8vmS_4ruff.exit
  %i.cw = ptrtoint ptr %.sroa.524.0.copyload to i64 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionRNtNtB1e_7resolve11SearchPathsENCINvMs9_B3q_B1a_3newNtNtCs8yaccCKGz54_10ruff_graph2db8ModuleDbB3J_B4N_E0Es_0ECs8EvorvD8vmS_4ruff.exit
  store ptr %.promoted, ptr %4, align 8
  store i64 %i.cw, ptr %.sroa.524.0..sroa_idx, align 8
  store ptr %.sroa.825.0..sroa_idx.promoted, ptr %.sroa.825.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  %i.cx = load i64, ptr %i.bf, align 8, !noundef !3 ; 2 uses
  %i.cy = icmp ugt i64 %i.cx, %i.be
  br i1 %i.cy, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cz = load ptr, ptr %i.bg, align 8, !nonnull !3, !noundef !3
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.be ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !3, !noundef !3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !3, !align !4, !noundef !3
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 136
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !3, !nonnull !3
  %i.dg = tail call noundef nonnull align 8 ptr %i.df(ptr noundef nonnull %i.db), !inline_history !1061
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.di = atomicrmw add ptr %i.dh, i64 1 monotonic, align 8
  %i.dj = icmp slt i64 %i.di, 0
  br i1 %i.dj, label %bb.k, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionRNtNtB1D_7resolve11SearchPathsENCINvMs9_B3H_B1z_3newNtNtCs8yaccCKGz54_10ruff_graph2db8ModuleDbB40_B54_E0Es_0E0Cs8EvorvD8vmS_4ruff.exit

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.be, i64 noundef %i.cx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #34
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionRNtNtB1D_7resolve11SearchPathsENCINvMs9_B3H_B1z_3newNtNtCs8yaccCKGz54_10ruff_graph2db8ModuleDbB40_B54_E0Es_0E0Cs8EvorvD8vmS_4ruff.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.dh, ptr %i.b, align 8, !noalias !1079
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !1079
  %i.dk = tail call noundef align 8 dereferenceable_or_null(23552) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 23552, i64 noundef 8) #35, !noalias !1079 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.l, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentEECs8EvorvD8vmS_4ruff.exit, !prof !15

bb.l:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionRNtNtB1D_7resolve11SearchPathsENCINvMs9_B3H_B1z_3newNtNtCs8yaccCKGz54_10ruff_graph2db8ModuleDbB40_B54_E0Es_0E0Cs8EvorvD8vmS_4ruff.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 23552) #34
          to label %.noexc.i unwind label %bb.m, !noalias !1079

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.dm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = atomicrmw sub ptr %i.dh, i64 1 release, align 8, !noalias !1080
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.n, label %common.resume

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.o, !noalias !1079

bb.o:                                             ; preds = %bb.n
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !1079
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.u, %bb.m, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.m ], [ %i.dm, %bb.n ], [ %i.dw, %bb.u ], [ %i.du, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentEECs8EvorvD8vmS_4ruff.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionRNtNtB1D_7resolve11SearchPathsENCINvMs9_B3H_B1z_3newNtNtCs8yaccCKGz54_10ruff_graph2db8ModuleDbB40_B54_E0Es_0E0Cs8EvorvD8vmS_4ruff.exit
  store i32 %3, ptr %i.bh, align 8, !alias.scope !1079
  store i64 0, ptr %i.bi, align 8, !alias.scope !1079
  store ptr %i.dk, ptr %i.e, align 8, !alias.scope !1079
  store ptr @11, ptr %i.bj, align 8, !alias.scope !1079
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull align 8 dereferenceable(16) @4, i64 16, i1 false)
  store ptr %i.dh, ptr %i.bl, align 8, !alias.scope !1079
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dq = atomicrmw add ptr %i.bm, i64 1 monotonic, align 8, !noalias !1081 ; 5 uses
  %i.dr = icmp slt i64 %i.dq, 0
  br i1 %i.dr, label %bb.p, label %bb.q, !prof !15

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentEECs8EvorvD8vmS_4ruff.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.bc) #34
          to label %bb.t unwind label %bb.u, !noalias !1081

bb.q:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentEECs8EvorvD8vmS_4ruff.exit
  %i.ds = icmp ne i64 %i.dq, 0
  tail call void @llvm.assume(i1 %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.dt = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCs8EvorvD8vmS_4ruff(ptr noundef nonnull align 8 %i.bc, i64 noundef range(i64 1, -9223372036854775808) %i.dq)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCs8EvorvD8vmS_4ruff.exit unwind label %bb.r, !noalias !1082 ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #33
          to label %common.resume unwind label %bb.s, !noalias !1081

bb.s:                                             ; preds = %bb.r
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !1081
  unreachable

bb.t:                                             ; preds = %bb.p
  unreachable

bb.u:                                             ; preds = %bb.p
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #33
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCs8EvorvD8vmS_4ruff.exit: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dt, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  store atomic i8 1, ptr %i.dy release, align 8, !noalias !1082
  %i.dz = atomicrmw add ptr %i.bn, i64 1 release, align 8, !noalias !1082 ; 0 uses
  %i.ea = add nsw i64 %i.dq, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.eb = tail call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.ea) ; 0 uses
  %i.ec = icmp samesign ugt i64 %i.dq, 31
  br i1 %i.ec, label %bb.e, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionRNtNtB1e_7resolve11SearchPathsENCINvMs9_B3q_B1a_3newNtNtCs8yaccCKGz54_10ruff_graph2db8ModuleDbB3J_B4N_E0Es_0ECs8EvorvD8vmS_4ruff.exit
  %.sroa.524.0.extract.trunc.le = trunc i64 %i.cw to i32
  %.sroa.524.4.extract.shift.le = lshr i64 %i.cw, 32
  %.sroa.524.4.extract.trunc.le = trunc nuw i64 %.sroa.524.4.extract.shift.le to i32
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionRNtNtB1e_7resolve11SearchPathsENCINvMs9_B3q_B1a_3newNtNtCs8yaccCKGz54_10ruff_graph2db8ModuleDbB3J_B4N_E0Es_0ECs8EvorvD8vmS_4ruff.exit.thread
  %.sroa.7.053 = phi i32 [ %i.cc, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionRNtNtB1e_7resolve11SearchPathsENCINvMs9_B3q_B1a_3newNtNtCs8yaccCKGz54_10ruff_graph2db8ModuleDbB3J_B4N_E0Es_0ECs8EvorvD8vmS_4ruff.exit.thread ], [ %.sroa.524.0.extract.trunc.le, %.loopexit ]
  %.sroa.9.052 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionRNtNtB1e_7resolve11SearchPathsENCINvMs9_B3q_B1a_3newNtNtCs8yaccCKGz54_10ruff_graph2db8ModuleDbB3J_B4N_E0Es_0ECs8EvorvD8vmS_4ruff.exit.thread ], [ %.sroa.524.4.extract.trunc.le, %.loopexit ]
  %.sroa.10.051 = phi ptr [ %i.cf, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment19ResolverEnvironmentEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtCskLngH8kgpZI_15ruff_python_ast14python_version13PythonVersionRNtNtB1e_7resolve11SearchPathsENCINvMs9_B3q_B1a_3newNtNtCs8yaccCKGz54_10ruff_graph2db8ModuleDbB3J_B4N_E0Es_0ECs8EvorvD8vmS_4ruff.exit.thread ], [ %.sroa.825.0..sroa_idx.promoted, %.loopexit ]
  store i32 %.sroa.7.053, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.052, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.051, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RINvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtB5_17ArchivedHashTableINtNtB9_4util5EntryNtNtBb_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE19serialize_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3m_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB4n_4path7PathBufNtB2e_9FileCacheENCNvXs_NtNtNtBb_5impls3std4withINtNtBb_4with5MapKVNtB6g_8AsStringNtB6g_8IdentityEINtB6g_13SerializeWithINtB4h_7HashMapB56_B5r_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtBb_3ser10SerializerNtNtNtNtBb_4util5alloc11aligned_vec10AlignedVecNtNtNtB92_9allocator5alloc11ArenaHandleNtNtNtB92_7sharing5alloc5ShareENtB8v_5ErrorEE14serialize_with0ENCINvMs_NtB7_3mapINtBbU_15ArchivedHashMapB1I_B2c_E19serialize_from_iterB49_INtNtNtB5T_4core4with10RefWrapperB6w_B56_EIBd0_B6L_B5r_EBcZ_BdF_B8s_E0EINtB1s_12EntryAdapterBcZ_BdF_BcZ_BdF_EIB3m_B49_NCBbO_s_0EB8s_EB2g_(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef align 8 dereferenceable(80) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [96 x i8], align 8                ; 6 uses
  %i.f = alloca [96 x i8], align 8                ; 6 uses
  %i.g = add i64 %2, -1
  %.not = icmp ult i64 %i.g, %3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvXsk_Csht2POEgrkhf_6rancorNtB6_5ErrorNtB6_6Source3newNtNvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtBZ_17ArchivedHashTablepE19serialize_from_iter17InvalidLoadFactorECs8EvorvD8vmS_4ruff(i64 noundef %2, i64 noundef %3)
  br label %select.unfold

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB19_4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheENCNvXs_NtNtNtCsgYAxyi3ZRSt_4rkyv5impls3std4withINtNtB34_4with5MapKVNtB3F_8AsStringNtB3F_8IdentityEINtB3F_13SerializeWithINtB13_7HashMapB1S_B2d_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtB34_3ser10SerializerNtNtNtNtB34_4util5alloc11aligned_vec10AlignedVecNtNtNtB6s_9allocator5alloc11ArenaHandleNtNtNtB6s_7sharing5alloc5ShareENtB5V_5ErrorEE14serialize_with0ENCINvMs_NtNtNtB34_11collections11swiss_table3mapINtB9m_15ArchivedHashMapNtNtB34_6string14ArchivedStringNtB2f_17ArchivedFileCacheE19serialize_from_iterBW_INtNtNtB32_4core4with10RefWrapperB3W_B1S_EIBbI_B4b_B2d_EBbH_Bcn_B5S_E0ENtNtNtB9_6traits10exact_size17ExactSizeIterator3lenB2h_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) ; 6 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %_RNvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtB4_17ArchivedHashTableINtNtB8_4util5EntryNtNtBa_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE17capacity_from_lenB2f_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noundef i64 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB1a_4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheENCNvXs_NtNtNtCsgYAxyi3ZRSt_4rkyv5impls3std4withINtNtB35_4with5MapKVNtB3G_8AsStringNtB3G_8IdentityEINtB3G_13SerializeWithINtB14_7HashMapB1T_B2e_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtB35_3ser10SerializerNtNtNtNtB35_4util5alloc11aligned_vec10AlignedVecNtNtNtB6t_9allocator5alloc11ArenaHandleNtNtNtB6t_7sharing5alloc5ShareENtB5W_5ErrorEE14serialize_with0ENCINvMs_NtNtNtB35_11collections11swiss_table3mapINtB9n_15ArchivedHashMapNtNtB35_6string14ArchivedStringNtB2g_17ArchivedFileCacheE19serialize_from_iterBX_INtNtNtB33_4core4with10RefWrapperB3X_B1T_EIBbJ_B4c_B2e_EBbI_Bco_B5T_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBN_BcR_5count0EB2i_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef 0) ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %select.unfold, label %bb.ad

_RNvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtB4_17ArchivedHashTableINtNtB8_4util5EntryNtNtBa_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE17capacity_from_lenB2f_.exit: ; preds = %bb.c
  %i.l = mul i64 %i.h, %3
  %i.m = udiv i64 %i.l, %2
  %i.n = add i64 %i.h, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.m) ; 11 uses
  %.sroa.0.0.i.i.biased = add i64 %.sroa.0.0.i.i, 15 ; 2 uses
  %storemerge = and i64 %.sroa.0.0.i.i.biased, -16
  %i.o = or i64 %.sroa.0.0.i.i.biased, 15         ; 10 uses
  %i.p = icmp ugt i64 %.sroa.0.0.i.i, 576460752303423487 ; 3 uses
  %i.q = shl nuw nsw i64 %.sroa.0.0.i.i, 4        ; 3 uses
  %.sroa.5.0.i = select i1 %i.p, i64 undef, i64 %i.q
  %.sroa.01.0.i = select i1 %i.p, i64 0, i64 8
  br i1 %i.p, label %bb.e, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i, !prof !15

bb.e:                                             ; preds = %_RNvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtB4_17ArchivedHashTableINtNtB8_4util5EntryNtNtBa_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE17capacity_from_lenB2f_.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #34, !noalias !1131
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i: ; preds = %_RNvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtB4_17ArchivedHashTableINtNtB8_4util5EntryNtNtBa_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE17capacity_from_lenB2f_.exit
  %.not.i = icmp eq i64 %.sroa.0.0.i.i, 0         ; 4 uses
  br i1 %.not.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i
  %i.r = tail call { ptr, i64 } @_RNvXNtNtCsgYAxyi3ZRSt_4rkyv3ser9allocatorINtCsht2POEgrkhf_6rancor8StrategyINtB4_10SerializerNtNtNtNtB6_4util5alloc11aligned_vec10AlignedVecNtNtB2_5alloc11ArenaHandleNtNtNtB4_7sharing5alloc5ShareENtBG_5ErrorEINtB2_9AllocatorB37_E10push_allocCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 8, i64 noundef %i.q), !noalias !1131
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 8 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %select.unfold, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %xtraiter = and i64 %.sroa.0.0.i.i, 3           ; 3 uses
  %i.u = icmp ult i64 %.sroa.0.0.i.i, 4
  br i1 %i.u, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.sroa.0.0.i.i, 576460752303423484
  br label %.lr.ph.i.i

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.dg, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %i.v = phi i64 [ %i.w, %.lr.ph.i.i.epil ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.w = add nuw nsw i64 %i.v, 1
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.v
  store ptr null, ptr %i.x, align 8, !noalias !1132
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i, label %.lr.ph.i.i.epil, !llvm.loop !1088

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i
  %.sroa.02.0.i26 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i ], [ %i.s, %.lr.ph.i.i.epil ], [ %i.s, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i.loopexit.unr-lcssa ] ; 5 uses
  %i.y = tail call { ptr, i64 } @_RNvXNtNtCsgYAxyi3ZRSt_4rkyv3ser9allocatorINtCsht2POEgrkhf_6rancor8StrategyINtB4_10SerializerNtNtNtNtB6_4util5alloc11aligned_vec10AlignedVecNtNtB2_5alloc11ArenaHandleNtNtNtB4_7sharing5alloc5ShareENtBG_5ErrorEINtB2_9AllocatorB37_E10push_allocCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 1, i64 noundef %i.o), !noalias !1134
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 8 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_RNCINvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtB7_17ArchivedHashTableINtNtBb_4util5EntryNtNtBd_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE19serialize_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3o_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB4p_4path7PathBufNtB2g_9FileCacheENCNvXs_NtNtNtBd_5impls3std4withINtNtBd_4with5MapKVNtB6i_8AsStringNtB6i_8IdentityEINtB6i_13SerializeWithINtB4j_7HashMapB58_B5t_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtBd_3ser10SerializerNtNtNtNtBd_4util5alloc11aligned_vec10AlignedVecNtNtNtB94_9allocator5alloc11ArenaHandleNtNtNtB94_7sharing5alloc5ShareENtB8x_5ErrorEE14serialize_with0ENCINvMs_NtB9_3mapINtBbW_15ArchivedHashMapB1K_B2e_E19serialize_from_iterB4b_INtNtNtB5V_4core4with10RefWrapperB6y_B58_EIBd2_B6N_B5t_EBd1_BdH_B8u_E0EINtB1u_12EntryAdapterBd1_BdH_Bd1_BdH_EIB3o_B4b_NCBbQ_s_0EB8u_E0B2i_.exit.i, label %_RNvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtB4_17ArchivedHashTableINtNtB8_4util5EntryNtNtBa_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE11bucket_maskB2f_.exit.i.i.i.i

_RNvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtB4_17ArchivedHashTableINtNtB8_4util5EntryNtNtBa_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE11bucket_maskB2f_.exit.i.i.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.z, i8 -1, i64 %i.o, i1 false), !noalias !1135
  %i.ab = add nsw i64 %i.o, -1
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = lshr i64 -1, %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !noalias !1136
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !1136
  %.80..80..80..80..80..80..80..80..80..80..80..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.80..80..80..80..80..80..80..80..80..80..80..sroa_idx, i8 0, i64 16, i1 false), !alias.scope !1137, !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false), !noalias !1139
  %i.af = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1n_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.e), !noalias !1140 ; 2 uses
  %i.ag = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %.not.i.i62.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i62.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtB4_17ArchivedHashTableINtNtB8_4util5EntryNtNtBa_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE11bucket_maskB2f_.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.ai = sub nsw i64 %i.o, %.sroa.0.0.i.i
  br i1 %.not.i, label %.lr.ph.i.i.i.i.split.us, label %.lr.ph.i.i.i.i.split

.lr.ph.i.i.i.i.split.us:                          ; preds = %.lr.ph.i.i.i.i
  %i.aj = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1n_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ah), !noalias !1140
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0      ; 2 uses
  %.not.i.i.i.i.i.i.i.us = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.us, label %._crit_edge.i.i.i.i, label %.split.us

.split.us:                                        ; preds = %.lr.ph.i.i.i.i.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1141
  store ptr %i.ak, ptr %i.c, align 8, !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1142
  store i64 0, ptr %i.b, align 8, !noalias !1142
  call void @_RINvXs0_NtNtNtCsgYAxyi3ZRSt_4rkyv5impls4core4withINtB6_10RefWrapperNtNtBc_4with8AsStringNtNtCs2AWtUsOyxgP_3std4path7PathBufENtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtBc_4hash10FxHasher64ECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !1140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1141
  call void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #34, !noalias !1135
  unreachable

.lr.ph.i.i.i.i.split:                             ; preds = %.lr.ph.i.i.i.i, %bb.aa
  %.pn.i.i.i.i = phi { ptr, ptr } [ %i.cx, %bb.aa ], [ %i.af, %.lr.ph.i.i.i.i ]
  %i.al = phi ptr [ %i.cy, %bb.aa ], [ %i.ag, %.lr.ph.i.i.i.i ]
  %i.am = extractvalue { ptr, ptr } %.pn.i.i.i.i, 1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.an = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1n_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ah), !noalias !1140
  %i.ao = extractvalue { ptr, ptr } %i.an, 0      ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1141
  store ptr %i.ao, ptr %i.c, align 8, !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1142
  store i64 0, ptr %i.b, align 8, !noalias !1142
  call void @_RINvXs0_NtNtNtCsgYAxyi3ZRSt_4rkyv5impls4core4withINtB6_10RefWrapperNtNtBc_4with8AsStringNtNtCs2AWtUsOyxgP_3std4path7PathBufENtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtBc_4hash10FxHasher64ECs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !1140
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !1142, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1141
  %i.ap = lshr i64 %.val.i.i.i.i.i.i.i.i, 57
  %i.aq = trunc nuw nsw i64 %i.ap to i8           ; 2 uses
  %i.ar = urem i64 %.val.i.i.i.i.i.i.i.i, %.sroa.0.0.i.i ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ar
  %.sroa.0.0.copyload.i48.i33.i.i.i = load <16 x i8>, ptr %i.as, align 1, !noalias !1143
  %i.at = icmp slt <16 x i8> %.sroa.0.0.copyload.i48.i33.i.i.i, zeroinitializer
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not31.i34.i.i.i = icmp eq i16 %i.au, 0
  br i1 %.not31.i34.i.i.i, label %.preheader.i.i.i.i, label %.loopexit81.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.split, %bb.aa, %.lr.ph.i.i.i.i.split.us, %_RNvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtB4_17ArchivedHashTableINtNtB8_4util5EntryNtNtBa_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE11bucket_maskB2f_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false), !noalias !1139
  %i.av = icmp ugt i64 %i.h, 2305843009213693951  ; 3 uses
  %i.aw = shl nuw nsw i64 %i.h, 2                 ; 2 uses
  %.sroa.5.0.i.i.i.i.i = select i1 %i.av, i64 undef, i64 %i.aw
  %.sroa.01.0.i33.i.i.i.i = select i1 %i.av, i64 0, i64 4
  br i1 %i.av, label %bb.h, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i, !prof !15

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #34, !noalias !1144
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %i.ax = call { ptr, i64 } @_RNvXNtNtCsgYAxyi3ZRSt_4rkyv3ser9allocatorINtCsht2POEgrkhf_6rancor8StrategyINtB4_10SerializerNtNtNtNtB6_4util5alloc11aligned_vec10AlignedVecNtNtB2_5alloc11ArenaHandleNtNtNtB4_7sharing5alloc5ShareENtBG_5ErrorEINtB2_9AllocatorB37_E10push_allocCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 4, i64 noundef %i.aw), !noalias !1145
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0      ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.ab, label %bb.i

bb.i:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i26, i64 %i.q ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs0_NtNtCsgYAxyi3ZRSt_4rkyv4util7ser_vecINtB5_6SerVecINtNtNtB9_11collections4util13EntryResolverNtNtB9_6string14StringResolverNtNtCs8EvorvD8vmS_4ruff5cache17FileCacheResolverEE4pushB27_.exit.i.i.i.i.i.i, %bb.i
  %i.bb = phi i64 [ 0, %bb.i ], [ %i.cc, %_RNvMs0_NtNtCsgYAxyi3ZRSt_4rkyv4util7ser_vecINtB5_6SerVecINtNtNtB9_11collections4util13EntryResolverNtNtB9_6string14StringResolverNtNtCs8EvorvD8vmS_4ruff5cache17FileCacheResolverEE4pushB27_.exit.i.i.i.i.i.i ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %.sroa.02.0.i26, %bb.i ], [ %i.be, %_RNvMs0_NtNtCsgYAxyi3ZRSt_4rkyv4util7ser_vecINtB5_6SerVecINtNtNtB9_11collections4util13EntryResolverNtNtB9_6string14StringResolverNtNtCs8EvorvD8vmS_4ruff5cache17FileCacheResolverEE4pushB27_.exit.i.i.i.i.i.i ]
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.bc = phi ptr [ %i.be, %bb.l ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.j ] ; 4 uses
  %i.bd = icmp eq ptr %i.bc, %i.ba
  br i1 %i.bd, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.bc, align 8, !alias.scope !1146, !noalias !1147, !align !4, !noundef !3
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.k, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionINtNtNtCsgYAxyi3ZRSt_4rkyv11collections4util12EntryAdapterINtNtNtNtB1j_5impls4core4with10RefWrapperNtNtB1j_4with8AsStringNtNtCs2AWtUsOyxgP_3std4path7PathBufEIB29_NtB2P_8IdentityNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEB28_B3J_EEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRB1c_QNCNCNCNCINvMs_NtNtB1h_11swiss_table5tableINtB60_17ArchivedHashTableINtB1f_5EntryNtNtB1j_6string14ArchivedStringNtB45_17ArchivedFileCacheEE19serialize_from_iterINtNtNtB4Y_8adapters3map3MapIB8m_INtNtNtNtB3d_11collections4hash3map4IterB39_B43_ENCNvXs_NtNtB2f_3std4withINtB2P_5MapKVB2N_B3O_EINtB2P_13SerializeWithINtB8V_7HashMapB39_B43_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtB1j_3ser10SerializerNtNtNtNtB1j_4util5alloc11aligned_vec10AlignedVecNtNtNtBcq_9allocator5alloc11ArenaHandleNtNtNtBcq_7sharing5alloc5ShareENtBbT_5ErrorEE14serialize_with0ENCINvMs_NtB62_3mapINtBfk_15ArchivedHashMapB74_B7z_E19serialize_from_iterB8N_B28

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionINtNtNtCsgYAxyi3ZRSt_4rkyv11collections4util12EntryAdapterINtNtNtNtB1j_5impls4core4with10RefWrapperNtNtB1j_4with8AsStringNtNtCs2AWtUsOyxgP_3std4path7PathBufEIB29_NtB2P_8IdentityNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEB28_B3J_EEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRB1c_QNCNCNCNCINvMs_NtNtB1h_11swiss_table5tableINtB60_17ArchivedHashTableINtB1f_5EntryNtNtB1j_6string14ArchivedStringNtB45_17ArchivedFileCacheEE19serialize_from_iterINtNtNtB4Y_8adapters3map3MapIB8m_INtNtNtNtB3d_11collections4hash3map4IterB39_B43_ENCNvXs_NtNtB2f_3std4withINtB2P_5MapKVB2N_B3O_EINtB2P_13SerializeWithINtB8V_7HashMapB39_B43_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtB1j_3ser10SerializerNtNtNtNtB1j_4util5alloc11aligned_vec10AlignedVecNtNtNtBcq_9allocator5alloc11ArenaHandleNtNtNtBcq_7sharing5alloc5ShareENtBbT_5ErrorEE14serialize_with0ENCINvMs_NtB62_3mapINtBfk_15ArchivedHashMapB74_B7z_E19serialize_from_iterB8N_B28: ; preds = %bb.l
  %i.bg = call { i32, i32 } @_RNvXs0_NtNtCsgYAxyi3ZRSt_4rkyv11collections4utilINtB5_12EntryAdapterINtNtNtNtB9_5impls4core4with10RefWrapperNtNtB9_4with8AsStringNtNtCs2AWtUsOyxgP_3std4path7PathBufEIB15_NtB1K_8IdentityNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEB14_B2D_EINtNtB9_6traits9SerializeINtCsht2POEgrkhf_6rancor8StrategyINtNtB9_3ser10SerializerNtNtNtNtB9_4util5alloc11aligned_vec10AlignedVecNtNtNtB4J_9allocator5alloc11ArenaHandleNtNtNtB4J_7sharing5alloc5ShareENtB4c_5ErrorEE9serializeB31_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(80) %4), !noalias !1148 ; 2 uses
  %i.bh = extractvalue { i32, i32 } %i.bg, 0
  %i.bi = trunc i32 %i.bh to i1
  br i1 %i.bi, label %_RNCNCNCINvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtBb_17ArchivedHashTableINtNtBf_4util5EntryNtNtBh_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE19serialize_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3s_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB4t_4path7PathBufNtB2k_9FileCacheENCNvXs_NtNtNtBh_5impls3std4withINtNtBh_4with5MapKVNtB6m_8AsStringNtB6m_8IdentityEINtB6m_13SerializeWithINtB4n_7HashMapB5c_B5x_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtBh_3ser10SerializerNtNtNtNtBh_4util5alloc11aligned_vec10AlignedVecNtNtNtB98_9allocator5alloc11ArenaHandleNtNtNtB98_7sharing5alloc5ShareENtB8B_5ErrorEE14serialize_with0ENCINvMs_NtBd_3mapINtBc0_15ArchivedHashMapB1O_B2i_E19serialize_from_iterB4f_INtNtNtB5Z_4core4with10RefWrapperB6C_B5c_EIBd6_B6R_B5x_EBd5_BdL_B8y_E0EINtB1y_12EntryAdapterBd5_BdL_Bd5_BdL_EIB3s_B4f_NCBbU_s_0EB8y_E000B2m_.exit.i.i.i.i.i, label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.bj = call { i64, i64 } @_RINvYINtCsht2POEgrkhf_6rancor8StrategyINtNtCsgYAxyi3ZRSt_4rkyv3ser10SerializerNtNtNtNtBF_4util5alloc11aligned_vec10AlignedVecNtNtNtBD_9allocator5alloc11ArenaHandleNtNtNtBD_7sharing5alloc5ShareENtB6_5ErrorEINtNtBD_6writer9WriterExtB35_E9align_forINtNtNtBF_11collections4util5EntryNtNtBF_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEEB51_(ptr noalias noundef nonnull align 8 dereferenceable(80) %4), !noalias !1148
  %i.bk = extractvalue { i64, i64 } %i.bj, 0
  %i.bl = trunc nuw i64 %i.bk to i1
  br i1 %i.bl, label %_RNCNCNCINvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtBb_17ArchivedHashTableINtNtBf_4util5EntryNtNtBh_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE19serialize_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3s_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB4t_4path7PathBufNtB2k_9FileCacheENCNvXs_NtNtNtBh_5impls3std4withINtNtBh_4with5MapKVNtB6m_8AsStringNtB6m_8IdentityEINtB6m_13SerializeWithINtB4n_7HashMapB5c_B5x_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtBh_3ser10SerializerNtNtNtNtBh_4util5alloc11aligned_vec10AlignedVecNtNtNtB98_9allocator5alloc11ArenaHandleNtNtNtB98_7sharing5alloc5ShareENtB8B_5ErrorEE14serialize_with0ENCINvMs_NtBd_3mapINtBc0_15ArchivedHashMapB1O_B2i_E19serialize_from_iterB4f_INtNtNtB5Z_4core4with10RefWrapperB6C_B5c_EIBd6_B6R_B5x_EBd5_BdL_B8y_E0EINtB1y_12EntryAdapterBd5_BdL_Bd5_BdL_EIB3s_B4f_NCBbU_s_0EB8y_E000B2m_.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.n, %bb.s
  %.sroa.513.053.i.i.i.i.i.i = phi ptr [ %i.bm, %bb.s ], [ %i.ba, %bb.n ]
  %.sroa.5.052.i.i.i.i.i.i = phi i64 [ %.sroa.5.2.i.i.i.i.i.i, %bb.s ], [ %i.bb, %bb.n ] ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %.sroa.513.053.i.i.i.i.i.i, i64 -16 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !1148, !align !4, !noundef !3
  %.not34.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not34.i.i.i.i.i.i, label %bb.o, label %bb.p

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.s, %bb.n
  %i.bo = call noundef i64 @_RNvXs0_NtNtCsgYAxyi3ZRSt_4rkyv3ser6writerINtCsht2POEgrkhf_6rancor8StrategyINtB7_10SerializerNtNtNtNtB9_4util5alloc11aligned_vec10AlignedVecNtNtNtB7_9allocator5alloc11ArenaHandleNtNtNtB7_7sharing5alloc5ShareENtBG_5ErrorENtB5_10Positional3posCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %4), !noalias !1148
  %i.bp = call noundef zeroext i1 @_RNvXs2_NtNtCsgYAxyi3ZRSt_4rkyv3ser6writerINtCsht2POEgrkhf_6rancor8StrategyINtB7_10SerializerNtNtNtNtB9_4util5alloc11aligned_vec10AlignedVecNtNtNtB7_9allocator5alloc11ArenaHandleNtNtNtB7_7sharing5alloc5ShareENtBG_5ErrorEINtB5_6WriterB3j_E5writeCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(80) %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.o), !noalias !1148
  %i.bq = trunc i64 %i.bo to i32
  %spec.select48.i.i.i.i.i.i = zext i1 %i.bp to i32
  br label %_RNCNCNCINvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtBb_17ArchivedHashTableINtNtBf_4util5EntryNtNtBh_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE19serialize_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3s_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB4t_4path7PathBufNtB2k_9FileCacheENCNvXs_NtNtNtBh_5impls3std4withINtNtBh_4with5MapKVNtB6m_8AsStringNtB6m_8IdentityEINtB6m_13SerializeWithINtB4n_7HashMapB5c_B5x_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtBh_3ser10SerializerNtNtNtNtBh_4util5alloc11aligned_vec10AlignedVecNtNtNtB98_9allocator5alloc11ArenaHandleNtNtNtB98_7sharing5alloc5ShareENtB8B_5ErrorEE14serialize_with0ENCINvMs_NtBd_3mapINtBc0_15ArchivedHashMapB1O_B2i_E19serialize_from_iterB4f_INtNtNtB5Z_4core4with10RefWrapperB6C_B5c_EIBd6_B6R_B5x_EBd5_BdL_B8y_E0EINtB1y_12EntryAdapterBd5_BdL_Bd5_BdL_EIB3s_B4f_NCBbU_s_0EB8y_E000B2m_.exit.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.br = call noundef zeroext i1 @_RNvXs2_NtNtCsgYAxyi3ZRSt_4rkyv3ser6writerINtCsht2POEgrkhf_6rancor8StrategyINtB7_10SerializerNtNtNtNtB9_4util5alloc11aligned_vec10AlignedVecNtNtNtB7_9allocator5alloc11ArenaHandleNtNtNtB7_7sharing5alloc5ShareENtBG_5ErrorEINtB5_6WriterB3j_E5writeCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(80) %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 32), !noalias !1148
  br i1 %i.br, label %_RNCNCNCINvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtBb_17ArchivedHashTableINtNtBf_4util5EntryNtNtBh_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE19serialize_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3s_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB4t_4path7PathBufNtB2k_9FileCacheENCNvXs_NtNtNtBh_5impls3std4withINtNtBh_4with5MapKVNtB6m_8AsStringNtB6m_8IdentityEINtB6m_13SerializeWithINtB4n_7HashMapB5c_B5x_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtBh_3ser10SerializerNtNtNtNtBh_4util5alloc11aligned_vec10AlignedVecNtNtNtB98_9allocator5alloc11ArenaHandleNtNtNtB98_7sharing5alloc5ShareENtB8B_5ErrorEE14serialize_with0ENCINvMs_NtBd_3mapINtBc0_15ArchivedHashMapB1O_B2i_E19serialize_from_iterB4f_INtNtNtB5Z_4core4with10RefWrapperB6C_B5c_EIBd6_B6R_B5x_EBd5_BdL_B8y_E0EINtB1y_12EntryAdapterBd5_BdL_Bd5_BdL_EIB3s_B4f_NCBbU_s_0EB8y_E000B2m_.exit.i.i.i.i.i, label %bb.s

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.not35.i.i.i.i.i.i = icmp eq i64 %.sroa.5.052.i.i.i.i.i.i, 0
  br i1 %.not35.i.i.i.i.i.i, label %bb.q, label %bb.r, !prof !15

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #34, !noalias !1148
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bs = add i64 %.sroa.5.052.i.i.i.i.i.i, -1    ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !noalias !1148, !noundef !3
  %i.bv = call { i64, i64 } @_RINvYINtCsht2POEgrkhf_6rancor8StrategyINtNtCsgYAxyi3ZRSt_4rkyv3ser10SerializerNtNtNtNtBF_4util5alloc11aligned_vec10AlignedVecNtNtNtBD_9allocator5alloc11ArenaHandleNtNtNtBD_7sharing5alloc5ShareENtB6_5ErrorEINtNtBD_6writer9WriterExtB35_E15resolve_alignedINtNtNtBF_11collections4util12EntryAdapterINtNtNtNtBF_5impls4core4with10RefWrapperNtNtBF_4with8AsStringNtNtCs2AWtUsOyxgP_3std4path7PathBufEIB4J_NtB5o_8IdentityNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEB4I_B6h_EEB6F_(ptr noalias noundef nonnull align 8 dereferenceable(80) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bm, i32 noundef %i.bu), !noalias !1148
  %i.bw = extractvalue { i64, i64 } %i.bv, 0
  %i.bx = trunc nuw i64 %i.bw to i1
  br i1 %i.bx, label %_RNCNCNCINvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtBb_17ArchivedHashTableINtNtBf_4util5EntryNtNtBh_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE19serialize_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3s_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB4t_4path7PathBufNtB2k_9FileCacheENCNvXs_NtNtNtBh_5impls3std4withINtNtBh_4with5MapKVNtB6m_8AsStringNtB6m_8IdentityEINtB6m_13SerializeWithINtB4n_7HashMapB5c_B5x_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtBh_3ser10SerializerNtNtNtNtBh_4util5alloc11aligned_vec10AlignedVecNtNtNtB98_9allocator5alloc11ArenaHandleNtNtNtB98_7sharing5alloc5ShareENtB8B_5ErrorEE14serialize_with0ENCINvMs_NtBd_3mapINtBc0_15ArchivedHashMapB1O_B2i_E19serialize_from_iterB4f_INtNtNtB5Z_4core4with10RefWrapperB6C_B5c_EIBd6_B6R_B5x_EBd5_BdL_B8y_E0EINtB1y_12EntryAdapterBd5_BdL_Bd5_BdL_EIB3s_B4f_NCBbU_s_0EB8y_E000B2m_.exit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.sroa.5.2.i.i.i.i.i.i = phi i64 [ %.sroa.5.052.i.i.i.i.i.i, %bb.o ], [ %i.bs, %bb.r ]
  %i.by = icmp eq ptr %.sroa.02.0.i26, %i.bm
  br i1 %i.by, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.t:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionINtNtNtCsgYAxyi3ZRSt_4rkyv11collections4util12EntryAdapterINtNtNtNtB1j_5impls4core4with10RefWrapperNtNtB1j_4with8AsStringNtNtCs2AWtUsOyxgP_3std4path7PathBufEIB29_NtB2P_8IdentityNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEB28_B3J_EEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRB1c_QNCNCNCNCINvMs_NtNtB1h_11swiss_table5tableINtB60_17ArchivedHashTableINtB1f_5EntryNtNtB1j_6string14ArchivedStringNtB45_17ArchivedFileCacheEE19serialize_from_iterINtNtNtB4Y_8adapters3map3MapIB8m_INtNtNtNtB3d_11collections4hash3map4IterB39_B43_ENCNvXs_NtNtB2f_3std4withINtB2P_5MapKVB2N_B3O_EINtB2P_13SerializeWithINtB8V_7HashMapB39_B43_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtB1j_3ser10SerializerNtNtNtNtB1j_4util5alloc11aligned_vec10AlignedVecNtNtNtBcq_9allocator5alloc11ArenaHandleNtNtNtBcq_7sharing5alloc5ShareENtBbT_5ErrorEE14serialize_with0ENCINvMs_NtB62_3mapINtBfk_15ArchivedHashMapB74_B7z_E19serialize_from_iterB8N_B28
  %i.bz = icmp eq i64 %i.bb, %i.h
  br i1 %i.bz, label %bb.u, label %_RNvMs0_NtNtCsgYAxyi3ZRSt_4rkyv4util7ser_vecINtB5_6SerVecINtNtNtB9_11collections4util13EntryResolverNtNtB9_6string14StringResolverNtNtCs8EvorvD8vmS_4ruff5cache17FileCacheResolverEE4pushB27_.exit.i.i.i.i.i.i, !prof !15

bb.u:                                             ; preds = %bb.t
  call fastcc void @_RNvMs0_NtNtCsgYAxyi3ZRSt_4rkyv4util7ser_vecINtB5_6SerVecINtNtNtB9_11collections4util13EntryResolverNtNtB9_6string14StringResolverNtNtCs8EvorvD8vmS_4ruff5cache17FileCacheResolverEE12out_of_spaceB27_() #34, !noalias !1149
  unreachable

_RNvMs0_NtNtCsgYAxyi3ZRSt_4rkyv4util7ser_vecINtB5_6SerVecINtNtNtB9_11collections4util13EntryResolverNtNtB9_6string14StringResolverNtNtCs8EvorvD8vmS_4ruff5cache17FileCacheResolverEE4pushB27_.exit.i.i.i.i.i.i: ; preds = %bb.t
  %i.ca = extractvalue { i32, i32 } %i.bg, 1
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb
  store i32 %i.ca, ptr %i.cb, align 4, !noalias !1149
  %i.cc = add nuw nsw i64 %i.bb, 1
  br label %bb.j

_RNCNCNCINvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtBb_17ArchivedHashTableINtNtBf_4util5EntryNtNtBh_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE19serialize_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3s_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB4t_4path7PathBufNtB2k_9FileCacheENCNvXs_NtNtNtBh_5impls3std4withINtNtBh_4with5MapKVNtB6m_8AsStringNtB6m_8IdentityEINtB6m_13SerializeWithINtB4n_7HashMapB5c_B5x_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtBh_3ser10SerializerNtNtNtNtBh_4util5alloc11aligned_vec10AlignedVecNtNtNtB98_9allocator5alloc11ArenaHandleNtNtNtB98_7sharing5alloc5ShareENtB8B_5ErrorEE14serialize_with0ENCINvMs_NtBd_3mapINtBc0_15ArchivedHashMapB1O_B2i_E19serialize_from_iterB4f_INtNtNtB5Z_4core4with10RefWrapperB6C_B5c_EIBd6_B6R_B5x_EBd5_BdL_B8y_E0EINtB1y_12EntryAdapterBd5_BdL_Bd5_BdL_EIB3s_B4f_NCBbU_s_0EB8y_E000B2m_.exit.i.i.i.i.i: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionINtNtNtCsgYAxyi3ZRSt_4rkyv11collections4util12EntryAdapterINtNtNtNtB1j_5impls4core4with10RefWrapperNtNtB1j_4with8AsStringNtNtCs2AWtUsOyxgP_3std4path7PathBufEIB29_NtB2P_8IdentityNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEB28_B3J_EEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRB1c_QNCNCNCNCINvMs_NtNtB1h_11swiss_table5tableINtB60_17ArchivedHashTableINtB1f_5EntryNtNtB1j_6string14ArchivedStringNtB45_17ArchivedFileCacheEE19serialize_from_iterINtNtNtB4Y_8adapters3map3MapIB8m_INtNtNtNtB3d_11collections4hash3map4IterB39_B43_ENCNvXs_NtNtB2f_3std4withINtB2P_5MapKVB2N_B3O_EINtB2P_13SerializeWithINtB8V_7HashMapB39_B43_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtB1j_3ser10SerializerNtNtNtNtB1j_4util5alloc11aligned_vec10AlignedVecNtNtNtBcq_9allocator5alloc11ArenaHandleNtNtNtBcq_7sharing5alloc5ShareENtBbT_5ErrorEE14serialize_with0ENCINvMs_NtB62_3mapINtBfk_15ArchivedHashMapB74_B7z_E19serialize_from_iterB8N_B28, %bb.o, %bb.r, %bb.m, %._crit_edge.i.i.i.i.i.i
  %.sroa.7.0.i.i.i.i.i.i = phi i32 [ %i.bq, %._crit_edge.i.i.i.i.i.i ], [ undef, %bb.o ], [ undef, %bb.m ], [ undef, %bb.r ], [ undef, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionINtNtNtCsgYAxyi3ZRSt_4rkyv11collections4util12EntryAdapterINtNtNtNtB1j_5impls4core4with10RefWrapperNtNtB1j_4with8AsStringNtNtCs2AWtUsOyxgP_3std4path7PathBufEIB29_NtB2P_8IdentityNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEB28_B3J_EEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRB1c_QNCNCNCNCINvMs_NtNtB1h_11swiss_table5tableINtB60_17ArchivedHashTableINtB1f_5EntryNtNtB1j_6string14ArchivedStringNtB45_17ArchivedFileCacheEE19serialize_from_iterINtNtNtB4Y_8adapters3map3MapIB8m_INtNtNtNtB3d_11collections4hash3map4IterB39_B43_ENCNvXs_NtNtB2f_3std4withINtB2P_5MapKVB2N_B3O_EINtB2P_13SerializeWithINtB8V_7HashMapB39_B43_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtB1j_3ser10SerializerNtNtNtNtB1j_4util5alloc11aligned_vec10AlignedVecNtNtNtBcq_9allocator5alloc11ArenaHandleNtNtNtBcq_7sharing5alloc5ShareENtBbT_5ErrorEE14serialize_with0ENCINvMs_NtB62_3mapINtBfk_15ArchivedHashMapB74_B7z_E19serialize_from_iterB8N_B28 ]
  %.sroa.0.2.i.i.i.i.i.i = phi i32 [ %spec.select48.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ 1, %bb.o ], [ 1, %bb.m ], [ 1, %bb.r ], [ 1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionINtNtNtCsgYAxyi3ZRSt_4rkyv11collections4util12EntryAdapterINtNtNtNtB1j_5impls4core4with10RefWrapperNtNtB1j_4with8AsStringNtNtCs2AWtUsOyxgP_3std4path7PathBufEIB29_NtB2P_8IdentityNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheEB28_B3J_EEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRB1c_QNCNCNCNCINvMs_NtNtB1h_11swiss_table5tableINtB60_17ArchivedHashTableINtB1f_5EntryNtNtB1j_6string14ArchivedStringNtB45_17ArchivedFileCacheEE19serialize_from_iterINtNtNtB4Y_8adapters3map3MapIB8m_INtNtNtNtB3d_11collections4hash3map4IterB39_B43_ENCNvXs_NtNtB2f_3std4withINtB2P_5MapKVB2N_B3O_EINtB2P_13SerializeWithINtB8V_7HashMapB39_B43_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtB1j_3ser10SerializerNtNtNtNtB1j_4util5alloc11aligned_vec10AlignedVecNtNtNtBcq_9allocator5alloc11ArenaHandleNtNtNtBcq_7sharing5alloc5ShareENtBbT_5ErrorEE14serialize_with0ENCINvMs_NtB62_3mapINtBfk_15ArchivedHashMapB74_B7z_E19serialize_from_iterB8N_B28 ]
  %i.cd = call noundef zeroext i1 @_RNvXNtNtCsgYAxyi3ZRSt_4rkyv3ser9allocatorINtCsht2POEgrkhf_6rancor8StrategyINtB4_10SerializerNtNtNtNtB6_4util5alloc11aligned_vec10AlignedVecNtNtB2_5alloc11ArenaHandleNtNtNtB4_7sharing5alloc5ShareENtBG_5ErrorEINtB2_9AllocatorB37_E9pop_allocCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %i.ay, i64 noundef %.sroa.01.0.i33.i.i.i.i, i64 noundef %.sroa.5.0.i.i.i.i.i), !noalias !1145
  %spec.select34 = select i1 %i.cd, i32 1, i32 %.sroa.0.2.i.i.i.i.i.i
  br label %bb.ab

.loopexit.i.loopexit.i.i.i:                       ; preds = %.preheader.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.cj
  %.sroa.0.0.copyload.i48.i.i.i.i = load <16 x i8>, ptr %i.ce, align 1, !noalias !1143
  %i.cf = icmp slt <16 x i8> %.sroa.0.0.copyload.i48.i.i.i.i, zeroinitializer
  %i.cg = bitcast <16 x i1> %i.cf to i16          ; 2 uses
  %.not31.i.i.i.i = icmp eq i16 %i.cg, 0
  br i1 %.not31.i.i.i.i, label %.preheader.i.i.i.i.backedge, label %.loopexit81.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.g, %.preheader.i.i.i.i.backedge
  %.sroa.020.1.i.i.i.i = phi i64 [ %i.ch, %.preheader.i.i.i.i.backedge ], [ 0, %bb.g ]
  %.sroa.012.1.i.i.i.i = phi i64 [ %i.cj, %.preheader.i.i.i.i.backedge ], [ %i.ar, %bb.g ]
  %i.ch = add i64 %.sroa.020.1.i.i.i.i, 16        ; 2 uses
  %i.ci = add i64 %.sroa.012.1.i.i.i.i, %i.ch
  %i.cj = and i64 %i.ci, %i.ad                    ; 4 uses
  %i.ck = icmp ult i64 %i.cj, %storemerge
  br i1 %i.ck, label %.loopexit.i.loopexit.i.i.i, label %.preheader.i.i.i.i.backedge

.preheader.i.i.i.i.backedge:                      ; preds = %.preheader.i.i.i.i, %.loopexit.i.loopexit.i.i.i
  br label %.preheader.i.i.i.i

.loopexit81.i.i.i.i:                              ; preds = %.loopexit.i.loopexit.i.i.i, %bb.g
  %.sroa.012.0.i.lcssa.i.i.i = phi i64 [ %i.ar, %bb.g ], [ %i.cj, %.loopexit.i.loopexit.i.i.i ]
  %.lcssa27.i.i.i = phi i16 [ %i.au, %bb.g ], [ %i.cg, %.loopexit.i.loopexit.i.i.i ]
  %i.cl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa27.i.i.i, i1 true)
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = add nuw i64 %.sroa.012.0.i.lcssa.i.i.i, %i.cm
  %i.co = urem i64 %i.cn, %.sroa.0.0.i.i          ; 6 uses
  %i.cp = icmp ult i64 %i.co, %i.o
  br i1 %i.cp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.loopexit81.i.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.co
  store i8 %i.aq, ptr %i.cq, align 1, !noalias !1135
  %i.cr = icmp ult i64 %i.co, %i.ai
  br i1 %i.cr, label %bb.x, label %bb.aa

bb.w:                                             ; preds = %.loopexit81.i.i.i.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.co, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #34, !noalias !1135
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cs = add nuw nsw i64 %i.co, %.sroa.0.0.i.i   ; 3 uses
  %i.ct = icmp ult i64 %i.cs, %i.o
  br i1 %i.ct, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cu = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.cs
  store i8 %i.aq, ptr %i.cu, align 1, !noalias !1135
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #34, !noalias !1135
  unreachable

bb.aa:                                            ; preds = %bb.v, %bb.y
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.02.0.i26, i64 %i.co ; 2 uses
  store ptr %i.al, ptr %i.cv, align 8, !noalias !1135
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.am, ptr %i.cw, align 8, !noalias !1135
  %i.cx = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterNtNtCs2AWtUsOyxgP_3std4path7PathBufNtNtCs8EvorvD8vmS_4ruff5cache9FileCacheENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1n_(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.e), !noalias !1140 ; 2 uses
  %i.cy = extractvalue { ptr, ptr } %i.cx, 0      ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.split

bb.ab:                                            ; preds = %_RNCNCNCINvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtBb_17ArchivedHashTableINtNtBf_4util5EntryNtNtBh_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE19serialize_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3s_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB4t_4path7PathBufNtB2k_9FileCacheENCNvXs_NtNtNtBh_5impls3std4withINtNtBh_4with5MapKVNtB6m_8AsStringNtB6m_8IdentityEINtB6m_13SerializeWithINtB4n_7HashMapB5c_B5x_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtBh_3ser10SerializerNtNtNtNtBh_4util5alloc11aligned_vec10AlignedVecNtNtNtB98_9allocator5alloc11ArenaHandleNtNtNtB98_7sharing5alloc5ShareENtB8B_5ErrorEE14serialize_with0ENCINvMs_NtBd_3mapINtBc0_15ArchivedHashMapB1O_B2i_E19serialize_from_iterB4f_INtNtNtB5Z_4core4with10RefWrapperB6C_B5c_EIBd6_B6R_B5x_EBd5_BdL_B8y_E0EINtB1y_12EntryAdapterBd5_BdL_Bd5_BdL_EIB3s_B4f_NCBbU_s_0EB8y_E000B2m_.exit.i.i.i.i.i, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi i32 [ undef, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i, %_RNCNCNCINvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtBb_17ArchivedHashTableINtNtBf_4util5EntryNtNtBh_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE19serialize_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3s_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB4t_4path7PathBufNtB2k_9FileCacheENCNvXs_NtNtNtBh_5impls3std4withINtNtBh_4with5MapKVNtB6m_8AsStringNtB6m_8IdentityEINtB6m_13SerializeWithINtB4n_7HashMapB5c_B5x_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtBh_3ser10SerializerNtNtNtNtBh_4util5alloc11aligned_vec10AlignedVecNtNtNtB98_9allocator5alloc11ArenaHandleNtNtNtB98_7sharing5alloc5ShareENtB8B_5ErrorEE14serialize_with0ENCINvMs_NtBd_3mapINtBc0_15ArchivedHashMapB1O_B2i_E19serialize_from_iterB4f_INtNtNtB5Z_4core4with10RefWrapperB6C_B5c_EIBd6_B6R_B5x_EBd5_BdL_B8y_E0EINtB1y_12EntryAdapterBd5_BdL_Bd5_BdL_EIB3s_B4f_NCBbU_s_0EB8y_E000B2m_.exit.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i = phi i32 [ 1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i.i.i ], [ %spec.select34, %_RNCNCNCINvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtBb_17ArchivedHashTableINtNtBf_4util5EntryNtNtBh_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE19serialize_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3s_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB4t_4path7PathBufNtB2k_9FileCacheENCNvXs_NtNtNtBh_5impls3std4withINtNtBh_4with5MapKVNtB6m_8AsStringNtB6m_8IdentityEINtB6m_13SerializeWithINtB4n_7HashMapB5c_B5x_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtBh_3ser10SerializerNtNtNtNtBh_4util5alloc11aligned_vec10AlignedVecNtNtNtB98_9allocator5alloc11ArenaHandleNtNtNtB98_7sharing5alloc5ShareENtB8B_5ErrorEE14serialize_with0ENCINvMs_NtBd_3mapINtBc0_15ArchivedHashMapB1O_B2i_E19serialize_from_iterB4f_INtNtNtB5Z_4core4with10RefWrapperB6C_B5c_EIBd6_B6R_B5x_EBd5_BdL_B8y_E0EINtB1y_12EntryAdapterBd5_BdL_Bd5_BdL_EIB3s_B4f_NCBbU_s_0EB8y_E000B2m_.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cz = call noundef zeroext i1 @_RNvXNtNtCsgYAxyi3ZRSt_4rkyv3ser9allocatorINtCsht2POEgrkhf_6rancor8StrategyINtB4_10SerializerNtNtNtNtB6_4util5alloc11aligned_vec10AlignedVecNtNtB2_5alloc11ArenaHandleNtNtNtB4_7sharing5alloc5ShareENtBG_5ErrorEINtB2_9AllocatorB37_E9pop_allocCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %i.z, i64 noundef 1, i64 noundef %i.o), !noalias !1134
  %spec.select.i.i = select i1 %i.cz, i32 1, i32 %.sroa.0.0.i.i.i.i
  br label %_RNCINvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtB7_17ArchivedHashTableINtNtBb_4util5EntryNtNtBd_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE19serialize_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3o_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB4p_4path7PathBufNtB2g_9FileCacheENCNvXs_NtNtNtBd_5impls3std4withINtNtBd_4with5MapKVNtB6i_8AsStringNtB6i_8IdentityEINtB6i_13SerializeWithINtB4j_7HashMapB58_B5t_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtBd_3ser10SerializerNtNtNtNtBd_4util5alloc11aligned_vec10AlignedVecNtNtNtB94_9allocator5alloc11ArenaHandleNtNtNtB94_7sharing5alloc5ShareENtB8x_5ErrorEE14serialize_with0ENCINvMs_NtB9_3mapINtBbW_15ArchivedHashMapB1K_B2e_E19serialize_from_iterB4b_INtNtNtB5V_4core4with10RefWrapperB6y_B58_EIBd2_B6N_B5t_EBd1_BdH_B8u_E0EINtB1u_12EntryAdapterBd1_BdH_Bd1_BdH_EIB3o_B4b_NCBbQ_s_0EB8u_E0B2i_.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %i.da = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.dg, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.da
  store ptr null, ptr %i.db, align 8, !noalias !1132
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.da
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr null, ptr %i.dd, align 8, !noalias !1132
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.da
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store ptr null, ptr %i.df, align 8, !noalias !1132
  %i.dg = add nuw nsw i64 %i.da, 4                ; 2 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.da
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  store ptr null, ptr %i.di, align 8, !noalias !1132
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNCINvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtB7_17ArchivedHashTableINtNtBb_4util5EntryNtNtBd_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE19serialize_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3o_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB4p_4path7PathBufNtB2g_9FileCacheENCNvXs_NtNtNtBd_5impls3std4withINtNtBd_4with5MapKVNtB6i_8AsStringNtB6i_8IdentityEINtB6i_13SerializeWithINtB4j_7HashMapB58_B5t_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtBd_3ser10SerializerNtNtNtNtBd_4util5alloc11aligned_vec10AlignedVecNtNtNtB94_9allocator5alloc11ArenaHandleNtNtNtB94_7sharing5alloc5ShareENtB8x_5ErrorEE14serialize_with0ENCINvMs_NtB9_3mapINtBbW_15ArchivedHashMapB1K_B2e_E19serialize_from_iterB4b_INtNtNtB5V_4core4with10RefWrapperB6y_B58_EIBd2_B6N_B5t_EBd1_BdH_B8u_E0EINtB1u_12EntryAdapterBd1_BdH_Bd1_BdH_EIB3o_B4b_NCBbQ_s_0EB8u_E0B2i_.exit.i: ; preds = %bb.ab, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i
  %.sroa.4.0.i15.i.i = phi i32 [ undef, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i ], [ %.sroa.3.0.i.i.i.i, %bb.ab ]
  %i.dj = phi i32 [ 1, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtBJ_11LayoutErrorE6unwrapCs8EvorvD8vmS_4ruff.exit.i.i.i ], [ %spec.select.i.i, %bb.ab ]
  br i1 %.not.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_RNCINvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtB7_17ArchivedHashTableINtNtBb_4util5EntryNtNtBd_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE19serialize_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3o_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB4p_4path7PathBufNtB2g_9FileCacheENCNvXs_NtNtNtBd_5impls3std4withINtNtBd_4with5MapKVNtB6i_8AsStringNtB6i_8IdentityEINtB6i_13SerializeWithINtB4j_7HashMapB58_B5t_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtBd_3ser10SerializerNtNtNtNtBd_4util5alloc11aligned_vec10AlignedVecNtNtNtB94_9allocator5alloc11ArenaHandleNtNtNtB94_7sharing5alloc5ShareENtB8x_5ErrorEE14serialize_with0ENCINvMs_NtB9_3mapINtBbW_15ArchivedHashMapB1K_B2e_E19serialize_from_iterB4b_INtNtNtB5V_4core4with10RefWrapperB6y_B58_EIBd2_B6N_B5t_EBd1_BdH_B8u_E0EINtB1u_12EntryAdapterBd1_BdH_Bd1_BdH_EIB3o_B4b_NCBbQ_s_0EB8u_E0B2i_.exit.i
  %i.dk = call noundef zeroext i1 @_RNvXNtNtCsgYAxyi3ZRSt_4rkyv3ser9allocatorINtCsht2POEgrkhf_6rancor8StrategyINtB4_10SerializerNtNtNtNtB6_4util5alloc11aligned_vec10AlignedVecNtNtB2_5alloc11ArenaHandleNtNtNtB4_7sharing5alloc5ShareENtBG_5ErrorEINtB2_9AllocatorB37_E9pop_allocCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %.sroa.02.0.i26, i64 noundef %.sroa.01.0.i, i64 noundef %.sroa.5.0.i), !noalias !1131
  br i1 %i.dk, label %select.unfold, label %bb.ae

bb.ad:                                            ; preds = %bb.d
  tail call void @_RINvXsk_Csht2POEgrkhf_6rancorNtB6_5ErrorNtB6_6Source3newNtNtNtCsgYAxyi3ZRSt_4rkyv11collections4util22IteratorLengthMismatchECs8EvorvD8vmS_4ruff(i64 noundef 0, i64 noundef %i.j)
  br label %select.unfold

select.unfold:                                    ; preds = %bb.f, %bb.ac, %bb.ad, %bb.d, %bb.b, %bb.ae
  %.sroa.6.1 = phi i32 [ undef, %bb.b ], [ %.sroa.4.0.i15.i.i, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.d ], [ undef, %bb.ac ], [ undef, %bb.f ]
  %.sroa.0.1 = phi i32 [ 1, %bb.b ], [ %i.dj, %bb.ae ], [ 1, %bb.ad ], [ 0, %bb.d ], [ 1, %bb.ac ], [ 1, %bb.f ]
  %i.dl = insertvalue { i32, i32 } poison, i32 %.sroa.0.1, 0
  %i.dm = insertvalue { i32, i32 } %i.dl, i32 %.sroa.6.1, 1
  ret { i32, i32 } %i.dm

bb.ae:                                            ; preds = %_RNCINvMs_NtNtNtCsgYAxyi3ZRSt_4rkyv11collections11swiss_table5tableINtB7_17ArchivedHashTableINtNtBb_4util5EntryNtNtBd_6string14ArchivedStringNtNtCs8EvorvD8vmS_4ruff5cache17ArchivedFileCacheEE19serialize_from_iterINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapIB3o_INtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterNtNtB4p_4path7PathBufNtB2g_9FileCacheENCNvXs_NtNtNtBd_5impls3std4withINtNtBd_4with5MapKVNtB6i_8AsStringNtB6i_8IdentityEINtB6i_13SerializeWithINtB4j_7HashMapB58_B5t_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEINtCsht2POEgrkhf_6rancor8StrategyINtNtBd_3ser10SerializerNtNtNtNtBd_4util5alloc11aligned_vec10AlignedVecNtNtNtB94_9allocator5alloc11ArenaHandleNtNtNtB94_7sharing5alloc5ShareENtB8x_5ErrorEE14serialize_with0ENCINvMs_NtB9_3mapINtBbW_15ArchivedHashMapB1K_B2e_E19serialize_from_iterB4b_INtNtNtB5V_4core4with10RefWrapperB6y_B58_EIBd2_B6N_B5t_EBd1_BdH_B8u_E0EINtB1u_12EntryAdapterBd1_BdH_Bd1_BdH_EIB3o_B4b_NCBbQ_s_0EB8u_E0B2i_.exit.i, %bb.ac
  br label %select.unfold
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCs45bxiIjzMqg_5salsa14tracked_struct12TrackedEntryNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECs8EvorvD8vmS_4ruff(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit

_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit: ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = mul nuw i64 %i.d, %2                     ; 2 uses
  %i.f = add i64 %3, -1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp uge i64 %i.g, %i.e
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub i64 0, %3
  %i.j = and i64 %i.g, %i.i                       ; 3 uses
  %i.k = add i64 %i.b, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = sub nuw i64 -9223372036854775808, %3
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_RNvXs_NtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit
  %i.r = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.s = sub nsw i64 0, %i.j
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %3) #35
  br label %_RNvXs_NtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.b, %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs45bxiIjzMqg_5salsa14tracked_struct12IdentityHashNtB1f_13DisambiguatorENtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECs8EvorvD8vmS_4ruff(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit

_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit: ; preds = %bb.a
  %i.d = add i64 %i.b, 1
  %i.e = mul nuw i64 %i.d, %2                     ; 2 uses
  %i.f = add i64 %3, -1
  %i.g = add i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp uge i64 %i.g, %i.e
  tail call void @llvm.assume(i1 %i.h)
  %i.i = sub i64 0, %3
  %i.j = and i64 %i.g, %i.i                       ; 3 uses
  %i.k = add i64 %i.b, 17
  %i.l = add i64 %i.k, %i.j                       ; 4 uses
  %i.m = icmp uge i64 %i.l, %i.j
  %i.n = sub nuw i64 -9223372036854775808, %3
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_RNvXs_NtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit
  %i.r = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.s = sub nsw i64 0, %i.j
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) %3) #35
  br label %_RNvXs_NtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit

_RNvXs_NtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit: ; preds = %bb.b, %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountENtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECs8EvorvD8vmS_4ruff(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1157, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEECs8EvorvD8vmS_4ruff.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1158)
  %i.g = load ptr, ptr %0, align 8, !alias.scope !1159, !noalias !1160, !nonnull !3, !noundef !3 ; 3 uses
  %.val24.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !1161
  %i.h = icmp sgt <16 x i8> %.val24.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEECs8EvorvD8vmS_4ruff.exit.i, %bb.c
  %.sroa.14.011.i = phi i64 [ %i.e, %bb.c ], [ %i.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEECs8EvorvD8vmS_4ruff.exit.i ]
  %.sroa.10.010.i = phi i16 [ %i.j, %bb.c ], [ %i.y, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEECs8EvorvD8vmS_4ruff.exit.i ] ; 2 uses
  %.sroa.6.09.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEECs8EvorvD8vmS_4ruff.exit.i ] ; 2 uses
  %.sroa.04.08.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.04.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEECs8EvorvD8vmS_4ruff.exit.i ] ; 2 uses
  %.not11.i.i = icmp eq i16 %.sroa.10.010.i, 0
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %_RINvMsh_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEE9next_implKb0_ECs8EvorvD8vmS_4ruff.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i ], [ %.sroa.6.09.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.sroa.04.08.i, %bb.d ]
  %.val79.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !1162
  %i.m = icmp sgt <16 x i8> %.val79.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -768 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.m to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_RINvMsh_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEE9next_implKb0_ECs8EvorvD8vmS_4ruff.exit.i

_RINvMsh_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEE9next_implKb0_ECs8EvorvD8vmS_4ruff.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.sroa.04.1.i = phi ptr [ %.sroa.04.08.i, %bb.d ], [ %i.n, %.lr.ph.i.i ] ; 2 uses
  %.sroa.6.1.i = phi ptr [ %.sroa.6.09.i, %bb.d ], [ %i.o, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %.sroa.10.010.i, %bb.d ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [48 x i8], ptr %.sroa.04.1.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -48 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEECs8EvorvD8vmS_4ruff.exit.i unwind label %bb.e, !noalias !1157

bb.e:                                             ; preds = %_RINvMsh_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEE9next_implKb0_ECs8EvorvD8vmS_4ruff.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i unwind label %bb.f, !noalias !1157

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #32, !noalias !1157
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8EvorvD8vmS_4ruff.exit.i.i.i.i.i: ; preds = %bb.e
  resume { ptr, i32 } %i.u

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEECs8EvorvD8vmS_4ruff.exit.i: ; preds = %_RINvMsh_NtCs8bMtf1JxJvX_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEE9next_implKb0_ECs8EvorvD8vmS_4ruff.exit.i
  %i.w = add i64 %.sroa.14.011.i, -1              ; 2 uses
  %i.x = add i16 %.lcssa.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8EvorvD8vmS_4ruff(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t), !noalias !1157
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEECs8EvorvD8vmS_4ruff.exit, label %bb.d

_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEECs8EvorvD8vmS_4ruff.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEECs8EvorvD8vmS_4ruff.exit.i, %bb.b
  %i.aa = add i64 %i.b, 1
  %i.ab = mul nuw i64 %i.aa, %2                   ; 2 uses
  %i.ac = add i64 %3, -1
  %i.ad = add i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = sub i64 0, %3
  %i.ag = and i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = add i64 %i.b, 17
  %i.ai = add i64 %i.ah, %i.ag                    ; 4 uses
  %i.aj = icmp uge i64 %i.ai, %i.ag
  %i.ak = sub nuw i64 -9223372036854775808, %3
  %i.al = icmp ule i64 %i.ai, %i.ak
  tail call void @llvm.assume(i1 %i.aj)
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp ne i64 %3, 0
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.ai, 0
  br i1 %i.an, label %_RNvXs_NtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator10deallocate.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SecondaryCodeNtNtCsEhZmuQNqkz_11ruff_linter6linter8FixCountEECs8EvorvD8vmS_4ruff.exit
  %i.ao = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.ap = sub nsw i64 0, %i.ag
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
end_hunk_0
