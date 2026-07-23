inline.NumInlined: 494
inline.NumDeleted: 187
begin_hunk_0_@_RNvMs0_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB5_18IntegrationContext3new:bb.a
bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f) #25
          to label %.body unwind label %bb.ac

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.020)
  %.sroa.020.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.020, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.020.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.020, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.020, i64 48, i1 false)
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %2, ptr %.sroa.622.0..sroa_idx, align 8
  %.sroa.723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ak, ptr %.sroa.723.0..sroa_idx, align 8
  %.sroa.824.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.am, ptr %.sroa.824.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.020)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsfY7SmN0bPrO_14deltalake_test5utils18StorageIntegrationEL_EEB1k_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsfY7SmN0bPrO_14deltalake_test5utils18StorageIntegrationEL_EEB1k_.exit: ; preds = %bb.al, %bb.ak, %bb.ab
  ret void

bb.ac:                                            ; preds = %bb.aa, %.body44, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit, %.body
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ad:                                            ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.an, ptr noundef nonnull align 16 dereferenceable(96) %i.c, i64 96, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @22, ptr %i.az, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXs1_NtCs3Tb271uPz9Q_8tempfile3dirNtB5_7TempDirNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val3.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !365, !noundef !3 ; 2 uses
  %i.bb = icmp eq i64 %.val3.i, 0
  br i1 %i.bb, label %.body44, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.val2.i = load ptr, ptr %i.i, align 8, !alias.scope !365, !nonnull !3, !noundef !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, 0) %.val3.i, i64 noundef 1) #20
  br label %.body44

bb.ag:                                            ; preds = %bb.ad
  %.val1.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !365, !noundef !3 ; 2 uses
  %i.bc = icmp eq i64 %.val1.i, 0
  br i1 %i.bc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3Tb271uPz9Q_8tempfile3dir7TempDirECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !365, !nonnull !3, !noundef !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #20
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3Tb271uPz9Q_8tempfile3dir7TempDirECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3Tb271uPz9Q_8tempfile3dir7TempDirECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.ah, %bb.ag, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit57 unwind label %bb.b

bb.ai:                                            ; preds = %bb.h
  store ptr %i.s, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @24, ptr %i.be, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3Tb271uPz9Q_8tempfile3dir7TempDirECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit57: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3Tb271uPz9Q_8tempfile3dir7TempDirECsfY7SmN0bPrO_14deltalake_test.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bf = load ptr, ptr %2, align 8, !invariant.load !3 ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit57
  invoke void %i.bf(ptr noundef nonnull %1)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit57
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !29, !invariant.load !3 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsfY7SmN0bPrO_14deltalake_test5utils18StorageIntegrationEL_EEB1k_.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !range !30, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %i.bh, i64 noundef range(i64 1, 536870913) %i.bk) #20
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsfY7SmN0bPrO_14deltalake_test5utils18StorageIntegrationEL_EEB1k_.exit

bb.am:                                            ; preds = %bb.aj
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !29, !invariant.load !3 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %common.resume, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !30, !invariant.load !3
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %i.bn, i64 noundef range(i64 1, 536870913) %i.bq) #20
  br label %common.resume

common.resume:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit, %bb.am, %bb.an
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.am ], [ %i.bl, %bb.an ], [ %.pn42, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsfY7SmN0bPrO_14deltalake_test.exit ]
  resume { ptr, i32 } %common.resume.op
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCsfY7SmN0bPrO_14deltalake_test5utilsNtB5_18IntegrationContext8root_uri(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(128) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !4, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !3, !nonnull !3
  tail call void %i.f(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.b) #26
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCsbpG6u9KFjWn_8indexmap3mapINtB5_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE11insert_fullCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef align 8 dereferenceable(72) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(96) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = invoke noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false)
  call void @_RNvMs_NtCsbpG6u9KFjWn_8indexmap5innerINtB4_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE11insert_fullCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(96) %3) #21
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

