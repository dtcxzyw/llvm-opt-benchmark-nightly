inline.NumInlined: 13443
inline.NumDeleted: 3890
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_RNvMNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystemINtB2_15MetricsIteratorINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream3map3MapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB2q_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB4G_5ErrorENtNtB2q_6marker4SendEL_EENCNCNvB2_14list_from_impl00ENtB8_8FileMetaE17emit_metrics_onceCs14kWLkQVSKO_14deltalake_core:bb.a
bb.d:                                             ; preds = %bb.g, %bb.f, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !26879)
  call void @llvm.experimental.noalias.scope.decl(metadata !26882)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !26885, !nonnull !4, !noundef !4
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !26885
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.v = extractvalue { i64, i32 } %i.q, 0
  %i.w = extractvalue { i64, i32 } %i.q, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load i64, ptr %i.x, align 8, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  invoke void %i.o(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, i64 noundef %i.v, i32 noundef %i.w, i64 noundef %i.y, i64 noundef %i.aa)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !4, !nonnull !4
  invoke void %i.ac(ptr noundef nonnull %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !26886)
  call void @llvm.experimental.noalias.scope.decl(metadata !26889)
  %i.ad = load ptr, ptr %i.b, align 8, !alias.scope !26892, !nonnull !4, !noundef !4
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !26892
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit4

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.j:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs8ulvy0Wg6Ot_12delta_kernel6engine7default10filesystemINtB2_15MetricsIteratorINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8buffered8BufferedINtNtB1t_3map3MapINtNtB1v_4iter4IterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB4n_3ops5range5RangeyEEEEENCNCNvB2_15read_files_impl00EENtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE17emit_metrics_onceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address, read_provenance) dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  store ptr null, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  store ptr %i.d, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !3, !invariant.load !4
  %i.j = add nsw i64 %i.i, -1
  %i.k = and i64 %i.j, -16
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant7elapsed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit4, %bb.a
  ret void

bb.d:                                             ; preds = %bb.g, %bb.f, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !26893)
  call void @llvm.experimental.noalias.scope.decl(metadata !26896)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !26899, !nonnull !4, !noundef !4
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !26899
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.v = extractvalue { i64, i32 } %i.q, 0
  %i.w = extractvalue { i64, i32 } %i.q, 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.y = load i64, ptr %i.x, align 8, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  invoke void %i.o(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, i64 noundef %i.v, i32 noundef %i.w, i64 noundef %i.y, i64 noundef %i.aa)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !4, !nonnull !4
  invoke void %i.ac(ptr noundef nonnull %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !26900)
  call void @llvm.experimental.noalias.scope.decl(metadata !26903)
  %i.ad = load ptr, ptr %i.b, align 8, !alias.scope !26906, !nonnull !4, !noundef !4
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !26906
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit4

