inline.NumInlined: 7526
inline.NumDeleted: 3512
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s8_1__9StructKeyNtB1z_14DataclassFlagsRSNtB1z_4TypeENCINvMs9_B3u_B1x_3newDNtNtB1B_2db2DbEL_B3Q_B4c_E0Es_0EB1B_:bb.a
  %i.ax = load i64, ptr %.sroa.524.0.copyload, align 8, !range !333, !noalias !1694, !noundef !15
  store i32 %i.aq, ptr %i.c, align 8, !noalias !1694
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.ay, align 4, !noalias !1694
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @_RNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess8_1__INtB5_9StructKeyNtB7_14DataclassFlagsRSNtB7_4TypeEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB18_INtNtCscdodAO9FK5_5alloc5boxed3BoxB1u_EEE10into_ownedB9_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.au), !noalias !1689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1694
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.825.0..sroa_idx.promoted) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.825.0..sroa_idx.promoted, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !1694, !nonnull !15, !noundef !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !1694, !noundef !15 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 384307168202282326
  call void @llvm.assume(i1 %i.be)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.bf = load i8, ptr %.sroa.12.0..sroa_idx.promoted, align 1, !range !259, !noalias !1694, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i16 %i.aw, ptr %i.bg, align 8, !noalias !1689
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !1689
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1689
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.aq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1689
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !1689
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ax, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1689
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.bh, align 8, !noalias !1689
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bd, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !1689
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 74
  store i8 %i.bf, ptr %i.bi, align 2, !noalias !1689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !1689
  %i.bj = add nuw nsw i64 %i.aj, 1
  store atomic i64 %i.bj, ptr %i.al release, align 8, !noalias !1689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s8_1__9StructKeyNtB1c_14DataclassFlagsRSNtB1c_4TypeENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B3X_E0Es_0EB1e_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsEEB1f_.exit
  %i.bk = ptrtoint ptr %.sroa.524.0.copyload to i64 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s8_1__9StructKeyNtB1c_14DataclassFlagsRSNtB1c_4TypeENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B3X_E0Es_0EB1e_.exit
  store ptr %.promoted, ptr %4, align 8
  store i64 %i.bk, ptr %.sroa.524.0..sroa_idx, align 8
  store ptr %.sroa.825.0..sroa_idx.promoted, ptr %.sroa.825.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  %i.bl = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, %i.s
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.s ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !15, !noundef !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !15, !nonnull !15
  %i.bu = call noundef nonnull align 8 ptr %i.bt(ptr noundef nonnull %i.bp), !inline_history !1698
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s8_1__9StructKeyNtB1B_14DataclassFlagsRSNtB1B_4TypeENCINvMs9_B3w_B1z_3newDNtNtB1D_2db2DbEL_B3S_B4e_E0Es_0E0B1D_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s8_1__9StructKeyNtB1B_14DataclassFlagsRSNtB1B_4TypeENCINvMs9_B3w_B1z_3newDNtNtB1D_2db2DbEL_B3S_B4e_E0Es_0E0B1D_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !1699)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bv, ptr %i.b, align 8, !noalias !1699
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !1699
  %i.by = call noundef align 8 dereferenceable_or_null(10240) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 10240, i64 noundef range(i64 4, 9) 8) #59, !noalias !1699 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsEEB1d_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s8_1__9StructKeyNtB1B_14DataclassFlagsRSNtB1B_4TypeENCINvMs9_B3w_B1z_3newDNtNtB1D_2db2DbEL_B3S_B4e_E0Es_0E0B1D_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 10240) #56
          to label %.noexc.i unwind label %bb.l, !noalias !1699

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !noalias !1702
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !1699

bb.n:                                             ; preds = %bb.m
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !1699
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.l ], [ %i.ca, %bb.m ], [ %i.ck, %bb.t ], [ %i.ci, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsEEB1d_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s8_1__9StructKeyNtB1B_14DataclassFlagsRSNtB1B_4TypeENCINvMs9_B3w_B1z_3newDNtNtB1D_2db2DbEL_B3S_B4e_E0Es_0E0B1D_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !1699
  store i64 0, ptr %i.w, align 8, !alias.scope !1699
  store ptr %i.by, ptr %i.e, align 8, !alias.scope !1699
  store ptr @130, ptr %i.x, align 8, !alias.scope !1699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @33, i64 16, i1 false)
  store ptr %i.bv, ptr %i.z, align 8, !alias.scope !1699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ce = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !1707 ; 5 uses
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsEEB1d_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !1707

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsEEB1d_.exit
  %i.cg = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ce)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !1710 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !1707

bb.r:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !1707
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ch, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  store atomic i8 1, ptr %i.cm release, align 8, !noalias !1710
  %i.cn = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !1710 ; 0 uses
  %i.co = add nsw i64 %i.ce, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cp = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.co) ; 0 uses
  %i.cq = icmp samesign ugt i64 %i.ce, 31
  br i1 %i.cq, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s8_1__9StructKeyNtB1c_14DataclassFlagsRSNtB1c_4TypeENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B3X_E0Es_0EB1e_.exit
  %.sroa.524.0.extract.trunc.le = trunc i64 %i.bk to i32
  %.sroa.524.4.extract.shift.le = lshr i64 %i.bk, 32
  %.sroa.524.4.extract.trunc.le = trunc nuw i64 %.sroa.524.4.extract.shift.le to i32
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s8_1__9StructKeyNtB1c_14DataclassFlagsRSNtB1c_4TypeENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B3X_E0Es_0EB1e_.exit.thread
  %.sroa.7.053 = phi i32 [ %i.aq, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s8_1__9StructKeyNtB1c_14DataclassFlagsRSNtB1c_4TypeENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B3X_E0Es_0EB1e_.exit.thread ], [ %.sroa.524.0.extract.trunc.le, %.loopexit ]
  %.sroa.9.052 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s8_1__9StructKeyNtB1c_14DataclassFlagsRSNtB1c_4TypeENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B3X_E0Es_0EB1e_.exit.thread ], [ %.sroa.524.4.extract.trunc.le, %.loopexit ]
  %.sroa.10.051 = phi ptr [ %i.at, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15DataclassParamsEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s8_1__9StructKeyNtB1c_14DataclassFlagsRSNtB1c_4TypeENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B3X_E0Es_0EB1e_.exit.thread ], [ %.sroa.825.0..sroa_idx.promoted, %.loopexit ]
  store i32 %.sroa.7.053, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.052, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.051, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1z_4TypeReNtB1z_18MemberLookupPolicyENCINvMs9_B3u_B1x_3newDNtNtB1B_2db2DbEL_B3Q_B4E_B4P_B4R_E0Es_0EB1B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(80) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [104 x i8], align 8               ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.457.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.558.0.copyload = load ptr, ptr %.sroa.558.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = ptrtoint ptr %.sroa.558.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.k to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.m = call noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyENCINvMs_NtB8_11zalsa_localNtB2x_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1s_4TypeReNtB1s_18MemberLookupPolicyENCINvMs9_B4o_B1q_3newDNtNtB1u_2db2DbEL_B4K_B5y_B5J_B5L_E0Es_0E0EB1u_(ptr noundef nonnull align 8 %i.l, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !1713
  %i.n = call noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.457.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.m), !noalias !1719
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB3R_4TypeReNtB3R_18MemberLookupPolicyENCINvMs9_B5M_B3P_3newDNtNtB3T_2db2DbEL_B68_B6W_B77_B79_E0Es_0Es_0EB3T_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB3R_4TypeReNtB3R_18MemberLookupPolicyENCINvMs9_B5M_B3P_3newDNtNtB3T_2db2DbEL_B68_B6W_B77_B79_E0Es_0Es_0EB3T_.exit

_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB3R_4TypeReNtB3R_18MemberLookupPolicyENCINvMs9_B5M_B3P_3newDNtNtB3T_2db2DbEL_B68_B6W_B77_B79_E0Es_0Es_0EB3T_.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB3R_4TypeReNtB3R_18MemberLookupPolicyENCINvMs9_B5M_B3P_3newDNtNtB3T_2db2DbEL_B68_B6W_B77_B79_E0Es_0Es_0EB3T_.exit
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.1041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.1142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
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
  %.sroa.836.0..sroa_idx.promoted = load ptr, ptr %.sroa.836.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1041.0..sroa_idx.promoted = load ptr, ptr %.sroa.1041.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1142.0..sroa_idx.promoted = load ptr, ptr %.sroa.1142.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.promoted = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.promoted = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.not5 = icmp eq i32 %i.ad, -1
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0186 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 4 uses
  %i.ag = call noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0186)
  %i.ah = call noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag) ; 7 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, 74681834113584083366143871365335308616
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEEB1f_.exit, label %bb.f, !prof !4

select.unfold.i:                                  ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d, %bb.e, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB3R_4TypeReNtB3R_18MemberLookupPolicyENCINvMs9_B5M_B3P_3newDNtNtB3T_2db2DbEL_B68_B6W_B77_B79_E0Es_0Es_0EB3T_.exit
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB3R_4TypeReNtB3R_18MemberLookupPolicyENCINvMs9_B5M_B3P_3newDNtNtB3T_2db2DbEL_B68_B6W_B77_B79_E0Es_0Es_0EB3T_.exit ], [ %.sroa.0.0186, %bb.e ], [ %.sroa.0.0186, %bb.d ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ]
  call void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #56
  unreachable

bb.f:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEEB1f_(ptr noundef nonnull align 8 %i.ah) #56
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEEB1f_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !1720 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeReNtB1c_18MemberLookupPolicyENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B4p_B4A_B4C_E0Es_0EB1e_.exit, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeReNtB1c_18MemberLookupPolicyENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B4p_B4A_B4C_E0Es_0EB1e_.exit.thread

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeReNtB1c_18MemberLookupPolicyENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B4p_B4A_B4C_E0Es_0EB1e_.exit.thread: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEEB1f_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0186 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !1720, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw [104 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1041.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1142.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.1041.0..sroa_idx.promoted, align 8, !noalias !1725, !noundef !15
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1142.0..sroa_idx.promoted, align 8, !range !333, !noalias !1725, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1725
  store i32 %i.au, ptr %i.c, align 8, !noalias !1725
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bb, align 4, !noalias !1725
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.bc, align 8, !noalias !1729
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx37, align 8, !noalias !1729
  %.sroa.939.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.939.0..sroa_idx40, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.939.0..sroa_idx, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @_RNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess5_1__INtB5_9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB7_4TypeReNtB7_18MemberLookupPolicyEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB18_B1W_NtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB28_EE10into_ownedB9_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bc), !noalias !1720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1725
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !1725, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !1725, !noundef !15 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bj = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !1725, !noundef !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i16 %i.az, ptr %i.bk, align 8, !noalias !1720
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !1720
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1720
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1720
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !1720
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1720
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i64 0, ptr %i.bl, align 8, !noalias !1720
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 %i.bh, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !1720
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 98
  store i8 %i.bj, ptr %i.bm, align 2, !noalias !1720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ax, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !noalias !1720
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !1720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeReNtB1c_18MemberLookupPolicyENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B4p_B4A_B4C_E0Es_0EB1e_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEEB1f_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeReNtB1c_18MemberLookupPolicyENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B4p_B4A_B4C_E0Es_0EB1e_.exit
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx, align 8
  store ptr %.sroa.1041.0..sroa_idx.promoted, ptr %.sroa.1041.0..sroa_idx, align 8
  store ptr %.sroa.1142.0..sroa_idx.promoted, ptr %.sroa.1142.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !15, !nonnull !15
  %i.bx = call noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs), !inline_history !1730
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1B_4TypeReNtB1B_18MemberLookupPolicyENCINvMs9_B3w_B1z_3newDNtNtB1D_2db2DbEL_B3S_B4G_B4R_B4T_E0Es_0E0B1D_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1B_4TypeReNtB1B_18MemberLookupPolicyENCINvMs9_B3w_B1z_3newDNtNtB1D_2db2DbEL_B3S_B4G_B4R_B4T_E0Es_0E0B1D_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !1731
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !1731
  %i.cb = call noundef align 8 dereferenceable_or_null(13312) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 13312, i64 noundef range(i64 4, 9) 8) #59, !noalias !1731 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEEB1d_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1B_4TypeReNtB1B_18MemberLookupPolicyENCINvMs9_B3w_B1z_3newDNtNtB1D_2db2DbEL_B3S_B4G_B4R_B4T_E0Es_0E0B1D_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 13312) #56
          to label %.noexc.i unwind label %bb.l, !noalias !1731

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !1734
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !1731

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !1731
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %i.cd, %bb.m ], [ %i.cn, %bb.t ], [ %i.cl, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEEB1d_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1B_4TypeReNtB1B_18MemberLookupPolicyENCINvMs9_B3w_B1z_3newDNtNtB1D_2db2DbEL_B3S_B4G_B4R_B4T_E0Es_0E0B1D_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !1731
  store i64 0, ptr %i.w, align 8, !alias.scope !1731
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !1731
  store ptr @131, ptr %i.x, align 8, !alias.scope !1731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @34, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !1731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !1739 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEEB1d_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !1739

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEEB1d_.exit
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !1742 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !1739

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !1739
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !1742
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !1742 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr) ; 0 uses
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeReNtB1c_18MemberLookupPolicyENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B4p_B4A_B4C_E0Es_0EB1e_.exit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeReNtB1c_18MemberLookupPolicyENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B4p_B4A_B4C_E0Es_0EB1e_.exit.thread
  %.sroa.717.077 = phi i32 [ %i.au, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeReNtB1c_18MemberLookupPolicyENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B4p_B4A_B4C_E0Es_0EB1e_.exit.thread ], [ %i.ae, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeReNtB1c_18MemberLookupPolicyENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B4p_B4A_B4C_E0Es_0EB1e_.exit ]
  %.sroa.9.076 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeReNtB1c_18MemberLookupPolicyENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B4p_B4A_B4C_E0Es_0EB1e_.exit.thread ], [ %i.af, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeReNtB1c_18MemberLookupPolicyENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B4p_B4A_B4C_E0Es_0EB1e_.exit ]
  %.sroa.10.075 = phi ptr [ %i.ax, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeReNtB1c_18MemberLookupPolicyENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B4p_B4A_B4C_E0Es_0EB1e_.exit.thread ], [ %.sroa.836.0..sroa_idx.promoted, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types15MemberLookupKeyEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeReNtB1c_18MemberLookupPolicyENCINvMs9_B3f_B1a_3newDNtNtB1e_2db2DbEL_B3B_B4p_B4A_B4C_E0Es_0EB1e_.exit ]
  store i32 %.sroa.717.077, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.076, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.075, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types17MemberLookupErrorENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s3_1__9StructKeyNtNtB1B_5place18PlaceAndQualifiersNtB1z_21MemberLookupErrorKindENCINvMs9_B3w_B1x_3newDNtNtB1B_2db2DbEL_B3S_B4q_E0Es_0EB1B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(104) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [76 x i8], align 4                ; 6 uses
  %i.d = alloca [120 x i8], align 8               ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
end_hunk_0
begin_hunk_1_@_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s6_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1z_4TypeEB3V_B3V_NtNtNtB1z_5class5known10KnownClassENCINvMs9_B3z_B1x_12new_internalDNtNtB1B_2db2DbEL_B3V_B3V_B3V_B4R_E0Es_0EB1B_:bb.a
  store i32 %i.aq, ptr %i.c, align 4, !noalias !1821
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.ay, align 4, !noalias !1821
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @_RNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess6_1__INtB5_9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB7_4TypeEB18_B18_NtNtNtB7_5class5known10KnownClassEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB18_B18_B18_B23_EE10into_ownedB9_(ptr noalias noundef nonnull sret([52 x i8]) align 4 captures(none) dereferenceable(52) %i.az, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(52) %i.ax), !noalias !1816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1821
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.833.0..sroa_idx.promoted) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.833.0..sroa_idx.promoted, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !1821, !nonnull !15, !noundef !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !1821, !noundef !15 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 384307168202282326
  call void @llvm.assume(i1 %i.be)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0..sroa_idx.promoted) ]
  %i.bf = load i8, ptr %.sroa.10.0..sroa_idx.promoted, align 1, !range !259, !noalias !1821, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 100
  store i16 %i.av, ptr %i.bg, align 4, !noalias !1816
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !1816
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1816
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.aq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1816
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !1816
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.aw, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1816
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.bh, align 8, !noalias !1816
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bd, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !1816
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 102
  store i8 %i.bf, ptr %i.bi, align 2, !noalias !1816
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.at, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !noalias !1816
  %i.bj = add nuw nsw i64 %i.aj, 1
  store atomic i64 %i.bj, ptr %i.al release, align 8, !noalias !1816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1c_4TypeEB3G_B3G_NtNtNtB1c_5class5known10KnownClassENCINvMs9_B3k_B1a_12new_internalDNtNtB1e_2db2DbEL_B3G_B3G_B3G_B4C_E0Es_0EB1e_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeEEB1f_.exit
  %i.bk = ptrtoint ptr %.sroa.031.0.copyload to i64 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1c_4TypeEB3G_B3G_NtNtNtB1c_5class5known10KnownClassENCINvMs9_B3k_B1a_12new_internalDNtNtB1e_2db2DbEL_B3G_B3G_B3G_B4C_E0Es_0EB1e_.exit
  store i64 %i.bk, ptr %4, align 8
  store ptr %.sroa.632.0..sroa_idx.promoted, ptr %.sroa.632.0..sroa_idx, align 8
  store ptr %.sroa.833.0..sroa_idx.promoted, ptr %.sroa.833.0..sroa_idx, align 8
  store ptr %.sroa.10.0..sroa_idx.promoted, ptr %.sroa.10.0..sroa_idx, align 8
  store i32 %.sroa.1134.0..sroa_idx.promoted, ptr %.sroa.1134.0..sroa_idx, align 8
  %i.bl = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, %i.s
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.s ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !15, !noundef !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !15, !nonnull !15
  %i.bu = call noundef nonnull align 8 ptr %i.bt(ptr noundef nonnull %i.bp), !inline_history !1826
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s6_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1B_4TypeEB3X_B3X_NtNtNtB1B_5class5known10KnownClassENCINvMs9_B3B_B1z_12new_internalDNtNtB1D_2db2DbEL_B3X_B3X_B3X_B4T_E0Es_0E0B1D_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s6_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1B_4TypeEB3X_B3X_NtNtNtB1B_5class5known10KnownClassENCINvMs9_B3B_B1z_12new_internalDNtNtB1D_2db2DbEL_B3X_B3X_B3X_B4T_E0Es_0E0B1D_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bv, ptr %i.b, align 8, !noalias !1827
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !1827
  %i.by = call noundef align 8 dereferenceable_or_null(13312) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 13312, i64 noundef range(i64 4, 9) 8) #59, !noalias !1827 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeEEB1d_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s6_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1B_4TypeEB3X_B3X_NtNtNtB1B_5class5known10KnownClassENCINvMs9_B3B_B1z_12new_internalDNtNtB1D_2db2DbEL_B3X_B3X_B3X_B4T_E0Es_0E0B1D_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 13312) #56
          to label %.noexc.i unwind label %bb.l, !noalias !1827

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !noalias !1830
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !1827

bb.n:                                             ; preds = %bb.m
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !1827
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.l ], [ %i.ca, %bb.m ], [ %i.ck, %bb.t ], [ %i.ci, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeEEB1d_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s6_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1B_4TypeEB3X_B3X_NtNtNtB1B_5class5known10KnownClassENCINvMs9_B3B_B1z_12new_internalDNtNtB1D_2db2DbEL_B3X_B3X_B3X_B4T_E0Es_0E0B1D_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !1827
  store i64 0, ptr %i.w, align 8, !alias.scope !1827
  store ptr %i.by, ptr %i.e, align 8, !alias.scope !1827
  store ptr @134, ptr %i.x, align 8, !alias.scope !1827
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @37, i64 16, i1 false)
  store ptr %i.bv, ptr %i.z, align 8, !alias.scope !1827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ce = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !1835 ; 5 uses
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeEEB1d_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !1835

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeEEB1d_.exit
  %i.cg = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ce)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !1838 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !1835

bb.r:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !1835
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ch, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  store atomic i8 1, ptr %i.cm release, align 8, !noalias !1838
  %i.cn = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !1838 ; 0 uses
  %i.co = add nsw i64 %i.ce, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cp = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.co) ; 0 uses
  %i.cq = icmp samesign ugt i64 %i.ce, 31
  br i1 %i.cq, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1c_4TypeEB3G_B3G_NtNtNtB1c_5class5known10KnownClassENCINvMs9_B3k_B1a_12new_internalDNtNtB1e_2db2DbEL_B3G_B3G_B3G_B4C_E0Es_0EB1e_.exit
  %.sroa.031.0.extract.trunc.le = trunc i64 %i.bk to i32
  %.sroa.031.4.extract.shift.le = lshr i64 %i.bk, 32
  %.sroa.031.4.extract.trunc.le = trunc nuw i64 %.sroa.031.4.extract.shift.le to i32
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1c_4TypeEB3G_B3G_NtNtNtB1c_5class5known10KnownClassENCINvMs9_B3k_B1a_12new_internalDNtNtB1e_2db2DbEL_B3G_B3G_B3G_B4C_E0Es_0EB1e_.exit.thread
  %.sroa.014.063 = phi i32 [ %i.aq, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1c_4TypeEB3G_B3G_NtNtNtB1c_5class5known10KnownClassENCINvMs9_B3k_B1a_12new_internalDNtNtB1e_2db2DbEL_B3G_B3G_B3G_B4C_E0Es_0EB1e_.exit.thread ], [ %.sroa.031.0.extract.trunc.le, %.loopexit ]
  %.sroa.7.062 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1c_4TypeEB3G_B3G_NtNtNtB1c_5class5known10KnownClassENCINvMs9_B3k_B1a_12new_internalDNtNtB1e_2db2DbEL_B3G_B3G_B3G_B4C_E0Es_0EB1e_.exit.thread ], [ %.sroa.031.4.extract.trunc.le, %.loopexit ]
  %.sroa.821.061 = phi ptr [ %i.at, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types20PropertyInstanceTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1c_4TypeEB3G_B3G_NtNtNtB1c_5class5known10KnownClassENCINvMs9_B3k_B1a_12new_internalDNtNtB1e_2db2DbEL_B3G_B3G_B3G_B4C_E0Es_0EB1e_.exit.thread ], [ %.sroa.632.0..sroa_idx.promoted, %.loopexit ]
  store i32 %.sroa.014.063, ptr %0, align 8
  %.sroa.7.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.7.062, ptr %.sroa.7.0..sroa_idx19, align 4
  %.sroa.821.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.821.061, ptr %.sroa.821.0..sroa_idx24, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s_1__9StructKeyNtB1z_4TypeB3Y_INtNtCs4NRVxsYgnAr_4core6option6OptionB3Y_EB3Y_ENCINvMs9_B3D_B1x_3newDNtNtB1B_2db2DbEL_B3Y_B3Y_B4d_B3Y_E0Es_0EB1B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 4                ; 7 uses
  %i.d = alloca [120 x i8], align 8               ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.457.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.558.0.copyload = load ptr, ptr %.sroa.558.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = ptrtoint ptr %.sroa.558.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.k to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.m = call noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextENCINvMs_NtB8_11zalsa_localNtB2G_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_s_1__9StructKeyNtB1s_4TypeB4S_INtNtCs4NRVxsYgnAr_4core6option6OptionB4S_EB4S_ENCINvMs9_B4x_B1q_3newDNtNtB1u_2db2DbEL_B4S_B4S_B57_B4S_E0Es_0E0EB1u_(ptr noundef nonnull align 8 %i.l, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !1841
  %i.n = call noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.457.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.m), !noalias !1847
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyNtB3R_4TypeB6g_INtNtCs4NRVxsYgnAr_4core6option6OptionB6g_EB6g_ENCINvMs9_B5V_B3P_3newDNtNtB3T_2db2DbEL_B6g_B6g_B6v_B6g_E0Es_0Es_0EB3T_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyNtB3R_4TypeB6g_INtNtCs4NRVxsYgnAr_4core6option6OptionB6g_EB6g_ENCINvMs9_B5V_B3P_3newDNtNtB3T_2db2DbEL_B6g_B6g_B6v_B6g_E0Es_0Es_0EB3T_.exit

_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyNtB3R_4TypeB6g_INtNtCs4NRVxsYgnAr_4core6option6OptionB6g_EB6g_ENCINvMs9_B5V_B3P_3newDNtNtB3T_2db2DbEL_B6g_B6g_B6v_B6g_E0Es_0Es_0EB3T_.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyNtB3R_4TypeB6g_INtNtCs4NRVxsYgnAr_4core6option6OptionB6g_EB6g_ENCINvMs9_B5V_B3P_3newDNtNtB3T_2db2DbEL_B6g_B6g_B6v_B6g_E0Es_0Es_0EB3T_.exit
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.1041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %.sroa.1142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
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
  %.sroa.836.0..sroa_idx.promoted = load ptr, ptr %.sroa.836.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1041.0..sroa_idx.promoted = load ptr, ptr %.sroa.1041.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1142.0..sroa_idx.promoted = load ptr, ptr %.sroa.1142.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.promoted = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.promoted = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.not5 = icmp eq i32 %i.ad, -1
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0186 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 4 uses
  %i.ag = call noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0186)
  %i.ah = call noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag) ; 7 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, 126830289311294403713972165755073440538
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEEB1f_.exit, label %bb.f, !prof !4

select.unfold.i:                                  ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d, %bb.e, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyNtB3R_4TypeB6g_INtNtCs4NRVxsYgnAr_4core6option6OptionB6g_EB6g_ENCINvMs9_B5V_B3P_3newDNtNtB3T_2db2DbEL_B6g_B6g_B6v_B6g_E0Es_0Es_0EB3T_.exit
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyNtB3R_4TypeB6g_INtNtCs4NRVxsYgnAr_4core6option6OptionB6g_EB6g_ENCINvMs9_B5V_B3P_3newDNtNtB3T_2db2DbEL_B6g_B6g_B6v_B6g_E0Es_0Es_0EB3T_.exit ], [ %.sroa.0.0186, %bb.e ], [ %.sroa.0.0186, %bb.d ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ]
  call void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #56
  unreachable

