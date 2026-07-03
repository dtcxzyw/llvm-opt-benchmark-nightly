inline.NumInlined: 1011
inline.NumDeleted: 395
begin_hunk_0_@_RNvMs3_CskItxkTFUcJI_4slabINtB5_4SlabINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBE_4task4wake5WakerEE6removeCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1167, !noalias !1170, !noundef !3
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1167, !noalias !1170, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %1 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !range !29, !noalias !1172, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1167, !noalias !1170, !noundef !3
  %.sroa.4.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa.0.0..sroa_idx.i, align 8, !noalias !1172
  %.sroa.5.0..sroa.0.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa.0.0..sroa_idx.i, align 8, !noalias !1172
  store i64 0, ptr %i.f, align 8, !noalias !1172
  store i64 %i.j, ptr %.sroa.4.0..sroa.0.0..sroa_idx.i, align 8, !noalias !1172
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1167, !noalias !1170, !noundef !3
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.k, align 8, !alias.scope !1167, !noalias !1170
  store i64 %1, ptr %i.i, align 8, !alias.scope !1167, !noalias !1170
  %i.n = insertvalue { ptr, ptr } poison, ptr %.sroa.4.0.copyload.i, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %.sroa.5.0.copyload.i, 1
  ret { ptr, ptr } %i.o

bb.d:                                             ; preds = %bb.a, %bb.b
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_CskItxkTFUcJI_4slabINtB5_4SlabINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBE_4task4wake5WakerEE9insert_atCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(40) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %2, ptr %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 3 uses
  %i.f = icmp ult i64 %i.e, 384307168202282326
  tail call void @llvm.assume(i1 %i.f)
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %1, %i.e
  br i1 %i.g, label %bb.h, label %bb.i, !prof !1173

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %0, align 8, !range !230, !alias.scope !1174, !noalias !1177, !noundef !3
  %i.i = icmp eq i64 %1, %i.h
  br i1 %i.i, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCskItxkTFUcJI_4slab5EntryINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtB1j_4task4wake5WakerEEE8grow_oneCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.m unwind label %bb.e, !noalias !1177

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = icmp eq ptr %2, null
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !1179, !nonnull !3, !noundef !3
  invoke void %i.m(ptr noundef %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.g, !noalias !1177, !inline_history !1182

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1177
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %1 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !range !29, !noundef !3
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCskItxkTFUcJI_4slab5EntryINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !31

bb.i:                                             ; preds = %bb.b, %bb.h
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #23
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCskItxkTFUcJI_4slab5EntryINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.u, ptr %i.v, align 8
  store i64 1, ptr %i.q, align 8
  store ptr %2, ptr %i.t, align 8
  %.sroa.8.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %3, ptr %.sroa.8.0..sroa_idx23, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCskItxkTFUcJI_4slab5EntryINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  ret void

bb.l:                                             ; preds = %bb.o
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.m:                                             ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1174, !noalias !1177, !nonnull !3, !noundef !3
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %1 ; 3 uses
  store i64 1, ptr %i.z, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8
  %i.aa = add nuw nsw i64 %1, 1                   ; 2 uses
  store i64 %i.aa, ptr %i.d, align 8, !alias.scope !1174, !noalias !1177
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aa, ptr %i.ab, align 8
  br label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.e, %bb.f, %bb.n, %bb.o
  %.pn827 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.ac, %bb.n ], [ %i.ac, %bb.o ], [ %i.j, %bb.f ]
  resume { ptr, i32 } %.pn827

