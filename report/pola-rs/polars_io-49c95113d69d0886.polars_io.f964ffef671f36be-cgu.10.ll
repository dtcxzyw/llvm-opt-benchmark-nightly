Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.10?download=true
inline.NumInlined: 3835
inline.NumDeleted: 2170
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB33_12ChunkedArrayNtNtB35_9datatypes9UInt8TypeE13downcast_iter0ENCNvXs_NtNtB33_10arithmetic7numericRB3Y_NtB5a_17ArithmeticChunked19wrapping_add_scalar0ENCINvMs_NtB33_4fromB3Y_15from_chunk_iterBX_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7d_8for_each4callB1v_NCINvMsj_NtB1A_3vecINtB8t_3VecB1v_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io:bb.a
  br i1 %i.j, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Z_12ChunkedArrayNtNtB31_9datatypes9UInt8TypeE13downcast_iter0ENCNvXs_NtNtB2Z_10arithmetic7numericRB3U_NtB56_17ArithmeticChunked19wrapping_add_scalar0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtB23_9primitive14PrimitiveArrayhEB1r_uNCINvMs_NtB2Z_4fromB3U_15from_chunk_iterBN_E0NCINvNvB6p_8for_each4callB1r_NCINvMsj_NtB1w_3vecINtB9l_3VecB1r_E14extend_trustedIBO_BN_B80_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %bb.b, !dbg !11313

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.g to i64, !dbg !11314
  %i.l = ptrtoint ptr %i.e to i64, !dbg !11314
  %i.m = sub nuw i64 %i.k, %i.l, !dbg !11314
  %i.n = lshr exact i64 %i.m, 4, !dbg !11314
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  br label %bb.d, !dbg !11315

bb.c:                                             ; preds = %_RNCNvXs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array10arithmetic7numericRINtBa_12ChunkedArrayNtNtBc_9datatypes9UInt8TypeENtB6_17ArithmeticChunked19wrapping_add_scalar0CslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.n, !dbg !11316

bb.d:                                             ; preds = %bb.m, %bb.b
  %.val15.i.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.b ], [ %i.au, %bb.m ] ; 3 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.av, %bb.m ], !dbg !11317 ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %.sroa.01.0.i.i.i, !dbg !11318
  %.val16.i.i.i = load ptr, ptr %i.r, align 8, !dbg !11319, !noalias !11297, !nonnull !1359, !noundef !1359 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11320, !noalias !11298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11321, !noalias !11299
  call void @llvm.experimental.noalias.scope.decl(metadata !11300), !dbg !11322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11323, !noalias !11301
  invoke fastcc void @_RNvXs3_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val16.i.i.i) #45
          to label %.noexc.i.i.i unwind label %bb.c, !dbg !11323, !noalias !11297

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.val16.i.i.i, i64 32, !dbg !11324
  %i.t = load ptr, ptr %i.s, align 8, !dbg !11324, !noalias !11301, !nonnull !1359, !noundef !1359 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !dbg !11325, !range !1650, !noalias !11301, !noundef !1359
  %i.v = icmp eq i64 %i.u, 3, !dbg !11326
  br i1 %i.v, label %bb.e, label %bb.f, !dbg !11326

bb.e:                                             ; preds = %bb.f, %.noexc.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val16.i.i.i, i64 40, !dbg !11327
  %i.x = load ptr, ptr %i.w, align 8, !dbg !11327, !noalias !11301, !noundef !1359
  %i.y = getelementptr inbounds nuw i8, ptr %.val16.i.i.i, i64 48, !dbg !11328
  %i.z = load i64, ptr %i.y, align 8, !dbg !11328, !noalias !11301, !noundef !1359
  %i.aa = getelementptr inbounds nuw i8, ptr %.val16.i.i.i, i64 56, !dbg !11329
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !11329, !noalias !11301, !noundef !1359 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null, !dbg !11329
  br i1 %.not.i.i.i.i.i.i.i, label %_RNCNvXs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array10arithmetic7numericRINtBa_12ChunkedArrayNtNtBc_9datatypes9UInt8TypeENtB6_17ArithmeticChunked19wrapping_add_scalar0CslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i, label %bb.g, !dbg !11330

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !11331
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !dbg !11332, !noalias !11301 ; 0 uses
  br label %bb.e, !dbg !11333

bb.g:                                             ; preds = %bb.e
  %i.ae = load i64, ptr %i.ab, align 8, !dbg !11334, !range !1650, !noalias !11302, !noundef !1359
  %i.af = icmp eq i64 %i.ae, 3, !dbg !11335
  br i1 %i.af, label %bb.i, label %bb.h, !dbg !11335

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24, !dbg !11336
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8, !dbg !11337, !noalias !11302 ; 0 uses
  br label %bb.i, !dbg !11338

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.val16.i.i.i, i64 64, !dbg !11339
  %i.aj = load <2 x i64>, ptr %i.ai, align 8, !dbg !11339, !noalias !11302
  %i.ak = getelementptr inbounds nuw i8, ptr %.val16.i.i.i, i64 80, !dbg !11340
  %i.al = load atomic i64, ptr %i.ak monotonic, align 8, !dbg !11341, !noalias !11302
  br label %_RNCNvXs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array10arithmetic7numericRINtBa_12ChunkedArrayNtNtBc_9datatypes9UInt8TypeENtB6_17ArithmeticChunked19wrapping_add_scalar0CslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i, !dbg !11342

_RNCNvXs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array10arithmetic7numericRINtBa_12ChunkedArrayNtNtBc_9datatypes9UInt8TypeENtB6_17ArithmeticChunked19wrapping_add_scalar0CslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i: ; preds = %bb.i, %bb.e
  %.sroa.5.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ undef, %bb.e ], [ %i.al, %bb.i ], !dbg !11343
  %i.am = phi <2 x i64> [ undef, %bb.e ], [ %i.aj, %bb.i ], !dbg !11343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !11344, !noalias !11299
  store ptr %i.t, ptr %i.o, align 8, !dbg !11344, !alias.scope !11300, !noalias !11299
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !11344, !alias.scope !11300, !noalias !11299
  store i64 %i.z, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i.i, align 8, !dbg !11344, !alias.scope !11300, !noalias !11299
  store ptr %i.ab, ptr %i.p, align 8, !dbg !11344, !alias.scope !11300, !noalias !11299
  store <2 x i64> %i.am, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !11344, !alias.scope !11300, !noalias !11299
  store i64 %.sroa.5.sroa.5.0.i.i.i.i.i.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !11344, !alias.scope !11300, !noalias !11299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11345, !noalias !11301
  %i.an = load i8, ptr %i.i, align 1, !dbg !11346, !noalias !11299, !noundef !1359
  invoke void @_RNvXNtNtCslFlrwjHoTci_14polars_compute10arithmetic8unsignedhNtB4_29PrimitiveArithmeticKernelImpl24prim_wrapping_add_scalar(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.c, i8 noundef %i.an)
          to label %.noexc17.i.i.i unwind label %bb.c, !dbg !11347, !noalias !11297

.noexc17.i.i.i:                                   ; preds = %_RNCNvXs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array10arithmetic7numericRINtBa_12ChunkedArrayNtNtBc_9datatypes9UInt8TypeENtB6_17ArithmeticChunked19wrapping_add_scalar0CslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11348, !noalias !11299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11349, !noalias !11303
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.d, i64 88, i1 false), !dbg !11349, !noalias !11304
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !dbg !11350, !noalias !11305
  %i.ao = call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 88, i64 noundef range(i64 8, 129) 8) #37, !dbg !11351, !noalias !11305 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null, !dbg !11352
  br i1 %i.ap, label %bb.j, label %bb.m, !dbg !11353, !prof !1432

bb.j:                                             ; preds = %.noexc17.i.i.i
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #41
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.k, !dbg !11354, !noalias !11306

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.j
  unreachable, !dbg !11354

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArrayhEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #42
          to label %bb.n unwind label %bb.l, !dbg !11355, !noalias !11303

bb.l:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !11356, !noalias !11303
  unreachable, !dbg !11356

bb.m:                                             ; preds = %.noexc17.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(88) %i.d, i64 88, i1 false), !dbg !11357, !noalias !11304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11358, !noalias !11303
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.5.0.copyload.i, i64 %.val15.i.i.i, !dbg !11359 ; 2 uses
  store ptr %i.ao, ptr %i.as, align 8, !dbg !11360, !noalias !11307
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !11360
  store ptr @28, ptr %i.at, align 8, !dbg !11360, !noalias !11307
  %i.au = add i64 %.val15.i.i.i, 1, !dbg !11361   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11362, !noalias !11298
  %i.av = add nuw i64 %.sroa.01.0.i.i.i, 1, !dbg !11363 ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.n, !dbg !11364
  br i1 %i.aw, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Z_12ChunkedArrayNtNtB31_9datatypes9UInt8TypeE13downcast_iter0ENCNvXs_NtNtB2Z_10arithmetic7numericRB3U_NtB56_17ArithmeticChunked19wrapping_add_scalar0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtB23_9primitive14PrimitiveArrayhEB1r_uNCINvMs_NtB2Z_4fromB3U_15from_chunk_iterBN_E0NCINvNvB6p_8for_each4callB1r_NCINvMsj_NtB1w_3vecINtB9l_3VecB1r_E14extend_trustedIBO_BN_B80_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %bb.d, !dbg !11364

bb.n:                                             ; preds = %bb.k, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.q, %bb.c ], [ %i.aq, %bb.k ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %.val15.i.i.i, ptr %.sroa.0.0.copyload.i, align 8, !dbg !11365, !noalias !11297
  resume { ptr, i32 } %eh.lpad-body.i.i.i, !dbg !11366

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB2Z_12ChunkedArrayNtNtB31_9datatypes9UInt8TypeE13downcast_iter0ENCNvXs_NtNtB2Z_10arithmetic7numericRB3U_NtB56_17ArithmeticChunked19wrapping_add_scalar0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtB23_9primitive14PrimitiveArrayhEB1r_uNCINvMs_NtB2Z_4fromB3U_15from_chunk_iterBN_E0NCINvNvB6p_8for_each4callB1r_NCINvMsj_NtB1w_3vecINtB9l_3VecB1r_E14extend_trustedIBO_BN_B80_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.m, %bb.a
  %storemerge.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.a ], [ %i.au, %bb.m ], !dbg !11367
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %storemerge.i.i, ptr %.sroa.0.0.copyload.i, align 8, !dbg !11367, !noalias !11297
  ret void, !dbg !11368
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterINtNtNtBc_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB24_13BytesBufferer10push_owneds_0ENCB21_s0_0ENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyTjjjEjNCB21_s1_0E0EB3L_4foldTjB4z_ENCINvNvB3L_6max_by4foldB51_INvB3J_7compareB4z_jEE0EB28_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11369 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 16               ; 6 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11556
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !11556 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !11556
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !11556 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !11556
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !11556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11513
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load <2 x ptr>, ptr %1, align 8, !dbg !11558
  store <2 x ptr> %i.h, ptr %i.f, align 16, !noalias !11514
  %i.i = trunc nuw i8 %.sroa.6.0.copyload to i1, !dbg !11559
  %.not.i.i.i.i = icmp ugt i64 %.sroa.4.0.copyload, %.sroa.5.0.copyload
  %or.cond.i.i = select i1 %i.i, i1 true, i1 %.not.i.i.i.i, !dbg !11559
  br i1 %or.cond.i.i, label %bb.c, label %bb.b, !dbg !11559

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !11560, !noalias !11519
  %i.j = icmp ult i64 %.sroa.4.0.copyload, %.sroa.5.0.copyload, !dbg !11561
  br i1 %i.j, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !dbg !11562

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  br label %bb.d, !dbg !11562

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !11563, !noalias !11520
  br label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtBc_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB20_13BytesBufferer10push_owneds_0ENCB1X_s0_0ENtNtNtBa_6traits8iterator8Iterator4foldTjTjjjEENCINvB6_8map_foldB4f_B4d_B4d_NCINvNvB3A_10max_by_key3keyB4f_jNCB1X_s1_0E0NCINvNvB3A_6max_by4foldB4d_INvB4T_7compareB4f_jEE0E0EB24_.exit, !dbg !11564

