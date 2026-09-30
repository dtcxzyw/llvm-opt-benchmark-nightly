Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_namespace_datafusion-2d021003f7e3bbfb.lance_namespace_datafusion.8d790b69f1ad25b0-cgu.0?download=true
inline.NumInlined: 15000
inline.NumDeleted: 5462
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5_20LanceCatalogProviderNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProvider15register_schema:bb.a
  %i.cc = xor i64 %i.cb, %i.bw                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40574
  %i.cd = shl i64 %i.cc, 7
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !40575, !noalias !40576, !noundef !111
  %i.cg = and i64 %i.cf, 63
  %i.ch = lshr i64 %i.cd, %i.cg                   ; 2 uses
  %.val13.i.i = load ptr, ptr %i.g, align 8, !alias.scope !40575, !noalias !40576, !nonnull !111, !noundef !111
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val14.i.i = load i64, ptr %i.ci, align 8, !alias.scope !40575, !noalias !40576, !noundef !111
  %i.cj = icmp ult i64 %i.ch, %.val14.i.i
  tail call void @llvm.assume(i1 %i.cj)
  %i.ck = getelementptr inbounds nuw [128 x i8], ptr %.val13.i.i, i64 %i.ch ; 11 uses
  %i.cl = cmpxchg weak ptr %i.ck, i64 0, i64 -4 acquire monotonic, align 8, !noalias !40578
  %.sroa.18.0.in.i.i.i.i = extractvalue { i64, i1 } %i.cl, 1
  br i1 %.sroa.18.0.in.i.i.i.i, label %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.f, !prof !116

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.o, %bb.n, %bb.e
  %.pn.i.i = phi { ptr, i32 } [ %i.cm, %bb.e ], [ %i.ef, %bb.o ], [ %i.ef, %bb.n ] ; 2 uses
  br i1 %i.h, label %bb.x, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !40582
  br label %bb.x

bb.e:                                             ; preds = %bb.f
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.f:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread21
  invoke void @_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.ck)
          to label %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.e, !noalias !40578

_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.f, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread21
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 24 ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !40583, !noalias !40584, !noundef !111
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.g, label %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, !prof !114

bb.g:                                             ; preds = %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %i.cr = invoke { i64, i64 } @_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE14reserve_rehashNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0EB2G_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cn, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i1 noundef zeroext true)
          to label %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i unwind label %bb.n, !noalias !40578 ; 0 uses

_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i: ; preds = %bb.g, %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %.val.i16.i.i = load ptr, ptr %i.cn, align 8, !alias.scope !40585, !noalias !40586, !nonnull !111, !noundef !111 ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.val7.i.i.i = load i64, ptr %i.cs, align 8, !alias.scope !40585, !noalias !40586, !noundef !111 ; 4 uses
  %i.ct = lshr i64 %i.cc, 57
  %i.cu = trunc nuw nsw i64 %i.ct to i8           ; 3 uses
  %i.cv = insertelement <16 x i8> poison, i8 %i.cu, i64 0
  %i.cw = shufflevector <16 x i8> %i.cv, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i
  %.pn.i.i.i.i = phi i64 [ %i.cc, %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ], [ %i.dx, %bb.k ]
  %.sroa.4.0.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ], [ %.sroa.4.1.i.i.i.i, %bb.k ]
  %.sroa.01.0.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ], [ %.sroa.01.1.i.i.i.i, %bb.k ]
  %i.cx = phi i64 [ 0, %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ], [ %i.dw, %bb.k ]
  %.sroa.0.017.i.i.i.i = and i64 %.pn.i.i.i.i, %.val7.i.i.i ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.i16.i.i, i64 %.sroa.0.017.i.i.i.i
  %.sroa.0.0.copyload.i18.i.i.i.i = load <16 x i8>, ptr %i.cy, align 1, !noalias !40587 ; 3 uses
  %i.cz = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i, %i.cw
  %i.da = bitcast <16 x i1> %i.cz to i16          ; 2 uses
  %.not.i17.i.i.i = icmp eq i16 %i.da, 0
  br i1 %.not.i17.i.i.i, label %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4c_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4c_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.backedge.i.i.i
  %.sroa.05.0.i18.i.i.i = phi i16 [ %i.de, %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4c_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.backedge.i.i.i ], [ %i.da, %bb.h ] ; 3 uses
  %i.db = add i16 %.sroa.05.0.i18.i.i.i, -1
  %i.dc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i18.i.i.i, i1 true)
  %i.dd = zext nneg i16 %i.dc to i64
  %i.de = and i16 %i.db, %.sroa.05.0.i18.i.i.i    ; 2 uses
  %i.df = add i64 %.sroa.0.017.i.i.i.i, %i.dd
  %i.dg = and i64 %i.df, %.val7.i.i.i
  %i.dh = sub nsw i64 0, %i.dg
  %i.di = getelementptr inbounds [40 x i8], ptr %.val.i16.i.i, i64 %i.dh ; 3 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -24
  %.val3.i.i.i.i = load i64, ptr %i.dj, align 8, !noalias !40588, !noundef !111
  %i.dk = icmp eq i64 %.val3.i.i.i.i, %3
  br i1 %i.dk, label %.split.i.i.i, label %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4c_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.dl = getelementptr i8, ptr %i.di, i64 -32
  %.val2.i.i.i.i = load ptr, ptr %i.dl, align 8, !noalias !40588, !nonnull !111, !noundef !111
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i.i, ptr nonnull readonly %i.k, i64 %3), !noalias !40588
  %i.dm = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.dm, label %bb.q, label %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4c_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.backedge.i.i.i