bb.f:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEEB1f_(ptr noundef nonnull align 8 %i.ah) #56
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEEB1f_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !1848 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtB1c_4TypeB3J_INtNtCs4NRVxsYgnAr_4core6option6OptionB3J_EB3J_ENCINvMs9_B3o_B1a_3newDNtNtB1e_2db2DbEL_B3J_B3J_B3Y_B3J_E0Es_0EB1e_.exit, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtB1c_4TypeB3J_INtNtCs4NRVxsYgnAr_4core6option6OptionB3J_EB3J_ENCINvMs9_B3o_B1a_3newDNtNtB1e_2db2DbEL_B3J_B3J_B3Y_B3J_E0Es_0EB1e_.exit.thread

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtB1c_4TypeB3J_INtNtCs4NRVxsYgnAr_4core6option6OptionB3J_EB3J_ENCINvMs9_B3o_B1a_3newDNtNtB1e_2db2DbEL_B3J_B3J_B3Y_B3J_E0Es_0EB1e_.exit.thread: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEEB1f_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0186 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !1848, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw [120 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1041.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1142.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.1041.0..sroa_idx.promoted, align 8, !noalias !1853, !noundef !15
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1142.0..sroa_idx.promoted, align 8, !range !333, !noalias !1853, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1853
  store i32 %i.au, ptr %i.c, align 4, !noalias !1853
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bb, align 4, !noalias !1853
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.bc, align 4, !noalias !1857
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx37, align 4, !noalias !1857
  %.sroa.939.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.939.0..sroa_idx40, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.939.0..sroa_idx, i64 40, i1 false)
  call void @_RNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic5typess_1__INtB5_9StructKeyNtB7_4TypeB17_INtNtCs4NRVxsYgnAr_4core6option6OptionB17_EB17_EINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB17_B17_B1l_B17_EE10into_ownedB9_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(120) %i.d, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(64) %i.bc), !noalias !1848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1853
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !1853, !nonnull !15, !noundef !15
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !1853, !noundef !15 ; 2 uses
  %i.bh = icmp ult i64 %i.bg, 384307168202282326
  call void @llvm.assume(i1 %i.bh)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bi = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !1853, !noundef !15
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i16 %i.az, ptr %i.bj, align 8, !noalias !1848
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.bk, align 8, !noalias !1848
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1848
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1848
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 84
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !1848
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1848
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i64 0, ptr %i.bl, align 8, !noalias !1848
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 %i.bg, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !1848
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 114
  store i8 %i.bi, ptr %i.bm, align 2, !noalias !1848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ax, ptr noundef nonnull align 8 dereferenceable(120) %i.d, i64 120, i1 false), !noalias !1848
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !1848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtB1c_4TypeB3J_INtNtCs4NRVxsYgnAr_4core6option6OptionB3J_EB3J_ENCINvMs9_B3o_B1a_3newDNtNtB1e_2db2DbEL_B3J_B3J_B3Y_B3J_E0Es_0EB1e_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEEB1f_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtB1c_4TypeB3J_INtNtCs4NRVxsYgnAr_4core6option6OptionB3J_EB3J_ENCINvMs9_B3o_B1a_3newDNtNtB1e_2db2DbEL_B3J_B3J_B3Y_B3J_E0Es_0EB1e_.exit
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx, align 8
  store ptr %.sroa.1041.0..sroa_idx.promoted, ptr %.sroa.1041.0..sroa_idx, align 8
  store ptr %.sroa.1142.0..sroa_idx.promoted, ptr %.sroa.1142.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !15, !nonnull !15
  %i.bx = call noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs), !inline_history !1858
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s_1__9StructKeyNtB1B_4TypeB40_INtNtCs4NRVxsYgnAr_4core6option6OptionB40_EB40_ENCINvMs9_B3F_B1z_3newDNtNtB1D_2db2DbEL_B40_B40_B4f_B40_E0Es_0E0B1D_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s_1__9StructKeyNtB1B_4TypeB40_INtNtCs4NRVxsYgnAr_4core6option6OptionB40_EB40_ENCINvMs9_B3F_B1z_3newDNtNtB1D_2db2DbEL_B40_B40_B4f_B40_E0Es_0E0B1D_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !1859
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !1859
  %i.cb = call noundef align 8 dereferenceable_or_null(15360) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 15360, i64 noundef range(i64 4, 9) 8) #59, !noalias !1859 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEEB1d_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s_1__9StructKeyNtB1B_4TypeB40_INtNtCs4NRVxsYgnAr_4core6option6OptionB40_EB40_ENCINvMs9_B3F_B1z_3newDNtNtB1D_2db2DbEL_B40_B40_B4f_B40_E0Es_0E0B1D_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 15360) #56
          to label %.noexc.i unwind label %bb.l, !noalias !1859

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !1862
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !1859

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !1859
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %i.cd, %bb.m ], [ %i.cn, %bb.t ], [ %i.cl, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEEB1d_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s_1__9StructKeyNtB1B_4TypeB40_INtNtCs4NRVxsYgnAr_4core6option6OptionB40_EB40_ENCINvMs9_B3F_B1z_3newDNtNtB1D_2db2DbEL_B40_B40_B4f_B40_E0Es_0E0B1D_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !1859
  store i64 0, ptr %i.w, align 8, !alias.scope !1859
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !1859
  store ptr @135, ptr %i.x, align 8, !alias.scope !1859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @38, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !1859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !1867 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEEB1d_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !1867

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEEB1d_.exit
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !1870 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !1867

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !1867
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !1870
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !1870 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr) ; 0 uses
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtB1c_4TypeB3J_INtNtCs4NRVxsYgnAr_4core6option6OptionB3J_EB3J_ENCINvMs9_B3o_B1a_3newDNtNtB1e_2db2DbEL_B3J_B3J_B3Y_B3J_E0Es_0EB1e_.exit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtB1c_4TypeB3J_INtNtCs4NRVxsYgnAr_4core6option6OptionB3J_EB3J_ENCINvMs9_B3o_B1a_3newDNtNtB1e_2db2DbEL_B3J_B3J_B3Y_B3J_E0Es_0EB1e_.exit.thread
  %.sroa.717.077 = phi i32 [ %i.au, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtB1c_4TypeB3J_INtNtCs4NRVxsYgnAr_4core6option6OptionB3J_EB3J_ENCINvMs9_B3o_B1a_3newDNtNtB1e_2db2DbEL_B3J_B3J_B3Y_B3J_E0Es_0EB1e_.exit.thread ], [ %i.ae, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtB1c_4TypeB3J_INtNtCs4NRVxsYgnAr_4core6option6OptionB3J_EB3J_ENCINvMs9_B3o_B1a_3newDNtNtB1e_2db2DbEL_B3J_B3J_B3Y_B3J_E0Es_0EB1e_.exit ]
  %.sroa.9.076 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtB1c_4TypeB3J_INtNtCs4NRVxsYgnAr_4core6option6OptionB3J_EB3J_ENCINvMs9_B3o_B1a_3newDNtNtB1e_2db2DbEL_B3J_B3J_B3Y_B3J_E0Es_0EB1e_.exit.thread ], [ %i.af, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtB1c_4TypeB3J_INtNtCs4NRVxsYgnAr_4core6option6OptionB3J_EB3J_ENCINvMs9_B3o_B1a_3newDNtNtB1e_2db2DbEL_B3J_B3J_B3Y_B3J_E0Es_0EB1e_.exit ]
  %.sroa.10.075 = phi ptr [ %i.ax, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtB1c_4TypeB3J_INtNtCs4NRVxsYgnAr_4core6option6OptionB3J_EB3J_ENCINvMs9_B3o_B1a_3newDNtNtB1e_2db2DbEL_B3J_B3J_B3Y_B3J_E0Es_0EB1e_.exit.thread ], [ %.sroa.836.0..sroa_idx.promoted, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types24DescriptorGetCallContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyNtB1c_4TypeB3J_INtNtCs4NRVxsYgnAr_4core6option6OptionB3J_EB3J_ENCINvMs9_B3o_B1a_3newDNtNtB1e_2db2DbEL_B3J_B3J_B3Y_B3J_E0Es_0EB1e_.exit ]
  store i32 %.sroa.717.077, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.076, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.075, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1z_4TypeB4w_ENCINvMs9_B3m_B1x_3newDNtNtB1B_2db2DbEL_B3I_B4w_B4w_E0Es_0EB1B_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(72) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 4                ; 7 uses
  %i.d = alloca [96 x i8], align 8                ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.457.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.558.0.copyload = load ptr, ptr %.sroa.558.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = ptrtoint ptr %.sroa.558.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.k to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.m = call noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairENCINvMs_NtB8_11zalsa_localNtB2p_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1s_4TypeB5q_ENCINvMs9_B4g_B1q_3newDNtNtB1u_2db2DbEL_B4C_B5q_B5q_E0Es_0E0EB1u_(ptr noundef nonnull align 8 %i.l, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !1873
  %i.n = call noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.457.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.m), !noalias !1879
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB3R_4TypeB6O_ENCINvMs9_B5E_B3P_3newDNtNtB3T_2db2DbEL_B60_B6O_B6O_E0Es_0Es_0EB3T_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB3R_4TypeB6O_ENCINvMs9_B5E_B3P_3newDNtNtB3T_2db2DbEL_B60_B6O_B6O_E0Es_0Es_0EB3T_.exit

_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB3R_4TypeB6O_ENCINvMs9_B5E_B3P_3newDNtNtB3T_2db2DbEL_B60_B6O_B6O_E0Es_0Es_0EB3T_.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB3R_4TypeB6O_ENCINvMs9_B5E_B3P_3newDNtNtB3T_2db2DbEL_B60_B6O_B6O_E0Es_0Es_0EB3T_.exit
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.1041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.sroa.1142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
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
  %.sroa.836.0..sroa_idx.promoted = load ptr, ptr %.sroa.836.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1041.0..sroa_idx.promoted = load ptr, ptr %.sroa.1041.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1142.0..sroa_idx.promoted = load ptr, ptr %.sroa.1142.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.promoted = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.promoted = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.not5 = icmp eq i32 %i.ad, -1
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0186 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 4 uses
  %i.ag = call noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0186)
  %i.ah = call noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag) ; 7 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, 161942696049969313880525923059928553888
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEEB1f_.exit, label %bb.f, !prof !4

select.unfold.i:                                  ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d, %bb.e, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB3R_4TypeB6O_ENCINvMs9_B5E_B3P_3newDNtNtB3T_2db2DbEL_B60_B6O_B6O_E0Es_0Es_0EB3T_.exit
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB3R_4TypeB6O_ENCINvMs9_B5E_B3P_3newDNtNtB3T_2db2DbEL_B60_B6O_B6O_E0Es_0Es_0EB3T_.exit ], [ %.sroa.0.0186, %bb.e ], [ %.sroa.0.0186, %bb.d ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ]
  call void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #56
  unreachable

bb.f:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEEB1f_(ptr noundef nonnull align 8 %i.ah) #56
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEEB1f_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !1880 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeB4h_ENCINvMs9_B37_B1a_3newDNtNtB1e_2db2DbEL_B3t_B4h_B4h_E0Es_0EB1e_.exit, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeB4h_ENCINvMs9_B37_B1a_3newDNtNtB1e_2db2DbEL_B3t_B4h_B4h_E0Es_0EB1e_.exit.thread

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeB4h_ENCINvMs9_B37_B1a_3newDNtNtB1e_2db2DbEL_B3t_B4h_B4h_E0Es_0EB1e_.exit.thread: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEEB1f_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0186 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !1880, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw [96 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1041.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1142.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.1041.0..sroa_idx.promoted, align 8, !noalias !1885, !noundef !15
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1142.0..sroa_idx.promoted, align 8, !range !333, !noalias !1885, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1885
  store i32 %i.au, ptr %i.c, align 4, !noalias !1885
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bb, align 4, !noalias !1885
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.bc, align 4, !noalias !1889
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx37, align 4, !noalias !1889
  %.sroa.939.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.939.0..sroa_idx40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.939.0..sroa_idx, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @_RNvXs0_NvNtCsoTR8nlGN3X_18ty_python_semantic5typessa_1__INtB5_9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB7_4TypeB1W_EINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB18_B1W_B1W_EE10into_ownedB9_(ptr noalias noundef nonnull sret([40 x i8]) align 4 captures(none) dereferenceable(40) %i.bd, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(40) %i.bc), !noalias !1880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1885
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !1885, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !1885, !noundef !15 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bj = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !1885, !noundef !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i16 %i.az, ptr %i.bk, align 8, !noalias !1880
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !1880
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1880
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1880
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !1880
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1880
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.bl, align 8, !noalias !1880
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bh, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !1880
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 90
  store i8 %i.bj, ptr %i.bm, align 2, !noalias !1880
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ax, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !1880
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !1880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeB4h_ENCINvMs9_B37_B1a_3newDNtNtB1e_2db2DbEL_B3t_B4h_B4h_E0Es_0EB1e_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEEB1f_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeB4h_ENCINvMs9_B37_B1a_3newDNtNtB1e_2db2DbEL_B3t_B4h_B4h_E0Es_0EB1e_.exit
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx, align 8
  store ptr %.sroa.1041.0..sroa_idx.promoted, ptr %.sroa.1041.0..sroa_idx, align 8
  store ptr %.sroa.1142.0..sroa_idx.promoted, ptr %.sroa.1142.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !15, !nonnull !15
  %i.bx = call noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs), !inline_history !1890
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1B_4TypeB4y_ENCINvMs9_B3o_B1z_3newDNtNtB1D_2db2DbEL_B3K_B4y_B4y_E0Es_0E0B1D_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1B_4TypeB4y_ENCINvMs9_B3o_B1z_3newDNtNtB1D_2db2DbEL_B3K_B4y_B4y_E0Es_0E0B1D_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !1891
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !1891
  %i.cb = call noundef align 8 dereferenceable_or_null(12288) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 12288, i64 noundef range(i64 4, 9) 8) #59, !noalias !1891 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEEB1d_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1B_4TypeB4y_ENCINvMs9_B3o_B1z_3newDNtNtB1D_2db2DbEL_B3K_B4y_B4y_E0Es_0E0B1D_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 12288) #56
          to label %.noexc.i unwind label %bb.l, !noalias !1891

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !1894
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !1891

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !1891
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %i.cd, %bb.m ], [ %i.cn, %bb.t ], [ %i.cl, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEEB1d_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1B_4TypeB4y_ENCINvMs9_B3o_B1z_3newDNtNtB1D_2db2DbEL_B3K_B4y_B4y_E0Es_0E0B1D_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !1891
  store i64 0, ptr %i.w, align 8, !alias.scope !1891
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !1891
  store ptr @136, ptr %i.x, align 8, !alias.scope !1891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @39, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !1891
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !1899 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEEB1d_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !1899

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEEB1d_.exit
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !1902 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !1899

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !1899
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !1902
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !1902 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1899
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr) ; 0 uses
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeB4h_ENCINvMs9_B37_B1a_3newDNtNtB1e_2db2DbEL_B3t_B4h_B4h_E0Es_0EB1e_.exit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeB4h_ENCINvMs9_B37_B1a_3newDNtNtB1e_2db2DbEL_B3t_B4h_B4h_E0Es_0EB1e_.exit.thread
  %.sroa.717.077 = phi i32 [ %i.au, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeB4h_ENCINvMs9_B37_B1a_3newDNtNtB1e_2db2DbEL_B3t_B4h_B4h_E0Es_0EB1e_.exit.thread ], [ %i.ae, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeB4h_ENCINvMs9_B37_B1a_3newDNtNtB1e_2db2DbEL_B3t_B4h_B4h_E0Es_0EB1e_.exit ]
  %.sroa.9.076 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeB4h_ENCINvMs9_B37_B1a_3newDNtNtB1e_2db2DbEL_B3t_B4h_B4h_E0Es_0EB1e_.exit.thread ], [ %i.af, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeB4h_ENCINvMs9_B37_B1a_3newDNtNtB1e_2db2DbEL_B3t_B4h_B4h_E0Es_0EB1e_.exit ]
  %.sroa.10.075 = phi ptr [ %i.ax, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeB4h_ENCINvMs9_B37_B1a_3newDNtNtB1e_2db2DbEL_B3t_B4h_B4h_E0Es_0EB1e_.exit.thread ], [ %.sroa.836.0..sroa_idx.promoted, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtCsoTR8nlGN3X_18ty_python_semantic5types8TypePairEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sa_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramNtB1c_4TypeB4h_ENCINvMs9_B37_B1a_3newDNtNtB1e_2db2DbEL_B3t_B4h_B4h_E0Es_0EB1e_.exit ]
  store i32 %.sroa.717.077, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.076, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.075, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10type_alias19PEP695TypeAliasTypeENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB1B_8generics14SpecializationEENCINvMs9_B3M_B1x_3newDNtNtB1D_2db2DbEL_B45_B4P_B5B_E0Es_0EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(56) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [88 x i8], align 8                ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
end_hunk_1
begin_hunk_2_@_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict24SynthesizedTypedDictTypeENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s4_1__9StructKeyNtB1z_15TypedDictSchemaNtB1z_24SynthesizedTypedDictKindNtB1z_17TypedDictOpennessENCINvMs9_B3R_B1x_3newDNtNtB1D_2db2DbEL_B4d_B4A_B56_E0Es_0EB1D_:bb.a
  store i64 %i.bd, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !1998
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 98
  store i8 %i.bf, ptr %i.bi, align 2, !noalias !1998
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.at, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !noalias !1998
  %i.bj = add nuw nsw i64 %i.aj, 1
  store atomic i64 %i.bj, ptr %i.al release, align 8, !noalias !1998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1146)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %bb.n

bb.i:                                             ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict24SynthesizedTypedDictTypeEEB1h_.exit
  %i.bk = ptrtoint ptr %.sroa.043.0.copyload to i64 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1146, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.11, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1146)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %.not5 = icmp eq i32 %.sroa.12.0.copyload, -1
  br i1 %.not5, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.bk, ptr %4, align 8
  store ptr %.sroa.644.0.copyload, ptr %.sroa.644.0..sroa_idx, align 8
  store ptr %.sroa.845.0.copyload, ptr %.sroa.845.0..sroa_idx, align 8
  store ptr %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.1146.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.6, i64 24, i1 false)
  store i32 %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.11, i64 20, i1 false)
  %i.bl = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, %i.s
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.s ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !15, !noundef !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !15, !nonnull !15
  %i.bu = invoke noundef nonnull align 8 ptr %i.bt(ptr noundef nonnull %i.bp)
          to label %.noexc18 unwind label %.body.thread67.loopexit, !inline_history !2008

.noexc18:                                         ; preds = %bb.k
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict24SynthesizedTypedDictTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s4_1__9StructKeyNtB1B_15TypedDictSchemaNtB1B_24SynthesizedTypedDictKindNtB1B_17TypedDictOpennessENCINvMs9_B3T_B1z_3newDNtNtB1F_2db2DbEL_B4f_B4C_B58_E0Es_0E0B1F_.exit

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
          to label %.noexc19 unwind label %.body.thread67.loopexit.split-lp

.noexc19:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.noexc18
  call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %bb.i
  %.sroa.043.0.extract.trunc.le = trunc i64 %i.bk to i32
  %.sroa.043.4.extract.shift.le = lshr i64 %i.bk, 32
  %.sroa.043.4.extract.trunc.le = trunc nuw i64 %.sroa.043.4.extract.shift.le to i32
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %.thread75
  %.sroa.026.085 = phi i32 [ %i.aq, %.thread75 ], [ %.sroa.043.0.extract.trunc.le, %.loopexit ]
  %.sroa.7.084 = phi i32 [ 0, %.thread75 ], [ %.sroa.043.4.extract.trunc.le, %.loopexit ]
  %.sroa.833.083 = phi ptr [ %i.at, %.thread75 ], [ %.sroa.644.0.copyload, %.loopexit ]
  store i32 %.sroa.026.085, ptr %0, align 8
  %.sroa.7.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.7.084, ptr %.sroa.7.0..sroa_idx31, align 4
  %.sroa.833.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.833.083, ptr %.sroa.833.0..sroa_idx36, align 8
  ret void

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict24SynthesizedTypedDictTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s4_1__9StructKeyNtB1B_15TypedDictSchemaNtB1B_24SynthesizedTypedDictKindNtB1B_17TypedDictOpennessENCINvMs9_B3T_B1z_3newDNtNtB1F_2db2DbEL_B4f_B4C_B58_E0Es_0E0B1F_.exit: ; preds = %.noexc18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !2009)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bv, ptr %i.b, align 8, !noalias !2009
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2009
  %i.by = call noundef align 8 dereferenceable_or_null(13312) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 13312, i64 noundef range(i64 4, 9) 8) #59, !noalias !2009 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.o, label %bb.s, !prof !3

bb.o:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict24SynthesizedTypedDictTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s4_1__9StructKeyNtB1B_15TypedDictSchemaNtB1B_24SynthesizedTypedDictKindNtB1B_17TypedDictOpennessENCINvMs9_B3T_B1z_3newDNtNtB1F_2db2DbEL_B4f_B4C_B58_E0Es_0E0B1F_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 13312) #56
          to label %.noexc.i unwind label %bb.p, !noalias !2009

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !noalias !2012
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.q, label %.body.thread

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body.thread unwind label %bb.r, !noalias !2009

bb.r:                                             ; preds = %bb.q
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2009
  unreachable

bb.s:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict24SynthesizedTypedDictTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s4_1__9StructKeyNtB1B_15TypedDictSchemaNtB1B_24SynthesizedTypedDictKindNtB1B_17TypedDictOpennessENCINvMs9_B3T_B1z_3newDNtNtB1F_2db2DbEL_B4f_B4C_B58_E0Es_0E0B1F_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !2009
  store i64 0, ptr %i.w, align 8, !alias.scope !2009
  store ptr %i.by, ptr %i.e, align 8, !alias.scope !2009
  store ptr @139, ptr %i.x, align 8, !alias.scope !2009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @42, i64 16, i1 false)
  store ptr %i.bv, ptr %i.z, align 8, !alias.scope !2009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ce = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !2017 ; 5 uses
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.t, label %bb.u, !prof !3

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.x unwind label %bb.y, !noalias !2017

bb.u:                                             ; preds = %bb.s
  %i.cg = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ce)
          to label %bb.aa unwind label %bb.v, !noalias !2020 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %.body.thread unwind label %bb.w, !noalias !2017

bb.w:                                             ; preds = %bb.v
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2017
  unreachable

bb.x:                                             ; preds = %bb.t
  unreachable

bb.y:                                             ; preds = %bb.t
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %.body.thread unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.aa:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ch, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  store atomic i8 1, ptr %i.cm release, align 8, !noalias !2020
  %i.cn = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !2020 ; 0 uses
  %i.co = add nsw i64 %i.ce, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cp = invoke { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.co)
          to label %bb.ab unwind label %.body.thread67.loopexit ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cq = icmp samesign ugt i64 %i.ce, 31
  br i1 %i.cq, label %bb.f, label %select.unfold.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtBK_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict24SynthesizedTypedDictTypeE14intern_id_coldINtNvB1D_s4_1__9StructKeyNtB1D_15TypedDictSchemaNtB1D_24SynthesizedTypedDictKindNtB1D_17TypedDictOpennessENCINvMs9_B3g_B1B_3newDNtNtB1H_2db2DbEL_B3C_B3Z_B4v_E0Es_0EB1H_.exit: ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body65

.body.thread:                                     ; preds = %.body.thread67.loopexit, %.body.thread67.loopexit.split-lp, %bb.v, %bb.y, %bb.p, %bb.q
  %eh.lpad-body65 = phi { ptr, i32 } [ %i.ci, %bb.v ], [ %i.ca, %bb.p ], [ %i.ca, %bb.q ], [ %i.ck, %bb.y ], [ %lpad.loopexit, %.body.thread67.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread67.loopexit.split-lp ]
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 32
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict14TypedDictFieldENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1S_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.cr)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtBK_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dict24SynthesizedTypedDictTypeE14intern_id_coldINtNvB1D_s4_1__9StructKeyNtB1D_15TypedDictSchemaNtB1D_24SynthesizedTypedDictKindNtB1D_17TypedDictOpennessENCINvMs9_B3g_B1B_3newDNtNtB1H_2db2DbEL_B3C_B3Z_B4v_E0Es_0EB1H_.exit unwind label %bb.ac

bb.ac:                                            ; preds = %.body.thread
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s0_1__9StructKeyNtNtB1B_10class_base9ClassBaseNtB1z_14SuperOwnerKindENCINvMs9_B3I_B1x_3newDNtNtB1D_2db2DbEL_B44_B4y_E0Es_0EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(80) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [56 x i8], align 4                ; 7 uses
  %i.d = alloca [104 x i8], align 8               ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.457.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.558.0.copyload = load ptr, ptr %.sroa.558.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = ptrtoint ptr %.sroa.558.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.k to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.m = call noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeENCINvMs_NtB8_11zalsa_localNtB2L_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_s0_1__9StructKeyNtNtB1u_10class_base9ClassBaseNtB1s_14SuperOwnerKindENCINvMs9_B4C_B1q_3newDNtNtB1w_2db2DbEL_B4Y_B5s_E0Es_0E0EB1w_(ptr noundef nonnull align 8 %i.l, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !2023
  %i.n = call noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.457.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.m), !noalias !2029
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyNtNtB3T_10class_base9ClassBaseNtB3R_14SuperOwnerKindENCINvMs9_B60_B3P_3newDNtNtB3V_2db2DbEL_B6m_B6Q_E0Es_0Es_0EB3V_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyNtNtB3T_10class_base9ClassBaseNtB3R_14SuperOwnerKindENCINvMs9_B60_B3P_3newDNtNtB3V_2db2DbEL_B6m_B6Q_E0Es_0Es_0EB3V_.exit

_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyNtNtB3T_10class_base9ClassBaseNtB3R_14SuperOwnerKindENCINvMs9_B60_B3P_3newDNtNtB3V_2db2DbEL_B6m_B6Q_E0Es_0Es_0EB3V_.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyNtNtB3T_10class_base9ClassBaseNtB3R_14SuperOwnerKindENCINvMs9_B60_B3P_3newDNtNtB3V_2db2DbEL_B6m_B6Q_E0Es_0Es_0EB3V_.exit
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.1041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.1142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
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
  %.sroa.836.0..sroa_idx.promoted = load ptr, ptr %.sroa.836.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1041.0..sroa_idx.promoted = load ptr, ptr %.sroa.1041.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1142.0..sroa_idx.promoted = load ptr, ptr %.sroa.1142.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.promoted = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.promoted = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.not5 = icmp eq i32 %i.ad, -2
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0186 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 4 uses
  %i.ag = call noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0186)
  %i.ah = call noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag) ; 7 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, -52181968669490940259536824748439273874
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEEB1h_.exit, label %bb.f, !prof !4

select.unfold.i:                                  ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d, %bb.e, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyNtNtB3T_10class_base9ClassBaseNtB3R_14SuperOwnerKindENCINvMs9_B60_B3P_3newDNtNtB3V_2db2DbEL_B6m_B6Q_E0Es_0Es_0EB3V_.exit
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyNtNtB3T_10class_base9ClassBaseNtB3R_14SuperOwnerKindENCINvMs9_B60_B3P_3newDNtNtB3V_2db2DbEL_B6m_B6Q_E0Es_0Es_0EB3V_.exit ], [ %.sroa.0.0186, %bb.e ], [ %.sroa.0.0186, %bb.d ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ]
  call void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #56
  unreachable