bb.d:                                             ; preds = %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTjTjjjEEE10wrap_mut_2B18_jNCINvNtNtNtBc_4iter8adapters6filter11filter_foldjB18_NCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2u_13BytesBufferer10push_owneds_0NCINvNtB1F_3map8map_foldjB1a_B18_NCB2r_s0_0NCIB3V_B1a_B18_B18_NCINvNvNtNtNtB1H_6traits8iterator8Iterator10max_by_key3keyB1a_jNCB2r_s1_0E0NCINvNvB4Z_6max_by4foldB18_INvB4X_7compareB1a_jEE0E0E0E0E0B2y_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.l = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.i.i.i ], [ %i.m, %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTjTjjjEEE10wrap_mut_2B18_jNCINvNtNtNtBc_4iter8adapters6filter11filter_foldjB18_NCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2u_13BytesBufferer10push_owneds_0NCINvNtB1F_3map8map_foldjB1a_B18_NCB2r_s0_0NCIB3V_B1a_B18_B18_NCINvNvNtNtNtB1H_6traits8iterator8Iterator10max_by_key3keyB1a_jNCB2r_s1_0E0NCINvNvB4Z_6max_by4foldB18_INvB4X_7compareB1a_jEE0E0E0E0E0B2y_.exit.i.i.i.i ] ; 5 uses
  %i.m = add i64 %i.l, 1, !dbg !11565             ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11521), !dbg !11566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11567
  call void @llvm.experimental.noalias.scope.decl(metadata !11522), !dbg !11567
  %.not.i.i.i.i.i.i = icmp eq i64 %i.l, 0, !dbg !11568
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTjjjETjBV_ENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1b_13BytesBufferer10push_owneds0_0NCIB2_BV_B10_B10_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyBV_jNCB18_s1_0E0NCINvNvB2Y_6max_by4foldB10_INvB2W_7compareBV_jEE0E0E0B1f_.exit.i.i.i.i.i.i, !dbg !11569

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !11570, !noalias !11514
  br label %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTjTjjjEEE10wrap_mut_2B18_jNCINvNtNtNtBc_4iter8adapters6filter11filter_foldjB18_NCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2u_13BytesBufferer10push_owneds_0NCINvNtB1F_3map8map_foldjB1a_B18_NCB2r_s0_0NCIB3V_B1a_B18_B18_NCINvNvNtNtNtB1H_6traits8iterator8Iterator10max_by_key3keyB1a_jNCB2r_s1_0E0NCINvNvB4Z_6max_by4foldB18_INvB4X_7compareB1a_jEE0E0E0E0E0B2y_.exit.i.i.i.i, !dbg !11571

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTjjjETjBV_ENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1b_13BytesBufferer10push_owneds0_0NCIB2_BV_B10_B10_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyBV_jNCB18_s1_0E0NCINvNvB2Y_6max_by4foldB10_INvB2W_7compareBV_jEE0E0E0B1f_.exit.i.i.i.i.i.i: ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !11528), !dbg !11572
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !dbg !11573, !alias.scope !11529, !noalias !11514, !nonnull !1359, !noundef !1359
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 16, !dbg !11574
  %i.o = load i64, ptr %i.n, align 8, !dbg !11574, !noalias !11530, !noundef !1359 ; 2 uses
  %i.p = udiv i64 %i.o, %i.l, !dbg !11575         ; 4 uses
  %i.q = urem i64 %i.o, %i.l, !dbg !11576
  call void @llvm.experimental.noalias.scope.decl(metadata !11531), !dbg !11577
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11578, !noalias !11532
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 16, !dbg !11579, !alias.scope !11533, !noalias !11514, !nonnull !1359, !align !1596, !noundef !1359
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 8, !dbg !11580
  %i.s = load i64, ptr %i.r, align 8, !dbg !11580, !range !11536, !noalias !11537, !noundef !1359 ; 3 uses
  %3 = icmp ult i64 %i.p, %i.s, !dbg !11581
  %4 = sub nuw i64 %i.s, %i.p, !dbg !11581
  %i.t = sub nuw i64 %i.p, %i.s, !dbg !11581
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %3, i64 %4, i64 %i.t, !dbg !11581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !11578, !noalias !11514
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, ptr %i.k, align 8, !dbg !11578, !noalias !11532
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !dbg !11578, !noalias !11532
  store i64 %i.p, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !dbg !11578, !noalias !11532
  store i64 %i.q, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i, align 8, !dbg !11578, !noalias !11532
  call void @llvm.experimental.noalias.scope.decl(metadata !11538), !dbg !11578
  call void @llvm.experimental.noalias.scope.decl(metadata !11539), !dbg !11582
  %i.u = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10max_by_key7compareTjjjEjEINtB7_6FnOnceTRTjB1S_EB2d_EE9call_onceCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.k), !dbg !11583, !noalias !11542
  %i.v = icmp sgt i8 %i.u, 0, !dbg !11584
  %..i.i.i.i.i.i.i.i.i.i = select i1 %i.v, ptr %i.c, ptr %i.k, !dbg !11585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %..i.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !dbg !11586, !alias.scope !11543, !noalias !11544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11587, !noalias !11532
  br label %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTjTjjjEEE10wrap_mut_2B18_jNCINvNtNtNtBc_4iter8adapters6filter11filter_foldjB18_NCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2u_13BytesBufferer10push_owneds_0NCINvNtB1F_3map8map_foldjB1a_B18_NCB2r_s0_0NCIB3V_B1a_B18_B18_NCINvNvNtNtNtB1H_6traits8iterator8Iterator10max_by_key3keyB1a_jNCB2r_s1_0E0NCINvNvB4Z_6max_by4foldB18_INvB4X_7compareB1a_jEE0E0E0E0E0B2y_.exit.i.i.i.i, !dbg !11571

_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTjTjjjEEE10wrap_mut_2B18_jNCINvNtNtNtBc_4iter8adapters6filter11filter_foldjB18_NCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2u_13BytesBufferer10push_owneds_0NCINvNtB1F_3map8map_foldjB1a_B18_NCB2r_s0_0NCIB3V_B1a_B18_B18_NCINvNvNtNtNtB1H_6traits8iterator8Iterator10max_by_key3keyB1a_jNCB2r_s1_0E0NCINvNvB4Z_6max_by4foldB18_INvB4X_7compareB1a_jEE0E0E0E0E0B2y_.exit.i.i.i.i: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTjjjETjBV_ENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1b_13BytesBufferer10push_owneds0_0NCIB2_BV_B10_B10_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyBV_jNCB18_s1_0E0NCINvNvB2Y_6max_by4foldB10_INvB2W_7compareBV_jEE0E0E0B1f_.exit.i.i.i.i.i.i, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !11588, !noalias !11514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11589
  %exitcond.not.i.i.i.i = icmp eq i64 %i.m, %.sroa.5.0.copyload, !dbg !11561
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.d, !dbg !11562

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvMs0_NtNtCscgRAwXFJnXP_4core3ops9try_traitINtB8_17NeverShortCircuitTjTjjjEEE10wrap_mut_2B18_jNCINvNtNtNtBc_4iter8adapters6filter11filter_foldjB18_NCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB2u_13BytesBufferer10push_owneds_0NCINvNtB1F_3map8map_foldjB1a_B18_NCB2r_s0_0NCIB3V_B1a_B18_B18_NCINvNvNtNtNtB1H_6traits8iterator8Iterator10max_by_key3keyB1a_jNCB2r_s1_0E0NCINvNvB4Z_6max_by4foldB18_INvB4X_7compareB1a_jEE0E0E0E0E0B2y_.exit.i.i.i.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !11545), !dbg !11590
  call void @llvm.experimental.noalias.scope.decl(metadata !11546), !dbg !11591
  %.not.i.i5.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload, 0, !dbg !11592
  br i1 %.not.i.i5.i.i.i.i, label %bb.f, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTjjjETjBV_ENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1b_13BytesBufferer10push_owneds0_0NCIB2_BV_B10_B10_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyBV_jNCB18_s1_0E0NCINvNvB2Y_6max_by4foldB10_INvB2W_7compareBV_jEE0E0E0B1f_.exit.i.i6.i.i.i.i, !dbg !11593

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !11594, !noalias !11513
  br label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtBc_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB20_13BytesBufferer10push_owneds_0ENCB1X_s0_0ENtNtNtBa_6traits8iterator8Iterator4foldTjTjjjEENCINvB6_8map_foldB4f_B4d_B4d_NCINvNvB3A_10max_by_key3keyB4f_jNCB1X_s1_0E0NCINvNvB3A_6max_by4foldB4d_INvB4T_7compareB4f_jEE0E0EB24_.exit, !dbg !11595

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTjjjETjBV_ENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1b_13BytesBufferer10push_owneds0_0NCIB2_BV_B10_B10_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyBV_jNCB18_s1_0E0NCINvNvB2Y_6max_by4foldB10_INvB2W_7compareBV_jEE0E0E0B1f_.exit.i.i6.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !11547), !dbg !11596
  %.val.i.i.i7.i.i.i.i = load ptr, ptr %i.g, align 8, !dbg !11597, !alias.scope !11548, !noalias !11514, !nonnull !1359, !noundef !1359
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i7.i.i.i.i, i64 16, !dbg !11598
  %i.x = load i64, ptr %i.w, align 8, !dbg !11598, !noalias !11549, !noundef !1359 ; 2 uses
  %i.y = udiv i64 %i.x, %.sroa.5.0.copyload, !dbg !11599 ; 4 uses
  %i.z = urem i64 %i.x, %.sroa.5.0.copyload, !dbg !11600
  call void @llvm.experimental.noalias.scope.decl(metadata !11550), !dbg !11601
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11602, !noalias !11551
  %.val.i.i.i.i8.i.i.i.i = load ptr, ptr %i.f, align 16, !dbg !11603, !alias.scope !11552, !noalias !11514, !nonnull !1359, !align !1596, !noundef !1359
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i8.i.i.i.i, i64 8, !dbg !11604
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !11604, !range !11536, !noalias !11553, !noundef !1359 ; 3 uses
  %5 = icmp ult i64 %i.y, %i.ab, !dbg !11605
  %6 = sub nuw i64 %i.ab, %i.y, !dbg !11605
  %i.ac = sub nuw i64 %i.y, %i.ab, !dbg !11605
  %.sroa.0.0.i.i.i.i.i.i9.i.i.i.i = select i1 %5, i64 %6, i64 %i.ac, !dbg !11605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !11602, !noalias !11514
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !11602 ; 3 uses
  store i64 %.sroa.0.0.i.i.i.i.i.i9.i.i.i.i, ptr %i.ad, align 8, !dbg !11602, !noalias !11551
  %.sroa.4.0..sroa_idx.i.i.i.i10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !11602
  store i64 %.sroa.5.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i.i.i10.i.i.i.i, align 8, !dbg !11602, !noalias !11551
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !11602
  store i64 %i.y, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i11.i.i.i.i, align 8, !dbg !11602, !noalias !11551
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i12.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !11602
  store i64 %i.z, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i12.i.i.i.i, align 8, !dbg !11602, !noalias !11551
  %i.ae = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10max_by_key7compareTjjjEjEINtB7_6FnOnceTRTjB1S_EB2d_EE9call_onceCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad), !dbg !11606, !noalias !11554
  %i.af = icmp sgt i8 %i.ae, 0, !dbg !11607
  %..i.i.i.i.i.i13.i.i.i.i = select i1 %i.af, ptr %i.a, ptr %i.ad, !dbg !11608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %..i.i.i.i.i.i13.i.i.i.i, i64 32, i1 false), !dbg !11609, !noalias !11513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11610, !noalias !11551
  br label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtBc_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB20_13BytesBufferer10push_owneds_0ENCB1X_s0_0ENtNtNtBa_6traits8iterator8Iterator4foldTjTjjjEENCINvB6_8map_foldB4f_B4d_B4d_NCINvNvB3A_10max_by_key3keyB4f_jNCB1X_s1_0E0NCINvNvB3A_6max_by4foldB4d_INvB4T_7compareB4f_jEE0E0EB24_.exit, !dbg !11595

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtBc_3ops5range14RangeInclusivejENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB20_13BytesBufferer10push_owneds_0ENCB1X_s0_0ENtNtNtBa_6traits8iterator8Iterator4foldTjTjjjEENCINvB6_8map_foldB4f_B4d_B4d_NCINvNvB3A_10max_by_key3keyB4f_jNCB1X_s1_0E0NCINvNvB3A_6max_by4foldB4d_INvB4T_7compareB4f_jEE0E0EB24_.exit: ; preds = %bb.c, %bb.f, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTjjjETjBV_ENCNvMNtNtCslpwjCj2YNBy_9polars_io5utils14bytes_buffererNtB1b_13BytesBufferer10push_owneds0_0NCIB2_BV_B10_B10_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyBV_jNCB18_s1_0E0NCINvNvB2Y_6max_by4foldB10_INvB2W_7compareBV_jEE0E0E0B1f_.exit.i.i6.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11611, !noalias !11513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !11612, !noalias !11555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11613
  ret void, !dbg !11614
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtCsgZ49sUHp3tW_5alloc6string6StringENCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0EINvMs4_NtCs2mZqlW55729_12polars_utils7pl_pathNtB3i_9PlRefPath3newReEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB4i_4find5checkB3U_QNCINvMB26_INtB26_8OutPathsNCB26_0E6extendBN_E0E0INtNtNtBc_3ops12control_flow11ControlFlowB3U_EEB2c_(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11615 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11727 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11709), !dbg !11728
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11729, !noalias !11710
  store ptr %1, ptr %i.b, align 8, !dbg !11730, !noalias !11710
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11730
  store ptr %i.c, ptr %i.d, align 8, !dbg !11730, !noalias !11710
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !11730
  store ptr %i.c, ptr %i.e, align 8, !dbg !11730, !noalias !11710
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11711), !dbg !11731
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !11712, !nonnull !1359, !noundef !1359
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !11712
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b, !dbg !11732

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsgZ49sUHp3tW_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0NCIB2_B1C_B2k_uB1F_INvMs4_B2m_B2k_3newB1C_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2k_QNCINvMB3b_INtB3b_8OutPathsNCB3b_0E6extendINtB4_3MapIB6x_INtNtNtBa_5slice4iter4IterB10_EB39_EB4y_EE0E0E0E0B3h_.exit.i.i, %bb.a
  %i.i = phi ptr [ %i.k, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsgZ49sUHp3tW_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0NCIB2_B1C_B2k_uB1F_INvMs4_B2m_B2k_3newB1C_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2k_QNCINvMB3b_INtB3b_8OutPathsNCB3b_0E6extendINtB4_3MapIB6x_INtNtNtBa_5slice4iter4IterB10_EB39_EB4y_EE0E0E0E0B3h_.exit.i.i ], [ %.promoted.i.i, %bb.a ] ; 4 uses
  %i.j = icmp eq ptr %i.i, %i.g, !dbg !11733
  br i1 %i.j, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsgZ49sUHp3tW_5alloc6string6StringENCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldReNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathuINtNtNtBc_3ops12control_flow11ControlFlowB4d_EINvMs4_B4f_B4d_3newB4b_ENCINvNvB37_4find5checkB4d_QNCINvMB22_INtB22_8OutPathsNCB22_0E6extendIBO_BN_B5M_EE0E0E0B52_EB28_.exit, label %bb.c, !dbg !11734

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !11735 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !dbg !11736, !alias.scope !11712
  %i.l = getelementptr i8, ptr %i.i, i64 8, !dbg !11737
  %.val.i.i = load ptr, ptr %i.l, align 8, !dbg !11737, !noalias !11711, !nonnull !1359, !noundef !1359 ; 3 uses
  %i.m = getelementptr i8, ptr %i.i, i64 16, !dbg !11737
  %.val10.i.i = load i64, ptr %i.m, align 8, !dbg !11737, !noalias !11711, !noundef !1359 ; 5 uses
  %i.n = icmp ult i64 %.val10.i.i, 8, !dbg !11738
  br i1 %i.n, label %.split.i.i.i.i, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i, !dbg !11738