_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4c_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %.not.i.i.i.i = icmp eq i16 %i.de, 0
  br i1 %.not.i.i.i.i, label %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4c_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4c_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i.i.i: ; preds = %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4c_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.backedge.i.i.i, %bb.h
  %.not12.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i, 1
  br i1 %.not12.i.i.i.i, label %_RNvMsa_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4c_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i.i.i
  %i.dn = icmp slt <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i, zeroinitializer
  %i.do = bitcast <16 x i1> %i.dn to i16          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.do, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMsa_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.do, i1 true)
  %i.dq = zext nneg i16 %i.dp to i64
  %i.dr = add i64 %.sroa.0.017.i.i.i.i, %i.dq
  %i.ds = and i64 %i.dr, %.val7.i.i.i
  br label %_RNvMsa_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i

_RNvMsa_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i: ; preds = %bb.j, %bb.i, %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4c_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i.i.i
  %.sroa.4.1.i.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i, %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4c_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i.i.i ], [ %i.ds, %bb.j ], [ undef, %bb.i ] ; 3 uses
  %.sroa.01.1.i.i.i.i = phi i64 [ 1, %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4c_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i.i.i ], [ 1, %bb.j ], [ 0, %bb.i ]
  %i.dt = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i, splat (i8 -1)
  %i.du = bitcast <16 x i1> %i.dt to i16
  %i.dv = icmp eq i16 %i.du, 0
  br i1 %i.dv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNvMsa_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i
  %i.dw = add i64 %i.cx, 16                       ; 2 uses
  %i.dx = add i64 %i.dw, %.sroa.0.017.i.i.i.i
  br label %bb.h

bb.l:                                             ; preds = %_RNvMsa_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i16.i.i, i64 %.sroa.4.1.i.i.i.i
  %i.dz = load i8, ptr %i.dy, align 1, !noalias !40589, !noundef !111
  %i.ea = icmp sgt i8 %i.dz, -1
  br i1 %i.ea, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %.val2.i.i.i.i.i = load <16 x i8>, ptr %.val.i16.i.i, align 16, !noalias !40589
  %i.eb = icmp slt <16 x i8> %.val2.i.i.i.i.i, zeroinitializer
  %i.ec = bitcast <16 x i1> %i.eb to i16          ; 2 uses
  %.not.i23.i.i.i.i = icmp ne i16 %i.ec, 0
  %i.ed = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ec, i1 true)
  %i.ee = zext nneg i16 %i.ed to i64
  call void @llvm.assume(i1 %.not.i23.i.i.i.i)
  br label %bb.v

bb.n:                                             ; preds = %bb.g
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = cmpxchg ptr %i.ck, i64 -4, i64 0 release monotonic, align 8, !noalias !40578
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.eg, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.o, !prof !116

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ck)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.p, !noalias !40578

bb.p:                                             ; preds = %bb.o
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !40578
  unreachable

bb.q:                                             ; preds = %.split.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40572
  %i.ei = getelementptr inbounds i8, ptr %i.di, i64 -16 ; 2 uses
  %i.ej = load <2 x ptr>, ptr %i.ei, align 8, !noalias !40590 ; 2 uses
  %i.ek = load <2 x ptr>, ptr %i.d, align 16, !noalias !40572
  store <2 x ptr> %i.ek, ptr %i.ei, align 8, !noalias !40590
  %i.el = cmpxchg ptr %i.ck, i64 -4, i64 0 release monotonic, align 8, !noalias !40591
  %.sroa.18.0.in.i.i.i.i.i6.i = extractvalue { i64, i1 } %i.el, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i6.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i9.i, label %bb.r, !prof !116

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ck)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i9.i unwind label %bb.s, !noalias !40591

bb.s:                                             ; preds = %bb.r
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.h, label %.body.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !40592
  br label %.body.thread

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i9.i: ; preds = %bb.r, %bb.q
  br i1 %i.h, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i9.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !40593
  br label %bb.ab

