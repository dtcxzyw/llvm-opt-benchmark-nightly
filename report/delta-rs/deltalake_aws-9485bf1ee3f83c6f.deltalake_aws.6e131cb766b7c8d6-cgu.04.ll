Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_aws-9485bf1ee3f83c6f.deltalake_aws.6e131cb766b7c8d6-cgu.04?download=true
inline.NumInlined: 1357
inline.NumDeleted: 731
begin_hunk_0_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1C_5error5ErrorENCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2X_8logstore18get_latest_version00BW_Es_00ECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !141
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.g, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.an, %bb.k ], [ %i.ah, %bb.g ], [ %i.ah, %bb.f ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %i.j) #25
          to label %.body unwind label %bb.n, !noalias !135

_RNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00Cs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !135
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.ao = load i64, ptr %i.j, align 8, !range !15, !alias.scope !143, !noalias !144, !noundef !6
  %.not.i.i.i.i = icmp eq i64 %i.ao, 2
  br i1 %.not.i.i.i.i, label %.noexc7.i, label %bb.l

bb.l:                                             ; preds = %_RNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ap)
          to label %.noexc7.i unwind label %bb.p

.noexc7.i:                                        ; preds = %bb.l, %_RNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.aq = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !135
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB8_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2v_5error5ErrorEEs_00Cs9rVkZwOUgsI_13deltalake_aws.exit

bb.m:                                             ; preds = %.noexc7.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !143, !noalias !144, !align !10, !noundef !6 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not4.i.i.i.i, label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB8_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2v_5error5ErrorEEs_00Cs9rVkZwOUgsI_13deltalake_aws.exit, label %.noexc8.i

.noexc8.i:                                        ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !145
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !noalias !144, !nonnull !6, !noundef !6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !144, !noundef !6
  store ptr %i.av, ptr %i.b, align 8, !noalias !145
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !noalias !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !145
  store ptr %i.b, ptr %i.a, align 8, !noalias !145
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !145
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 21, ptr noundef nonnull @37, ptr noundef nonnull %i.a) #27
          to label %.noexc3 unwind label %bb.p

.noexc3:                                          ; preds = %.noexc8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !145
  br label %_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB8_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2v_5error5ErrorEEs_00Cs9rVkZwOUgsI_13deltalake_aws.exit

bb.n:                                             ; preds = %bb.o, %.body.i
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !146
  unreachable

bb.o:                                             ; preds = %bb.e, %bb.c
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.g) #25
          to label %.body unwind label %bb.n, !noalias !146

bb.p:                                             ; preds = %.noexc8.i, %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.p ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.thr_comm.i, %bb.o ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.h) #25
          to label %.thread unwind label %bb.q

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB8_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2v_5error5ErrorEEs_00Cs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.noexc3, %bb.m, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.q:                                             ; preds = %bb.r, %.body
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

.thread:                                          ; preds = %bb.r, %.body
  %.pn7 = phi { ptr, i32 } [ %i.bc, %bb.r ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn7

bb.r:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(120) %2)
          to label %.thread unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1X_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !6 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !17, !invariant.load !6 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !16, !invariant.load !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !17, !invariant.load !6 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !16, !invariant.load !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #29
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtCseo6ZV82fEK1_3url3UrlEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !6
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !159, !nonnull !6, !noundef !6
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !159
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #28
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !6
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !6
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.f) #25
          to label %.body2.i unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body2.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaECs9rVkZwOUgsI_13deltalake_aws.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.i

.body2.i:                                         ; preds = %bb.i, %bb.g, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.k, %bb.i ], [ %i.h, %bb.g ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.j) #25
          to label %common.resume.i unwind label %bb.l

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume.i:                                  ; preds = %bb.j, %.body2.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %bb.j ], [ %.pn.i, %.body2.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.l:                                             ; preds = %.body2.i, %.body.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !175, !nonnull !6, !noundef !6
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !175
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c) #28
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span5InnerECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types6region6RegionEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !noundef !6
  %switch = icmp slt i64 %i.a, -9223372036854775806
  br i1 %switch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types6region6RegionECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types6region6RegionECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types6region6RegionECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !6
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1a_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 dereferenceable(544) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !15, !noundef !6
  switch i64 %i.a, label %bb.u [
    i64 2, label %bb.v
    i64 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.f) #25
          to label %.body8.i.i unwind label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body8.i.i unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

.body8.i.i:                                       ; preds = %bb.i, %bb.f, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.k, %bb.i ], [ %i.h, %bb.f ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.j) #25
          to label %.body11.i.i unwind label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body11.i.i unwind label %bb.l

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathEECs9rVkZwOUgsI_13deltalake_aws.exit13.i.i unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

.body11.i.i:                                      ; preds = %bb.m, %bb.j, %.body8.i.i
  %.pn2.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body8.i.i ], [ %i.p, %bb.m ], [ %i.m, %bb.j ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.o) #25
          to label %.body15.i.i unwind label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathEECs9rVkZwOUgsI_13deltalake_aws.exit13.i.i: ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathEECs9rVkZwOUgsI_13deltalake_aws.exit13.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel4path13ParsedLogPathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body15.i.i unwind label %bb.p

end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3R_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B5v_E00ENtNtB2a_8schedule16BlockingScheduleEEEB3R_:bb.a
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3g_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4U_E00ENtNtB1B_8schedule16BlockingScheduleEEB3g_.exit: ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.l
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 256, i64 noundef 128) #29
  ret void

bb.p:                                             ; preds = %bb.o, %bb.j, %bb.i, %bb.h, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.o ], [ %i.q, %bb.h ], [ %i.q, %bb.j ], [ %i.q, %bb.i ], [ %eh.lpad-body.i, %.body.i ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 256, i64 noundef 128) #29
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2S_9GetResult5bytes00ENtNtB2a_8schedule16BlockingScheduleEEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !489, !noundef !6 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !490
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_INtNtNtCskQDtHcQtBkN_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SyncNtB2G_4SendEL_E9drop_slowB1C_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core9CoreStageINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2n_9GetResult5bytes00EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(80) %i.g) #25
          to label %.body.i unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.i = load i32, ptr %i.h, align 8, !range !22, !alias.scope !495, !noundef !6
  switch i32 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CoreINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2i_9GetResult5bytes00ENtNtB1B_8schedule16BlockingScheduleEECs9rVkZwOUgsI_13deltalake_aws.exit.i [
    i32 0, label %bb.e
    i32 1, label %bb.i
  ]

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 64 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.k = load i64, ptr %i.j, align 8, !range !18, !alias.scope !498, !noundef !6
  %i.l = icmp eq i64 %i.k, -9223372036854775808
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CoreINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2i_9GetResult5bytes00ENtNtB1B_8schedule16BlockingScheduleEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 104
  %.val.i.i.i.i.i.i.i.i.i = load i32, ptr %i.m, align 8, !range !23, !alias.scope !500, !noundef !6
  %i.n = tail call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i.i.i.i) #29, !noalias !501 ; 0 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %.body.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CoreINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2i_9GetResult5bytes00ENtNtB1B_8schedule16BlockingScheduleEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.k

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CoreINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2i_9GetResult5bytes00ENtNtB1B_8schedule16BlockingScheduleEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.k

bb.j:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.k:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.g, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.o, %bb.g ], [ %i.f, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 136
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core7TrailerECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.t) #25
          to label %bb.u unwind label %bb.s

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CoreINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2i_9GetResult5bytes00ENtNtB1B_8schedule16BlockingScheduleEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i.i, %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 152
  %.val.i.i = load ptr, ptr %i.u, align 8, !align !10, !noundef !6 ; 2 uses
  %i.v = icmp eq ptr %.val.i.i, null
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CoreINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2i_9GetResult5bytes00ENtNtB1B_8schedule16BlockingScheduleEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.w = getelementptr i8, ptr %.0.val, i64 160
  %.val1.i.i = load ptr, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6
  invoke void %i.y(ptr noundef %.val1.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.m, !inline_history !1

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 168 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !504, !noundef !6 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !505
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_INtNtNtCskQDtHcQtBkN_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SyncNtB2G_4SendEL_E9drop_slowB1C_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aa) #28
          to label %bb.u unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CoreINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2i_9GetResult5bytes00ENtNtB1B_8schedule16BlockingScheduleEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 168 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !508, !noundef !6 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2i_9GetResult5bytes00ENtNtB1B_8schedule16BlockingScheduleEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ai = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !noalias !509
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2i_9GetResult5bytes00ENtNtB1B_8schedule16BlockingScheduleEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_INtNtNtCskQDtHcQtBkN_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SyncNtB2G_4SendEL_E9drop_slowB1C_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.af) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2i_9GetResult5bytes00ENtNtB1B_8schedule16BlockingScheduleEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.s:                                             ; preds = %.body.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2i_9GetResult5bytes00ENtNtB1B_8schedule16BlockingScheduleEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 256, i64 noundef 128) #29
  ret void

bb.u:                                             ; preds = %bb.t, %bb.o, %bb.n, %bb.m, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.t ], [ %i.z, %bb.m ], [ %i.z, %bb.o ], [ %i.z, %bb.n ], [ %eh.lpad-body.i, %.body.i ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 256, i64 noundef 128) #29
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1m_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3u_5error5ErrorEEs_0EECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.a = load i64, ptr %.0.val, align 8, !range !9, !alias.scope !523, !noundef !6
  %0 = trunc nuw i64 %i.a to i1
  br i1 %0, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !526, !nonnull !6, !noundef !6
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !526
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.g) #25
          to label %bb.e unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.h)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.f, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(112) %i.i) #25
          to label %bb.j unwind label %bb.h

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(112) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtBN_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2U_5error5ErrorEEs_0ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtBN_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2U_5error5ErrorEEs_0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 176, i64 noundef 8) #29
  ret void

bb.j:                                             ; preds = %bb.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.i ], [ %.pn.i, %bb.e ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 176, i64 noundef 8) #29
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2O_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4s_E00EEB2O_(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !535)
  %i.a = load ptr, ptr %.0.val, align 8, !alias.scope !536, !nonnull !6, !noundef !6
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !536
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2f_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B3T_E00EB2f_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.0.val) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2f_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B3T_E00EB2f_.exit unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2f_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B3T_E00EB2f_.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 8, i64 noundef 8) #29
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 8, i64 noundef 8) #29
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1p_9GetResult5bytes00EECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %.val.i = load i32, ptr %i.a, align 4, !range !23, !alias.scope !539, !noundef !6
  %i.b = tail call noundef i32 @close(i32 noundef %.val.i) #29, !noalias !539 ; 0 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %.0.val)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #29
  ret void