bb.n:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = icmp eq ptr %2, null
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !3, !noundef !3
  invoke void %i.af(ptr noundef %3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.l, !inline_history !1183
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB5_19UnityCatalogBuilder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(640) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [80 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 5 uses
  %i.g = alloca [80 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 6 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [72 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [160 x i8], align 8               ; 6 uses
  %i.o = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.515 = alloca [40 x i8], align 8          ; 6 uses
  %i.p = alloca [328 x i8], align 8               ; 9 uses
  %i.q = alloca [72 x i8], align 8                ; 9 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.69 = alloca [24 x i8], align 8           ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [24 x i8], align 8                ; 11 uses
  %i.u = alloca [72 x i8], align 8                ; 8 uses
  %i.v = alloca [104 x i8], align 8               ; 11 uses
  %.sroa.52 = alloca [96 x i8], align 8           ; 7 uses
  %.sroa.5 = alloca [96 x i8], align 8            ; 7 uses
  %i.w = alloca [96 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.52)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 12 uses
  %i.y = load i64, ptr %i.x, align 8, !range !30, !noalias !1184, !noundef !3
  %.not.i = icmp eq i64 %i.y, -9223372036854775808
  %.sink252.sroa.gep255 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sink252.sroa.gep = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %.noexc unwind label %.thread211

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.ac = load i64, ptr %i.z, align 8, !range !30, !noalias !1184, !noundef !3
  %.not24.i.a = icmp eq i64 %i.ac, -9223372036854775808
  br i1 %.not24.i.a, label %.thread.i, label %2

2:                                                ; preds = %bb.c
  %3 = load i64, ptr %i.aa, align 8, !range !30, !noalias !1184, !noundef !3
  %.not24.i = icmp eq i64 %3, -9223372036854775808
  br i1 %.not24.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %2
  %i.ad = load i64, ptr %i.ab, align 8, !range !30, !noalias !1184, !noundef !3
  %.not25.i = icmp eq i64 %i.ad, -9223372036854775808
  br i1 %.not25.i, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1184
  store i64 -9223372036854775808, ptr %i.c, align 8, !noalias !1184
  invoke void @_RNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtB5_5MutexINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE3newB1z_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43)
          to label %.noexc78 unwind label %.thread211

.noexc78:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1184
  invoke void @_RINvMNtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtB3_22WorkspaceOAuthProvider3newRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1r_B1r_EB5_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.g unwind label %bb.f, !noalias !1184

bb.f:                                             ; preds = %.noexc78
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %i.ah, %bb.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringEEBN_(ptr noalias noundef align 8 dereferenceable(80) %i.g) #22
          to label %.thread204 unwind label %bb.l, !noalias !1184

bb.g:                                             ; preds = %.noexc78
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1187
  %i.af = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1457) 72, i64 noundef range(i64 1, 9) 8) #25, !noalias !1187 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %bb.k, !prof !1100

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #23
          to label %.noexc.i unwind label %bb.i, !noalias !1184

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential22WorkspaceOAuthProviderEBK_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f) #22
          to label %.body.i unwind label %bb.j, !noalias !1184

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1184
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.af, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !noalias !1184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1184
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.54.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1184
  br label %.noexc.sink.split

bb.l:                                             ; preds = %.body34.i, %.body.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1184
  unreachable

bb.m:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !30, !noalias !1184, !noundef !3
  %.not29.i = icmp eq i64 %i.al, -9223372036854775808
  br i1 %.not29.i, label %.thread.i, label %bb.n

.thread.i:                                        ; preds = %bb.m, %2, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.an = load i8, ptr %i.am, align 8, !range !327, !noalias !1184, !noundef !3
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.u, label %bb.w

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1184
  store i64 -9223372036854775808, ptr %i.b, align 8, !noalias !1184
  invoke void @_RNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtB5_5MutexINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE3newB1z_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43)
          to label %.noexc79 unwind label %.thread211

.noexc79:                                         ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1184
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !30, !noalias !1184, !noundef !3
  %.not31.i = icmp eq i64 %i.aq, -9223372036854775808
  %.33.i = select i1 %.not31.i, ptr null, ptr %i.ap
  invoke void @_RINvMs_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtB5_25ClientSecretOAuthProvider3newRNtNtCs6Po7BT7Nknu_5alloc6string6StringB1w_B1w_B1w_EB7_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.33.i)
          to label %bb.p unwind label %bb.o, !noalias !1184

bb.o:                                             ; preds = %.noexc79
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

.body34.i:                                        ; preds = %bb.r, %bb.o
  %eh.lpad-body35.i = phi { ptr, i32 } [ %i.ar, %bb.o ], [ %i.au, %bb.r ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token10TokenCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringEEBN_(ptr noalias noundef align 8 dereferenceable(80) %i.e) #22
          to label %.thread204 unwind label %bb.l, !noalias !1184

bb.p:                                             ; preds = %.noexc79
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !1190
  %i.as = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1457) 72, i64 noundef range(i64 1, 9) 8) #25, !noalias !1190 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.q, label %bb.t, !prof !1100

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #23
          to label %.noexc36.i unwind label %bb.r, !noalias !1184