bb.v:                                             ; preds = %bb.l, %bb.m
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ %i.ee, %bb.m ], [ %.sroa.4.1.i.i.i.i, %bb.l ] ; 3 uses
  %i.en = inttoptr i64 %3 to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40572
  call void @llvm.experimental.noalias.scope.decl(metadata !40594)
  %i.eo = getelementptr inbounds nuw i8, ptr %.val.i16.i.i, i64 %.sroa.3.0.i.ph.i.i.i ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !noalias !40595, !noundef !111
  %i.eq = and i8 %i.ep, 1
  %i.er = zext nneg i8 %i.eq to i64
  %i.es = add i64 %.sroa.3.0.i.ph.i.i.i, -16
  %i.et = and i64 %i.es, %.val7.i.i.i
  %i.eu = getelementptr i8, ptr %.val.i16.i.i, i64 %i.et
  %i.ev = getelementptr i8, ptr %i.eu, i64 16
  %6 = load <2 x i64>, ptr %i.co, align 8, !alias.scope !40594, !noalias !40596
  %7 = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.er, i64 0
  %8 = sub <2 x i64> %6, %7
  %i.ew = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i
  %i.ex = getelementptr inbounds [40 x i8], ptr %.val.i16.i.i, i64 %i.ew ; 4 uses
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -40
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ex, i64 -32
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ex, i64 -24
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.ex, i64 -16
  %i.ez = load <2 x ptr>, ptr %i.d, align 16, !noalias !40572
  store i8 %i.cu, ptr %i.eo, align 1, !noalias !40595
  store i8 %i.cu, ptr %i.ev, align 1, !noalias !40595
  store <2 x i64> %8, ptr %i.co, align 8, !alias.scope !40594, !noalias !40596
  store i64 %3, ptr %i.ey, align 8, !noalias !40597
  store i64 %.sroa.10.026, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !40597
  store ptr %i.en, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !40597
  store <2 x ptr> %i.ez, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !40598
  %i.fa = cmpxchg ptr %i.ck, i64 -4, i64 0 release monotonic, align 8, !noalias !40590
  %.sroa.18.0.in.i.i.i.i.i12.i = extractvalue { i64, i1 } %i.fa, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i12.i, label %bb.ab, label %bb.w, !prof !116

bb.w:                                             ; preds = %bb.v
  call void @_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.ck)
  br label %bb.ab

bb.x:                                             ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !40599)
  call void @llvm.experimental.noalias.scope.decl(metadata !40600)
  %i.fb = load ptr, ptr %i.d, align 16, !alias.scope !40601, !noalias !40572, !nonnull !111, !noundef !111
  %i.fc = atomicrmw sub ptr %i.fb, i64 1 release, align 8, !noalias !40602
  %i.fd = icmp eq i64 %i.fc, 1
  br i1 %i.fd, label %bb.y, label %.body.thread

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.body.thread unwind label %bb.z, !noalias !40590

bb.z:                                             ; preds = %bb.y
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !40590
  unreachable

bb.aa:                                            ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i
  %i.ff = ptrtoint ptr %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsc93vp1BCDlY_26lance_namespace_datafusion.exit.thread21

bb.ab:                                            ; preds = %bb.w, %bb.v, %bb.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i9.i
  %i.fg = phi <2 x ptr> [ %i.ej, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i9.i ], [ %i.ej, %bb.u ], [ <ptr null, ptr undef>, %bb.v ], [ <ptr null, ptr undef>, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.fg, ptr %i.fh, align 8
  store i64 -1, ptr %0, align 8
  ret void

bb.ac:                                            ; preds = %bb.c
  unreachable

.body.thread:                                     ; preds = %bb.ad, %bb.ae, %bb.y, %bb.x, %bb.t, %bb.s
  %eh.lpad-body13 = phi { ptr, i32 } [ %i.fi, %bb.ad ], [ %.pn.i.i, %bb.y ], [ %i.em, %bb.s ], [ %.pn.i.i, %bb.x ], [ %i.em, %bb.t ], [ %i.fi, %bb.ae ]
  resume { ptr, i32 } %eh.lpad-body13

bb.ad:                                            ; preds = %bb.c
  %i.fi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fj = atomicrmw sub ptr %4, i64 1 release, align 8, !noalias !40603
  %i.fk = icmp eq i64 %i.fj, 1
  br i1 %i.fk, label %bb.ae, label %.body.thread

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body.thread unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs1_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB5_20LanceCatalogProviderNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProvider6schema(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40640)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40641
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8, !alias.scope !40640, !noalias !40642 ; 3 uses
  %i.f = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.g = xor <2 x i64> %i.f, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.g, ptr %i.b, align 16, !alias.scope !40643, !noalias !40641
  %i.h = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.i = xor <2 x i64> %i.h, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.i, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !40643, !noalias !40641
  store <2 x i64> %i.e, ptr %.sroa.711.0..sroa_idx.i.i.i, align 16, !alias.scope !40643, !noalias !40641
  %.sroa.913.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !alias.scope !40643, !noalias !40641
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !40644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40645
  store i8 -1, ptr %i.a, align 1, !noalias !40645
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !40646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40645
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !40647, !noalias !40641
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !40647, !noalias !40641
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !40647, !noalias !40641 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !alias.scope !40647, !noalias !40641
  %i.j = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i, align 16, !alias.scope !40647, !noalias !40641, !noundef !111
  %i.k = shl i64 %i.j, 56
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !40647, !noalias !40641, !noundef !111
  %i.n = or i64 %i.k, %i.m                        ; 2 uses
  %i.o = xor i64 %i.n, %.sroa.22.0.copyload.i.i.i.i ; 3 uses
  %i.p = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i ; 3 uses
  %i.q = add i64 %i.o, %.sroa.10.0.copyload.i.i.i.i ; 2 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13)
  %i.s = xor i64 %i.r, %i.p                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 16)
  %i.u = xor i64 %i.t, %i.q                       ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 32)
  %i.w = add i64 %i.q, %i.s                       ; 3 uses
  %i.x = add i64 %i.u, %i.v                       ; 2 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 17)
  %i.z = xor i64 %i.w, %i.y                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 21)
  %i.ab = xor i64 %i.aa, %i.x                     ; 3 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32)
  %i.ad = xor i64 %i.x, %i.n
  %i.ae = xor i64 %i.ac, 255
  %i.af = add i64 %i.ad, %i.z                     ; 3 uses
  %i.ag = add i64 %i.ab, %i.ae                    ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 13)
  %i.ai = xor i64 %i.af, %i.ah                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 16)
  %i.ak = xor i64 %i.aj, %i.ag                    ; 3 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 32)
  %i.am = add i64 %i.ai, %i.ag                    ; 3 uses
  %i.an = add i64 %i.ak, %i.al                    ; 2 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 17)
  %i.ap = xor i64 %i.am, %i.ao                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 21)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = add i64 %i.ap, %i.an                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 13)
  %i.aw = xor i64 %i.av, %i.at                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 16)
  %i.ay = xor i64 %i.ax, %i.au                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ba = add i64 %i.aw, %i.au                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 17)
  %i.bd = xor i64 %i.bc, %i.ba                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 21)
  %i.bf = xor i64 %i.be, %i.bb                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.bh = add i64 %i.bd, %i.bb
  %i.bi = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 13)
  %i.bk = xor i64 %i.bj, %i.bh                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 16)
  %i.bm = xor i64 %i.bl, %i.bi                    ; 2 uses
  %i.bn = add i64 %i.bk, %i.bi                    ; 3 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 17)
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 21)
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 32)
  %i.br = xor i64 %i.bp, %i.bo
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = xor i64 %i.bs, %i.bn                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40641
  %i.bu = shl i64 %i.bt, 7
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !40640, !noalias !40642, !noundef !111
  %i.bx = and i64 %i.bw, 63
  %i.by = lshr i64 %i.bu, %i.bx                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40648)
  %i.bz = load ptr, ptr %i.c, align 8, !alias.scope !40649, !noalias !40642, !nonnull !111, !noundef !111
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !40649, !noalias !40642, !noundef !111
  %i.cc = icmp ult i64 %i.by, %i.cb
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [128 x i8], ptr %i.bz, i64 %i.by ; 8 uses
  %i.ce = load atomic i64, ptr %i.cd monotonic, align 8, !noalias !40650 ; 3 uses
  %i.cf = icmp ugt i64 %i.ce, -9
  br i1 %i.cf, label %_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, label %_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, !prof !112

