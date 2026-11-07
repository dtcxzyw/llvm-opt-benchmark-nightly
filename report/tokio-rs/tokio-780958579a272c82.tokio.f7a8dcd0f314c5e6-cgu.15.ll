Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.15?download=true
inline.NumInlined: 599
inline.NumDeleted: 313
begin_hunk_0_@_RINvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_ioNtB5_11ScheduledIo13set_readinessNCNvMNtB7_6driverNtB1w_6Driver4turn0EBb_:bb.a
  %i.f = and i64 %i.d, 255
  %i.g = and i64 %.sroa.06.0.us.i, 63
  %i.h = or i64 %i.c, %i.g
  %i.i = tail call noundef i64 @_RNvMNtNtCslghKHtsL3a4_5tokio4util3bitNtB2_4Pack4pack(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @0, i64 noundef %i.f, i64 noundef %i.h), !noalias !25
  %i.j = cmpxchg weak ptr %i.a, i64 %.sroa.06.0.us.i, i64 %i.i acq_rel acquire, align 8, !noalias !25 ; 2 uses
  %.sroa.18.0.in.i.us.i = extractvalue { i64, i1 } %i.j, 1
  %.sroa.01.0.i10.us.i = extractvalue { i64, i1 } %i.j, 0
  br i1 %.sroa.18.0.in.i.us.i, label %_RINvMs16_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB7_6AtomicjE10try_updateNCINvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_ioNtB1f_11ScheduledIo13set_readinessNCNvMNtB1h_6driverNtB2H_6Driver4turn0E0EB1l_.exit, label %.split.us.i

.split.i:                                         ; preds = %bb.a, %.split.i
  %.sroa.06.0.i = phi i64 [ %.sroa.01.0.i10.i, %.split.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.k = lshr i64 %.sroa.06.0.i, 16
  %i.l = add nuw nsw i64 %i.k, 1
  %i.m = and i64 %i.l, 32767
  %i.n = and i64 %.sroa.06.0.i, 63
  %i.o = or i64 %i.c, %i.n
  %i.p = tail call noundef i64 @_RNvMNtNtCslghKHtsL3a4_5tokio4util3bitNtB2_4Pack4pack(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @0, i64 noundef %i.m, i64 noundef %i.o), !noalias !25
  %i.q = cmpxchg weak ptr %i.a, i64 %.sroa.06.0.i, i64 %i.p acq_rel acquire, align 8, !noalias !25 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.q, 1
  %.sroa.01.0.i10.i = extractvalue { i64, i1 } %i.q, 0
  br i1 %.sroa.18.0.in.i.i, label %_RINvMs16_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB7_6AtomicjE10try_updateNCINvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_ioNtB1f_11ScheduledIo13set_readinessNCNvMNtB1h_6driverNtB2H_6Driver4turn0E0EB1l_.exit, label %.split.i

_RINvMs16_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB7_6AtomicjE10try_updateNCINvMs_NtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_ioNtB1f_11ScheduledIo13set_readinessNCNvMNtB1h_6driverNtB2H_6Driver4turn0E0EB1l_.exit: ; preds = %.split.i, %.split.us.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtCslghKHtsL3a4_5tokio7runtime4park5InnerEBM_(ptr nofree noundef readnone captures(none) %0) unnamed_addr #1 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCs1xwejQucwHj_5alloc4sync11data_offsetNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleEBO_(ptr nofree noundef readnone captures(none) %0) unnamed_addr #1 {
bb.a:
  ret i64 128
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !28, !noundef !8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECslghKHtsL3a4_5tokio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !28, !noundef !8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !28 ; 6 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECslghKHtsL3a4_5tokio.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.f = load ptr, ptr %.val1.i, align 8, !invariant.load !8, !noalias !28 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.f(ptr noundef nonnull %.val.i)
          to label %bb.e unwind label %bb.f, !noalias !28

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !9, !invariant.load !8, !noalias !28 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECslghKHtsL3a4_5tokio.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !10, !invariant.load !8, !noalias !28
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.h, i64 noundef range(i64 1, 536870913) %i.k) #20, !noalias !28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECslghKHtsL3a4_5tokio.exit

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !9, !invariant.load !8, !noalias !28 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit5.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !10, !invariant.load !8, !noalias !28
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.n, i64 noundef range(i64 1, 536870913) %i.q) #20, !noalias !28
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit5.i.i.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCslghKHtsL3a4_5tokio.exit5.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.f
  resume { ptr, i32 } %i.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.a, %bb.b, %bb.e, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !8
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECslghKHtsL3a4_5tokio.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit3.i.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXs1_NtNtNtCsaL1QbXo9JQH_3std3sys6thread4unixNtB5_6ThreadNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6thread4unix6ThreadECslghKHtsL3a4_5tokio.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !61, !nonnull !8, !noundef !8
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !62
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i.i unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6thread4unix6ThreadECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !67, !nonnull !8, !noundef !8
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !68
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit3.i.i

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6thread4unix6ThreadECslghKHtsL3a4_5tokio.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit3.i.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %bb.g, %bb.d, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !71, !nonnull !8, !noundef !8
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !72
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECslghKHtsL3a4_5tokio.exit.i.i

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.k) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECslghKHtsL3a4_5tokio.exit.i.i unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit3.i.i: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6thread4unix6ThreadECslghKHtsL3a4_5tokio.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !75, !nonnull !8, !noundef !8
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !76
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECslghKHtsL3a4_5tokio.exit

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit3.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.p) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECslghKHtsL3a4_5tokio.exit

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECslghKHtsL3a4_5tokio.exit.i.i: ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECslghKHtsL3a4_5tokio.exit.i.i
  resume { ptr, i32 } %.pn.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_(ptr %.0.val) unnamed_addr #2 {
