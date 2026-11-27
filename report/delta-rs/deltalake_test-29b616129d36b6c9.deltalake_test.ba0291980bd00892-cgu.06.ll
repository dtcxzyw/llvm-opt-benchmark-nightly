Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_test-29b616129d36b6c9.deltalake_test.ba0291980bd00892-cgu.06?download=true
inline.NumInlined: 494
inline.NumDeleted: 187
begin_hunk_0_@_RNvXsL_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source:bb.a

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load <2 x ptr>, ptr %i.o, align 8
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load <2 x ptr>, ptr %i.q, align 8
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load <2 x ptr>, ptr %i.s, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.a, %bb.a
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load <2 x ptr>, ptr %i.u, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load <2 x ptr>, ptr %i.w, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.y = phi <2 x ptr> [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.f, %bb.a ], [ %i.l, %bb.e ], [ %i.n, %bb.f ], [ %i.p, %bb.g ], [ %i.r, %bb.h ], [ %i.t, %bb.i ], [ <ptr null, ptr undef>, %bb.j ], [ %i.v, %bb.k ], [ %i.x, %bb.l ] ; 2 uses
  %i.z = extractelement <2 x ptr> %i.y, i64 0
  %i.aa = insertvalue { ptr, ptr } poison, ptr %i.z, 0
  %i.ab = extractelement <2 x ptr> %i.y, i64 1
  %i.ac = insertvalue { ptr, ptr } %i.aa, ptr %i.ab, 1
  ret { ptr, ptr } %i.ac
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtNtCsbvkFyIu7lgC_4core3fmt3numxNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !guid !517 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXsD_NtNtCsbvkFyIu7lgC_4core3fmt3numxNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXse_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impxNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXsF_NtNtCsbvkFyIu7lgC_4core3fmt3numxNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 !guid !518 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXs_NtCs4tdlwR1I4n2_7parquet6errorsNtB4_12ParquetErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #5 !guid !519 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !4
  %i.b = icmp eq i64 %i.a, 5                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5
  %.sroa.3.0 = select i1 %i.b, ptr %i.f, ptr undef
  %.sroa.0.0 = select i1 %i.b, ptr %i.d, ptr null
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsbpG6u9KFjWn_8indexmap3mapINtB4_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !520 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %i.e
  %i.g = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterB13_B1G_EECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f)
  %i.h = call noundef zeroext i1 @_RNvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB4_23LocalStorageIntegrationNtB4_18StorageIntegration11bucket_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !guid !521 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e)
  %i.f = load i64, ptr %i.b, align 8, !range !9, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.k, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.l = load i64, ptr %i.a, align 8, !range !9, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !10, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.p, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = icmp ule i64 %i.k, %i.o
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  store i64 %i.o, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %.sroa.6.0..sroa_idx, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.i, i64 %i.k, i1 false)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB4_23LocalStorageIntegrationNtB4_18StorageIntegration14copy_directory(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality !guid !526 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %6 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i16 0, ptr %6, align 8
  store i64 64000, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  store i8 0, ptr %i.f, align 2
  %7 = getelementptr inbounds nuw i8, ptr %i.e, i64 19
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %i.g, align 8
  store i8 1, ptr %7, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  call void @_RINvMs16_NtCs2pqxYH9ZEk8_3std4pathNtB7_4Path4joinReECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !527
  store i32 511, ptr %i.b, align 4, !noalias !527
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 1, ptr %i.k, align 4, !noalias !527
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i = load ptr, ptr %i.l, align 8, !alias.scope !527, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val1.i.i = load i64, ptr %i.m, align 8, !alias.scope !527, !noundef !4
  %i.n = invoke noundef ptr @_RNvMsF_NtCs2pqxYH9ZEk8_3std2fsNtB5_10DirBuilder7__create(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
          to label %bb.c unwind label %bb.b, !noalias !527 ; 2 uses

bb.b:                                             ; preds = %bb.a, %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.b ], [ %i.t, %bb.j ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #21
          to label %common.resume unwind label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !527
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.p, align 8
  store i32 1, ptr %0, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %.body, %bb.n, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.n ], [ %i.q, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsbW3aFIxube3_8fs_extra3dir4copyReRNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %i.s = load i64, ptr %i.c, align 8, !range !10, !alias.scope !528, !noundef !4
  %.not.i = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not.i, label %bb.m, label %bb.i, !prof !529

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #23
          to label %bb.k unwind label %bb.j, !noalias !528

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbW3aFIxube3_8fs_extra5error5ErrorECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #21
          to label %.body unwind label %bb.l, !noalias !528

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !528
  unreachable

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 0, ptr %0, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.m, %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.p:                                             ; preds = %.body
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB4_23LocalStorageIntegrationNtB4_18StorageIntegration8root_uri(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !535 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !537)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !537, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !537, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !538
  call void @_RNvNtNtCsbvkFyIu7lgC_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g), !noalias !538
  %i.h = load i64, ptr %i.b, align 8, !range !9, !noalias !538, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !538
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #24, !noalias !538
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !538, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !538, !noundef !4 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !538
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.m, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !538
  %i.n = load i64, ptr %i.a, align 8, !range !9, !noalias !538, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !10, !noalias !538, !noundef !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.r, align 8, !noalias !538
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #23, !noalias !538
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.r, align 8, !noalias !538, !nonnull !4, !noundef !4 ; 2 uses
  %i.u = icmp ule i64 %i.m, %i.q
  tail call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !538
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_RNvXs_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB4_23LocalStorageIntegrationNtB4_18StorageIntegration11bucket_name.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %i.k, i64 %i.m, i1 false), !noalias !538
  br label %_RNvXs_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB4_23LocalStorageIntegrationNtB4_18StorageIntegration11bucket_name.exit