bb.i:                                             ; preds = %bb.h
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #45
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit4: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.j:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs8ulvy0Wg6Ot_12delta_kernel7metrics8reporter15MetricsReporterEL_EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6updateNtB5_28UpdateMetricExtensionPlanner3new() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !26907
  %i.a = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 8, 16481) 16, i64 noundef range(i64 8, 17) 8) #40, !noalias !26907 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !52

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #48, !noalias !26907
  unreachable

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i64 1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB5_7Metrics3add(ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) initializes((16, 24), (56, 64)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load <2 x i64>, ptr %1, align 8
  %i.b = load <2 x i64>, ptr %0, align 8
  %i.c = add <2 x i64> %i.b, %i.a
  store <2 x i64> %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26913)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !26910, !noalias !26913, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !26913, !noalias !26910, !noundef !4
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.smin.i64(i64 %i.h, i64 %i.f)
  store i64 %.sroa.0.0.i.i, ptr %i.e, align 8, !alias.scope !26910, !noalias !26913
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !26910, !noalias !26913, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !26913, !noalias !26910, !noundef !4
  %.sroa.0.0.i1.i = tail call noundef i64 @llvm.smax.i64(i64 %i.l, i64 %i.j)
  store i64 %.sroa.0.0.i1.i, ptr %i.i, align 8, !alias.scope !26910, !noalias !26913
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load <2 x i64>, ptr %i.m, align 8, !alias.scope !26913, !noalias !26910
  %i.p = load <2 x i64>, ptr %i.n, align 8, !alias.scope !26910, !noalias !26913
  %i.q = add <2 x i64> %i.p, %i.o                 ; 3 uses
  store <2 x i64> %i.q, ptr %i.n, align 8, !alias.scope !26910, !noalias !26913
  %2 = extractelement <2 x i64> %i.q, i64 1
  %3 = sitofp i64 %2 to double
  %4 = extractelement <2 x i64> %i.q, i64 0
  %5 = uitofp i64 %4 to double
  %6 = fdiv double %3, %5
  store double %6, ptr %i.d, align 8, !alias.scope !26910, !noalias !26913
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26918)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !26915, !noalias !26918, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !26918, !noalias !26915, !noundef !4
  %.sroa.0.0.i.i1 = tail call noundef i64 @llvm.smin.i64(i64 %i.v, i64 %i.t)
  store i64 %.sroa.0.0.i.i1, ptr %i.s, align 8, !alias.scope !26915, !noalias !26918
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !26915, !noalias !26918, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !26918, !noalias !26915, !noundef !4
  %.sroa.0.0.i1.i2 = tail call noundef i64 @llvm.smax.i64(i64 %i.z, i64 %i.x)
  store i64 %.sroa.0.0.i1.i2, ptr %i.w, align 8, !alias.scope !26915, !noalias !26918
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ac = load <2 x i64>, ptr %i.aa, align 8, !alias.scope !26918, !noalias !26915
  %i.ad = load <2 x i64>, ptr %i.ab, align 8, !alias.scope !26915, !noalias !26918
  %i.ae = add <2 x i64> %i.ad, %i.ac              ; 3 uses
  store <2 x i64> %i.ae, ptr %i.ab, align 8, !alias.scope !26915, !noalias !26918
  %7 = extractelement <2 x i64> %i.ae, i64 1
  %8 = sitofp i64 %7 to double
  %9 = extractelement <2 x i64> %i.ae, i64 0
  %10 = uitofp i64 %9 to double
  %11 = fdiv double %8, %10
  store double %11, ptr %i.r, align 8, !alias.scope !26915, !noalias !26918
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ag = load i64, ptr %i.af, align 8, !noundef !4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4
  %i.aj = add i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %i.ah, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB5_15PartitionWriter10buffer_len(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(624) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.b = tail call noundef i64 @_RNvMNtNtCs14kWLkQVSKO_14deltalake_core6writer5utilsNtB2_15ShareableBuffer3len(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = tail call noundef i64 @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE16in_progress_sizeB1d_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.c)
  %i.e = add i64 %i.d, %i.b
  ret i64 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core6writer12record_batchNtB5_15PartitionWriter3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([624 x i8]) align 8 captures(none) dereferenceable(624) %0, ptr noundef nonnull %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(248) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 4 uses
  %i.b = alloca [248 x i8], align 8               ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [280 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 8 uses
  store ptr %1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.h = invoke noundef nonnull ptr @_RNvXsY_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockINtNtB7_3vec3VechEEENtNtCsbvkFyIu7lgC_4core7default7Default7defaultCs14kWLkQVSKO_14deltalake_core()
          to label %bb.c unwind label %bb.b       ; 4 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit28: ; preds = %.critedge, %bb.aa, %bb.b
  %.pn = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.ar, %bb.aa ], [ %i.ar, %.critedge ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(248) %3) #46
          to label %bb.n unwind label %bb.z

bb.b:                                             ; preds = %bb.l, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit28

bb.c:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.j = atomicrmw add ptr %i.h, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 3 uses
  store ptr %i.o, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvXsq_NtNtCs4tdlwR1I4n2_7parquet4file10propertiesNtB5_16WriterPropertiesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(248) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %3)
          to label %bb.i unwind label %bb.x

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.b, ptr noundef nonnull align 8 dereferenceable(248) %i.a, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE7try_newB1d_(ptr noalias noundef nonnull sret([280 x i8]) align 8 captures(address) dereferenceable(280) %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(248) %i.b)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = load i64, ptr %i.e, align 8, !range !17, !noundef !4 ; 2 uses
  %i.r = icmp eq i64 %i.q, -9223372036854775808
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  br i1 %i.r, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !26920)
  call void @llvm.experimental.noalias.scope.decl(metadata !26923)
  call void @llvm.experimental.noalias.scope.decl(metadata !26926)
  %i.u = load ptr, ptr %i.f, align 8, !alias.scope !26929, !nonnull !4, !noundef !4
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !26929
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockINtNtB7_3vec3VechEEE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #45
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit unwind label %bb.b

bb.m:                                             ; preds = %bb.j
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.66.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.612.0..sroa_idx, i64 240, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.x = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(248) %3, i64 248, i1 false)
  %i.y = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.87.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 600
  store ptr %i.x, ptr %.sroa.87.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr %i.y, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit24

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit24: ; preds = %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit, %bb.m
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4tdlwR1I4n2_7parquet4file10properties16WriterPropertiesECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(248) %3)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit28
  %.pn18 = phi { ptr, i32 } [ %i.z, %bb.o ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit28 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %2) #46
          to label %.body unwind label %bb.z

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferEBM_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 56
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs14kWLkQVSKO_14deltalake_core.exit.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2) #46
          to label %.body unwind label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %bb.p
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
          to label %.body unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #47
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.v

.body:                                            ; preds = %bb.v, %bb.r, %bb.q, %bb.n
end_hunk_0