bb.f:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEEB1h_(ptr noundef nonnull align 8 %i.ah) #56
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEEB1h_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !2030 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtB1e_10class_base9ClassBaseNtB1c_14SuperOwnerKindENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4j_E0Es_0EB1g_.exit, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtB1e_10class_base9ClassBaseNtB1c_14SuperOwnerKindENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4j_E0Es_0EB1g_.exit.thread

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtB1e_10class_base9ClassBaseNtB1c_14SuperOwnerKindENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4j_E0Es_0EB1g_.exit.thread: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEEB1h_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0186 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !2030, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw [104 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1041.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1142.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.1041.0..sroa_idx.promoted, align 8, !noalias !2035, !noundef !15
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1142.0..sroa_idx.promoted, align 8, !range !333, !noalias !2035, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2035
  store i32 %i.au, ptr %i.c, align 4, !noalias !2035
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bb, align 4, !noalias !2035
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.bc, align 4, !noalias !2039
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx37, align 4, !noalias !2039
  %.sroa.939.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.939.0..sroa_idx40, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.939.0..sroa_idx, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_supers0_1__INtB5_9StructKeyNtNtB9_10class_base9ClassBaseNtB7_14SuperOwnerKindEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1n_B1Q_EE10into_ownedBb_(ptr noalias noundef nonnull sret([48 x i8]) align 4 captures(none) dereferenceable(48) %i.bd, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(48) %i.bc), !noalias !2030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2035
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !2035, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !2035, !noundef !15 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bj = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !2035, !noundef !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store i16 %i.az, ptr %i.bk, align 8, !noalias !2030
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !2030
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2030
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2030
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2030
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2030
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i64 0, ptr %i.bl, align 8, !noalias !2030
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i64 %i.bh, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !2030
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 98
  store i8 %i.bj, ptr %i.bm, align 2, !noalias !2030
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ax, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false), !noalias !2030
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !2030
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtB1e_10class_base9ClassBaseNtB1c_14SuperOwnerKindENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4j_E0Es_0EB1g_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEEB1h_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtB1e_10class_base9ClassBaseNtB1c_14SuperOwnerKindENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4j_E0Es_0EB1g_.exit
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx, align 8
  store ptr %.sroa.1041.0..sroa_idx.promoted, ptr %.sroa.1041.0..sroa_idx, align 8
  store ptr %.sroa.1142.0..sroa_idx.promoted, ptr %.sroa.1142.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !15, !nonnull !15
  %i.bx = call noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs), !inline_history !2040
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s0_1__9StructKeyNtNtB1D_10class_base9ClassBaseNtB1B_14SuperOwnerKindENCINvMs9_B3K_B1z_3newDNtNtB1F_2db2DbEL_B46_B4A_E0Es_0E0B1F_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s0_1__9StructKeyNtNtB1D_10class_base9ClassBaseNtB1B_14SuperOwnerKindENCINvMs9_B3K_B1z_3newDNtNtB1F_2db2DbEL_B46_B4A_E0Es_0E0B1F_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !2041
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2041
  %i.cb = call noundef align 8 dereferenceable_or_null(13312) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 13312, i64 noundef range(i64 4, 9) 8) #59, !noalias !2041 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEEB1f_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s0_1__9StructKeyNtNtB1D_10class_base9ClassBaseNtB1B_14SuperOwnerKindENCINvMs9_B3K_B1z_3newDNtNtB1F_2db2DbEL_B46_B4A_E0Es_0E0B1F_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 13312) #56
          to label %.noexc.i unwind label %bb.l, !noalias !2041

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !2044
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !2041

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2041
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %i.cd, %bb.m ], [ %i.cn, %bb.t ], [ %i.cl, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEEB1f_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s0_1__9StructKeyNtNtB1D_10class_base9ClassBaseNtB1B_14SuperOwnerKindENCINvMs9_B3K_B1z_3newDNtNtB1F_2db2DbEL_B46_B4A_E0Es_0E0B1F_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !2041
  store i64 0, ptr %i.w, align 8, !alias.scope !2041
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !2041
  store ptr @140, ptr %i.x, align 8, !alias.scope !2041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @43, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !2041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !2049 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEEB1f_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !2049

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEEB1f_.exit
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !2052 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !2049

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2049
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !2052
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !2052 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr) ; 0 uses
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtB1e_10class_base9ClassBaseNtB1c_14SuperOwnerKindENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4j_E0Es_0EB1g_.exit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtB1e_10class_base9ClassBaseNtB1c_14SuperOwnerKindENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4j_E0Es_0EB1g_.exit.thread
  %.sroa.717.077 = phi i32 [ %i.au, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtB1e_10class_base9ClassBaseNtB1c_14SuperOwnerKindENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4j_E0Es_0EB1g_.exit.thread ], [ %i.ae, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtB1e_10class_base9ClassBaseNtB1c_14SuperOwnerKindENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4j_E0Es_0EB1g_.exit ]
  %.sroa.9.076 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtB1e_10class_base9ClassBaseNtB1c_14SuperOwnerKindENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4j_E0Es_0EB1g_.exit.thread ], [ %i.af, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtB1e_10class_base9ClassBaseNtB1c_14SuperOwnerKindENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4j_E0Es_0EB1g_.exit ]
  %.sroa.10.075 = phi ptr [ %i.ax, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtB1e_10class_base9ClassBaseNtB1c_14SuperOwnerKindENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4j_E0Es_0EB1g_.exit.thread ], [ %.sroa.836.0..sroa_idx.promoted, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types11bound_super14BoundSuperTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtB1e_10class_base9ClassBaseNtB1c_14SuperOwnerKindENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4j_E0Es_0EB1g_.exit ]
  store i32 %.sroa.717.077, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.076, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.075, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic16IntersectionTypeENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s_1__9StructKeyINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtB1B_4TypeINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtB1z_28NegativeIntersectionElementsENCINvMs9_B3M_B1x_3newDNtNtB1D_2db2DbEL_B47_B6n_E0Es_0EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(144) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [120 x i8], align 8               ; 9 uses
  %i.d = alloca [168 x i8], align 8               ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.11.sroa.0 = alloca [88 x i8], align 8    ; 2 uses
  %.sroa.844 = alloca [88 x i8], align 8          ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
end_hunk_2
begin_hunk_3_@_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s6_1__9StructKeyNtB1B_4TypeENCINvMs9_B3J_B1x_3newDNtNtB1D_2db2DbEL_B45_E0Es_0EB1D_:bb.a
  %i.ao = trunc i64 %.sroa.0.0167 to i32
  %i.ap = trunc nuw nsw i64 %i.al to i32
  %i.aq = shl i32 %i.ao, 7
  %i.ar = or disjoint i32 %i.aq, 1
  %i.as = add i32 %i.ar, %i.ap                    ; 3 uses
  %i.at = icmp ne i32 %i.as, 0
  call void @llvm.assume(i1 %i.at)
  %i.au = load ptr, ptr %i.af, align 8, !noalias !2112, !nonnull !15, !noundef !15
  %i.av = getelementptr inbounds nuw [72 x i8], ptr %i.au, i64 %i.al ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.831.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1032.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.aw = load i64, ptr %.sroa.831.0..sroa_idx.promoted, align 8, !noalias !2117, !noundef !15
  %i.ax = trunc i64 %i.aw to i16
  %i.ay = load i64, ptr %.sroa.1032.0..sroa_idx.promoted, align 8, !range !333, !noalias !2117, !noundef !15
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !2117, !nonnull !15, !noundef !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !2117, !noundef !15 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 384307168202282326
  call void @llvm.assume(i1 %i.bd)
  %i.be = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !2117, !noundef !15
  store ptr inttoptr (i64 1 to ptr), ptr %i.av, align 8, !noalias !2112
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !2112
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i32 %i.as, ptr %.sroa.537.0..sroa_idx.i, align 8, !noalias !2112
  %.sroa.638.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  store i32 0, ptr %.sroa.638.0..sroa_idx.i, align 4, !noalias !2112
  %.sroa.739.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 %i.ay, ptr %.sroa.739.0..sroa_idx.i, align 8, !noalias !2112
  %.sroa.840.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store <4 x i32> %i.aa, ptr %.sroa.840.0..sroa_idx.i, align 8, !noalias !2121
  %.sroa.941.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store i64 0, ptr %.sroa.941.0..sroa_idx.i, align 8, !noalias !2112
  %.sroa.1042.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store i64 %i.bc, ptr %.sroa.1042.0..sroa_idx.i, align 8, !noalias !2112
  %.sroa.1143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  store i16 %i.ax, ptr %.sroa.1143.0..sroa_idx.i, align 8, !noalias !2112
  %.sroa.1244.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 66
  store i8 %i.be, ptr %.sroa.1244.0..sroa_idx.i, align 2, !noalias !2112
  %i.bf = add nuw nsw i64 %i.al, 1
  store atomic i64 %i.bf, ptr %i.an release, align 8, !noalias !2112
  br label %.loopexit

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyNtB1e_4TypeENCINvMs9_B3u_B1a_3newDNtNtB1g_2db2DbEL_B3Q_E0Es_0EB1g_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeEEB1h_.exit
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyNtB1e_4TypeENCINvMs9_B3u_B1a_3newDNtNtB1g_2db2DbEL_B3Q_E0Es_0EB1g_.exit
  store <4 x i32> %i.aa, ptr %4, align 8
  store ptr %.sroa.831.0..sroa_idx.promoted, ptr %.sroa.831.0..sroa_idx, align 8
  store ptr %.sroa.1032.0..sroa_idx.promoted, ptr %.sroa.1032.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bg = load i64, ptr %i.r, align 8, !noundef !15 ; 2 uses
  %i.bh = icmp ugt i64 %i.bg, %i.q
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bi = load ptr, ptr %i.s, align 8, !nonnull !15, !noundef !15
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %i.q ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !15, !noundef !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 136
  %i.bo = load ptr, ptr %i.bn, align 8, !invariant.load !15, !nonnull !15
  %i.bp = call noundef nonnull align 8 ptr %i.bo(ptr noundef nonnull %i.bk), !inline_history !2122
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.br = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s6_1__9StructKeyNtB1D_4TypeENCINvMs9_B3L_B1z_3newDNtNtB1F_2db2DbEL_B47_E0Es_0E0B1F_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s6_1__9StructKeyNtB1D_4TypeENCINvMs9_B3L_B1z_3newDNtNtB1F_2db2DbEL_B47_E0Es_0E0B1F_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !2123)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bq, ptr %i.b, align 8, !noalias !2123
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2123
  %i.bt = call noundef align 8 dereferenceable_or_null(9216) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 9216, i64 noundef range(i64 4, 9) 8) #59, !noalias !2123 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeEEB1f_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s6_1__9StructKeyNtB1D_4TypeENCINvMs9_B3L_B1z_3newDNtNtB1F_2db2DbEL_B47_E0Es_0E0B1F_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 9216) #56
          to label %.noexc.i unwind label %bb.l, !noalias !2123

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = atomicrmw sub ptr %i.bq, i64 1 release, align 8, !noalias !2126
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !2123

bb.n:                                             ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2123
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %i.bv, %bb.m ], [ %i.cf, %bb.t ], [ %i.cd, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeEEB1f_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s6_1__9StructKeyNtB1D_4TypeENCINvMs9_B3L_B1z_3newDNtNtB1F_2db2DbEL_B47_E0Es_0E0B1F_.exit
  store i32 %3, ptr %i.t, align 8, !alias.scope !2123
  store i64 0, ptr %i.u, align 8, !alias.scope !2123
  store ptr %i.bt, ptr %i.c, align 8, !alias.scope !2123
  store ptr @143, ptr %i.v, align 8, !alias.scope !2123
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) @46, i64 16, i1 false)
  store ptr %i.bq, ptr %i.x, align 8, !alias.scope !2123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bz = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !noalias !2131 ; 5 uses
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeEEB1f_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.o) #56
          to label %bb.s unwind label %bb.t, !noalias !2131

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeEEB1f_.exit
  %i.cb = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %i.cb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.cc = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.o, i64 noundef range(i64 1, -9223372036854775808) %i.bz)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !2134 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !2131

bb.r:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2131
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  store atomic i8 1, ptr %i.ch release, align 8, !noalias !2134
  %i.ci = atomicrmw add ptr %i.z, i64 1 release, align 8, !noalias !2134 ; 0 uses
  %i.cj = add nsw i64 %i.bz, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ck = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef %3, i64 noundef %i.cj) ; 0 uses
  %i.cl = icmp samesign ugt i64 %i.bz, 31
  br i1 %i.cl, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyNtB1e_4TypeENCINvMs9_B3u_B1a_3newDNtNtB1g_2db2DbEL_B3Q_E0Es_0EB1g_.exit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyNtB1e_4TypeENCINvMs9_B3u_B1a_3newDNtNtB1g_2db2DbEL_B3Q_E0Es_0EB1g_.exit.thread
  %.sroa.715.064 = phi i32 [ %i.as, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyNtB1e_4TypeENCINvMs9_B3u_B1a_3newDNtNtB1g_2db2DbEL_B3Q_E0Es_0EB1g_.exit.thread ], [ %i.ac, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyNtB1e_4TypeENCINvMs9_B3u_B1a_3newDNtNtB1g_2db2DbEL_B3Q_E0Es_0EB1g_.exit ]
  %.sroa.9.063 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyNtB1e_4TypeENCINvMs9_B3u_B1a_3newDNtNtB1g_2db2DbEL_B3Q_E0Es_0EB1g_.exit.thread ], [ %i.ad, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyNtB1e_4TypeENCINvMs9_B3u_B1a_3newDNtNtB1g_2db2DbEL_B3Q_E0Es_0EB1g_.exit ]
  %.sroa.10.062 = phi ptr [ %i.av, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyNtB1e_4TypeENCINvMs9_B3u_B1a_3newDNtNtB1g_2db2DbEL_B3Q_E0Es_0EB1g_.exit.thread ], [ %.sroa.831.0..sroa_idx.promoted, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance12InternedTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s6_1__9StructKeyNtB1e_4TypeENCINvMs9_B3u_B1a_3newDNtNtB1g_2db2DbEL_B3Q_E0Es_0EB1g_.exit ]
  store i32 %.sroa.715.064, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.063, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.062, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1B_4TypeEbIB47_bEIB47_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB47_TB4I_B4I_EENtNtNtB1B_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3K_B1x_3newDNtNtB1D_2db2DbEL_B46_bB4V_B52_B5I_B5Y_E0Es_0EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(104) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
          to label %bb.b unwind label %.body.thread78.loopexit.split-lp

.body.thread78.loopexit:                          ; preds = %.noexc10, %bb.f, %bb.k, %bb.z
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread78.loopexit.split-lp:                 ; preds = %bb.c, %bb.a, %.noexc, %bb.h, %bb.l, %select.unfold.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.470.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.571.0.copyload = load ptr, ptr %.sroa.571.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.l = invoke noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs_NtB8_11zalsa_localNtB2N_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1u_4TypeEbIB51_bEIB51_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB51_TB5C_B5C_EENtNtNtB1u_9dedicated8pydantic13ConfigBooleanENCINvMs9_B4E_B1q_3newDNtNtB1w_2db2DbEL_B50_bB5P_B5W_B6C_B6S_E0Es_0E0EB1w_(ptr noundef nonnull align 8 %i.k, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g)
          to label %.noexc unwind label %.body.thread78.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  %i.m = ptrtoint ptr %.sroa.571.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.m to i32
  %i.n = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.470.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.l)
          to label %bb.e unwind label %.body.thread78.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %.pn.i = phi ptr [ %i.o, %bb.d ], [ %i.n, %.noexc ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %bb.e
  %.sroa.849.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.952.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.1054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %.sroa.1155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
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
  %.sroa.849.0..sroa_idx.promoted = load ptr, ptr %.sroa.849.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1054.0..sroa_idx.promoted = load ptr, ptr %.sroa.1054.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1155.0..sroa_idx.promoted = load ptr, ptr %.sroa.1155.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.promoted = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.promoted = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.not5 = icmp eq i32 %i.ad, -2
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.aa
  %.sroa.0.0211 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %bb.aa ] ; 4 uses
  %i.ag = invoke noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0211)
          to label %.noexc10 unwind label %.body.thread78.loopexit

.noexc10:                                         ; preds = %bb.f
  %i.ah = invoke noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag)
          to label %.noexc11 unwind label %.body.thread78.loopexit ; 7 uses

.noexc11:                                         ; preds = %.noexc10
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.g

bb.g:                                             ; preds = %.noexc11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, -156781509844735185269207137982100130787
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEEB1h_.exit, label %bb.h, !prof !4

select.unfold.i:                                  ; preds = %bb.aa, %.noexc11, %bb.g, %bb.e
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0211, %bb.g ], [ %.sroa.0.0211, %.noexc11 ], [ %i.cr, %bb.aa ]
  invoke void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #56
          to label %.noexc12 unwind label %.body.thread78.loopexit.split-lp

.noexc12:                                         ; preds = %select.unfold.i
  unreachable

bb.h:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  invoke void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEEB1h_(ptr noundef nonnull align 8 %i.ah) #56
          to label %.noexc13 unwind label %.body.thread78.loopexit.split-lp

.noexc13:                                         ; preds = %bb.h
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEEB1h_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !2137 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %bb.i, label %.thread86

.thread86:                                        ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEEB1h_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0211 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !2137, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1054.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1155.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.1054.0..sroa_idx.promoted, align 8, !noalias !2142, !noundef !15
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1155.0..sroa_idx.promoted, align 8, !range !333, !noalias !2142, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2142
  store i32 %i.au, ptr %i.c, align 8, !noalias !2142
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bb, align 4, !noalias !2142
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.bc, align 8, !noalias !2146
  %.sroa.849.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.849.0..sroa_idx.promoted, ptr %.sroa.849.0..sroa_idx50, align 8, !noalias !2146
  %.sroa.952.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.952.0..sroa_idx53, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.952.0..sroa_idx, i64 48, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instances4_1__INtB5_9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB9_4TypeEbIB1r_bEIB1r_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB1r_TB22_B22_EENtNtNtB9_9dedicated8pydantic13ConfigBooleanEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1q_bB2e_B2l_B31_B3h_EE10into_ownedBb_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2142
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !2142, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !2142, !noundef !15 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bj = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !2142, !noundef !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i16 %i.az, ptr %i.bk, align 8, !noalias !2137
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !2137
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2137
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2137
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2137
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2137
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.bl, align 8, !noalias !2137
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bh, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !2137
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 122
  store i8 %i.bj, ptr %i.bm, align 2, !noalias !2137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ax, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false), !noalias !2137
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !2137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

bb.i:                                             ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEEB1h_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.849.0..sroa_idx.promoted, ptr %.sroa.849.0..sroa_idx, align 8
  store ptr %.sroa.1054.0..sroa_idx.promoted, ptr %.sroa.1054.0..sroa_idx, align 8
  store ptr %.sroa.1155.0..sroa_idx.promoted, ptr %.sroa.1155.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !15, !nonnull !15
  %i.bx = invoke noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs)
          to label %.noexc19 unwind label %.body.thread78.loopexit, !inline_history !2147

.noexc19:                                         ; preds = %bb.k
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.m, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1D_4TypeEbIB49_bEIB49_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB49_TB4K_B4K_EENtNtNtB1D_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3M_B1z_3newDNtNtB1F_2db2DbEL_B48_bB4X_B54_B5K_B60_E0Es_0E0B1F_.exit

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
          to label %.noexc20 unwind label %.body.thread78.loopexit.split-lp

.noexc20:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.noexc19
  call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %bb.i, %.thread86
  %.sroa.730.099 = phi i32 [ %i.au, %.thread86 ], [ %i.ae, %bb.i ]
  %.sroa.9.098 = phi i32 [ 0, %.thread86 ], [ %i.af, %bb.i ]
  %.sroa.10.097 = phi ptr [ %i.ax, %.thread86 ], [ %.sroa.849.0..sroa_idx.promoted, %bb.i ]
  store i32 %.sroa.730.099, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.098, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.097, ptr %.sroa.10.8..sroa_idx, align 8
  ret void

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1D_4TypeEbIB49_bEIB49_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB49_TB4K_B4K_EENtNtNtB1D_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3M_B1z_3newDNtNtB1F_2db2DbEL_B48_bB4X_B54_B5K_B60_E0Es_0E0B1F_.exit: ; preds = %.noexc19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !2148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !2148
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2148
  %i.cb = call noundef align 8 dereferenceable_or_null(16384) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 16384, i64 noundef range(i64 4, 9) 8) #59, !noalias !2148 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.n, label %bb.r, !prof !3

bb.n:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1D_4TypeEbIB49_bEIB49_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB49_TB4K_B4K_EENtNtNtB1D_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3M_B1z_3newDNtNtB1F_2db2DbEL_B48_bB4X_B54_B5K_B60_E0Es_0E0B1F_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16384) #56
          to label %.noexc.i unwind label %bb.o, !noalias !2148

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !2151
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.p, label %.body.thread

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body.thread unwind label %bb.q, !noalias !2148

bb.q:                                             ; preds = %bb.p
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2148
  unreachable

bb.r:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1D_4TypeEbIB49_bEIB49_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB49_TB4K_B4K_EENtNtNtB1D_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3M_B1z_3newDNtNtB1F_2db2DbEL_B48_bB4X_B54_B5K_B60_E0Es_0E0B1F_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !2148
  store i64 0, ptr %i.w, align 8, !alias.scope !2148
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !2148
  store ptr @144, ptr %i.x, align 8, !alias.scope !2148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @47, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !2148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !2156 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.s, label %bb.t, !prof !3

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.w unwind label %bb.x, !noalias !2156

bb.t:                                             ; preds = %bb.r
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %bb.z unwind label %bb.u, !noalias !2159 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %.body.thread unwind label %bb.v, !noalias !2156

bb.v:                                             ; preds = %bb.u
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2156
  unreachable

bb.w:                                             ; preds = %bb.s
  unreachable

bb.x:                                             ; preds = %bb.s
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %.body.thread unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.z:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !2159
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !2159 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = invoke { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr)
          to label %bb.aa unwind label %.body.thread78.loopexit ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.f, label %select.unfold.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtBK_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceE14intern_id_coldINtNvB1D_s4_1__9StructKeyINtNtB4_6option6OptionNtB1F_4TypeEbIB3w_bEIB3w_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB3w_TB3R_B3R_EENtNtNtB1F_9dedicated8pydantic13ConfigBooleanENCINvMs9_B39_B1B_3newDNtNtB1H_2db2DbEL_B3v_bB44_B4b_B4R_B57_E0Es_0EB1H_.exit: ; preds = %bb.ab, %.body.thread
  resume { ptr, i32 } %eh.lpad-body76

.body.thread:                                     ; preds = %.body.thread78.loopexit, %.body.thread78.loopexit.split-lp, %bb.u, %bb.x, %bb.o, %bb.p
  %eh.lpad-body76 = phi { ptr, i32 } [ %i.cl, %bb.u ], [ %i.cd, %bb.o ], [ %i.cd, %bb.p ], [ %i.cn, %bb.x ], [ %lpad.loopexit, %.body.thread78.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread78.loopexit.split-lp ]
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.val = load ptr, ptr %i.cu, align 8, !noundef !15 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.val6 = load i64, ptr %i.cv, align 8           ; 2 uses
  %i.cw = icmp eq ptr %.val, null
  %i.cx = icmp eq i64 %.val6, 0
  %or.cond.i.i.i = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %or.cond.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtBK_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceE14intern_id_coldINtNvB1D_s4_1__9StructKeyINtNtB4_6option6OptionNtB1F_4TypeEbIB3w_bEIB3w_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB3w_TB3R_B3R_EENtNtNtB1F_9dedicated8pydantic13ConfigBooleanENCINvMs9_B39_B1B_3newDNtNtB1H_2db2DbEL_B3v_bB44_B4b_B4R_B57_E0Es_0EB1H_.exit, label %bb.ab

bb.ab:                                            ; preds = %.body.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val6, i64 noundef 1) #59
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtBK_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceE14intern_id_coldINtNvB1D_s4_1__9StructKeyINtNtB4_6option6OptionNtB1F_4TypeEbIB3w_bEIB3w_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB3w_TB3R_B3R_EENtNtNtB1F_9dedicated8pydantic13ConfigBooleanENCINvMs9_B39_B1B_3newDNtNtB1H_2db2DbEL_B3v_bB44_B4b_B4R_B57_E0Es_0EB1H_.exit
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1B_4TypeEbIB47_bERIB47_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB47_TB4I_B4I_EENtNtNtB1B_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3K_B1x_3newDNtNtB1D_2db2DbEL_B46_bB4V_B52_B5J_B5Z_E0Es_0EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(96) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [128 x i8], align 8               ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.457.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.558.0.copyload = load ptr, ptr %.sroa.558.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = ptrtoint ptr %.sroa.558.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.k to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.m = call noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs_NtB8_11zalsa_localNtB2N_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1u_4TypeEbIB51_bERIB51_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB51_TB5C_B5C_EENtNtNtB1u_9dedicated8pydantic13ConfigBooleanENCINvMs9_B4E_B1q_3newDNtNtB1w_2db2DbEL_B50_bB5P_B5W_B6D_B6T_E0Es_0E0EB1w_(ptr noundef nonnull align 8 %i.l, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !2162
  %i.n = call noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.457.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.m), !noalias !2168
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3T_4TypeEbIB6p_bERIB6p_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB6p_TB70_B70_EENtNtNtB3T_9dedicated8pydantic13ConfigBooleanENCINvMs9_B62_B3P_3newDNtNtB3V_2db2DbEL_B6o_bB7d_B7k_B81_B8h_E0Es_0Es_0EB3V_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3T_4TypeEbIB6p_bERIB6p_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB6p_TB70_B70_EENtNtNtB3T_9dedicated8pydantic13ConfigBooleanENCINvMs9_B62_B3P_3newDNtNtB3V_2db2DbEL_B6o_bB7d_B7k_B81_B8h_E0Es_0Es_0EB3V_.exit

_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3T_4TypeEbIB6p_bERIB6p_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB6p_TB70_B70_EENtNtNtB3T_9dedicated8pydantic13ConfigBooleanENCINvMs9_B62_B3P_3newDNtNtB3V_2db2DbEL_B6o_bB7d_B7k_B81_B8h_E0Es_0Es_0EB3V_.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3T_4TypeEbIB6p_bERIB6p_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB6p_TB70_B70_EENtNtNtB3T_9dedicated8pydantic13ConfigBooleanENCINvMs9_B62_B3P_3newDNtNtB3V_2db2DbEL_B6o_bB7d_B7k_B81_B8h_E0Es_0Es_0EB3V_.exit
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.1041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %.sroa.1142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
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
  %.sroa.836.0..sroa_idx.promoted = load ptr, ptr %.sroa.836.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1041.0..sroa_idx.promoted = load ptr, ptr %.sroa.1041.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1142.0..sroa_idx.promoted = load ptr, ptr %.sroa.1142.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.promoted = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.promoted = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.not5 = icmp eq i32 %i.ad, -2
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0186 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 4 uses
  %i.ag = call noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0186)
  %i.ah = call noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag) ; 7 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, -156781509844735185269207137982100130787
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEEB1h_.exit, label %bb.f, !prof !4

select.unfold.i:                                  ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d, %bb.e, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3T_4TypeEbIB6p_bERIB6p_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB6p_TB70_B70_EENtNtNtB3T_9dedicated8pydantic13ConfigBooleanENCINvMs9_B62_B3P_3newDNtNtB3V_2db2DbEL_B6o_bB7d_B7k_B81_B8h_E0Es_0Es_0EB3V_.exit
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3T_4TypeEbIB6p_bERIB6p_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB6p_TB70_B70_EENtNtNtB3T_9dedicated8pydantic13ConfigBooleanENCINvMs9_B62_B3P_3newDNtNtB3V_2db2DbEL_B6o_bB7d_B7k_B81_B8h_E0Es_0Es_0EB3V_.exit ], [ %.sroa.0.0186, %bb.e ], [ %.sroa.0.0186, %bb.d ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ]
  call void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #56
  unreachable

