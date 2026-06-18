inline.NumInlined: 5477
inline.NumDeleted: 1897
begin_hunk_0_@_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtBb_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB19_8schedule16BlockingScheduleE8completeCs2VbMhdeEr66_16delta_benchmarks:bb.a
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %bb.d
  %i.g = invoke noundef i64 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State26unset_waker_after_complete(ptr noundef nonnull align 8 %0)
          to label %.noexc6 unwind label %bb.f

.noexc6:                                          ; preds = %.noexc5
  %i.h = and i64 %i.g, 8
  %.not2.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not2.i.i.i.i, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %.noexc6
  invoke void @_RNvMs6_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc5, %bb.d, %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.h unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = extractvalue { ptr, ptr } %i.k, 0        ; 4 uses
  %i.n = extractvalue { ptr, ptr } %i.k, 1        ; 6 uses
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.p = load ptr, ptr %i.n, align 8, !invariant.load !17 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.p(ptr noundef nonnull %i.m)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !313, !invariant.load !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) %i.u) #39
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !95, !invariant.load !17 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !313, !invariant.load !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) %i.aa) #39
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks.exit5.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.l
  resume { ptr, i32 } %i.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.noexc6, %.noexc, %bb.b, %bb.e, %bb.h, %bb.k, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i
  %i.ab = call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef 1)
  br i1 %i.ab, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  ret void

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCNCINvNtNtB1o_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB2a_8schedule16BlockingScheduleEEECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %0)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtBb_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB19_8schedule16BlockingScheduleE8shutdownCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtBb_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCNCINvNtNtB1o_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB2a_8schedule16BlockingScheduleEEECs2VbMhdeEr66_16delta_benchmarks(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtBb_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtBb_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB13_8schedule16BlockingScheduleE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtB8_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB15_8schedule16BlockingScheduleECs2VbMhdeEr66_16delta_benchmarks.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtB8_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB15_8schedule16BlockingScheduleECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtB8_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB15_8schedule16BlockingScheduleECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ undef, %bb.g ], [ %i.k, %bb.h ]
  %.sroa.6.0.i = phi ptr [ null, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !8407, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtBb_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB13_8schedule16BlockingScheduleE9set_stageCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtBb_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB19_8schedule16BlockingScheduleE8completeCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtBb_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtBb_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtB8_2fs10create_dir10create_dirRNtNtCs2pqxYH9ZEk8_3std4path7PathBufE00ENtNtB15_8schedule16BlockingScheduleECs2VbMhdeEr66_16delta_benchmarks.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18908)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !18908 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18911)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !84

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18914
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !18914
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !18914
  %i.i = load i64, ptr %i.a, align 8, !range !260, !noalias !18914, !noundef !17
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !188, !noalias !18914, !noundef !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !18914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18914
  br label %bb.f

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !18914, !nonnull !17, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18914
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !18914
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !18914
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.b
  %.sroa.3.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.n, %bb.e ], [ undef, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.l, %bb.e ], [ 0, %bb.c ]
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #40
  unreachable

bb.g:                                             ; preds = %bb.a, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs2VbMhdeEr66_16delta_benchmarks.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #7 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 3 uses
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %5

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18915)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !84

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 5 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18915
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.h, align 8, !alias.scope !18915
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !18915
  %i.i = load i64, ptr %i.a, align 8, !range !260, !noalias !18915, !noundef !17
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs2VbMhdeEr66_16delta_benchmarks.exit

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !188, !noalias !18915, !noundef !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !18915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18915
  br label %bb.f

_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !18915, !nonnull !17, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18915
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !18915
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !18915
  br label %6

5:                                                ; preds = %bb.a
  %spec.select = select i1 %i.b, i64 -1, i64 %i.c
  br label %6

