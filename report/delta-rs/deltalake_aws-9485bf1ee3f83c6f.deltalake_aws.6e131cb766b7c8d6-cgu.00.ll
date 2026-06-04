inline.NumInlined: 2659
inline.NumDeleted: 662
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4j34XAPZOn0_4http10extensions10ExtensionsECs9rVkZwOUgsI_13deltalake_aws:bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #23
  resume { ptr, i32 } %i.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 32, i64 noundef 8) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIB13_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3E_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2W_8IdHasherEEEEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIB13_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3E_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2W_8IdHasherEEEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdIBH_DNtNtCs4j34XAPZOn0_4http10extensions8AnyCloneNtNtB4_6marker4SyncNtB3h_4SendEL_EINtNtB4_4hash18BuildHasherDefaultNtB2z_8IdHasherEEEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span11EnteredSpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.c = load i64, ptr %0, align 8, !range !23, !alias.scope !446, !noundef !7
  %.not.i.i = icmp eq i64 %i.c, 2
  br i1 %.not.i.i, label %.noexc1, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc1 unwind label %bb.e

.noexc1:                                          ; preds = %bb.a, %bb.b
  %i.e = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RNvXsf_NtCscTw95cGIolY_7tracing4spanNtB5_11EnteredSpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.c:                                             ; preds = %.noexc1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !446, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.h, null
  br i1 %.not4.i.i, label %_RNvXsf_NtCscTw95cGIolY_7tracing4spanNtB5_11EnteredSpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !446
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store ptr %i.j, ptr %i.b, align 8, !noalias !446
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.l, ptr %i.m, align 8, !noalias !446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !446
  store ptr %i.b, ptr %i.a, align 8, !noalias !446
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !446
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @134, ptr noundef nonnull %i.a) #27
          to label %.noexc2 unwind label %bb.e

.noexc2:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !446
  br label %_RNvXsf_NtCscTw95cGIolY_7tracing4spanNtB5_11EnteredSpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %0) #24
          to label %bb.g unwind label %bb.f

_RNvXsf_NtCscTw95cGIolY_7tracing4spanNtB5_11EnteredSpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit: ; preds = %.noexc2, %bb.c, %.noexc1
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(40) %0)
  ret void

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.c = load i64, ptr %0, align 8, !range !23, !alias.scope !447, !noundef !7
  %.not.i = icmp eq i64 %i.c, 2
  br i1 %.not.i, label %.noexc1, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !range !450, !alias.scope !447, !noundef !7
  %i.f = invoke noundef zeroext i1 @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, i64 noundef %i.e)
          to label %.noexc1 unwind label %bb.e    ; 0 uses

.noexc1:                                          ; preds = %bb.a, %bb.b
  %i.g = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.c, label %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.c:                                             ; preds = %.noexc1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !447, !align !47, !noundef !7 ; 3 uses
  %.not3.i = icmp eq ptr %i.j, null
  br i1 %.not3.i, label %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !447
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !7
  store ptr %i.l, ptr %i.b, align 8, !noalias !447
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !447
  store ptr %i.b, ptr %i.a, align 8, !noalias !447
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !447
  invoke fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 13, ptr noundef nonnull @143, ptr noundef nonnull %i.a) #27
          to label %.noexc2 unwind label %bb.e

.noexc2:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !447
  br label %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(32) %0) #24
          to label %bb.j unwind label %bb.i

_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit: ; preds = %.noexc2, %bb.c, %.noexc1
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.q = load i64, ptr %0, align 8, !range !23, !alias.scope !451, !noundef !7 ; 2 uses
  %i.r = icmp eq i64 %i.q, 2
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !469, !nonnull !7, !noundef !7
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !469
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs2y6mmZ7bjoM_12tracing_core10subscriber10SubscriberNtNtCsbvkFyIu7lgC_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t) #26
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCscTw95cGIolY_7tracing4span5InnerEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %_RNvXs7_NtCscTw95cGIolY_7tracing4spanNtB5_4SpanNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit, %bb.f, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.j:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws(ptr captures(address, read_provenance) %.0.val) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.c = load i64, ptr %.0.val, align 8, !range !23, !alias.scope !470, !noalias !473, !noundef !7
  %.not.i.i = icmp eq i64 %i.c, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !noalias !473
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !473
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_RNvXse_NtCscTw95cGIolY_7tracing4spanNtB5_7EnteredNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !470, !noalias !473, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.h, null
  br i1 %.not4.i.i, label %_RNvXse_NtCscTw95cGIolY_7tracing4spanNtB5_7EnteredNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !476
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noalias !473, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noalias !473, !noundef !7
  store ptr %i.j, ptr %i.b, align 8, !noalias !476
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.l, ptr %i.m, align 8, !noalias !476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !476
  store ptr %i.b, ptr %i.a, align 8, !noalias !476
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !476
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.0.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @134, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !476
  br label %_RNvXse_NtCscTw95cGIolY_7tracing4spanNtB5_7EnteredNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit

_RNvXse_NtCscTw95cGIolY_7tracing4spanNtB5_7EnteredNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit
    i64 1, label %bb.c
  ], !prof !477

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !7, !align !47, !noundef !7 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !19, !invariant.load !7 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !20, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.h, i64 noundef range(i64 1, 536870913) %i.k) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !19, !invariant.load !7 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !20, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #23
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !19, !invariant.load !7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SyncNtB2b_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !20, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SyncNtB2b_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !19, !invariant.load !7 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputuNtNtBO_6marker4SyncNtB1D_4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !20, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #23
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputuNtNtBO_6marker4SyncNtB1D_4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputuNtNtBO_6marker4SyncNtB1D_4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws.exit4.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SyncNtB2b_4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api4http10extensions10ExtensionsECs9rVkZwOUgsI_13deltalake_aws(ptr %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4ZQtPNQO4Jt_4http10extensions10ExtensionsECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client4http4body18minimum_throughput32MaybeUploadThroughputCheckFutureECs9rVkZwOUgsI_13deltalake_aws:bb.a
  %i.u = load i64, ptr %i.t, align 8, !range !20, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i, i64 noundef range(i64 1, 0) %i.r, i64 noundef range(i64 1, 536870913) %i.u) #23
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.j, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.p, %bb.j ], [ %i.p, %bb.k ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.val9.i = load ptr, ptr %i.v, align 8, !alias.scope !975, !noundef !7
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.val10.i = load ptr, ptr %i.w, align 8, !alias.scope !975
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEECs9rVkZwOUgsI_13deltalake_aws(ptr %.val9.i, ptr %.val10.i) #24
          to label %.body17.i unwind label %bb.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.i, %bb.h, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.val.i = load ptr, ptr %i.x, align 8, !alias.scope !975, !noundef !7 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.val8.i = load ptr, ptr %i.y, align 8, !alias.scope !975 ; 6 uses
  %i.z = icmp eq ptr %.val.i, null
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEECs9rVkZwOUgsI_13deltalake_aws.exit19.i, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  %i.aa = load ptr, ptr %.val8.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i15.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i15.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void %i.aa(ptr noundef nonnull %.val.i)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !19, !invariant.load !7 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEECs9rVkZwOUgsI_13deltalake_aws.exit19.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !20, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEECs9rVkZwOUgsI_13deltalake_aws.exit19.i

bb.p:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val8.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !19, !invariant.load !7 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.body17.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !20, !invariant.load !7
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ai, i64 noundef range(i64 1, 536870913) %i.al) #23
  br label %.body17.i