bb.f:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEEB1h_(ptr noundef nonnull align 8 %i.ah) #56
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEEB1h_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !2169 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1e_4TypeEbIB3S_bERIB3S_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB3S_TB4t_B4t_EENtNtNtB1e_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3v_B1a_3newDNtNtB1g_2db2DbEL_B3R_bB4G_B4N_B5u_B5K_E0Es_0EB1g_.exit, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1e_4TypeEbIB3S_bERIB3S_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB3S_TB4t_B4t_EENtNtNtB1e_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3v_B1a_3newDNtNtB1g_2db2DbEL_B3R_bB4G_B4N_B5u_B5K_E0Es_0EB1g_.exit.thread

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1e_4TypeEbIB3S_bERIB3S_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB3S_TB4t_B4t_EENtNtNtB1e_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3v_B1a_3newDNtNtB1g_2db2DbEL_B3R_bB4G_B4N_B5u_B5K_E0Es_0EB1g_.exit.thread: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEEB1h_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0186 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !2169, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1041.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1142.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.1041.0..sroa_idx.promoted, align 8, !noalias !2174, !noundef !15
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1142.0..sroa_idx.promoted, align 8, !range !333, !noalias !2174, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2174
  store i32 %i.au, ptr %i.c, align 8, !noalias !2174
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bb, align 4, !noalias !2174
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.bc, align 8, !noalias !2178
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx37, align 8, !noalias !2178
  %.sroa.939.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.939.0..sroa_idx40, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.939.0..sroa_idx, i64 40, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instances4_1__INtB5_9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB9_4TypeEbIB1r_bERIB1r_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB1r_TB22_B22_EENtNtNtB9_9dedicated8pydantic13ConfigBooleanEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1q_bB2e_B2m_B32_B3i_EE10into_ownedBb_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.bc), !noalias !2169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2174
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !2174, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !2174, !noundef !15 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bj = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !2174, !noundef !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i16 %i.az, ptr %i.bk, align 8, !noalias !2169
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !2169
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2169
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2169
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2169
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2169
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.bl, align 8, !noalias !2169
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bh, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !2169
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 122
  store i8 %i.bj, ptr %i.bm, align 2, !noalias !2169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ax, ptr noundef nonnull align 8 dereferenceable(128) %i.d, i64 128, i1 false), !noalias !2169
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !2169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1e_4TypeEbIB3S_bERIB3S_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB3S_TB4t_B4t_EENtNtNtB1e_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3v_B1a_3newDNtNtB1g_2db2DbEL_B3R_bB4G_B4N_B5u_B5K_E0Es_0EB1g_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEEB1h_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1e_4TypeEbIB3S_bERIB3S_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB3S_TB4t_B4t_EENtNtNtB1e_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3v_B1a_3newDNtNtB1g_2db2DbEL_B3R_bB4G_B4N_B5u_B5K_E0Es_0EB1g_.exit
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx, align 8
  store ptr %.sroa.1041.0..sroa_idx.promoted, ptr %.sroa.1041.0..sroa_idx, align 8
  store ptr %.sroa.1142.0..sroa_idx.promoted, ptr %.sroa.1142.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !15, !nonnull !15
  %i.bx = call noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs), !inline_history !2179
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1D_4TypeEbIB49_bERIB49_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB49_TB4K_B4K_EENtNtNtB1D_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3M_B1z_3newDNtNtB1F_2db2DbEL_B48_bB4X_B54_B5L_B61_E0Es_0E0B1F_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1D_4TypeEbIB49_bERIB49_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB49_TB4K_B4K_EENtNtNtB1D_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3M_B1z_3newDNtNtB1F_2db2DbEL_B48_bB4X_B54_B5L_B61_E0Es_0E0B1F_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !2180
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2180
  %i.cb = call noundef align 8 dereferenceable_or_null(16384) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 16384, i64 noundef range(i64 4, 9) 8) #59, !noalias !2180 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEEB1f_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1D_4TypeEbIB49_bERIB49_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB49_TB4K_B4K_EENtNtNtB1D_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3M_B1z_3newDNtNtB1F_2db2DbEL_B48_bB4X_B54_B5L_B61_E0Es_0E0B1F_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16384) #56
          to label %.noexc.i unwind label %bb.l, !noalias !2180

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !2183
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !2180

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2180
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %i.cd, %bb.m ], [ %i.cn, %bb.t ], [ %i.cl, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEEB1f_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1D_4TypeEbIB49_bERIB49_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB49_TB4K_B4K_EENtNtNtB1D_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3M_B1z_3newDNtNtB1F_2db2DbEL_B48_bB4X_B54_B5L_B61_E0Es_0E0B1F_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !2180
  store i64 0, ptr %i.w, align 8, !alias.scope !2180
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !2180
  store ptr @144, ptr %i.x, align 8, !alias.scope !2180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @47, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !2180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !2188 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEEB1f_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !2188

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEEB1f_.exit
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !2191 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !2188

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2188
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !2191
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !2191 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr) ; 0 uses
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1e_4TypeEbIB3S_bERIB3S_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB3S_TB4t_B4t_EENtNtNtB1e_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3v_B1a_3newDNtNtB1g_2db2DbEL_B3R_bB4G_B4N_B5u_B5K_E0Es_0EB1g_.exit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1e_4TypeEbIB3S_bERIB3S_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB3S_TB4t_B4t_EENtNtNtB1e_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3v_B1a_3newDNtNtB1g_2db2DbEL_B3R_bB4G_B4N_B5u_B5K_E0Es_0EB1g_.exit.thread
  %.sroa.717.077 = phi i32 [ %i.au, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1e_4TypeEbIB3S_bERIB3S_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB3S_TB4t_B4t_EENtNtNtB1e_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3v_B1a_3newDNtNtB1g_2db2DbEL_B3R_bB4G_B4N_B5u_B5K_E0Es_0EB1g_.exit.thread ], [ %i.ae, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1e_4TypeEbIB3S_bERIB3S_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB3S_TB4t_B4t_EENtNtNtB1e_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3v_B1a_3newDNtNtB1g_2db2DbEL_B3R_bB4G_B4N_B5u_B5K_E0Es_0EB1g_.exit ]
  %.sroa.9.076 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1e_4TypeEbIB3S_bERIB3S_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB3S_TB4t_B4t_EENtNtNtB1e_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3v_B1a_3newDNtNtB1g_2db2DbEL_B3R_bB4G_B4N_B5u_B5K_E0Es_0EB1g_.exit.thread ], [ %i.af, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1e_4TypeEbIB3S_bERIB3S_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB3S_TB4t_B4t_EENtNtNtB1e_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3v_B1a_3newDNtNtB1g_2db2DbEL_B3R_bB4G_B4N_B5u_B5K_E0Es_0EB1g_.exit ]
  %.sroa.10.075 = phi ptr [ %i.ax, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1e_4TypeEbIB3S_bERIB3S_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB3S_TB4t_B4t_EENtNtNtB1e_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3v_B1a_3newDNtNtB1g_2db2DbEL_B3R_bB4G_B4N_B5u_B5K_E0Es_0EB1g_.exit.thread ], [ %.sroa.836.0..sroa_idx.promoted, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance13FieldInstanceEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s4_1__9StructKeyINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1e_4TypeEbIB3S_bERIB3S_INtNtCscdodAO9FK5_5alloc5boxed3BoxeEEIB3S_TB4t_B4t_EENtNtNtB1e_9dedicated8pydantic13ConfigBooleanENCINvMs9_B3v_B1a_3newDNtNtB1g_2db2DbEL_B3R_bB4G_B4N_B5u_B5K_E0Es_0EB1g_.exit ]
  store i32 %.sroa.717.077, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.076, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.075, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types14known_instance16SentinelInstanceENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s2_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionENCINvMs9_B3N_B1x_3newDNtNtB1D_2db2DbEL_B49_B4T_E0Es_0EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
end_hunk_3
begin_hunk_4_@_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums18EnumComplementTypeENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s4_1__9StructKeyNtB1z_16EnumClassLiteralRINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEIB4r_NtB1B_4TypeB5O_EENCINvMs9_B3F_B1x_3newDNtNtB1D_2db2DbEL_B41_B4p_B7e_E0Es_0EB1D_:bb.a
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.aq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2524
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2524
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ax, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2524
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.bh, align 8, !noalias !2524
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bd, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !2524
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 170
  store i8 %i.bf, ptr %i.bi, align 2, !noalias !2524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.at, ptr noundef nonnull align 8 dereferenceable(176) %i.d, i64 176, i1 false), !noalias !2524
  %i.bj = add nuw nsw i64 %i.aj, 1
  store atomic i64 %i.bj, ptr %i.al release, align 8, !noalias !2524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.844)
  br label %.loopexit

bb.i:                                             ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums18EnumComplementTypeEEB1h_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.844, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.844)
  %.not5 = icmp eq i64 %.sroa.033.0.copyload, -1
  br i1 %.not5, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %.sroa.033.0.copyload, ptr %4, align 8
  store i32 %.sroa.535.0.copyload, ptr %.sroa.535.0..sroa_idx, align 8
  store i32 %.sroa.638.0.copyload, ptr %.sroa.638.0..sroa_idx, align 4
  store ptr %.sroa.741.0.copyload, ptr %.sroa.741.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.844.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.11.sroa.0, i64 48, i1 false)
  store ptr %.sroa.946.0.copyload, ptr %.sroa.946.0..sroa_idx, align 8
  store ptr %.sroa.1047.0.copyload, ptr %.sroa.1047.0..sroa_idx, align 8
  store ptr %.sroa.1148.0.copyload, ptr %.sroa.1148.0..sroa_idx, align 8
  store ptr %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %i.bk = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bl = icmp ugt i64 %i.bk, %i.s
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.s ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !15, !noundef !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !15, !align !117, !noundef !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 136
  %i.bs = load ptr, ptr %i.br, align 8, !invariant.load !15, !nonnull !15
  %i.bt = invoke noundef nonnull align 8 ptr %i.bs(ptr noundef nonnull %i.bo)
          to label %.noexc17 unwind label %.body.thread70.loopexit, !inline_history !2534

.noexc17:                                         ; preds = %bb.k
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bv = atomicrmw add ptr %i.bu, i64 1 monotonic, align 8
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %bb.m, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums18EnumComplementTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s4_1__9StructKeyNtB1B_16EnumClassLiteralRINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEIB4t_NtB1D_4TypeB5Q_EENCINvMs9_B3H_B1z_3newDNtNtB1F_2db2DbEL_B43_B4r_B7g_E0Es_0E0B1F_.exit

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
          to label %.noexc18 unwind label %.body.thread70.loopexit.split-lp

.noexc18:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.noexc17
  call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %bb.i, %.thread78
  %.sroa.7.090 = phi i32 [ %i.aq, %.thread78 ], [ %.sroa.535.0.copyload, %bb.i ]
  %.sroa.9.089 = phi i32 [ 0, %.thread78 ], [ %.sroa.638.0.copyload, %bb.i ]
  %.sroa.10.088 = phi ptr [ %i.at, %.thread78 ], [ %.sroa.741.0.copyload, %bb.i ]
  store i32 %.sroa.7.090, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.089, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.088, ptr %.sroa.10.8..sroa_idx, align 8
  ret void

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums18EnumComplementTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s4_1__9StructKeyNtB1B_16EnumClassLiteralRINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEIB4t_NtB1D_4TypeB5Q_EENCINvMs9_B3H_B1z_3newDNtNtB1F_2db2DbEL_B43_B4r_B7g_E0Es_0E0B1F_.exit: ; preds = %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !2535)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bu, ptr %i.b, align 8, !noalias !2535
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2535
  %i.bx = call noundef align 8 dereferenceable_or_null(22528) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 22528, i64 noundef range(i64 4, 9) 8) #59, !noalias !2535 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.n, label %bb.r, !prof !3

bb.n:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums18EnumComplementTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s4_1__9StructKeyNtB1B_16EnumClassLiteralRINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEIB4t_NtB1D_4TypeB5Q_EENCINvMs9_B3H_B1z_3newDNtNtB1F_2db2DbEL_B43_B4r_B7g_E0Es_0E0B1F_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 22528) #56
          to label %.noexc.i unwind label %bb.o, !noalias !2535

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = atomicrmw sub ptr %i.bu, i64 1 release, align 8, !noalias !2538
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.p, label %.body.thread

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body.thread unwind label %bb.q, !noalias !2535

bb.q:                                             ; preds = %bb.p
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2535
  unreachable

bb.r:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums18EnumComplementTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s4_1__9StructKeyNtB1B_16EnumClassLiteralRINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEIB4t_NtB1D_4TypeB5Q_EENCINvMs9_B3H_B1z_3newDNtNtB1F_2db2DbEL_B43_B4r_B7g_E0Es_0E0B1F_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !2535
  store i64 0, ptr %i.w, align 8, !alias.scope !2535
  store ptr %i.bx, ptr %i.e, align 8, !alias.scope !2535
  store ptr @153, ptr %i.x, align 8, !alias.scope !2535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @56, i64 16, i1 false)
  store ptr %i.bu, ptr %i.z, align 8, !alias.scope !2535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cd = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !2543 ; 5 uses
  %i.ce = icmp slt i64 %i.cd, 0
  br i1 %i.ce, label %bb.s, label %bb.t, !prof !3

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.w unwind label %bb.x, !noalias !2543

bb.t:                                             ; preds = %bb.r
  %i.cf = icmp ne i64 %i.cd, 0
  call void @llvm.assume(i1 %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.cd)
          to label %bb.z unwind label %bb.u, !noalias !2546 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %.body.thread unwind label %bb.v, !noalias !2543

bb.v:                                             ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2543
  unreachable

bb.w:                                             ; preds = %bb.s
  unreachable

bb.x:                                             ; preds = %bb.s
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %.body.thread unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.z:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cg, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  store atomic i8 1, ptr %i.cl release, align 8, !noalias !2546
  %i.cm = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !2546 ; 0 uses
  %i.cn = add nsw i64 %i.cd, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.co = invoke { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cn)
          to label %bb.aa unwind label %.body.thread70.loopexit ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.cp = icmp samesign ugt i64 %i.cd, 31
  br i1 %i.cp, label %bb.f, label %select.unfold.i

bb.ab:                                            ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body68

.body.thread:                                     ; preds = %.body.thread70.loopexit, %.body.thread70.loopexit.split-lp, %bb.u, %bb.x, %bb.o, %bb.p
  %eh.lpad-body68 = phi { ptr, i32 } [ %i.ch, %bb.u ], [ %i.bz, %bb.o ], [ %i.bz, %bb.p ], [ %i.cj, %bb.x ], [ %lpad.loopexit, %.body.thread70.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread70.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtBK_14IngredientImplNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5enums18EnumComplementTypeE14intern_id_coldINtNvB1D_s4_1__9StructKeyNtB1D_16EnumClassLiteralRINtNtCsh7jLiOpeRCu_8ordermap3set8OrderSetNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEIB3Q_NtB1F_4TypeB5d_EENCINvMs9_B34_B1B_3newDNtNtB1H_2db2DbEL_B3q_B3O_B6n_E0Es_0EB1H_(ptr noalias noundef align 8 dereferenceable(104) %4) #57
          to label %bb.ab unwind label %bb.ac

bb.ac:                                            ; preds = %.body.thread
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1z_11TypeContextENCINvMs9_B3D_B1x_3newDNtNtB1D_2db2DbEL_B3Z_B4L_E0Es_0EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(56) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 4                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.454.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.555.0.copyload = load ptr, ptr %.sroa.555.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = ptrtoint ptr %.sroa.555.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.k to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.m = call noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextENCINvMs_NtB8_11zalsa_localNtB2G_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1s_11TypeContextENCINvMs9_B4x_B1q_3newDNtNtB1w_2db2DbEL_B4T_B5F_E0Es_0E0EB1w_(ptr noundef nonnull align 8 %i.l, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !2549
  %i.n = call noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.454.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.m), !noalias !2555
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB3R_11TypeContextENCINvMs9_B5V_B3P_3newDNtNtB3V_2db2DbEL_B6h_B73_E0Es_0Es_0EB3V_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB3R_11TypeContextENCINvMs9_B5V_B3P_3newDNtNtB3V_2db2DbEL_B6h_B73_E0Es_0Es_0EB3V_.exit

_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB3R_11TypeContextENCINvMs9_B5V_B3P_3newDNtNtB3V_2db2DbEL_B6h_B73_E0Es_0Es_0EB3V_.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB3R_11TypeContextENCINvMs9_B5V_B3P_3newDNtNtB3V_2db2DbEL_B6h_B73_E0Es_0Es_0EB3V_.exit
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.1140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
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
  %.sroa.836.0..sroa_idx.promoted = load ptr, ptr %.sroa.836.0..sroa_idx, align 8 ; 3 uses
  %.sroa.939.0..sroa_idx.promoted = load ptr, ptr %.sroa.939.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1140.0..sroa_idx.promoted = load ptr, ptr %.sroa.1140.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.promoted = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.promoted = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.not5 = icmp eq i32 %i.ad, -2
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0183 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 4 uses
  %i.ag = call noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0183)
  %i.ah = call noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag) ; 7 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, 61150846809874496656187663632812012560
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEEB1h_.exit, label %bb.f, !prof !4

select.unfold.i:                                  ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d, %bb.e, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB3R_11TypeContextENCINvMs9_B5V_B3P_3newDNtNtB3V_2db2DbEL_B6h_B73_E0Es_0Es_0EB3V_.exit
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB3R_11TypeContextENCINvMs9_B5V_B3P_3newDNtNtB3V_2db2DbEL_B6h_B73_E0Es_0Es_0EB3V_.exit ], [ %.sroa.0.0183, %bb.e ], [ %.sroa.0.0183, %bb.d ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ]
  call void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #56
  unreachable

bb.f:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEEB1h_(ptr noundef nonnull align 8 %i.ah) #56
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEEB1h_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !2556 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1c_11TypeContextENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3K_B4w_E0Es_0EB1g_.exit, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1c_11TypeContextENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3K_B4w_E0Es_0EB1g_.exit.thread

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1c_11TypeContextENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3K_B4w_E0Es_0EB1g_.exit.thread: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEEB1h_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0183 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !2556, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw [80 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.939.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1140.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.939.0..sroa_idx.promoted, align 8, !noalias !2561, !noundef !15
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1140.0..sroa_idx.promoted, align 8, !range !333, !noalias !2561, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2561
  store i32 %i.au, ptr %i.c, align 4, !noalias !2561
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bb, align 4, !noalias !2561
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.bc, align 4, !noalias !2565
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx37, align 4, !noalias !2565
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infersb_1__INtB5_9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB7_11TypeContextEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1g_B22_EE10into_ownedBb_(ptr noalias noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.bd, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(24) %i.bc), !noalias !2556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2561
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !2561, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !2561, !noundef !15 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bj = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !2561, !noundef !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i16 %i.az, ptr %i.bk, align 8, !noalias !2556
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !2556
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2556
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2556
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2556
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2556
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.bl, align 8, !noalias !2556
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bh, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !2556
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 74
  store i8 %i.bj, ptr %i.bm, align 2, !noalias !2556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !2556
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !2556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1c_11TypeContextENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3K_B4w_E0Es_0EB1g_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEEB1h_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1c_11TypeContextENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3K_B4w_E0Es_0EB1g_.exit
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx, align 8
  store ptr %.sroa.939.0..sroa_idx.promoted, ptr %.sroa.939.0..sroa_idx, align 8
  store ptr %.sroa.1140.0..sroa_idx.promoted, ptr %.sroa.1140.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !15, !nonnull !15
  %i.bx = call noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs), !inline_history !2566
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1B_11TypeContextENCINvMs9_B3F_B1z_3newDNtNtB1F_2db2DbEL_B41_B4N_E0Es_0E0B1F_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1B_11TypeContextENCINvMs9_B3F_B1z_3newDNtNtB1F_2db2DbEL_B41_B4N_E0Es_0E0B1F_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !2567)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !2567
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2567
  %i.cb = call noundef align 8 dereferenceable_or_null(10240) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 10240, i64 noundef range(i64 4, 9) 8) #59, !noalias !2567 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEEB1f_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1B_11TypeContextENCINvMs9_B3F_B1z_3newDNtNtB1F_2db2DbEL_B41_B4N_E0Es_0E0B1F_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 10240) #56
          to label %.noexc.i unwind label %bb.l, !noalias !2567

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !2570
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !2567

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2567
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %i.cd, %bb.m ], [ %i.cn, %bb.t ], [ %i.cl, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEEB1f_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1B_11TypeContextENCINvMs9_B3F_B1z_3newDNtNtB1F_2db2DbEL_B41_B4N_E0Es_0E0B1F_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !2567
  store i64 0, ptr %i.w, align 8, !alias.scope !2567
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !2567
  store ptr @154, ptr %i.x, align 8, !alias.scope !2567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @57, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !2567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !2575 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEEB1f_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !2575

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEEB1f_.exit
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !2578 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !2575

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2575
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !2578
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !2578 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr) ; 0 uses
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1c_11TypeContextENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3K_B4w_E0Es_0EB1g_.exit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1c_11TypeContextENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3K_B4w_E0Es_0EB1g_.exit.thread
  %.sroa.717.074 = phi i32 [ %i.au, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1c_11TypeContextENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3K_B4w_E0Es_0EB1g_.exit.thread ], [ %i.ae, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1c_11TypeContextENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3K_B4w_E0Es_0EB1g_.exit ]
  %.sroa.9.073 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1c_11TypeContextENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3K_B4w_E0Es_0EB1g_.exit.thread ], [ %i.af, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1c_11TypeContextENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3K_B4w_E0Es_0EB1g_.exit ]
  %.sroa.10.072 = phi ptr [ %i.ax, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1c_11TypeContextENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3K_B4w_E0Es_0EB1g_.exit.thread ], [ %.sroa.836.0..sroa_idx.promoted, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer16ScopeWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_sb_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdNtB1c_11TypeContextENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3K_B4w_E0Es_0EB1g_.exit ]
  store i32 %.sroa.717.074, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.073, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.072, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1z_11TypeContextENCINvMs9_B3I_B1x_3newDNtNtB1D_2db2DbEL_B44_B50_E0Es_0EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(56) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 4                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.454.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.555.0.copyload = load ptr, ptr %.sroa.555.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = ptrtoint ptr %.sroa.555.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.k to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.m = call noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextENCINvMs_NtB8_11zalsa_localNtB2L_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1s_11TypeContextENCINvMs9_B4C_B1q_3newDNtNtB1w_2db2DbEL_B4Y_B5U_E0Es_0E0EB1w_(ptr noundef nonnull align 8 %i.l, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !2581
  %i.n = call noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.454.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.m), !noalias !2587
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB3R_11TypeContextENCINvMs9_B60_B3P_3newDNtNtB3V_2db2DbEL_B6m_B7i_E0Es_0Es_0EB3V_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB3R_11TypeContextENCINvMs9_B60_B3P_3newDNtNtB3V_2db2DbEL_B6m_B7i_E0Es_0Es_0EB3V_.exit

_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB3R_11TypeContextENCINvMs9_B60_B3P_3newDNtNtB3V_2db2DbEL_B6m_B7i_E0Es_0Es_0EB3V_.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB3R_11TypeContextENCINvMs9_B60_B3P_3newDNtNtB3V_2db2DbEL_B6m_B7i_E0Es_0Es_0EB3V_.exit
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.1140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
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
  %.sroa.836.0..sroa_idx.promoted = load ptr, ptr %.sroa.836.0..sroa_idx, align 8 ; 3 uses
  %.sroa.939.0..sroa_idx.promoted = load ptr, ptr %.sroa.939.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1140.0..sroa_idx.promoted = load ptr, ptr %.sroa.1140.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.promoted = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.promoted = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.not5 = icmp eq i32 %i.ad, -2
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0183 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 4 uses
  %i.ag = call noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0183)
  %i.ah = call noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag) ; 7 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, -79776990263184543500613781702348680338
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEEB1h_.exit, label %bb.f, !prof !4

select.unfold.i:                                  ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d, %bb.e, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB3R_11TypeContextENCINvMs9_B60_B3P_3newDNtNtB3V_2db2DbEL_B6m_B7i_E0Es_0Es_0EB3V_.exit
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB3R_11TypeContextENCINvMs9_B60_B3P_3newDNtNtB3V_2db2DbEL_B6m_B7i_E0Es_0Es_0EB3V_.exit ], [ %.sroa.0.0183, %bb.e ], [ %.sroa.0.0183, %bb.d ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ]
  call void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #56
  unreachable

bb.f:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEEB1h_(ptr noundef nonnull align 8 %i.ah) #56
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEEB1h_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !2588 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1c_11TypeContextENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4L_E0Es_0EB1g_.exit, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1c_11TypeContextENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4L_E0Es_0EB1g_.exit.thread

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1c_11TypeContextENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4L_E0Es_0EB1g_.exit.thread: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEEB1h_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0183 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !2588, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw [80 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.939.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1140.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.939.0..sroa_idx.promoted, align 8, !noalias !2593, !noundef !15
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1140.0..sroa_idx.promoted, align 8, !range !333, !noalias !2593, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2593
  store i32 %i.au, ptr %i.c, align 4, !noalias !2593
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bb, align 4, !noalias !2593
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.bc, align 4, !noalias !2597
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx37, align 4, !noalias !2597
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infers9_1__INtB5_9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB7_11TypeContextEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1g_B2c_EE10into_ownedBb_(ptr noalias noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.bd, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(24) %i.bc), !noalias !2588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2593
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !2593, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !2593, !noundef !15 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bj = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !2593, !noundef !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i16 %i.az, ptr %i.bk, align 8, !noalias !2588
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !2588
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2588
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2588
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2588
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2588
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.bl, align 8, !noalias !2588
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bh, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !2588
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 74
  store i8 %i.bj, ptr %i.bm, align 2, !noalias !2588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !2588
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !2588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1c_11TypeContextENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4L_E0Es_0EB1g_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEEB1h_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1c_11TypeContextENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4L_E0Es_0EB1g_.exit
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx, align 8
  store ptr %.sroa.939.0..sroa_idx.promoted, ptr %.sroa.939.0..sroa_idx, align 8
  store ptr %.sroa.1140.0..sroa_idx.promoted, ptr %.sroa.1140.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !15, !nonnull !15
  %i.bx = call noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs), !inline_history !2598
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1B_11TypeContextENCINvMs9_B3K_B1z_3newDNtNtB1F_2db2DbEL_B46_B52_E0Es_0E0B1F_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1B_11TypeContextENCINvMs9_B3K_B1z_3newDNtNtB1F_2db2DbEL_B46_B52_E0Es_0E0B1F_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !2599)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !2599
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2599
  %i.cb = call noundef align 8 dereferenceable_or_null(10240) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 10240, i64 noundef range(i64 4, 9) 8) #59, !noalias !2599 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEEB1f_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1B_11TypeContextENCINvMs9_B3K_B1z_3newDNtNtB1F_2db2DbEL_B46_B52_E0Es_0E0B1F_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 10240) #56
          to label %.noexc.i unwind label %bb.l, !noalias !2599

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !2602
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !2599

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2599
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %i.cd, %bb.m ], [ %i.cn, %bb.t ], [ %i.cl, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEEB1f_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1B_11TypeContextENCINvMs9_B3K_B1z_3newDNtNtB1F_2db2DbEL_B46_B52_E0Es_0E0B1F_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !2599
  store i64 0, ptr %i.w, align 8, !alias.scope !2599
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !2599
  store ptr @155, ptr %i.x, align 8, !alias.scope !2599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @58, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !2599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !2607 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEEB1f_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !2607

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEEB1f_.exit
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !2610 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !2607

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2607
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !2610
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !2610 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2607
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr) ; 0 uses
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1c_11TypeContextENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4L_E0Es_0EB1g_.exit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1c_11TypeContextENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4L_E0Es_0EB1g_.exit.thread
  %.sroa.717.074 = phi i32 [ %i.au, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1c_11TypeContextENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4L_E0Es_0EB1g_.exit.thread ], [ %i.ae, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1c_11TypeContextENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4L_E0Es_0EB1g_.exit ]
  %.sroa.9.073 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1c_11TypeContextENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4L_E0Es_0EB1g_.exit.thread ], [ %i.af, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1c_11TypeContextENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4L_E0Es_0EB1g_.exit ]
  %.sroa.10.072 = phi ptr [ %i.ax, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1c_11TypeContextENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4L_E0Es_0EB1g_.exit.thread ], [ %.sroa.836.0..sroa_idx.promoted, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer21ExpressionWithContextEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s9_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core10expression10ExpressionNtB1c_11TypeContextENCINvMs9_B3t_B1a_3newDNtNtB1g_2db2DbEL_B3P_B4L_E0Es_0EB1g_.exit ]
  store i32 %.sroa.717.074, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.073, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.072, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramINtB1z_5TupleNtB1B_4TypeNtB1z_15VariableSegmentEENCINvMs9_B3v_B1x_12new_internalDNtNtB1D_2db2DbEL_B3O_B4C_E0Es_0EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 10 uses
  %i.d = alloca [112 x i8], align 8               ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.11.sroa.0 = alloca [32 x i8], align 8    ; 2 uses
  %.sroa.950 = alloca [32 x i8], align 8          ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
