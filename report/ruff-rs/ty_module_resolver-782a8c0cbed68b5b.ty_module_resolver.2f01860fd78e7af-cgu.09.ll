inline.NumInlined: 540
inline.NumDeleted: 276
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s_1__9StructKeyNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtB1z_19ResolverEnvironmentENCINvMs9_B3y_B1x_3newDNtNtB1B_2db2DbEL_B3T_B4u_E0Es_0EB1B_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1026.0..sroa_idx, i64 16, i1 false)
  store i32 %i.aq, ptr %i.c, align 4, !noalias !109
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.ay, align 4, !noalias !109
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @_RNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver11environments_1__INtB5_9StructKeyNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtB7_19ResolverEnvironmentEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1e_B1P_EE10into_ownedB9_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.az, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.ax), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !109
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.825.0..sroa_idx.promoted) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.825.0..sroa_idx.promoted, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !109, !nonnull !8, !noundef !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !109, !noundef !8 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 384307168202282326
  call void @llvm.assume(i1 %i.be)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.bf = load i8, ptr %.sroa.12.0..sroa_idx.promoted, align 1, !range !33, !noalias !109, !noundef !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i16 %i.av, ptr %i.bg, align 8, !noalias !104
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !104
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !104
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.aq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !104
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !104
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.aw, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !104
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %i.bh, align 8, !noalias !104
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %i.bd, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !104
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 66
  store i8 %i.bf, ptr %i.bi, align 2, !noalias !104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.at, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !104
  %i.bj = add nuw nsw i64 %i.aj, 1
  store atomic i64 %i.bj, ptr %i.al release, align 8, !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtB1c_19ResolverEnvironmentENCINvMs9_B3j_B1a_3newDNtNtB1e_2db2DbEL_B3E_B4f_E0Es_0EB1e_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileEEB1f_.exit
  %i.bk = ptrtoint ptr %.sroa.524.0.copyload to i64 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtB1c_19ResolverEnvironmentENCINvMs9_B3j_B1a_3newDNtNtB1e_2db2DbEL_B3E_B4f_E0Es_0EB1e_.exit
  store ptr %.promoted, ptr %4, align 8
  store i64 %i.bk, ptr %.sroa.524.0..sroa_idx, align 8
  store ptr %.sroa.825.0..sroa_idx.promoted, ptr %.sroa.825.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  %i.bl = load i64, ptr %i.t, align 8, !noundef !8 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, %i.s
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr %i.u, align 8, !nonnull !8, !noundef !8
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.s ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !8, !noundef !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !8, !align !32, !noundef !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !8, !nonnull !8
  %i.bu = call noundef nonnull align 8 ptr %i.bt(ptr noundef nonnull %i.bp), !inline_history !113
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s_1__9StructKeyNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtB1B_19ResolverEnvironmentENCINvMs9_B3A_B1z_3newDNtNtB1D_2db2DbEL_B3V_B4w_E0Es_0E0B1D_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s_1__9StructKeyNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtB1B_19ResolverEnvironmentENCINvMs9_B3A_B1z_3newDNtNtB1D_2db2DbEL_B3V_B4w_E0Es_0E0B1D_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bv, ptr %i.b, align 8, !noalias !114
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !114
  %i.by = call noundef align 8 dereferenceable_or_null(9216) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 6144, 14337) 9216, i64 noundef 8) #16, !noalias !114 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileEEB1d_.exit, !prof !38

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s_1__9StructKeyNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtB1B_19ResolverEnvironmentENCINvMs9_B3A_B1z_3newDNtNtB1D_2db2DbEL_B3V_B4w_E0Es_0E0B1D_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 9216) #25
          to label %.noexc.i unwind label %bb.l, !noalias !114

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !noalias !117
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !114

bb.n:                                             ; preds = %bb.m
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !114
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.l ], [ %i.ca, %bb.m ], [ %i.ck, %bb.t ], [ %i.ci, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileEEB1d_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s_1__9StructKeyNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtB1B_19ResolverEnvironmentENCINvMs9_B3A_B1z_3newDNtNtB1D_2db2DbEL_B3V_B4w_E0Es_0E0B1D_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !114
  store i64 0, ptr %i.w, align 8, !alias.scope !114
  store ptr %i.by, ptr %i.e, align 8, !alias.scope !114
  store ptr @13, ptr %i.x, align 8, !alias.scope !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @4, i64 16, i1 false)
  store ptr %i.bv, ptr %i.z, align 8, !alias.scope !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ce = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !122 ; 5 uses
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %bb.p, !prof !38

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileEEB1d_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #25
          to label %bb.s unwind label %bb.t, !noalias !122

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileEEB1d_.exit
  %i.cg = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ce)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsfDzkztWVnn_18ty_module_resolver.exit unwind label %bb.q, !noalias !125 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #27
          to label %common.resume unwind label %bb.r, !noalias !122