.split.i.i.i.i:                                   ; preds = %bb.c
  %i.o = icmp eq i64 %.val10.i.i, 7, !dbg !11739
  br i1 %i.o, label %_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0B7_.exit.i.i.i, label %bb.d, !dbg !11740, !prof !1499

_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 7, !dbg !11741
  %i.q = load i8, ptr %i.p, align 1, !dbg !11741, !alias.scope !11717, !noalias !11718, !noundef !1359
  %i.r = icmp sgt i8 %i.q, -65, !dbg !11742
  br i1 %i.r, label %_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0B7_.exit.i.i.i, label %bb.d, !dbg !11740, !prof !1499

bb.d:                                             ; preds = %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i, %.split.i.i.i.i
  call void @_RNvNtCscgRAwXFJnXP_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val10.i.i, i64 noundef 7, i64 noundef %.val10.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #40, !dbg !11743, !noalias !11718
  unreachable, !dbg !11743

_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0B7_.exit.i.i.i: ; preds = %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i, %.split.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 7, !dbg !11744
  %i.t = add i64 %.val10.i.i, -7, !dbg !11744
  %i.u = call { ptr, i64 } @_RINvMs4_NtCs2mZqlW55729_12polars_utils7pl_pathNtB6_9PlRefPath3newReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t), !dbg !11745, !noalias !11720 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0, !dbg !11746 ; 4 uses
  %i.w = extractvalue { ptr, i64 } %i.u, 1, !dbg !11746 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11721
  store ptr %i.v, ptr %i.a, align 8, !noalias !11722
  store i64 %i.w, ptr %i.h, align 8, !noalias !11722
  %i.x = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCINvMNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0INtBU_8OutPathsNCBU_0E6extendINtNtNtNtBb_4iter8adapters3map3MapIB2o_INtNtNtBb_5slice4iter4IterNtNtCsgZ49sUHp3tW_5alloc6string6StringENCBU_s0_0EINvMs4_NtCs2mZqlW55729_12polars_utils7pl_pathNtB4k_9PlRefPath3newReEEE0INtB7_5FnMutTRB4W_EE8call_mutB10_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.g unwind label %bb.e, !dbg !11747, !noalias !11711

bb.e:                                             ; preds = %_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0B7_.exit.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = atomicrmw add ptr %i.v, i64 -1 release, align 8, !dbg !11748, !noalias !11725
  %i.aa = icmp eq i64 %i.z, 1, !dbg !11749
  br i1 %i.aa, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i, !dbg !11749

bb.f:                                             ; preds = %bb.e
  fence acquire, !dbg !11750
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #44
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i unwind label %bb.j, !dbg !11751, !noalias !11711

bb.g:                                             ; preds = %_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0B7_.exit.i.i.i
  br i1 %i.x, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsgZ49sUHp3tW_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0NCIB2_B1C_B2k_uB1F_INvMs4_B2m_B2k_3newB1C_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2k_QNCINvMB3b_INtB3b_8OutPathsNCB3b_0E6extendINtB4_3MapIB6x_INtNtNtBa_5slice4iter4IterB10_EB39_EB4y_EE0E0E0E0B3h_.exit.i.i, label %bb.h, !dbg !11747

bb.h:                                             ; preds = %bb.g
  %i.ab = atomicrmw add ptr %i.v, i64 -1 release, align 8, !dbg !11752, !noalias !11726
  %i.ac = icmp eq i64 %i.ab, 1, !dbg !11753
  br i1 %i.ac, label %bb.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsgZ49sUHp3tW_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0NCIB2_B1C_B2k_uB1F_INvMs4_B2m_B2k_3newB1C_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2k_QNCINvMB3b_INtB3b_8OutPathsNCB3b_0E6extendINtB4_3MapIB6x_INtNtNtBa_5slice4iter4IterB10_EB39_EB4y_EE0E0E0E0B3h_.exit.i.i, !dbg !11753

bb.i:                                             ; preds = %bb.h
  fence acquire, !dbg !11754
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #44, !dbg !11755, !noalias !11711
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsgZ49sUHp3tW_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0NCIB2_B1C_B2k_uB1F_INvMs4_B2m_B2k_3newB1C_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2k_QNCINvMB3b_INtB3b_8OutPathsNCB3b_0E6extendINtB4_3MapIB6x_INtNtNtBa_5slice4iter4IterB10_EB39_EB4y_EE0E0E0E0B3h_.exit.i.i, !dbg !11755

bb.j:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !11756, !noalias !11711
  unreachable, !dbg !11756

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECslpwjCj2YNBy_9polars_io.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.y, !dbg !11756

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsgZ49sUHp3tW_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0NCIB2_B1C_B2k_uB1F_INvMs4_B2m_B2k_3newB1C_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2k_QNCINvMB3b_INtB3b_8OutPathsNCB3b_0E6extendINtB4_3MapIB6x_INtNtNtBa_5slice4iter4IterB10_EB39_EB4y_EE0E0E0E0B3h_.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i.i = phi ptr [ null, %bb.i ], [ null, %bb.h ], [ %i.v, %bb.g ], !dbg !11757 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11758, !noalias !11721
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null, !dbg !11759
  br i1 %.not.i.i.i, label %bb.b, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsgZ49sUHp3tW_5alloc6string6StringENCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldReNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathuINtNtNtBc_3ops12control_flow11ControlFlowB4d_EINvMs4_B4f_B4d_3newB4b_ENCINvNvB37_4find5checkB4d_QNCINvMB22_INtB22_8OutPathsNCB22_0E6extendIBO_BN_B5M_EE0E0E0B52_EB28_.exit, !dbg !11737

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsgZ49sUHp3tW_5alloc6string6StringENCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldReNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathuINtNtNtBc_3ops12control_flow11ControlFlowB4d_EINvMs4_B4f_B4d_3newB4b_ENCINvNvB37_4find5checkB4d_QNCINvMB22_INtB22_8OutPathsNCB22_0E6extendIBO_BN_B5M_EE0E0E0B52_EB28_.exit: ; preds = %bb.b, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsgZ49sUHp3tW_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0NCIB2_B1C_B2k_uB1F_INvMs4_B2m_B2k_3newB1C_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2k_QNCINvMB3b_INtB3b_8OutPathsNCB3b_0E6extendINtB4_3MapIB6x_INtNtNtBa_5slice4iter4IterB10_EB39_EB4y_EE0E0E0E0B3h_.exit.i.i
  %.sroa.3.0.i.i = phi i64 [ undef, %bb.b ], [ %i.w, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsgZ49sUHp3tW_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0NCIB2_B1C_B2k_uB1F_INvMs4_B2m_B2k_3newB1C_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2k_QNCINvMB3b_INtB3b_8OutPathsNCB3b_0E6extendINtB4_3MapIB6x_INtNtNtBa_5slice4iter4IterB10_EB39_EB4y_EE0E0E0E0B3h_.exit.i.i ], !dbg !11760
  %.sroa.0.0.i.i = phi ptr [ null, %bb.b ], [ %.sroa.0.0.i.i.i.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsgZ49sUHp3tW_5alloc6string6StringReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathENCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s0_0NCIB2_B1C_B2k_uB1F_INvMs4_B2m_B2k_3newB1C_ENCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2k_QNCINvMB3b_INtB3b_8OutPathsNCB3b_0E6extendINtB4_3MapIB6x_INtNtNtBa_5slice4iter4IterB10_EB39_EB4y_EE0E0E0E0B3h_.exit.i.i ], !dbg !11760
  %i.ae = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0, !dbg !11761
  %i.af = insertvalue { ptr, i64 } %i.ae, i64 %.sroa.3.0.i.i, 1, !dbg !11761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11762, !noalias !11710
  ret { ptr, i64 } %i.af, !dbg !11763
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvXNtB2E_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB2y_uENtB3A_9SchemaExt11iter_fields0ENCNvNtCslpwjCj2YNBy_9polars_io6shared23schema_to_arrow_checked0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB6c_8try_folduNCINvMs0_NtNtBc_3ops9try_traitINtB9j_17NeverShortCircuituE10wrap_mut_2uTB1J_NtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENCINvB6_8map_foldBaj_Baj_uNCINvXs7_B3Q_IB3O_Bao_INtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapB1J_B1J_EEINtNtB6g_7collect12FromIteratorBaj_E9from_iterB73_E0NCINvNvB6c_8for_each4callBaj_NCINvXsb_B16_INtB16_8IndexMapB1J_Bao_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtBdh_6ExtendBaj_E6extendIBO_B73_BbJ_EE0E0E0E0B9E_E0INtNtB9l_12control_flow11ControlFlowB9E_EEB5g_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(72) %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !11764 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4.i.i.i.i = alloca [80 x i8], align 8    ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [80 x i8], align 16               ; 11 uses
  %.sroa.6.i.i.i.i = alloca [56 x i8], align 8    ; 5 uses
  %.sroa.8.i.i.i.i = alloca [7 x i8], align 1     ; 6 uses
  %.sroa.0.sroa.7.i.i.i.i = alloca [80 x i8], align 8 ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 16               ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [80 x i8], align 16               ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11945), !dbg !11991
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11946), !dbg !11992
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !11947 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !dbg !11993, !alias.scope !11947, !nonnull !1359, !noundef !1359 ; 2 uses
  %.not.i.i = icmp eq ptr %.promoted.i.i, %i.u, !dbg !11994
  br i1 %.not.i.i, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENCNvXNtB2A_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB2u_uENtB3w_9SchemaExt11iter_fields0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB6_12map_try_foldNtNtB2y_5field5FieldINtNtBc_6result6ResultTB1F_NtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowINtNtB8E_9try_trait17NeverShortCircuituEENCNvNtCslpwjCj2YNBy_9polars_io6shared23schema_to_arrow_checked0NCINvXB8_INtB8_12GenericShuntIBO_BN_B9T_EIB6v_NtNtBc_7convert10InfallibleB7Q_EEB56_8try_folduNCINvMs0_B9h_B9e_10wrap_mut_2uB6Q_NCINvB6_8map_foldB6Q_B6Q_uNCINvXs7_B3M_IB3K_B6V_INtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapB1F_B1F_EEINtNtB5a_7collect12FromIteratorB6Q_E9from_iterBb3_E0NCINvNvB56_8for_each4callB6Q_NCINvXsb_B12_INtB1, label %.lr.ph.i.i, !dbg !11995

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 71 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 55
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 16
  %.sroa.7.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.sroa.817.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 65
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.sroa.7.32.sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.7.i.i.i.i, i64 24
  %.sroa.0.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.sroa.7.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.7.i.i.i.i, i64 16 ; 2 uses
  %.sroa.7.24..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.89.24..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 65
  %.sroa.0.sroa.7.0..sroa_idx15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.24..sroa_idx7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.89.24..sroa_idx10.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.val.i.i.i.i.i = load ptr, ptr %1, align 8, !nonnull !1359, !align !1596 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 56
  br label %bb.b, !dbg !11995

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtB1V_5field5FielduINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3e_9try_trait17NeverShortCircuituEENCNvXNtB1X_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB1R_uENtB4y_9SchemaExt11iter_fields0NCIB2_B2O_INtNtBa_6result6ResultTB11_NtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuB39_NCNvNtCslpwjCj2YNBy_9polars_io6shared23schema_to_arrow_checked0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB9V_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB11_B1R_EB4t_EB8q_EIB6i_NtNtBa_7convert10InfallibleB7D_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvMs0_B3R_B3O_10wrap_mut_2uB6D_NCINvB4_8map_foldB6D_B6D_uNCINvXs7_B4O_IB4M_B6I_INtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapB11_B11_EEINtNtBbQ_7collect12FromIteratorB6D_E9from_iterB9A_E0NCINvNvBbM_8for_each4callB6D_NCINvXsb_Bae_, %.lr.ph.i.i
  %i.af = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ag, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldTRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeENtNtB1V_5field5FielduINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3e_9try_trait17NeverShortCircuituEENCNvXNtB1X_6schemaINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaB1R_uENtB4y_9SchemaExt11iter_fields0NCIB2_B2O_INtNtBa_6result6ResultTB11_NtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuB39_NCNvNtCslpwjCj2YNBy_9polars_io6shared23schema_to_arrow_checked0NCINvXB6_INtB6_12GenericShuntINtB4_3MapIB9V_INtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB11_B1R_EB4t_EB8q_EIB6i_NtNtBa_7convert10InfallibleB7D_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvMs0_B3R_B3O_10wrap_mut_2uB6D_NCINvB4_8map_foldB6D_B6D_uNCINvXs7_B4O_IB4M_B6I_INtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map8BTreeMapB11_B11_EEINtNtBbQ_7collect12FromIteratorB6D_E9from_iterB9A_E0NCINvNvBbM_8for_each4callB6D_NCINvXsb_Bae_ ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80, !dbg !11996 ; 3 uses
  store ptr %i.ag, ptr %0, align 8, !dbg !11997, !alias.scope !11947
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 48, !dbg !11998 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayKj1_ENCINvNtB1v_4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreIBY_INtNtBc_6option6OptionPhEKB2q_EBX_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4v_8for_each4callOB1r_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5M_3VecB5y_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io:bb.a