end_hunk_4
begin_hunk_5_@_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramRINtB1z_5TupleNtB1B_4TypeNtB1z_15VariableSegmentEENCINvMs9_B3v_B1x_12new_internalDNtNtB1D_2db2DbEL_B3O_B4C_E0Es_0EB1D_:bb.a
  %i.ax = load i64, ptr %.sroa.524.0.copyload, align 8, !range !333, !noalias !2650, !noundef !15
  store i32 %i.aq, ptr %i.c, align 8, !noalias !2650
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.ay, align 4, !noalias !2650
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple1__INtB5_9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramRINtB7_5TupleNtB9_4TypeNtB7_15VariableSegmentEEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1d_B22_EE10into_ownedBb_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.au), !noalias !2645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2650
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.825.0..sroa_idx.promoted) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.825.0..sroa_idx.promoted, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !2650, !nonnull !15, !noundef !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !2650, !noundef !15 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 384307168202282326
  call void @llvm.assume(i1 %i.be)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.bf = load i8, ptr %.sroa.12.0..sroa_idx.promoted, align 1, !range !259, !noalias !2650, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i16 %i.aw, ptr %i.bg, align 8, !noalias !2645
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !2645
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2645
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.aq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2645
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2645
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ax, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2645
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.bh, align 8, !noalias !2645
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bd, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !2645
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 106
  store i8 %i.bf, ptr %i.bi, align 2, !noalias !2645
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.at, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !2645
  %i.bj = add nuw nsw i64 %i.aj, 1
  store atomic i64 %i.bj, ptr %i.al release, align 8, !noalias !2645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramRINtB1c_5TupleNtB1e_4TypeNtB1c_15VariableSegmentEENCINvMs9_B3g_B1a_12new_internalDNtNtB1g_2db2DbEL_B3z_B4n_E0Es_0EB1g_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEEB1h_.exit
  %i.bk = ptrtoint ptr %.sroa.524.0.copyload to i64 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramRINtB1c_5TupleNtB1e_4TypeNtB1c_15VariableSegmentEENCINvMs9_B3g_B1a_12new_internalDNtNtB1g_2db2DbEL_B3z_B4n_E0Es_0EB1g_.exit
  store ptr %.promoted, ptr %4, align 8
  store i64 %i.bk, ptr %.sroa.524.0..sroa_idx, align 8
  store ptr %.sroa.825.0..sroa_idx.promoted, ptr %.sroa.825.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  %i.bl = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, %i.s
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.s ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !15, !noundef !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !15, !nonnull !15
  %i.bu = call noundef nonnull align 8 ptr %i.bt(ptr noundef nonnull %i.bp), !inline_history !2654
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramRINtB1B_5TupleNtB1D_4TypeNtB1B_15VariableSegmentEENCINvMs9_B3x_B1z_12new_internalDNtNtB1F_2db2DbEL_B3Q_B4E_E0Es_0E0B1F_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramRINtB1B_5TupleNtB1D_4TypeNtB1B_15VariableSegmentEENCINvMs9_B3x_B1z_12new_internalDNtNtB1F_2db2DbEL_B3Q_B4E_E0Es_0E0B1F_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bv, ptr %i.b, align 8, !noalias !2655
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2655
  %i.by = call noundef align 8 dereferenceable_or_null(14336) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 14336, i64 noundef range(i64 4, 9) 8) #59, !noalias !2655 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEEB1f_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramRINtB1B_5TupleNtB1D_4TypeNtB1B_15VariableSegmentEENCINvMs9_B3x_B1z_12new_internalDNtNtB1F_2db2DbEL_B3Q_B4E_E0Es_0E0B1F_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 14336) #56
          to label %.noexc.i unwind label %bb.l, !noalias !2655

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !noalias !2658
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !2655

bb.n:                                             ; preds = %bb.m
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2655
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.l ], [ %i.ca, %bb.m ], [ %i.ck, %bb.t ], [ %i.ci, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEEB1f_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramRINtB1B_5TupleNtB1D_4TypeNtB1B_15VariableSegmentEENCINvMs9_B3x_B1z_12new_internalDNtNtB1F_2db2DbEL_B3Q_B4E_E0Es_0E0B1F_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !2655
  store i64 0, ptr %i.w, align 8, !alias.scope !2655
  store ptr %i.by, ptr %i.e, align 8, !alias.scope !2655
  store ptr @156, ptr %i.x, align 8, !alias.scope !2655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @59, i64 16, i1 false)
  store ptr %i.bv, ptr %i.z, align 8, !alias.scope !2655
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ce = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !2663 ; 5 uses
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEEB1f_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !2663

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEEB1f_.exit
  %i.cg = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ce)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !2666 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !2663

bb.r:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2663
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ch, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  store atomic i8 1, ptr %i.cm release, align 8, !noalias !2666
  %i.cn = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !2666 ; 0 uses
  %i.co = add nsw i64 %i.ce, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cp = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.co) ; 0 uses
  %i.cq = icmp samesign ugt i64 %i.ce, 31
  br i1 %i.cq, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramRINtB1c_5TupleNtB1e_4TypeNtB1c_15VariableSegmentEENCINvMs9_B3g_B1a_12new_internalDNtNtB1g_2db2DbEL_B3z_B4n_E0Es_0EB1g_.exit
  %.sroa.524.0.extract.trunc.le = trunc i64 %i.bk to i32
  %.sroa.524.4.extract.shift.le = lshr i64 %i.bk, 32
  %.sroa.524.4.extract.trunc.le = trunc nuw i64 %.sroa.524.4.extract.shift.le to i32
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramRINtB1c_5TupleNtB1e_4TypeNtB1c_15VariableSegmentEENCINvMs9_B3g_B1a_12new_internalDNtNtB1g_2db2DbEL_B3z_B4n_E0Es_0EB1g_.exit.thread
  %.sroa.7.053 = phi i32 [ %i.aq, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramRINtB1c_5TupleNtB1e_4TypeNtB1c_15VariableSegmentEENCINvMs9_B3g_B1a_12new_internalDNtNtB1g_2db2DbEL_B3z_B4n_E0Es_0EB1g_.exit.thread ], [ %.sroa.524.0.extract.trunc.le, %.loopexit ]
  %.sroa.9.052 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramRINtB1c_5TupleNtB1e_4TypeNtB1c_15VariableSegmentEENCINvMs9_B3g_B1a_12new_internalDNtNtB1g_2db2DbEL_B3z_B4n_E0Es_0EB1g_.exit.thread ], [ %.sroa.524.4.extract.trunc.le, %.loopexit ]
  %.sroa.10.051 = phi ptr [ %i.at, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5tuple9TupleTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core7program7ProgramRINtB1c_5TupleNtB1e_4TypeNtB1c_15VariableSegmentEENCINvMs9_B3g_B1a_12new_internalDNtNtB1g_2db2DbEL_B3z_B4n_E0Es_0EB1g_.exit.thread ], [ %.sroa.825.0..sroa_idx.promoted, %.loopexit ]
  store i32 %.sroa.7.053, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.052, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.051, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_1__9StructKeyNtNtB1B_8function12FunctionTypeNtB1B_4TypeENCINvMs9_B3D_B1x_3newDNtNtB1D_2db2DbEL_B3W_B4r_E0Es_0EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(56) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 4                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.454.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.555.0.copyload = load ptr, ptr %.sroa.555.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = ptrtoint ptr %.sroa.555.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.k to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.m = call noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeENCINvMs_NtB8_11zalsa_localNtB2G_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_1__9StructKeyNtNtB1u_8function12FunctionTypeNtB1u_4TypeENCINvMs9_B4x_B1q_3newDNtNtB1w_2db2DbEL_B4Q_B5l_E0Es_0E0EB1w_(ptr noundef nonnull align 8 %i.l, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !2669
  %i.n = call noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.454.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.m), !noalias !2675
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_1__9StructKeyNtNtB3T_8function12FunctionTypeNtB3T_4TypeENCINvMs9_B5V_B3P_3newDNtNtB3V_2db2DbEL_B6e_B6J_E0Es_0Es_0EB3V_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_1__9StructKeyNtNtB3T_8function12FunctionTypeNtB3T_4TypeENCINvMs9_B5V_B3P_3newDNtNtB3V_2db2DbEL_B6e_B6J_E0Es_0Es_0EB3V_.exit

_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_1__9StructKeyNtNtB3T_8function12FunctionTypeNtB3T_4TypeENCINvMs9_B5V_B3P_3newDNtNtB3V_2db2DbEL_B6e_B6J_E0Es_0Es_0EB3V_.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_1__9StructKeyNtNtB3T_8function12FunctionTypeNtB3T_4TypeENCINvMs9_B5V_B3P_3newDNtNtB3V_2db2DbEL_B6e_B6J_E0Es_0Es_0EB3V_.exit
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.1140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
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
  %.sroa.836.0..sroa_idx.promoted = load ptr, ptr %.sroa.836.0..sroa_idx, align 8 ; 3 uses
  %.sroa.939.0..sroa_idx.promoted = load ptr, ptr %.sroa.939.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1140.0..sroa_idx.promoted = load ptr, ptr %.sroa.1140.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.promoted = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.promoted = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.not5 = icmp eq i32 %i.ad, -1
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0183 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 4 uses
  %i.ag = call noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0183)
  %i.ah = call noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag) ; 7 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, -158436002652758640161887926531630569990
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEEB1h_.exit, label %bb.f, !prof !4

select.unfold.i:                                  ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d, %bb.e, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_1__9StructKeyNtNtB3T_8function12FunctionTypeNtB3T_4TypeENCINvMs9_B5V_B3P_3newDNtNtB3V_2db2DbEL_B6e_B6J_E0Es_0Es_0EB3V_.exit
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_1__9StructKeyNtNtB3T_8function12FunctionTypeNtB3T_4TypeENCINvMs9_B5V_B3P_3newDNtNtB3V_2db2DbEL_B6e_B6J_E0Es_0Es_0EB3V_.exit ], [ %.sroa.0.0183, %bb.e ], [ %.sroa.0.0183, %bb.d ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ]
  call void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #56
  unreachable

bb.f:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEEB1h_(ptr noundef nonnull align 8 %i.ah) #56
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEEB1h_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !2676 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtB1e_8function12FunctionTypeNtB1e_4TypeENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3H_B4c_E0Es_0EB1g_.exit, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtB1e_8function12FunctionTypeNtB1e_4TypeENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3H_B4c_E0Es_0EB1g_.exit.thread

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtB1e_8function12FunctionTypeNtB1e_4TypeENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3H_B4c_E0Es_0EB1g_.exit.thread: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEEB1h_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0183 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !2676, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw [80 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.939.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1140.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.939.0..sroa_idx.promoted, align 8, !noalias !2681, !noundef !15
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1140.0..sroa_idx.promoted, align 8, !range !333, !noalias !2681, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2681
  store i32 %i.au, ptr %i.c, align 4, !noalias !2681
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bb, align 4, !noalias !2681
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.bc, align 4, !noalias !2685
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx37, align 4, !noalias !2685
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method1__INtB5_9StructKeyNtNtB9_8function12FunctionTypeNtB9_4TypeEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1e_B1I_EE10into_ownedBb_(ptr noalias noundef nonnull sret([24 x i8]) align 4 captures(none) dereferenceable(24) %i.bd, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(24) %i.bc), !noalias !2676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2681
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !2681, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !2681, !noundef !15 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bj = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !2681, !noundef !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i16 %i.az, ptr %i.bk, align 8, !noalias !2676
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !2676
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2676
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2676
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2676
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2676
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.bl, align 8, !noalias !2676
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bh, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !2676
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 74
  store i8 %i.bj, ptr %i.bm, align 2, !noalias !2676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ax, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !2676
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !2676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtB1e_8function12FunctionTypeNtB1e_4TypeENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3H_B4c_E0Es_0EB1g_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEEB1h_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtB1e_8function12FunctionTypeNtB1e_4TypeENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3H_B4c_E0Es_0EB1g_.exit
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx, align 8
  store ptr %.sroa.939.0..sroa_idx.promoted, ptr %.sroa.939.0..sroa_idx, align 8
  store ptr %.sroa.1140.0..sroa_idx.promoted, ptr %.sroa.1140.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !15, !nonnull !15
  %i.bx = call noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs), !inline_history !2686
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyNtNtB1D_8function12FunctionTypeNtB1D_4TypeENCINvMs9_B3F_B1z_3newDNtNtB1F_2db2DbEL_B3Y_B4t_E0Es_0E0B1F_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyNtNtB1D_8function12FunctionTypeNtB1D_4TypeENCINvMs9_B3F_B1z_3newDNtNtB1F_2db2DbEL_B3Y_B4t_E0Es_0E0B1F_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !2687)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !2687
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !2687
  %i.cb = call noundef align 8 dereferenceable_or_null(10240) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 10240, i64 noundef range(i64 4, 9) 8) #59, !noalias !2687 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEEB1f_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyNtNtB1D_8function12FunctionTypeNtB1D_4TypeENCINvMs9_B3F_B1z_3newDNtNtB1F_2db2DbEL_B3Y_B4t_E0Es_0E0B1F_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 10240) #56
          to label %.noexc.i unwind label %bb.l, !noalias !2687

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !2690
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !2687

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2687
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %i.cd, %bb.m ], [ %i.cn, %bb.t ], [ %i.cl, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEEB1f_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyNtNtB1D_8function12FunctionTypeNtB1D_4TypeENCINvMs9_B3F_B1z_3newDNtNtB1F_2db2DbEL_B3Y_B4t_E0Es_0E0B1F_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !2687
  store i64 0, ptr %i.w, align 8, !alias.scope !2687
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !2687
  store ptr @157, ptr %i.x, align 8, !alias.scope !2687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @60, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !2687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !2695 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEEB1f_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !2695

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEEB1f_.exit
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2695
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !2698 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !2695

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !2695
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !2698
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !2698 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr) ; 0 uses
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtB1e_8function12FunctionTypeNtB1e_4TypeENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3H_B4c_E0Es_0EB1g_.exit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtB1e_8function12FunctionTypeNtB1e_4TypeENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3H_B4c_E0Es_0EB1g_.exit.thread
  %.sroa.717.074 = phi i32 [ %i.au, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtB1e_8function12FunctionTypeNtB1e_4TypeENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3H_B4c_E0Es_0EB1g_.exit.thread ], [ %i.ae, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtB1e_8function12FunctionTypeNtB1e_4TypeENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3H_B4c_E0Es_0EB1g_.exit ]
  %.sroa.9.073 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtB1e_8function12FunctionTypeNtB1e_4TypeENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3H_B4c_E0Es_0EB1g_.exit.thread ], [ %i.af, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtB1e_8function12FunctionTypeNtB1e_4TypeENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3H_B4c_E0Es_0EB1g_.exit ]
  %.sroa.10.072 = phi ptr [ %i.ax, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtB1e_8function12FunctionTypeNtB1e_4TypeENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3H_B4c_E0Es_0EB1g_.exit.thread ], [ %.sroa.836.0..sroa_idx.promoted, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types6method15BoundMethodTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyNtNtB1e_8function12FunctionTypeNtB1e_4TypeENCINvMs9_B3o_B1a_3newDNtNtB1g_2db2DbEL_B3H_B4c_E0Es_0EB1g_.exit ]
  store i32 %.sroa.717.074, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.073, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.072, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7literal15EnumLiteralTypeENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s4_1__9StructKeyNtNtB1B_5enums16EnumClassLiteralRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameENCINvMs9_B3E_B1x_3newDNtNtB1D_2db2DbEL_B40_B4w_E0Es_0EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
end_hunk_5
begin_hunk_6_@_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s1_1__9StructKeyNtNtB1B_5class9ClassTypeENCINvMs9_B3O_B1x_3newDNtNtB1D_2db2DbEL_B4a_E0Es_0EB1D_:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.830.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0..sroa_idx.promoted) ]
  %i.as = load i64, ptr %.sroa.028.0.copyload, align 8, !noalias !3491, !noundef !15
  %i.at = trunc i64 %i.as to i16
  %i.au = load i64, ptr %.sroa.629.0..sroa_idx.promoted, align 8, !range !333, !noalias !3491, !noundef !15
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.830.0..sroa_idx.promoted, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !3491, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !3491, !noundef !15 ; 2 uses
  %i.az = icmp ult i64 %i.ay, 384307168202282326
  call void @llvm.assume(i1 %i.az)
  %i.ba = load i8, ptr %.sroa.10.0..sroa_idx.promoted, align 1, !range !259, !noalias !3491, !noundef !15
  store ptr inttoptr (i64 1 to ptr), ptr %i.ar, align 8, !noalias !3486
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.437.0..sroa_idx.i, align 8, !noalias !3486
  %.sroa.538.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i32 %i.ao, ptr %.sroa.538.0..sroa_idx.i, align 8, !noalias !3486
  %.sroa.639.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  store i32 0, ptr %.sroa.639.0..sroa_idx.i, align 4, !noalias !3486
  %.sroa.740.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 %i.au, ptr %.sroa.740.0..sroa_idx.i, align 8, !noalias !3486
  %.sroa.841.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i64 0, ptr %.sroa.841.0..sroa_idx.i, align 8, !noalias !3486
  %.sroa.942.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i64 %i.ay, ptr %.sroa.942.0..sroa_idx.i, align 8, !noalias !3486
  %.sroa.1043.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store i32 %.sroa.1131.0..sroa_idx.promoted, ptr %.sroa.1043.0..sroa_idx.i, align 8, !noalias !3495
  %.sroa.13.32..sroa.1043.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 52
  store i64 %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.32..sroa.1043.0..sroa_idx.i.sroa_idx, align 4, !noalias !3495
  %.sroa.1144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 60
  store i16 %i.at, ptr %.sroa.1144.0..sroa_idx.i, align 4, !noalias !3486
  %.sroa.1245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 62
  store i8 %i.ba, ptr %.sroa.1245.0..sroa_idx.i, align 2, !noalias !3486
  %i.bb = add nuw nsw i64 %i.ah, 1
  store atomic i64 %i.bb, ptr %i.aj release, align 8, !noalias !3486
  br label %bb.v

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_5class9ClassTypeENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_E0Es_0EB1g_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEEB1h_.exit
  %i.bc = ptrtoint ptr %.sroa.028.0.copyload to i64 ; 3 uses
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_5class9ClassTypeENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_E0Es_0EB1g_.exit
  store i64 %i.bc, ptr %4, align 8
  store ptr %.sroa.629.0..sroa_idx.promoted, ptr %.sroa.629.0..sroa_idx, align 8
  store ptr %.sroa.830.0..sroa_idx.promoted, ptr %.sroa.830.0..sroa_idx, align 8
  store ptr %.sroa.10.0..sroa_idx.promoted, ptr %.sroa.10.0..sroa_idx, align 8
  store i32 %.sroa.1131.0..sroa_idx.promoted, ptr %.sroa.1131.0..sroa_idx, align 8
  store i64 %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 4
  store i32 %.sroa.13.sroa.6.0..sroa.13.0..sroa_idx.sroa_idx.promoted, ptr %.sroa.13.sroa.6.0..sroa.13.0..sroa_idx.sroa_idx, align 4
  %i.bd = load i64, ptr %i.r, align 8, !noundef !15 ; 2 uses
  %i.be = icmp ugt i64 %i.bd, %i.q
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.s, align 8, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.q ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !15, !noundef !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 136
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !15, !nonnull !15
  %i.bm = call noundef nonnull align 8 ptr %i.bl(ptr noundef nonnull %i.bh), !inline_history !3496
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bo = atomicrmw add ptr %i.bn, i64 1 monotonic, align 8
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s1_1__9StructKeyNtNtB1D_5class9ClassTypeENCINvMs9_B3Q_B1z_3newDNtNtB1F_2db2DbEL_B4c_E0Es_0E0B1F_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s1_1__9StructKeyNtNtB1D_5class9ClassTypeENCINvMs9_B3Q_B1z_3newDNtNtB1F_2db2DbEL_B4c_E0Es_0E0B1F_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !3497)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bn, ptr %i.b, align 8, !noalias !3497
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !3497
  %i.bq = call noundef align 8 dereferenceable_or_null(8192) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 8192, i64 noundef range(i64 4, 9) 8) #59, !noalias !3497 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEEB1f_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s1_1__9StructKeyNtNtB1D_5class9ClassTypeENCINvMs9_B3Q_B1z_3newDNtNtB1F_2db2DbEL_B4c_E0Es_0E0B1F_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8192) #56
          to label %.noexc.i unwind label %bb.l, !noalias !3497

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !3500
  %i.bu = icmp eq i64 %i.bt, 1
  br i1 %i.bu, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !3497

bb.n:                                             ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3497
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.bs, %bb.l ], [ %i.bs, %bb.m ], [ %i.cc, %bb.t ], [ %i.ca, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEEB1f_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s1_1__9StructKeyNtNtB1D_5class9ClassTypeENCINvMs9_B3Q_B1z_3newDNtNtB1F_2db2DbEL_B4c_E0Es_0E0B1F_.exit
  store i32 %3, ptr %i.t, align 8, !alias.scope !3497
  store i64 0, ptr %i.u, align 8, !alias.scope !3497
  store ptr %i.bq, ptr %i.c, align 8, !alias.scope !3497
  store ptr @174, ptr %i.v, align 8, !alias.scope !3497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) @77, i64 16, i1 false)
  store ptr %i.bn, ptr %i.x, align 8, !alias.scope !3497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bw = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !noalias !3505 ; 5 uses
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEEB1f_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.o) #56
          to label %bb.s unwind label %bb.t, !noalias !3505

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEEB1f_.exit
  %i.by = icmp ne i64 %i.bw, 0
  call void @llvm.assume(i1 %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.bz = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.o, i64 noundef range(i64 1, -9223372036854775808) %i.bw)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !3508 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !3505

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3505
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bz, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  store atomic i8 1, ptr %i.ce release, align 8, !noalias !3508
  %i.cf = atomicrmw add ptr %i.z, i64 1 release, align 8, !noalias !3508 ; 0 uses
  %i.cg = add nsw i64 %i.bw, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ch = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef %3, i64 noundef %i.cg) ; 0 uses
  %i.ci = icmp samesign ugt i64 %i.bw, 31
  br i1 %i.ci, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_5class9ClassTypeENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_E0Es_0EB1g_.exit
  %.sroa.028.0.extract.trunc.le = trunc i64 %i.bc to i32
  %.sroa.028.4.extract.shift.le = lshr i64 %i.bc, 32
  %.sroa.028.4.extract.trunc.le = trunc nuw i64 %.sroa.028.4.extract.shift.le to i32
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_5class9ClassTypeENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_E0Es_0EB1g_.exit.thread
  %.sroa.011.060 = phi i32 [ %i.ao, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_5class9ClassTypeENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_E0Es_0EB1g_.exit.thread ], [ %.sroa.028.0.extract.trunc.le, %.loopexit ]
  %.sroa.7.059 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_5class9ClassTypeENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_E0Es_0EB1g_.exit.thread ], [ %.sroa.028.4.extract.trunc.le, %.loopexit ]
  %.sroa.818.058 = phi ptr [ %i.ar, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24ExplicitAnyInstanceClassEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s1_1__9StructKeyNtNtB1e_5class9ClassTypeENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_E0Es_0EB1g_.exit.thread ], [ %.sroa.629.0..sroa_idx.promoted, %.loopexit ]
  store i32 %.sroa.011.060, ptr %0, align 8
  %.sroa.7.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.7.059, ptr %.sroa.7.0..sroa_idx16, align 4
  %.sroa.818.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.818.058, ptr %.sroa.818.0..sroa_idx21, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s5_1__9StructKeyNtNtB1B_14protocol_class13ProtocolClassNtB1B_19MaterializationKindENCINvMs9_B3O_B1x_3newDNtNtB1D_2db2DbEL_B4a_B4N_E0Es_0EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 4                ; 5 uses
  %i.d = alloca [72 x i8], align 8                ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
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
  %i.m = call noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeENCINvMs_NtB8_11zalsa_localNtB2R_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_s5_1__9StructKeyNtNtB1u_14protocol_class13ProtocolClassNtB1u_19MaterializationKindENCINvMs9_B4I_B1q_3newDNtNtB1w_2db2DbEL_B54_B5H_E0Es_0E0EB1w_(ptr noundef nonnull align 8 %i.l, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !3511
  %i.n = call noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.450.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.m), !noalias !3517
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s5_1__9StructKeyNtNtB3T_14protocol_class13ProtocolClassNtB3T_19MaterializationKindENCINvMs9_B66_B3P_3newDNtNtB3V_2db2DbEL_B6s_B75_E0Es_0Es_0EB3V_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s5_1__9StructKeyNtNtB3T_14protocol_class13ProtocolClassNtB3T_19MaterializationKindENCINvMs9_B66_B3P_3newDNtNtB3V_2db2DbEL_B6s_B75_E0Es_0Es_0EB3V_.exit

_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s5_1__9StructKeyNtNtB3T_14protocol_class13ProtocolClassNtB3T_19MaterializationKindENCINvMs9_B66_B3P_3newDNtNtB3V_2db2DbEL_B6s_B75_E0Es_0Es_0EB3V_.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s5_1__9StructKeyNtNtB3T_14protocol_class13ProtocolClassNtB3T_19MaterializationKindENCINvMs9_B66_B3P_3newDNtNtB3V_2db2DbEL_B6s_B75_E0Es_0Es_0EB3V_.exit
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
  %.not5 = icmp eq i32 %i.ad, -2
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0172 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 4 uses
  %i.ag = call noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0172)
  %i.ah = call noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag) ; 7 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, 9129430302264978288934885033481296077
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEEB1h_.exit, label %bb.f, !prof !4

select.unfold.i:                                  ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d, %bb.e, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s5_1__9StructKeyNtNtB3T_14protocol_class13ProtocolClassNtB3T_19MaterializationKindENCINvMs9_B66_B3P_3newDNtNtB3V_2db2DbEL_B6s_B75_E0Es_0Es_0EB3V_.exit
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s5_1__9StructKeyNtNtB3T_14protocol_class13ProtocolClassNtB3T_19MaterializationKindENCINvMs9_B66_B3P_3newDNtNtB3V_2db2DbEL_B6s_B75_E0Es_0Es_0EB3V_.exit ], [ %.sroa.0.0172, %bb.e ], [ %.sroa.0.0172, %bb.d ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ]
  call void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #56
  unreachable