_RNvXs_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB4_23LocalStorageIntegrationNtB4_18StorageIntegration11bucket_name.exit: ; preds = %bb.e, %bb.f
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !536
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.t, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !536
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.m, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @173, ptr noundef nonnull %i.c)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.g, !noalias !539

bb.g:                                             ; preds = %_RNvXs_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB4_23LocalStorageIntegrationNtB4_18StorageIntegration11bucket_name.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #21
          to label %common.resume unwind label %bb.j

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RNvXs_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB4_23LocalStorageIntegrationNtB4_18StorageIntegration11bucket_name.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfY7SmN0bPrO_14deltalake_test.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.v, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsfY7SmN0bPrO_14deltalake_test.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.j:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB4_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2X_5ErrorEEENtNtNtB2m_3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 personality ptr @rust_eh_personality !guid !540 {
bb.a:
  %.sroa.0.i = alloca [72 x i8], align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 9 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.b, ptr %i.d, align 8
  %i.e = icmp ult i64 %i.b, 115292150460684698
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(72) %.val, i64 72, i1 false)
  %.sroa.427.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %.sroa.427.0.copyload.i = load i64, ptr %.sroa.427.0..8.val.sroa_idx.i, align 8 ; 3 uses
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 range(i64 0, 115292150460684698) %i.b, i64 2)
  %.not31.i = icmp samesign ult i64 %i.b, 3
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.sroa.22.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.w, %bb.e ] ; 3 uses
  %.sroa.01.0.lcssa.i = phi i64 [ 1, %bb.b ], [ %i.ac, %bb.e ] ; 4 uses
  %i.h = add nsw i64 %i.b, -1
  %i.i = icmp eq i64 %.sroa.01.0.lcssa.i, %i.h
  br i1 %i.i, label %bb.c, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE15sift_down_rangeCsfY7SmN0bPrO_14deltalake_test.exit

bb.c:                                             ; preds = %._crit_edge.i
  %i.j = icmp ult i64 %.sroa.01.0.lcssa.i, %i.b
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.01.0.lcssa.i ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 72
  %.val16.i = load i64, ptr %i.l, align 8, !noundef !4
  %i.m = icmp slt i64 %.val16.i, %.sroa.427.0.copyload.i
  br i1 %i.m, label %bb.d, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE15sift_down_rangeCsfY7SmN0bPrO_14deltalake_test.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.22.0.lcssa.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.n, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 80, i1 false)
  br label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE15sift_down_rangeCsfY7SmN0bPrO_14deltalake_test.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.sroa.01.033.i = phi i64 [ %i.ac, %bb.e ], [ 1, %bb.b ] ; 3 uses
  %.sroa.22.032.i = phi i64 [ %i.w, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.01.033.i
  %i.p = add nuw nsw i64 %.sroa.01.033.i, 1       ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.p
  %i.s = getelementptr i8, ptr %i.o, i64 72
  %.val.i = load i64, ptr %i.s, align 8, !noundef !4
  %i.t = getelementptr i8, ptr %i.r, i64 72
  %.val14.i = load i64, ptr %i.t, align 8, !noundef !4
  %i.u = icmp sle i64 %.val14.i, %.val.i
  %i.v = zext i1 %i.u to i64
  %i.w = add nuw nsw i64 %.sroa.01.033.i, %i.v    ; 5 uses
  %i.x = icmp ult i64 %i.w, %i.b
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.w ; 2 uses
end_hunk_0