.body17.i:                                        ; preds = %bb.q, %bb.p, %.body.i
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.ag, %bb.p ], [ %i.ag, %bb.q ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !987, !nonnull !7, !noundef !7
  %i.ao = atomicrmw sub ptr %i.an, i64 1 release, align 8, !noalias !988
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.r:                                             ; preds = %.body17.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs9PsDcNHE0mC_16aws_smithy_async4time10TimeSourceEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.z

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEECs9rVkZwOUgsI_13deltalake_aws.exit19.i: ; preds = %bb.o, %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !998, !nonnull !7, !noundef !7
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !999
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit21.i

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEECs9rVkZwOUgsI_13deltalake_aws.exit19.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs9PsDcNHE0mC_16aws_smithy_async4time10TimeSourceEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aq) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit21.i unwind label %bb.u

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.u, %bb.r, %.body17.i
  %.pn4.i = phi { ptr, i32 } [ %i.ay, %bb.u ], [ %.pn2.i, %bb.r ], [ %.pn2.i, %.body17.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !1009, !nonnull !7, !noundef !7
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !1010
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep10AsyncSleepEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.au) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit21.i: ; preds = %bb.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep5SleepEECs9rVkZwOUgsI_13deltalake_aws.exit19.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !1020, !nonnull !7, !noundef !7
  %i.bb = atomicrmw sub ptr %i.ba, i64 1 release, align 8, !noalias !1021
  %i.bc = icmp eq i64 %i.bb, 1
  br i1 %i.bc, label %bb.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit24.i

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit21.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep10AsyncSleepEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit24.i unwind label %bb.x

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.x, %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %.pn6.i = phi { ptr, i32 } [ %i.bh, %bb.x ], [ %.pn4.i, %bb.t ], [ %.pn4.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !1031, !nonnull !7, !noundef !7
  %i.bf = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !1032
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client4http4body18minimum_throughput16UploadThroughputECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexNtNtNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client4http4body18minimum_throughput10throughput14ThroughputLogsEE9drop_slowB1H_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bd) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client4http4body18minimum_throughput16UploadThroughputECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit24.i: ; preds = %bb.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9PsDcNHE0mC_16aws_smithy_async4time16SharedTimeSourceECs9rVkZwOUgsI_13deltalake_aws.exit21.i
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !1042, !nonnull !7, !noundef !7
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !1043
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client4http4body18minimum_throughput27UploadThroughputCheckFutureECs9rVkZwOUgsI_13deltalake_aws.exit

bb.y:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit24.i
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexNtNtNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client4http4body18minimum_throughput10throughput14ThroughputLogsEE9drop_slowB1H_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bi) #26
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client4http4body18minimum_throughput27UploadThroughputCheckFutureECs9rVkZwOUgsI_13deltalake_aws.exit