bb.r:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !122
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #27
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsfDzkztWVnn_18ty_module_resolver.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ch, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  store atomic i8 1, ptr %i.cm release, align 8, !noalias !125
  %i.cn = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !125 ; 0 uses
  %i.co = add nsw i64 %i.ce, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cp = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.co) ; 0 uses
  %i.cq = icmp samesign ugt i64 %i.ce, 31
  br i1 %i.cq, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtB1c_19ResolverEnvironmentENCINvMs9_B3j_B1a_3newDNtNtB1e_2db2DbEL_B3E_B4f_E0Es_0EB1e_.exit
  %.sroa.524.0.extract.trunc.le = trunc i64 %i.bk to i32
  %.sroa.524.4.extract.shift.le = lshr i64 %i.bk, 32
  %.sroa.524.4.extract.trunc.le = trunc nuw i64 %.sroa.524.4.extract.shift.le to i32
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtB1c_19ResolverEnvironmentENCINvMs9_B3j_B1a_3newDNtNtB1e_2db2DbEL_B3E_B4f_E0Es_0EB1e_.exit.thread
  %.sroa.7.053 = phi i32 [ %i.aq, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtB1c_19ResolverEnvironmentENCINvMs9_B3j_B1a_3newDNtNtB1e_2db2DbEL_B3E_B4f_E0Es_0EB1e_.exit.thread ], [ %.sroa.524.0.extract.trunc.le, %.loopexit ]
  %.sroa.9.052 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtB1c_19ResolverEnvironmentENCINvMs9_B3j_B1a_3newDNtNtB1e_2db2DbEL_B3E_B4f_E0Es_0EB1e_.exit.thread ], [ %.sroa.524.4.extract.trunc.le, %.loopexit ]
  %.sroa.10.051 = phi ptr [ %i.at, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver11environment12ResolverFileEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtB1c_19ResolverEnvironmentENCINvMs9_B3j_B1a_3newDNtNtB1e_2db2DbEL_B3E_B4f_E0Es_0EB1e_.exit.thread ], [ %.sroa.825.0..sroa_idx.promoted, %.loopexit ]
  store i32 %.sroa.7.053, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.052, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.051, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s1_1__9StructKeyNtNtB1B_6module6ModulebENCINvMs9_B3q_B1x_3newDNtNtB1B_2db2DbEL_B3M_bE0Es_0EB1B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 4                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.450.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.551.0.copyload = load ptr, ptr %.sroa.551.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = ptrtoint ptr %.sroa.551.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.k to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.m = call noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleENCINvMs_NtB8_11zalsa_localNtB2t_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_s1_1__9StructKeyNtNtB1u_6module6ModulebENCINvMs9_B4k_B1q_3newDNtNtB1u_2db2DbEL_B4G_bE0Es_0E0EB1u_(ptr noundef nonnull align 8 %i.l, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !128
  %i.n = call noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.450.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.m), !noalias !134
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s1_1__9StructKeyNtNtB3T_6module6ModulebENCINvMs9_B5I_B3P_3newDNtNtB3T_2db2DbEL_B64_bE0Es_0Es_0EB3T_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s1_1__9StructKeyNtNtB3T_6module6ModulebENCINvMs9_B5I_B3P_3newDNtNtB3T_2db2DbEL_B64_bE0Es_0Es_0EB3T_.exit