bb.a:
  %magicptr = ptrtoint ptr %.0.val to i64
  %magicptr.off = add i64 %magicptr, -1
  %switch = icmp ult i64 %magicptr.off, -2
  br i1 %switch, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEBH_.exit: ; preds = %bb.a, %bb.c, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !79
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEBH_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 16, i64 noundef 8) #20, !noalias !79
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEEB13_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !8 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = icmp eq i64 %i.a, 0
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.e = load ptr, ptr %i.c, align 8, !alias.scope !93, !nonnull !8, !noundef !8
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !93
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.c) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !96, !nonnull !8, !noundef !8
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !96
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.c) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEEB15_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !8
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs0_NtNtNtCslghKHtsL3a4_5tokio7runtime7context7currentNtB5_15SetCurrentGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEEB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #26
          to label %bb.k unwind label %bb.j

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.d = load i64, ptr %0, align 8, !range !11, !alias.scope !112, !noundef !8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !116, !nonnull !8, !noundef !8
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !117
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.f) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.k = load ptr, ptr %i.f, align 8, !alias.scope !120, !nonnull !8, !noundef !8
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !121
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.f) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15SetCurrentGuardEBJ_.exit

bb.j:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.k:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB2U_4SyncEL_RNtNtBG_5alloc6GlobalEEB1Q_(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBS_6marker4SendNtB2H_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBS_6marker4SendNtB2H_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1D_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !8
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !10, !invariant.load !8
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 8) ; 3 uses
  %i.j = add nuw i64 %i.f, 15
  %i.k = add nuw i64 %i.j, %i.i
  %i.l = sub nsw i64 0, %i.i
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBS_6marker4SendNtB2H_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1D_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.m, i64 noundef range(i64 1, 536870913) %i.i) #20
  br label %_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBS_6marker4SendNtB2H_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1D_.exit