bb.z:                                             ; preds = %bb.w, %bb.t, %bb.r, %.body.i, %bb.d
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client4http4body18minimum_throughput16UploadThroughputECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit.i
  resume { ptr, i32 } %.pn6.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client4http4body18minimum_throughput27UploadThroughputCheckFutureECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.y, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit24.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNvXsf_NtNtCs6Po7BT7Nknu_5alloc5boxed7convertINtBQ_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1W_4SendEL_EINtNtB4_7convert4FromNtNtBS_6string6StringE4from11StringErrorECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry000Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s0_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s0_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !7, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.k = load i64, ptr %i.j, align 8, !noundef !7
  store i64 1, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  %i.l = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !7, !nonnull !7
  %i.q = call noundef zeroext i1 %i.p(ptr noundef %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.q, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noundef nonnull %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op0010___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op0010___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s1_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s2_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s1_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s1_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s3_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s2_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s2_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s4_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s3_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s3_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s5_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s4_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s4_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s6_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s5_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s5_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s7_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s6_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s6_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s8_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s7_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s7_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s9_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s8_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s8_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sb_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s9_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00s9_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sc_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sa_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sa_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00se_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sc_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sc_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00si_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sg_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sg_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sj_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sh_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sh_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sl_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00si_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00si_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s1_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s0_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s0_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s2_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s2_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s2_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s3_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s3_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s3_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s4_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s4_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s4_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s5_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s5_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s5_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s6_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s6_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s6_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s7_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s7_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s7_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s8_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s8_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s8_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s9_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s9_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s9_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0s_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt010___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt010___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sa_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sa_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 4
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sa_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 5, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sc_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sb_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sb_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sd_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sc_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sc_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0se_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sd_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 4
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sd_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 5, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sf_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0se_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0se_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sg_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sf_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sf_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sh_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sg_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sg_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0si_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0si_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 4
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0si_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 5, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sj_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sj_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0sj_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [288 x i8], align 8               ; 4 uses
  %i.h = alloca [288 x i8], align 8               ; 6 uses
  %.sroa.4.i.i825 = alloca [54 x i8], align 2     ; 4 uses
  %.sroa.4.i.i813 = alloca [54 x i8], align 2     ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.535.i.i = alloca [16 x i8], align 8      ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 10 uses
  %i.k = alloca [40 x i8], align 8                ; 11 uses
  %i.l = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.713.i = alloca [16 x i8], align 8        ; 7 uses
  %.sroa.10.i = alloca [16 x i8], align 8         ; 8 uses
  %.sroa.4.i.i734 = alloca [54 x i8], align 2     ; 4 uses
  %.sroa.4.i.i = alloca [54 x i8], align 2        ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [112 x i8], align 8               ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [112 x i8], align 8              ; 8 uses
  %i.ag = alloca [16 x i8], align 16              ; 10 uses
  %i.ah = alloca [16 x i8], align 8               ; 6 uses
  %i.ai = alloca [16 x i8], align 8               ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 8 uses
  %i.ak = alloca [24 x i8], align 8               ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %i.ao = alloca [112 x i8], align 8              ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 6 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [32 x i8], align 8               ; 8 uses
  %i.as = alloca [24 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 8               ; 6 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [32 x i8], align 8               ; 8 uses
  %i.aw = alloca [112 x i8], align 8              ; 6 uses
  %i.ax = alloca [16 x i8], align 16              ; 12 uses
  %i.ay = alloca [24 x i8], align 8               ; 8 uses
  %i.az = alloca [112 x i8], align 8              ; 12 uses
  %i.ba = alloca [112 x i8], align 8              ; 5 uses
  %i.bb = alloca [8 x i8], align 8                ; 5 uses
  %i.bc = alloca [16 x i8], align 8               ; 6 uses
  %i.bd = alloca [32 x i8], align 8               ; 8 uses
  %i.be = alloca [32 x i8], align 8               ; 8 uses
  %i.bf = alloca [24 x i8], align 8               ; 5 uses
  %i.bg = alloca [8 x i8], align 8                ; 5 uses
  %i.bh = alloca [16 x i8], align 8               ; 6 uses
  %i.bi = alloca [32 x i8], align 8               ; 8 uses
  %i.bj = alloca [32 x i8], align 8               ; 9 uses
  %i.bk = alloca [112 x i8], align 8              ; 9 uses
  %i.bl = alloca [288 x i8], align 8              ; 3 uses
  %i.bm = alloca [288 x i8], align 8              ; 7 uses
  %i.bn = alloca [40 x i8], align 8               ; 5 uses
  %i.bo = alloca [1384 x i8], align 8             ; 9 uses
  %i.bp = alloca [1424 x i8], align 8             ; 5 uses
  %i.bq = alloca [1424 x i8], align 8             ; 8 uses
  %i.br = alloca [8 x i8], align 8                ; 5 uses
  %i.bs = alloca [16 x i8], align 8               ; 6 uses
  %i.bt = alloca [32 x i8], align 8               ; 8 uses
  %i.bu = alloca [24 x i8], align 8               ; 5 uses
  %i.bv = alloca [8 x i8], align 8                ; 5 uses
  %i.bw = alloca [16 x i8], align 8               ; 6 uses
  %i.bx = alloca [32 x i8], align 8               ; 9 uses
  %i.by = alloca [16 x i8], align 8               ; 6 uses
  %i.bz = alloca [16 x i8], align 8               ; 6 uses
  %i.ca = alloca [16 x i8], align 8               ; 6 uses
  %i.cb = alloca [32 x i8], align 8               ; 8 uses
  %i.cc = alloca [24 x i8], align 8               ; 5 uses
  %i.cd = alloca [16 x i8], align 8               ; 6 uses
  %i.ce = alloca [16 x i8], align 8               ; 6 uses
  %i.cf = alloca [16 x i8], align 8               ; 6 uses
  %i.cg = alloca [32 x i8], align 8               ; 9 uses
  %i.ch = alloca [16 x i8], align 8               ; 6 uses
  %i.ci = alloca [16 x i8], align 8               ; 6 uses
  %i.cj = alloca [32 x i8], align 8               ; 8 uses
  %i.ck = alloca [24 x i8], align 8               ; 5 uses
  %i.cl = alloca [16 x i8], align 8               ; 6 uses
  %i.cm = alloca [16 x i8], align 8               ; 6 uses
  %i.cn = alloca [32 x i8], align 8               ; 8 uses
  %i.co = alloca [16 x i8], align 8               ; 6 uses
  %i.cp = alloca [16 x i8], align 8               ; 6 uses
  %i.cq = alloca [16 x i8], align 8               ; 6 uses
  %i.cr = alloca [32 x i8], align 8               ; 8 uses
  %i.cs = alloca [24 x i8], align 8               ; 5 uses
  %i.ct = alloca [16 x i8], align 8               ; 6 uses
  %i.cu = alloca [16 x i8], align 8               ; 6 uses
  %i.cv = alloca [16 x i8], align 8               ; 6 uses
  %i.cw = alloca [32 x i8], align 8               ; 9 uses
  %i.cx = alloca [16 x i8], align 8               ; 6 uses
  %i.cy = alloca [16 x i8], align 8               ; 6 uses
  %i.cz = alloca [16 x i8], align 8               ; 6 uses
  %i.da = alloca [32 x i8], align 8               ; 8 uses
  %i.db = alloca [24 x i8], align 8               ; 5 uses
  %i.dc = alloca [16 x i8], align 8               ; 6 uses
  %i.dd = alloca [16 x i8], align 8               ; 6 uses
  %i.de = alloca [16 x i8], align 8               ; 6 uses
  %i.df = alloca [32 x i8], align 8               ; 8 uses
  %i.dg = alloca [112 x i8], align 8              ; 5 uses
  %i.dh = alloca [16 x i8], align 8               ; 6 uses
  %i.di = alloca [16 x i8], align 8               ; 6 uses
  %i.dj = alloca [32 x i8], align 8               ; 8 uses
  %i.dk = alloca [24 x i8], align 8               ; 5 uses
  %i.dl = alloca [16 x i8], align 8               ; 6 uses
  %i.dm = alloca [16 x i8], align 8               ; 6 uses
  %i.dn = alloca [32 x i8], align 8               ; 8 uses
  %i.do = alloca [112 x i8], align 8              ; 6 uses
  %i.dp = alloca [112 x i8], align 8              ; 8 uses
  %i.dq = alloca [112 x i8], align 8              ; 5 uses
  %i.dr = alloca [112 x i8], align 8              ; 5 uses
  %i.ds = alloca [16 x i8], align 8               ; 6 uses
  %i.dt = alloca [16 x i8], align 8               ; 6 uses
  %i.du = alloca [32 x i8], align 8               ; 8 uses
  %i.dv = alloca [24 x i8], align 8               ; 5 uses
  %i.dw = alloca [16 x i8], align 8               ; 6 uses
  %i.dx = alloca [16 x i8], align 8               ; 6 uses
  %i.dy = alloca [32 x i8], align 8               ; 8 uses
  %i.dz = alloca [112 x i8], align 8              ; 5 uses
  %i.ea = alloca [112 x i8], align 8              ; 5 uses
  %i.eb = alloca [16 x i8], align 8               ; 6 uses
  %i.ec = alloca [16 x i8], align 8               ; 6 uses
  %i.ed = alloca [32 x i8], align 8               ; 8 uses
  %i.ee = alloca [24 x i8], align 8               ; 5 uses
  %i.ef = alloca [16 x i8], align 8               ; 6 uses
  %i.eg = alloca [16 x i8], align 8               ; 6 uses
  %i.eh = alloca [32 x i8], align 8               ; 8 uses
  %i.ei = alloca [16 x i8], align 8               ; 6 uses
  %i.ej = alloca [16 x i8], align 8               ; 6 uses
  %i.ek = alloca [32 x i8], align 8               ; 8 uses
  %i.el = alloca [24 x i8], align 8               ; 5 uses
  %i.em = alloca [16 x i8], align 8               ; 6 uses
  %i.en = alloca [16 x i8], align 8               ; 6 uses
  %i.eo = alloca [32 x i8], align 8               ; 8 uses
  %i.ep = alloca [16 x i8], align 16              ; 10 uses
  %i.eq = alloca [112 x i8], align 8              ; 6 uses
  %i.er = alloca [16 x i8], align 8               ; 6 uses
end_hunk_1
begin_hunk_2_@_RNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00Cs9rVkZwOUgsI_13deltalake_aws:bb.a
  br label %bb.acl

bb.abw:                                           ; preds = %bb.abu
  %i.bhm = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sg_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.bhn = getelementptr i8, ptr %i.bhm, i64 32
  %.val614 = load ptr, ptr %i.bhn, align 8, !nonnull !7, !noundef !7
  %i.bho = getelementptr i8, ptr %i.bhm, i64 40
  %.val615 = load i64, ptr %i.bho, align 8, !noundef !7
  store i64 4, ptr %i.as, align 8, !alias.scope !1553
  %.sroa.61246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %.val614, ptr %.sroa.61246.0..sroa_idx, align 8, !alias.scope !1553
  %.sroa.81247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 %.val615, ptr %.sroa.81247.0..sroa_idx, align 8, !alias.scope !1553
  %i.bhp = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.abx unwind label %bb.abv   ; 2 uses

bb.abx:                                           ; preds = %bb.abw
  %i.bhq = extractvalue { ptr, ptr } %i.bhp, 0    ; 2 uses
  %i.bhr = extractvalue { ptr, ptr } %i.bhp, 1    ; 2 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 24
  %i.bht = load ptr, ptr %i.bhs, align 8, !invariant.load !7, !nonnull !7
  %i.bhu = invoke noundef zeroext i1 %i.bht(ptr noundef %i.bhq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %bb.abz unwind label %bb.aby

bb.aby:                                           ; preds = %bb.abx
  %i.bhv = landingpad { ptr, i32 }
          cleanup
  br label %bb.acl

bb.abz:                                           ; preds = %bb.abx
  br i1 %i.bhu, label %bb.aca, label %bb.acg

bb.aca:                                           ; preds = %bb.abz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.bhw = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sg_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr @47, ptr %i.ap, align 8
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.bhy, align 8
  store ptr %i.ap, ptr %i.aq, align 8
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @8, ptr %i.bhz, align 8
  store i64 1, ptr %i.ar, align 8, !alias.scope !1557, !noalias !1560
  %.sroa.4.0..sroa_idx.i988 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i988, align 8, !alias.scope !1557, !noalias !1560
  %.sroa.5.0..sroa_idx.i989 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i989, align 8, !alias.scope !1557, !noalias !1560
  %i.bia = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.bhx, ptr %i.bia, align 8, !alias.scope !1557, !noalias !1560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bhm, ptr noundef nonnull %i.bhq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bhr, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar)
          to label %bb.acc unwind label %bb.acb

bb.acb:                                           ; preds = %bb.aca
  %i.bib = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.acl

bb.acc:                                           ; preds = %bb.aca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.acg

bb.acd:                                           ; preds = %bb.abs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.bic = load ptr, ptr @_RNvNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00sg_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bic, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr @47, ptr %i.at, align 8
  %i.bie = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr inttoptr (i64 79 to ptr), ptr %i.bie, align 8
  store ptr %i.at, ptr %i.au, align 8
  %i.bif = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @8, ptr %i.bif, align 8
  store i64 1, ptr %i.av, align 8
  %.sroa.61239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.au, ptr %.sroa.61239.0..sroa_idx, align 8
  %.sroa.71240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 1, ptr %.sroa.71240.0..sroa_idx, align 8
  %.sroa.81241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.bid, ptr %.sroa.81241.0..sroa_idx, align 8
  invoke fastcc void @_RNCNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00si_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.av)
          to label %bb.acf unwind label %bb.ace

bb.ace:                                           ; preds = %bb.acd
  %i.big = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.acl

bb.acf:                                           ; preds = %bb.acd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.acg

bb.acg:                                           ; preds = %bb.acf, %bb.abt, %bb.abu, %bb.abz, %bb.acc
  %i.bih = load ptr, ptr %i.apr, align 8, !nonnull !7, !align !47, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ao, ptr noundef nonnull align 8 dereferenceable(112) %i.aw, i64 112, i1 false)
  invoke void @_RNvMs2_NtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors7contextNtB5_18InterceptorContext4failCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(1160) %i.bih, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.ao)
          to label %bb.aci unwind label %bb.ach