_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s1_1__9StructKeyNtNtB3T_6module6ModulebENCINvMs9_B5I_B3P_3newDNtNtB3T_2db2DbEL_B64_bE0Es_0Es_0EB3T_.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s1_1__9StructKeyNtNtB3T_6module6ModulebENCINvMs9_B5I_B3P_3newDNtNtB3T_2db2DbEL_B64_bE0Es_0Es_0EB3T_.exit
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.1037.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.s = zext i32 %3 to i64                       ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 792
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 800
  %i.ac = load <4 x i32>, ptr %4, align 8         ; 5 uses
  %.sroa.836.0..sroa_idx.promoted = load ptr, ptr %.sroa.836.0..sroa_idx, align 8 ; 4 uses
  %.sroa.1037.0..sroa_idx.promoted = load ptr, ptr %.sroa.1037.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.promoted = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.promoted = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.not5 = icmp eq i32 %i.ad, 2
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsfDzkztWVnn_18ty_module_resolver.exit
  %.sroa.0.0172 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsfDzkztWVnn_18ty_module_resolver.exit ] ; 4 uses
  %i.ag = call noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsfDzkztWVnn_18ty_module_resolver(i64 noundef %.sroa.0.0172)
  %i.ah = call noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag) ; 7 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsfDzkztWVnn_18ty_module_resolver.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsfDzkztWVnn_18ty_module_resolver.exit.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, -19153275085853111317398272324435937958
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEEB1f_.exit, label %bb.f, !prof !9

select.unfold.i:                                  ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsfDzkztWVnn_18ty_module_resolver.exit, %bb.d, %bb.e, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s1_1__9StructKeyNtNtB3T_6module6ModulebENCINvMs9_B5I_B3P_3newDNtNtB3T_2db2DbEL_B64_bE0Es_0Es_0EB3T_.exit
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s1_1__9StructKeyNtNtB3T_6module6ModulebENCINvMs9_B5I_B3P_3newDNtNtB3T_2db2DbEL_B64_bE0Es_0Es_0EB3T_.exit ], [ %.sroa.0.0172, %bb.e ], [ %.sroa.0.0172, %bb.d ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsfDzkztWVnn_18ty_module_resolver.exit ]
  call void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #25
  unreachable