.critedge:                                        ; preds = %bb.e
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.c
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(24) %2) #21
          to label %.critedge unwind label %bb.d
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2Y_5ErrorEEE3popCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i.i.i = alloca [80 x i8], align 8      ; 6 uses
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %.sroa.6 = alloca [72 x i8], align 8            ; 5 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !368, !noalias !371 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.b = icmp eq i64 %.pre, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECsfY7SmN0bPrO_14deltalake_test.exit, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.c = phi i64 [ %2, %.thread ], [ %.pre, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = add nsw i64 %i.c, -1                     ; 8 uses
  store i64 %i.e, ptr %i.d, align 8, !alias.scope !368, !noalias !371
  %i.f = load i64, ptr %1, align 8, !range !29, !alias.scope !368, !noalias !371, !noundef !3
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !368, !noalias !371, !nonnull !3, !noundef !3 ; 13 uses
  %i.j = icmp ult i64 %i.c, 115292150460684699
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.e ; 2 uses
  %.sroa.05.0.copyload.i = load i64, ptr %i.k, align 8, !noalias !373 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.57.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, i64 72, i1 false), !noalias !373
  store i64 %.sroa.05.0.copyload.i, ptr %i.a, align 8, !noalias !373
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0CsfY7SmN0bPrO_14deltalake_test.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfY7SmN0bPrO_14deltalake_test(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull %i.i, i64 noundef 10)
          to label %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECsfY7SmN0bPrO_14deltalake_test.exit.i.i unwind label %bb.e, !noalias !374

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #22, !noalias !374
  unreachable

_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false), !noalias !377
  %3 = add nsw i64 %i.c, -3
  %.not.not8.i.i.i = icmp samesign ult i64 %i.c, 4
  br i1 %.not.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECsfY7SmN0bPrO_14deltalake_test.exit.i.i
  %.sroa.12.0.lcssa.i.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECsfY7SmN0bPrO_14deltalake_test.exit.i.i ], [ %i.ai, %.lr.ph.i.i.i ] ; 5 uses
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECsfY7SmN0bPrO_14deltalake_test.exit.i.i ], [ %i.am, %.lr.ph.i.i.i ] ; 4 uses
  %i.n = add nsw i64 %i.c, -2
  %i.o = icmp eq i64 %.sroa.05.0.lcssa.i.i.i, %i.n
  br i1 %i.o, label %.thread.i.i, label %bb.f