bb.e:                                             ; preds = %bb.d, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.c, %bb.b ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #29
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !15, !alias.scope !544, !noundef !6
  %switch.i.i = icmp samesign ult i64 %i.a, 2
  br i1 %switch.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  invoke void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #29
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #29
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(144) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(144) %.0.val)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(144) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.d) #25
          to label %.body2.i unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.h = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs8CRAYtH5WmW_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB2h_5ErrorEEECs9rVkZwOUgsI_13deltalake_aws:bb.a

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB16_5ErrorEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB16_5ErrorEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtB16_5ErrorEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2P_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4X_5error5ErrorEEs_0EEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 dereferenceable(560) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 16, !range !22, !noundef !6
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2p_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4x_5error5ErrorEEs_0EEECs9rVkZwOUgsI_13deltalake_aws.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2p_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4x_5error5ErrorEEs_0EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.b, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.b, align 16, !align !10, !noundef !6 ; 2 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2p_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4x_5error5ErrorEEs_0EEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1m_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3u_5error5ErrorEEs_0EECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.val)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2p_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4x_5error5ErrorEEs_0EEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1a_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 16 dereferenceable(544) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2p_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4x_5error5ErrorEEs_0EEECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3Q_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B5u_E00EEEEB3Q_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !22, !noundef !6
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3q_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B54_E00EEEB3q_.exit [
    i32 0, label %bb.b
    i32 1, label %bb.f
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3q_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B54_E00EEEB3q_.exit: ; preds = %bb.k, %bb.j, %bb.g, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2O_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4s_E00EEB2O_.exit.i.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !align !10, !noundef !6 ; 5 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3q_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B54_E00EEEB3q_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.d = load ptr, ptr %.val, align 8, !alias.scope !569, !nonnull !6, !noundef !6
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !569
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2O_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4s_E00EEB2O_.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.val) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2O_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4s_E00EEB2O_.exit.i.i unwind label %bb.e

common.resume:                                    ; preds = %bb.l, %bb.m, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.t, %bb.m ], [ %i.t, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 8, i64 noundef 8) #29
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2O_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4s_E00EEB2O_.exit.i.i: ; preds = %bb.d, %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 8, i64 noundef 8) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3q_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B54_E00EEEB3q_.exit

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !570, !noundef !6
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3q_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B54_E00EEEB3q_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !570, !noundef !6 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.l, align 8, !alias.scope !570 ; 6 uses
  %i.m = icmp eq ptr %.val.i, null
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3q_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B54_E00EEEB3q_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.n = load ptr, ptr %.val1.i, align 8, !invariant.load !6, !noalias !570 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.n(ptr noundef nonnull %.val.i)
          to label %bb.j unwind label %bb.l, !noalias !570

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !17, !invariant.load !6, !noalias !570 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3q_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B54_E00EEEB3q_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !16, !invariant.load !6, !noalias !570
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #29, !noalias !570
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3q_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B54_E00EEEB3q_.exit

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !17, !invariant.load !6, !noalias !570 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !16, !invariant.load !6, !noalias !570
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #29, !noalias !570
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2S_9GetResult5bytes00EEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !22, !noundef !6
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2s_9GetResult5bytes00EEECs9rVkZwOUgsI_13deltalake_aws.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2s_9GetResult5bytes00EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.b, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !align !10, !noundef !6 ; 2 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2s_9GetResult5bytes00EEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1p_9GetResult5bytes00EECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.val)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2s_9GetResult5bytes00EEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2s_9GetResult5bytes00EEECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2g_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4o_5error5ErrorEEs_0EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 dereferenceable(560) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 16, !range !22, !noundef !6
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1Q_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3Y_5error5ErrorEEs_0EECs9rVkZwOUgsI_13deltalake_aws.exit [
    i32 0, label %bb.b
    i32 1, label %bb.k
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1Q_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3Y_5error5ErrorEEs_0EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtBN_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2U_5error5ErrorEEs_0ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b, %bb.k, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !586)
  %i.c = load i64, ptr %i.b, align 16, !range !15, !alias.scope !587, !noundef !6 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1Q_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3Y_5error5ErrorEEs_0EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %1 = trunc nuw i64 %i.c to i1
  br i1 %1, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !593, !nonnull !6, !noundef !6
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !593
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.j) #25
          to label %bb.g unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtBN_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2U_5error5ErrorEEs_0ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i.i.i = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.i, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(112) %i.l) #25
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %.pn.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtBN_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2U_5error5ErrorEEs_0ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(112) %i.o)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1Q_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3Y_5error5ErrorEEs_0EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.k:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1a_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 16 dereferenceable(544) %i.p)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1Q_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3Y_5error5ErrorEEs_0EECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3h_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4V_E00EEEB3h_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !22, !noundef !6
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2R_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4v_E00EEB2R_.exit [
    i32 0, label %bb.b
    i32 1, label %bb.e
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2R_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4v_E00EEB2R_.exit: ; preds = %bb.j, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !608, !noundef !6 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2R_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4v_E00EEB2R_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !609
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2R_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4v_E00EEB2R_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2R_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4v_E00EEB2R_.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !610, !noundef !6
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2R_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4v_E00EEB2R_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !610, !noundef !6 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !610 ; 6 uses
  %i.l = icmp eq ptr %.val.i, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2R_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4v_E00EEB2R_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.m = load ptr, ptr %.val1.i, align 8, !invariant.load !6, !noalias !610 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void %i.m(ptr noundef nonnull %.val.i)
          to label %bb.i unwind label %bb.k, !noalias !610

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !17, !invariant.load !6, !noalias !610 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2R_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4v_E00EEB2R_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !16, !invariant.load !6, !noalias !610
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #29, !noalias !610
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2R_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4v_E00EEB2R_.exit

bb.k:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !17, !invariant.load !6, !noalias !610 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !6, !noalias !610
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #29, !noalias !610
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i.i.i.i: ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2j_9GetResult5bytes00EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !22, !noundef !6
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1T_9GetResult5bytes00EECs9rVkZwOUgsI_13deltalake_aws.exit [
    i32 0, label %bb.b
    i32 1, label %bb.f
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1T_9GetResult5bytes00EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.b, %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.c = load i64, ptr %i.b, align 8, !range !18, !alias.scope !619, !noundef !6
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1T_9GetResult5bytes00EECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i = load i32, ptr %i.e, align 8, !range !23, !alias.scope !621, !noundef !6
  %i.f = tail call noundef i32 @close(i32 noundef %.val.i.i.i) #29, !noalias !621 ; 0 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1T_9GetResult5bytes00EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1T_9GetResult5bytes00EECs9rVkZwOUgsI_13deltalake_aws.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core9CoreStageINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2T_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB51_5error5ErrorEEs_0EEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 dereferenceable(560) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.a = load i32, ptr %0, align 16, !range !22, !alias.scope !631, !noundef !6
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB3A_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB5I_5error5ErrorEEs_0EEEEECs9rVkZwOUgsI_13deltalake_aws.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.b, align 16, !alias.scope !631, !align !10, !noundef !6 ; 2 uses
  %i.c = icmp eq ptr %.val.i.i.i, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB3A_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB5I_5error5ErrorEEs_0EEEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1m_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3u_5error5ErrorEEs_0EECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.val.i.i.i), !noalias !631
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB3A_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB5I_5error5ErrorEEs_0EEEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1a_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 16 dereferenceable(544) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB3A_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB5I_5error5ErrorEEs_0EEEEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB3A_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB5I_5error5ErrorEEs_0EEEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core9CoreStageINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2W_9GetResult5bytes00EEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.a = load i32, ptr %0, align 8, !range !22, !alias.scope !641, !noundef !6
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB3D_9GetResult5bytes00EEEEECs9rVkZwOUgsI_13deltalake_aws.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !641, !align !10, !noundef !6 ; 2 uses
  %i.c = icmp eq ptr %.val.i.i.i, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB3D_9GetResult5bytes00EEEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1p_9GetResult5bytes00EECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.val.i.i.i), !noalias !641
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB3D_9GetResult5bytes00EEEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB3D_9GetResult5bytes00EEEEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB3D_9GetResult5bytes00EEEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core9CoreStageINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2n_9GetResult5bytes00EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.a = load i32, ptr %0, align 8, !range !22, !alias.scope !657, !noundef !6
  switch i32 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB34_9GetResult5bytes00EEEECs9rVkZwOUgsI_13deltalake_aws.exit [
    i32 0, label %bb.b
    i32 1, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.c = load i64, ptr %i.b, align 8, !range !18, !alias.scope !660, !noundef !6
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB34_9GetResult5bytes00EEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i.i.i.i.i = load i32, ptr %i.e, align 8, !range !23, !alias.scope !662, !noundef !6
  %i.f = tail call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i) #29, !noalias !662 ; 0 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB34_9GetResult5bytes00EEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(72) %i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB34_9GetResult5bytes00EEEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtNtNtBP_7runtime4task4core5StageINtNtNtB1O_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB34_9GetResult5bytes00EEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtBN_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2U_5error5ErrorEEs_0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !673, !noundef !6
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !676, !nonnull !6, !noundef !6
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !676
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.g) #25
          to label %bb.e unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.h)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.f, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(112) %i.i) #25
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(112) %i.k)
  ret void

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.i:                                             ; preds = %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load i32, ptr %i.a, align 8, !range !23, !noundef !6
  %i.b = tail call noundef i32 @close(i32 noundef %.val) #29 ; 0 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBQ_5MutexINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEE4lock00ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !range !24, !noundef !6
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.g, %bb.f, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !25, !noundef !6
  %cond.i = icmp eq i8 %i.d, 4
  br i1 %cond.i, label %bb.c, label %common.ret

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXs3_NtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.e)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i.i = load ptr, ptr %i.g, align 8, !align !10, !noundef !6 ; 2 uses
  %i.h = icmp eq ptr %.val2.i.i, null
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 48
  %.val3.i.i = load ptr, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6
  invoke void %i.k(ptr noundef %.val3.i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.h, !inline_history !2

bb.f:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i = load ptr, ptr %i.l, align 8, !align !10, !noundef !6 ; 2 uses
  %i.m = icmp eq ptr %.val.i.i, null
  br i1 %i.m, label %common.ret, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %0, i64 48
  %.val1.i.i = load ptr, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6
  tail call void %i.p(ptr noundef %.val1.i.i), !inline_history !677
  br label %common.ret

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18get_latest_version00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !684, !nonnull !6, !noundef !6
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !684
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(88) %0) #25
          to label %common.resume unwind label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.e, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCs8ulvy0Wg6Ot_12delta_kernel14StorageHandlerEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(88) %0)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs8_NtNtCskQDtHcQtBkN_5tokio4sync5mutexINtBO_5MutexINtNtB4_6option6OptionNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsEE4lock0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxECs9rVkZwOUgsI_13deltalake_aws:bb.a
  br i1 %i.k, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !16, !invariant.load !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #29
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !731, !nonnull !6, !noundef !6
  %i.p = atomicrmw add ptr %i.o, i64 -1 release, align 8, !noalias !731
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit

bb.g:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG1_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL2_INtNtB7_5boxed3BoxDNtNtBR_3any3AnyNtNtBR_6marker4SyncNtB25_4SendEL_EQL1_INtNtBR_3fmt9FormatterL0_EEEp6OutputINtNtBR_6result6ResultuNtB2I_5ErrorEB23_B2m_EL_E9drop_slowCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1x_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !734, !nonnull !6, !noundef !6
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !734
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit4

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1x_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG1_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL2_INtNtB7_5boxed3BoxDNtNtBR_3any3AnyNtNtBR_6marker4SyncNtB25_4SendEL_EQL1_INtNtBR_3fmt9FormatterL0_EEEp6OutputINtNtBR_6result6ResultuNtB2I_5ErrorEB23_B2m_EL_E9drop_slowCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.r) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit4 unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.body, %bb.g, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.h, %bb.g ], [ %i.h, %.body ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !735, !noundef !6 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_INtNtB17_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2J_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB2H_B30_EL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.y = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !736
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_INtNtB17_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2J_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB2H_B30_EL_EEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL0_INtNtB7_5boxed3BoxDNtNtBQ_3any3AnyNtNtBQ_6marker4SyncNtB24_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB22_B2l_EL_E9drop_slowB2O_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_INtNtB17_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2J_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB2H_B30_EL_EEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit4: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB1x_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !737, !noundef !6 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_INtNtB17_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2J_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB2H_B30_EL_EEECs9rVkZwOUgsI_13deltalake_aws.exit6, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit4
  %i.ae = atomicrmw add ptr %i.ac, i64 -1 release, align 8, !noalias !738
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_INtNtB17_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2J_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB2H_B30_EL_EEECs9rVkZwOUgsI_13deltalake_aws.exit6

bb.m:                                             ; preds = %bb.l
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL0_INtNtB7_5boxed3BoxDNtNtBQ_3any3AnyNtNtBQ_6marker4SyncNtB24_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB22_B2l_EL_E9drop_slowB2O_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab) #28
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_INtNtB17_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2J_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB2H_B30_EL_EEECs9rVkZwOUgsI_13deltalake_aws.exit6

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_INtNtB17_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2J_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB2H_B30_EL_EEECs9rVkZwOUgsI_13deltalake_aws.exit6: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit4, %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %bb.j, %bb.g
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTRL0_INtNtB17_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2J_4SendEL_EEEp6OutputNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxB2H_B30_EL_EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDG1_INtNtNtB4_3ops8function2FnTRL2_INtNtBL_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2n_4SendEL_EQL1_INtNtB4_3fmt9FormatterL0_EEEp6OutputINtNtB4_6result6ResultuNtB30_5ErrorEB2l_B2E_EL_EECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i8, ptr %i.d, align 8, !range !12, !noalias !771, !noundef !6
  switch i8 %i.e, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
    i8 1, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i.i
    i8 2, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCNvXse_BW_NtBW_12DefaultGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0INtNtB2s_6option6OptionNtBW_8DispatchEECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i
  ], !prof !13

default.unreachable:                              ; preds = %bb.a
  unreachable

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.a
  %i.f = invoke noundef ptr @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE10initializeCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.c)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCNvXse_BW_NtBW_12DefaultGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0INtNtB2s_6option6OptionNtBW_8DispatchEECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i, label %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i.i

_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i.i: ; preds = %.noexc, %bb.a
  %.sroa.0.0.i.i4.i.i = phi ptr [ %i.f, %.noexc ], [ %i.c, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !noalias !773
  store i64 2, ptr %0, align 8, !alias.scope !770, !noalias !773
  %i.h = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !774, !noundef !6
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCNvXse_BW_NtBW_12DefaultGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0INtNtB2s_6option6OptionNtBW_8DispatchEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.b, !prof !7

bb.b:                                             ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #26
          to label %.noexc.i.i.i.i unwind label %bb.c, !noalias !774

.noexc.i.i.i.i:                                   ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #25
          to label %.body unwind label %bb.d, !noalias !775

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !775
  unreachable

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCNvXse_BW_NtBW_12DefaultGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0INtNtB2s_6option6OptionNtBW_8DispatchEECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i: ; preds = %.noexc, %bb.a
  %i.l = atomicrmw add ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12SCOPED_COUNT, i64 -1 release, align 8, !noalias !770 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !770
  br label %bb.j

_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCNvXse_BW_NtBW_12DefaultGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0INtNtB2s_6option6OptionNtBW_8DispatchEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.thread2.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 8 ; 2 uses
  %.sroa.01.0.copyload2.i = load i64, ptr %i.m, align 8, !noalias !770 ; 4 uses
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i64 16, i1 false), !noalias !770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !772
  %i.n = atomicrmw add ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12SCOPED_COUNT, i64 -1 release, align 8, !noalias !770 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !770
  store i64 %.sroa.01.0.copyload2.i, ptr %i.b, align 8, !noalias !770
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !770
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  %.not.i.i = icmp eq i64 %.sroa.01.0.copyload2.i, 3
  br i1 %.not.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCNvXse_BW_NtBW_12DefaultGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0INtNtB2s_6option6OptionNtBW_8DispatchEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.o = icmp eq i64 %.sroa.01.0.copyload2.i, 2
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !779)
  %1 = trunc nuw i64 %.sroa.01.0.copyload2.i to i1
  br i1 %1, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !781)
  %i.p = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !782, !noalias !770, !nonnull !6, !noundef !6
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !783
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i) #28
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvYNCNKNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.j, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) #25
          to label %bb.o unwind label %bb.n

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCNvXse_BW_NtBW_12DefaultGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0INtNtB2s_6option6OptionNtBW_8DispatchEECs9rVkZwOUgsI_13deltalake_aws.exit.i, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher5StateE8try_withNCNvXse_BW_NtBW_12DefaultGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0INtNtB2s_6option6OptionNtBW_8DispatchEECs9rVkZwOUgsI_13deltalake_aws.exit.thread.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !770
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.t = load i64, ptr %0, align 8, !range !15, !alias.scope !784, !noundef !6 ; 2 uses
  %i.u = icmp eq i64 %i.t, 2
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %2 = trunc nuw i64 %i.t to i1
  br i1 %2, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !789, !nonnull !6, !noundef !6
  %i.x = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !789
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.m:                                             ; preds = %bb.l
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.v) #28
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %.body
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.o:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !796, !nonnull !6, !noundef !6
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !796
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !830, !noundef !6 ; 8 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775745
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775787
  %i.d = icmp ugt i64 %i.a, -9223372036854775788
  %i.e = select i1 %i.d, i64 %i.c, i64 42
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.bh
    i64 3, label %bb.bk
    i64 4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 5, label %bb.bn
    i64 6, label %bb.bq
    i64 7, label %bb.bw
    i64 8, label %bb.bx
    i64 9, label %bb.ca
    i64 10, label %bb.ct
    i64 11, label %bb.cu
    i64 12, label %bb.cv
    i64 13, label %bb.dl
    i64 14, label %bb.do
    i64 15, label %bb.dr
    i64 16, label %bb.du
    i64 17, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 18, label %bb.dx
    i64 19, label %bb.ea
    i64 20, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 21, label %bb.ed
    i64 22, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 23, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 24, label %bb.ei
    i64 25, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 26, label %bb.el
    i64 27, label %bb.eo
    i64 28, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 29, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 30, label %bb.er
    i64 31, label %bb.eu
    i64 32, label %bb.ex
    i64 33, label %bb.fa
    i64 34, label %bb.fd
    i64 35, label %bb.fg
    i64 36, label %bb.fj
    i64 37, label %bb.fm
    i64 38, label %bb.fp
    i64 39, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 40, label %bb.gf
    i64 41, label %bb.gi
    i64 42, label %bb.gl
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.id, %.body41, %.body76, %.body, %bb.gn, %bb.gq, %bb.gu, %bb.gw, %bb.ha, %bb.hd, %.body.i.i.i84, %bb.hl, %.body.i3.i.i, %bb.hu, %bb.gj, %bb.fr, %bb.fu, %bb.fx, %bb.ga, %bb.gd, %bb.fn, %bb.fk, %bb.fh, %bb.fe, %bb.fb, %bb.ey, %bb.ev, %bb.es, %bb.ep, %bb.ej, %bb.eb, %bb.dy, %bb.dv, %bb.ds, %bb.dp, %bb.dm, %bb.cc, %bb.cf, %bb.ci, %bb.cl, %bb.cr, %bb.cs, %bb.by, %bb.bu, %bb.bv, %bb.bo, %bb.bl, %bb.bi, %bb.h, %bb.n, %bb.o, %bb.q, %bb.t, %bb.w, %bb.z, %bb.ac, %bb.af, %bb.ai, %bb.al, %bb.ao, %bb.au, %bb.ax, %bb.ba, %bb.bd, %.body.i, %bb.c, %bb.hz, %bb.eh, %bb.dk
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body77, %.body76 ], [ %i.g, %bb.c ], [ %eh.lpad-body.i, %.body.i ], [ %i.cd, %bb.bi ], [ %i.cg, %bb.bl ], [ %i.cj, %bb.bo ], [ %i.ct, %bb.bu ], [ %i.db, %bb.by ], [ %eh.lpad-body.i.i, %bb.dk ], [ %i.dz, %bb.cr ], [ %i.fu, %bb.dm ], [ %i.fx, %bb.dp ], [ %i.ga, %bb.ds ], [ %i.gd, %bb.dv ], [ %i.gg, %bb.dy ], [ %i.gr, %bb.eh ], [ %i.gj, %bb.eb ], [ %i.gt, %bb.ej ], [ %i.gz, %bb.ep ], [ %i.hc, %bb.es ], [ %i.hf, %bb.ev ], [ %i.hi, %bb.ey ], [ %i.hl, %bb.fb ], [ %i.ho, %bb.fe ], [ %i.hr, %bb.fh ], [ %i.hu, %bb.fk ], [ %i.hx, %bb.fn ], [ %i.ik, %bb.gd ], [ %i.iq, %bb.gj ], [ %i.kr, %bb.hz ], [ %eh.lpad-body.i4.i.i, %.body.i3.i.i ], [ %i.bw, %bb.bd ], [ %i.t, %bb.h ], [ %i.ad, %bb.n ], [ %i.ak, %bb.q ], [ %i.an, %bb.t ], [ %i.aq, %bb.w ], [ %i.at, %bb.z ], [ %i.aw, %bb.ac ], [ %i.az, %bb.af ], [ %i.bc, %bb.ai ], [ %i.bf, %bb.al ], [ %i.bi, %bb.ao ], [ %i.bn, %bb.au ], [ %i.bq, %bb.ax ], [ %i.bt, %bb.ba ], [ %i.ad, %bb.o ], [ %i.ct, %bb.bv ], [ %i.dp, %bb.cl ], [ %i.dg, %bb.cc ], [ %i.dj, %bb.cf ], [ %i.dm, %bb.ci ], [ %i.dz, %bb.cs ], [ %i.ii, %bb.ga ], [ %i.ic, %bb.fr ], [ %i.ie, %bb.fu ], [ %i.ig, %bb.fx ], [ %i.ja, %bb.gq ], [ %i.ix, %bb.gn ], [ %eh.lpad-body.i.i.i, %.body.i.i.i84 ], [ %i.jf, %bb.gu ], [ %i.jm, %bb.ha ], [ %i.jp, %bb.hd ], [ %i.ji, %bb.gw ], [ %i.jy, %bb.hl ], [ %i.kl, %bb.hu ], [ %i.k, %.body ], [ %eh.lpad-body42, %.body41 ], [ %i.kz, %bb.id ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !831, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 16 dereferenceable(96) %i.j)
          to label %bb.hx unwind label %.body, !noalias !831, !inline_history !799