6:                                                ; preds = %5, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.06.0 = phi i64 [ %spec.select, %5 ], [ %i.f, %_RNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs2VbMhdeEr66_16delta_benchmarks.exit ]
  %7 = sub i64 %.sroa.06.0, %1
  %8 = icmp ule i64 %2, %7
  tail call void @llvm.assume(i1 %8)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.b, %6
  %.sroa.3.0 = phi i64 [ undef, %6 ], [ undef, %bb.c ], [ %i.n, %bb.e ], [ undef, %bb.b ]
  %.sroa.0.0 = phi i64 [ -9223372036854775807, %6 ], [ 0, %bb.c ], [ %i.l, %bb.e ], [ 0, %bb.b ]
  %i.q = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.r = insertvalue { i64, i64 } %i.q, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.r
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs4s1dLWtJWRF_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBT_4util2id2IdEE8grow_oneCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !95, !noundef !17 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18918)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18918
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !18918
  call fastcc void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !18918
  %i.f = load i64, ptr %i.a, align 8, !range !260, !noalias !18918, !noundef !17
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !188, !noalias !18918, !noundef !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !18918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18918
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !18918, !nonnull !17, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18918
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !18918
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !18918
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E10push_frontCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8, !noundef !17  ; 4 uses
  %i.d = icmp eq ptr %i.c, %i.b
  br i1 %i.d, label %bb.c, label %bb.b, !prof !18921

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.c, ptr %i.f, align 8
  store ptr null, ptr %i.e, align 8
  %.not1 = icmp eq ptr %i.c, null
  br i1 %.not1, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedINtNtB4_6option6OptionINtNtNtB4_3ptr8non_null7NonNullINtNtNtCskQDtHcQtBkN_5tokio4util17idle_notified_set9ListEntryINtNtNtNtB1K_7runtime4task4join10JoinHandleTjINtNtB4_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEEEBM_ECs5wg436RVUAP_24datafusion_physical_plan(i8 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #42
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  store ptr %i.b, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noundef !17
  %.not2 = icmp eq ptr %i.i, null
  br i1 %.not2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  ret void

bb.g:                                             ; preds = %bb.e
  store ptr %i.b, ptr %i.h, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E6removeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !17 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !noundef !17 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.e, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !noundef !17
  %.not6 = icmp eq ptr %i.f, %1
  br i1 %.not6, label %bb.e, label %bb.j

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.g = phi ptr [ %i.i, %bb.e ], [ %i.d, %bb.b ] ; 2 uses
  %.not7 = icmp eq ptr %i.g, null
  br i1 %.not7, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noundef !17 ; 2 uses
  store ptr %i.i, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.a, align 8, !noundef !17
  store ptr %i.k, ptr %i.j, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noundef !17
  %.not9 = icmp eq ptr %i.m, %1
  br i1 %.not9, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.i, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.n = tail call noundef nonnull ptr @_RNvXs6_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtB7_11linked_list4Link8from_rawCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %1)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.o = load ptr, ptr %i.a, align 8, !noundef !17
  store ptr %i.o, ptr %i.l, align 8
  br label %bb.h

bb.j:                                             ; preds = %bb.g, %bb.c, %bb.h
  %.sroa.0.0 = phi ptr [ %i.n, %bb.h ], [ null, %bb.c ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtB7_17idle_notified_set9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEEB13_E8pop_backCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !17 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !17 ; 3 uses
  store ptr %i.d, ptr %i.a, align 8
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.f
  %.sroa.0.0 = phi ptr [ %i.f, %bb.f ], [ null, %bb.a ]
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.e, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.f = tail call noundef nonnull ptr @_RNvXs6_NtNtCskQDtHcQtBkN_5tokio4util17idle_notified_setINtB5_9ListEntryINtNtNtNtB9_7runtime4task4join10JoinHandleTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEEENtNtB7_11linked_list4Link8from_rawCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.b)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtNtCskQDtHcQtBkN_5tokio4util11linked_listINtB5_10LinkedListINtNtNtB9_7runtime4task4TaskINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtB18_9scheduler14current_thread6HandleEENtNtB16_4core6HeaderE10push_frontCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8, !noundef !17  ; 5 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.c, label %bb.b, !prof !18921

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !17, !align !187, !noundef !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load i64, ptr %i.f, align 8, !noundef !17
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.b, ptr %i.i, align 8
  %i.j = load ptr, ptr %i.d, align 8, !nonnull !17, !align !187, !noundef !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i64, ptr %i.k, align 8, !noundef !17
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  store ptr null, ptr %i.m, align 8
  %.not1 = icmp eq ptr %i.b, null
  br i1 %.not1, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
end_hunk_0