.thread.i.i:                                      ; preds = %._crit_edge.i.i.i
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.05.0.lcssa.i.i.i ; 3 uses
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %i.p, i64 80, i1 false), !noalias !377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.p, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !377
  %i.r = icmp samesign ult i64 %.sroa.05.0.lcssa.i.i.i, %i.e
  call void @llvm.assume(i1 %i.r)
  %.sroa.416.0..sroa_idx.i.i6.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %.sroa.416.0.copyload.i.i7.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i6.i.i, align 8, !noalias !377
  br label %.lr.ph.i.i.preheader.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.0.lcssa.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.s, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.i.i.i, i64 80, i1 false), !noalias !377
  %i.t = icmp samesign ult i64 %.sroa.12.0.lcssa.i.i.i, %i.e
  call void @llvm.assume(i1 %i.t)
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.416.0.copyload.i.i.i.i = load i64, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !377 ; 2 uses
  %.not18.i.i.i.i = icmp eq i64 %.sroa.12.0.lcssa.i.i.i, 0
  br i1 %.not18.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsfY7SmN0bPrO_14deltalake_test.exit.i.i, label %.lr.ph.i.i.preheader.i.i

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.f, %.thread.i.i
  %.sroa.416.0.copyload.i.i10.i.i = phi i64 [ %.sroa.416.0.copyload.i.i7.i.i, %.thread.i.i ], [ %.sroa.416.0.copyload.i.i.i.i, %bb.f ] ; 3 uses
  %.sroa.12.1.i9.i.i = phi i64 [ %.sroa.05.0.lcssa.i.i.i, %.thread.i.i ], [ %.sroa.12.0.lcssa.i.i.i, %bb.f ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.preheader.i.i
  %.sroa.13.019.i.i.i.i = phi i64 [ %i.v, %bb.g ], [ %.sroa.12.1.i9.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.u = add nsw i64 %.sroa.13.019.i.i.i.i, -1
  %i.v = lshr i64 %i.u, 1                         ; 4 uses
  %i.w = icmp samesign ult i64 %i.v, %i.e
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.v ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 72
  %.val1.i.i.i.i = load i64, ptr %i.y, align 8, !noalias !377, !noundef !3
  %.not17.i.i.i.i = icmp sgt i64 %.val1.i.i.i.i, %.sroa.416.0.copyload.i.i10.i.i
  br i1 %.not17.i.i.i.i, label %bb.g, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsfY7SmN0bPrO_14deltalake_test.exit.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.13.019.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(80) %i.x, i64 80, i1 false), !noalias !377
  %.not.i.i.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i.i.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsfY7SmN0bPrO_14deltalake_test.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECsfY7SmN0bPrO_14deltalake_test.exit.i.i, %.lr.ph.i.i.i
  %.sroa.05.010.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECsfY7SmN0bPrO_14deltalake_test.exit.i.i ] ; 3 uses
  %.sroa.12.09.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core10intrinsics25typed_swap_nonoverlappingINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2B_5ErrorEEECsfY7SmN0bPrO_14deltalake_test.exit.i.i ]
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.05.010.i.i.i
  %i.ab = add nuw nsw i64 %.sroa.05.010.i.i.i, 1  ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.e
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.aa, i64 72
  %.val.i.i.i = load i64, ptr %i.ae, align 8, !noalias !377, !noundef !3
  %i.af = getelementptr i8, ptr %i.ad, i64 72
  %.val17.i.i.i = load i64, ptr %i.af, align 8, !noalias !377, !noundef !3
  %i.ag = icmp sle i64 %.val17.i.i.i, %.val.i.i.i
  %i.ah = zext i1 %i.ag to i64
  %i.ai = add nuw nsw i64 %.sroa.05.010.i.i.i, %i.ah ; 4 uses
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.12.09.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, ptr noundef nonnull align 8 dereferenceable(80) %i.aj, i64 80, i1 false), !noalias !377
  %i.al = shl nuw nsw i64 %i.ai, 1                ; 2 uses
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %.not.not.not.i.i.i = icmp samesign ult i64 %i.al, %3
  br i1 %.not.not.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsfY7SmN0bPrO_14deltalake_test.exit.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i, %bb.f
  %.sroa.416.0.copyload.i.i11.i.i = phi i64 [ %.sroa.416.0.copyload.i.i.i.i, %bb.f ], [ %.sroa.416.0.copyload.i.i10.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.416.0.copyload.i.i10.i.i, %bb.g ]
  %.sroa.13.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.f ], [ 0, %bb.g ], [ %.sroa.13.019.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %.sroa.13.0.lcssa.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.an, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i.i, i64 72, i1 false), !noalias !377
  %.sroa.5.0..sroa_idx1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  store i64 %.sroa.416.0.copyload.i.i11.i.i, ptr %.sroa.5.0..sroa_idx1.i.i.i.i, align 8, !noalias !377
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.sroa.012.0.copyload13.pre = load i64, ptr %i.a, align 8, !noalias !368
  br label %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0CsfY7SmN0bPrO_14deltalake_test.exit.i