.body:                                            ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 96, i64 noundef 16) #29, !noalias !831
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7 = load ptr, ptr %i.l, align 16, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.val7) #25
          to label %common.resume unwind label %bb.ia

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  %i.n = load i64, ptr %i.m, align 8, !range !20, !alias.scope !832, !noundef !6 ; 3 uses
  %i.o = icmp ne i64 %i.n, -9223372036854775796
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.n, -9223372036854775808
  %i.q = icmp slt i64 %i.n, 0
  %i.r = select i1 %i.q, i64 %i.p, i64 12
  switch i64 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs9rVkZwOUgsI_13deltalake_aws.exit [
    i64 0, label %bb.g
    i64 1, label %bb.j
    i64 2, label %bb.p
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeECs9rVkZwOUgsI_13deltalake_aws:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs9rVkZwOUgsI_13deltalake_aws.exit7

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !873, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(64) %i.aj)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeEECs9rVkZwOUgsI_13deltalake_aws.exit18 unwind label %bb.w, !noalias !873, !inline_history !860

bb.w:                                             ; preds = %bb.v
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef 64, i64 noundef 8) #29, !noalias !873, !inline_history !860
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeEECs9rVkZwOUgsI_13deltalake_aws.exit18: ; preds = %bb.v
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef 64, i64 noundef 8) #29, !noalias !873, !inline_history !860
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs9rVkZwOUgsI_13deltalake_aws.exit7

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs9rVkZwOUgsI_13deltalake_aws.exit7: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeEECs9rVkZwOUgsI_13deltalake_aws.exit23, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeEECs9rVkZwOUgsI_13deltalake_aws.exit18
  ret void

bb.x:                                             ; preds = %.body10, %.body
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !25, !noundef !6
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.k
    i8 3, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val1)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !880, !nonnull !6, !noundef !6 ; 7 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.e, !noalias !880, !inline_history !876

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %.body.i unwind label %bb.f, !noalias !880, !inline_history !876

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !880, !inline_history !876
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.g, !noalias !880, !inline_history !876

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.i, !inline_history !876

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.e, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %i.i) #25
          to label %bb.j unwind label %bb.h, !noalias !880, !inline_history !876

bb.h:                                             ; preds = %.body.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !880, !inline_history !876
  unreachable

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

common.resume:                                    ; preds = %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %bb.j ], [ %i.o, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.i ], [ %eh.lpad-body.i, %.body.i ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 48, i64 noundef 8) #29, !noalias !880
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema9ArrayTypeEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 48, i64 noundef 8) #29, !noalias !880
  br label %bb.c

bb.k:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.l, align 8, !nonnull !6, !noundef !6
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val)
  br label %bb.c

bb.l:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !881, !nonnull !6, !noundef !6 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(64) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.m, !noalias !881, !inline_history !879

bb.m:                                             ; preds = %bb.l
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 64, i64 noundef 8) #29, !noalias !881
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema7MapTypeEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.l
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 64, i64 noundef 8) #29, !noalias !881
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.c = load i64, ptr %0, align 8, !range !15, !alias.scope !896, !noundef !6
  %.not.i = icmp eq i64 %i.c, 2
  br i1 %.not.i, label %.noexc1, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !range !27, !alias.scope !896, !noundef !6
  %i.f = invoke noundef zeroext i1 @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, i64 noundef %i.e)
          to label %.noexc1 unwind label %bb.e    ; 0 uses

.noexc1:                                          ; preds = %bb.a, %bb.b
  %i.g = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.c:                                             ; preds = %.noexc1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !896, !align !10, !noundef !6 ; 3 uses
  %.not3.i = icmp eq ptr %i.j, null
  br i1 %.not3.i, label %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !896
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !6
  store ptr %i.l, ptr %i.b, align 8, !noalias !896
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !896
  store ptr %i.b, ptr %i.a, align 8, !noalias !896
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !896
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 13, ptr noundef nonnull @59, ptr noundef nonnull %i.a) #27
          to label %.noexc2 unwind label %bb.e

.noexc2:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !896
  br label %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %0) #25
          to label %bb.j unwind label %bb.i

_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit: ; preds = %.noexc2, %bb.c, %.noexc1
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %i.q = load i64, ptr %0, align 8, !range !15, !alias.scope !897, !noundef !6 ; 2 uses
  %i.r = icmp eq i64 %i.q, 2
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  call void @llvm.experimental.noalias.scope.decl(metadata !900)
  %1 = trunc nuw i64 %i.q to i1
  br i1 %1, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !903, !nonnull !6, !noundef !6
  %i.u = atomicrmw add ptr %i.t, i64 -1 release, align 8, !noalias !903
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s) #28
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit, %bb.f, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.j:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws(ptr nofree readonly captures(address, read_provenance) %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  %i.c = load i64, ptr %.0.val, align 8, !range !15, !alias.scope !908, !noalias !909, !noundef !6
  %.not.i.i = icmp eq i64 %i.c, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !noalias !909
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_RNvXse_NtCscTw95cGIolY_7tracing4spanNtB5_7EnteredNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !908, !noalias !909, !align !10, !noundef !6 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.h, null
  br i1 %.not4.i.i, label %_RNvXse_NtCscTw95cGIolY_7tracing4spanNtB5_7EnteredNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !910
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noalias !909, !nonnull !6, !noundef !6
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noalias !909, !noundef !6
  store ptr %i.j, ptr %i.b, align 8, !noalias !910
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.l, ptr %i.m, align 8, !noalias !910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !910
  store ptr %i.b, ptr %i.a, align 8, !noalias !910
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !910
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 21, ptr noundef nonnull @37, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !910
  br label %_RNvXse_NtCscTw95cGIolY_7tracing4spanNtB5_7EnteredNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

_RNvXse_NtCscTw95cGIolY_7tracing4spanNtB5_7EnteredNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(416) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !19, !alias.scope !1027, !noundef !6
  %switch.i = icmp slt i64 %i.b, -9223372036854775806
  br i1 %switch.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) #25
          to label %.body20 unwind label %bb.ba

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.f = load i64, ptr %0, align 8, !range !18, !alias.scope !1028, !noundef !6
  %i.g = icmp eq i64 %i.f, -9223372036854775808
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body20 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.k

.body20:                                          ; preds = %bb.k, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.o, %bb.k ], [ %i.h, %bb.g ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1029, !noundef !6 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %.body20
  %i.m = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !1030
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity21ResolveCachedIdentityEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ba

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body20

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsjPG5xYjJYir_9aws_types8app_name7AppNameEECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !1031, !noundef !6 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit25, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth20AuthSchemePreferenceEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.s = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !1032
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit25

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity21ResolveCachedIdentityEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit25 unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.i, %.body20, %bb.j, %bb.p
  %.pn2 = phi { ptr, i32 } [ %i.z, %bb.p ], [ %.pn, %bb.j ], [ %.pn, %.body20 ], [ %.pn, %bb.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1033, !noundef !6 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity19SharedIdentityCacheEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.x = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !1034
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentialsEL_E9drop_slowCsjPG5xYjJYir_9aws_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials25SharedCredentialsProviderEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.ba

bb.p:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs9rVkZwOUgsI_13deltalake_aws:bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error16CredentialsErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !26, !noundef !6
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.h
    i64 1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error9UnhandledECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 2, label %bb.o
    i64 3, label %bb.u
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !6, !align !10, !noundef !6 ; 5 uses
  %i.d = load ptr, ptr %.val1, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !17, !invariant.load !6 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error9UnhandledECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !16, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error9UnhandledECs9rVkZwOUgsI_13deltalake_aws.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !17, !invariant.load !6 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !16, !invariant.load !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #29
  br label %common.resume

common.resume:                                    ; preds = %bb.y, %bb.z, %bb.s, %bb.t, %bb.m, %bb.n, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.am, %bb.s ], [ %i.j, %bb.f ], [ %i.y, %bb.m ], [ %i.j, %bb.g ], [ %i.y, %bb.n ], [ %i.am, %bb.t ], [ %i.ba, %bb.z ], [ %i.ba, %bb.y ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.p, align 8, !noundef !6 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.q, align 8            ; 6 uses
  %i.r = icmp eq ptr %.val2, null
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error9UnhandledECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.s = load ptr, ptr %.val3, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.s(ptr noundef nonnull %.val2)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !17, !invariant.load !6 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error9UnhandledECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error9UnhandledECs9rVkZwOUgsI_13deltalake_aws.exit

bb.m:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !17, !invariant.load !6 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %common.resume, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !16, !invariant.load !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #29
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error9UnhandledECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.x, %bb.w, %bb.r, %bb.q, %bb.l, %bb.k, %bb.h, %bb.e, %bb.d, %bb.a
  ret void

bb.o:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.ae, align 8           ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load ptr, ptr %i.af, align 8, !nonnull !6, !align !10, !noundef !6 ; 5 uses
  %i.ag = load ptr, ptr %.val5, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i8, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  invoke void %i.ag(ptr noundef nonnull %.val4)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !17, !invariant.load !6 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error9UnhandledECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !16, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef range(i64 1, 0) %i.ai, i64 noundef range(i64 1, 536870913) %i.al) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error9UnhandledECs9rVkZwOUgsI_13deltalake_aws.exit

bb.s:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !17, !invariant.load !6 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %common.resume, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !16, !invariant.load !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef range(i64 1, 0) %i.ao, i64 noundef range(i64 1, 536870913) %i.ar) #29
  br label %common.resume

bb.u:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.as, align 8           ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7 = load ptr, ptr %i.at, align 8, !nonnull !6, !align !10, !noundef !6 ; 5 uses
  %i.au = load ptr, ptr %.val7, align 8, !invariant.load !6 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.au, null
  br i1 %.not.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  invoke void %i.au(ptr noundef nonnull %.val6)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !17, !invariant.load !6 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error9UnhandledECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !range !16, !invariant.load !6
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef range(i64 1, 0) %i.aw, i64 noundef range(i64 1, 536870913) %i.az) #29
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error9UnhandledECs9rVkZwOUgsI_13deltalake_aws.exit