bb.ach:                                           ; preds = %bb.acg
  %i.bii = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.ack

bb.aci:                                           ; preds = %bb.acg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  call void @llvm.experimental.noalias.scope.decl(metadata !1566)
  call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  %i.bij = load ptr, ptr %i.ax, align 16, !alias.scope !1572, !nonnull !7, !noundef !7
  %i.bik = atomicrmw sub ptr %i.bij, i64 1 release, align 8, !noalias !1572
  %i.bil = icmp eq i64 %i.bik, 1
  br i1 %i.bil, label %bb.acj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit993

bb.acj:                                           ; preds = %bb.aci
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries13RetryStrategyEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ax) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit993 unwind label %bb.tp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit993: ; preds = %bb.aci, %bb.acj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %bb.abc

bb.ack:                                           ; preds = %bb.ach, %bb.acl
  %.pn233.pn1383 = phi { ptr, i32 } [ %.pn233.pn.ph, %bb.acl ], [ %i.bii, %bb.ach ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.acm

bb.acl:                                           ; preds = %bb.ace, %bb.abq, %bb.abo, %bb.aby, %bb.acb, %bb.abv
  %.pn233.pn.ph = phi { ptr, i32 } [ %i.bhe, %bb.abq ], [ %i.big, %bb.ace ], [ %i.bhl, %bb.abv ], [ %i.bhv, %bb.aby ], [ %i.bib, %bb.acb ], [ %i.bhc, %bb.abo ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12orchestrator17OrchestratorErrorNtNtNtBL_12interceptors7context5ErrorEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(112) %i.aw) #24
          to label %bb.ack unwind label %bb.af

bb.acm:                                           ; preds = %bb.ack, %bb.tl
  %.pn233.pn.pn = phi { ptr, i32 } [ %.pn233.pn1383, %bb.ack ], [ %.pn197, %bb.tl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1573)
  call void @llvm.experimental.noalias.scope.decl(metadata !1576)
  call void @llvm.experimental.noalias.scope.decl(metadata !1579)
  %i.bim = load ptr, ptr %i.ax, align 16, !alias.scope !1582, !nonnull !7, !noundef !7
  %i.bin = atomicrmw sub ptr %i.bim, i64 1 release, align 8, !noalias !1582
  %i.bio = icmp eq i64 %i.bin, 1
  br i1 %i.bio, label %bb.acn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit995

bb.acn:                                           ; preds = %bb.acm
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries13RetryStrategyEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ax) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client7retries19SharedRetryStrategyECs9rVkZwOUgsI_13deltalake_aws.exit995 unwind label %bb.af

bb.aco:                                           ; preds = %bb.aab
  call void @llvm.experimental.noalias.scope.decl(metadata !1583)
  %i.bip = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1586)
  %i.biq = load ptr, ptr %i.bip, align 8, !alias.scope !1589, !noundef !7 ; 2 uses
  %i.bir = icmp eq ptr %i.biq, null
  br i1 %i.bir, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client7timeout18MaybeTimeoutConfigECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  %i.bis = atomicrmw sub ptr %i.biq, i64 1 release, align 8, !noalias !1590
  %i.bit = icmp eq i64 %i.bis, 1
  br i1 %i.bit, label %bb.acq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client7timeout18MaybeTimeoutConfigECs9rVkZwOUgsI_13deltalake_aws.exit

bb.acq:                                           ; preds = %bb.acp
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep10AsyncSleepEL_E9drop_slowCsVcNsP0WZIc_22aws_smithy_runtime_api(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bip) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client7timeout18MaybeTimeoutConfigECs9rVkZwOUgsI_13deltalake_aws.exit unwind label %bb.af

bb.acr:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs9PsDcNHE0mC_16aws_smithy_async2rt5sleep16SharedAsyncSleepECs9rVkZwOUgsI_13deltalake_aws.exit
  %i.biu = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.biv = load i8, ptr %i.biu, align 2, !range !61, !noundef !7
  %i.biw = trunc nuw i8 %i.biv to i1
  br i1 %i.biw, label %bb.acs, label %bb.nw