_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0CsfY7SmN0bPrO_14deltalake_test.exit.i: ; preds = %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsfY7SmN0bPrO_14deltalake_test.exit.i.i, %bb.c
  %.sroa.012.0.copyload13 = phi i64 [ %.sroa.012.0.copyload13.pre, %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE19sift_down_to_bottomCsfY7SmN0bPrO_14deltalake_test.exit.i.i ], [ %.sroa.05.0.copyload.i, %bb.c ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.57.0..sroa_idx.i, i64 72, i1 false), !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !373
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECsfY7SmN0bPrO_14deltalake_test.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc11collections11binary_heap7PeekMutINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB3g_5ErrorEEEECsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.b, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0CsfY7SmN0bPrO_14deltalake_test.exit.i
  %.sroa.012.0 = phi i64 [ %.sroa.012.0.copyload13, %_RNCNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB7_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB34_5ErrorEEE3pop0CsfY7SmN0bPrO_14deltalake_test.exit.i ], [ -9223372036854775789, %bb.b ] ; 2 uses
  %i.ao = icmp ne i64 %.sroa.012.0, -9223372036854775789
  call void @llvm.assume(i1 %i.ao)
  store i64 %.sroa.012.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE4pushCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.i = alloca [72 x i8], align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 8 uses
  %i.c = icmp ult i64 %i.b, 115292150460684698
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load i64, ptr %0, align 8, !range !29, !alias.scope !379, !noalias !382, !noundef !3
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2D_5ErrorEEE8grow_oneB2D_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit unwind label %bb.c, !noalias !382

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull align 8 dereferenceable(80) %1) #21
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !379, !noalias !382, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  %i.k = add nuw nsw i64 %i.b, 1
  store i64 %i.k, ptr %i.a, align 8, !alias.scope !379, !noalias !382
  %.val = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.b ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false)
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.416.0.copyload.i = load i64, ptr %.sroa.416.0..sroa_idx.i, align 8 ; 2 uses
  %.not18.i = icmp eq i64 %i.b, 0
  br i1 %.not18.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE7sift_upCsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit, %bb.f
  %.sroa.13.019.i = phi i64 [ %i.n, %bb.f ], [ %i.b, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit ] ; 3 uses
  %i.m = add nsw i64 %.sroa.13.019.i, -1
  %i.n = lshr i64 %i.m, 1                         ; 4 uses
  %i.o = icmp samesign ule i64 %i.n, %i.b
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.n ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 72
  %.val1.i = load i64, ptr %i.q, align 8, !noundef !3
  %.not17.i = icmp sgt i64 %.val1.i, %.sroa.416.0.copyload.i
  br i1 %.not17.i, label %bb.f, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE7sift_upCsfY7SmN0bPrO_14deltalake_test.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.13.019.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.r, ptr noundef nonnull align 8 dereferenceable(80) %i.p, i64 80, i1 false)
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE7sift_upCsfY7SmN0bPrO_14deltalake_test.exit, label %.lr.ph.i

_RNvMs9_NtNtCs6Po7BT7Nknu_5alloc11collections11binary_heapINtB5_10BinaryHeapINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB32_5ErrorEEE7sift_upCsfY7SmN0bPrO_14deltalake_test.exit: ; preds = %.lr.ph.i, %bb.f, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit
  %.sroa.13.0.lcssa.i = phi i64 [ 0, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2w_5ErrorEEE8push_mutCsfY7SmN0bPrO_14deltalake_test.exit ], [ 0, %bb.f ], [ %.sroa.13.019.i, %.lr.ph.i ]
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.13.0.lcssa.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i, i64 72, i1 false)
  %.sroa.5.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store i64 %.sroa.416.0.copyload.i, ptr %.sroa.5.0..sroa_idx1.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXNtCsbpG6u9KFjWn_8indexmap5innerINtB2_4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsfY7SmN0bPrO_14deltalake_test(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load <2 x i64>, ptr %i.a, align 8
  store <2 x i64> %i.c, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCsfY7SmN0bPrO_14deltalake_test5utilsNtB2_23LocalStorageIntegrationNtNtCsbvkFyIu7lgC_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtCs3Tb271uPz9Q_8tempfile3dir7tempdir(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
end_hunk_0