bb.f:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEEB1h_(ptr noundef nonnull align 8 %i.ah) #56
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEEB1h_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !3518 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtB1e_14protocol_class13ProtocolClassNtB1e_19MaterializationKindENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_B4y_E0Es_0EB1g_.exit, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtB1e_14protocol_class13ProtocolClassNtB1e_19MaterializationKindENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_B4y_E0Es_0EB1g_.exit.thread

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtB1e_14protocol_class13ProtocolClassNtB1e_19MaterializationKindENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_B4y_E0Es_0EB1g_.exit.thread: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEEB1h_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0172 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !3518, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw [72 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.836.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1037.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.836.0..sroa_idx.promoted, align 8, !noalias !3523, !noundef !15
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1037.0..sroa_idx.promoted, align 8, !range !333, !noalias !3523, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3523
  store i32 %i.au, ptr %i.c, align 4, !noalias !3523
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bb, align 4, !noalias !3523
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.bc, align 4, !noalias !3527
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @_RNvXs0_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instances5_1__INtB5_9StructKeyNtNtB9_14protocol_class13ProtocolClassNtB9_19MaterializationKindEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1j_B1V_EE10into_ownedBb_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.bd, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.bc), !noalias !3518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3523
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !3523, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !3523, !noundef !15 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bj = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !3523, !noundef !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i16 %i.az, ptr %i.bk, align 8, !noalias !3518
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !3518
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3518
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3518
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !3518
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3518
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %i.bl, align 8, !noalias !3518
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %i.bh, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !3518
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 66
  store i8 %i.bj, ptr %i.bm, align 2, !noalias !3518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ax, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !3518
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !3518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtB1e_14protocol_class13ProtocolClassNtB1e_19MaterializationKindENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_B4y_E0Es_0EB1g_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEEB1h_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtB1e_14protocol_class13ProtocolClassNtB1e_19MaterializationKindENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_B4y_E0Es_0EB1g_.exit
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx, align 8
  store ptr %.sroa.1037.0..sroa_idx.promoted, ptr %.sroa.1037.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !15, !nonnull !15
  %i.bx = call noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs), !inline_history !3528
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s5_1__9StructKeyNtNtB1D_14protocol_class13ProtocolClassNtB1D_19MaterializationKindENCINvMs9_B3Q_B1z_3newDNtNtB1F_2db2DbEL_B4c_B4P_E0Es_0E0B1F_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s5_1__9StructKeyNtNtB1D_14protocol_class13ProtocolClassNtB1D_19MaterializationKindENCINvMs9_B3Q_B1z_3newDNtNtB1F_2db2DbEL_B4c_B4P_E0Es_0E0B1F_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !3529)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !3529
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !3529
  %i.cb = call noundef align 8 dereferenceable_or_null(9216) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 9216, i64 noundef range(i64 4, 9) 8) #59, !noalias !3529 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEEB1f_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s5_1__9StructKeyNtNtB1D_14protocol_class13ProtocolClassNtB1D_19MaterializationKindENCINvMs9_B3Q_B1z_3newDNtNtB1F_2db2DbEL_B4c_B4P_E0Es_0E0B1F_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 9216) #56
          to label %.noexc.i unwind label %bb.l, !noalias !3529

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !3532
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !3529

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3529
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %i.cd, %bb.m ], [ %i.cn, %bb.t ], [ %i.cl, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEEB1f_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s5_1__9StructKeyNtNtB1D_14protocol_class13ProtocolClassNtB1D_19MaterializationKindENCINvMs9_B3Q_B1z_3newDNtNtB1F_2db2DbEL_B4c_B4P_E0Es_0E0B1F_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !3529
  store i64 0, ptr %i.w, align 8, !alias.scope !3529
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !3529
  store ptr @175, ptr %i.x, align 8, !alias.scope !3529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @78, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !3529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !3537 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEEB1f_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !3537

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEEB1f_.exit
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !3540 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !3537

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3537
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !3540
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !3540 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr) ; 0 uses
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtB1e_14protocol_class13ProtocolClassNtB1e_19MaterializationKindENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_B4y_E0Es_0EB1g_.exit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtB1e_14protocol_class13ProtocolClassNtB1e_19MaterializationKindENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_B4y_E0Es_0EB1g_.exit.thread
  %.sroa.717.069 = phi i32 [ %i.au, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtB1e_14protocol_class13ProtocolClassNtB1e_19MaterializationKindENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_B4y_E0Es_0EB1g_.exit.thread ], [ %i.ae, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtB1e_14protocol_class13ProtocolClassNtB1e_19MaterializationKindENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_B4y_E0Es_0EB1g_.exit ]
  %.sroa.9.068 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtB1e_14protocol_class13ProtocolClassNtB1e_19MaterializationKindENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_B4y_E0Es_0EB1g_.exit.thread ], [ %i.af, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtB1e_14protocol_class13ProtocolClassNtB1e_19MaterializationKindENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_B4y_E0Es_0EB1g_.exit ]
  %.sroa.10.067 = phi ptr [ %i.ax, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtB1e_14protocol_class13ProtocolClassNtB1e_19MaterializationKindENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_B4y_E0Es_0EB1g_.exit.thread ], [ %.sroa.836.0..sroa_idx.promoted, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types8instance24MaterializedProtocolTypeEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s5_1__9StructKeyNtNtB1e_14protocol_class13ProtocolClassNtB1e_19MaterializationKindENCINvMs9_B3z_B1a_3newDNtNtB1g_2db2DbEL_B3V_B4y_E0Es_0EB1g_.exit ]
  store i32 %.sroa.717.069, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.068, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.067, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types9type_form12TypeFormTypeENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_1__9StructKeyNtB1B_4TypeENCINvMs9_B3D_B1x_3newDNtNtB1D_2db2DbEL_B3W_E0Es_0EB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(48) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, i32 noundef %3)
  %i.g = load ptr, ptr %i.d, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_6
begin_hunk_7_@_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple14NamedTupleSpecENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s1_1__9StructKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1z_15NamedTupleFieldEbENCINvMs9_B3Q_B1x_3newDNtNtB1F_2db2DbEL_B4c_bE0Es_0EB1F_:bb.a
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !3640
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ax, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3640
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.bh, align 8, !noalias !3640
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bd, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !3640
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 74
  store i8 %i.bf, ptr %i.bi, align 2, !noalias !3640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.at, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false), !noalias !3640
  %i.bj = add nuw nsw i64 %i.aj, 1
  store atomic i64 %i.bj, ptr %i.al release, align 8, !noalias !3640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.i:                                             ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple14NamedTupleSpecEEB1j_.exit
  %i.bk = ptrtoint ptr %.sroa.045.0.copyload to i64 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.bk, ptr %4, align 8
  store ptr %.sroa.646.0..sroa_idx.promoted, ptr %.sroa.646.0..sroa_idx, align 8
  store ptr %.sroa.847.0..sroa_idx.promoted, ptr %.sroa.847.0..sroa_idx, align 8
  store ptr %.sroa.10.0..sroa_idx.promoted, ptr %.sroa.10.0..sroa_idx, align 8
  store i8 %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  %i.bl = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, %i.s
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.s ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !15, !noundef !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !15, !nonnull !15
  %i.bu = invoke noundef nonnull align 8 ptr %i.bt(ptr noundef nonnull %i.bp)
          to label %.noexc20 unwind label %.body.thread69.loopexit, !inline_history !3650

.noexc20:                                         ; preds = %bb.k
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple14NamedTupleSpecENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s1_1__9StructKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1B_15NamedTupleFieldEbENCINvMs9_B3S_B1z_3newDNtNtB1H_2db2DbEL_B4e_bE0Es_0E0B1H_.exit

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
          to label %.noexc21 unwind label %.body.thread69.loopexit.split-lp

.noexc21:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.noexc20
  call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %bb.i
  %.sroa.045.0.extract.trunc.le = trunc i64 %i.bk to i32
  %.sroa.045.4.extract.shift.le = lshr i64 %i.bk, 32
  %.sroa.045.4.extract.trunc.le = trunc nuw i64 %.sroa.045.4.extract.shift.le to i32
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %.thread77
  %.sroa.028.087 = phi i32 [ %i.aq, %.thread77 ], [ %.sroa.045.0.extract.trunc.le, %.loopexit ]
  %.sroa.7.086 = phi i32 [ 0, %.thread77 ], [ %.sroa.045.4.extract.trunc.le, %.loopexit ]
  %.sroa.835.085 = phi ptr [ %i.at, %.thread77 ], [ %.sroa.646.0..sroa_idx.promoted, %.loopexit ]
  store i32 %.sroa.028.087, ptr %0, align 8
  %.sroa.7.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.7.086, ptr %.sroa.7.0..sroa_idx33, align 4
  %.sroa.835.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.835.085, ptr %.sroa.835.0..sroa_idx38, align 8
  ret void

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple14NamedTupleSpecENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s1_1__9StructKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1B_15NamedTupleFieldEbENCINvMs9_B3S_B1z_3newDNtNtB1H_2db2DbEL_B4e_bE0Es_0E0B1H_.exit: ; preds = %.noexc20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !3651)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bv, ptr %i.b, align 8, !noalias !3651
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !3651
  %i.by = call noundef align 8 dereferenceable_or_null(10240) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 10240, i64 noundef range(i64 4, 9) 8) #59, !noalias !3651 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.o, label %bb.s, !prof !3

bb.o:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple14NamedTupleSpecENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s1_1__9StructKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1B_15NamedTupleFieldEbENCINvMs9_B3S_B1z_3newDNtNtB1H_2db2DbEL_B4e_bE0Es_0E0B1H_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 10240) #56
          to label %.noexc.i unwind label %bb.p, !noalias !3651

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !noalias !3654
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.q, label %.body.thread

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body.thread unwind label %bb.r, !noalias !3651

bb.r:                                             ; preds = %bb.q
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3651
  unreachable

bb.s:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple14NamedTupleSpecENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s1_1__9StructKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1B_15NamedTupleFieldEbENCINvMs9_B3S_B1z_3newDNtNtB1H_2db2DbEL_B4e_bE0Es_0E0B1H_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !3651
  store i64 0, ptr %i.w, align 8, !alias.scope !3651
  store ptr %i.by, ptr %i.e, align 8, !alias.scope !3651
  store ptr @178, ptr %i.x, align 8, !alias.scope !3651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @81, i64 16, i1 false)
  store ptr %i.bv, ptr %i.z, align 8, !alias.scope !3651
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ce = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !3659 ; 5 uses
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.t, label %bb.u, !prof !3

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.x unwind label %bb.y, !noalias !3659

bb.u:                                             ; preds = %bb.s
  %i.cg = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3659
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ce)
          to label %bb.aa unwind label %bb.v, !noalias !3662 ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %.body.thread unwind label %bb.w, !noalias !3659

bb.w:                                             ; preds = %bb.v
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3659
  unreachable

bb.x:                                             ; preds = %bb.t
  unreachable

bb.y:                                             ; preds = %bb.t
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %.body.thread unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.aa:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ch, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  store atomic i8 1, ptr %i.cm release, align 8, !noalias !3662
  %i.cn = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !3662 ; 0 uses
  %i.co = add nsw i64 %i.ce, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cp = invoke { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.co)
          to label %bb.ab unwind label %.body.thread69.loopexit ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.cq = icmp samesign ugt i64 %i.ce, 31
  br i1 %i.cq, label %bb.f, label %select.unfold.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtBK_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple14NamedTupleSpecE14intern_id_coldINtNvB1D_s1_1__9StructKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1D_15NamedTupleFieldEbENCINvMs9_B3f_B1B_3newDNtNtB1J_2db2DbEL_B3B_bE0Es_0EB1J_.exit: ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body67

.body.thread:                                     ; preds = %.body.thread69.loopexit, %.body.thread69.loopexit.split-lp, %bb.v, %bb.y, %bb.p, %bb.q
  %eh.lpad-body67 = phi { ptr, i32 } [ %i.ci, %bb.v ], [ %i.ca, %bb.p ], [ %i.ca, %bb.q ], [ %i.ck, %bb.y ], [ %lpad.loopexit, %.body.thread69.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread69.loopexit.split-lp ]
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val = load ptr, ptr %i.cr, align 8, !nonnull !15, !noundef !15
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.val6 = load i64, ptr %i.cs, align 8, !noundef !15
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple15NamedTupleFieldEEB1i_(ptr nonnull %.val, i64 %.val6)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtBK_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple14NamedTupleSpecE14intern_id_coldINtNvB1D_s1_1__9StructKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1D_15NamedTupleFieldEbENCINvMs9_B3f_B1B_3newDNtNtB1J_2db2DbEL_B3B_bE0Es_0EB1J_.exit unwind label %bb.ac

bb.ac:                                            ; preds = %.body.thread
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1z_23DynamicNamedTupleAnchorENCINvMs9_B40_B1x_3newDNtNtB1F_2db2DbEL_B4l_B55_E0Es_0EB1F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(64) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [96 x i8], align 8                ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.458.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.559.0.copyload = load ptr, ptr %.sroa.559.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = ptrtoint ptr %.sroa.559.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.k to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.m = call noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs_NtB8_11zalsa_localNtB33_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1s_23DynamicNamedTupleAnchorENCINvMs9_B4U_B1q_3newDNtNtB1y_2db2DbEL_B5f_B5Z_E0Es_0E0EB1y_(ptr noundef nonnull align 8 %i.l, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !3665
  %i.n = call noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.458.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.m), !noalias !3671
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB3R_23DynamicNamedTupleAnchorENCINvMs9_B6i_B3P_3newDNtNtB3X_2db2DbEL_B6D_B7n_E0Es_0Es_0EB3X_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB3R_23DynamicNamedTupleAnchorENCINvMs9_B6i_B3P_3newDNtNtB3X_2db2DbEL_B6D_B7n_E0Es_0Es_0EB3X_.exit

_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB3R_23DynamicNamedTupleAnchorENCINvMs9_B6i_B3P_3newDNtNtB3X_2db2DbEL_B6D_B7n_E0Es_0Es_0EB3X_.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB3R_23DynamicNamedTupleAnchorENCINvMs9_B6i_B3P_3newDNtNtB3X_2db2DbEL_B6D_B7n_E0Es_0Es_0EB3X_.exit
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.1042.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.sroa.1143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
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
  %.sroa.836.0..sroa_idx.promoted = load ptr, ptr %.sroa.836.0..sroa_idx, align 8 ; 3 uses
  %.sroa.939.0..sroa_idx.promoted = load i64, ptr %.sroa.939.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1042.0..sroa_idx.promoted = load ptr, ptr %.sroa.1042.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1143.0..sroa_idx.promoted = load ptr, ptr %.sroa.1143.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.promoted = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.promoted = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.not5 = icmp eq i32 %i.ad, -1
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0194 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 4 uses
  %i.ag = call noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0194)
  %i.ah = call noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag) ; 7 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, 96899343478494040276222936802160030420
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1j_.exit, label %bb.f, !prof !4

select.unfold.i:                                  ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d, %bb.e, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB3R_23DynamicNamedTupleAnchorENCINvMs9_B6i_B3P_3newDNtNtB3X_2db2DbEL_B6D_B7n_E0Es_0Es_0EB3X_.exit
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB3R_23DynamicNamedTupleAnchorENCINvMs9_B6i_B3P_3newDNtNtB3X_2db2DbEL_B6D_B7n_E0Es_0Es_0EB3X_.exit ], [ %.sroa.0.0194, %bb.e ], [ %.sroa.0.0194, %bb.d ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ]
  call void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #56
  unreachable

bb.f:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1j_(ptr noundef nonnull align 8 %i.ah) #56
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1j_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !3672 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B4Q_E0Es_0EB1i_.exit, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B4Q_E0Es_0EB1i_.exit.thread

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B4Q_E0Es_0EB1i_.exit.thread: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1j_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0194 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !3672, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw [96 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1042.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1143.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.1042.0..sroa_idx.promoted, align 8, !noalias !3677, !noundef !15
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1143.0..sroa_idx.promoted, align 8, !range !333, !noalias !3677, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3677
  store i32 %i.au, ptr %i.c, align 8, !noalias !3677
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bb, align 4, !noalias !3677
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.bc, align 8, !noalias !3681
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx37, align 8, !noalias !3681
  %.sroa.939.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sroa.939.0..sroa_idx.promoted, ptr %.sroa.939.0..sroa_idx40, align 8, !noalias !3681
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @_RNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuples_1__INtB5_9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_23DynamicNamedTupleAnchorEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1v_B2e_EE10into_ownedBd_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bc), !noalias !3672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3677
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !3677, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !3677, !noundef !15 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bj = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !3677, !noundef !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i16 %i.az, ptr %i.bk, align 8, !noalias !3672
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !3672
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3672
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3672
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !3672
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3672
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.bl, align 8, !noalias !3672
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bh, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !3672
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 90
  store i8 %i.bj, ptr %i.bm, align 2, !noalias !3672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ax, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !3672
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !3672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B4Q_E0Es_0EB1i_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1j_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B4Q_E0Es_0EB1i_.exit
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx, align 8
  store i64 %.sroa.939.0..sroa_idx.promoted, ptr %.sroa.939.0..sroa_idx, align 8
  store ptr %.sroa.1042.0..sroa_idx.promoted, ptr %.sroa.1042.0..sroa_idx, align 8
  store ptr %.sroa.1143.0..sroa_idx.promoted, ptr %.sroa.1143.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !15, !nonnull !15
  %i.bx = call noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs), !inline_history !3682
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1B_23DynamicNamedTupleAnchorENCINvMs9_B42_B1z_3newDNtNtB1H_2db2DbEL_B4n_B57_E0Es_0E0B1H_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1B_23DynamicNamedTupleAnchorENCINvMs9_B42_B1z_3newDNtNtB1H_2db2DbEL_B4n_B57_E0Es_0E0B1H_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !3683)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !3683
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !3683
  %i.cb = call noundef align 8 dereferenceable_or_null(12288) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 12288, i64 noundef range(i64 4, 9) 8) #59, !noalias !3683 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1h_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1B_23DynamicNamedTupleAnchorENCINvMs9_B42_B1z_3newDNtNtB1H_2db2DbEL_B4n_B57_E0Es_0E0B1H_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 12288) #56
          to label %.noexc.i unwind label %bb.l, !noalias !3683

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !3686
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !3683

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3683
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %i.cd, %bb.m ], [ %i.cn, %bb.t ], [ %i.cl, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1h_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1B_23DynamicNamedTupleAnchorENCINvMs9_B42_B1z_3newDNtNtB1H_2db2DbEL_B4n_B57_E0Es_0E0B1H_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !3683
  store i64 0, ptr %i.w, align 8, !alias.scope !3683
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !3683
  store ptr @179, ptr %i.x, align 8, !alias.scope !3683
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @82, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !3683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !3691 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1h_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !3691

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1h_.exit
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !3694 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !3691

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3691
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !3694
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !3694 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr) ; 0 uses
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B4Q_E0Es_0EB1i_.exit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B4Q_E0Es_0EB1i_.exit.thread
  %.sroa.717.079 = phi i32 [ %i.au, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B4Q_E0Es_0EB1i_.exit.thread ], [ %i.ae, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B4Q_E0Es_0EB1i_.exit ]
  %.sroa.9.078 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B4Q_E0Es_0EB1i_.exit.thread ], [ %i.af, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B4Q_E0Es_0EB1i_.exit ]
  %.sroa.10.077 = phi ptr [ %i.ax, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B4Q_E0Es_0EB1i_.exit.thread ], [ %.sroa.836.0..sroa_idx.promoted, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B4Q_E0Es_0EB1i_.exit ]
  store i32 %.sroa.717.079, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.078, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.077, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s_1__9StructKeyReNtB1z_23DynamicNamedTupleAnchorENCINvMs9_B40_B1x_3newDNtNtB1F_2db2DbEL_B4l_B4n_E0Es_0EB1F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(72) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [96 x i8], align 8                ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.457.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.558.0.copyload = load ptr, ptr %.sroa.558.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = ptrtoint ptr %.sroa.558.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.k to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.m = call noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs_NtB8_11zalsa_localNtB33_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_s_1__9StructKeyReNtB1s_23DynamicNamedTupleAnchorENCINvMs9_B4U_B1q_3newDNtNtB1y_2db2DbEL_B5f_B5h_E0Es_0E0EB1y_(ptr noundef nonnull align 8 %i.l, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !3697
  %i.n = call noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.457.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.m), !noalias !3703
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyReNtB3R_23DynamicNamedTupleAnchorENCINvMs9_B6i_B3P_3newDNtNtB3X_2db2DbEL_B6D_B6F_E0Es_0Es_0EB3X_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyReNtB3R_23DynamicNamedTupleAnchorENCINvMs9_B6i_B3P_3newDNtNtB3X_2db2DbEL_B6D_B6F_E0Es_0Es_0EB3X_.exit

_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyReNtB3R_23DynamicNamedTupleAnchorENCINvMs9_B6i_B3P_3newDNtNtB3X_2db2DbEL_B6D_B6F_E0Es_0Es_0EB3X_.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyReNtB3R_23DynamicNamedTupleAnchorENCINvMs9_B6i_B3P_3newDNtNtB3X_2db2DbEL_B6D_B6F_E0Es_0Es_0EB3X_.exit
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.1041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.sroa.1142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
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
  %.sroa.836.0..sroa_idx.promoted = load ptr, ptr %.sroa.836.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1041.0..sroa_idx.promoted = load ptr, ptr %.sroa.1041.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1142.0..sroa_idx.promoted = load ptr, ptr %.sroa.1142.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.promoted = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.promoted = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.not5 = icmp eq i32 %i.ad, -1
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0186 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 4 uses
  %i.ag = call noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0186)
  %i.ah = call noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag) ; 7 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, 96899343478494040276222936802160030420
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1j_.exit, label %bb.f, !prof !4

select.unfold.i:                                  ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d, %bb.e, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyReNtB3R_23DynamicNamedTupleAnchorENCINvMs9_B6i_B3P_3newDNtNtB3X_2db2DbEL_B6D_B6F_E0Es_0Es_0EB3X_.exit
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s_1__9StructKeyReNtB3R_23DynamicNamedTupleAnchorENCINvMs9_B6i_B3P_3newDNtNtB3X_2db2DbEL_B6D_B6F_E0Es_0Es_0EB3X_.exit ], [ %.sroa.0.0186, %bb.e ], [ %.sroa.0.0186, %bb.d ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ]
  call void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #56
  unreachable

bb.f:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1j_(ptr noundef nonnull align 8 %i.ah) #56
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1j_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !3704 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyReNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B48_E0Es_0EB1i_.exit, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyReNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B48_E0Es_0EB1i_.exit.thread

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyReNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B48_E0Es_0EB1i_.exit.thread: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1j_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0186 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !3704, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw [96 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1041.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1142.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.1041.0..sroa_idx.promoted, align 8, !noalias !3709, !noundef !15
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1142.0..sroa_idx.promoted, align 8, !range !333, !noalias !3709, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3709
  store i32 %i.au, ptr %i.c, align 8, !noalias !3709
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bb, align 4, !noalias !3709
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.bc, align 8, !noalias !3713
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx37, align 8, !noalias !3713
  %.sroa.939.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.939.0..sroa_idx40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.939.0..sroa_idx, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @_RNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuples_1__INtB5_9StructKeyReNtB7_23DynamicNamedTupleAnchorEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1w_EE10into_ownedBd_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.bc), !noalias !3704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3709
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !3709, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !3709, !noundef !15 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bj = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !3709, !noundef !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store i16 %i.az, ptr %i.bk, align 8, !noalias !3704
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !3704
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3704
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3704
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !3704
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3704
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.bl, align 8, !noalias !3704
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bh, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !3704
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 90
  store i8 %i.bj, ptr %i.bm, align 2, !noalias !3704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ax, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !3704
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !3704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyReNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B48_E0Es_0EB1i_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1j_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyReNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B48_E0Es_0EB1i_.exit
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx, align 8
  store ptr %.sroa.1041.0..sroa_idx.promoted, ptr %.sroa.1041.0..sroa_idx, align 8
  store ptr %.sroa.1142.0..sroa_idx.promoted, ptr %.sroa.1142.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !15, !nonnull !15
  %i.bx = call noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs), !inline_history !3714
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s_1__9StructKeyReNtB1B_23DynamicNamedTupleAnchorENCINvMs9_B42_B1z_3newDNtNtB1H_2db2DbEL_B4n_B4p_E0Es_0E0B1H_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s_1__9StructKeyReNtB1B_23DynamicNamedTupleAnchorENCINvMs9_B42_B1z_3newDNtNtB1H_2db2DbEL_B4n_B4p_E0Es_0E0B1H_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !3715)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !3715
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !3715
  %i.cb = call noundef align 8 dereferenceable_or_null(12288) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 12288, i64 noundef range(i64 4, 9) 8) #59, !noalias !3715 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1h_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s_1__9StructKeyReNtB1B_23DynamicNamedTupleAnchorENCINvMs9_B42_B1z_3newDNtNtB1H_2db2DbEL_B4n_B4p_E0Es_0E0B1H_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 12288) #56
          to label %.noexc.i unwind label %bb.l, !noalias !3715

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !3718
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !3715

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3715
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %i.cd, %bb.m ], [ %i.cn, %bb.t ], [ %i.cl, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1h_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s_1__9StructKeyReNtB1B_23DynamicNamedTupleAnchorENCINvMs9_B42_B1z_3newDNtNtB1H_2db2DbEL_B4n_B4p_E0Es_0E0B1H_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !3715
  store i64 0, ptr %i.w, align 8, !alias.scope !3715
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !3715
  store ptr @179, ptr %i.x, align 8, !alias.scope !3715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @82, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !3715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !3723 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1h_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !3723

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEEB1h_.exit
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !3726 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !3723

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3723
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !3726
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !3726 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr) ; 0 uses
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyReNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B48_E0Es_0EB1i_.exit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyReNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B48_E0Es_0EB1i_.exit.thread
  %.sroa.717.077 = phi i32 [ %i.au, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyReNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B48_E0Es_0EB1i_.exit.thread ], [ %i.ae, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyReNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B48_E0Es_0EB1i_.exit ]
  %.sroa.9.076 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyReNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B48_E0Es_0EB1i_.exit.thread ], [ %i.af, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyReNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B48_E0Es_0EB1i_.exit ]
  %.sroa.10.075 = phi ptr [ %i.ax, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyReNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B48_E0Es_0EB1i_.exit.thread ], [ %.sroa.836.0..sroa_idx.promoted, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class11named_tuple24DynamicNamedTupleLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s_1__9StructKeyReNtB1c_23DynamicNamedTupleAnchorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B46_B48_E0Es_0EB1i_.exit ]
  store i32 %.sroa.717.077, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.076, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.075, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1z_17DynamicEnumAnchorNtNtB1B_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1D_4TypeEENCINvMs9_B3V_B1x_3newDNtNtB1F_2db2DbEL_B4h_B51_B5q_B5Q_E0Es_0EB1F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(80) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [112 x i8], align 8               ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.457.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.558.0.copyload = load ptr, ptr %.sroa.558.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = ptrtoint ptr %.sroa.558.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.k to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.m = call noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs_NtB8_11zalsa_localNtB2Y_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1s_17DynamicEnumAnchorNtNtB1u_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1w_4TypeEENCINvMs9_B4P_B1q_3newDNtNtB1y_2db2DbEL_B5b_B5V_B6k_B6K_E0Es_0E0EB1y_(ptr noundef nonnull align 8 %i.l, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !3729
  %i.n = call noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.457.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.m), !noalias !3735
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB3R_17DynamicEnumAnchorNtNtB3T_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3V_4TypeEENCINvMs9_B6d_B3P_3newDNtNtB3X_2db2DbEL_B6z_B7j_B7I_B88_E0Es_0Es_0EB3X_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB3R_17DynamicEnumAnchorNtNtB3T_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3V_4TypeEENCINvMs9_B6d_B3P_3newDNtNtB3X_2db2DbEL_B6z_B7j_B7I_B88_E0Es_0Es_0EB3X_.exit