bb.b:                                             ; preds = %.split.us.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow3ffi5arrayNtNtB7_9generated10ArrowArrayNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %.body.i unwind label %bb.c, !dbg !18241, !noalias !18213

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !18242, !noalias !18213
  unreachable, !dbg !18242

.body.i:                                          ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.sroa.9.16.copyload.i, ptr %.sroa.6.16.copyload.i, align 8, !dbg !18243, !noalias !18217
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayEj1_NtB4_11PartialDrop12partial_dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef 1, i64 noundef 1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayKj1_EECslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.d, !dbg !18244, !noalias !18210

bb.d:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !18245, !noalias !18210
  unreachable, !dbg !18245

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayKj1_EECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.o, !dbg !18245

_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldBT_OBT_uNCINvNtBX_4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreIBF_INtNtBa_6option6OptionPhEKB1S_EBE_Es_0NCINvNvB1W_8for_each4callB3j_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5Z_3VecB3j_E14extend_trustedINtB2M_3MapBE_B3o_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.a, %.loopexit.split.us.i
  %i.r = phi i64 [ %i.d, %bb.a ], [ 1, %.loopexit.split.us.i ], !dbg !18246 ; 2 uses
  %.val3.i.i = phi i64 [ %.sroa.9.16.copyload.i, %bb.a ], [ %i.n, %.loopexit.split.us.i ], !dbg !18247
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !dbg !18248, !noalias !18217
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayEj1_NtB4_11PartialDrop12partial_dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef %i.r, i64 noundef %i.r), !dbg !18249, !noalias !18210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18250
  ret void, !dbg !18251
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayKj1_ENCINvNtB1v_4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreIBY_INtNtBc_6option6OptionPhEKj2_EBX_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4u_8for_each4callOB1r_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5L_3VecB5x_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18252 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 96, i1 false), !dbg !18364
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18355), !dbg !18365
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18356), !dbg !18365
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !18366 ; 2 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !dbg !18367, !alias.scope !18356 ; 4 uses
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18367
  %.sroa.9.16.copyload.i = load i64, ptr %.sroa.9.16..sroa_idx.i, align 8, !dbg !18367, !alias.scope !18356 ; 4 uses
  %.sroa.11.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18367
  %.sroa.11.16.copyload.i = load ptr, ptr %.sroa.11.16..sroa_idx.i, align 8, !dbg !18367, !alias.scope !18356
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18357), !dbg !18368
  %i.d = load i64, ptr %i.b, align 8, !dbg !18369, !alias.scope !18358, !noundef !1359 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !18370
  %i.f = load i64, ptr %i.e, align 8, !dbg !18370, !alias.scope !18358, !noundef !1359 ; 3 uses
  %i.g = icmp ule i64 %i.d, %i.f, !dbg !18369
  tail call void @llvm.assume(i1 %i.g), !dbg !18371
  %.not6.i.i = icmp eq i64 %i.d, %i.f, !dbg !18372
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldBT_OBT_uNCINvNtBX_4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreIBF_INtNtBa_6option6OptionPhEKj2_EBE_Es_0NCINvNvB1W_8for_each4callB3j_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5Y_3VecB3j_E14extend_trustedINtB2M_3MapBE_B3o_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %.lr.ph.i.preheader.i, !dbg !18372

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 8, !alias.scope !18358
  %.not.i.i = icmp eq i64 %i.f, 1
  %i.h = icmp eq i64 %i.d, 0, !dbg !18373
  tail call void @llvm.assume(i1 %i.h), !dbg !18374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18375, !noalias !18359
  br i1 %.not.i.i, label %.lr.ph.i.us.i, label %.lr.ph.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.preheader.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18375
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !dbg !18375
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !dbg !18376, !noalias !18360
  %i.j = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 80, i64 noundef range(i64 8, 129) 8) #37, !dbg !18377, !noalias !18360 ; 3 uses
  %i.k = icmp eq ptr %i.j, null, !dbg !18378
  br i1 %i.k, label %.split.us.i, label %.loopexit.split.us.i, !dbg !18379, !prof !1432

.loopexit.split.us.i:                             ; preds = %.lr.ph.i.us.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18380
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false), !dbg !18381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18382, !noalias !18359
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.11.16.copyload.i, i64 %.sroa.9.16.copyload.i, !dbg !18383
  store ptr %i.j, ptr %i.m, align 8, !dbg !18384, !noalias !18361
  %i.n = add i64 %.sroa.9.16.copyload.i, 1, !dbg !18385
  br label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldBT_OBT_uNCINvNtBX_4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreIBF_INtNtBa_6option6OptionPhEKj2_EBE_Es_0NCINvNvB1W_8for_each4callB3j_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5Y_3VecB3j_E14extend_trustedINtB2M_3MapBE_B3o_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader.i
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !dbg !18376, !noalias !18360
  unreachable

.split.us.i:                                      ; preds = %.lr.ph.i.us.i
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #41
          to label %.noexc.i.i.i.i.i.i unwind label %bb.b, !dbg !18386, !noalias !18362

.noexc.i.i.i.i.i.i:                               ; preds = %.split.us.i
  unreachable, !dbg !18386

bb.b:                                             ; preds = %.split.us.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow3ffi5arrayNtNtB7_9generated10ArrowArrayNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %.body.i unwind label %bb.c, !dbg !18387, !noalias !18359

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !18388, !noalias !18359
  unreachable, !dbg !18388

.body.i:                                          ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.sroa.9.16.copyload.i, ptr %.sroa.6.16.copyload.i, align 8, !dbg !18389, !noalias !18363
  invoke void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayEj1_NtB4_11PartialDrop12partial_dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef 1, i64 noundef 1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayKj1_EECslpwjCj2YNBy_9polars_io.exit.i unwind label %bb.d, !dbg !18390, !noalias !18356

bb.d:                                             ; preds = %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #43, !dbg !18391, !noalias !18356
  unreachable, !dbg !18391

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtB4_5array4iter8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayKj1_EECslpwjCj2YNBy_9polars_io.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %i.o, !dbg !18391

_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB22_8adapters3map8map_foldBT_OBT_uNCINvNtBX_4mmap12create_arrayNtNtCs2mZqlW55729_12polars_utils4mmap13MMapSemaphoreIBF_INtNtBa_6option6OptionPhEKj2_EBE_Es_0NCINvNvB1W_8for_each4callB3j_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5Y_3VecB3j_E14extend_trustedINtB2M_3MapBE_B3o_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.a, %.loopexit.split.us.i
  %i.r = phi i64 [ %i.d, %bb.a ], [ 1, %.loopexit.split.us.i ], !dbg !18392 ; 2 uses
  %.val3.i.i = phi i64 [ %.sroa.9.16.copyload.i, %bb.a ], [ %i.n, %.loopexit.split.us.i ], !dbg !18393
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !dbg !18394, !noalias !18363
  call void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCs8774dFTUdNv_12polars_arrow3ffi9generated10ArrowArrayEj1_NtB4_11PartialDrop12partial_dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef %i.r, i64 noundef %i.r), !dbg !18395, !noalias !18356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18396
  ret void, !dbg !18397
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterjKj2_ENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyjjNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_range0E0EB1E_4foldTjjENCINvNvB1E_6min_by4foldB3R_INvB1C_7comparejjEE0EB2C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18398 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18489
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !dbg !18489
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18472), !dbg !18490
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !18491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18492, !noalias !18473
  store ptr %i.f, ptr %i.c, align 8, !dbg !18492, !noalias !18473
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !18492 ; 2 uses
  store i64 2, ptr %i.g, align 8, !dbg !18492, !noalias !18473
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !18492 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !18492
  %i.j = load <2 x ptr>, ptr %0, align 8, !dbg !18493
  store <2 x ptr> %i.j, ptr %i.h, align 8, !dbg !18492, !noalias !18473
  call void @llvm.experimental.noalias.scope.decl(metadata !18474), !dbg !18494
  call void @llvm.experimental.noalias.scope.decl(metadata !18475), !dbg !18494
  %i.k = load i64, ptr %i.d, align 8, !dbg !18495, !alias.scope !18476, !noundef !1359 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !18496
  %i.m = load i64, ptr %i.l, align 8, !dbg !18496, !alias.scope !18476, !noundef !1359 ; 3 uses
  %i.n = icmp ule i64 %i.k, %i.m, !dbg !18495
  call void @llvm.assume(i1 %i.n), !dbg !18497
  %.not15.i.i = icmp eq i64 %i.k, %i.m, !dbg !18498
  br i1 %.not15.i.i, label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterjKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4foldTjjENCINvNtNtB15_8adapters3map8map_foldjB1J_B1J_NCINvNvBZ_10min_by_key3keyjjNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_range0E0NCINvNvBZ_6min_by4foldB1J_INvB2A_7comparejjEE0E0EB35_.exit, label %.lr.ph.i.i, !dbg !18498

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b, !dbg !18498