_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i: ; preds = %bb.a
  %i.cg = add nuw i64 %i.ce, 4
  %i.ch = cmpxchg weak ptr %i.cd, i64 %i.ce, i64 %i.cg acquire monotonic, align 8, !noalias !40650
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ch, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17__yield_read_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, !prof !123

_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i: ; preds = %_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, %bb.a
  tail call void @_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.cd), !noalias !40650
  br label %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17__yield_read_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog6schema14SchemaProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17__yield_read_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, %_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40652)
  %i.cj = lshr i64 %i.bt, 57
  %i.ck = trunc nuw nsw i64 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
end_hunk_0
begin_hunk_1_@_RNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB4_24LanceCatalogProviderListNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog19CatalogProviderList16register_catalog:bb.a
  br label %bb.w

bb.c:                                             ; preds = %bb.d
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %i.cg)
          to label %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.c, !noalias !41449

_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i: ; preds = %bb.d, %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 24 ; 3 uses
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !41456, !noalias !41457, !noundef !111
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.e, label %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i, !prof !114

bb.e:                                             ; preds = %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %i.co = invoke { i64, i64 } @_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE14reserve_rehashNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0EB2G_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ck, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i1 noundef zeroext true)
          to label %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i unwind label %bb.l, !noalias !41449 ; 0 uses