_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB3R_17DynamicEnumAnchorNtNtB3T_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3V_4TypeEENCINvMs9_B6d_B3P_3newDNtNtB3X_2db2DbEL_B6z_B7j_B7I_B88_E0Es_0Es_0EB3X_.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB3R_17DynamicEnumAnchorNtNtB3T_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3V_4TypeEENCINvMs9_B6d_B3P_3newDNtNtB3X_2db2DbEL_B6z_B7j_B7I_B88_E0Es_0Es_0EB3X_.exit
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.1041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.1142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
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
  %.sroa.836.0..sroa_idx.promoted = load ptr, ptr %.sroa.836.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1041.0..sroa_idx.promoted = load ptr, ptr %.sroa.1041.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1142.0..sroa_idx.promoted = load ptr, ptr %.sroa.1142.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.promoted = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.promoted = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.not5 = icmp eq i32 %i.ad, -2
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0186 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 4 uses
  %i.ag = call noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0186)
  %i.ah = call noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag) ; 7 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, 128624529911785020204689404401849373523
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1j_.exit, label %bb.f, !prof !4

select.unfold.i:                                  ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d, %bb.e, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB3R_17DynamicEnumAnchorNtNtB3T_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3V_4TypeEENCINvMs9_B6d_B3P_3newDNtNtB3X_2db2DbEL_B6z_B7j_B7I_B88_E0Es_0Es_0EB3X_.exit
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB3R_17DynamicEnumAnchorNtNtB3T_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3V_4TypeEENCINvMs9_B6d_B3P_3newDNtNtB3X_2db2DbEL_B6z_B7j_B7I_B88_E0Es_0Es_0EB3X_.exit ], [ %.sroa.0.0186, %bb.e ], [ %.sroa.0.0186, %bb.d ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ]
  call void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #56
  unreachable

bb.f:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1j_(ptr noundef nonnull align 8 %i.ah) #56
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1j_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !3736 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B4M_B5b_B5B_E0Es_0EB1i_.exit, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B4M_B5b_B5B_E0Es_0EB1i_.exit.thread

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B4M_B5b_B5B_E0Es_0EB1i_.exit.thread: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1j_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0186 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !3736, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw [112 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1041.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1142.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.1041.0..sroa_idx.promoted, align 8, !noalias !3741, !noundef !15
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1142.0..sroa_idx.promoted, align 8, !range !333, !noalias !3741, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3741
  store i32 %i.au, ptr %i.c, align 8, !noalias !3741
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bb, align 4, !noalias !3741
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.bc, align 8, !noalias !3745
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx37, align 8, !noalias !3745
  %.sroa.939.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.939.0..sroa_idx40, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.939.0..sroa_idx, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @_RNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literals0_1__INtB5_9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_17DynamicEnumAnchorNtNtB9_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtBb_4TypeEEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1x_B2g_B2E_B33_EE10into_ownedBd_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bc), !noalias !3736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3741
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !3741, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !3741, !noundef !15 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bj = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !3741, !noundef !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i16 %i.az, ptr %i.bk, align 8, !noalias !3736
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !3736
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3736
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3736
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !3736
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3736
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.bl, align 8, !noalias !3736
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bh, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !3736
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 106
  store i8 %i.bj, ptr %i.bm, align 2, !noalias !3736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ax, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !3736
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !3736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B4M_B5b_B5B_E0Es_0EB1i_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1j_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B4M_B5b_B5B_E0Es_0EB1i_.exit
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx, align 8
  store ptr %.sroa.1041.0..sroa_idx.promoted, ptr %.sroa.1041.0..sroa_idx, align 8
  store ptr %.sroa.1142.0..sroa_idx.promoted, ptr %.sroa.1142.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !15, !nonnull !15
  %i.bx = call noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs), !inline_history !3746
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1B_17DynamicEnumAnchorNtNtB1D_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_4TypeEENCINvMs9_B3X_B1z_3newDNtNtB1H_2db2DbEL_B4j_B53_B5s_B5S_E0Es_0E0B1H_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1B_17DynamicEnumAnchorNtNtB1D_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_4TypeEENCINvMs9_B3X_B1z_3newDNtNtB1H_2db2DbEL_B4j_B53_B5s_B5S_E0Es_0E0B1H_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !3747)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !3747
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !3747
  %i.cb = call noundef align 8 dereferenceable_or_null(14336) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 14336, i64 noundef range(i64 4, 9) 8) #59, !noalias !3747 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1h_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1B_17DynamicEnumAnchorNtNtB1D_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_4TypeEENCINvMs9_B3X_B1z_3newDNtNtB1H_2db2DbEL_B4j_B53_B5s_B5S_E0Es_0E0B1H_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 14336) #56
          to label %.noexc.i unwind label %bb.l, !noalias !3747

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !3750
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !3747

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3747
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %i.cd, %bb.m ], [ %i.cn, %bb.t ], [ %i.cl, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1h_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1B_17DynamicEnumAnchorNtNtB1D_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_4TypeEENCINvMs9_B3X_B1z_3newDNtNtB1H_2db2DbEL_B4j_B53_B5s_B5S_E0Es_0E0B1H_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !3747
  store i64 0, ptr %i.w, align 8, !alias.scope !3747
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !3747
  store ptr @180, ptr %i.x, align 8, !alias.scope !3747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @83, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !3747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !3755 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1h_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !3755

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1h_.exit
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !3758 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !3755

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3755
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !3758
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !3758 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr) ; 0 uses
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B4M_B5b_B5B_E0Es_0EB1i_.exit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B4M_B5b_B5B_E0Es_0EB1i_.exit.thread
  %.sroa.717.077 = phi i32 [ %i.au, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B4M_B5b_B5B_E0Es_0EB1i_.exit.thread ], [ %i.ae, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B4M_B5b_B5B_E0Es_0EB1i_.exit ]
  %.sroa.9.076 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B4M_B5b_B5B_E0Es_0EB1i_.exit.thread ], [ %i.af, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B4M_B5b_B5B_E0Es_0EB1i_.exit ]
  %.sroa.10.075 = phi ptr [ %i.ax, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B4M_B5b_B5B_E0Es_0EB1i_.exit.thread ], [ %.sroa.836.0..sroa_idx.promoted, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B4M_B5b_B5B_E0Es_0EB1i_.exit ]
  store i32 %.sroa.717.077, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.076, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.075, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s0_1__9StructKeyReNtB1z_17DynamicEnumAnchorNtNtB1B_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1D_4TypeEENCINvMs9_B3V_B1x_3newDNtNtB1F_2db2DbEL_B4h_B4j_B4I_B58_E0Es_0EB1F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(88) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [112 x i8], align 8               ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.457.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.558.0.copyload = load ptr, ptr %.sroa.558.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = ptrtoint ptr %.sroa.558.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.k to i32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.m = call noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs_NtB8_11zalsa_localNtB2Y_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_s0_1__9StructKeyReNtB1s_17DynamicEnumAnchorNtNtB1u_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1w_4TypeEENCINvMs9_B4P_B1q_3newDNtNtB1y_2db2DbEL_B5b_B5d_B5C_B62_E0Es_0E0EB1y_(ptr noundef nonnull align 8 %i.l, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g), !noalias !3761
  %i.n = call noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.457.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.m), !noalias !3767
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyReNtB3R_17DynamicEnumAnchorNtNtB3T_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3V_4TypeEENCINvMs9_B6d_B3P_3newDNtNtB3X_2db2DbEL_B6z_B6B_B70_B7q_E0Es_0Es_0EB3X_.exit

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyReNtB3R_17DynamicEnumAnchorNtNtB3T_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3V_4TypeEENCINvMs9_B6d_B3P_3newDNtNtB3X_2db2DbEL_B6z_B6B_B70_B7q_E0Es_0Es_0EB3X_.exit

_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyReNtB3R_17DynamicEnumAnchorNtNtB3T_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3V_4TypeEENCINvMs9_B6d_B3P_3newDNtNtB3X_2db2DbEL_B6z_B6B_B70_B7q_E0Es_0Es_0EB3X_.exit: ; preds = %bb.b, %bb.c
  %.pn.i = phi ptr [ %i.n, %bb.b ], [ %i.o, %bb.c ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyReNtB3R_17DynamicEnumAnchorNtNtB3T_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3V_4TypeEENCINvMs9_B6d_B3P_3newDNtNtB3X_2db2DbEL_B6z_B6B_B70_B7q_E0Es_0Es_0EB3X_.exit
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.1041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %.sroa.1142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
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
  %.sroa.836.0..sroa_idx.promoted = load ptr, ptr %.sroa.836.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1041.0..sroa_idx.promoted = load ptr, ptr %.sroa.1041.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1142.0..sroa_idx.promoted = load ptr, ptr %.sroa.1142.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.promoted = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.promoted = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.not5 = icmp eq i32 %i.ad, -2
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit
  %.sroa.0.0186 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ] ; 4 uses
  %i.ag = call noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0186)
  %i.ah = call noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag) ; 7 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, 128624529911785020204689404401849373523
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1j_.exit, label %bb.f, !prof !4

select.unfold.i:                                  ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit, %bb.d, %bb.e, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyReNtB3R_17DynamicEnumAnchorNtNtB3T_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3V_4TypeEENCINvMs9_B6d_B3P_3newDNtNtB3X_2db2DbEL_B6z_B6B_B70_B7q_E0Es_0Es_0EB3X_.exit
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %_RINvMs18_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_5EntryNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB17_5table9PageIndexE14or_insert_withNCINvMs_NtB17_11zalsa_localNtB2B_10ZalsaLocal13allocate_coldINtNtB17_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B3u_INtB3u_14IngredientImplB3P_E14intern_id_coldINtNvB3R_s0_1__9StructKeyReNtB3R_17DynamicEnumAnchorNtNtB3T_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB3V_4TypeEENCINvMs9_B6d_B3P_3newDNtNtB3X_2db2DbEL_B6z_B6B_B70_B7q_E0Es_0Es_0EB3X_.exit ], [ %.sroa.0.0186, %bb.e ], [ %.sroa.0.0186, %bb.d ], [ %i.cr, %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit ]
  call void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #56
  unreachable

bb.f:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1j_(ptr noundef nonnull align 8 %i.ah) #56
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1j_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !3768 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyReNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B44_B4t_B4T_E0Es_0EB1i_.exit, label %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyReNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B44_B4t_B4T_E0Es_0EB1i_.exit.thread

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyReNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B44_B4t_B4T_E0Es_0EB1i_.exit.thread: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1j_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0186 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !3768, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw [112 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1041.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1142.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.1041.0..sroa_idx.promoted, align 8, !noalias !3773, !noundef !15
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1142.0..sroa_idx.promoted, align 8, !range !333, !noalias !3773, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3773
  store i32 %i.au, ptr %i.c, align 8, !noalias !3773
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bb, align 4, !noalias !3773
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.bc, align 8, !noalias !3777
  %.sroa.836.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx37, align 8, !noalias !3777
  %.sroa.939.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.939.0..sroa_idx40, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.939.0..sroa_idx, i64 32, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  call void @_RNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literals0_1__INtB5_9StructKeyReNtB7_17DynamicEnumAnchorNtNtB9_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtBb_4TypeEEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameB1y_B1W_B2l_EE10into_ownedBd_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.bc), !noalias !3768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3773
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !3773, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !3773, !noundef !15 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bj = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !3773, !noundef !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i16 %i.az, ptr %i.bk, align 8, !noalias !3768
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !3768
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3768
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3768
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !3768
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3768
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 0, ptr %i.bl, align 8, !noalias !3768
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.bh, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !3768
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 106
  store i8 %i.bj, ptr %i.bm, align 2, !noalias !3768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ax, ptr noundef nonnull align 8 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !3768
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !3768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyReNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B44_B4t_B4T_E0Es_0EB1i_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1j_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyReNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B44_B4t_B4T_E0Es_0EB1i_.exit
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.836.0..sroa_idx.promoted, ptr %.sroa.836.0..sroa_idx, align 8
  store ptr %.sroa.1041.0..sroa_idx.promoted, ptr %.sroa.1041.0..sroa_idx, align 8
  store ptr %.sroa.1142.0..sroa_idx.promoted, ptr %.sroa.1142.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !15, !nonnull !15
  %i.bx = call noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs), !inline_history !3778
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s0_1__9StructKeyReNtB1B_17DynamicEnumAnchorNtNtB1D_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_4TypeEENCINvMs9_B3X_B1z_3newDNtNtB1H_2db2DbEL_B4j_B4l_B4K_B5a_E0Es_0E0B1H_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s0_1__9StructKeyReNtB1B_17DynamicEnumAnchorNtNtB1D_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_4TypeEENCINvMs9_B3X_B1z_3newDNtNtB1H_2db2DbEL_B4j_B4l_B4K_B5a_E0Es_0E0B1H_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !3779)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !3779
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !3779
  %i.cb = call noundef align 8 dereferenceable_or_null(14336) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 14336, i64 noundef range(i64 4, 9) 8) #59, !noalias !3779 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1h_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s0_1__9StructKeyReNtB1B_17DynamicEnumAnchorNtNtB1D_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_4TypeEENCINvMs9_B3X_B1z_3newDNtNtB1H_2db2DbEL_B4j_B4l_B4K_B5a_E0Es_0E0B1H_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 14336) #56
          to label %.noexc.i unwind label %bb.l, !noalias !3779

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !3782
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !3779

bb.n:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3779
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.cd, %bb.l ], [ %i.cd, %bb.m ], [ %i.cn, %bb.t ], [ %i.cl, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1h_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s0_1__9StructKeyReNtB1B_17DynamicEnumAnchorNtNtB1D_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_4TypeEENCINvMs9_B3X_B1z_3newDNtNtB1H_2db2DbEL_B4j_B4l_B4K_B5a_E0Es_0E0B1H_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !3779
  store i64 0, ptr %i.w, align 8, !alias.scope !3779
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !3779
  store ptr @180, ptr %i.x, align 8, !alias.scope !3779
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @83, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !3779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !3787 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1h_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !3787

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEEB1h_.exit
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !3790 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !3787

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3787
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !3790
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !3790 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr) ; 0 uses
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyReNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B44_B4t_B4T_E0Es_0EB1i_.exit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyReNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B44_B4t_B4T_E0Es_0EB1i_.exit.thread
  %.sroa.717.077 = phi i32 [ %i.au, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyReNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B44_B4t_B4T_E0Es_0EB1i_.exit.thread ], [ %i.ae, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyReNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B44_B4t_B4T_E0Es_0EB1i_.exit ]
  %.sroa.9.076 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyReNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B44_B4t_B4T_E0Es_0EB1i_.exit.thread ], [ %i.af, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyReNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B44_B4t_B4T_E0Es_0EB1i_.exit ]
  %.sroa.10.075 = phi ptr [ %i.ax, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyReNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B44_B4t_B4T_E0Es_0EB1i_.exit.thread ], [ %.sroa.836.0..sroa_idx.promoted, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal18DynamicEnumLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyReNtB1c_17DynamicEnumAnchorNtNtB1e_5known10KnownClassINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_4TypeEENCINvMs9_B3G_B1a_3newDNtNtB1i_2db2DbEL_B42_B44_B4t_B4T_E0Es_0EB1i_.exit ]
  store i32 %.sroa.717.077, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.076, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.075, ptr %.sroa.10.8..sroa_idx, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class12enum_literal8EnumSpecENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_1__9StructKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1D_4TypeEEbENCINvMs9_B3K_B1x_3newDNtNtB1F_2db2DbEL_B43_bE0Es_0EB1F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(56) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [80 x i8], align 8                ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
          to label %bb.b unwind label %.body.thread69.loopexit.split-lp

end_hunk_7
begin_hunk_8_@_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_s0_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1B_15MethodDecoratorENCINvMs9_B40_B1x_3newDNtNtB1F_2db2DbEL_B4m_B58_B5S_E0Es_0EB1F_:bb.a
  store i32 %i.aq, ptr %i.c, align 8, !noalias !3862
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.ay, align 4, !noalias !3862
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @_RNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literals0_1__INtB5_9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB9_15MethodDecoratorEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1y_B2l_B34_EE10into_ownedBd_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.au), !noalias !3857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3862
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.833.0..sroa_idx.promoted) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.833.0..sroa_idx.promoted, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !3862, !nonnull !15, !noundef !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !3862, !noundef !15 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 384307168202282326
  call void @llvm.assume(i1 %i.be)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0..sroa_idx.promoted) ]
  %i.bf = load i8, ptr %.sroa.10.0..sroa_idx.promoted, align 1, !range !259, !noalias !3862, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i16 %i.aw, ptr %i.bg, align 8, !noalias !3857
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !3857
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3857
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.aq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3857
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !3857
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ax, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3857
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 0, ptr %i.bh, align 8, !noalias !3857
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i64 %i.bd, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !3857
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 82
  store i8 %i.bf, ptr %i.bi, align 2, !noalias !3857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.at, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !noalias !3857
  %i.bj = add nuw nsw i64 %i.aj, 1
  store atomic i64 %i.bj, ptr %i.al release, align 8, !noalias !3857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1e_15MethodDecoratorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B47_B4T_B5D_E0Es_0EB1i_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameEEB1j_.exit
  %i.bk = ptrtoint ptr %.sroa.031.0.copyload to i64 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1e_15MethodDecoratorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B47_B4T_B5D_E0Es_0EB1i_.exit
  store i64 %i.bk, ptr %4, align 8
  store ptr %.sroa.632.0..sroa_idx.promoted, ptr %.sroa.632.0..sroa_idx, align 8
  store ptr %.sroa.833.0..sroa_idx.promoted, ptr %.sroa.833.0..sroa_idx, align 8
  store ptr %.sroa.10.0..sroa_idx.promoted, ptr %.sroa.10.0..sroa_idx, align 8
  store i8 %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  %i.bl = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, %i.s
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.s ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !15, !noundef !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !15, !nonnull !15
  %i.bu = call noundef nonnull align 8 ptr %i.bt(ptr noundef nonnull %i.bp), !inline_history !3867
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s0_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1D_15MethodDecoratorENCINvMs9_B42_B1z_3newDNtNtB1H_2db2DbEL_B4o_B5a_B5U_E0Es_0E0B1H_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s0_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1D_15MethodDecoratorENCINvMs9_B42_B1z_3newDNtNtB1H_2db2DbEL_B4o_B5a_B5U_E0Es_0E0B1H_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !3868)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bv, ptr %i.b, align 8, !noalias !3868
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !3868
  %i.by = call noundef align 8 dereferenceable_or_null(11264) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 11264, i64 noundef range(i64 4, 9) 8) #59, !noalias !3868 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameEEB1h_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s0_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1D_15MethodDecoratorENCINvMs9_B42_B1z_3newDNtNtB1H_2db2DbEL_B4o_B5a_B5U_E0Es_0E0B1H_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 11264) #56
          to label %.noexc.i unwind label %bb.l, !noalias !3868

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !noalias !3871
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !3868

bb.n:                                             ; preds = %bb.m
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3868
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.l ], [ %i.ca, %bb.m ], [ %i.ck, %bb.t ], [ %i.ci, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameEEB1h_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_s0_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1D_15MethodDecoratorENCINvMs9_B42_B1z_3newDNtNtB1H_2db2DbEL_B4o_B5a_B5U_E0Es_0E0B1H_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !3868
  store i64 0, ptr %i.w, align 8, !alias.scope !3868
  store ptr %i.by, ptr %i.e, align 8, !alias.scope !3868
  store ptr @183, ptr %i.x, align 8, !alias.scope !3868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @86, i64 16, i1 false)
  store ptr %i.bv, ptr %i.z, align 8, !alias.scope !3868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ce = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !3876 ; 5 uses
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameEEB1h_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !3876

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameEEB1h_.exit
  %i.cg = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ce)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !3879 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !3876

bb.r:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3876
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ch, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  store atomic i8 1, ptr %i.cm release, align 8, !noalias !3879
  %i.cn = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !3879 ; 0 uses
  %i.co = add nsw i64 %i.ce, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cp = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.co) ; 0 uses
  %i.cq = icmp samesign ugt i64 %i.ce, 31
  br i1 %i.cq, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1e_15MethodDecoratorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B47_B4T_B5D_E0Es_0EB1i_.exit
  %.sroa.031.0.extract.trunc.le = trunc i64 %i.bk to i32
  %.sroa.031.4.extract.shift.le = lshr i64 %i.bk, 32
  %.sroa.031.4.extract.trunc.le = trunc nuw i64 %.sroa.031.4.extract.shift.le to i32
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1e_15MethodDecoratorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B47_B4T_B5D_E0Es_0EB1i_.exit.thread
  %.sroa.014.064 = phi i32 [ %i.aq, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1e_15MethodDecoratorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B47_B4T_B5D_E0Es_0EB1i_.exit.thread ], [ %.sroa.031.0.extract.trunc.le, %.loopexit ]
  %.sroa.7.063 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1e_15MethodDecoratorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B47_B4T_B5D_E0Es_0EB1i_.exit.thread ], [ %.sroa.031.4.extract.trunc.le, %.loopexit ]
  %.sroa.821.062 = phi ptr [ %i.at, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class14static_literal21ImplicitAttributeNameEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_s0_1__9StructKeyNtNtCs2O29vuvTAEJ_14ty_python_core5scope7ScopeIdRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1e_15MethodDecoratorENCINvMs9_B3L_B1a_3newDNtNtB1i_2db2DbEL_B47_B4T_B5D_E0Es_0EB1i_.exit.thread ], [ %.sroa.632.0..sroa_idx.promoted, %.loopexit ]
  store i32 %.sroa.014.064, ptr %0, align 8
  %.sroa.7.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.7.063, ptr %.sroa.7.0..sroa_idx19, align 4
  %.sroa.821.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.821.062, ptr %.sroa.821.0..sroa_idx24, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1z_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTB4j_NtB1D_4TypeEEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1D_15DataclassParamsEENCINvMs9_B3Z_B1x_3newDNtNtB1F_2db2DbEL_B4i_B52_B5s_bB6k_E0Es_0EB1F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(104) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [136 x i8], align 8               ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
          to label %bb.b unwind label %.body.thread76.loopexit.split-lp

.body.thread76.loopexit:                          ; preds = %.noexc8, %bb.f, %bb.k, %bb.z
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread76.loopexit.split-lp:                 ; preds = %bb.c, %bb.a, %.noexc, %bb.h, %bb.l, %select.unfold.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.468.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.569.0.copyload = load ptr, ptr %.sroa.569.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.l = invoke noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs_NtB8_11zalsa_localNtB32_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1s_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTB5d_NtB1w_4TypeEEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1w_15DataclassParamsEENCINvMs9_B4T_B1q_3newDNtNtB1y_2db2DbEL_B5c_B5W_B6m_bB7e_E0Es_0E0EB1y_(ptr noundef nonnull align 8 %i.k, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g)
          to label %.noexc unwind label %.body.thread76.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  %i.m = ptrtoint ptr %.sroa.569.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.m to i32
  %i.n = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.468.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.l)
          to label %bb.e unwind label %.body.thread76.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %.pn.i = phi ptr [ %i.o, %bb.d ], [ %i.n, %.noexc ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %bb.e
  %.sroa.847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.1052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %.sroa.1153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
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
  %.sroa.847.0..sroa_idx.promoted = load ptr, ptr %.sroa.847.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1052.0..sroa_idx.promoted = load ptr, ptr %.sroa.1052.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1153.0..sroa_idx.promoted = load ptr, ptr %.sroa.1153.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.promoted = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.promoted = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.not5 = icmp eq i32 %i.ad, 2
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.aa
  %.sroa.0.0209 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %bb.aa ] ; 4 uses
  %i.ag = invoke noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0209)
          to label %.noexc8 unwind label %.body.thread76.loopexit

.noexc8:                                          ; preds = %bb.f
  %i.ah = invoke noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag)
          to label %.noexc9 unwind label %.body.thread76.loopexit ; 7 uses

.noexc9:                                          ; preds = %.noexc8
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.g

bb.g:                                             ; preds = %.noexc9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, 145452895011124310306104151621587872793
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEEB1j_.exit, label %bb.h, !prof !4

select.unfold.i:                                  ; preds = %bb.aa, %.noexc9, %bb.g, %bb.e
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0209, %bb.g ], [ %.sroa.0.0209, %.noexc9 ], [ %i.cr, %bb.aa ]
  invoke void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #56
          to label %.noexc10 unwind label %.body.thread76.loopexit.split-lp

.noexc10:                                         ; preds = %select.unfold.i
  unreachable

bb.h:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  invoke void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEEB1j_(ptr noundef nonnull align 8 %i.ah) #56
          to label %.noexc11 unwind label %.body.thread76.loopexit.split-lp

.noexc11:                                         ; preds = %bb.h
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEEB1j_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !3882 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %bb.i, label %.thread84

.thread84:                                        ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEEB1j_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0209 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !3882, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw [136 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1052.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1153.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.1052.0..sroa_idx.promoted, align 8, !noalias !3887, !noundef !15
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1153.0..sroa_idx.promoted, align 8, !range !333, !noalias !3887, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3887
  store i32 %i.au, ptr %i.c, align 8, !noalias !3887
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bb, align 4, !noalias !3887
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.bc, align 8, !noalias !3891
  %.sroa.847.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.847.0..sroa_idx.promoted, ptr %.sroa.847.0..sroa_idx48, align 8, !noalias !3891
  %.sroa.950.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.950.0..sroa_idx51, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.950.0..sroa_idx, i64 48, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @_RNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal1__INtB5_9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB7_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTB1x_NtBb_4TypeEEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtBb_15DataclassParamsEEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1x_B2g_B2F_bB3w_EE10into_ownedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3887
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !3887, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !3887, !noundef !15 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bj = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !3887, !noundef !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i16 %i.az, ptr %i.bk, align 8, !noalias !3882
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !3882
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3882
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3882
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !3882
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3882
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i64 0, ptr %i.bl, align 8, !noalias !3882
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 %i.bh, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !3882
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 130
  store i8 %i.bj, ptr %i.bm, align 2, !noalias !3882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ax, ptr noundef nonnull align 8 dereferenceable(136) %i.d, i64 136, i1 false), !noalias !3882
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !3882
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

bb.i:                                             ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEEB1j_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.847.0..sroa_idx.promoted, ptr %.sroa.847.0..sroa_idx, align 8
  store ptr %.sroa.1052.0..sroa_idx.promoted, ptr %.sroa.1052.0..sroa_idx, align 8
  store ptr %.sroa.1153.0..sroa_idx.promoted, ptr %.sroa.1153.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !15, !nonnull !15
  %i.bx = invoke noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs)
          to label %.noexc17 unwind label %.body.thread76.loopexit, !inline_history !3892

.noexc17:                                         ; preds = %bb.k
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.m, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1B_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTB4l_NtB1F_4TypeEEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_15DataclassParamsEENCINvMs9_B41_B1z_3newDNtNtB1H_2db2DbEL_B4k_B54_B5u_bB6m_E0Es_0E0B1H_.exit

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
          to label %.noexc18 unwind label %.body.thread76.loopexit.split-lp