bb.b:                                             ; preds = %_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitjEE8try_foldTjjENCINvMs0_NtNtBe_3ops9try_traitINtB2m_17NeverShortCircuitB29_E10wrap_mut_2B29_jNCINvNtNtNtBe_4iter8adapters3map8map_foldjB29_B29_NCINvNvNtNtNtB3C_6traits8iterator8Iterator10min_by_key3keyjjNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_range0E0NCINvNvB4o_6min_by4foldB29_INvB4m_7comparejjEE0E0E0B2H_E0B5n_.exit.i.i, %.lr.ph.i.i
  %.sroa.0.017.i.i = phi i64 [ %1, %.lr.ph.i.i ], [ %.sroa.0.0.i.i6.i.i.i.i.i, %_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitjEE8try_foldTjjENCINvMs0_NtNtBe_3ops9try_traitINtB2m_17NeverShortCircuitB29_E10wrap_mut_2B29_jNCINvNtNtNtBe_4iter8adapters3map8map_foldjB29_B29_NCINvNvNtNtNtB3C_6traits8iterator8Iterator10min_by_key3keyjjNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_range0E0NCINvNvB4o_6min_by4foldB29_INvB4m_7comparejjEE0E0E0B2H_E0B5n_.exit.i.i ] ; 2 uses
  %.sroa.4.016.i.i = phi i64 [ %2, %.lr.ph.i.i ], [ %.sroa.3.0.i.i.i.i.i.i.i, %_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitjEE8try_foldTjjENCINvMs0_NtNtBe_3ops9try_traitINtB2m_17NeverShortCircuitB29_E10wrap_mut_2B29_jNCINvNtNtNtBe_4iter8adapters3map8map_foldjB29_B29_NCINvNvNtNtNtB3C_6traits8iterator8Iterator10min_by_key3keyjjNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_range0E0NCINvNvB4o_6min_by4foldB29_INvB4m_7comparejjEE0E0E0B2H_E0B5n_.exit.i.i ] ; 2 uses
  %i.r = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.s, %_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitjEE8try_foldTjjENCINvMs0_NtNtBe_3ops9try_traitINtB2m_17NeverShortCircuitB29_E10wrap_mut_2B29_jNCINvNtNtNtBe_4iter8adapters3map8map_foldjB29_B29_NCINvNvNtNtNtB3C_6traits8iterator8Iterator10min_by_key3keyjjNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_range0E0NCINvNvB4o_6min_by4foldB29_INvB4m_7comparejjEE0E0E0B2H_E0B5n_.exit.i.i ] ; 3 uses
  %i.s = add nuw i64 %i.r, 1, !dbg !18499         ; 3 uses
  store i64 %i.s, ptr %i.d, align 8, !dbg !18500, !alias.scope !18476
  call void @llvm.experimental.noalias.scope.decl(metadata !18477), !dbg !18501
  %i.t = load ptr, ptr %i.c, align 8, !dbg !18502, !alias.scope !18478, !noalias !18473, !nonnull !1359, !align !1596, !noundef !1359
  %i.u = load i64, ptr %i.g, align 8, !dbg !18502, !alias.scope !18478, !noalias !18473, !noundef !1359
  %i.v = icmp ult i64 %i.r, %i.u, !dbg !18503
  call void @llvm.assume(i1 %i.v), !dbg !18504
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r, !dbg !18505
  %i.x = load i64, ptr %i.w, align 8, !dbg !18506, !noalias !18479, !noundef !1359 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18480), !dbg !18507
  call void @llvm.experimental.noalias.scope.decl(metadata !18481), !dbg !18508
  %i.y = icmp eq i64 %i.x, 0, !dbg !18509
  br i1 %i.y, label %.noexc.i, label %_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitjEE8try_foldTjjENCINvMs0_NtNtBe_3ops9try_traitINtB2m_17NeverShortCircuitB29_E10wrap_mut_2B29_jNCINvNtNtNtBe_4iter8adapters3map8map_foldjB29_B29_NCINvNvNtNtNtB3C_6traits8iterator8Iterator10min_by_key3keyjjNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_range0E0NCINvNvB4o_6min_by4foldB29_INvB4m_7comparejjEE0E0E0B2H_E0B5n_.exit.i.i, !dbg !18509

.noexc.i:                                         ; preds = %bb.b
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #40, !dbg !18509
  unreachable, !dbg !18509

_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitjEE8try_foldTjjENCINvMs0_NtNtBe_3ops9try_traitINtB2m_17NeverShortCircuitB29_E10wrap_mut_2B29_jNCINvNtNtNtBe_4iter8adapters3map8map_foldjB29_B29_NCINvNvNtNtNtB3C_6traits8iterator8Iterator10min_by_key3keyjjNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_range0E0NCINvNvB4o_6min_by4foldB29_INvB4m_7comparejjEE0E0E0B2H_E0B5n_.exit.i.i: ; preds = %bb.b
  %.val5.i.i.i.i.i = load ptr, ptr %i.i, align 8, !dbg !18510, !alias.scope !18485, !noalias !18473, !nonnull !1359, !noundef !1359
  %.val.i.i.i.i.i = load ptr, ptr %i.h, align 8, !dbg !18510, !alias.scope !18485, !noalias !18473, !nonnull !1359, !align !1596, !noundef !1359 ; 2 uses
  %i.z = load i64, ptr %.val.i.i.i.i.i, align 8, !dbg !18511, !noalias !18486, !noundef !1359
  %i.aa = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8, !dbg !18512
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !18512, !noalias !18486, !noundef !1359
  %.sroa.01.0.i.i.i.i.i.i.i = call i64 @llvm.usub.sat.i64(i64 %i.ab, i64 %i.z), !dbg !18513
  %i.ac = udiv i64 %.sroa.01.0.i.i.i.i.i.i.i, %i.x, !dbg !18509 ; 3 uses
  %i.ad = load i64, ptr %.val5.i.i.i.i.i, align 8, !dbg !18514, !noalias !18486, !noundef !1359 ; 3 uses
  %3 = icmp ult i64 %i.ac, %i.ad, !dbg !18515
  %4 = sub nuw i64 %i.ad, %i.ac, !dbg !18515
  %i.ae = sub nuw i64 %i.ac, %i.ad, !dbg !18515
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %3, i64 %4, i64 %i.ae, !dbg !18515 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18487
  store i64 %.sroa.0.017.i.i, ptr %i.b, align 8, !noalias !18488
  store i64 %.sroa.4.016.i.i, ptr %i.p, align 8, !noalias !18488
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !18488
  store i64 %i.x, ptr %i.q, align 8, !noalias !18488
  %i.af = call noundef i8 @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator10min_by_key7comparejjEINtB7_6FnOnceTRTjjEB29_EE9call_onceCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !18516
  %i.ag = icmp slt i8 %i.af, 1, !dbg !18517       ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i.i = select i1 %i.ag, i64 %.sroa.4.016.i.i, i64 %i.x, !dbg !18516 ; 2 uses
  %.sroa.0.0.i.i6.i.i.i.i.i = select i1 %i.ag, i64 %.sroa.0.017.i.i, i64 %.sroa.0.0.i.i.i.i.i.i.i, !dbg !18516 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18518, !noalias !18487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18518, !noalias !18487
  %.not.i.i = icmp eq i64 %i.s, %i.m, !dbg !18498
  br i1 %.not.i.i, label %_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterjKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4foldTjjENCINvNtNtB15_8adapters3map8map_foldjB1J_B1J_NCINvNvBZ_10min_by_key3keyjjNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_range0E0NCINvNvBZ_6min_by4foldB1J_INvB2A_7comparejjEE0E0EB35_.exit, label %bb.b, !dbg !18498

_RINvXs2_NtNtCscgRAwXFJnXP_4core5array4iterINtB6_8IntoIterjKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4foldTjjENCINvNtNtB15_8adapters3map8map_foldjB1J_B1J_NCINvNvBZ_10min_by_key3keyjjNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_range0E0NCINvNvBZ_6min_by4foldB1J_INvB2A_7comparejjEE0E0EB35_.exit: ; preds = %_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitjEE8try_foldTjjENCINvMs0_NtNtBe_3ops9try_traitINtB2m_17NeverShortCircuitB29_E10wrap_mut_2B29_jNCINvNtNtNtBe_4iter8adapters3map8map_foldjB29_B29_NCINvNvNtNtNtB3C_6traits8iterator8Iterator10min_by_key3keyjjNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_range0E0NCINvNvB4o_6min_by4foldB29_INvB4m_7comparejjEE0E0E0B2H_E0B5n_.exit.i.i, %bb.a
  %.sroa.4.0.lcssa.i.i = phi i64 [ %2, %bb.a ], [ %.sroa.3.0.i.i.i.i.i.i.i, %_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitjEE8try_foldTjjENCINvMs0_NtNtBe_3ops9try_traitINtB2m_17NeverShortCircuitB29_E10wrap_mut_2B29_jNCINvNtNtNtBe_4iter8adapters3map8map_foldjB29_B29_NCINvNvNtNtNtB3C_6traits8iterator8Iterator10min_by_key3keyjjNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_range0E0NCINvNvB4o_6min_by4foldB29_INvB4m_7comparejjEE0E0E0B2H_E0B5n_.exit.i.i ]
  %.sroa.0.0.lcssa.i.i = phi i64 [ %1, %bb.a ], [ %.sroa.0.0.i.i6.i.i.i.i.i, %_RNCINvMs6_NtNtNtCscgRAwXFJnXP_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitjEE8try_foldTjjENCINvMs0_NtNtBe_3ops9try_traitINtB2m_17NeverShortCircuitB29_E10wrap_mut_2B29_jNCINvNtNtNtBe_4iter8adapters3map8map_foldjB29_B29_NCINvNvNtNtNtB3C_6traits8iterator8Iterator10min_by_key3keyjjNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_range0E0NCINvNvB4o_6min_by4foldB29_INvB4m_7comparejjEE0E0E0B2H_E0B5n_.exit.i.i ]
  %i.ah = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.lcssa.i.i, 0, !dbg !18519
  %i.ai = insertvalue { i64, i64 } %i.ah, i64 %.sroa.4.0.lcssa.i.i, 1, !dbg !18519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18520, !noalias !18473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18521
  ret { i64, i64 } %i.ai, !dbg !18522
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENvMs0_B1q_B1n_7key_refENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB44_8for_each4callRB1U_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5l_3VecB57_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !18523 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !18589 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !18589
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18589 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !18589
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18589 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !18590
  %i.a = icmp eq ptr %0, %1, !dbg !18591
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB3g_8adapters3map8map_foldRBQ_RB1n_uNvMs0_BT_BQ_7key_refNCINvNvB3a_8for_each4callB4y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB4y_E14extend_trustedINtB40_3MapBF_B4E_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %bb.b, !dbg !18592

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !18593
  %i.c = ptrtoint ptr %0 to i64, !dbg !18593
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !18593      ; 2 uses
  %i.e = udiv exact i64 %i.d, 80, !dbg !18593     ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 320, !dbg !18594
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !18594

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 288230376151711740       ; 4 uses
  %i.f = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.g = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !18594

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !18595 ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ], !dbg !18595 ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2), !dbg !18595
  %wide.gep = getelementptr inbounds nuw [80 x i8], ptr %0, <2 x i64> %vec.ind, !dbg !18596
  %wide.gep2 = getelementptr inbounds nuw [80 x i8], ptr %0, <2 x i64> %step.add, !dbg !18596
  %wide.gep3 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep, i64 48, !dbg !18597
  %wide.gep4 = getelementptr inbounds nuw i8, <2 x ptr> %wide.gep2, i64 48, !dbg !18597
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %index, !dbg !18598 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !18599
  store <2 x ptr> %wide.gep3, ptr %i.h, align 8, !dbg !18599, !noalias !18582
  store <2 x ptr> %wide.gep4, ptr %i.i, align 8, !dbg !18599, !noalias !18582
  %index.next = add nuw i64 %index, 4, !dbg !18595 ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4), !dbg !18595
  %i.j = icmp eq i64 %index.next, %n.vec, !dbg !18600
  br i1 %i.j, label %middle.block, label %vector.body, !dbg !18600, !llvm.loop !18572

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !18600
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB3g_8adapters3map8map_foldRBQ_RB1n_uNvMs0_BT_BQ_7key_refNCINvNvB3a_8for_each4callB4y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB4y_E14extend_trustedINtB40_3MapBF_B4E_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %scalar.ph.preheader, !dbg !18600

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.f, %middle.block ]
  %.sroa.01.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  br label %scalar.ph, !dbg !18600

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.k = phi i64 [ %i.o, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !18596 ; 2 uses
  %.sroa.01.0.i = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !18595 ; 2 uses
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !18596
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48, !dbg !18597
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.k, !dbg !18598
  store ptr %i.m, ptr %i.n, align 8, !dbg !18599, !noalias !18582
  %i.o = add i64 %i.k, 1, !dbg !18601             ; 2 uses
  %i.p = add nuw i64 %.sroa.01.0.i, 1, !dbg !18602 ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.e, !dbg !18600
  br i1 %i.q, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB3g_8adapters3map8map_foldRBQ_RB1n_uNvMs0_BT_BQ_7key_refNCINvNvB3a_8for_each4callB4y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB4y_E14extend_trustedINtB40_3MapBF_B4E_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %scalar.ph, !dbg !18600, !llvm.loop !18577

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB3g_8adapters3map8map_foldRBQ_RB1n_uNvMs0_BT_BQ_7key_refNCINvNvB3a_8for_each4callB4y_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecB4y_E14extend_trustedINtB40_3MapBF_B4E_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.f, %middle.block ], [ %i.o, %scalar.ph ], !dbg !18603
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18603, !noalias !18588
  ret void, !dbg !18604
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCs8RKTHBS4OBx_12object_store4util15coalesce_rangesNCNCNvYNtNtB1Z_3aws8AmazonS3NtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorNCNvXB1Z_B2U_NtB1Z_14ObjectStoreExt9get_range0E00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4M_8for_each4callNtNtCshK0ivY6saku_5bytes5bytes5BytesNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6y_3VecB5P_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18605 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !18741, !nonnull !1359, !noundef !1359 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18741
  %i.d = load ptr, ptr %i.c, align 8, !dbg !18741, !nonnull !1359, !noundef !1359 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !18742 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !18742
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !18742 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !18742
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !18742
  %i.e = icmp eq ptr %i.b, %i.d, !dbg !18743
  br i1 %i.e, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCshK0ivY6saku_5bytes5bytes5BytesuNCNCINvNtCs8RKTHBS4OBx_12object_store4util15coalesce_rangesNCNCNvYNtNtB3r_3aws8AmazonS3NtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorNCNvXB3r_B4m_NtB3r_14ObjectStoreExt9get_range0E00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6P_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %bb.b, !dbg !18744

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18745
  %i.g = load ptr, ptr %i.f, align 8, !dbg !18745, !nonnull !1359, !align !1596, !noundef !1359 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18745
  %i.i = load ptr, ptr %i.h, align 8, !dbg !18745, !nonnull !1359, !align !1596, !noundef !1359 ; 2 uses
  %i.j = ptrtoint ptr %i.d to i64, !dbg !18746
  %i.k = ptrtoint ptr %i.b to i64, !dbg !18746
  %i.l = sub nuw i64 %i.j, %i.k, !dbg !18746
  %i.m = lshr exact i64 %i.l, 4, !dbg !18746
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.c, !dbg !18747

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.ap, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.aq, %bb.e ], !dbg !18748 ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.01.0.i, !dbg !18749 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18715), !dbg !18750
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18751, !noalias !18716
  call void @llvm.experimental.noalias.scope.decl(metadata !18717), !dbg !18752
  %i.s = load ptr, ptr %i.n, align 8, !dbg !18753, !noalias !18718, !nonnull !1359, !noundef !1359
  %i.t = load i64, ptr %i.o, align 8, !dbg !18754, !noalias !18718, !noundef !1359
  %i.u = invoke noundef i64 @_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtNtB5_3ops5range5RangeyE15partition_pointNCNCNCINvNtCs8RKTHBS4OBx_12object_store4util15coalesce_rangesNCNCNvYNtNtB1p_3aws8AmazonS3NtB1p_11ObjectStore10get_ranges00NtB1p_5ErrorNCNvXB1p_B2k_NtB1p_14ObjectStoreExt9get_range0E000ECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !dbg !18755, !noalias !18719