_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i: ; preds = %bb.e, %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE18__yield_write_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  %.val.i16.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !41458, !noalias !41459, !nonnull !111, !noundef !111 ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.val7.i.i.i = load i64, ptr %i.cp, align 8, !alias.scope !41458, !noalias !41459, !noundef !111 ; 4 uses
  %i.cq = lshr i64 %i.by, 57
  %i.cr = trunc nuw nsw i64 %i.cq to i8           ; 3 uses
  %i.cs = insertelement <16 x i8> poison, i8 %i.cr, i64 0
  %i.ct = shufflevector <16 x i8> %i.cs, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i
  %.pn.i.i.i.i = phi i64 [ %i.by, %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ], [ %i.du, %bb.i ]
  %.sroa.4.0.i.i.i.i = phi i64 [ undef, %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ], [ %.sroa.4.1.i.i.i.i, %bb.i ]
  %.sroa.01.0.i.i.i.i = phi i64 [ 0, %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ], [ %.sroa.01.1.i.i.i.i, %bb.i ]
  %i.cu = phi i64 [ 0, %_RINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB12_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE7reserveNCNvXs2_B1F_INtB1F_7DashMapBY_B2j_EINtNtB1F_1t3MapBY_B2j_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entrys_0ECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i.i ], [ %i.dt, %bb.i ]
  %.sroa.0.017.i.i.i.i = and i64 %.pn.i.i.i.i, %.val7.i.i.i ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i16.i.i, i64 %.sroa.0.017.i.i.i.i
  %.sroa.0.0.copyload.i18.i.i.i.i = load <16 x i8>, ptr %i.cv, align 1, !noalias !41460 ; 3 uses
  %i.cw = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i, %i.ct
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %.not.i17.i.i.i = icmp eq i16 %i.cx, 0
  br i1 %.not.i17.i.i.i, label %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4e_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4e_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.backedge.i.i.i
  %.sroa.05.0.i18.i.i.i = phi i16 [ %i.db, %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4e_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.backedge.i.i.i ], [ %i.cx, %bb.f ] ; 3 uses
  %i.cy = add i16 %.sroa.05.0.i18.i.i.i, -1
  %i.cz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i18.i.i.i, i1 true)
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = and i16 %i.cy, %.sroa.05.0.i18.i.i.i    ; 2 uses
  %i.dc = add i64 %.sroa.0.017.i.i.i.i, %i.da
  %i.dd = and i64 %i.dc, %.val7.i.i.i
  %i.de = sub nsw i64 0, %i.dd
  %i.df = getelementptr inbounds [40 x i8], ptr %.val.i16.i.i, i64 %i.de ; 3 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 -24
  %.val3.i.i.i.i = load i64, ptr %i.dg, align 8, !noalias !41461, !noundef !111
  %i.dh = icmp eq i64 %.val3.i.i.i.i, %.val12.i.i
  br i1 %i.dh, label %.split.i.i.i, label %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4e_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.di = getelementptr i8, ptr %i.df, i64 -32
  %.val2.i.i.i.i = load ptr, ptr %i.di, align 8, !noalias !41461, !nonnull !111, !noundef !111
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i.i, ptr nonnull readonly %.val11.i.i, i64 %.val12.i.i), !noalias !41461
  %i.dj = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.dj, label %.thread.i, label %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4e_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.backedge.i.i.i

_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4e_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %.not.i.i.i.i = icmp eq i16 %i.db, 0
  br i1 %.not.i.i.i.i, label %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4e_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4e_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i.i.i: ; preds = %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4e_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.backedge.i.i.i, %bb.f
  %.not12.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i, 1
  br i1 %.not12.i.i.i.i, label %_RNvMsa_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4e_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i.i.i
  %i.dk = icmp slt <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i, zeroinitializer
  %i.dl = bitcast <16 x i1> %i.dk to i16          ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.dl, 0
  br i1 %.not.i.i.i.i.i, label %_RNvMsa_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dl, i1 true)
  %i.dn = zext nneg i16 %i.dm to i64
  %i.do = add i64 %.sroa.0.017.i.i.i.i, %i.dn
  %i.dp = and i64 %i.do, %.val7.i.i.i
  br label %_RNvMsa_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i

_RNvMsa_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4e_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i.i.i
  %.sroa.4.1.i.i.i.i = phi i64 [ %.sroa.4.0.i.i.i.i, %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4e_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i.i.i ], [ %i.dp, %bb.h ], [ undef, %bb.g ] ; 3 uses
  %.sroa.01.1.i.i.i.i = phi i64 [ 1, %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE24find_or_find_insert_slotNCNvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6__entry0NCB4e_s_0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i.i.i ], [ 1, %bb.h ], [ 0, %bb.g ]
  %i.dq = icmp eq <16 x i8> %.sroa.0.0.copyload.i18.i.i.i.i, splat (i8 -1)
  %i.dr = bitcast <16 x i1> %i.dq to i16
  %i.ds = icmp eq i16 %i.dr, 0
  br i1 %i.ds, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvMsa_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i
  %i.dt = add i64 %i.cu, 16                       ; 2 uses
  %i.du = add i64 %i.dt, %.sroa.0.017.i.i.i.i
  br label %bb.f

bb.j:                                             ; preds = %_RNvMsa_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerNtB5_13RawTableInner25find_insert_slot_in_group.exit.i.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i16.i.i, i64 %.sroa.4.1.i.i.i.i
  %i.dw = load i8, ptr %i.dv, align 1, !noalias !41462, !noundef !111
  %i.dx = icmp sgt i8 %i.dw, -1
  br i1 %i.dx, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %.val2.i.i.i.i.i = load <16 x i8>, ptr %.val.i16.i.i, align 16, !noalias !41462
  %i.dy = icmp slt <16 x i8> %.val2.i.i.i.i.i, zeroinitializer
  %i.dz = bitcast <16 x i1> %i.dy to i16          ; 2 uses
  %.not.i23.i.i.i.i = icmp ne i16 %i.dz, 0
  %i.ea = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.dz, i1 true)
  %i.eb = zext nneg i16 %i.ea to i64
  call void @llvm.assume(i1 %.not.i23.i.i.i.i)
  br label %bb.o

bb.l:                                             ; preds = %bb.e
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = cmpxchg ptr %i.cg, i64 -4, i64 0 release monotonic, align 8, !noalias !41449
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ed, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i, label %bb.m, !prof !116

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.cg)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i unwind label %bb.n, !noalias !41449

.thread.i:                                        ; preds = %.split.i.i.i
  %.sroa.6.sroa.0.0.copyload22.i = load i64, ptr %1, align 8, !alias.scope !41449, !noalias !41463
  %i.ee = ptrtoint ptr %i.cg to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41439
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !41449
  unreachable