bb.y:                                             ; preds = %bb.v
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !range !17, !invariant.load !6 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %common.resume, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.be = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !16, !invariant.load !6
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef range(i64 1, 0) %i.bc, i64 noundef range(i64 1, 536870913) %i.bf) #29
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider6future18ProvideCredentialsECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076)
  %i.a = load i64, ptr %0, align 8, !range !15, !alias.scope !1077, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq i64 %i.a, 2
  br i1 %.not.i.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs9PsDcNHE0mC_16aws_smithy_async6future12now_or_later10NowOrLaterINtNtB4_6result6ResultNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsNtNtNtB2g_8provider5error16CredentialsErrorEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputB1Q_NtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1080, !noundef !6 ; 2 uses
  %.not.i.i.i.i.a = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.a, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !1081
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl5InnerE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %common.resume.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume.i.i:                                ; preds = %bb.n, %bb.m, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.s, %bb.n ], [ %i.s, %bb.m ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsbvkFyIu7lgC_4core3any6TypeIdNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxEENtNtNtBT_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs9PsDcNHE0mC_16aws_smithy_async6future12now_or_later10NowOrLaterINtNtB4_6result6ResultNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsNtNtNtB2g_8provider5error16CredentialsErrorEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputB1Q_NtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider5error16CredentialsErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs9PsDcNHE0mC_16aws_smithy_async6future12now_or_later10NowOrLaterINtNtB4_6result6ResultNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsNtNtNtB2g_8provider5error16CredentialsErrorEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputB1Q_NtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.i:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1077 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1077, !nonnull !6, !align !10, !noundef !6 ; 5 uses
  %i.m = load ptr, ptr %.val1.i.i, align 8, !invariant.load !6, !noalias !1077 ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i2.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.m(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !noalias !1077

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !17, !invariant.load !6, !noalias !1077 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs9PsDcNHE0mC_16aws_smithy_async6future12now_or_later10NowOrLaterINtNtB4_6result6ResultNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsNtNtNtB2g_8provider5error16CredentialsErrorEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputB1Q_NtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !16, !invariant.load !6, !noalias !1077
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #29, !noalias !1077
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs9PsDcNHE0mC_16aws_smithy_async6future12now_or_later10NowOrLaterINtNtB4_6result6ResultNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsNtNtNtB2g_8provider5error16CredentialsErrorEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputB1Q_NtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.m:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !17, !invariant.load !6, !noalias !1077 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %common.resume.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !6, !noalias !1077
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #29, !noalias !1077
  br label %common.resume.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs9PsDcNHE0mC_16aws_smithy_async6future12now_or_later10NowOrLaterINtNtB4_6result6ResultNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsNtNtNtB2g_8provider5error16CredentialsErrorEINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputB1Q_NtNtB4_6marker4SendEL_EEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5zo6j4Z0Hcj_20aws_credential_types16credentials_impl11CredentialsECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, %bb.h, %bb.k, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !1082, !noundef !6
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 2, label %bb.f
    i8 3, label %bb.i
    i8 4, label %bb.l
    i8 5, label %bb.m
    i8 6, label %bb.p
    i8 8, label %bb.s
    i8 9, label %bb.v
  ]

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobEECs9rVkZwOUgsI_13deltalake_aws.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.w, %bb.t, %bb.q, %bb.n, %bb.j, %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.t ], [ %i.c, %bb.d ], [ %i.f, %bb.g ], [ %i.i, %bb.j ], [ %i.m, %bb.n ], [ %i.p, %bb.q ], [ %i.v, %bb.w ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.b

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs2DiVQAxFeQE_16aws_smithy_types4blob4BlobENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.b

bb.i:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %bb.b

bb.l:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k)
  br label %bb.b

bb.m:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.m
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %bb.b
end_hunk_5
begin_hunk_6_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueECs9rVkZwOUgsI_13deltalake_aws:bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
  br label %bb.b

bb.s:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3: ; preds = %bb.s
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
  br label %bb.b

bb.v:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit5: ; preds = %bb.v
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !alias.scope !1085, !noundef !6
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc6borrow3CoweEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.d) #25
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore7AcquireECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs3_NtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.b, align 8, !align !10, !noundef !6 ; 2 uses
  %i.c = icmp eq ptr %.val2, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  invoke void %i.f(ptr noundef %.val3)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.f, !inline_history !2

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8, !align !10, !noundef !6 ; 2 uses
  %i.h = icmp eq ptr %.val, null
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECs9rVkZwOUgsI_13deltalake_aws.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6
  tail call void %i.k(ptr noundef %.val1), !inline_history !1086
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECs9rVkZwOUgsI_13deltalake_aws.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECs9rVkZwOUgsI_13deltalake_aws.exit4: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio4sync15batch_semaphore6WaiterECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !1097, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = trunc nuw i64 %i.a to i1
  br i1 %1, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1100, !nonnull !6, !noundef !6
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !1100
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !1103, !nonnull !6, !noundef !6
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !1103
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #28
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler6HandleECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core7TrailerECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !align !10, !noundef !6 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  invoke void %i.e(ptr noundef %.val1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.c, !inline_history !1

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1122, !noundef !6 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !1123
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_INtNtNtCskQDtHcQtBkN_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SyncNtB2G_4SendEL_E9drop_slowB1C_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1126, !noundef !6 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECs9rVkZwOUgsI_13deltalake_aws.exit3, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.o = atomicrmw add ptr %i.m, i64 -1 release, align 8, !noalias !1127
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECs9rVkZwOUgsI_13deltalake_aws.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_INtNtNtCskQDtHcQtBkN_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SyncNtB2G_4SendEL_E9drop_slowB1C_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l) #28
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECs9rVkZwOUgsI_13deltalake_aws.exit3

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECs9rVkZwOUgsI_13deltalake_aws.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs9rVkZwOUgsI_13deltalake_aws.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime4task24TaskHarnessScheduleHooksECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNvXsf_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtBQ_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1W_4SendEL_EINtNtB4_7convert4FromNtNtBS_6string6StringE4from11StringErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2i_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4G_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [560 x i8], align 16              ; 6 uses
  %i.b = alloca [544 x i8], align 16              ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.d = tail call noundef zeroext i1 @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !1135
  br i1 %i.d, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2m_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4K_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE15try_read_outputCs9rVkZwOUgsI_13deltalake_aws.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(560) %i.a, ptr noundef nonnull align 16 dereferenceable(560) %i.e, i64 560, i1 false), !noalias !1136
  store i32 2, ptr %i.e, align 16, !noalias !1136
  %i.f = load i32, ptr %i.a, align 16, !range !22, !noalias !1136, !noundef !6
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2i_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4G_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE11take_output0Cs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #24
          to label %bb.e unwind label %bb.d, !noalias !1137

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load i32, ptr %i.a, align 16, !range !22, !noalias !1136, !noundef !6
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %common.resume.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.h, %bb.f ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2P_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4X_5error5ErrorEEs_0EEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 16 dereferenceable(560) %i.a) #25
          to label %common.resume.i unwind label %bb.g, !noalias !1137

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !1137
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2i_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4G_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE11take_output0Cs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %i.b, ptr noundef nonnull align 16 dereferenceable(544) %i.l, i64 544, i1 false), !noalias !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1136
  %i.m = load i64, ptr %1, align 16, !range !28, !alias.scope !1139, !noundef !6
  %.not.i.i = icmp eq i64 %i.m, 3
  br i1 %.not.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_NtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1A_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2i_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4G_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE11take_output0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1a_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 dereferenceable(544) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_NtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1A_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %1, ptr noundef nonnull align 16 dereferenceable(544) %i.b, i64 544, i1 false), !noalias !1140
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_NtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1A_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.h, %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2i_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4G_5error5ErrorEEs_0EENtNtB15_8schedule16BlockingScheduleE11take_output0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %1, ptr noundef nonnull align 16 dereferenceable(544) %i.b, i64 544, i1 false), !noalias !1140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2m_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4K_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE15try_read_outputCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2m_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4K_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE15try_read_outputCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_NtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1A_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3j_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4X_E00EENtNtB15_8schedule16BlockingScheduleEB3j_(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !1150
  br i1 %i.c, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3n_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B51_E00EENtNtB19_8schedule16BlockingScheduleE15try_read_outputB3n_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1151
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !1151
  store i32 2, ptr %i.d, align 8, !noalias !1151
  %i.e = load i32, ptr %i.a, align 8, !range !22, !noalias !1151, !noundef !6
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3j_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4X_E00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3j_.exit.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #24
          to label %bb.d unwind label %bb.e, !noalias !1152

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.w, %.body.i ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3Q_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B5u_E00EEEEB3Q_(ptr noalias noundef align 8 dereferenceable(32) %i.a) #25
          to label %common.resume.i unwind label %bb.f, !noalias !1152

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !1152
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3j_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4X_E00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3j_.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1151
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  %i.j = load i64, ptr %1, align 8, !range !9, !alias.scope !1155, !noundef !6
  %3 = trunc nuw i64 %i.j to i1
  br i1 %3, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3j_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4X_E00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3j_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1157, !noundef !6
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1157, !noundef !6 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !1157 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i.i, null
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !6, !noalias !1157 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i.i)
          to label %bb.k unwind label %bb.m, !noalias !1157

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !17, !invariant.load !6, !noalias !1157 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !16, !invariant.load !6, !noalias !1157
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #29, !noalias !1157
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !17, !invariant.load !6, !noalias !1157 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !16, !invariant.load !6, !noalias !1157
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #29, !noalias !1157
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.m
  store i64 0, ptr %1, align 8, !alias.scope !1150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !1158
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3j_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4X_E00EENtNtB15_8schedule16BlockingScheduleE11take_output0B3j_.exit.i
  store i64 0, ptr %1, align 8, !alias.scope !1150
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !1158
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3n_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B51_E00EENtNtB19_8schedule16BlockingScheduleE15try_read_outputB3n_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3n_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B51_E00EENtNtB19_8schedule16BlockingScheduleE15try_read_outputB3n_.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2l_9GetResult5bytes00EENtNtB15_8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = tail call noundef zeroext i1 @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !1166
  br i1 %i.d, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2p_9GetResult5bytes00EENtNtB19_8schedule16BlockingScheduleE15try_read_outputCs9rVkZwOUgsI_13deltalake_aws.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !noalias !1167
  store i32 2, ptr %i.e, align 8, !noalias !1167
  %i.f = load i32, ptr %i.a, align 8, !range !22, !noalias !1167, !noundef !6
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2l_9GetResult5bytes00EENtNtB15_8schedule16BlockingScheduleE11take_output0Cs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #24
          to label %bb.e unwind label %bb.d, !noalias !1168

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load i32, ptr %i.a, align 8, !range !22, !noalias !1167, !noundef !6
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %common.resume.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.h, %bb.f ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2S_9GetResult5bytes00EEEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(80) %i.a) #25
          to label %common.resume.i unwind label %bb.g, !noalias !1168

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !1168
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2l_9GetResult5bytes00EENtNtB15_8schedule16BlockingScheduleE11take_output0Cs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !1169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1167
  %i.m = load i64, ptr %1, align 8, !range !29, !alias.scope !1170, !noundef !6
  %.not.i.i = icmp eq i64 %i.m, -9223372036854775788
  br i1 %.not.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2l_9GetResult5bytes00EENtNtB15_8schedule16BlockingScheduleE11take_output0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !1171
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.h, %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2l_9GetResult5bytes00EENtNtB15_8schedule16BlockingScheduleE11take_output0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !1171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2p_9GetResult5bytes00EENtNtB19_8schedule16BlockingScheduleE15try_read_outputCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2p_9GetResult5bytes00EENtNtB19_8schedule16BlockingScheduleE15try_read_outputCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1J_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB47_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [560 x i8], align 16              ; 6 uses
  %i.b = alloca [544 x i8], align 16              ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.d = tail call noundef zeroext i1 @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !1179
  br i1 %i.d, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1N_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4b_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE15try_read_outputCs9rVkZwOUgsI_13deltalake_aws.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(560) %i.a, ptr noundef nonnull align 16 dereferenceable(560) %i.e, i64 560, i1 false), !noalias !1180
  store i32 2, ptr %i.e, align 16, !noalias !1180
  %i.f = load i32, ptr %i.a, align 16, !range !22, !noalias !1180, !noundef !6
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1J_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB47_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE11take_output0Cs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #24
          to label %bb.e unwind label %bb.d, !noalias !1181

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load i32, ptr %i.a, align 16, !range !22, !noalias !1180, !noundef !6
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %common.resume.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.h, %bb.f ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2g_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4o_5error5ErrorEEs_0EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 16 dereferenceable(560) %i.a) #25
          to label %common.resume.i unwind label %bb.g, !noalias !1181

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !1181
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1J_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB47_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE11take_output0Cs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %i.b, ptr noundef nonnull align 16 dereferenceable(544) %i.l, i64 544, i1 false), !noalias !1182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1180
  %i.m = load i64, ptr %1, align 16, !range !28, !alias.scope !1183, !noundef !6
  %.not.i.i = icmp eq i64 %i.m, 3
  br i1 %.not.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_NtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1A_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1J_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB47_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE11take_output0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1a_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 16 dereferenceable(544) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_NtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1A_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %1, ptr noundef nonnull align 16 dereferenceable(544) %i.b, i64 544, i1 false), !noalias !1184
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_NtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1A_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.h, %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1J_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB47_5error5ErrorEEs_0ENtNtB15_8schedule16BlockingScheduleE11take_output0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %1, ptr noundef nonnull align 16 dereferenceable(544) %i.b, i64 544, i1 false), !noalias !1184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1N_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4b_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE15try_read_outputCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1N_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4b_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE15try_read_outputCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_NtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1A_5error5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2K_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4o_E00ENtNtB15_8schedule16BlockingScheduleEB2K_(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !1194
  br i1 %i.c, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2O_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4s_E00ENtNtB19_8schedule16BlockingScheduleE15try_read_outputB2O_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !1195
  store i32 2, ptr %i.d, align 8, !noalias !1195
  %i.e = load i32, ptr %i.a, align 8, !range !22, !noalias !1195, !noundef !6
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2K_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4o_E00ENtNtB15_8schedule16BlockingScheduleE11take_output0B2K_.exit.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #24
          to label %bb.e unwind label %bb.d, !noalias !1196

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load i32, ptr %i.a, align 8, !range !22, !noalias !1195, !noundef !6
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %common.resume.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %.body.i, %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.y, %.body.i ], [ %i.g, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCINvNtNtNtBN_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3h_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4V_E00EEEB3h_(ptr noalias noundef align 8 dereferenceable(32) %i.a) #25
          to label %common.resume.i unwind label %bb.g, !noalias !1196

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !1196
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2K_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4o_E00ENtNtB15_8schedule16BlockingScheduleE11take_output0B2K_.exit.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !1197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1195
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %i.l = load i64, ptr %1, align 8, !range !9, !alias.scope !1199, !noundef !6
  %3 = trunc nuw i64 %i.l to i1
  br i1 %3, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2K_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4o_E00ENtNtB15_8schedule16BlockingScheduleE11take_output0B2K_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1201, !noundef !6
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !1201, !noundef !6 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !1201 ; 6 uses
  %i.r = icmp eq ptr %.val.i.i.i, null
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.s = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !6, !noalias !1201 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.s(ptr noundef nonnull %.val.i.i.i)
          to label %bb.l unwind label %bb.n, !noalias !1201

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !17, !invariant.load !6, !noalias !1201 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !16, !invariant.load !6, !noalias !1201
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #29, !noalias !1201
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.n:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !17, !invariant.load !6, !noalias !1201 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !16, !invariant.load !6, !noalias !1201
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #29, !noalias !1201
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.n
  store i64 0, ptr %1, align 8, !alias.scope !1194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !1202
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCINvNtNtNtBb_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2K_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4o_E00ENtNtB15_8schedule16BlockingScheduleE11take_output0B2K_.exit.i
  store i64 0, ptr %1, align 8, !alias.scope !1194
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i, i64 24, i1 false), !noalias !1202
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2O_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4s_E00ENtNtB19_8schedule16BlockingScheduleE15try_read_outputB2O_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2O_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4s_E00ENtNtB19_8schedule16BlockingScheduleE15try_read_outputB2O_.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw15try_read_outputINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1M_9GetResult5bytes00ENtNtB15_8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = tail call noundef zeroext i1 @_RNvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2), !noalias !1210
  br i1 %i.d, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE15try_read_outputCs9rVkZwOUgsI_13deltalake_aws.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !noalias !1211
  store i32 2, ptr %i.e, align 8, !noalias !1211
  %i.f = load i32, ptr %i.a, align 8, !range !22, !noalias !1211, !noundef !6
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1M_9GetResult5bytes00ENtNtB15_8schedule16BlockingScheduleE11take_output0Cs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #24
          to label %bb.e unwind label %bb.d, !noalias !1212

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load i32, ptr %i.a, align 8, !range !22, !noalias !1211, !noundef !6
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %common.resume.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.f, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.h, %bb.f ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.f:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2j_9GetResult5bytes00EEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(80) %i.a) #25
          to label %common.resume.i unwind label %bb.g, !noalias !1212

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !1212
  unreachable