bb.acs:                                           ; preds = %bb.acr
  %i.bix = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val654 = load ptr, ptr %i.bix, align 8
  %i.biy = getelementptr i8, ptr %0, i64 48
  %.val655 = load ptr, ptr %i.biy, align 8, !nonnull !7, !align !47, !noundef !7
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECs9rVkZwOUgsI_13deltalake_aws(ptr %.val654, ptr nonnull %.val655) #24
          to label %bb.nw unwind label %bb.af
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCsat9blWvDIpa_11aws_runtime10env_config6source16load_config_file0s1_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCsat9blWvDIpa_11aws_runtime10env_config6source16load_config_file010___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCsat9blWvDIpa_11aws_runtime10env_config6source16load_config_file010___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCsat9blWvDIpa_11aws_runtime10env_config6source16load_config_file0s2_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCsat9blWvDIpa_11aws_runtime10env_config6source16load_config_file0s_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCsat9blWvDIpa_11aws_runtime10env_config6source16load_config_file0s_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCsat9blWvDIpa_11aws_runtime10env_config6source16load_config_file0s3_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCsat9blWvDIpa_11aws_runtime10env_config6source16load_config_file0s0_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 1
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCsat9blWvDIpa_11aws_runtime10env_config6source16load_config_file0s0_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 2, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCsat9blWvDIpa_11aws_runtime10env_config6source16load_config_file0s4_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtCsat9blWvDIpa_11aws_runtime10env_config6source16load_config_file0s1_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 1
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtCsat9blWvDIpa_11aws_runtime10env_config6source16load_config_file0s1_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 2, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth16resolve_identity00Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth16resolve_identity010___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 4
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth16resolve_identity010___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 5, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth16resolve_identity0s0_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth16resolve_identity0s0_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 4
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth16resolve_identity0s0_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 5, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth16resolve_identity0s_0Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth16resolve_identity0s_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 4
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth16resolve_identity0s_10___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 5, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth27legacy_try_resolve_endpoint00Cs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr @_RNvNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth27legacy_try_resolve_endpoint010___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7
  tail call void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.f = icmp ult i64 %i.e, 6
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 3
  br i1 %i.g, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @_RNvNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth27legacy_try_resolve_endpoint010___CALLSITE, align 8, !nonnull !7, !align !47, !noundef !7 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !7
  store i64 4, ptr %i.a, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx, align 8
  %i.m = tail call { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger() ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !7, !nonnull !7
  %i.r = call noundef zeroext i1 %i.q(ptr noundef %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #27
  br i1 %i.r, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.h, ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  br label %bb.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0Cs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i944 = alloca [54 x i8], align 2     ; 4 uses
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 11 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [128 x i8], align 8               ; 9 uses
  %.sroa.721.i.i.i.i.i = alloca [104 x i8], align 8 ; 6 uses
  %i.n = alloca [128 x i8], align 8               ; 9 uses
  %i.o = alloca [120 x i8], align 8               ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [40 x i8], align 8                ; 8 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [40 x i8], align 8                ; 6 uses
  %.sroa.011.i = alloca [552 x i8], align 8       ; 7 uses
  %i.y = alloca [112 x i8], align 8               ; 9 uses
  %i.z = alloca [32 x i8], align 8                ; 8 uses
  %i.aa = alloca [40 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 8 uses
  %i.ac = alloca [40 x i8], align 8               ; 12 uses
  %i.ad = alloca [40 x i8], align 8               ; 6 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.4.i.i881 = alloca [54 x i8], align 2     ; 4 uses
  %.sroa.4.i.i869 = alloca [54 x i8], align 2     ; 4 uses
  %.sroa.4.i.i857 = alloca [54 x i8], align 2     ; 4 uses
  %.sroa.4.i.i811 = alloca [54 x i8], align 2     ; 4 uses
  %.sroa.4.i.i799 = alloca [54 x i8], align 2     ; 4 uses
  %.sroa.4.i.i778 = alloca [54 x i8], align 2     ; 4 uses
  %.sroa.4.i.i766 = alloca [54 x i8], align 2     ; 4 uses
  %.sroa.4.i.i754 = alloca [54 x i8], align 2     ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [120 x i8], align 8              ; 5 uses
  %.sroa.7125.i.i = alloca [96 x i8], align 8     ; 4 uses
  %i.an = alloca [120 x i8], align 8              ; 9 uses
  %i.ao = alloca [120 x i8], align 8              ; 5 uses
  %i.ap = alloca [120 x i8], align 8              ; 8 uses
  %i.aq = alloca [120 x i8], align 8              ; 14 uses
  %i.ar = alloca [8 x i8], align 8                ; 5 uses
  %i.as = alloca [16 x i8], align 8               ; 6 uses
  %i.at = alloca [32 x i8], align 8               ; 8 uses
  %i.au = alloca [32 x i8], align 8               ; 8 uses
  %i.av = alloca [24 x i8], align 8               ; 7 uses
  %i.aw = alloca [8 x i8], align 8                ; 5 uses
  %i.ax = alloca [16 x i8], align 8               ; 6 uses
  %i.ay = alloca [32 x i8], align 8               ; 8 uses
  %i.az = alloca [32 x i8], align 8               ; 9 uses
  %i.ba = alloca [96 x i8], align 8               ; 5 uses
  %i.bb = alloca [16 x i8], align 8               ; 6 uses
  %i.bc = alloca [16 x i8], align 8               ; 6 uses
  %i.bd = alloca [32 x i8], align 8               ; 8 uses
  %i.be = alloca [24 x i8], align 8               ; 7 uses
  %i.bf = alloca [16 x i8], align 8               ; 6 uses
  %i.bg = alloca [16 x i8], align 8               ; 6 uses
  %i.bh = alloca [32 x i8], align 8               ; 9 uses
  %i.bi = alloca [96 x i8], align 8               ; 8 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [16 x i8], align 8               ; 5 uses
  %i.bl = alloca [48 x i8], align 8               ; 4 uses
  %i.bm = alloca [16 x i8], align 8               ; 5 uses
  %i.bn = alloca [16 x i8], align 8               ; 6 uses
  %i.bo = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.11.i.i = alloca [88 x i8], align 8       ; 8 uses
  %i.bp = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.875.i.i = alloca [88 x i8], align 8      ; 7 uses
  %i.bq = alloca [120 x i8], align 8              ; 9 uses
  %i.br = alloca [120 x i8], align 8              ; 5 uses
  %i.bs = alloca [120 x i8], align 8              ; 9 uses
  %i.bt = alloca [120 x i8], align 8              ; 15 uses
  %i.bu = alloca [8 x i8], align 8                ; 5 uses
  %i.bv = alloca [8 x i8], align 8                ; 5 uses
  %i.bw = alloca [16 x i8], align 8               ; 6 uses
  %i.bx = alloca [48 x i8], align 8               ; 10 uses
  %i.by = alloca [32 x i8], align 8               ; 8 uses
  %i.bz = alloca [24 x i8], align 8               ; 10 uses
  %i.ca = alloca [8 x i8], align 8                ; 5 uses
  %i.cb = alloca [8 x i8], align 8                ; 5 uses
  %i.cc = alloca [16 x i8], align 8               ; 6 uses
  %i.cd = alloca [48 x i8], align 8               ; 10 uses
  %i.ce = alloca [32 x i8], align 8               ; 8 uses
  %i.cf = alloca [32 x i8], align 8               ; 7 uses
  %i.cg = alloca [8 x i8], align 8                ; 5 uses
  %i.ch = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.5343.i = alloca [16 x i8], align 8       ; 6 uses
  %i.ci = alloca [32 x i8], align 8               ; 8 uses
  %i.cj = alloca [48 x i8], align 8               ; 6 uses
  %i.ck = alloca [24 x i8], align 8               ; 8 uses
  %i.cl = alloca [24 x i8], align 8               ; 9 uses
  %i.cm = alloca [24 x i8], align 8               ; 7 uses
  %i.cn = alloca [40 x i8], align 8               ; 9 uses
  %i.co = alloca [48 x i8], align 8               ; 9 uses
  %i.cp = alloca [24 x i8], align 8               ; 8 uses
  %i.cq = alloca [24 x i8], align 8               ; 4 uses
  %i.cr = alloca [24 x i8], align 8               ; 4 uses
  %i.cs = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.7340.i = alloca [216 x i8], align 8      ; 9 uses
  %i.ct = alloca [272 x i8], align 8              ; 5 uses
  %i.cu = alloca [24 x i8], align 8               ; 5 uses
  %i.cv = alloca [24 x i8], align 8               ; 5 uses
  %i.cw = alloca [24 x i8], align 8               ; 7 uses
  %i.cx = alloca [24 x i8], align 8               ; 5 uses
  %i.cy = alloca [24 x i8], align 8               ; 7 uses
  %i.cz = alloca [8 x i8], align 8                ; 5 uses
  %i.da = alloca [16 x i8], align 8               ; 6 uses
  %i.db = alloca [32 x i8], align 8               ; 8 uses
  %i.dc = alloca [32 x i8], align 8               ; 8 uses
  %i.dd = alloca [24 x i8], align 8               ; 10 uses
  %i.de = alloca [8 x i8], align 8                ; 5 uses
  %i.df = alloca [16 x i8], align 8               ; 6 uses
  %i.dg = alloca [32 x i8], align 8               ; 8 uses
  %i.dh = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.5308.i = alloca [72 x i8], align 8       ; 7 uses
  %i.di = alloca [96 x i8], align 8               ; 10 uses
  %i.dj = alloca [24 x i8], align 8               ; 5 uses
  %i.dk = alloca [96 x i8], align 8               ; 5 uses
  %i.dl = alloca [96 x i8], align 8               ; 8 uses
  %i.dm = alloca [96 x i8], align 8               ; 15 uses
  %i.dn = alloca [8 x i8], align 8                ; 5 uses
  %i.do = alloca [16 x i8], align 8               ; 6 uses
  %i.dp = alloca [32 x i8], align 8               ; 8 uses
  %i.dq = alloca [32 x i8], align 8               ; 8 uses
  %i.dr = alloca [24 x i8], align 8               ; 10 uses
  %i.ds = alloca [8 x i8], align 8                ; 5 uses
  %i.dt = alloca [16 x i8], align 8               ; 6 uses
  %i.du = alloca [32 x i8], align 8               ; 8 uses
  %i.dv = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.11274.i = alloca [88 x i8], align 8      ; 8 uses
  %i.dw = alloca [8 x i8], align 8                ; 5 uses
  %i.dx = alloca [8 x i8], align 8                ; 5 uses
  %i.dy = alloca [16 x i8], align 8               ; 6 uses
  %i.dz = alloca [48 x i8], align 8               ; 10 uses
  %i.ea = alloca [32 x i8], align 8               ; 8 uses
  %i.eb = alloca [24 x i8], align 8               ; 10 uses
  %i.ec = alloca [8 x i8], align 8                ; 5 uses
  %i.ed = alloca [8 x i8], align 8                ; 5 uses
  %i.ee = alloca [16 x i8], align 8               ; 6 uses
  %i.ef = alloca [48 x i8], align 8               ; 10 uses
  %i.eg = alloca [32 x i8], align 8               ; 8 uses
end_hunk_2
begin_hunk_3_@_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws:bb.a
  store i64 %i.n, ptr %i.o, align 8, !noalias !3379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3379
  store ptr %i.d, ptr %i.c, align 8, !noalias !3379
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !3379
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @136, ptr noundef nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3379
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 281
  %i.q = load i8, ptr %i.p, align 1, !range !145, !noundef !7
  switch i8 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit.i [
    i8 4, label %bb.l
    i8 3, label %bb.f
  ]

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.r, align 8         ; 5 uses
  %i.s = getelementptr i8, ptr %0, i64 296
  %.val4.i.i = load ptr, ptr %i.s, align 8, !nonnull !7, !align !47, !noundef !7 ; 5 uses
  %i.t = load ptr, ptr %.val4.i.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.t(ptr noundef nonnull %.val.i.i)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !19, !invariant.load !7 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !20, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !19, !invariant.load !7 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !20, !invariant.load !7
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #23
  br label %.body.i.i

bb.l:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBO_9GetResult5bytes0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.af)
          to label %bb.r unwind label %bb.q

.body.i.i:                                        ; preds = %bb.k, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 256
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #24
          to label %.body5.i.i unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body5.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body5.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i8.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.al, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.p:                                             ; preds = %bb.q, %.body.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

.body5.i.i:                                       ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.ao, %bb.q ], [ %i.z, %.body.i.i ], [ %i.ak, %bb.o ], [ %i.at, %bb.u ], [ %i.ar, %bb.s ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.an, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull align 8 %0) #24
          to label %bb.aa unwind label %bb.z

bb.q:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #24
          to label %.body5.i.i unwind label %bb.p

bb.r:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i8.i.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.body5.i.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i8.i.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i8.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body5.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3382)
  %i.au = load i64, ptr %0, align 8, !range !23, !alias.scope !3382, !noalias !3385, !noundef !7
  %.not.i.i.i2.i = icmp eq i64 %i.au, 2
  br i1 %.not.i.i.i2.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av), !noalias !3385
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.aw = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3385
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.x, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.x:                                             ; preds = %bb.w
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !3382, !noalias !3385, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not4.i.i.i.i, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3388
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !3385, !nonnull !7, !noundef !7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !3385, !noundef !7
  store ptr %i.bb, ptr %i.b, align 8, !noalias !3388
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bd, ptr %i.be, align 8, !noalias !3388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3388
  store ptr %i.b, ptr %i.a, align 8, !noalias !3388
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !3388
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @134, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3388
  br label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.z:                                             ; preds = %.body5.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.aa:                                            ; preds = %.body5.i.i
  resume { ptr, i32 } %.pn.i.i