bb.o:                                             ; preds = %bb.k, %bb.j
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ %i.eb, %bb.k ], [ %.sroa.4.1.i.i.i.i, %bb.j ] ; 4 uses
  %.sroa.3.0.i.ph.i.i.ptr.i = inttoptr i64 %.sroa.3.0.i.ph.i.i.i to ptr
  %.sroa.0.0.copyload15.i = load i64, ptr %1, align 8, !alias.scope !41449, !noalias !41463 ; 2 uses
  %.sroa.6.sroa.0.0.copyload21.i = load i64, ptr %i.h, align 8, !alias.scope !41449, !noalias !41463 ; 2 uses
  %.sroa.6.sroa.6.0.copyload23.i = load ptr, ptr %i.i, align 8, !alias.scope !41449, !noalias !41463 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !41439
  %.not.i = icmp eq i64 %.sroa.0.0.copyload15.i, -1
  br i1 %.not.i, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o, %.thread.i
  %.sroa.9.047.i = phi i64 [ %i.ee, %.thread.i ], [ %i.by, %bb.o ]
  %.sroa.11.046.ptr.i = phi ptr [ %i.df, %.thread.i ], [ %.sroa.3.0.i.ph.i.i.ptr.i, %bb.o ] ; 2 uses
  %.sroa.6.sroa.0.045.i = phi i64 [ %.sroa.6.sroa.0.0.copyload22.i, %.thread.i ], [ %.sroa.6.sroa.0.0.copyload21.i, %bb.o ] ; 4 uses
  %.sroa.6.sroa.6.044.i = phi ptr [ %.val11.i.i, %.thread.i ], [ %.sroa.6.sroa.6.0.copyload23.i, %bb.o ] ; 4 uses
  %i.eg = getelementptr inbounds i8, ptr %.sroa.11.046.ptr.i, i64 -16 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !41438, !nonnull !111, !noundef !111 ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %.sroa.11.046.ptr.i, i64 -8
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !41438, !nonnull !111, !align !127, !noundef !111 ; 2 uses
  %i.ek = load <2 x ptr>, ptr %i.d, align 16, !noalias !41439
  store <2 x ptr> %i.ek, ptr %i.eg, align 8, !noalias !41438
  %i.el = inttoptr i64 %.sroa.9.047.i to ptr      ; 2 uses
  %i.em = cmpxchg ptr %i.el, i64 -4, i64 0 release monotonic, align 8, !noalias !41464
  %.sroa.18.0.in.i.i.i.i.i6.i = extractvalue { i64, i1 } %i.em, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i6.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i9.i, label %bb.q, !prof !116

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.el)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i9.i unwind label %bb.r, !noalias !41464

bb.r:                                             ; preds = %bb.q
  %i.en = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eo = icmp eq i64 %.sroa.6.sroa.0.045.i, 0
  br i1 %i.eo, label %.body.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.6.044.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.6.044.i, i64 noundef %.sroa.6.sroa.0.045.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !41465
  br label %.body.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i9.i: ; preds = %bb.q, %bb.p
  %i.ep = icmp eq i64 %.sroa.6.sroa.0.045.i, 0
  br i1 %i.ep, label %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE7__insertCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i9.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.6.044.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.6.044.i, i64 noundef %.sroa.6.sroa.0.045.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !41466
  br label %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE7__insertCsc93vp1BCDlY_26lance_namespace_datafusion.exit

bb.u:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !41467)
  %i.eq = getelementptr inbounds nuw i8, ptr %.val.i16.i.i, i64 %.sroa.3.0.i.ph.i.i.i ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !noalias !41468, !noundef !111
  %i.es = and i8 %i.er, 1
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = add i64 %.sroa.3.0.i.ph.i.i.i, -16
  %i.ev = and i64 %i.eu, %.val7.i.i.i
  %i.ew = getelementptr i8, ptr %.val.i16.i.i, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  %4 = load <2 x i64>, ptr %i.cl, align 8, !alias.scope !41467, !noalias !41469
  %5 = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.et, i64 0
  %6 = sub <2 x i64> %4, %5
  %i.ey = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i
  %i.ez = getelementptr inbounds [40 x i8], ptr %.val.i16.i.i, i64 %i.ey ; 4 uses
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -40
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ez, i64 -32
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ez, i64 -24
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.ez, i64 -16
  %i.fb = load <2 x ptr>, ptr %i.d, align 16, !noalias !41439
  store i8 %i.cr, ptr %i.eq, align 1, !noalias !41468
  store i8 %i.cr, ptr %i.ex, align 1, !noalias !41468
  store <2 x i64> %6, ptr %i.cl, align 8, !alias.scope !41467, !noalias !41469
  store i64 %.sroa.0.0.copyload15.i, ptr %i.fa, align 8, !noalias !41470
  store i64 %.sroa.6.sroa.0.0.copyload21.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !41470
  store ptr %.sroa.6.sroa.6.0.copyload23.i, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !41470
  store <2 x ptr> %i.fb, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !41471
  %i.fc = cmpxchg ptr %i.cg, i64 -4, i64 0 release monotonic, align 8, !noalias !41438
  %.sroa.18.0.in.i.i.i.i.i12.i = extractvalue { i64, i1 } %i.fc, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i12.i, label %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE7__insertCsc93vp1BCDlY_26lance_namespace_datafusion.exit, label %bb.v, !prof !116