.noexc.i:                                         ; preds = %bb.c
  %i.v = add i64 %i.u, -1, !dbg !18756            ; 5 uses
  %i.w = load i64, ptr %i.o, align 8, !dbg !18757, !noalias !18720, !noundef !1359 ; 2 uses
  %i.x = icmp ult i64 %i.v, %i.w, !dbg !18758
  br i1 %i.x, label %bb.d, label %.invoke, !dbg !18758

bb.d:                                             ; preds = %.noexc.i
  %i.y = load i64, ptr %i.p, align 8, !dbg !18759, !noalias !18720, !noundef !1359 ; 2 uses
  %i.z = icmp ult i64 %i.v, %i.y, !dbg !18760
  br i1 %i.z, label %_RNCNCINvNtCs8RKTHBS4OBx_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_3aws8AmazonS3NtB8_11ObjectStore10get_ranges00NtB8_5ErrorNCNvXB8_B13_NtB8_14ObjectStoreExt9get_range0E00CslpwjCj2YNBy_9polars_io.exit.i.i, label %.invoke, !dbg !18760

.invoke:                                          ; preds = %bb.d, %.noexc.i
  %i.aa = phi i64 [ %i.w, %.noexc.i ], [ %i.y, %bb.d ]
  %i.ab = phi ptr [ @31, %.noexc.i ], [ @32, %bb.d ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #40
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !dbg !18761, !noalias !18719

.cont:                                            ; preds = %.invoke
  unreachable

_RNCNCINvNtCs8RKTHBS4OBx_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_3aws8AmazonS3NtB8_11ObjectStore10get_ranges00NtB8_5ErrorNCNvXB8_B13_NtB8_14ObjectStoreExt9get_range0E00CslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.d
  %i.ac = load ptr, ptr %i.q, align 8, !dbg !18762, !noalias !18720, !nonnull !1359, !noundef !1359
  %i.ad = load ptr, ptr %i.n, align 8, !dbg !18763, !noalias !18720, !nonnull !1359, !noundef !1359
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.v, !dbg !18764
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.v, !dbg !18765 ; 2 uses
  %i.ag = load i64, ptr %i.r, align 8, !dbg !18766, !alias.scope !18733, !noalias !18719, !noundef !1359
  %i.ah = load i64, ptr %i.ae, align 8, !dbg !18767, !noalias !18734, !noundef !1359 ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah, !dbg !18766
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !18768
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !18768, !alias.scope !18733, !noalias !18719, !noundef !1359
  %i.al = sub i64 %i.ak, %i.ah, !dbg !18768
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !18769
  %i.an = load i64, ptr %i.am, align 8, !dbg !18769, !noalias !18734, !noundef !1359
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %i.al), !dbg !18770
  invoke void @_RINvMNtCshK0ivY6saku_5bytes5bytesNtB3_5Bytes5sliceINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.af, i64 noundef %i.ai, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !dbg !18771, !noalias !18719