_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.w, %bb.x, %bb.y
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 captures(address, read_provenance) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3389)
  %i.e = load i64, ptr %0, align 8, !range !23, !alias.scope !3389, !noundef !7
  %.not.i.i = icmp eq i64 %i.e, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3389, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.j, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3389
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !7
  store ptr %i.l, ptr %i.d, align 8, !noalias !3389
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !3389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3389
  store ptr %i.d, ptr %i.c, align 8, !noalias !3389
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !3389
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @136, ptr noundef nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3389
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = load i8, ptr %i.p, align 8, !range !53, !noundef !7
  %cond.i.i = icmp eq i8 %i.q, 3
  br i1 %cond.i.i, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i.i = load ptr, ptr %i.r, align 8         ; 5 uses
  %i.s = getelementptr i8, ptr %0, i64 72
  %.val1.i.i = load ptr, ptr %i.s, align 8, !nonnull !7, !align !47, !noundef !7 ; 5 uses
  %i.t = load ptr, ptr %.val1.i.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.t(ptr noundef nonnull %.val.i.i)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !19, !invariant.load !7 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !20, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.j:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !19, !invariant.load !7 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !20, !invariant.load !7
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #23
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.j
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull align 8 %0) #24
          to label %bb.q unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.i, %bb.h, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3392)
  %i.af = load i64, ptr %0, align 8, !range !23, !alias.scope !3392, !noalias !3395, !noundef !7
  %.not.i.i.i2.i = icmp eq i64 %i.af, 2
  br i1 %.not.i.i.i2.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag), !noalias !3395
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ah = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3395
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !3392, !noalias !3395, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not4.i.i.i.i, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3398
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !noalias !3395, !nonnull !7, !noundef !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !noalias !3395, !noundef !7
  store ptr %i.am, ptr %i.b, align 8, !noalias !3398
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !noalias !3398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3398
  store ptr %i.b, ptr %i.a, align 8, !noalias !3398
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !3398
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @134, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3398
  br label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.p:                                             ; preds = %.body.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.q:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.z

_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18abort_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.m, %bb.n, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3399)
  %i.e = load i64, ptr %0, align 8, !range !23, !alias.scope !3399, !noundef !7
  %.not.i.i = icmp eq i64 %i.e, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3399, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.j, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3399
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !7
  store ptr %i.l, ptr %i.d, align 8, !noalias !3399
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !3399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3399
  store ptr %i.d, ptr %i.c, align 8, !noalias !3399
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !3399
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @136, ptr noundef nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3399
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load i8, ptr %i.p, align 8, !range !53, !noundef !7
  %cond.i.i = icmp eq i8 %i.q, 3
  br i1 %cond.i.i, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val.i.i = load ptr, ptr %i.r, align 8         ; 5 uses
  %i.s = getelementptr i8, ptr %0, i64 104
  %.val2.i.i = load ptr, ptr %i.s, align 8, !nonnull !7, !align !47, !noundef !7 ; 5 uses
  %i.t = load ptr, ptr %.val2.i.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.t(ptr noundef nonnull %.val.i.i)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !19, !invariant.load !7 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !20, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !19, !invariant.load !7 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !20, !invariant.load !7
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #23
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.af) #24
          to label %.body.i unwind label %bb.n

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %.body.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.o

bb.n:                                             ; preds = %.body.i.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.l, %.body.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ak, %bb.o ], [ %i.ah, %bb.l ], [ %i.z, %.body.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull align 8 %0) #24
          to label %bb.u unwind label %bb.t

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3402)
  %i.al = load i64, ptr %0, align 8, !range !23, !alias.scope !3402, !noalias !3405, !noundef !7
  %.not.i.i.i2.i = icmp eq i64 %i.al, 2
  br i1 %.not.i.i.i2.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am), !noalias !3405
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.an = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3405
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.r, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !3402, !noalias !3405, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not4.i.i.i.i, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3408
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !3405, !nonnull !7, !noundef !7
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.au = load i64, ptr %i.at, align 8, !noalias !3405, !noundef !7
  store ptr %i.as, ptr %i.b, align 8, !noalias !3408
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.au, ptr %i.av, align 8, !noalias !3408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3408
  store ptr %i.b, ptr %i.a, align 8, !noalias !3408
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !3408
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @134, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3408
  br label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.t:                                             ; preds = %.body.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.u:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore18write_commit_entry00ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.q, %bb.r, %bb.s
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator10finally_op00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 captures(address, read_provenance) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3409)
  %i.e = load i64, ptr %0, align 8, !range !23, !alias.scope !3409, !noundef !7
  %.not.i.i = icmp eq i64 %i.e, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3409, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.j, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3409
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !7
  store ptr %i.l, ptr %i.d, align 8, !noalias !3409
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !3409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3409
  store ptr %i.d, ptr %i.c, align 8, !noalias !3409
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !3409
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @136, ptr noundef nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3409
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !3412)
  %i.p = load i64, ptr %0, align 8, !range !23, !alias.scope !3412, !noalias !3415, !noundef !7
  %.not.i.i.i.i = icmp eq i64 %i.p, 2
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q), !noalias !3415
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.r = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3415
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.h, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator10finally_op00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !3412, !noalias !3415, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not4.i.i.i.i, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator10finally_op00ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3418
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3415, !nonnull !7, !noundef !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noalias !3415, !noundef !7
  store ptr %i.w, ptr %i.b, align 8, !noalias !3418
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.y, ptr %i.z, align 8, !noalias !3418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3418
  store ptr %i.b, ptr %i.a, align 8, !noalias !3418
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !3418
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @134, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3418
  br label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator10finally_op00ECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator10finally_op00ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3419)
  %i.e = load i64, ptr %0, align 8, !range !23, !alias.scope !3419, !noundef !7
  %.not.i.i = icmp eq i64 %i.e, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3419, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.j, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3419
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !7
  store ptr %i.l, ptr %i.d, align 8, !noalias !3419
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !3419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3419
  store ptr %i.d, ptr %i.c, align 8, !noalias !3419
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !3419
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @136, ptr noundef nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3419
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.q = load i8, ptr %i.p, align 8, !range !53, !noundef !7
  %cond.i.i = icmp eq i8 %i.q, 3
  br i1 %cond.i.i, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00ECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4http9read_body0EECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.r)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00ECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull align 8 %0) #24
          to label %bb.m unwind label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.f, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3422)
  %i.t = load i64, ptr %0, align 8, !range !23, !alias.scope !3422, !noalias !3425, !noundef !7
  %.not.i.i.i.i = icmp eq i64 %i.t, 2
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.u), !noalias !3425
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.v = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3425
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.j, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !3422, !noalias !3425, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not4.i.i.i.i, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3428
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !3425, !nonnull !7, !noundef !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !3425, !noundef !7
  store ptr %i.aa, ptr %i.b, align 8, !noalias !3428
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !noalias !3428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3428
  store ptr %i.b, ptr %i.a, align 8, !noalias !3428
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !3428
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @134, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3428
  br label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.l:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.m:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s

