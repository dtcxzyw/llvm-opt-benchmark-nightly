Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_RINvNtCs8i1Thb8U8hr_12futures_task5waker12wake_arc_rawNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierECs63DIHKhvmTb_10lance_core:bb.a
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RNvYNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierNtNtCs8i1Thb8U8hr_12futures_task8arc_wake7ArcWake4wakeCs63DIHKhvmTb_10lance_core.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierE9drop_slowCskTBvlRM5ILY_4moka(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RNvYNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierNtNtCs8i1Thb8U8hr_12futures_task8arc_wake7ArcWake4wakeCs63DIHKhvmTb_10lance_core.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierEECs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c

_RNvYNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierNtNtCs8i1Thb8U8hr_12futures_task8arc_wake7ArcWake4wakeCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: alwaysinline nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RINvNtCs8i1Thb8U8hr_12futures_task5waker13clone_arc_rawNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierECs63DIHKhvmTb_10lance_core(ptr noundef %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RINvNtCs8i1Thb8U8hr_12futures_task5waker17increase_refcountNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierECs63DIHKhvmTb_10lance_core.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RINvNtCs8i1Thb8U8hr_12futures_task5waker17increase_refcountNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.a
  %i.d = insertvalue { ptr, ptr } { ptr @93, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs8i1Thb8U8hr_12futures_task5waker19wake_by_ref_arc_rawNtNtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6shared8NotifierECs63DIHKhvmTb_10lance_core(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvXsc_NtNtNtCs9p5Dg9WVwvP_12futures_util6future6future6sharedNtB5_8NotifierNtNtCs8i1Thb8U8hr_12futures_task8arc_wake7ArcWake11wake_by_ref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs91CWldrXK7B_3log13___private_api3loguNtB2_12GlobalLoggerECs63DIHKhvmTb_10lance_core(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 2, 5) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1214, !nonnull !24, !align !51, !noundef !24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1214, !noundef !24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1214, !nonnull !24, !noundef !24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1214, !noundef !24
  %i.k = load ptr, ptr %3, align 8, !alias.scope !1214, !nonnull !24, !noundef !24
  %i.l = load ptr, ptr %i.d, align 8, !noalias !1214, !nonnull !24, !noundef !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noalias !1214, !noundef !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i32, ptr %i.o, align 8, !noalias !1214, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1214
  store i64 0, ptr %i.b, align 8, !noalias !1214
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !noalias !1214
  %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.0.sroa.3.sroa.3.0..sroa.0.sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !1214
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !1214
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.l, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !noalias !1214
  %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.n, ptr %.sroa.0.sroa.6.sroa.3.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !1214
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1214
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.k, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1214
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.j, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !1214
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i32 1, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !1214
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  store i32 %i.p, ptr %.sroa.11.0..sroa_idx.i, align 4, !noalias !1214
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %0, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !1214
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %1, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !1214
  call void @_RNvXs0_NtCs91CWldrXK7B_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !noalias !1214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1214
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueAINtNtB4_6option6OptionTNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB13_5quick10QuickEntryEEj2_EB15_(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1240, !noundef !24 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB12_5quick10QuickEntryEEEB14_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !1241
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB12_5quick10QuickEntryEEEB14_.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs2bHstFFhpHt_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB12_5quick10QuickEntryEEEB14_.exit.i unwind label %.lr.ph.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB12_5quick10QuickEntryEEEB14_.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1242)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1243, !noundef !24 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtB4_6option6OptionTNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB13_5quick10QuickEntryEEEB15_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB12_5quick10QuickEntryEEEB14_.exit.i
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !1244
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtB4_6option6OptionTNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB13_5quick10QuickEntryEEEB15_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs2bHstFFhpHt_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtB4_6option6OptionTNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB13_5quick10QuickEntryEEEB15_.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1245, !noundef !24 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  br i1 %i.n, label %._crit_edge.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !1247
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %._crit_edge.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCs2bHstFFhpHt_17datafusion_common(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %._crit_edge.i unwind label %bb.h

._crit_edge.i:                                    ; preds = %bb.g, %bb.f, %.lr.ph.i
  resume { ptr, i32 } %i.k

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtB4_6option6OptionTNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB13_5quick10QuickEntryEEEB15_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs63DIHKhvmTb_10lance_core5cache3key16InternalCacheKeyNtNtB12_5quick10QuickEntryEEEB14_.exit.i, %bb.d, %bb.e
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueATNtNtCs40k4W9msRzi_5alloc6string6StringBD_Ej1_ECs63DIHKhvmTb_10lance_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !1259 ; 2 uses
  %i.a = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1259, !nonnull !24, !noundef !24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !1259
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  %.val.i4.i.i = load i64, ptr %i.c, align 8, !alias.scope !1261 ; 2 uses
  %i.d = icmp eq i64 %.val.i4.i.i, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs63DIHKhvmTb_10lance_core.exit.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i5.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1261, !nonnull !24, !noundef !24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i, i64 noundef %.val.i4.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !1261
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs63DIHKhvmTb_10lance_core.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs63DIHKhvmTb_10lance_core.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i, %bb.c
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueATNtNtCs40k4W9msRzi_5alloc6string6StringBD_Ej2_ECs63DIHKhvmTb_10lance_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !1276 ; 2 uses
  %i.a = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !1276, !nonnull !24, !noundef !24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !1276
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %.val.i4.i.i = load i64, ptr %i.c, align 8, !alias.scope !1278 ; 2 uses
  %i.d = icmp eq i64 %.val.i4.i.i, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs63DIHKhvmTb_10lance_core.exit.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i5.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1278, !nonnull !24, !noundef !24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i, i64 noundef %.val.i4.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !1278
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs63DIHKhvmTb_10lance_core.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  %.val.i.i.i.1 = load i64, ptr %i.f, align 8, !alias.scope !1281 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i.1, 0
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.1, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs63DIHKhvmTb_10lance_core.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i.1 = load ptr, ptr %i.h, align 8, !alias.scope !1281, !nonnull !24, !noundef !24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.1, i64 noundef %.val.i.i.i.1, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !1281
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.1

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.1: ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs63DIHKhvmTb_10lance_core.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  %.val.i4.i.i.1 = load i64, ptr %i.i, align 8, !alias.scope !1283 ; 2 uses
  %i.j = icmp eq i64 %.val.i4.i.i.1, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs63DIHKhvmTb_10lance_core.exit.i.1, label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i5.i.i.1 = load ptr, ptr %i.k, align 8, !alias.scope !1283, !nonnull !24, !noundef !24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.1, i64 noundef %.val.i4.i.i.1, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !1283
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs63DIHKhvmTb_10lance_core.exit.i.1

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringBC_EECs63DIHKhvmTb_10lance_core.exit.i.1: ; preds = %bb.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i.i.1
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtCs9ZJqkc64Jh8_14event_listener13InnerListeneruINtNtCs40k4W9msRzi_5alloc4sync3ArcINtBE_5InneruEEEECs63DIHKhvmTb_10lance_core(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val.i.i = load ptr, ptr %i.c, align 8, !nonnull !24, !noundef !24 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1334
  %i.e = cmpxchg ptr %i.d, i32 0, i32 1 acquire monotonic, align 4, !noalias !1335
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %.noexc, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.d)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.b, %bb.a
  %i.g = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1335
  %i.h = and i64 %i.g, 9223372036854775807
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEE4lockCs63DIHKhvmTb_10lance_core.exit.i.i.i, label %bb.c, !prof !29

bb.c:                                             ; preds = %.noexc
  %i.j = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc2 unwind label %bb.o

.noexc2:                                          ; preds = %bb.c
  %i.k = xor i1 %i.j, true
  %i.l = zext i1 %i.k to i8
  br label %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEE4lockCs63DIHKhvmTb_10lance_core.exit.i.i.i

_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEE4lockCs63DIHKhvmTb_10lance_core.exit.i.i.i: ; preds = %.noexc2, %.noexc
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %i.l, %.noexc2 ], [ 0, %.noexc ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 20 ; 2 uses
  %i.n = load atomic i8, ptr %i.m monotonic, align 1, !noalias !1335 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.o, align 8, !noalias !1334
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %.sroa.01.0.i.i.i.i.i, ptr %i.p, align 8, !noalias !1334
  store ptr %i.d, ptr %i.a, align 8, !noalias !1334
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  invoke fastcc void @_RNvMs0_NtCs9ZJqkc64Jh8_14event_listener3sysINtB5_5InneruE6removeCs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 %0, i1 noundef zeroext true)
          to label %_RNCNvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB8_5InneruE6remove0Cs63DIHKhvmTb_10lance_core.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEE4lockCs63DIHKhvmTb_10lance_core.exit.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #69
          to label %.body unwind label %bb.i, !noalias !1334

_RNCNvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB8_5InneruE6remove0Cs63DIHKhvmTb_10lance_core.exit.i.i.i: ; preds = %_RNvMs5_NtNtNtCsgczF5crJ4sT_3std4sync6poison5mutexINtB5_5MutexINtNtCs9ZJqkc64Jh8_14event_listener3sys5InneruEE4lockCs63DIHKhvmTb_10lance_core.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 56
  %i.t = load i64, ptr %i.s, align 8, !noalias !1336, !noundef !24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48
  %i.v = load i64, ptr %i.u, align 8, !noalias !1336, !noundef !24
  %i.w = icmp ult i64 %i.t, %i.v
  %spec.store.select.i.i.i.i.i = select i1 %i.w, i64 %i.t, i64 -1
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 64
  store atomic i64 %spec.store.select.i.i.i.i.i, ptr %i.x release, align 8, !noalias !1336
  %i.y = trunc nuw i8 %.sroa.01.0.i.i.i.i.i to i1
  br i1 %i.y, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNCNvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB8_5InneruE6remove0Cs63DIHKhvmTb_10lance_core.exit.i.i.i
  %i.z = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1337
  %i.aa = and i64 %i.z, 9223372036854775807
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.f, !prof !29

bb.f:                                             ; preds = %bb.e
  %i.ac = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc3 unwind label %bb.o

.noexc3:                                          ; preds = %bb.f
  br i1 %i.ac, label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.noexc3
  store atomic i8 1, ptr %i.m monotonic, align 4, !noalias !1337
  br label %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i

_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i: ; preds = %bb.g, %.noexc3, %bb.e, %_RNCNvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB8_5InneruE6remove0Cs63DIHKhvmTb_10lance_core.exit.i.i.i
  %i.ad = atomicrmw xchg ptr %i.d, i32 0 release, align 4, !noalias !1337
  %i.ae = icmp eq i32 %i.ad, 2
  br i1 %i.ae, label %bb.h, label %_RINvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB7_5InneruE10with_innerINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_5StateuEENCNvB2_6remove0ECs63DIHKhvmTb_10lance_core.exit.i.i, !prof !27

bb.h:                                             ; preds = %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 8 %i.d)
          to label %_RINvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB7_5InneruE10with_innerINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_5StateuEENCNvB2_6remove0ECs63DIHKhvmTb_10lance_core.exit.i.i unwind label %bb.o

bb.i:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !1334
  unreachable

_RINvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB7_5InneruE10with_innerINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_5StateuEENCNvB2_6remove0ECs63DIHKhvmTb_10lance_core.exit.i.i: ; preds = %bb.h, %_RNvMNtNtCsgczF5crJ4sT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %i.ag = load i8, ptr %i.b, align 8, !range !45, !alias.scope !1338, !noundef !24 ; 2 uses
  %i.ah = icmp eq i8 %i.ag, -1
  br i1 %i.ah, label %bb.q, label %bb.j

bb.j:                                             ; preds = %_RINvMs_NtCs9ZJqkc64Jh8_14event_listener3sysINtB7_5InneruE10with_innerINtNtCscI6d9CVNmLh_4core6option6OptionINtB7_5StateuEENCNvB2_6remove0ECs63DIHKhvmTb_10lance_core.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  %i.ai = icmp eq i8 %i.ag, 2
  br i1 %i.ai, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !1341, !noundef !24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !1341, !noundef !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !noalias !1341, !nonnull !24, !noundef !24
  invoke void %i.an(ptr noundef %.val1.i.i.i.i.i)
          to label %bb.q unwind label %bb.o, !inline_history !1298

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  %i.ao = load ptr, ptr %i.al, align 8, !alias.scope !1345, !nonnull !24, !noundef !24
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !1345
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtCsiXpev0CbYtQ_7parking5InnerE9drop_slowCs9ZJqkc64Jh8_14event_listener(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.q unwind label %bb.o

end_hunk_0