_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1M_9GetResult5bytes00ENtNtB15_8schedule16BlockingScheduleE11take_output0Cs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1211
  %i.m = load i64, ptr %1, align 8, !range !29, !alias.scope !1214, !noundef !6
  %.not.i.i = icmp eq i64 %i.m, -9223372036854775788
  br i1 %.not.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1M_9GetResult5bytes00ENtNtB15_8schedule16BlockingScheduleE11take_output0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !1215
  br label %common.resume.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.h, %_RNCNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB7_4CoreINtNtNtBb_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1M_9GetResult5bytes00ENtNtB15_8schedule16BlockingScheduleE11take_output0Cs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !1215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE15try_read_outputCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE15try_read_outputCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultIB16_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw17drop_abort_handleINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2k_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4I_5error5ErrorEEs_0EENtNtB17_8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2m_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4K_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs9rVkZwOUgsI_13deltalake_aws.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2T_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB51_5error5ErrorEEs_0EENtNtB2a_8schedule16BlockingScheduleEEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2m_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4K_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2m_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4K_5error5ErrorEEs_0EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw17drop_abort_handleINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3l_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4Z_E00EENtNtB17_8schedule16BlockingScheduleEB3l_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3n_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B51_E00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3n_.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3V_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B5z_E00EENtNtB2a_8schedule16BlockingScheduleEEEB3V_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3n_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B51_E00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3n_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3n_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B51_E00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceB3n_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw17drop_abort_handleINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2n_9GetResult5bytes00EENtNtB17_8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2p_9GetResult5bytes00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs9rVkZwOUgsI_13deltalake_aws.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskIBH_NCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2W_9GetResult5bytes00EENtNtB2a_8schedule16BlockingScheduleEEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2p_9GetResult5bytes00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2p_9GetResult5bytes00EENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw17drop_abort_handleINtNtNtB6_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1L_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB49_5error5ErrorEEs_0ENtNtB17_8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1N_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4b_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs9rVkZwOUgsI_13deltalake_aws.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2P_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4X_5error5ErrorEEs_0ENtNtB2a_8schedule16BlockingScheduleEEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1N_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4b_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1N_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4b_5error5ErrorEEs_0ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw17drop_abort_handleINtNtNtB6_8blocking4task12BlockingTaskNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2M_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4q_E00ENtNtB17_8schedule16BlockingScheduleEB2M_(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2O_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4s_E00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2O_.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCNCINvNtNtNtB1m_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB3R_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B5v_E00ENtNtB2a_8schedule16BlockingScheduleEEEB3R_(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2O_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4s_E00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2O_.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2O_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4s_E00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceB2O_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw17drop_abort_handleINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1O_9GetResult5bytes00ENtNtB17_8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs9rVkZwOUgsI_13deltalake_aws.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2S_9GetResult5bytes00ENtNtB2a_8schedule16BlockingScheduleEEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE14drop_referenceCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw21drop_join_handle_slowINtNtNtB6_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2o_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4M_5error5ErrorEEs_0EENtNtB1b_8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [560 x i8], align 16              ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.i, %bb.h, %bb.e, %.thread.i, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1218
  store i32 2, ptr %i.a, align 16, !noalias !1218
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2g_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4E_5error5ErrorEEs_0EENtNtB13_8schedule16BlockingScheduleE9set_stageCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 16 %i.e, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(560) %i.a)
          to label %.thread.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
end_hunk_6
begin_hunk_7_@_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task3raw8shutdownINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1E_9GetResult5bytes00ENtNtBX_8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws:bb.a
bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core4CellINtNtNtB1m_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2S_9GetResult5bytes00ENtNtB2a_8schedule16BlockingScheduleEEECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE8shutdownCs9rVkZwOUgsI_13deltalake_aws.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1K_9GetResult5bytes00ENtNtB13_8schedule16BlockingScheduleE9set_stageCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.a)
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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #23
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1M_9GetResult5bytes00ENtNtB15_8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1M_9GetResult5bytes00ENtNtB15_8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1M_9GetResult5bytes00ENtNtB15_8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.h, %bb.g
  %.sroa.8.0.i.i = phi ptr [ undef, %bb.g ], [ %i.k, %bb.h ]
  %.sroa.63.0.i.i = phi ptr [ null, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.02.0.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.02.0.i.i = load i64, ptr %.sroa.02.0.in.i.i, align 8, !range !27, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 -9223372036854775789, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.63.0.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.8.0.i.i, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1K_9GetResult5bytes00ENtNtB13_8schedule16BlockingScheduleE9set_stageCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE8completeCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE8shutdownCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harnessINtB5_7HarnessINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1Q_9GetResult5bytes00ENtNtB19_8schedule16BlockingScheduleE8shutdownCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.b, %bb.c, %_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime4task7harness11cancel_taskINtNtNtB6_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1M_9GetResult5bytes00ENtNtB15_8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1b_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3z_5error5ErrorEEs_0B2T_ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(176) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [176 x i8], align 8               ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 3 uses
  store i64 %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.j = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1346 ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = trunc nuw i64 %i.g to i1                 ; 2 uses
  %.sroa.01.0.v = select i1 %i.k, i64 464, i64 712
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %0, i64 176, i1 false)
  %.sroa.01.0.v.i.i.i = select i1 %i.k, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !1346, !noundef !6 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1346, !nonnull !6, !align !10, !noundef !6
  %i.p = atomicrmw add ptr %i.m, i64 1 monotonic, align 8, !noalias !1346
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1346
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1v_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3T_5error5ErrorEEs_0ENtNtBR_8schedule16BlockingScheduleECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(176) %i.b, ptr noundef %i.m, ptr %.sroa.5.0.i.i.i, i64 noundef %i.j)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.r = load ptr, ptr %i.a, align 8, !noalias !1346, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1346, !nonnull !6, !noundef !6 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1346
  %i.u = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.01.0, ptr noundef nonnull %i.r, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3W_5error5ErrorEEs_0B3g_ECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.h, !noalias !1347 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i.i unwind label %bb.j, !noalias !1347

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.w, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.j, !noalias !1347

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !1347
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3W_5error5ErrorEEs_0B3g_ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %.noexc
  %i.y = extractvalue { i64, ptr } %i.u, 0
  %i.z = extractvalue { i64, ptr } %i.u, 1        ; 2 uses
  %i.aa = trunc nuw i64 %i.y to i1
  %.not.i = icmp ne ptr %i.z, null
  %or.cond.not.i = select i1 %i.aa, i1 %.not.i, i1 false, !prof !11
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1s_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3Q_5error5ErrorEEs_0B3a_ECs9rVkZwOUgsI_13deltalake_aws.exit, !prof !11

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3W_5error5ErrorEEs_0B3g_ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1348
  store ptr %i.z, ptr %i.d, align 8, !noalias !1348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1348
  store ptr %i.d, ptr %i.c, align 8, !noalias !1348
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1348
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #24
          to label %bb.m unwind label %bb.l, !noalias !1349

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.d, align 8, !noalias !1348, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.val.i) #25
          to label %bb.o unwind label %bb.n, !noalias !1349

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !1349
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ad = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.t)
          to label %.noexc.i unwind label %bb.n, !noalias !1349

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ad, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.t)
          to label %.body unwind label %bb.n, !noalias !1349