_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBS_6marker4SendNtB2H_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1D_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakDINtNtNtB4_3ops8function2FnuEp6OutputNtNtBG_6string6StringNtNtB4_6marker4SendNtB28_4SyncEL_RNtNtBG_5alloc6GlobalEECslghKHtsL3a4_5tokio(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputNtNtB7_6string6StringNtNtBP_6marker4SendNtB1V_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBN_4drop4Drop4dropCslghKHtsL3a4_5tokio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputNtNtB7_6string6StringNtNtBP_6marker4SendNtB1V_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBN_4drop4Drop4dropCslghKHtsL3a4_5tokio.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !9, !invariant.load !8
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !10, !invariant.load !8
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 8) ; 3 uses
  %i.j = add nuw i64 %i.f, 15
  %i.k = add nuw i64 %i.j, %i.i
  %i.l = sub nsw i64 0, %i.i
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputNtNtB7_6string6StringNtNtBP_6marker4SendNtB1V_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBN_4drop4Drop4dropCslghKHtsL3a4_5tokio.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.m, i64 noundef range(i64 1, 536870913) %i.i) #20
  br label %_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputNtNtB7_6string6StringNtNtBP_6marker4SendNtB1V_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBN_4drop4Drop4dropCslghKHtsL3a4_5tokio.exit

_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputNtNtB7_6string6StringNtNtBP_6marker4SendNtB1V_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBN_4drop4Drop4dropCslghKHtsL3a4_5tokio.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB1O_4SyncEL_RNtNtBG_5alloc6GlobalEECslghKHtsL3a4_5tokio(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputuNtNtBP_6marker4SendNtB1B_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBN_4drop4Drop4dropCslghKHtsL3a4_5tokio.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks9TaskHooksEBH_:bb.a
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.f) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit2 unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !162, !noundef !8 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit3, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit
  %i.n = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !163
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit3

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.k) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit3: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit2: ; preds = %bb.e, %bb.d, %bb.f
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6config6ConfigEBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !206, !noundef !8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !207
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputuNtNtBO_6marker4SendNtB1A_4SyncEL_E9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.a) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !208, !noundef !8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !209
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit5

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputuNtNtBO_6marker4SendNtB1A_4SyncEL_E9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.g) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit5 unwind label %bb.s

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !210, !noundef !8 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit7, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit
  %i.o = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !211
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit7

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputuNtNtBO_6marker4SendNtB1A_4SyncEL_E9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.l) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit7 unwind label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit5: ; preds = %bb.e, %bb.d, %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.f, %bb.f ], [ %i.f, %bb.d ], [ %i.f, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !212, !noundef !8 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit5
  %i.t = atomicrmw add ptr %i.r, i64 -1 release, align 8, !noalias !213
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.q) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit unwind label %bb.s

bb.k:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit5

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit7: ; preds = %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !214, !noundef !8 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit10, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit7
  %i.z = atomicrmw add ptr %i.x, i64 -1 release, align 8, !noalias !215
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit10

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.w) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit10 unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit: ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit5, %bb.j, %bb.p
  %.pn2 = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %.pn, %bb.j ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit5 ], [ %.pn, %bb.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !216, !noundef !8 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit12, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit
  %i.ae = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !noalias !217
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit12

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.ab) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit12 unwind label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit10: ; preds = %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnuEp6OutputuNtNtB4_6marker4SendNtB29_4SyncEL_EEECslghKHtsL3a4_5tokio.exit7, %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !218, !noundef !8 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit13, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit10
  %i.ak = atomicrmw add ptr %i.ai, i64 -1 release, align 8, !noalias !219
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit13

bb.r:                                             ; preds = %bb.q
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.ah) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit13

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit13: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit10, %bb.q, %bb.r
  ret void

bb.s:                                             ; preds = %bb.o, %bb.j, %bb.f
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit12: ; preds = %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtB4_6marker4SendNtB3f_4SyncEL_EEEB2b_.exit, %bb.o
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver6HandleEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver8IoHandleEBH_(ptr noalias nofree noundef align 8 dereferenceable(72) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val2 = load ptr, ptr %i.b, align 8, !noundef !8
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_(ptr %.val2) #26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val6 = load i32, ptr %i.c, align 8, !range !15, !noundef !8
  %i.d = icmp eq i32 %.val6, -1
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time6handle6HandleEEB15_.exit, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.e, align 8, !noundef !8 ; 4 uses
  %magicptr.i = ptrtoint ptr %.val to i64
  %magicptr.off.i = add i64 %magicptr.i, -1
  %switch.i = icmp ult i64 %magicptr.off.i, -2
  br i1 %switch.i, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !222
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 16, i64 noundef 8) #20, !noalias !222
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit

bb.f:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val5 = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef 6240, i64 noundef 8) #20
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time6handle6HandleEEB15_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit: ; preds = %bb.e, %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val4 = load i32, ptr %i.j, align 8, !range !15, !noundef !8
  %i.k = icmp eq i32 %.val4, -1
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time6handle6HandleEEB15_.exit7, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val3 = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 6240, i64 noundef 8) #20
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time6handle6HandleEEB15_.exit7

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time6handle6HandleEEB15_.exit7: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEEB13_.exit, %bb.g
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time6handle6HandleEEB15_.exit: ; preds = %bb.f, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver7IoStackEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !noundef !8
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6DriverEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !237, !nonnull !8, !noundef !8 ; 3 uses
  %i.d = icmp eq ptr %.val1.i, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEBH_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !238
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEBH_.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef 16, i64 noundef 8) #20, !noalias !238
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEBH_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !237, !nonnull !8, !noundef !8 ; 3 uses
  %i.i = icmp eq ptr %.val.i, inttoptr (i64 -1 to ptr)
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime7process6DriverEBH_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !noalias !239
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime7process6DriverEBH_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 16, i64 noundef 8) #20, !noalias !239
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime7process6DriverEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6signal6HandleEBH_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  resume { ptr, i32 } %i.b

bb.i:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !243, !nonnull !8, !noundef !8
  %i.o = atomicrmw add ptr %i.n, i64 -1 release, align 8, !noalias !243
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime7process6DriverEBH_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCslghKHtsL3a4_5tokio7runtime4park5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.m) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime7process6DriverEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime7process6DriverEBH_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6driver8IoHandleEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !8
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i = load i32, ptr %i.c, align 8, !range !16, !alias.scope !252, !noundef !8
  %i.d = tail call noundef i32 @close(i32 noundef %.val.i) #20, !noalias !252 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCshr7Cxz41BpA_8lock_api5mutex5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_set6SyncedEEB2b_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCshr7Cxz41BpA_8lock_api5mutex5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_set6SyncedEEB2b_.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io6driver6HandleEBJ_.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCshr7Cxz41BpA_8lock_api5mutex5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_set6SyncedEEB2b_.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.h, %bb.e ]
  %.val3.i = load i32, ptr %i.a, align 4, !range !16, !alias.scope !252, !noundef !8
  %i.i = tail call noundef i32 @close(i32 noundef %.val3.i) #20 ; 0 uses
  resume { ptr, i32 } %.pn.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io6driver6HandleEBJ_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCshr7Cxz41BpA_8lock_api5mutex5MutexNtNtCsfC2LXmwPSoN_11parking_lot9raw_mutex8RawMutexNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io16registration_set6SyncedEEB2b_.exit.i.i
  %.val2.i = load i32, ptr %i.a, align 4, !range !16, !alias.scope !252, !noundef !8
  %i.j = tail call noundef i32 @close(i32 noundef %.val2.i) #20 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime4park12UnparkThreadEBH_.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.k = load ptr, ptr %0, align 8, !alias.scope !256, !nonnull !8, !noundef !8
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !256
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime4park12UnparkThreadEBH_.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCslghKHtsL3a4_5tokio7runtime4park5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime4park12UnparkThreadEBH_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime4park12UnparkThreadEBH_.exit: ; preds = %bb.h, %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io6driver6HandleEBJ_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime6handle6HandleEBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.a = load i64, ptr %0, align 8, !range !7, !alias.scope !267, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !270, !nonnull !8, !noundef !8
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !270
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !273, !nonnull !8, !noundef !8
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !273
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler6HandleEBH_.exit
end_hunk_1