bb.e:                                             ; preds = %_RNCNCINvNtCs8RKTHBS4OBx_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_3aws8AmazonS3NtB8_11ObjectStore10get_ranges00NtB8_5ErrorNCNvXB8_B13_NtB8_14ObjectStoreExt9get_range0E00CslpwjCj2YNBy_9polars_io.exit.i.i
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !18772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !18773, !noalias !18735
  %i.ap = add i64 %.val15.i, 1, !dbg !18774       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18775, !noalias !18716
  %i.aq = add nuw i64 %.sroa.01.0.i, 1, !dbg !18776 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.m, !dbg !18777
  br i1 %i.ar, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCshK0ivY6saku_5bytes5bytes5BytesuNCNCINvNtCs8RKTHBS4OBx_12object_store4util15coalesce_rangesNCNCNvYNtNtB3r_3aws8AmazonS3NtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorNCNvXB3r_B4m_NtB3r_14ObjectStoreExt9get_range0E00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6P_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit, label %bb.c, !dbg !18777

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %_RNCNCINvNtCs8RKTHBS4OBx_12object_store4util15coalesce_rangesNCNCNvYNtNtB8_3aws8AmazonS3NtB8_11ObjectStore10get_ranges00NtB8_5ErrorNCNvXB8_B13_NtB8_14ObjectStoreExt9get_range0E00CslpwjCj2YNBy_9polars_io.exit.i.i, %.invoke
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !18778, !noalias !18719
  resume { ptr, i32 } %lpad.loopexit.split-lp58, !dbg !18779

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtNtBb_3ops5range5RangeyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1p_8adapters3map8map_foldRBQ_NtNtCshK0ivY6saku_5bytes5bytes5BytesuNCNCINvNtCs8RKTHBS4OBx_12object_store4util15coalesce_rangesNCNCNvYNtNtB3r_3aws8AmazonS3NtB3r_11ObjectStore10get_ranges00NtB3r_5ErrorNCNvXB3r_B4m_NtB3r_14ObjectStoreExt9get_range0E00NCINvNvB1j_8for_each4callB2H_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6P_3VecB2H_E14extend_trustedINtB29_3MapBF_B3i_EE0E0E0ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.ap, %bb.e ], !dbg !18780
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !18780, !noalias !18719
  ret void, !dbg !18781
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCs8RKTHBS4OBx_12object_store4util15coalesce_rangesNCNCNvYNtNtB1Z_3gcp18GoogleCloudStorageNtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorNCNvXB1Z_B2U_NtB1Z_14ObjectStoreExt9get_range0E00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4X_8for_each4callNtNtCshK0ivY6saku_5bytes5bytes5BytesNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6J_3VecB60_E14extend_trustedBN_E0E0ECslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !18782 {
end_hunk_1
begin_hunk_2_@_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #32

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneE9drop_slowBO_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #32

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #32

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9debug_map(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeINtNtNtCse4dvU5uQ85g_8indexmap3map4iter4IterB13_B1T_EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsj_NtCsh8eZTKRCwoO_3std2ioINtB5_5BytesQNtNtB7_2fs4FileENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtB7_9Splitable19__split_at_uncheckedCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayaENtB7_9Splitable19__split_at_uncheckedCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArraydENtB7_9Splitable19__split_at_uncheckedCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayfENtB7_9Splitable19__split_at_uncheckedCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayhENtB7_9Splitable19__split_at_uncheckedCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArraylENtB7_9Splitable19__split_at_uncheckedCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArraymENtB7_9Splitable19__split_at_uncheckedCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArraynENtB7_9Splitable19__split_at_uncheckedCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayoENtB7_9Splitable19__split_at_uncheckedCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArraysENtB7_9Splitable19__split_at_uncheckedCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArraytENtB7_9Splitable19__split_at_uncheckedCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayxENtB7_9Splitable19__split_at_uncheckedCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs8774dFTUdNv_12polars_arrow5array9primitiveINtB5_14PrimitiveArrayyENtB7_9Splitable19__split_at_uncheckedCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noundef nonnull align 8, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsh8eZTKRCwoO_3std2fs8metadataRNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(none) dereferenceable(176), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvNtNtCslpwjCj2YNBy_9polars_io10file_cache5utils17last_modified_u64(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtCsh8eZTKRCwoO_3std2os4unix2fs7symlinkRNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathRNtNtB8_4path4PathECslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCsfISxE4fmY1Y_14polars_parquet7parquet4pageNtB5_14CompressedPage10buffer_mut(ptr noalias noundef align 8 dereferenceable(344)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet5write11compression8compress(ptr dead_on_unwind noalias noundef writable sret([344 x i8]) align 8 captures(none) dereferenceable(344), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(328), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCscgRAwXFJnXP_4core3fmtSReNtB5_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ArrowDataTypeE13new_uninit_inCslpwjCj2YNBy_9polars_io() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes13ExtensionTypeE13new_uninit_inCslpwjCj2YNBy_9polars_io() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs8774dFTUdNv_12polars_arrow9datatypes9UnionTypeE13new_uninit_inCslpwjCj2YNBy_9polars_io() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCslpwjCj2YNBy_9polars_io() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE13new_uninit_inCslpwjCj2YNBy_9polars_io() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxTINtNtB6_3vec3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEIBI_NtNtB11_5field5FieldEEE13new_uninit_inCslpwjCj2YNBy_9polars_io() unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTjmENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtCsgjwxzEoLG5s_12polars_error9ErrStringNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsV_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRINtNtB8_6option6OptionNtCsgjwxzEoLG5s_12polars_error9ErrStringENtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsn_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCsgjwxzEoLG5s_12polars_error6python9PyErrWrapNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VeclENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB2_21ExtensionTypeInstanceNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt17pointer_fmt_inner(i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB2_11OwnedObjectNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter3pad(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io16append_to_stringNCNvYINtNtB2_6cursor6CursorRShENtB2_7BufRead9read_line0ECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMs4_NtCs2mZqlW55729_12polars_utils7pl_pathNtB6_9PlRefPath3newReECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs1_NtCs1d9mkheQt2j_4http5errorNtB5_5ErrorNtNtCscgRAwXFJnXP_4core5error5Error6source(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCsh8eZTKRCwoO_3std2io18default_read_exactNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEBP_(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEBQ_(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 dereferenceable(24), i64 noundef range(i64 0, 2), i64) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io21default_read_vectoredNCNvYNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceNtB2_4Read13read_vectored0EBX_(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCsh8eZTKRCwoO_3std2io22default_read_buf_exactNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceEBT_(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io16append_to_stringNCINvB2_22default_read_to_stringNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceE0EB1j_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCsh8eZTKRCwoO_3std2io16default_read_bufNCNvYNtNtNtCslpwjCj2YNBy_9polars_io5utils17stream_buf_reader12ReaderSourceNtB2_4Read8read_buf0EBS_(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #38

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #28

attributes #0 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #26 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #32 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { nounwind }
attributes #38 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #40 = { noinline noreturn }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { cold noreturn nounwind }
attributes #44 = { noinline }
attributes #45 = { inlinehint }

!llvm.module.flags = !{!1349, !1350, !1351, !1352}
!llvm.ident = !{!1353}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1354, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !1390, file: !1387, line: 609, type: !1360, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!2 = distinct !DISubprogram(name: "as_slice", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice", scope: !1390, file: !1387, line: 355, type: !1360, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!3 = distinct !DILexicalBlock(scope: !2, file: !1387, line: 357, column: 9)
!4 = distinct !DILexicalBlock(scope: !3, file: !1387, line: 358, column: 9)
!5 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr6as_str", scope: !1390, file: !1387, line: 379, type: !1360, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!6 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMCs7VARH73bmU_11compact_strNtB2_13CompactString6as_str", scope: !1392, file: !1391, line: 557, type: !1360, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!7 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils6pl_strNtB2_10PlSmallStr6as_str", scope: !1396, file: !1393, line: 66, type: !1360, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!8 = distinct !DISubprogram(name: "eq<polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCslpwjCj2YNBy_9polars_io", scope: !1397, file: !1393, line: 258, type: !1360, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!9 = distinct !DISubprogram(name: "equivalent<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvXCs6WitO0SpKBq_10equivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtB2_10EquivalentBs_E10equivalentCslpwjCj2YNBy_9polars_io", scope: !1400, file: !1398, line: 88, type: !1360, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!10 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs4_NtCscgRAwXFJnXP_4core3numh12wrapping_sub", scope: !1402, file: !1361, line: 2547, type: !1360, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!11 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RNvYjNtNtCscgRAwXFJnXP_4core3cmp3Ord3minCslpwjCj2YNBy_9polars_io", scope: !1405, file: !1403, line: 1073, type: !1360, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!12 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp3minjECslpwjCj2YNBy_9polars_io", scope: !1404, file: !1403, line: 1575, type: !1360, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!13 = distinct !DILexicalBlock(scope: !4, file: !1387, line: 364, column: 9)
!14 = distinct !DILexicalBlock(scope: !13, file: !1387, line: 368, column: 9)
!15 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr6as_str", scope: !1390, file: !1387, line: 379, type: !1360, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!16 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMCs7VARH73bmU_11compact_strNtB2_13CompactString6as_str", scope: !1392, file: !1391, line: 557, type: !1360, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!17 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils6pl_strNtB2_10PlSmallStr6as_str", scope: !1396, file: !1393, line: 66, type: !1360, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!18 = distinct !DISubprogram(name: "as_ref", linkageName: "_RNvXs0_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrINtNtCscgRAwXFJnXP_4core7convert5AsRefeE6as_ref", scope: !1406, file: !1393, line: 98, type: !1360, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!19 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCslpwjCj2YNBy_9polars_io", scope: !1409, file: !1407, line: 20, type: !1360, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!20 = distinct !DILexicalBlock(scope: !19, file: !1407, line: 21, column: 9)
!21 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCslpwjCj2YNBy_9polars_io", scope: !1412, file: !1403, line: 2123, type: !1360, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!22 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq", scope: !1416, file: !1413, line: 29, type: !1360, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!23 = distinct !DISubprogram(name: "eq<str, str>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCslpwjCj2YNBy_9polars_io", scope: !1412, file: !1403, line: 2123, type: !1360, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!24 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCslpwjCj2YNBy_9polars_io", scope: !1417, file: !1407, line: 152, type: !1360, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!25 = distinct !DILexicalBlock(scope: !24, file: !1407, line: 157, column: 13)
!26 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !1390, file: !1387, line: 609, type: !1360, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!27 = distinct !DISubprogram(name: "is_heap_allocated", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr17is_heap_allocated", scope: !1390, file: !1387, line: 446, type: !1360, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!28 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB5_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop", scope: !1429, file: !1387, line: 776, type: !1360, scopeLine: 776, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!29 = distinct !DISubprogram(name: "drop_in_place<compact_str::repr::Repr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7VARH73bmU_11compact_str4repr4ReprECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!30 = distinct !DISubprogram(name: "drop_in_place<compact_str::CompactString>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCs7VARH73bmU_11compact_str13CompactStringECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!31 = distinct !DISubprogram(name: "drop_in_place<polars_utils::pl_str::PlSmallStr>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!32 = distinct !DISubprogram(name: "get_index_of<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType, foldhash::quality::RandomState, str>", linkageName: "_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE12get_index_ofeECslpwjCj2YNBy_9polars_io", scope: !1374, file: !1371, line: 885, type: !1360, scopeLine: 885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!33 = distinct !DISubprogram(name: "as_slice<indexmap::Bucket<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE8as_sliceCslpwjCj2YNBy_9polars_io", scope: !1378, file: !1375, line: 1824, type: !1360, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!34 = distinct !DISubprogram(name: "as_entries<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType, foldhash::quality::RandomState>", linkageName: "_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE10as_entriesCslpwjCj2YNBy_9polars_io", scope: !1374, file: !1371, line: 193, type: !1360, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!35 = distinct !DISubprogram(name: "as_entries<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>", linkageName: "_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE10as_entriesCslpwjCj2YNBy_9polars_io", scope: !1382, file: !1380, line: 125, type: !1360, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!36 = distinct !DISubprogram(name: "deref<indexmap::Bucket<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCslpwjCj2YNBy_9polars_io", scope: !1379, file: !1375, line: 3755, type: !1360, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!37 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, indexmap::Bucket<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECslpwjCj2YNBy_9polars_io", scope: !1385, file: !1383, line: 613, type: !1360, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!38 = distinct !DISubprogram(name: "as_ptr<indexmap::Bucket<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE6as_ptrCslpwjCj2YNBy_9polars_io", scope: !1378, file: !1375, line: 1939, type: !1360, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!39 = distinct !DISubprogram(name: "ptr<indexmap::Bucket<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEE3ptrCslpwjCj2YNBy_9polars_io", scope: !1386, file: !1383, line: 295, type: !1360, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!40 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, indexmap::Bucket<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECslpwjCj2YNBy_9polars_io", scope: !1385, file: !1383, line: 608, type: !1360, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!41 = distinct !DILexicalBlock(scope: !32, file: !1371, line: 891, column: 13)
!42 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr6as_str", scope: !1390, file: !1387, line: 379, type: !1360, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!43 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMCs7VARH73bmU_11compact_strNtB2_13CompactString6as_str", scope: !1392, file: !1391, line: 557, type: !1360, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!44 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils6pl_strNtB2_10PlSmallStr6as_str", scope: !1396, file: !1393, line: 66, type: !1360, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!45 = distinct !DISubprogram(name: "borrow", linkageName: "_RNvXs3_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrINtNtCscgRAwXFJnXP_4core6borrow6BorroweE6borrow", scope: !1433, file: !1393, line: 121, type: !1360, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!46 = distinct !DISubprogram(name: "equivalent<str, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvXCs6WitO0SpKBq_10equivalenteINtB2_10EquivalentNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE10equivalentCslpwjCj2YNBy_9polars_io", scope: !1400, file: !1398, line: 88, type: !1360, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!47 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCslpwjCj2YNBy_9polars_io", scope: !1409, file: !1407, line: 20, type: !1360, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!48 = distinct !DILexicalBlock(scope: !47, file: !1407, line: 21, column: 9)
!49 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCslpwjCj2YNBy_9polars_io", scope: !1412, file: !1403, line: 2123, type: !1360, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!50 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq", scope: !1416, file: !1413, line: 29, type: !1360, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!51 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCslpwjCj2YNBy_9polars_io", scope: !1417, file: !1407, line: 152, type: !1360, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!52 = distinct !DILexicalBlock(scope: !51, file: !1407, line: 157, column: 13)
!53 = distinct !DISubprogram(name: "hash<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType, foldhash::quality::RandomState, str>", linkageName: "_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE4hasheECslpwjCj2YNBy_9polars_io", scope: !1374, file: !1371, line: 819, type: !1360, scopeLine: 819, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!54 = distinct !DILexicalBlock(scope: !32, file: !1371, line: 893, column: 17)
!55 = distinct !DISubprogram(name: "get_index_of<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field, foldhash::quality::RandomState, str>", linkageName: "_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE12get_index_ofeECslpwjCj2YNBy_9polars_io", scope: !1374, file: !1371, line: 885, type: !1360, scopeLine: 885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!56 = distinct !DISubprogram(name: "as_slice<indexmap::Bucket<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEE8as_sliceCslpwjCj2YNBy_9polars_io", scope: !1378, file: !1375, line: 1824, type: !1360, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!57 = distinct !DISubprogram(name: "as_entries<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field, foldhash::quality::RandomState>", linkageName: "_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE10as_entriesCslpwjCj2YNBy_9polars_io", scope: !1374, file: !1371, line: 193, type: !1360, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!58 = distinct !DISubprogram(name: "as_entries<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field>", linkageName: "_RNvMs_NtCse4dvU5uQ85g_8indexmap5innerINtB4_4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldE10as_entriesCslpwjCj2YNBy_9polars_io", scope: !1382, file: !1380, line: 125, type: !1360, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!59 = distinct !DISubprogram(name: "deref<indexmap::Bucket<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCslpwjCj2YNBy_9polars_io", scope: !1379, file: !1375, line: 3755, type: !1360, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!60 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, indexmap::Bucket<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECslpwjCj2YNBy_9polars_io", scope: !1385, file: !1383, line: 613, type: !1360, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!61 = distinct !DISubprogram(name: "as_ptr<indexmap::Bucket<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEE6as_ptrCslpwjCj2YNBy_9polars_io", scope: !1378, file: !1375, line: 1939, type: !1360, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!62 = distinct !DISubprogram(name: "ptr<indexmap::Bucket<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEE3ptrCslpwjCj2YNBy_9polars_io", scope: !1386, file: !1383, line: 295, type: !1360, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!63 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, indexmap::Bucket<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field>>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEECslpwjCj2YNBy_9polars_io", scope: !1385, file: !1383, line: 608, type: !1360, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!64 = distinct !DILexicalBlock(scope: !55, file: !1371, line: 891, column: 13)
!65 = distinct !DISubprogram(name: "hash<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field, foldhash::quality::RandomState, str>", linkageName: "_RINvMs3_NtCse4dvU5uQ85g_8indexmap3mapINtB6_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE4hasheECslpwjCj2YNBy_9polars_io", scope: !1374, file: !1371, line: 819, type: !1360, scopeLine: 819, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!66 = distinct !DILexicalBlock(scope: !55, file: !1371, line: 893, column: 17)
!67 = distinct !DISubprogram(name: "as_ptr<u8>", linkageName: "_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE6as_ptrCslpwjCj2YNBy_9polars_io", scope: !1444, file: !1442, line: 326, type: !1360, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!68 = distinct !DISubprogram(name: "from_storage<u8>", linkageName: "_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCslpwjCj2YNBy_9polars_io", scope: !1441, file: !1438, line: 100, type: !1360, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!69 = distinct !DISubprogram(name: "len<u8>", linkageName: "_RNvMs9_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE3lenCslpwjCj2YNBy_9polars_io", scope: !1444, file: !1442, line: 316, type: !1360, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!70 = distinct !DILexicalBlock(scope: !68, file: !1438, line: 101, column: 9)
!71 = distinct !DILexicalBlock(scope: !70, file: !1438, line: 102, column: 9)
!72 = distinct !DISubprogram(name: "set_parent_link<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvMsq_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1p_NtB19_14LeafOrInternalE15set_parent_linkCslpwjCj2YNBy_9polars_io", scope: !1449, file: !1445, line: 573, type: !1360, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!73 = distinct !DILexicalBlock(scope: !72, file: !1445, line: 574, column: 9)
!74 = distinct !DISubprogram(name: "correct_parent_link<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>", linkageName: "_RNvMsL_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1C_NtB1m_8InternalENtB1m_4EdgeE19correct_parent_linkCslpwjCj2YNBy_9polars_io", scope: !1458, file: !1445, line: 989, type: !1459, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!75 = distinct !DILexicalBlock(scope: !74, file: !1445, line: 991, column: 9)
!76 = distinct !DILexicalBlock(scope: !75, file: !1445, line: 992, column: 9)
!77 = distinct !DILexicalBlock(scope: !76, file: !1445, line: 993, column: 9)
!78 = distinct !DISubprogram(name: "write<u16>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3mem12maybe_uninitINtB5_11MaybeUninittE5writeCslpwjCj2YNBy_9polars_io", scope: !1457, file: !1454, line: 573, type: !1360, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!79 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc15dealloc_nonnull", scope: !1461, file: !1460, line: 127, type: !1360, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!80 = distinct !DISubprogram(name: "deallocate_impl_runtime", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global23deallocate_impl_runtime", scope: !1462, file: !1460, line: 219, type: !1360, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!81 = distinct !DISubprogram(name: "deallocate_impl", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global15deallocate_impl", scope: !1462, file: !1460, line: 343, type: !1360, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!82 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate", scope: !1463, file: !1460, line: 460, type: !1459, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!83 = distinct !DISubprogram(name: "ascend<alloc::collections::btree::node::marker::Dying, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::collections::btree::node::marker::LeafOrInternal>", linkageName: "_RNvMse_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1r_NtB19_14LeafOrInternalE6ascendCslpwjCj2YNBy_9polars_io", scope: !1449, file: !1445, line: 328, type: !1360, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!84 = distinct !DILexicalBlock(scope: !83, file: !1445, line: 337, column: 9)
!85 = distinct !DISubprogram(name: "deallocate_and_ascend<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::alloc::Global>", linkageName: "_RINvMsh_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1s_NtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECslpwjCj2YNBy_9polars_io", scope: !1449, file: !1445, line: 404, type: !1360, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!86 = distinct !DILexicalBlock(scope: !85, file: !1445, line: 408, column: 9)
!87 = distinct !DILexicalBlock(scope: !86, file: !1445, line: 409, column: 9)
!88 = distinct !DISubprogram(name: "as_ref<core::ptr::non_null::NonNull<alloc::collections::btree::node::InternalNode<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionINtNtNtB4_3ptr8non_null7NonNullINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node12InternalNodeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2h_EEE6as_refCslpwjCj2YNBy_9polars_io", scope: !1422, file: !1418, line: 744, type: !1360, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!89 = distinct !DISubprogram(name: "{closure#0}<alloc::collections::btree::node::marker::Dying, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::collections::btree::node::marker::LeafOrInternal>", linkageName: "_RNCNvMse_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB7_7NodeRefNtNtB7_6marker5DyingNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1t_NtB1b_14LeafOrInternalE6ascend0CslpwjCj2YNBy_9polars_io", scope: !1469, file: !1445, line: 340, type: !1360, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!90 = distinct !DISubprogram(name: "map<&core::ptr::non_null::NonNull<alloc::collections::btree::node::InternalNode<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::{impl#16}::ascend::{closure_env#0}<alloc::collections::btree::node::marker::Dying, polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, alloc::collections::btree::node::marker::LeafOrInternal>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_3ptr8non_null7NonNullINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4node12InternalNodeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2j_EEE3mapINtB1h_6HandleINtB1h_7NodeRefNtNtB1h_6marker5DyingB2j_B2j_NtB3O_8InternalENtB3O_4EdgeENCNvMse_B1h_IB3y_B3M_B2j_B2j_NtB3O_14LeafOrInternalE6ascend0ECslpwjCj2YNBy_9polars_io", scope: !1422, file: !1418, line: 1160, type: !1360, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!91 = distinct !DILexicalBlock(scope: !90, file: !1418, line: 1165, column: 13)
!92 = distinct !DILexicalBlock(scope: !87, file: !1445, line: 410, column: 9)
!93 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNKNvNtCs7mBf7xsg8h_15crossbeam_epoch7default6HANDLE00CslpwjCj2YNBy_9polars_io", scope: !1482, file: !1480, line: 92, type: !1459, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!94 = distinct !DISubprogram(name: "call_once<crossbeam_epoch::default::HANDLE::{constant#0}::{closure_env#0}, (core::option::Option<&mut core::option::Option<crossbeam_epoch::collector::LocalHandle>>)>", linkageName: "_RNvYNCNKNvNtCs7mBf7xsg8h_15crossbeam_epoch7default6HANDLE00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB12_6option6OptionQIB1H_NtNtBa_9collector11LocalHandleEEEE9call_onceCslpwjCj2YNBy_9polars_io", scope: !1426, file: !1423, line: 250, type: !1360, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!95 = distinct !DISubprogram(name: "get<std::sys::thread_local::native::lazy::State<()>>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCellINtNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazy5StateuEE3getCslpwjCj2YNBy_9polars_io", scope: !1490, file: !1488, line: 2443, type: !1360, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!96 = distinct !DISubprogram(name: "get<std::sys::thread_local::native::lazy::State<()>>", linkageName: "_RNvMs8_NtCscgRAwXFJnXP_4core4cellINtB5_4CellINtNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazy5StateuEE3getCslpwjCj2YNBy_9polars_io", scope: !1491, file: !1488, line: 552, type: !1360, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!97 = distinct !DISubprogram(name: "get_or_init<crossbeam_epoch::collector::LocalHandle, (), fn() -> crossbeam_epoch::collector::LocalHandle>", linkageName: "_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleuE11get_or_initNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECslpwjCj2YNBy_9polars_io", scope: !1497, file: !1492, line: 58, type: !1360, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!98 = distinct !DILexicalBlock(scope: !97, file: !1492, line: 59, column: 48)
!99 = distinct !DISubprogram(name: "atomic_load<u64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_loadyECslpwjCj2YNBy_9polars_io", scope: !1522, file: !1520, line: 3900, type: !1360, scopeLine: 3900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!100 = distinct !DISubprogram(name: "get<usize>", linkageName: "_RNvMs8_NtCscgRAwXFJnXP_4core4cellINtB5_4CelljE3getCslpwjCj2YNBy_9polars_io", scope: !1491, file: !1488, line: 552, type: !1360, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!101 = distinct !DISubprogram(name: "release_handle", linkageName: "_RNvMs6_NtCs7mBf7xsg8h_15crossbeam_epoch8internalNtB5_5Local14release_handle", scope: !1505, file: !1503, line: 503, type: !1360, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!102 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs7_NtCs7mBf7xsg8h_15crossbeam_epoch9collectorNtB5_11LocalHandleNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop", scope: !1530, file: !1506, line: 99, type: !1459, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!103 = distinct !DISubprogram(name: "drop_in_place<crossbeam_epoch::collector::LocalHandle>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs7mBf7xsg8h_15crossbeam_epoch9collector11LocalHandleECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1459, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!104 = distinct !DISubprogram(name: "get<usize>", linkageName: "_RNvMsX_NtCscgRAwXFJnXP_4core4cellINtB5_10UnsafeCelljE3getCslpwjCj2YNBy_9polars_io", scope: !1490, file: !1488, line: 2443, type: !1360, scopeLine: 2443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!105 = distinct !DILexicalBlock(scope: !101, file: !1503, line: 504, column: 9)
!106 = distinct !DILexicalBlock(scope: !105, file: !1503, line: 505, column: 9)
!107 = distinct !DISubprogram(name: "replace<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem7replacejECslpwjCj2YNBy_9polars_io", scope: !1455, file: !1512, line: 915, type: !1360, scopeLine: 915, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!108 = distinct !DILexicalBlock(scope: !107, file: !1512, line: 929, column: 9)
!109 = distinct !DISubprogram(name: "replace<usize>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CelljE7replaceCslpwjCj2YNBy_9polars_io", scope: !1491, file: !1488, line: 510, type: !1360, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!110 = distinct !DISubprogram(name: "set<usize>", linkageName: "_RNvMs7_NtCscgRAwXFJnXP_4core4cellINtB5_4CelljE3setCslpwjCj2YNBy_9polars_io", scope: !1491, file: !1488, line: 433, type: !1360, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!111 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::vec::Vec<u8, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!112 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!113 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!114 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::vec::Vec<i32, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!115 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<i32, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VeclEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!116 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<i32, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVeclEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!117 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<polars_error::ErrString>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCsgjwxzEoLG5s_12polars_error9ErrStringEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!118 = distinct !DISubprogram(name: "drop_in_place<alloc::string::String>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!119 = distinct !DISubprogram(name: "drop_in_place<alloc::borrow::Cow<str>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CoweEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!120 = distinct !DISubprogram(name: "drop_in_place<polars_error::ErrString>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error9ErrStringECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!121 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::string::String>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!122 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<polars_arrow::bitmap::mutable::MutableBitmap>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!123 = distinct !DISubprogram(name: "drop_in_place<polars_arrow::bitmap::mutable::MutableBitmap>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7mutable13MutableBitmapECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!124 = distinct !DISubprogram(name: "drop_in_place<core::result::Result<polars_core::datatypes::dtype::DataType, polars_error::PolarsError>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!125 = distinct !DISubprogram(name: "drop_in_place<pyo3::instance::Py<pyo3::exceptions::PyBaseException>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbm5zPlkZccl_4pyo38instance2PyNtNtBL_10exceptions15PyBaseExceptionEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1459, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!126 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_0CslpwjCj2YNBy_9polars_io", scope: !1540, file: !1480, line: 71, type: !1459, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!127 = distinct !DISubprogram(name: "call_once<pyo3::internal::state::ATTACH_COUNT::{constant#0}::{closure_env#1}, (core::option::Option<&mut core::option::Option<core::cell::Cell<isize>>>)>", linkageName: "_RNvYNCNKNvNtNtCsbm5zPlkZccl_4pyo38internal5state12ATTACH_COUNT0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB19_6option6OptionQIB1O_INtNtB19_4cell4CelliEEEEE9call_onceCslpwjCj2YNBy_9polars_io", scope: !1426, file: !1423, line: 250, type: !1360, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!128 = distinct !DISubprogram(name: "try_with<core::cell::Cell<isize>, pyo3::internal::state::thread_is_attached::{closure_env#0}, bool>", linkageName: "_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CelliEE8try_withNCNvNtNtCsbm5zPlkZccl_4pyo38internal5state18thread_is_attached0bECslpwjCj2YNBy_9polars_io", scope: !1487, file: !1483, line: 457, type: !1459, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!129 = distinct !DISubprogram(name: "thread_is_attached", linkageName: "_RNvNtNtCsbm5zPlkZccl_4pyo38internal5state18thread_is_attached", scope: !1538, file: !1541, line: 38, type: !1360, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!130 = distinct !DISubprogram(name: "inner", linkageName: "_RNvNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB7_2PypENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop5inner", scope: !1545, file: !1542, line: 2287, type: !1360, scopeLine: 2287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!131 = distinct !DISubprogram(name: "drop<pyo3::exceptions::PyBaseException>", linkageName: "_RNvXsA_NtCsbm5zPlkZccl_4pyo38instanceINtB5_2PyNtNtB7_10exceptions15PyBaseExceptionENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io", scope: !1544, file: !1542, line: 2284, type: !1459, scopeLine: 2284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!132 = distinct !DILexicalBlock(scope: !128, file: !1483, line: 461, column: 9)
!133 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtCsbm5zPlkZccl_4pyo38internal5state18thread_is_attached0CslpwjCj2YNBy_9polars_io", scope: !1546, file: !1541, line: 39, type: !1459, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!134 = distinct !DISubprogram(name: "unwrap_or<bool, std::thread::local::AccessError>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultbNtNtNtCsh8eZTKRCwoO_3std6thread5local11AccessErrorE9unwrap_orCslpwjCj2YNBy_9polars_io", scope: !1529, file: !1527, line: 1590, type: !1360, scopeLine: 1590, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!135 = distinct !DISubprogram(name: "Py_DECREF", linkageName: "_RNvNtCsfueLBegRnmY_8pyo3_ffi8refcount9Py_DECREF", scope: !1550, file: !1548, line: 255, type: !1360, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!136 = distinct !DISubprogram(name: "drop_in_place<indexmap::map::IndexMap<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType, foldhash::quality::RandomState>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!137 = distinct !DISubprogram(name: "drop_in_place<indexmap::inner::Core<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap5inner4CoreNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!138 = distinct !DISubprogram(name: "drop<usize, allocator_api2::stable::alloc::global::Global>", linkageName: "_RNvXsf_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io", scope: !1554, file: !1551, line: 3503, type: !1360, scopeLine: 3503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!139 = distinct !DISubprogram(name: "drop_in_place<hashbrown::raw::RawTable<usize, allocator_api2::stable::alloc::global::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown3raw8RawTablejEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!140 = distinct !DISubprogram(name: "drop_in_place<hashbrown::table::HashTable<usize, allocator_api2::stable::alloc::global::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs7tGzs63DEEy_9hashbrown5table9HashTablejEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!141 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<indexmap::Bucket<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!142 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<indexmap::Bucket<polars_utils::pl_str::PlSmallStr, polars_core::datatypes::dtype::DataType>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!143 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<indexmap::Bucket<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!144 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<indexmap::Bucket<polars_utils::pl_str::PlSmallStr, polars_arrow::datatypes::field::Field>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVecINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
!145 = distinct !DISubprogram(name: "drop_in_place<indexmap::map::IndexMap<polars_core::datatypes::dtype::DataType, (), foldhash::quality::RandomState>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCse4dvU5uQ85g_8indexmap3map8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEECslpwjCj2YNBy_9polars_io", scope: !1431, file: !1430, line: 810, type: !1360, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1359)
end_hunk_2