bb.v:                                             ; preds = %bb.u
  call void @_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8 %i.cg), !noalias !41438
  br label %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE7__insertCsc93vp1BCDlY_26lance_namespace_datafusion.exit

.body.i:                                          ; preds = %bb.x, %bb.w, %bb.s, %bb.r
  %eh.lpad-body35.i = phi { ptr, i32 } [ %i.en, %bb.r ], [ %.pn.i.i, %bb.w ], [ %i.en, %bb.s ], [ %.pn.i.i, %bb.x ]
  resume { ptr, i32 } %eh.lpad-body35.i

bb.w:                                             ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !41472)
  call void @llvm.experimental.noalias.scope.decl(metadata !41473)
  %i.fd = load ptr, ptr %i.d, align 16, !alias.scope !41474, !noalias !41439, !nonnull !111, !noundef !111
  %i.fe = atomicrmw sub ptr %i.fd, i64 1 release, align 8, !noalias !41475
  %i.ff = icmp eq i64 %i.fe, 1
  br i1 %i.ff, label %bb.x, label %.body.i

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %.body.i unwind label %bb.y, !noalias !41438

bb.y:                                             ; preds = %bb.x
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #50, !noalias !41438
  unreachable

_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE7__insertCsc93vp1BCDlY_26lance_namespace_datafusion.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i9.i, %bb.t, %bb.u, %bb.v
  %.sroa.3.0.i = phi ptr [ %i.ej, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i9.i ], [ %i.ej, %bb.t ], [ undef, %bb.u ], [ undef, %bb.v ]
  %.sroa.0.0.i = phi ptr [ %i.eh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsiVTOiHjdfhE_8lock_api6rwlock16RwLockWriteGuardNtNtCs5q0wOX0Zf7d_7dashmap4lock9RawRwLockINtNtNtCs9gfkuPPCJ2o_9hashbrown3raw5inner8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1w_4util11SharedValueINtNtB30_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEEEECsc93vp1BCDlY_26lance_namespace_datafusion.exit.i9.i ], [ %i.eh, %bb.t ], [ null, %bb.u ], [ null, %bb.v ]
  %i.fh = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.fi = insertvalue { ptr, ptr } %i.fh, ptr %.sroa.3.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret { ptr, ptr } %i.fi
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs_NtCsc93vp1BCDlY_26lance_namespace_datafusion7catalogNtB4_24LanceCatalogProviderListNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog19CatalogProviderList7catalog(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41512)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !41513
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load <2 x i64>, ptr %i.d, align 8, !alias.scope !41512, !noalias !41514 ; 3 uses
  %i.f = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.g = xor <2 x i64> %i.f, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.g, ptr %i.b, align 16, !alias.scope !41515, !noalias !41513
  %i.h = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.i = xor <2 x i64> %i.h, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.i, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !41515, !noalias !41513
  store <2 x i64> %i.e, ptr %.sroa.711.0..sroa_idx.i.i.i, align 16, !alias.scope !41515, !noalias !41513
  %.sroa.913.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !alias.scope !41515, !noalias !41513
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !41516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !41517
  store i8 -1, ptr %i.a, align 1, !noalias !41517
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsc93vp1BCDlY_26lance_namespace_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !41518
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !41517
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 16, !alias.scope !41519, !noalias !41513
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !alias.scope !41519, !noalias !41513
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i, align 16, !alias.scope !41519, !noalias !41513 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i.i.i, align 8, !alias.scope !41519, !noalias !41513
  %i.j = load i64, ptr %.sroa.913.0..sroa_idx.i.i.i, align 16, !alias.scope !41519, !noalias !41513, !noundef !111
  %i.k = shl i64 %i.j, 56
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !41519, !noalias !41513, !noundef !111
  %i.n = or i64 %i.k, %i.m                        ; 2 uses
  %i.o = xor i64 %i.n, %.sroa.22.0.copyload.i.i.i.i ; 3 uses
  %i.p = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i ; 3 uses
  %i.q = add i64 %i.o, %.sroa.10.0.copyload.i.i.i.i ; 2 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13)
  %i.s = xor i64 %i.r, %i.p                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 16)
  %i.u = xor i64 %i.t, %i.q                       ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 32)
  %i.w = add i64 %i.q, %i.s                       ; 3 uses
  %i.x = add i64 %i.u, %i.v                       ; 2 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 17)
  %i.z = xor i64 %i.w, %i.y                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 21)
  %i.ab = xor i64 %i.aa, %i.x                     ; 3 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 32)
  %i.ad = xor i64 %i.x, %i.n
  %i.ae = xor i64 %i.ac, 255
  %i.af = add i64 %i.ad, %i.z                     ; 3 uses
  %i.ag = add i64 %i.ab, %i.ae                    ; 2 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 13)
  %i.ai = xor i64 %i.af, %i.ah                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.ab, i64 16)
  %i.ak = xor i64 %i.aj, %i.ag                    ; 3 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 32)
  %i.am = add i64 %i.ai, %i.ag                    ; 3 uses
  %i.an = add i64 %i.ak, %i.al                    ; 2 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 17)
  %i.ap = xor i64 %i.am, %i.ao                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 21)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = add i64 %i.ap, %i.an                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 13)
  %i.aw = xor i64 %i.av, %i.at                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 16)
  %i.ay = xor i64 %i.ax, %i.au                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ba = add i64 %i.aw, %i.au                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 17)
  %i.bd = xor i64 %i.bc, %i.ba                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 21)
  %i.bf = xor i64 %i.be, %i.bb                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  %i.bh = add i64 %i.bd, %i.bb
  %i.bi = add i64 %i.bf, %i.bg                    ; 2 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 13)
  %i.bk = xor i64 %i.bj, %i.bh                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 16)
  %i.bm = xor i64 %i.bl, %i.bi                    ; 2 uses
  %i.bn = add i64 %i.bk, %i.bi                    ; 3 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 17)
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 21)
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 32)
  %i.br = xor i64 %i.bp, %i.bo
  %i.bs = xor i64 %i.br, %i.bq
  %i.bt = xor i64 %i.bs, %i.bn                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !41513
  %i.bu = shl i64 %i.bt, 7
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !41512, !noalias !41514, !noundef !111
  %i.bx = and i64 %i.bw, 63
  %i.by = lshr i64 %i.bu, %i.bx                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41520)
  %i.bz = load ptr, ptr %i.c, align 8, !alias.scope !41521, !noalias !41514, !nonnull !111, !noundef !111
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !41521, !noalias !41514, !noundef !111
  %i.cc = icmp ult i64 %i.by, %i.cb
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [128 x i8], ptr %i.bz, i64 %i.by ; 8 uses
  %i.ce = load atomic i64, ptr %i.cd monotonic, align 8, !noalias !41522 ; 3 uses
  %i.cf = icmp ugt i64 %i.ce, -9
  br i1 %i.cf, label %_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, label %_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, !prof !112