bb.q:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.v, %.noexc.i.i ], [ %i.v, %bb.i ], [ %i.ab, %.noexc.i ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %i.e) #25
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1s_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3Q_5error5ErrorEEs_0B3a_ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1y_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3W_5error5ErrorEEs_0B3g_ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.af = load i64, ptr %i.e, align 8, !range !9, !alias.scope !1352, !noundef !6
  %2 = trunc nuw i64 %i.af to i1
  br i1 %2, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1s_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3Q_5error5ErrorEEs_0B3a_ECs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  %i.ag = load ptr, ptr %i.i, align 8, !alias.scope !1355, !nonnull !6, !noundef !6
  %i.ah = atomicrmw add ptr %i.ag, i64 -1 release, align 8, !noalias !1355
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #28
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1s_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3Q_5error5ErrorEEs_0B3a_ECs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  %i.aj = load ptr, ptr %i.i, align 8, !alias.scope !1358, !nonnull !6, !noundef !6
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 release, align 8, !noalias !1358
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #28
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.t

bb.v:                                             ; preds = %bb.w, %.body
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

.thread:                                          ; preds = %.body, %bb.w
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %.pn8

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtBN_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2U_5error5ErrorEEs_0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(176) %0) #25
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4pool14spawn_blockingNCNCINvNtNtNtB6_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2c_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B3Q_E00uEB2c_(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.f = invoke { i64, ptr } @_RNvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.w       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { i64, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.f, 1        ; 4 uses
  store i64 %i.g, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = trunc nuw i64 %i.g to i1                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %. = select i1 %i.j, i64 464, i64 712
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.l = atomicrmw add ptr @_RNvNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task2idNtB6_2Id4next7NEXT_ID, i64 1 monotonic, align 8, !noalias !1385 ; 2 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.01.0.v.i.i.i = select i1 %i.j, i64 488, i64 512
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.v.i.i.i ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !1385, !noundef !6 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !1385, !nonnull !6, !align !10, !noundef !6
  %i.q = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !1385
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ undef, %bb.d ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1385
  invoke void @_RINvNtNtCskQDtHcQtBkN_5tokio7runtime4task8new_taskINtNtNtB4_8blocking4task12BlockingTaskNCNCINvNtNtNtB4_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2w_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4a_E00ENtNtBR_8schedule16BlockingScheduleEB2w_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noundef %i.n, ptr %.sroa.5.0.i.i.i, i64 noundef %i.l)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.g
  %i.s = load ptr, ptr %i.a, align 8, !noalias !1385, !nonnull !6, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !1385, !nonnull !6, !noundef !6 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1385
  %i.v = invoke { i64, ptr } @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB5_7Spawner10spawn_task(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, ptr noundef nonnull %i.s, i1 noundef zeroext true, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2z_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4d_E00uEB2z_.exit.i unwind label %bb.h, !noalias !1386 ; 2 uses

bb.h:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i.i unwind label %bb.j, !noalias !1386

.noexc.i.i:                                       ; preds = %bb.h
  br i1 %i.x, label %bb.i, label %.body

bb.i:                                             ; preds = %.noexc.i.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.j, !noalias !1386

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !1386
  unreachable

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2z_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4d_E00uEB2z_.exit.i: ; preds = %.noexc
  %i.z = extractvalue { i64, ptr } %i.v, 0
  %i.aa = extractvalue { i64, ptr } %i.v, 1       ; 2 uses
  %i.ab = trunc nuw i64 %i.z to i1
  %.not.i = icmp ne ptr %i.aa, null
  %or.cond.not.i = select i1 %i.ab, i1 %.not.i, i1 false, !prof !11
  br i1 %or.cond.not.i, label %bb.k, label %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2t_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B47_E00uEB2t_.exit, !prof !11

bb.k:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2z_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4d_E00uEB2z_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1387
  store ptr %i.aa, ptr %i.c, align 8, !noalias !1387
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1387
  store ptr %i.c, ptr %i.b, align 8, !noalias !1387
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs7_NtNtCs2pqxYH9ZEk8_3std2io5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1387
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #24
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !1387, !nonnull !6, !noundef !6
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %.val.i) #25
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.ae = invoke noundef zeroext i1 @_RNvMNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5stateNtB2_5State21drop_join_handle_fast(ptr noundef nonnull align 8 %i.u)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.o
  br i1 %i.ae, label %bb.p, label %.body

bb.p:                                             ; preds = %.noexc.i
  invoke void @_RNvMs_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task3rawNtB4_7RawTask21drop_join_handle_slow(ptr noundef nonnull %i.u)
          to label %.body unwind label %bb.n

bb.q:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.noexc.i.i, %bb.i, %.noexc.i, %bb.p, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.w, %.noexc.i.i ], [ %i.w, %bb.i ], [ %i.ac, %.noexc.i ], [ %i.ac, %bb.p ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(16) %i.d) #25
          to label %.thread unwind label %bb.v

_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2t_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B47_E00uEB2t_.exit: ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner20spawn_blocking_innerNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2z_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4d_E00uEB2z_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %i.ag = load i64, ptr %i.d, align 8, !range !9, !alias.scope !1390, !noundef !6
  %2 = trunc nuw i64 %i.ag to i1
  br i1 %2, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2t_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B47_E00uEB2t_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %i.ah = load ptr, ptr %i.i, align 8, !alias.scope !1393, !nonnull !6, !noundef !6
  %i.ai = atomicrmw add ptr %i.ah, i64 -1 release, align 8, !noalias !1393
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #28
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.t:                                             ; preds = %_RINvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4poolNtB6_7Spawner14spawn_blockingNCNCINvNtNtNtBa_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2t_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B47_E00uEB2t_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  %i.ak = load ptr, ptr %i.i, align 8, !alias.scope !1396, !nonnull !6, !noundef !6
  %i.al = atomicrmw add ptr %i.ak, i64 -1 release, align 8, !noalias !1396
  %i.am = icmp eq i64 %i.al, 1
  br i1 %i.am, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

bb.u:                                             ; preds = %bb.t
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #28
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCskQDtHcQtBkN_5tokio7runtime6handle6HandleECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.u

bb.v:                                             ; preds = %bb.x, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable

.thread:                                          ; preds = %bb.w, %bb.x, %.body
  %.pn9 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.w ], [ %eh.lpad-body, %.body ], [ %lpad.thr_comm.split-lp, %bb.x ]
  resume { ptr, i32 } %.pn9

bb.w:                                             ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = atomicrmw add ptr %0, i64 -1 release, align 8, !noalias !1397
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #28
          to label %.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_BP_EE6extendINtNtNtB2p_8adapters3map3MapINtNtB3w_6filter6FilterINtNtNtNtB1A_11collections4hash3map4IterBP_BP_ENCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB59_16S3StorageOptions8from_map0ENCB53_s_0EEB5b_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.4.0.copyload5 = load i64, ptr %.sroa.4.0..sroa_idx4, align 8, !alias.scope !1401
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.4.0.copyload5, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringB2b_ENCNvMs2_NtCs9rVkZwOUgsI_13deltalake_aws7storageNtB30_16S3StorageOptions8from_map0ENCB2U_s_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4m_8for_each4callTB2b_B2b_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5J_7HashMapB2b_B2b_NtNtNtB1s_4hash6random11RandomStateEINtNtB4q_7collect6ExtendB5p_E6extendBN_E0E0EB32_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_BP_EE6extendINtNtNtB2p_8adapters3map3MapINtNtNtNtB1A_11collections4hash3map8IntoIterBP_BP_ENCNvYNtCs9rVkZwOUgsI_13deltalake_aws17S3LogStoreFactoryNtNtB4P_7storage26S3StorageOptionsConversion11with_env_s30EEB4P_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !1405
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.val3 = load i64, ptr %i.e, align 8            ; 2 uses
  %i.f = add i64 %.val3, 1
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.0 = select i1 %i.d, i64 %.val3, i64 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_ENCNvYNtCs9rVkZwOUgsI_13deltalake_aws17S3LogStoreFactoryNtNtB2B_7storage26S3StorageOptionsConversion11with_env_s30ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5b_7HashMapB1N_B1N_NtNtNtB10_4hash6random11RandomStateEINtNtB4o_7collect6ExtendTB1N_B1N_EE6extendB3_E0EB2B_.exit unwind label %bb.b

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_ENCNvYNtCs9rVkZwOUgsI_13deltalake_aws17S3LogStoreFactoryNtNtB2B_7storage26S3StorageOptionsConversion11with_env_s30ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5b_7HashMapB1N_B1N_NtNtNtB10_4hash6random11RandomStateEINtNtB4o_7collect6ExtendTB1N_B1N_EE6extendB3_E0EB2B_.exit: ; preds = %bb.a
  tail call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1T_ENCNvYNtCs9rVkZwOUgsI_13deltalake_aws17S3LogStoreFactoryNtNtB2H_7storage26S3StorageOptionsConversion11with_env_s30ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4q_8for_each4callTB1T_B1T_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5N_7HashMapB1T_B1T_NtNtNtB16_4hash6random11RandomStateEINtNtB4u_7collect6ExtendB5t_E6extendBN_E0E0EB2H_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB2a_ENCNvYNtCs9rVkZwOUgsI_13deltalake_aws17S3LogStoreFactoryNtNtB2Y_7storage26S3StorageOptionsConversion11with_env_s30EEB2Y_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.i

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB2a_ENCNvYNtCs9rVkZwOUgsI_13deltalake_aws17S3LogStoreFactoryNtNtB2Y_7storage26S3StorageOptionsConversion11with_env_s30EEB2Y_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_BP_EE6extendINtNtNtB2p_8adapters3map3MapINtNtNtNtB1A_11collections4hash3map8IntoIterBP_BP_ENCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage20S3ObjectStoreFactoryNtB4P_26S3StorageOptionsConversion11with_env_s30EEB4R_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !1409
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !6
  %i.d = icmp eq i64 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.val3 = load i64, ptr %i.e, align 8            ; 2 uses
  %i.f = add i64 %.val3, 1
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.0 = select i1 %i.d, i64 %.val3, i64 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_ENCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage20S3ObjectStoreFactoryNtB2B_26S3StorageOptionsConversion11with_env_s30ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5e_7HashMapB1N_B1N_NtNtNtB10_4hash6random11RandomStateEINtNtB4r_7collect6ExtendTB1N_B1N_EE6extendB3_E0EB2D_.exit unwind label %bb.b

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_ENCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage20S3ObjectStoreFactoryNtB2B_26S3StorageOptionsConversion11with_env_s30ENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5e_7HashMapB1N_B1N_NtNtNtB10_4hash6random11RandomStateEINtNtB4r_7collect6ExtendTB1N_B1N_EE6extendB3_E0EB2D_.exit: ; preds = %bb.a
  tail call void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1T_ENCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage20S3ObjectStoreFactoryNtB2H_26S3StorageOptionsConversion11with_env_s30ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4t_8for_each4callTB1T_B1T_ENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5Q_7HashMapB1T_B1T_NtNtNtB16_4hash6random11RandomStateEINtNtB4x_7collect6ExtendB5w_E6extendBN_E0E0EB2J_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB2a_ENCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage20S3ObjectStoreFactoryNtB2Y_26S3StorageOptionsConversion11with_env_s30EEB30_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.i

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB2a_ENCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage20S3ObjectStoreFactoryNtB2Y_26S3StorageOptionsConversion11with_env_s30EEB30_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB7_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBP_B1r_EE6extendAB4p_j1_ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [96 x i8], align 8                ; 7 uses
  %i.e = alloca [96 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  store i64 0, ptr %i.e, align 8, !alias.scope !1433
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !1433
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.54.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %1, i64 80, i1 false), !alias.scope !1434
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1436)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  %i.h = load i64, ptr %i.d, align 8, !alias.scope !1438, !noundef !6 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1438, !noundef !6 ; 4 uses
  %i.k = icmp ule i64 %i.h, %i.j
  tail call void @llvm.assume(i1 %i.k)
  %.not2.i.i.i = icmp eq i64 %i.h, %i.j
  br i1 %.not2.i.i.i, label %_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callBT_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB4g_7HashMapBU_B1w_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2X_7collect6ExtendBT_E6extendABT_B2P_E0E0ECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %i.j, 1
  store i64 1, ptr %i.d, align 8, !alias.scope !1438
  %i.l = icmp eq i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1440
  br i1 %.not.i.i.i, label %.lr.ph.i.us.i.i, label %.lr.ph.i.preheader3.i.i