_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.i, %bb.j, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3429)
  %i.f = load i64, ptr %0, align 8, !range !23, !alias.scope !3429, !noundef !7
  %.not.i.i = icmp eq i64 %i.f, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3429, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.k, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3429
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !7, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !7
  store ptr %i.m, ptr %i.d, align 8, !noalias !3429
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !3429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3429
  store ptr %i.d, ptr %i.c, align 8, !noalias !3429
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !3429
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @136, ptr noundef nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3429
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.e)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull align 8 %0) #24
          to label %bb.m unwind label %bb.l

bb.g:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3432)
  %i.r = load i64, ptr %0, align 8, !range !23, !alias.scope !3432, !noalias !3435, !noundef !7
  %.not.i.i.i.i = icmp eq i64 %i.r, 2
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s), !noalias !3435
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3435
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.j, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !3432, !noalias !3435, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not4.i.i.i.i, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3438
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !3435, !nonnull !7, !noundef !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noalias !3435, !noundef !7
  store ptr %i.y, ptr %i.b, align 8, !noalias !3438
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !noalias !3438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3438
  store ptr %i.b, ptr %i.a, align 8, !noalias !3438
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !3438
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @134, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3438
  br label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.l:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.m:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.q

_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator6try_op00ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.i, %bb.j, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 captures(address, read_provenance) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3439)
  %i.e = load i64, ptr %0, align 8, !range !23, !alias.scope !3439, !noundef !7
  %.not.i.i = icmp eq i64 %i.e, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3439, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.j, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3439
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !7
  store ptr %i.l, ptr %i.d, align 8, !noalias !3439
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !3439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3439
  store ptr %i.d, ptr %i.c, align 8, !noalias !3439
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !3439
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @136, ptr noundef nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3439
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = load i8, ptr %i.p, align 8, !range !53, !noundef !7
  %cond.i.i = icmp eq i8 %i.q, 3
  br i1 %cond.i.i, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val.i.i = load ptr, ptr %i.r, align 8         ; 5 uses
  %i.s = getelementptr i8, ptr %0, i64 112
  %.val4.i.i = load ptr, ptr %i.s, align 8, !nonnull !7, !align !47, !noundef !7 ; 5 uses
  %i.t = load ptr, ptr %.val4.i.i, align 8, !invariant.load !7 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.t(ptr noundef nonnull %.val.i.i)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !19, !invariant.load !7 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !20, !invariant.load !7
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #23
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ECs9rVkZwOUgsI_13deltalake_aws.exit.i

bb.j:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !19, !invariant.load !7 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !20, !invariant.load !7
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #23
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.j
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull align 8 %0) #24
          to label %bb.q unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.i, %bb.h, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3442)
  %i.af = load i64, ptr %0, align 8, !range !23, !alias.scope !3442, !noalias !3445, !noundef !7
  %.not.i.i.i2.i = icmp eq i64 %i.af, 2
  br i1 %.not.i.i.i2.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag), !noalias !3445
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.ah = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3445
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !3442, !noalias !3445, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not4.i.i.i.i, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3448
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !noalias !3445, !nonnull !7, !noundef !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !noalias !3445, !noundef !7
  store ptr %i.am, ptr %i.b, align 8, !noalias !3448
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !noalias !3448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3448
  store ptr %i.b, ptr %i.a, align 8, !noalias !3448
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !3448
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @134, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3448
  br label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.p:                                             ; preds = %.body.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.q:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.z

_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNCNvYDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_NtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage9retry_ext19ObjectStoreRetryExt19delete_with_retries00ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.m, %bb.n, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3449)
  %i.f = load i64, ptr %0, align 8, !range !23, !alias.scope !3449, !noundef !7
  %.not.i.i = icmp eq i64 %i.f, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3449, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.k, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3449
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !7, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !7
  store ptr %i.m, ptr %i.d, align 8, !noalias !3449
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !3449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3449
  store ptr %i.d, ptr %i.c, align 8, !noalias !3449
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !3449
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @136, ptr noundef nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3449
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 331
  %i.r = load i8, ptr %i.q, align 1, !range !146, !noundef !7
  switch i8 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0ECs9rVkZwOUgsI_13deltalake_aws.exit.i [
    i8 6, label %bb.l
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.k
  ]

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 336
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator4auth16resolve_identity0ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0ECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.ag

bb.g:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  invoke void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.t)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t) #24
          to label %.body.i.i unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.k:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 712
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client4http4body18minimum_throughput32MaybeUploadThroughputCheckFutureECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(408) %i.w)
          to label %bb.s unwind label %bb.q

bb.l:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  invoke void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.x)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.x) #24
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span4SpanECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.z

bb.o:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.p:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.q:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3452)
  call void @llvm.experimental.noalias.scope.decl(metadata !3455)
  call void @llvm.experimental.noalias.scope.decl(metadata !3458)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !3461, !nonnull !7, !noundef !7
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !3461
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http19SharedHttpConnectorECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http13HttpConnectorEL_E9drop_slowCsaKYcK3w8yFl_22aws_smithy_http_client(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http19SharedHttpConnectorECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.y

bb.s:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3462)
  call void @llvm.experimental.noalias.scope.decl(metadata !3465)
  call void @llvm.experimental.noalias.scope.decl(metadata !3468)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !3471, !nonnull !7, !noundef !7
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !3471
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http19SharedHttpConnectorECs9rVkZwOUgsI_13deltalake_aws.exit17.i.i

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http13HttpConnectorEL_E9drop_slowCsaKYcK3w8yFl_22aws_smithy_http_client(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ag) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http19SharedHttpConnectorECs9rVkZwOUgsI_13deltalake_aws.exit17.i.i unwind label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http19SharedHttpConnectorECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.v, %bb.r, %bb.q
  %.pn.i.i = phi { ptr, i32 } [ %i.ao, %bb.v ], [ %i.ab, %bb.r ], [ %i.ab, %bb.q ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3472)
  call void @llvm.experimental.noalias.scope.decl(metadata !3475)
  call void @llvm.experimental.noalias.scope.decl(metadata !3478)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !3481, !nonnull !7, !noundef !7
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !3481
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.u:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http19SharedHttpConnectorECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http10HttpClientEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ak) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http19SharedHttpConnectorECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http19SharedHttpConnectorECs9rVkZwOUgsI_13deltalake_aws.exit17.i.i: ; preds = %bb.t, %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3482)
  call void @llvm.experimental.noalias.scope.decl(metadata !3485)
  call void @llvm.experimental.noalias.scope.decl(metadata !3488)
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !3491, !nonnull !7, !noundef !7
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !3491
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http19SharedHttpConnectorECs9rVkZwOUgsI_13deltalake_aws.exit17.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http10HttpClientEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ap) #26
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.w, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http19SharedHttpConnectorECs9rVkZwOUgsI_13deltalake_aws.exit17.i.i, %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 329
  store i8 0, ptr %i.au, align 1
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