bb.f:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsfDzkztWVnn_18ty_module_resolver.exit.i
  call void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEEB1f_(ptr noundef nonnull align 8 %i.ah) #25
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEEB1f_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsfDzkztWVnn_18ty_module_resolver.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !135 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_6module6ModulebENCINvMs9_B3b_B1a_3newDNtNtB1e_2db2DbEL_B3x_bE0Es_0EB1e_.exit, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_6module6ModulebENCINvMs9_B3b_B1a_3newDNtNtB1e_2db2DbEL_B3x_bE0Es_0EB1e_.exit.thread

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_6module6ModulebENCINvMs9_B3b_B1a_3newDNtNtB1e_2db2DbEL_B3x_bE0Es_0EB1e_.exit.thread: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEEB1f_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0172 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !135, !nonnull !8, !noundef !8
  %i.ax = getelementptr inbounds nuw [72 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.836.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1037.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.836.0..sroa_idx.promoted, align 8, !noalias !140, !noundef !8
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1037.0..sroa_idx.promoted, align 8, !range !19, !noalias !140, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !140
  store i32 %i.au, ptr %i.c, align 4, !noalias !140
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %6 = shufflevector <4 x i32> %i.ac, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  store <4 x i32> %6, ptr %i.bb, align 4, !noalias !144
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.af, ptr %i.bc, align 4, !noalias !144
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @_RNvXs0_NvNtCsfDzkztWVnn_18ty_module_resolver4lists1_1__INtB5_9StructKeyNtNtB9_6module6ModulebEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB17_bEE10into_ownedB9_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.bd, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %5), !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !140
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !140, !nonnull !8, !noundef !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !140, !noundef !8 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bj = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !33, !noalias !140, !noundef !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i16 %i.az, ptr %i.bk, align 8, !noalias !135
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !135
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !135
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !135
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !135
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !135
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %i.bl, align 8, !noalias !135
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %i.bh, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !135
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 66
  store i8 %i.bj, ptr %i.bm, align 2, !noalias !135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !135
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_6module6ModulebENCINvMs9_B3b_B1a_3newDNtNtB1e_2db2DbEL_B3x_bE0Es_0EB1e_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEEB1f_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_6module6ModulebENCINvMs9_B3b_B1a_3newDNtNtB1e_2db2DbEL_B3x_bE0Es_0EB1e_.exit
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx, align 8
  store ptr %.sroa.1037.0..sroa_idx.promoted, ptr %.sroa.1037.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !8 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !8, !noundef !8
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !8, !noundef !8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !8, !align !32, !noundef !8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !8, !nonnull !8
  %i.bx = call noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs), !inline_history !145
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s1_1__9StructKeyNtNtB1D_6module6ModulebENCINvMs9_B3s_B1z_3newDNtNtB1D_2db2DbEL_B3O_bE0Es_0E0B1D_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s1_1__9StructKeyNtNtB1D_6module6ModulebENCINvMs9_B3s_B1z_3newDNtNtB1D_2db2DbEL_B3O_bE0Es_0E0B1D_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !146
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #16, !noalias !146
  %i.cb = call noundef align 8 dereferenceable_or_null(9216) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 6144, 14337) 9216, i64 noundef 8) #16, !noalias !146 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEEB1d_.exit, !prof !38

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s1_1__9StructKeyNtNtB1D_6module6ModulebENCINvMs9_B3s_B1z_3newDNtNtB1D_2db2DbEL_B3O_bE0Es_0E0B1D_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 9216) #25
          to label %.noexc.i unwind label %bb.l, !noalias !146

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !149
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !146

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !146
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %i.cd, %bb.m ], [ %i.cn, %bb.t ], [ %i.cl, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEEB1d_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s1_1__9StructKeyNtNtB1D_6module6ModulebENCINvMs9_B3s_B1z_3newDNtNtB1D_2db2DbEL_B3O_bE0Es_0E0B1D_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !146
  store i64 0, ptr %i.w, align 8, !alias.scope !146
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !146
  store ptr @14, ptr %i.x, align 8, !alias.scope !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @5, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !154 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %bb.p, !prof !38

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEEB1d_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #25
          to label %bb.s unwind label %bb.t, !noalias !154

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEEB1d_.exit
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsfDzkztWVnn_18ty_module_resolver(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsfDzkztWVnn_18ty_module_resolver.exit unwind label %bb.q, !noalias !157 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #27
          to label %common.resume unwind label %bb.r, !noalias !154

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !154
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #27
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsfDzkztWVnn_18ty_module_resolver.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !157
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !157 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsfDzkztWVnn_18ty_module_resolver(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr) ; 0 uses
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_6module6ModulebENCINvMs9_B3b_B1a_3newDNtNtB1e_2db2DbEL_B3x_bE0Es_0EB1e_.exit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_6module6ModulebENCINvMs9_B3b_B1a_3newDNtNtB1e_2db2DbEL_B3x_bE0Es_0EB1e_.exit.thread
  %.sroa.717.069 = phi i32 [ %i.au, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_6module6ModulebENCINvMs9_B3b_B1a_3newDNtNtB1e_2db2DbEL_B3x_bE0Es_0EB1e_.exit.thread ], [ %i.ae, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_6module6ModulebENCINvMs9_B3b_B1a_3newDNtNtB1e_2db2DbEL_B3x_bE0Es_0EB1e_.exit ]
  %.sroa.9.068 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_6module6ModulebENCINvMs9_B3b_B1a_3newDNtNtB1e_2db2DbEL_B3x_bE0Es_0EB1e_.exit.thread ], [ %i.af, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_6module6ModulebENCINvMs9_B3b_B1a_3newDNtNtB1e_2db2DbEL_B3x_bE0Es_0EB1e_.exit ]
  %.sroa.10.067 = phi ptr [ %i.ax, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_6module6ModulebENCINvMs9_B3b_B1a_3newDNtNtB1e_2db2DbEL_B3x_bE0Es_0EB1e_.exit.thread ], [ %.sroa.836.0..sroa_idx.promoted, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver4list12ListedModuleEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_6module6ModulebENCINvMs9_B3b_B1a_3newDNtNtB1e_2db2DbEL_B3x_bE0Es_0EB1e_.exit ]
  store i32 %.sroa.717.069, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.068, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.067, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtCsfDzkztWVnn_18ty_module_resolver6module10FileModuleENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s1_1__9StructKeyINtNtCscdodAO9FK5_5alloc6borrow3CowNtNtB1B_11module_name10ModuleNameENtB1z_10ModuleKindNtNtB1B_4path10SearchPathNtNtCs56aZGHL6Dc6_7ruff_db5files4FileNtNtB1B_11environment19ResolverEnvironmentINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1z_11KnownModuleEENCINvMs9_B3q_B1x_3newDNtNtB1B_2db2DbEL_B3M_B4T_B5b_B5A_B6b_B6R_E0Es_0EB1B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [112 x i8], align 8               ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.9.sroa.6 = alloca [49 x i8], align 8     ; 2 uses
  %.sroa.11 = alloca [6 x i8], align 2            ; 2 uses
  %.sroa.1145 = alloca [49 x i8], align 8         ; 6 uses
  %.sroa.13 = alloca [6 x i8], align 2            ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
end_hunk_0