.noexc18:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.noexc17
  call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %bb.i, %.thread84
  %.sroa.728.097 = phi i32 [ %i.au, %.thread84 ], [ %i.ae, %bb.i ]
  %.sroa.9.096 = phi i32 [ 0, %.thread84 ], [ %i.af, %bb.i ]
  %.sroa.10.095 = phi ptr [ %i.ax, %.thread84 ], [ %.sroa.847.0..sroa_idx.promoted, %bb.i ]
  store i32 %.sroa.728.097, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.096, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.095, ptr %.sroa.10.8..sroa_idx, align 8
  ret void

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1B_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTB4l_NtB1F_4TypeEEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_15DataclassParamsEENCINvMs9_B41_B1z_3newDNtNtB1H_2db2DbEL_B4k_B54_B5u_bB6m_E0Es_0E0B1H_.exit: ; preds = %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !3893)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !3893
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !3893
  %i.cb = call noundef align 8 dereferenceable_or_null(17408) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 17408, i64 noundef range(i64 4, 9) 8) #59, !noalias !3893 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.n, label %bb.r, !prof !3

bb.n:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1B_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTB4l_NtB1F_4TypeEEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_15DataclassParamsEENCINvMs9_B41_B1z_3newDNtNtB1H_2db2DbEL_B4k_B54_B5u_bB6m_E0Es_0E0B1H_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 17408) #56
          to label %.noexc.i unwind label %bb.o, !noalias !3893

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !3896
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.p, label %.body.thread

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body.thread unwind label %bb.q, !noalias !3893

bb.q:                                             ; preds = %bb.p
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3893
  unreachable

bb.r:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1B_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTB4l_NtB1F_4TypeEEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_15DataclassParamsEENCINvMs9_B41_B1z_3newDNtNtB1H_2db2DbEL_B4k_B54_B5u_bB6m_E0Es_0E0B1H_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !3893
  store i64 0, ptr %i.w, align 8, !alias.scope !3893
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !3893
  store ptr @184, ptr %i.x, align 8, !alias.scope !3893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @87, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !3893
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !3901 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.s, label %bb.t, !prof !3

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.w unwind label %bb.x, !noalias !3901

bb.t:                                             ; preds = %bb.r
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %bb.z unwind label %bb.u, !noalias !3904 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %.body.thread unwind label %bb.v, !noalias !3901

bb.v:                                             ; preds = %bb.u
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3901
  unreachable

bb.w:                                             ; preds = %bb.s
  unreachable

bb.x:                                             ; preds = %bb.s
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %.body.thread unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.z:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !3904
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !3904 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = invoke { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr)
          to label %bb.aa unwind label %.body.thread76.loopexit ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.f, label %select.unfold.i

bb.ab:                                            ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body74

.body.thread:                                     ; preds = %.body.thread76.loopexit, %.body.thread76.loopexit.split-lp, %bb.u, %bb.x, %bb.o, %bb.p
  %eh.lpad-body74 = phi { ptr, i32 } [ %i.cl, %bb.u ], [ %i.cd, %bb.o ], [ %i.cd, %bb.p ], [ %i.cn, %bb.x ], [ %lpad.loopexit, %.body.thread76.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread76.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtBK_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralE14intern_id_coldINtNvB1D_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1D_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTB3I_NtB1H_4TypeEEbINtNtB4_6option6OptionNtB1H_15DataclassParamsEENCINvMs9_B3o_B1B_3newDNtNtB1J_2db2DbEL_B3H_B4r_B4R_bB5J_E0Es_0EB1J_(ptr noalias noundef align 8 dereferenceable(104) %4) #57
          to label %bb.ab unwind label %bb.ac

bb.ac:                                            ; preds = %.body.thread
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
end_hunk_8
begin_hunk_9_@_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtB1z_18DynamicClassAnchorRSTB4j_NtB1D_4TypeEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1D_15DataclassParamsEENCINvMs9_B3Z_B1x_3newDNtNtB1F_2db2DbEL_B4i_B52_B5t_bB5N_E0Es_0EB1F_:bb.a
  store i32 %i.aq, ptr %i.c, align 8, !noalias !3919
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.ay, align 4, !noalias !3919
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @_RNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal1__INtB5_9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtB7_18DynamicClassAnchorRSTB1x_NtBb_4TypeEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtBb_15DataclassParamsEEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB1x_B2h_INtNtCscdodAO9FK5_5alloc5boxed3BoxB2H_EbB2Z_EE10into_ownedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.au), !noalias !3914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3919
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.833.0..sroa_idx.promoted) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.833.0..sroa_idx.promoted, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !3919, !nonnull !15, !noundef !15
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !3919, !noundef !15 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 384307168202282326
  call void @llvm.assume(i1 %i.be)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.0..sroa_idx.promoted) ]
  %i.bf = load i8, ptr %.sroa.10.0..sroa_idx.promoted, align 1, !range !259, !noalias !3919, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i16 %i.aw, ptr %i.bg, align 8, !noalias !3914
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !3914
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3914
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.aq, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3914
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !3914
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ax, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3914
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i64 0, ptr %i.bh, align 8, !noalias !3914
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 %i.bd, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !3914
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 130
  store i8 %i.bf, ptr %i.bi, align 2, !noalias !3914
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.at, ptr noundef nonnull align 8 dereferenceable(136) %i.d, i64 136, i1 false), !noalias !3914
  %i.bj = add nuw nsw i64 %i.aj, 1
  store atomic i64 %i.bj, ptr %i.al release, align 8, !noalias !3914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtB1c_18DynamicClassAnchorRSTB44_NtB1g_4TypeEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_15DataclassParamsEENCINvMs9_B3K_B1a_3newDNtNtB1i_2db2DbEL_B43_B4N_B5e_bB5y_E0Es_0EB1i_.exit: ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEEB1j_.exit
  %i.bk = ptrtoint ptr %.sroa.031.0.copyload to i64 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtB1c_18DynamicClassAnchorRSTB44_NtB1g_4TypeEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_15DataclassParamsEENCINvMs9_B3K_B1a_3newDNtNtB1i_2db2DbEL_B43_B4N_B5e_bB5y_E0Es_0EB1i_.exit
  store i64 %i.bk, ptr %4, align 8
  store ptr %.sroa.632.0..sroa_idx.promoted, ptr %.sroa.632.0..sroa_idx, align 8
  store ptr %.sroa.833.0..sroa_idx.promoted, ptr %.sroa.833.0..sroa_idx, align 8
  store ptr %.sroa.10.0..sroa_idx.promoted, ptr %.sroa.10.0..sroa_idx, align 8
  store i8 %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  %i.bl = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, %i.s
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.s ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !15, !noundef !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 136
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !15, !nonnull !15
  %i.bu = call noundef nonnull align 8 ptr %i.bt(ptr noundef nonnull %i.bp), !inline_history !3924
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bw = atomicrmw add ptr %i.bv, i64 1 monotonic, align 8
  %i.bx = icmp slt i64 %i.bw, 0
  br i1 %i.bx, label %bb.j, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtB1B_18DynamicClassAnchorRSTB4l_NtB1F_4TypeEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_15DataclassParamsEENCINvMs9_B41_B1z_3newDNtNtB1H_2db2DbEL_B4k_B54_B5v_bB5P_E0Es_0E0B1H_.exit

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtB1B_18DynamicClassAnchorRSTB4l_NtB1F_4TypeEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_15DataclassParamsEENCINvMs9_B41_B1z_3newDNtNtB1H_2db2DbEL_B4k_B54_B5v_bB5P_E0Es_0E0B1H_.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !3925)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.bv, ptr %i.b, align 8, !noalias !3925
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !3925
  %i.by = call noundef align 8 dereferenceable_or_null(17408) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 17408, i64 noundef range(i64 4, 9) 8) #59, !noalias !3925 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.k, label %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEEB1h_.exit, !prof !3

bb.k:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtB1B_18DynamicClassAnchorRSTB4l_NtB1F_4TypeEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_15DataclassParamsEENCINvMs9_B41_B1z_3newDNtNtB1H_2db2DbEL_B4k_B54_B5v_bB5P_E0Es_0E0B1H_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 17408) #56
          to label %.noexc.i unwind label %bb.l, !noalias !3925

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !noalias !3928
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.m, label %common.resume

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %common.resume unwind label %bb.n, !noalias !3925

bb.n:                                             ; preds = %bb.m
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3925
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.t, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.l ], [ %i.ca, %bb.m ], [ %i.ck, %bb.t ], [ %i.ci, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEEB1h_.exit: ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtB1B_18DynamicClassAnchorRSTB4l_NtB1F_4TypeEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_15DataclassParamsEENCINvMs9_B41_B1z_3newDNtNtB1H_2db2DbEL_B4k_B54_B5v_bB5P_E0Es_0E0B1H_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !3925
  store i64 0, ptr %i.w, align 8, !alias.scope !3925
  store ptr %i.by, ptr %i.e, align 8, !alias.scope !3925
  store ptr @184, ptr %i.x, align 8, !alias.scope !3925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @87, i64 16, i1 false)
  store ptr %i.bv, ptr %i.z, align 8, !alias.scope !3925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ce = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !3933 ; 5 uses
  %i.cf = icmp slt i64 %i.ce, 0
  br i1 %i.cf, label %bb.o, label %bb.p, !prof !3

bb.o:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEEB1h_.exit
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.s unwind label %bb.t, !noalias !3933

bb.p:                                             ; preds = %_RINvMs7_NtCs45bxiIjzMqg_5salsa5tableNtB6_4Page3newINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEEB1h_.exit
  %i.cg = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ce)
          to label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.q, !noalias !3936 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %common.resume unwind label %bb.r, !noalias !3933

bb.r:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3933
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE4pushCsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ch, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  store atomic i8 1, ptr %i.cm release, align 8, !noalias !3936
  %i.cn = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !3936 ; 0 uses
  %i.co = add nsw i64 %i.ce, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cp = call { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.co) ; 0 uses
  %i.cq = icmp samesign ugt i64 %i.ce, 31
  br i1 %i.cq, label %bb.d, label %select.unfold.i

.loopexit:                                        ; preds = %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtB1c_18DynamicClassAnchorRSTB44_NtB1g_4TypeEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_15DataclassParamsEENCINvMs9_B3K_B1a_3newDNtNtB1i_2db2DbEL_B43_B4N_B5e_bB5y_E0Es_0EB1i_.exit
  %.sroa.031.0.extract.trunc.le = trunc i64 %i.bk to i32
  %.sroa.031.4.extract.shift.le = lshr i64 %i.bk, 32
  %.sroa.031.4.extract.trunc.le = trunc nuw i64 %.sroa.031.4.extract.shift.le to i32
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtB1c_18DynamicClassAnchorRSTB44_NtB1g_4TypeEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_15DataclassParamsEENCINvMs9_B3K_B1a_3newDNtNtB1i_2db2DbEL_B43_B4N_B5e_bB5y_E0Es_0EB1i_.exit.thread
  %.sroa.014.064 = phi i32 [ %i.aq, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtB1c_18DynamicClassAnchorRSTB44_NtB1g_4TypeEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_15DataclassParamsEENCINvMs9_B3K_B1a_3newDNtNtB1i_2db2DbEL_B43_B4N_B5e_bB5y_E0Es_0EB1i_.exit.thread ], [ %.sroa.031.0.extract.trunc.le, %.loopexit ]
  %.sroa.7.063 = phi i32 [ 0, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtB1c_18DynamicClassAnchorRSTB44_NtB1g_4TypeEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_15DataclassParamsEENCINvMs9_B3K_B1a_3newDNtNtB1i_2db2DbEL_B43_B4N_B5e_bB5y_E0Es_0EB1i_.exit.thread ], [ %.sroa.031.4.extract.trunc.le, %.loopexit ]
  %.sroa.821.062 = phi ptr [ %i.at, %_RINvMs6_NtCs45bxiIjzMqg_5salsa5tableINtB6_8PageViewINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEE8allocateNCINvMs6_BQ_INtBQ_14IngredientImplB1a_E14intern_id_coldINtNvB1c_1__9StructKeyRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameRNtB1c_18DynamicClassAnchorRSTB44_NtB1g_4TypeEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1g_15DataclassParamsEENCINvMs9_B3K_B1a_3newDNtNtB1i_2db2DbEL_B43_B4N_B5e_bB5y_E0Es_0EB1i_.exit.thread ], [ %.sroa.632.0..sroa_idx.promoted, %.loopexit ]
  store i32 %.sroa.014.064, ptr %0, align 8
  %.sroa.7.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.7.063, ptr %.sroa.7.0..sroa_idx19, align 4
  %.sroa.821.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.821.062, ptr %.sroa.821.0..sroa_idx24, align 8
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_10ZalsaLocal13allocate_coldINtNtB7_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs6_B1d_INtB1d_14IngredientImplB1x_E14intern_id_coldINtNvB1z_1__9StructKeyReNtB1z_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1D_4TypeEEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1D_15DataclassParamsEENCINvMs9_B3Z_B1x_3newDNtNtB1F_2db2DbEL_B4i_B4k_B4K_bB6h_E0Es_0EB1F_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2, i32 noundef %3, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(112) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 7 uses
  %i.d = alloca [136 x i8], align 8               ; 14 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %3, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtB13_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE11rustc_entryCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3)
          to label %bb.b unwind label %.body.thread76.loopexit.split-lp

.body.thread76.loopexit:                          ; preds = %.noexc8, %bb.f, %bb.k, %bb.z
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread76.loopexit.split-lp:                 ; preds = %bb.c, %bb.a, %.noexc, %bb.h, %bb.l, %select.unfold.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.468.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.569.0.copyload = load ptr, ptr %.sroa.569.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.l = invoke noundef i64 @_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table18fetch_or_push_pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs_NtB8_11zalsa_localNtB32_10ZalsaLocal13allocate_coldB13_NCINvMs6_B16_INtB16_14IngredientImplB1q_E14intern_id_coldINtNvB1s_1__9StructKeyReNtB1s_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1w_4TypeEEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1w_15DataclassParamsEENCINvMs9_B4T_B1q_3newDNtNtB1y_2db2DbEL_B5c_B5e_B5E_bB7b_E0Es_0E0EB1y_(ptr noundef nonnull align 8 %i.k, i32 noundef %3, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g)
          to label %.noexc unwind label %.body.thread76.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  %i.m = ptrtoint ptr %.sroa.569.0.copyload to i64
  %.sroa.8.16.extract.trunc = trunc i64 %i.m to i32
  %i.n = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBT_5table9PageIndexEE14insert_no_growCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %.sroa.468.0.copyload, i32 noundef %.sroa.8.16.extract.trunc, i64 noundef %i.l)
          to label %bb.e unwind label %.body.thread76.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %.pn.i = phi ptr [ %i.o, %bb.d ], [ %i.n, %.noexc ]
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -8
  %i.p = load i64, ptr %.sroa.0.0.i, align 8, !noundef !15 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 328 ; 3 uses
  %i.r = icmp ult i64 %i.p, 9223372036854775776
  br i1 %i.r, label %.lr.ph, label %select.unfold.i

.lr.ph:                                           ; preds = %bb.e
  %.sroa.847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.1052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %.sroa.1153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
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
  %.sroa.847.0..sroa_idx.promoted = load ptr, ptr %.sroa.847.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1052.0..sroa_idx.promoted = load ptr, ptr %.sroa.1052.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1153.0..sroa_idx.promoted = load ptr, ptr %.sroa.1153.0..sroa_idx, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.promoted = load ptr, ptr %.sroa.12.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13.0..sroa_idx.promoted = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 3 uses
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.not5 = icmp eq i32 %i.ad, 2
  %i.ae = extractelement <4 x i32> %i.ac, i64 2
  %i.af = extractelement <4 x i32> %i.ac, i64 3
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.aa
  %.sroa.0.0209 = phi i64 [ %i.p, %.lr.ph ], [ %i.cr, %bb.aa ] ; 4 uses
  %i.ag = invoke noundef i64 @_RNvMs8_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsoTR8nlGN3X_18ty_python_semantic(i64 noundef %.sroa.0.0209)
          to label %.noexc8 unwind label %.body.thread76.loopexit

.noexc8:                                          ; preds = %bb.f
  %i.ah = invoke noundef align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E3getCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef %i.ag)
          to label %.noexc9 unwind label %.body.thread76.loopexit ; 7 uses

.noexc9:                                          ; preds = %.noexc8
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %select.unfold.i, label %bb.g

bb.g:                                             ; preds = %.noexc9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load atomic i8, ptr %i.ai acquire, align 8
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i, label %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i

_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.02.0.copyload.i = load i128, ptr %i.al, align 8
  %.not3.i = icmp eq i128 %.sroa.02.0.copyload.i, 145452895011124310306104151621587872793
  br i1 %.not3.i, label %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEEB1j_.exit, label %bb.h, !prof !4

select.unfold.i:                                  ; preds = %bb.aa, %.noexc9, %bb.g, %bb.e
  %.sroa.0.0.lcssa = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0209, %bb.g ], [ %.sroa.0.0209, %.noexc9 ], [ %i.cr, %bb.aa ]
  invoke void @_RNvNvXs_NtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %.sroa.0.0.lcssa) #56
          to label %.noexc10 unwind label %.body.thread76.loopexit.split-lp

.noexc10:                                         ; preds = %select.unfold.i
  unreachable

bb.h:                                             ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  invoke void @_RINvNtCs45bxiIjzMqg_5salsa5table18type_assert_failedINtNtB4_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEEB1j_(ptr noundef nonnull align 8 %i.ah) #56
          to label %.noexc11 unwind label %.body.thread76.loopexit.split-lp

.noexc11:                                         ; preds = %bb.h
  unreachable

_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEEB1j_.exit: ; preds = %_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE3getCsoTR8nlGN3X_18ty_python_semantic.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.an = load atomic i64, ptr %i.am acquire, align 8, !noalias !3939 ; 4 uses
  %i.ao = icmp ugt i64 %i.an, 127
  br i1 %i.ao, label %bb.i, label %.thread84

.thread84:                                        ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEEB1j_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aq = trunc i64 %.sroa.0.0209 to i32
  %i.ar = trunc nuw nsw i64 %i.an to i32
  %i.as = shl i32 %i.aq, 7
  %i.at = or disjoint i32 %i.as, 1
  %i.au = add i32 %i.at, %i.ar                    ; 4 uses
  %i.av = icmp ne i32 %i.au, 0
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.ah, align 8, !noalias !3939, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw [136 x i8], ptr %i.aw, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1052.0..sroa_idx.promoted) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1153.0..sroa_idx.promoted) ]
  %i.ay = load i64, ptr %.sroa.1052.0..sroa_idx.promoted, align 8, !noalias !3944, !noundef !15
  %i.az = trunc i64 %i.ay to i16
  %i.ba = load i64, ptr %.sroa.1153.0..sroa_idx.promoted, align 8, !range !333, !noalias !3944, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3944
  store i32 %i.au, ptr %i.c, align 8, !noalias !3944
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.bb, align 4, !noalias !3944
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <4 x i32> %i.ac, ptr %i.bc, align 8, !noalias !3948
  %.sroa.847.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.847.0..sroa_idx.promoted, ptr %.sroa.847.0..sroa_idx48, align 8, !noalias !3948
  %.sroa.950.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.950.0..sroa_idx51, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.950.0..sroa_idx, i64 56, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @_RNvXs0_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal1__INtB5_9StructKeyReNtB7_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtBb_4TypeEEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtBb_15DataclassParamsEEINtNtCs45bxiIjzMqg_5salsa8interned6LookupTB2x_B1y_B1X_bB3t_EE10into_ownedBd_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3944
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.0..sroa_idx.promoted) ]
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.12.0..sroa_idx.promoted, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !3944, !nonnull !15, !noundef !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !3944, !noundef !15 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 384307168202282326
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0..sroa_idx.promoted) ]
  %i.bj = load i8, ptr %.sroa.13.0..sroa_idx.promoted, align 1, !range !259, !noalias !3944, !noundef !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store i16 %i.az, ptr %i.bk, align 8, !noalias !3939
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8, !noalias !3939
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !3939
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.au, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !3939
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !3939
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.ba, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3939
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i64 0, ptr %i.bl, align 8, !noalias !3939
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 %i.bh, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !3939
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 130
  store i8 %i.bj, ptr %i.bm, align 2, !noalias !3939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ax, ptr noundef nonnull align 8 dereferenceable(136) %i.d, i64 136, i1 false), !noalias !3939
  %i.bn = add nuw nsw i64 %i.an, 1
  store atomic i64 %i.bn, ptr %i.ap release, align 8, !noalias !3939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

bb.i:                                             ; preds = %_RINvMs4_NtCs45bxiIjzMqg_5salsa5tableNtB6_5Table4pageINtNtB8_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralEEB1j_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not5, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store <4 x i32> %i.ac, ptr %4, align 8
  store ptr %.sroa.847.0..sroa_idx.promoted, ptr %.sroa.847.0..sroa_idx, align 8
  store ptr %.sroa.1052.0..sroa_idx.promoted, ptr %.sroa.1052.0..sroa_idx, align 8
  store ptr %.sroa.1153.0..sroa_idx.promoted, ptr %.sroa.1153.0..sroa_idx, align 8
  store ptr %.sroa.12.0..sroa_idx.promoted, ptr %.sroa.12.0..sroa_idx, align 8
  store ptr %.sroa.13.0..sroa_idx.promoted, ptr %.sroa.13.0..sroa_idx, align 8
  %i.bo = load i64, ptr %i.t, align 8, !noundef !15 ; 2 uses
  %i.bp = icmp ugt i64 %i.bo, %i.s
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %i.u, align 8, !nonnull !15, !noundef !15
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %i.s ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !15, !noundef !15
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !align !117, !noundef !15
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8, !invariant.load !15, !nonnull !15
  %i.bx = invoke noundef nonnull align 8 ptr %i.bw(ptr noundef nonnull %i.bs)
          to label %.noexc17 unwind label %.body.thread76.loopexit, !inline_history !3949

.noexc17:                                         ; preds = %bb.k
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bz = atomicrmw add ptr %i.by, i64 1 monotonic, align 8
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.m, label %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyReNtB1B_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1F_4TypeEEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_15DataclassParamsEENCINvMs9_B41_B1z_3newDNtNtB1H_2db2DbEL_B4k_B4m_B4M_bB6j_E0Es_0E0B1H_.exit

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @407) #56
          to label %.noexc18 unwind label %.body.thread76.loopexit.split-lp

.noexc18:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %.noexc17
  call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %bb.i, %.thread84
  %.sroa.728.097 = phi i32 [ %i.au, %.thread84 ], [ %i.ae, %bb.i ]
  %.sroa.9.096 = phi i32 [ 0, %.thread84 ], [ %i.af, %bb.i ]
  %.sroa.10.095 = phi ptr [ %i.ax, %.thread84 ], [ %.sroa.847.0..sroa_idx.promoted, %bb.i ]
  store i32 %.sroa.728.097, ptr %0, align 8
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.9.096, ptr %.sroa.9.8..sroa_idx, align 4
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.095, ptr %.sroa.10.8..sroa_idx, align 8
  ret void

_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyReNtB1B_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1F_4TypeEEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_15DataclassParamsEENCINvMs9_B41_B1z_3newDNtNtB1H_2db2DbEL_B4k_B4m_B4M_bB6j_E0Es_0E0B1H_.exit: ; preds = %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !3950)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.by, ptr %i.b, align 8, !noalias !3950
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !3950
  %i.cb = call noundef align 8 dereferenceable_or_null(17408) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 4, 22529) 17408, i64 noundef range(i64 4, 9) 8) #59, !noalias !3950 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.n, label %bb.r, !prof !3

bb.n:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyReNtB1B_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1F_4TypeEEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_15DataclassParamsEENCINvMs9_B41_B1z_3newDNtNtB1H_2db2DbEL_B4k_B4m_B4M_bB6j_E0Es_0E0B1H_.exit
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 17408) #56
          to label %.noexc.i unwind label %bb.o, !noalias !3950

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !3953
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.p, label %.body.thread

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs45bxiIjzMqg_5salsa5table4memo14MemoTableTypesE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body.thread unwind label %bb.q, !noalias !3950

bb.q:                                             ; preds = %bb.p
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3950
  unreachable

bb.r:                                             ; preds = %_RNCINvMs_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB7_10ZalsaLocal13allocate_coldINtNtB9_8interned5ValueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralENCINvMs6_B1f_INtB1f_14IngredientImplB1z_E14intern_id_coldINtNvB1B_1__9StructKeyReNtB1B_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1F_4TypeEEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtB1F_15DataclassParamsEENCINvMs9_B41_B1z_3newDNtNtB1H_2db2DbEL_B4k_B4m_B4M_bB6j_E0Es_0E0B1H_.exit
  store i32 %3, ptr %i.v, align 8, !alias.scope !3950
  store i64 0, ptr %i.w, align 8, !alias.scope !3950
  store ptr %i.cb, ptr %i.e, align 8, !alias.scope !3950
  store ptr @184, ptr %i.x, align 8, !alias.scope !3950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) @87, i64 16, i1 false)
  store ptr %i.by, ptr %i.z, align 8, !alias.scope !3950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ch = atomicrmw add ptr %i.aa, i64 1 monotonic, align 8, !noalias !3958 ; 5 uses
  %i.ci = icmp slt i64 %i.ch, 0
  br i1 %i.ci, label %bb.s, label %bb.t, !prof !3

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMNtNtCsc4HYy37PfYO_6boxcar3vec3rawINtB2_3VecNtNtCs45bxiIjzMqg_5salsa5table4PageE19next_index_overflowCs56aZGHL6Dc6_7ruff_db(ptr noundef nonnull align 8 %i.q) #56
          to label %bb.w unwind label %bb.x, !noalias !3958

bb.t:                                             ; preds = %bb.r
  %i.cj = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_E12get_or_allocCsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.q, i64 noundef range(i64 1, -9223372036854775808) %i.ch)
          to label %bb.z unwind label %bb.u, !noalias !3961 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #57
          to label %.body.thread unwind label %bb.v, !noalias !3958

bb.v:                                             ; preds = %bb.u
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58, !noalias !3958
  unreachable

bb.w:                                             ; preds = %bb.s
  unreachable

bb.x:                                             ; preds = %bb.s
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5table4PageECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #57
          to label %.body.thread unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.z:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ck, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store atomic i8 1, ptr %i.cp release, align 8, !noalias !3961
  %i.cq = atomicrmw add ptr %i.ab, i64 1 release, align 8, !noalias !3961 ; 0 uses
  %i.cr = add nsw i64 %i.ch, -32                  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cs = invoke { i64, i64 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexNtNtBR_5table9PageIndexNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef %3, i64 noundef %i.cr)
          to label %bb.aa unwind label %.body.thread76.loopexit ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.ct = icmp samesign ugt i64 %i.ch, 31
  br i1 %i.ct, label %bb.f, label %select.unfold.i

bb.ab:                                            ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body74

.body.thread:                                     ; preds = %.body.thread76.loopexit, %.body.thread76.loopexit.split-lp, %bb.u, %bb.x, %bb.o, %bb.p
  %eh.lpad-body74 = phi { ptr, i32 } [ %i.cl, %bb.u ], [ %i.cd, %bb.o ], [ %i.cd, %bb.p ], [ %i.cn, %bb.x ], [ %lpad.loopexit, %.body.thread76.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread76.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCINvMs6_NtCs45bxiIjzMqg_5salsa8internedINtBK_14IngredientImplNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal19DynamicClassLiteralE14intern_id_coldINtNvB1D_1__9StructKeyReNtB1D_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB1H_4TypeEEbINtNtB4_6option6OptionNtB1H_15DataclassParamsEENCINvMs9_B3o_B1B_3newDNtNtB1J_2db2DbEL_B3H_B3J_B49_bB5G_E0Es_0EB1J_(ptr noalias noundef align 8 dereferenceable(112) %4) #57
          to label %bb.ab unwind label %bb.ac

bb.ac:                                            ; preds = %.body.thread
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #58
end_hunk_9