_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i: ; preds = %bb.a
  %i.cg = add nuw i64 %i.ce, 4
  %i.ch = cmpxchg weak ptr %i.cd, i64 %i.ce, i64 %i.cg acquire monotonic, align 8, !noalias !41522
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.ch, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17__yield_read_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i, label %_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, !prof !123

_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i: ; preds = %_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i, %bb.a
  tail call void @_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8 %i.cd), !noalias !41522
  br label %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17__yield_read_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i

_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17__yield_read_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i: ; preds = %_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i, %_RNvMs0_NtCs5q0wOX0Zf7d_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41524)
  %i.cj = lshr i64 %i.bt, 57
  %i.ck = trunc nuw nsw i64 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !41525, !noalias !41526, !noundef !111 ; 2 uses
  %i.cn = load ptr, ptr %i.ci, align 8, !alias.scope !41525, !noalias !41526, !nonnull !111, !noundef !111 ; 2 uses
  %i.co = insertelement <16 x i8> poison, i8 %i.ck, i64 0
  %i.cp = shufflevector <16 x i8> %i.co, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17__yield_read_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i
  %.sroa.011.0.i.i.i = phi i64 [ 0, %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17__yield_read_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ], [ %i.di, %bb.c ]
  %.pn.i.i.i = phi i64 [ %i.bt, %_RNvXs2_Cs5q0wOX0Zf7d_7dashmapINtB5_7DashMapNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBJ_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEINtNtB5_1t3MapBF_B1h_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE17__yield_read_shardCsc93vp1BCDlY_26lance_namespace_datafusion.exit.i ], [ %i.dj, %bb.c ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.cm   ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.cq, align 1, !noalias !41527 ; 2 uses
  %i.cr = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.cp
  %i.cs = bitcast <16 x i1> %i.cr to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.cs, 0
  br i1 %.not.i.not32.i.i, label %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE4findNCINvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4__geteE0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE4findNCINvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4__geteE0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.backedge.i.i
  %.sroa.05.0.i33.i.i = phi i16 [ %i.cw, %_RNCINvMs6_NtNtCs9gfkuPPCJ2o_9hashbrown3raw5innerINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCs5q0wOX0Zf7d_7dashmap4util11SharedValueINtNtB14_4sync3ArcDNtNtCs5q7AjagIPjV_18datafusion_catalog7catalog15CatalogProviderEL_EEEE4findNCINvXs2_B1H_INtB1H_7DashMapB10_B2l_EINtNtB1H_1t3MapB10_B2l_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE4__geteE0E0Csc93vp1BCDlY_26lance_namespace_datafusion.exit.backedge.i.i ], [ %i.cs, %bb.b ] ; 3 uses
  %i.ct = add i16 %.sroa.05.0.i33.i.i, -1
  %i.cu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.0.i33.i.i, i1 true)
  %i.cv = zext nneg i16 %i.cu to i64
  %i.cw = and i16 %i.ct, %.sroa.05.0.i33.i.i      ; 2 uses
  %i.cx = add i64 %.sroa.01.0.i.i.i, %i.cv
  %i.cy = and i64 %i.cx, %i.cm
  %i.cz = sub nsw i64 0, %i.cy
end_hunk_1