bb.y:                                             ; preds = %.body.i.i, %bb.aa, %bb.u, %bb.r
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %bb.z, %bb.x, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http19SharedHttpConnectorECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.m
  %.pn7.i.i = phi { ptr, i32 } [ %.pn.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http19SharedHttpConnectorECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.at, %bb.x ], [ %.pn.i.i, %bb.u ], [ %i.ax, %bb.z ], [ %i.y, %bb.m ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 329
  store i8 0, ptr %i.aw, align 1
  br label %.body.i.i

bb.z:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientECs9rVkZwOUgsI_13deltalake_aws.exit.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt00EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 330
  store i8 0, ptr %i.ay, align 2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity8IdentityECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.e)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %.body.i.i, %bb.ab
  %.pn10.i.i = phi { ptr, i32 } [ %i.ba, %bb.ab ], [ %.pn7.pn.i.i, %.body.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 160
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4auth12AuthSchemeIdECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %i.az) #24
          to label %.body.i unwind label %bb.y

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCscTw95cGIolY_7tracing10instrument12InstrumentedNCNvNtNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator9endpoints20orchestrate_endpoint0EECs9rVkZwOUgsI_13deltalake_aws.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.bc = load i64, ptr %i.bb, align 8, !range !8, !alias.scope !3492, !noundef !7
  %i.bd = icmp eq i64 %i.bc, -9223372036854775808
  br i1 %i.bd, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0ECs9rVkZwOUgsI_13deltalake_aws.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %.body.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i: ; preds = %bb.ad
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0ECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.ag

.body.i.i:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientECs9rVkZwOUgsI_13deltalake_aws.exit.i.i, %bb.p, %bb.h
  %.pn7.pn.i.i = phi { ptr, i32 } [ %.pn7.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client4http16SharedHttpClientECs9rVkZwOUgsI_13deltalake_aws.exit.i.i ], [ %i.aa, %bb.p ], [ %i.u, %bb.h ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 330
  store i8 0, ptr %i.bg, align 2
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client8identity8IdentityECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.e) #24
          to label %bb.aa unwind label %bb.y

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ag, %bb.ae, %bb.aa
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bh, %bb.ag ], [ %.pn10.i.i, %bb.aa ], [ %i.be, %bb.ae ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull align 8 %0) #24
          to label %bb.am unwind label %bb.al

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs9rVkZwOUgsI_13deltalake_aws.exit.i.i.i.i, %bb.ac, %bb.f, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3497)
  %i.bi = load i64, ptr %0, align 8, !range !23, !alias.scope !3497, !noalias !3500, !noundef !7
  %.not.i.i.i.i = icmp eq i64 %i.bi, 2
  br i1 %.not.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bj), !noalias !3500
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.bk = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3500
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.aj, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.aj:                                            ; preds = %bb.ai
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !3497, !noalias !3500, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not4.i.i.i.i, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3503
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !3500, !nonnull !7, !noundef !7
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !noalias !3500, !noundef !7
  store ptr %i.bp, ptr %i.b, align 8, !noalias !3503
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.br, ptr %i.bs, align 8, !noalias !3503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3503
  store ptr %i.b, ptr %i.a, align 8, !noalias !3503
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !3503
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @134, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3503
  br label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.al:                                            ; preds = %.body.i
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.am:                                            ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator11try_attempt0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.ai, %bb.aj, %bb.ak
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator15finally_attempt0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 captures(address, read_provenance) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3504)
  %i.e = load i64, ptr %0, align 8, !range !23, !alias.scope !3504, !noundef !7
  %.not.i.i = icmp eq i64 %i.e, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !3504, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.j, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3504
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !7
  store ptr %i.l, ptr %i.d, align 8, !noalias !3504
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !3504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3504
  store ptr %i.d, ptr %i.c, align 8, !noalias !3504
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !3504
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @136, ptr noundef nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3504
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !3507)
  %i.p = load i64, ptr %0, align 8, !range !23, !alias.scope !3507, !noalias !3510, !noundef !7
  %.not.i.i.i.i = icmp eq i64 %i.p, 2
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q), !noalias !3510
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.r = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3510
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.h, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator15finally_attempt0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !3507, !noalias !3510, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not4.i.i.i.i, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator15finally_attempt0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3513
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !3510, !nonnull !7, !noundef !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noalias !3510, !noundef !7
  store ptr %i.w, ptr %i.b, align 8, !noalias !3513
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.y, ptr %i.z, align 8, !noalias !3513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3513
  store ptr %i.b, ptr %i.a, align 8, !noalias !3513
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !3513
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @134, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3513
  br label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator15finally_attempt0ECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator15finally_attempt0ECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator22invoke_with_stop_point0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3514)
  %i.f = load i64, ptr %0, align 8, !range !23, !alias.scope !3514, !noundef !7
  %.not.i.i = icmp eq i64 %i.f, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !3514, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.k, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3514
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !7, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !7
  store ptr %i.m, ptr %i.d, align 8, !noalias !3514
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.o, ptr %i.p, align 8, !noalias !3514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3514
  store ptr %i.d, ptr %i.c, align 8, !noalias !3514
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !3514
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @136, ptr noundef nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3514
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4768
  %i.r = load i8, ptr %i.q, align 8, !range !53, !noundef !7
  switch i8 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator22invoke_with_stop_point0ECs9rVkZwOUgsI_13deltalake_aws.exit.i [
    i8 0, label %bb.f
    i8 3, label %bb.g
  ]

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4680
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2DiVQAxFeQE_16aws_smithy_types12type_erasure13TypeErasedBoxECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator22invoke_with_stop_point0ECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.h

bb.g:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator22invoke_with_stop_point00ECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull align 8 %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator22invoke_with_stop_point0ECs9rVkZwOUgsI_13deltalake_aws.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECs9rVkZwOUgsI_13deltalake_aws(ptr nonnull align 8 %0) #24
          to label %bb.n unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator22invoke_with_stop_point0ECs9rVkZwOUgsI_13deltalake_aws.exit.i: ; preds = %bb.g, %bb.f, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3517)
  %i.u = load i64, ptr %0, align 8, !range !23, !alias.scope !3517, !noalias !3520, !noundef !7
  %.not.i.i.i.i = icmp eq i64 %i.u, 2
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator22invoke_with_stop_point0ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v), !noalias !3520
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator22invoke_with_stop_point0ECs9rVkZwOUgsI_13deltalake_aws.exit.i
  %i.w = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !3520
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %bb.k, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator22invoke_with_stop_point0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !3517, !noalias !3520, !align !47, !noundef !7 ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not4.i.i.i.i, label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator22invoke_with_stop_point0ECs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3523
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !3520, !nonnull !7, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !3520, !noundef !7
  store ptr %i.ab, ptr %i.b, align 8, !noalias !3523
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !noalias !3523
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3523
  store ptr %i.b, ptr %i.a, align 8, !noalias !3523
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCs9rVkZwOUgsI_13deltalake_aws, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !3523
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 21, ptr noundef nonnull @134, ptr noundef nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3523
  br label %_RINvNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtBa_12InstrumentedpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop12___drop_innerNCNvNtNtCs2HJ6gJZ22Qg_18aws_smithy_runtime6client12orchestrator22invoke_with_stop_point0ECs9rVkZwOUgsI_13deltalake_aws.exit

bb.m:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
end_hunk_3