.noexc36.i:                                       ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential25ClientSecretOAuthProviderEBK_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d) #22
          to label %.body34.i unwind label %bb.s, !noalias !1184

bb.s:                                             ; preds = %bb.r
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !1184
  unreachable

bb.t:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.as, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !1184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1184
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.515.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1184
  br label %.noexc.sink.split

bb.u:                                             ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1184
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !1184
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  invoke void @_RNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtB5_5MutexINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5token14TemporaryTokenNtNtCs6Po7BT7Nknu_5alloc6string6StringEEE3newB1z_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %.sroa.519.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43)
          to label %.noexc80 unwind label %.thread211

.noexc80:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1184
  br label %.noexc.sink.split

.thread211:                                       ; preds = %.noexc, %bb.w, %bb.u, %bb.b, %bb.e, %bb.n
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread204

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit149
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.noexc.sink.split:                                ; preds = %bb.k, %bb.t, %.noexc80
  %.sink253 = phi ptr [ inttoptr (i64 1 to ptr), %.noexc80 ], [ %i.as, %bb.t ], [ %i.af, %bb.k ]
  %.sink.ph = phi ptr [ @46, %.noexc80 ], [ @45, %bb.t ], [ @44, %bb.k ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %.sink253, ptr %i.aw, align 8, !alias.scope !1184
  br label %.noexc

.noexc:                                           ; preds = %.noexc.sink.split, %bb.b
  %.sink252.sroa.phi = phi ptr [ %.sink252.sroa.gep, %bb.b ], [ %.sink252.sroa.gep255, %.noexc.sink.split ]
  %.sink = phi ptr [ null, %bb.b ], [ %.sink.ph, %.noexc.sink.split ]
  store ptr %.sink, ptr %.sink252.sroa.phi, align 8, !alias.scope !1184
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 -9223372036854775802, ptr %i.u, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.52, ptr noundef nonnull align 8 dereferenceable(96) %i.ax, i64 96, i1 false)
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorEBI_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.u)
          to label %bb.ag unwind label %.thread211

bb.w:                                             ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 -9223372036854775802, ptr %i.u, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.52, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.52, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.52)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvXs0_CsgO8S5jLFugx_23deltalake_catalog_unityNtNtCs14kWLkQVSKO_14deltalake_core12data_catalog16DataCatalogErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_17UnityCatalogErrorE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.l)
          to label %bb.x unwind label %.thread211

bb.x:                                             ; preds = %bb.w
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !range !30, !alias.scope !1193, !noundef !3
  %i.bb = icmp eq i64 %i.ba, -9223372036854775808
  br i1 %i.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %.body81 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.y
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body81

.body81:                                          ; preds = %bb.z, %bb.ab
  %eh.lpad-body82 = phi { ptr, i32 } [ %i.be, %bb.ab ], [ %i.bc, %bb.z ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.x) #22
          to label %.body86 unwind label %bb.af

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.ct
  %.sroa.016.2 = phi i8 [ %.sroa.016.6, %bb.ct ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i ], [ 1, %bb.x ] ; 19 uses
  %i.bf = load i64, ptr %i.x, align 8, !range !30, !alias.scope !1196, !noundef !3
  %i.bg = icmp eq i64 %i.bf, -9223372036854775808
  br i1 %i.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit89, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i85 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %.body86 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i85: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit89 unwind label %bb.cu

bb.af:                                            ; preds = %bb.ep, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eg, %.thread204, %.thread, %bb.ef, %bb.ee, %.thread232, %bb.ec, %.body188, %.body182, %.body176, %.body170, %.body164, %.body158, %.body152, %.body137, %.body131, %.body125, %.body119, %.body113, %.body107, %.body101, %.body95, %bb.bc, %bb.aq, %.body86, %.body81
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

.body86:                                          ; preds = %bb.cu, %bb.ad, %.body81
  %.pn56 = phi { ptr, i32 } [ %eh.lpad-body82, %.body81 ], [ %i.fl, %bb.cu ], [ %i.bh, %bb.ad ]
  %.sroa.016.3 = phi i8 [ 1, %.body81 ], [ %.sroa.016.2, %bb.cu ], [ %.sroa.016.2, %bb.ad ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 376
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.bk) #22
          to label %.body152 unwind label %bb.af

end_hunk_0