.lr.ph.i.preheader3.i.i:                          ; preds = %.lr.ph.i.preheader.i.i
  invoke void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
          to label %.noexc.peel.i.i unwind label %.split.loopexit.split-lp.i.i, !noalias !1441

end_hunk_7
begin_hunk_8_@_RNvXs0_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB5_26OptionsCredentialsProviderNtNtNtCs5zo6j4Z0Hcj_20aws_credential_types8provider11credentials18ProvideCredentials19provide_credentials:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2023
  br label %bb.aj

bb.al:                                            ; preds = %bb.aj
  %.sroa.0.0.copyload5 = load ptr, ptr %i.f, align 8, !noalias !2042
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0.copyload6 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2042
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0.copyload7 = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2042
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7.0.copyload8 = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !2042
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2023
  br label %_RNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4_26OptionsCredentialsProvider11credentials.exit

bb.am:                                            ; preds = %.body.i
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !2024
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNvMs_NtCs9rVkZwOUgsI_13deltalake_aws11credentialsNtB4_26OptionsCredentialsProvider11credentials.exit: ; preds = %bb.p, %bb.ad, %bb.al
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload8, %bb.al ], [ ptrtoint (ptr @45 to i64), %bb.ad ], [ ptrtoint (ptr @45 to i64), %bb.p ]
  %.sroa.6.0 = phi ptr [ %.sroa.6.0.copyload7, %bb.al ], [ %i.dc, %bb.ad ], [ %i.bh, %bb.p ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload6, %bb.al ], [ 0, %bb.ad ], [ 0, %bb.p ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload5, %bb.al ], [ null, %bb.ad ], [ null, %bb.p ]
  call void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.k), !noalias !2024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 1, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx, align 8
  %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.6.0, ptr %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx, align 8
  %.sroa.44.sroa.6.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7.0, ptr %.sroa.44.sroa.6.0..sroa.44.0..sroa_idx.sroa_idx, align 8
  %.sroa.44.sroa.7.0..sroa.44.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.44.sroa.7.0..sroa.44.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4taskINtB5_12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1R_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB4f_5error5ErrorEEs_0EENtNtNtB3E_6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([544 x i8]) align 16 captures(none) dereferenceable(544) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !align !10, !noundef !6 ; 3 uses
  store ptr null, ptr %1, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = invoke { i1, i8 } @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop4stop()
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtBO_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3b_5error5ErrorEEs_0EINtNtNtB2A_3ops8function6FnOnceuE9call_onceCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([544 x i8]) align 16 captures(address) dereferenceable(544) %0, ptr noalias noundef nonnull align 8 %i.a)
  ret void

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.c

bb.f:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1m_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3u_5error5ErrorEEs_0EECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %i.a) #25
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4taskINtB5_12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2S_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4w_E00EENtNtNtB4B_6future6future6Future4pollB2S_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !10, !noundef !6 ; 3 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = invoke { i1, i8 } @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop4stop()
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2g_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B3U_E00EINtNtNtB3Z_3ops8function6FnOnceuE9call_onceB2g_(ptr noalias noundef nonnull align 8 %i.a)
  ret i1 false

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.c

bb.f:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2O_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B4s_E00EEB2O_(ptr nonnull %i.a) #25
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4taskINtB5_12BlockingTaskINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1U_9GetResult5bytes00EENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !align !10, !noundef !6 ; 3 uses
  store ptr null, ptr %1, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = invoke { i1, i8 } @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop4stop()
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvXst_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBR_9GetResult5bytes00EINtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceuE9call_onceCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 %i.a)
  ret void

bb.e:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.c

bb.f:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1p_9GetResult5bytes00EECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %i.a) #25
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4taskINtB5_12BlockingTaskNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB1i_8logstore18get_latest_version00INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB3G_5error5ErrorEEs_0ENtNtNtB35_6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([544 x i8]) align 16 captures(none) dereferenceable(544) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 5 uses
  %i.b = alloca [176 x i8], align 8               ; 9 uses
  %i.c = alloca [544 x i8], align 16              ; 4 uses
  %i.d = alloca [176 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.01.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  store i64 2, ptr %1, align 8
  %.not = icmp eq i64 %.sroa.01.0.copyload, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.01.0.copyload, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5.0..sroa.0.0..sroa_idx, i64 168, i1 false)
  %i.e = invoke { i1, i8 } @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop4stop()
          to label %bb.d unwind label %bb.m       ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.b, ptr noundef nonnull align 8 dereferenceable(176) %i.d, i64 176, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2062)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2063
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.f, ptr %i.g, align 8, !noalias !2063
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false)
  invoke void @_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB1C_5error5ErrorENCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtB2X_8logstore18get_latest_version00BW_Es_00ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([544 x i8]) align 16 captures(address) dereferenceable(544) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.a)
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !2064)
  call void @llvm.experimental.noalias.scope.decl(metadata !2065)
  %i.j = load i64, ptr %i.b, align 8, !range !9, !alias.scope !2066, !noundef !6
  %3 = trunc nuw i64 %i.j to i1
  br i1 %3, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2067)
  call void @llvm.experimental.noalias.scope.decl(metadata !2068)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2069, !nonnull !6, !noundef !6
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !2070
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.l, !noalias !2071

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2063
  call void @llvm.experimental.noalias.scope.decl(metadata !2072)
  call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  %i.o = load i64, ptr %i.b, align 8, !range !9, !alias.scope !2074, !noundef !6
  %4 = trunc nuw i64 %i.o to i1
  br i1 %4, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit3.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  call void @llvm.experimental.noalias.scope.decl(metadata !2076)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !2077, !nonnull !6, !noundef !6
  %i.r = atomicrmw add ptr %i.q, i64 -1 release, align 8, !noalias !2078
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit3.i

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit3.i unwind label %bb.k, !noalias !2071

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.f) #25
          to label %.body.thread unwind label %bb.l, !noalias !2071

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit3.i: ; preds = %bb.j, %bb.i, %bb.h
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %0, ptr noundef nonnull align 16 dereferenceable(544) %i.c, i64 544, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.k, %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !2071
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %i.f) #25
          to label %.body.thread unwind label %bb.l, !noalias !2071

.body.thread:                                     ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i, %bb.k, %bb.m
  %eh.lpad-body9 = phi { ptr, i32 } [ %i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher8DispatchECs9rVkZwOUgsI_13deltalake_aws.exit.i ], [ %i.v, %bb.m ], [ %i.t, %bb.k ]
  resume { ptr, i32 } %eh.lpad-body9

bb.m:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNvNtBN_8logstore18get_latest_version00INtNtB4_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel11log_segment10LogSegmentNtNtB2U_5error5ErrorEEs_0ECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(176) %i.d) #25
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4taskINtB5_12BlockingTaskNCNCINvNtNtNtB9_9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2j_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B3X_E00ENtNtNtB42_6future6future6Future4pollB2j_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !noundef !6   ; 4 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %i.a, align 8
  %i.c = invoke { i1, i8 } @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop4stop()
          to label %_RNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB1y_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B3c_E00B1y_.exit unwind label %bb.d ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26
  unreachable

_RNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB1y_11credentials19resolve_credentials0INtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B3c_E00B1y_.exit: ; preds = %bb.b
  tail call void @_RNvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker3run(ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 false

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2f_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B3T_E00EB2f_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !2085
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2f_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B3T_E00EB2f_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker6WorkerE9drop_slowBQ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #28
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCINvNtNtNtNtCskQDtHcQtBkN_5tokio7runtime9scheduler12multi_thread6worker14block_in_placeNCINvNtCs9rVkZwOUgsI_13deltalake_aws7storage18execute_sdk_futureNCNvNtB2f_11credentials19resolve_credentials0INtNtB4_6result6ResultNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE0B3T_E00EB2f_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking4taskINtB5_12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1l_9GetResult5bytes00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 12 uses
  %i.k = alloca [48 x i8], align 8                ; 13 uses
  %i.l = alloca [72 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.sroa.01.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  store i64 -9223372036854775808, ptr %1, align 8
  %.not = icmp eq i64 %.sroa.01.0.copyload, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa.0.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.sroa.01.0.copyload, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa.0.0..sroa_idx, i64 40, i1 false)
  %i.n = invoke { i1, i8 } @_RNvNtNtCskQDtHcQtBkN_5tokio4task4coop4stop()
          to label %bb.d unwind label %bb.ad      ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !2093, !noundef !6
  %i.r = invoke { i64, ptr } @_RNvXsc_NtCs2pqxYH9ZEk8_3std2fsNtB5_4FileNtNtB7_2io4Seek4seek(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.o, i64 noundef 0, i64 noundef %i.q)
          to label %bb.e unwind label %.thread90.i, !noalias !2092 ; 2 uses

.thread90.i:                                      ; preds = %bb.y, %bb.k, %bb.i, %bb.d
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread86.thread103.i

bb.e:                                             ; preds = %bb.d
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = trunc nuw i64 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.u = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2094
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k)
          to label %bb.y unwind label %bb.g, !noalias !2095

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull %i.u) #25
          to label %.thread86.thread103.i unwind label %bb.h, !noalias !2095

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #23, !noalias !2095
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2096
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !2093, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2096
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.y, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.j unwind label %.thread90.i, !noalias !2092

bb.j:                                             ; preds = %bb.i
  %i.z = load i64, ptr %i.d, align 8, !range !9, !noalias !2096, !noundef !6
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !18, !noalias !2096, !noundef !6 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l, !prof !8

bb.k:                                             ; preds = %bb.j
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !2096
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #24
          to label %bb.x unwind label %.thread90.i, !noalias !2092

bb.l:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !2096, !nonnull !6, !noundef !6
  %i.ag = icmp ule i64 %i.y, %i.ac
end_hunk_8
