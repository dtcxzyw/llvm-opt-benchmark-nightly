inline.NumInlined: 6560
inline.NumDeleted: 2964
begin_hunk_0_@_RINvNtCsjhHCjzi9uUI_17datafusion_common10hash_utils13create_hashesRAINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_Ej1_RB14_ECs7p2uQeJxui2_9deltalake:bb.a
  call void @_RNvNtCsjhHCjzi9uUI_17datafusion_common10hash_utils17hash_single_array(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias noundef nonnull align 8 %3, i64 noundef %4, i1 noundef zeroext false)
  %i.k = load i64, ptr %i.a, align 8, !range !4505, !noundef !4
  %.not5 = icmp eq i64 %i.k, 20
  br i1 %.not5, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.d
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %4, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize24serialize_metric_detailsQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4539
  store i64 0, ptr %i.c, align 8, !noalias !4539
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4539
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !4539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4539
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.e, align 8, !noalias !4539
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !4539
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !4539
  store ptr %i.c, ptr %i.b, align 8, !noalias !4539
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @531, ptr %i.f, align 8, !noalias !4539
  %i.g = invoke noundef zeroext i1 @_RNvXs_NtNtCs14kWLkQVSKO_14deltalake_core10operations8optimizeNtB4_13MetricDetailsNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !4543

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #51
          to label %common.resume unwind label %bb.e, !noalias !4543

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13MetricDetailsNtB5_12SpecToString14spec_to_stringCs7p2uQeJxui2_9deltalake.exit, !prof !12

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @532, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @534) #50
          to label %.noexc.i unwind label %bb.b, !noalias !4543

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !4543
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.h, %bb.b ], [ %i.q, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13MetricDetailsNtB5_12SpecToString14spec_to_stringCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4539
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = invoke noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13MetricDetailsNtB5_12SpecToString14spec_to_stringCs7p2uQeJxui2_9deltalake.exit
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_strCs7p2uQeJxui2_9deltalake.exit, label %bb.f, !prof !651

bb.f:                                             ; preds = %.noexc
  %i.p = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.o)
          to label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_strCs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13MetricDetailsNtB5_12SpecToString14spec_to_stringCs7p2uQeJxui2_9deltalake.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #51
          to label %common.resume unwind label %bb.j

_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_strCs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc, %bb.f
  %.sroa.0.0.i = phi ptr [ null, %.noexc ], [ %i.p, %bb.f ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h

bb.h:                                             ; preds = %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_strCs7p2uQeJxui2_9deltalake.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_strCs7p2uQeJxui2_9deltalake.exit
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %.sroa.0.0.i

bb.j:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCs4lawaffTVVK_9sqlparser3ast7visitor21visit_expressions_mutNtB4_4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1l_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(328) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.b = call noundef zeroext i1 @_RINvXs6P_NtCs4lawaffTVVK_9sqlparser3astNtB7_4ExprNtNtB7_7visitor8VisitMut5visitINtBN_11ExprVisitorNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB1F_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24match_window_definitionss_0EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(328) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_22fastcall_with_keywords0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @156, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = invoke noundef i32 @_RNvMNtNtCsgbCypRs12E4_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread57

.thread57:                                        ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.047.0.copyload = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.448.0.copyload = load ptr, ptr %.sroa.448.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.549.0.copyload = load ptr, ptr %.sroa.549.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.650.0.copyload = load ptr, ptr %.sroa.650.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.751.0.copyload = load ptr, ptr %.sroa.751.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %.sroa.047.0.copyload, align 8, !noalias !4545, !nonnull !4, !noundef !4
  %i.j = load ptr, ptr %.sroa.448.0.copyload, align 8, !noalias !4545, !noundef !4
  %i.k = load ptr, ptr %.sroa.549.0.copyload, align 8, !noalias !4545, !noundef !4
  %i.l = load i64, ptr %.sroa.650.0.copyload, align 8, !noalias !4545, !noundef !4
  %i.m = load ptr, ptr %.sroa.751.0.copyload, align 8, !noalias !4545, !noundef !4
  invoke void %i.i(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef %i.j, ptr noundef %i.k, i64 noundef %i.l, ptr noundef %i.m)
          to label %bb.e unwind label %bb.c, !inline_history !4552

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %.thread70 unwind label %bb.d  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #52
  unreachable

.thread70:                                        ; preds = %bb.c
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r), "nonnull"(ptr %i.s) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.copyload13 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload16 = load ptr, ptr %.sroa.8.0..sroa_idx15, align 8 ; 3 uses
  %.sroa.11.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.13.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.13.0.copyload28 = load ptr, ptr %.sroa.13.0..sroa_idx27, align 8
  %.sroa.14.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.844.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx31, i64 24, i1 false)
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = load <2 x ptr>, ptr %.sroa.11.0..sroa_idx19, align 8
  %.sroa.11.0.copyload20 = load ptr, ptr %.sroa.11.0..sroa_idx19, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.copyload13, ptr %i.c, align 8
  store ptr %.sroa.8.0.copyload16, ptr %.sroa.440.0..sroa_idx, align 8
  store <2 x ptr> %i.t, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sroa.13.0.copyload28, ptr %.sroa.743.0..sroa_idx, align 8
  %i.u = ptrtoint ptr %.sroa.0.0.copyload13 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  switch i64 %i.u, label %.invoke [
    i64 2, label %bb.f
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10
  ], !prof !4553

bb.f:                                             ; preds = %.thread70, %bb.e
  %.sroa.0.0.4574 = phi ptr [ %i.r, %.thread70 ], [ %.sroa.8.0.copyload16, %bb.e ]
  %.sroa.8.8.4673 = phi ptr [ %i.s, %.thread70 ], [ %.sroa.11.0.copyload20, %bb.e ]
  invoke void @_RNvMNtCsgbCypRs12E4_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull %.sroa.0.0.4574, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.8.8.4673)
          to label %.invoke unwind label %bb.g

.invoke:                                          ; preds = %bb.e, %bb.f
  %i.v = phi ptr [ %i.b, %bb.f ], [ %.sroa.440.0..sroa_idx, %bb.e ]
  invoke void @_RNvMs0_NtNtCsgbCypRs12E4_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10 unwind label %bb.g

bb.g:                                             ; preds = %.invoke, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.thread unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10: ; preds = %.invoke, %bb.e
  %.sroa.0.0.i = phi ptr [ null, %.invoke ], [ %.sroa.8.0.copyload16, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXs_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %.sroa.0.0.i

bb.h:                                             ; preds = %.thread, %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52
  unreachable

.thread:                                          ; preds = %bb.g, %.thread57
  %.pn56 = phi { ptr, i32 } [ %i.h, %.thread57 ], [ %i.w, %bb.g ]
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit: ; preds = %.thread
  resume { ptr, i32 } %.pn56
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument23extract_pyclass_ref_mutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEB1g_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4554)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !4554, !nonnull !4, !noundef !4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4554
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs5_NtCs7p2uQeJxui2_9deltalake5mergeNtB7_14PyMergeBuilderNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !4557
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_.exit.i.i, !prof !651

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_.exit.i.i: ; preds = %bb.a
  call void @_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE8try_initB1p_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull align 8 @_RNvNvXs5_NtCs7p2uQeJxui2_9deltalake5mergeNtB7_14PyMergeBuilderNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT), !noalias !4554
  %.pre.i.i = load i64, ptr %i.a, align 8, !range !10, !noalias !4554
  %i.f = trunc nuw i64 %.pre.i.i to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_.exit.i._RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i, !prof !4560

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_.exit.i._RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i: ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_.exit.i.i
  %.pre.i = load ptr, ptr %i.g, align 8, !noalias !4554
  br label %_RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i

bb.b:                                             ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_.exit.i.i
  call void @_RNvNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 14) #50, !noalias !4554
  unreachable

_RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i: ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_.exit.i._RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i, %bb.a
  %i.h = phi ptr [ %.pre.i, %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_.exit.i._RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXs5_NtCs7p2uQeJxui2_9deltalake5mergeNtB7_14PyMergeBuilderNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %bb.a ]
  %i.i = load ptr, ptr %i.h, align 8, !noalias !4554, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4554
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !4554, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit

_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit: ; preds = %_RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i
  %i.l = call noundef i32 @PyType_IsSubtype(ptr noundef %i.k, ptr noundef nonnull %i.i) #44, !noalias !4554
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread

bb.c:                                             ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775808, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @157, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 14, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXs9_NtCsgbCypRs12E4_4pyo33errNtB5_5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_13DowncastErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread: ; preds = %_RNvXs0_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i, %_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1072
  %i.o = call noundef zeroext i1 @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker14try_borrow_mut(ptr noundef nonnull align 8 %i.n)
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXsn_NtCsgbCypRs12E4_4pyo36pycellNtNtB7_3err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_16PyBorrowMutErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.p)
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !4561)
  %.val.i = load ptr, ptr %2, align 8, !alias.scope !4561, !noundef !4 ; 2 uses
  %i.q = icmp eq ptr %.val.i, null
  br i1 %i.q, label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEE6insertB1G_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i, i64 1072
  invoke void @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.r)
          to label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEE6insertB1G_.exit unwind label %bb.g, !noalias !4561

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %2, align 8, !alias.scope !4561
  resume { ptr, i32 } %i.s

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEE6insertB1G_.exit: ; preds = %bb.e, %bb.f
  store ptr %i.c, ptr %2, align 8, !alias.scope !4561
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEE6insertB1G_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc4list7channelINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBU_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1R_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 16 ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBZ_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newCs7p2uQeJxui2_9deltalake(i64 noundef 0) ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCs14kWLkQVSKO_14deltalake_core10operations16filesystem_check1__NtB5_22FileSystemCheckMetricsNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvXs7_NtCseqDwI8vvjGQ_10serde_json3serINtB6_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser15SerializeStruct15serialize_fieldbECs7p2uQeJxui2_9deltalake.exit:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4567)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !4570, !noalias !4571, !nonnull !4, !align !90, !noundef !4
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @248, i64 noundef 1), !noalias !4574
  store i8 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = call noundef align 8 ptr @_RINvYINtNtCseqDwI8vvjGQ_10serde_json3ser8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeMap15serialize_entryebECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 7, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c) ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIBO_INtNtNtBc_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3S_14LogDataHandler4iter00ENCB3M_0ENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5B_13RawDeltaTable18dataset_partitionss_0ENCB5v_s0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsgbCypRs12E4_4pyo33err5PyErrEEB6T_8try_folduNCINvNvB6T_12try_for_each4callTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBc_6option6OptionINtNtB8Y_8instance5BoundNtNtNtB8Y_5types3any5PyAnyEEEINtNtB3l_12control_flow11ControlFlowBab_ENcNtBc1_5Break0E0Bc1_E0IBc2_Bc1_EEB5B_:bb.a
bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #55
          to label %common.resume.i.i.i.i unwind label %bb.q, !noalias !5321

bb.q:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !5321
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldjNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewuINtNtNtBa_3ops12control_flow11ControlFlowIB2l_TNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBa_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB48_5types3any5PyAnyEEEEENCNCNvMs1_NtB14_8log_dataNtB5l_14LogDataHandler4iter00QNCINvNtB6_10filter_map19filter_map_try_foldB10_TB35_B10_EuB2k_NCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB7c_13RawDeltaTable18dataset_partitionss_0NCIB2_B6P_INtNtBa_6result6ResultB34_NtNtB48_3err5PyErrEuB2k_NCB76_s0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB69_9FilterMapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB9U_INtNtB2p_5range5RangejEB5b_ENCB5f_0EB74_EB9g_EIB8t_NtNtBa_7convert10InfallibleB8S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBdw_12try_for_each4callB34_B2Z_NcNtB2Z_5Break0E0B2Z_E0E0E0E0B7c_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !5314, !noalias !5321, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !5310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5317
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5310
  store i64 %i.bi, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5310
  store i64 %i.aw, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5310
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters10filter_map19filter_map_try_foldNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_EuINtNtB9_12control_flow11ControlFlowIB3Q_TB37_INtNtBb_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB4Z_5types3any5PyAnyEEEEENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6a_13RawDeltaTable18dataset_partitionss_0NCINvNtBV_3map12map_try_foldB36_INtNtBb_6result6ResultB4t_NtNtB4Z_3err5PyErrEuB3P_NCB64_s0_0NCINvXBV_INtBV_12GenericShuntINtB7l_3MapINtBT_9FilterMapINtNtBV_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB9e_INtNtB9_5range5RangejENCNCNvMs1_NtB1R_8log_dataNtBc0_14LogDataHandler4iter00ENCBbU_0EB62_EB8A_EIB7N_NtNtBb_7convert10InfallibleB8c_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvBdD_12try_for_each4callB4t_B4o_NcNtB4o_5Break0E0B4o_E0E0E0INtB7_5FnMutTuB1N_EE8call_mutB6a_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.h), !noalias !5328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5310
  %i.bj = load i64, ptr %i.i, align 8, !range !3, !alias.scope !5329, !noalias !5332, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bj, -9223372036854775807
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldjNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewuINtNtNtBa_3ops12control_flow11ControlFlowIB2l_TNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBa_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB48_5types3any5PyAnyEEEEENCNCNvMs1_NtB14_8log_dataNtB5l_14LogDataHandler4iter00QNCINvNtB6_10filter_map19filter_map_try_foldB10_TB35_B10_EuB2k_NCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB7c_13RawDeltaTable18dataset_partitionss_0NCIB2_B6P_INtNtBa_6result6ResultB34_NtNtB48_3err5PyErrEuB2k_NCB76_s0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB69_9FilterMapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB9U_INtNtB2p_5range5RangejEB5b_ENCB5f_0EB74_EB9g_EIB8t_NtNtBa_7convert10InfallibleB8S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBdw_12try_for_each4callB34_B2Z_NcNtB2Z_5Break0E0B2Z_E0E0E0E0B7c_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5297
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ax, %i.av
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.r, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5291
  %i.bk = icmp eq ptr %i.at, %i.ap
  br i1 %i.bk, label %.loopexit72.i.i.i.i, label %bb.l

bb.s:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldjNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewuINtNtNtBa_3ops12control_flow11ControlFlowIB2l_TNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBa_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB48_5types3any5PyAnyEEEEENCNCNvMs1_NtB14_8log_dataNtB5l_14LogDataHandler4iter00QNCINvNtB6_10filter_map19filter_map_try_foldB10_TB35_B10_EuB2k_NCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB7c_13RawDeltaTable18dataset_partitionss_0NCIB2_B6P_INtNtBa_6result6ResultB34_NtNtB48_3err5PyErrEuB2k_NCB76_s0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB69_9FilterMapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB9U_INtNtB2p_5range5RangejEB5b_ENCB5f_0EB74_EB9g_EIB8t_NtNtBa_7convert10InfallibleB8S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBdw_12try_for_each4callB34_B2Z_NcNtB2Z_5Break0E0B2Z_E0E0E0E0B7c_.exit.i.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx6.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx6.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !5334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5195
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtNtB8_3map3MapINtNtNtBc_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3O_14LogDataHandler4iter00ENCB3I_0ENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5x_13RawDeltaTable18dataset_partitionss_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB2Z_12map_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB3Q_9iterators15LogicalFileViewEINtNtBc_6result6ResultTB7K_INtNtBc_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB9O_5types3any5PyAnyEEENtNtB9O_3err5PyErrEuINtNtB3h_12control_flow11ControlFlowIBba_B9i_EENCB5r_s0_0NCINvXB8_INtB8_12GenericShuntIB2X_BV_BbU_EIB8X_NtNtBc_7convert10InfallibleBaP_EEB6E_8try_folduNCINvNvB6E_12try_for_each4callB9i_BbJ_NcNtBbJ_5Break0E0BbJ_E0E0Bb9_EB5x_.exit

.loopexit73.i.i.i.i:                              ; preds = %bb.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5195
  br label %bb.j

bb.t:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldjNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewuINtNtNtBa_3ops12control_flow11ControlFlowIB2l_TNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBa_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB48_5types3any5PyAnyEEEEENCNCNvMs1_NtB14_8log_dataNtB5l_14LogDataHandler4iter00QNCINvNtB6_10filter_map19filter_map_try_foldB10_TB35_B10_EuB2k_NCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB7c_13RawDeltaTable18dataset_partitionss_0NCIB2_B6P_INtNtBa_6result6ResultB34_NtNtB48_3err5PyErrEuB2k_NCB76_s0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB69_9FilterMapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB9U_INtNtB2p_5range5RangejEB5b_ENCB5f_0EB74_EB9g_EIB8t_NtNtBa_7convert10InfallibleB8S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBdw_12try_for_each4callB34_B2Z_NcNtB2Z_5Break0E0B2Z_E0E0E0E0B7c_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.246.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.246.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !5334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5291
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtNtB8_3map3MapINtNtNtBc_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3O_14LogDataHandler4iter00ENCB3I_0ENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5x_13RawDeltaTable18dataset_partitionss_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB2Z_12map_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB3Q_9iterators15LogicalFileViewEINtNtBc_6result6ResultTB7K_INtNtBc_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB9O_5types3any5PyAnyEEENtNtB9O_3err5PyErrEuINtNtB3h_12control_flow11ControlFlowIBba_B9i_EENCB5r_s0_0NCINvXB8_INtB8_12GenericShuntIB2X_BV_BbU_EIB8X_NtNtBc_7convert10InfallibleBaP_EEB6E_8try_folduNCINvNvB6E_12try_for_each4callB9i_BbJ_NcNtBbJ_5Break0E0BbJ_E0E0Bb9_EB5x_.exit

.loopexit72.i.i.i.i:                              ; preds = %.loopexit.i.i.i.i.i.i.i, %bb.k, %bb.j
  store ptr null, ptr %i.s, align 8, !alias.scope !5183, !noalias !5184
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !5183, !noalias !5184, !noundef !4
  %.not10.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not10.i.i.i.i, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %.loopexit72.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5335)
  call void @llvm.experimental.noalias.scope.decl(metadata !5338)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5344
  store ptr %i.p, ptr %i.e, align 8, !noalias !5349
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.bo, align 8, !noalias !5349
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !5353, !noalias !5360, !noundef !4 ; 2 uses
  %.promoted.i.i.i17.i.i.i.i = load i64, ptr %i.bn, align 8, !alias.scope !5362, !noalias !5363 ; 2 uses
  %i.br = icmp ult i64 %.promoted.i.i.i17.i.i.i.i, %i.bq
  br i1 %i.br, label %.lr.ph.i.i.i19.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i19.i.i.i.i:                           ; preds = %bb.u
  %.sroa.4.0..sroa_idx.i.i.i.i20.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i21.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.6.0..sroa_idx.i.i.i.i22.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.v

bb.v:                                             ; preds = %bb.ab, %.lr.ph.i.i.i19.i.i.i.i
  %i.bs = phi i64 [ %.promoted.i.i.i17.i.i.i.i, %.lr.ph.i.i.i19.i.i.i.i ], [ %i.bt, %bb.ab ] ; 2 uses
  %i.bt = add i64 %i.bs, 1                        ; 3 uses
  store i64 %i.bt, ptr %i.bn, align 8, !alias.scope !5362, !noalias !5363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5349
  call void @llvm.experimental.noalias.scope.decl(metadata !5364)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5367
  %i.bu = load ptr, ptr %i.bo, align 8, !alias.scope !5364, !noalias !5369, !nonnull !4, !align !90, !noundef !4
  %.val.i.i.i.i23.i.i.i.i = load ptr, ptr %i.bu, align 8, !noalias !5370, !nonnull !4, !align !90, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5371)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5374
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i23.i.i.i.i, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !5371, !noalias !5378, !nonnull !4, !noundef !4 ; 4 uses
  %i.bx = atomicrmw add ptr %i.bw, i64 1 monotonic, align 8, !noalias !5379
  %i.by = icmp slt i64 %i.bx, 0
  br i1 %i.by, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.bw, ptr %i.b, align 8, !noalias !5374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5374
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.val.i.i.i.i23.i.i.i.i)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldjNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewuINtNtNtBa_3ops12control_flow11ControlFlowIB2l_TNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBa_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB48_5types3any5PyAnyEEEEENCNCNvMs1_NtB14_8log_dataNtB5l_14LogDataHandler4iter00QNCINvNtB6_10filter_map19filter_map_try_foldB10_TB35_B10_EuB2k_NCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB7c_13RawDeltaTable18dataset_partitionss_0NCIB2_B6P_INtNtBa_6result6ResultB34_NtNtB48_3err5PyErrEuB2k_NCB76_s0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB69_9FilterMapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB9U_INtNtB2p_5range5RangejEB5b_ENCB5f_0EB74_EB9g_EIB8t_NtNtBa_7convert10InfallibleB8S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBdw_12try_for_each4callB34_B2Z_NcNtB2Z_5Break0E0B2Z_E0E0E0E0B7c_.exit.i.i.i25.i.i.i.i unwind label %bb.y, !noalias !5378

bb.x:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = atomicrmw sub ptr %i.bw, i64 1 release, align 8, !noalias !5380
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.z, label %common.resume.i.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #55
          to label %common.resume.i.i.i.i unwind label %bb.aa, !noalias !5378

bb.aa:                                            ; preds = %bb.z
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !5378
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldjNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewuINtNtNtBa_3ops12control_flow11ControlFlowIB2l_TNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBa_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB48_5types3any5PyAnyEEEEENCNCNvMs1_NtB14_8log_dataNtB5l_14LogDataHandler4iter00QNCINvNtB6_10filter_map19filter_map_try_foldB10_TB35_B10_EuB2k_NCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB7c_13RawDeltaTable18dataset_partitionss_0NCIB2_B6P_INtNtBa_6result6ResultB34_NtNtB48_3err5PyErrEuB2k_NCB76_s0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB69_9FilterMapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB9U_INtNtB2p_5range5RangejEB5b_ENCB5f_0EB74_EB9g_EIB8t_NtNtBa_7convert10InfallibleB8S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBdw_12try_for_each4callB34_B2Z_NcNtB2Z_5Break0E0B2Z_E0E0E0E0B7c_.exit.i.i.i25.i.i.i.i: ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i23.i.i.i.i, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !5371, !noalias !5378, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !5367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5374
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx.i.i.i.i20.i.i.i.i, align 8, !noalias !5367
  store i64 %i.ce, ptr %.sroa.5.0..sroa_idx.i.i.i.i21.i.i.i.i, align 8, !noalias !5367
  store i64 %i.bs, ptr %.sroa.6.0..sroa_idx.i.i.i.i22.i.i.i.i, align 8, !noalias !5367
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters10filter_map19filter_map_try_foldNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1N_EuINtNtB9_12control_flow11ControlFlowIB3Q_TB37_INtNtBb_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB4Z_5types3any5PyAnyEEEEENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6a_13RawDeltaTable18dataset_partitionss_0NCINvNtBV_3map12map_try_foldB36_INtNtBb_6result6ResultB4t_NtNtB4Z_3err5PyErrEuB3P_NCB64_s0_0NCINvXBV_INtBV_12GenericShuntINtB7l_3MapINtBT_9FilterMapINtNtBV_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB9e_INtNtB9_5range5RangejENCNCNvMs1_NtB1R_8log_dataNtBc0_14LogDataHandler4iter00ENCBbU_0EB62_EB8A_EIB7N_NtNtBb_7convert10InfallibleB8c_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvBdD_12try_for_each4callB4t_B4o_NcNtB4o_5Break0E0B4o_E0E0E0INtB7_5FnMutTuB1N_EE8call_mutB6a_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c), !noalias !5385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5367
  %i.cf = load i64, ptr %i.d, align 8, !range !3, !alias.scope !5386, !noalias !5389, !noundef !4 ; 2 uses
  %.not.i.i.i.i26.i.i.i.i = icmp eq i64 %i.cf, -9223372036854775807
  br i1 %.not.i.i.i.i26.i.i.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldjNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewuINtNtNtBa_3ops12control_flow11ControlFlowIB2l_TNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBa_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB48_5types3any5PyAnyEEEEENCNCNvMs1_NtB14_8log_dataNtB5l_14LogDataHandler4iter00QNCINvNtB6_10filter_map19filter_map_try_foldB10_TB35_B10_EuB2k_NCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB7c_13RawDeltaTable18dataset_partitionss_0NCIB2_B6P_INtNtBa_6result6ResultB34_NtNtB48_3err5PyErrEuB2k_NCB76_s0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB69_9FilterMapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB9U_INtNtB2p_5range5RangejEB5b_ENCB5f_0EB74_EB9g_EIB8t_NtNtBa_7convert10InfallibleB8S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBdw_12try_for_each4callB34_B2Z_NcNtB2Z_5Break0E0B2Z_E0E0E0E0B7c_.exit.i.i.i25.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5349
  %exitcond.not.i.i.i29.i.i.i.i = icmp eq i64 %i.bt, %i.bq
  br i1 %exitcond.not.i.i.i29.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.v

bb.ac:                                            ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldjNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewuINtNtNtBa_3ops12control_flow11ControlFlowIB2l_TNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBa_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB48_5types3any5PyAnyEEEEENCNCNvMs1_NtB14_8log_dataNtB5l_14LogDataHandler4iter00QNCINvNtB6_10filter_map19filter_map_try_foldB10_TB35_B10_EuB2k_NCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB7c_13RawDeltaTable18dataset_partitionss_0NCIB2_B6P_INtNtBa_6result6ResultB34_NtNtB48_3err5PyErrEuB2k_NCB76_s0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtB69_9FilterMapINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEIB9U_INtNtB2p_5range5RangejEB5b_ENCB5f_0EB74_EB9g_EIB8t_NtNtBa_7convert10InfallibleB8S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBdw_12try_for_each4callB34_B2Z_NcNtB2Z_5Break0E0B2Z_E0E0E0E0B7c_.exit.i.i.i25.i.i.i.i
  %.sroa.7.0..sroa_idx6.i.i.i27.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.255.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.255.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx6.i.i.i27.i.i.i.i, i64 24, i1 false), !noalias !5334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5344
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtNtB8_3map3MapINtNtNtBc_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3O_14LogDataHandler4iter00ENCB3I_0ENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5x_13RawDeltaTable18dataset_partitionss_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB2Z_12map_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB3Q_9iterators15LogicalFileViewEINtNtBc_6result6ResultTB7K_INtNtBc_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB9O_5types3any5PyAnyEEENtNtB9O_3err5PyErrEuINtNtB3h_12control_flow11ControlFlowIBba_B9i_EENCB5r_s0_0NCINvXB8_INtB8_12GenericShuntIB2X_BV_BbU_EIB8X_NtNtBc_7convert10InfallibleBaP_EEB6E_8try_folduNCINvNvB6E_12try_for_each4callB9i_BbJ_NcNtBbJ_5Break0E0BbJ_E0E0Bb9_EB5x_.exit

.loopexit.i.i.i.i:                                ; preds = %bb.ab, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5344
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i.i.i.i, %.loopexit72.i.i.i.i
  store ptr null, ptr %i.bl, align 8, !alias.scope !5183, !noalias !5184
  br label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtNtB8_3map3MapINtNtNtBc_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3O_14LogDataHandler4iter00ENCB3I_0ENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5x_13RawDeltaTable18dataset_partitionss_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB2Z_12map_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB3Q_9iterators15LogicalFileViewEINtNtBc_6result6ResultTB7K_INtNtBc_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB9O_5types3any5PyAnyEEENtNtB9O_3err5PyErrEuINtNtB3h_12control_flow11ControlFlowIBba_B9i_EENCB5r_s0_0NCINvXB8_INtB8_12GenericShuntIB2X_BV_BbU_EIB8X_NtNtBc_7convert10InfallibleBaP_EEB6E_8try_folduNCINvNvB6E_12try_for_each4callB9i_BbJ_NcNtBbJ_5Break0E0BbJ_E0E0Bb9_EB5x_.exit

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtNtB8_3map3MapINtNtNtBc_3ops5range5RangejENCNCNvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB3O_14LogDataHandler4iter00ENCB3I_0ENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB5x_13RawDeltaTable18dataset_partitionss_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvB2Z_12map_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtB3Q_9iterators15LogicalFileViewEINtNtBc_6result6ResultTB7K_INtNtBc_6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB9O_5types3any5PyAnyEEENtNtB9O_3err5PyErrEuINtNtB3h_12control_flow11ControlFlowIBba_B9i_EENCB5r_s0_0NCINvXB8_INtB8_12GenericShuntIB2X_BV_BbU_EIB8X_NtNtBc_7convert10InfallibleBaP_EEB6E_8try_folduNCINvNvB6E_12try_for_each4callB9i_BbJ_NcNtBbJ_5Break0E0BbJ_E0E0Bb9_EB5x_.exit: ; preds = %bb.s, %bb.t, %bb.ac, %bb.ad
  %.lcssa55.sink.i.i.i = phi i64 [ %i.am, %bb.s ], [ %i.bj, %bb.t ], [ %i.cf, %bb.ac ], [ -9223372036854775807, %bb.ad ]
  store i64 %.lcssa55.sink.i.i.i, ptr %0, align 8, !alias.scope !5391, !noalias !5334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5172
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEIBO_IBY_IB1e_IB1E_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1e_INtNtB23_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2Z_8dfschemaNtB5i_8DFSchema4iter0EENCINvMs8_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB63_13SubqueryAlias7try_newB2V_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7v_8for_each4callNtNtB67_4expr4ExprNCINvMsj_NtB23_3vecINtB8Z_3VecB8y_E14extend_trustedBN_E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 10 uses
  %i.c = alloca [112 x i8], align 16              ; 4 uses
  %i.d = alloca [112 x i8], align 16              ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load ptr, ptr %.sroa.52.0..sroa_idx, align 8 ; 2 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.63.0.copyload = load i64, ptr %.sroa.63.0..sroa_idx, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.74.0.copyload = load i64, ptr %.sroa.74.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.56.0.copyload = load i64, ptr %.sroa.56.0..sroa_idx, align 8 ; 2 uses
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.77.0.copyload = load ptr, ptr %.sroa.77.0..sroa_idx, align 8
  %i.e = sub i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  %.not.i.i = icmp eq i64 %.sroa.8.0.copyload, %.sroa.74.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEINtNtB7_3map3MapIBN_IBX_IB1n_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBX_INtNtB1M_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2T_8dfschemaNtB5b_8DFSchema4iter0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB2p_8map_foldTRB1m_TIB1n_RB2P_ERB43_EENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs8_NtNtB7c_12logical_plan4planNtB81_13SubqueryAlias7try_newB2P_E0NCINvNvB5N_8for_each4callB78_NCINvMsj_NtB1M_3vecINtB9D_3VecB78_E14extend_trustedIB2n_BM_B7S_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.41.0.copyload), "nonnull"(ptr %.sroa.52.0.copyload) ]
  %.sink18.i.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink18.i.sroa.gep1.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sink15.i.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink15.i.sroa.gep2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sink18.i7.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sink18.i7.sroa.gep3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sink15.i9.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sink15.i9.sroa.gep4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.ah, %bb.r
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val13.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !5392
  resume { ptr, i32 } %i.g

bb.c:                                             ; preds = %bb.aj, %.lr.ph.i.i
  %.val13.i.i = phi i64 [ %.sroa.56.0.copyload, %.lr.ph.i.i ], [ %i.bt, %bb.aj ] ; 3 uses
  %.sroa.0.020.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.h, %bb.aj ] ; 2 uses
  %i.h = add nuw i64 %.sroa.0.020.i.i, 1          ; 2 uses
  %i.i = add i64 %.sroa.0.020.i.i, %.sroa.74.0.copyload ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload, i64 %i.i ; 2 uses
  %i.k = add i64 %i.i, %.sroa.63.0.copyload       ; 2 uses
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %.sroa.41.0.copyload, i64 %i.k ; 18 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.52.0.copyload, i64 %i.k
  %i.n = load i64, ptr %i.l, align 8, !range !245, !alias.scope !5399, !noalias !5402, !noundef !4 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.n, 3           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5409
  br i1 %.not.i.i.i.i.i, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !5413)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !5413, !noalias !5416, !nonnull !4, !noundef !4 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !5413, !noalias !5416, !noundef !4 ; 3 uses
  %i.s = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !5421
  %i.t = icmp slt i64 %i.s, 0                     ; 3 uses
  switch i64 %i.n, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.t, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  br i1 %i.t, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  br i1 %i.t, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.d
  br i1 %i.t, label %bb.m, label %bb.l

bb.h:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

.sink.split.i.i.i.i.i:                            ; preds = %bb.p, %bb.i
  %.sink18.i.sroa.phi.i.i.i.i = phi ptr [ %.sink18.i.sroa.gep.i.i.i.i, %bb.p ], [ %.sink18.i.sroa.gep1.i.i.i.i, %bb.i ]
  %.sink16.i.i.i.i.i = phi ptr [ %i.ab, %bb.p ], [ %i.p, %bb.i ]
  %.sink15.i.sroa.phi.i.i.i.i = phi ptr [ %.sink15.i.sroa.gep.i.i.i.i, %bb.p ], [ %.sink15.i.sroa.gep2.i.i.i.i, %bb.i ]
  %.sink13.i.i.i.i.i = phi i64 [ %i.ad, %bb.p ], [ %i.r, %bb.i ]
  %.sink12.ph.i.i.i.i.i = phi i64 [ 40, %bb.p ], [ 24, %bb.i ]
  %.sink10.ph.i.i.i.i.i = phi ptr [ %i.ah, %bb.p ], [ %i.v, %bb.i ]
  %.sink9.ph.i.i.i.i.i = phi i64 [ 48, %bb.p ], [ 32, %bb.i ]
  %.sink7.ph.i.i.i.i.i = phi i64 [ %i.aj, %bb.p ], [ %i.x, %bb.i ]
  store ptr %.sink16.i.i.i.i.i, ptr %.sink18.i.sroa.phi.i.i.i.i, align 8, !noalias !5422
  store i64 %.sink13.i.i.i.i.i, ptr %.sink15.i.sroa.phi.i.i.i.i, align 8, !noalias !5422
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !5413, !noalias !5416, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !5413, !noalias !5416, !noundef !4
  %i.y = atomicrmw add ptr %i.v, i64 1 monotonic, align 8, !noalias !5421
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.k, label %.sink.split.i.i.i.i.i

bb.j:                                             ; preds = %bb.f
  call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !5413, !noalias !5416, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !5413, !noalias !5416, !noundef !4
  %i.ae = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8, !noalias !5421
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !5413, !noalias !5416, !nonnull !4, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !5413, !noalias !5416, !noundef !4
  %i.ak = atomicrmw add ptr %i.ah, i64 1 monotonic, align 8, !noalias !5421
  %i.al = icmp slt i64 %i.ak, 0
  br i1 %i.al, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

bb.p:                                             ; preds = %bb.n
  store ptr %i.p, ptr %.sink18.i.sroa.gep1.i.i.i.i, align 8, !noalias !5422
  store i64 %i.r, ptr %.sink15.i.sroa.gep2.i.i.i.i, align 8, !noalias !5422
  br label %.sink.split.i.i.i.i.i

bb.q:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i, %bb.e
  %.sink12.i.i.i.i.i = phi i64 [ 8, %bb.e ], [ %.sink12.ph.i.i.i.i.i, %.sink.split.i.i.i.i.i ]
  %.sink10.i.i.i.i.i = phi ptr [ %i.p, %bb.e ], [ %.sink10.ph.i.i.i.i.i, %.sink.split.i.i.i.i.i ]
  %.sink9.i.i.i.i.i = phi i64 [ 16, %bb.e ], [ %.sink9.ph.i.i.i.i.i, %.sink.split.i.i.i.i.i ]
  %.sink7.i.i.i.i.i = phi i64 [ %i.r, %bb.e ], [ %.sink7.ph.i.i.i.i.i, %.sink.split.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink12.i.i.i.i.i
  store ptr %.sink10.i.i.i.i.i, ptr %i.am, align 8, !noalias !5422
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink9.i.i.i.i.i
  store i64 %.sink7.i.i.i.i.i, ptr %i.an, align 8, !noalias !5422
  br label %bb.r

bb.r:                                             ; preds = %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i.i.i.i, %bb.c
  store i64 %i.n, ptr %i.b, align 8, !noalias !5422
  %i.ao = load ptr, ptr %i.m, align 8, !noalias !5422, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  invoke void @_RINvMs_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6Column3newNtNtB7_15table_reference14TableReferenceRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.f, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %.noexc.i.i unwind label %bb.b, !noalias !5392

.noexc.i.i:                                       ; preds = %bb.r
  store i64 5, ptr %i.d, align 16, !noalias !5409
  %i.aq = load i64, ptr %i.j, align 8, !range !11, !noalias !5422, !noundef !4
  %.not5.i.i.i.i = icmp eq i64 %i.aq, -9223372036854775808
  br i1 %.not5.i.i.i.i, label %bb.aj, label %bb.s

bb.s:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !5409
  br i1 %.not.i.i.i.i.i, label %bb.ah, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !5423)
  %i.ar = load i64, ptr %i.l, align 8, !range !128, !alias.scope !5423, !noalias !5426, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !5423, !noalias !5426, !nonnull !4, !noundef !4 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !5423, !noalias !5426, !noundef !4 ; 3 uses
  %i.aw = atomicrmw add ptr %i.at, i64 1 monotonic, align 8, !noalias !5428
  %i.ax = icmp slt i64 %i.aw, 0                   ; 3 uses
  switch i64 %i.ar, label %default.unreachable [
    i64 0, label %bb.u
    i64 1, label %bb.v
    i64 2, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  br i1 %i.ax, label %bb.x, label %bb.ai

bb.v:                                             ; preds = %bb.t
  br i1 %i.ax, label %bb.z, label %bb.y

bb.w:                                             ; preds = %bb.t
  br i1 %i.ax, label %bb.ac, label %bb.ab

bb.x:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

.sink.split.i6.i.i.i.i:                           ; preds = %bb.af, %bb.y
  %.sink18.i7.sroa.phi.i.i.i.i = phi ptr [ %.sink18.i7.sroa.gep.i.i.i.i, %bb.af ], [ %.sink18.i7.sroa.gep3.i.i.i.i, %bb.y ]
  %.sink16.i8.i.i.i.i = phi ptr [ %i.bf, %bb.af ], [ %i.at, %bb.y ]
  %.sink15.i9.sroa.phi.i.i.i.i = phi ptr [ %.sink15.i9.sroa.gep.i.i.i.i, %bb.af ], [ %.sink15.i9.sroa.gep4.i.i.i.i, %bb.y ]
  %.sink13.i10.i.i.i.i = phi i64 [ %i.bh, %bb.af ], [ %i.av, %bb.y ]
  %.sink12.ph.i11.i.i.i.i = phi i64 [ 40, %bb.af ], [ 24, %bb.y ]
  %.sink10.ph.i12.i.i.i.i = phi ptr [ %i.bl, %bb.af ], [ %i.az, %bb.y ]
  %.sink9.ph.i13.i.i.i.i = phi i64 [ 48, %bb.af ], [ 32, %bb.y ]
  %.sink7.ph.i14.i.i.i.i = phi i64 [ %i.bn, %bb.af ], [ %i.bb, %bb.y ]
  store ptr %.sink16.i8.i.i.i.i, ptr %.sink18.i7.sroa.phi.i.i.i.i, align 8, !noalias !5422
  store i64 %.sink13.i10.i.i.i.i, ptr %.sink15.i9.sroa.phi.i.i.i.i, align 8, !noalias !5422
  br label %bb.ai

bb.y:                                             ; preds = %bb.v
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !5423, !noalias !5426, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !5423, !noalias !5426, !noundef !4
  %i.bc = atomicrmw add ptr %i.az, i64 1 monotonic, align 8, !noalias !5428
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.aa, label %.sink.split.i6.i.i.i.i

bb.z:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !5423, !noalias !5426, !nonnull !4, !noundef !4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !5423, !noalias !5426, !noundef !4
  %i.bi = atomicrmw add ptr %i.bf, i64 1 monotonic, align 8, !noalias !5428
  %i.bj = icmp slt i64 %i.bi, 0
  br i1 %i.bj, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.w
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !5423, !noalias !5426, !nonnull !4, !noundef !4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !5423, !noalias !5426, !noundef !4
  %i.bo = atomicrmw add ptr %i.bl, i64 1 monotonic, align 8, !noalias !5428
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %bb.ad
  store ptr %i.at, ptr %.sink18.i7.sroa.gep3.i.i.i.i, align 8, !noalias !5422
  store i64 %i.av, ptr %.sink15.i9.sroa.gep4.i.i.i.i, align 8, !noalias !5422
  br label %.sink.split.i6.i.i.i.i

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %bb.ai, %bb.s
  %.sink5.i.i.i.i = phi i64 [ %i.ar, %bb.ai ], [ 3, %bb.s ]
  store i64 %.sink5.i.i.i.i, ptr %i.a, align 8, !noalias !5422
  invoke void @_RINvMsa_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_5Alias3newNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.f, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %.noexc14.i.i unwind label %bb.b, !noalias !5392

.noexc14.i.i:                                     ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5422
  store i64 4, ptr %i.d, align 16, !noalias !5409
  br label %bb.aj

bb.ai:                                            ; preds = %.sink.split.i6.i.i.i.i, %bb.u
  %.sink12.i15.i.i.i.i = phi i64 [ 8, %bb.u ], [ %.sink12.ph.i11.i.i.i.i, %.sink.split.i6.i.i.i.i ]
  %.sink10.i16.i.i.i.i = phi ptr [ %i.at, %bb.u ], [ %.sink10.ph.i12.i.i.i.i, %.sink.split.i6.i.i.i.i ]
  %.sink9.i17.i.i.i.i = phi i64 [ 16, %bb.u ], [ %.sink9.ph.i13.i.i.i.i, %.sink.split.i6.i.i.i.i ]
  %.sink7.i18.i.i.i.i = phi i64 [ %i.av, %bb.u ], [ %.sink7.ph.i14.i.i.i.i, %.sink.split.i6.i.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink12.i15.i.i.i.i
  store ptr %.sink10.i16.i.i.i.i, ptr %i.bq, align 8, !noalias !5422
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink9.i17.i.i.i.i
  store i64 %.sink7.i18.i.i.i.i, ptr %i.br, align 8, !noalias !5422
  br label %bb.ah

bb.aj:                                            ; preds = %.noexc14.i.i, %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5409
  %i.bs = getelementptr inbounds nuw [112 x i8], ptr %.sroa.77.0.copyload, i64 %.val13.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bs, ptr noundef nonnull align 16 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !5409
  %i.bt = add i64 %.val13.i.i, 1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5392
  %exitcond.not.i.i = icmp eq i64 %i.h, %i.e
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEINtNtB7_3map3MapIBN_IBX_IB1n_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBX_INtNtB1M_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2T_8dfschemaNtB5b_8DFSchema4iter0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB2p_8map_foldTRB1m_TIB1n_RB2P_ERB43_EENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs8_NtNtB7c_12logical_plan4planNtB81_13SubqueryAlias7try_newB2P_E0NCINvNvB5N_8for_each4callB78_NCINvMsj_NtB1M_3vecINtB9D_3VecB78_E14extend_trustedIB2n_BM_B7S_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.c

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEINtNtB7_3map3MapIBN_IBX_IB1n_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIBX_INtNtB1M_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2T_8dfschemaNtB5b_8DFSchema4iter0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB2p_8map_foldTRB1m_TIB1n_RB2P_ERB43_EENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs8_NtNtB7c_12logical_plan4planNtB81_13SubqueryAlias7try_newB2P_E0NCINvNvB5N_8for_each4callB78_NCINvMsj_NtB1M_3vecINtB9D_3VecB78_E14extend_trustedIB2n_BM_B7S_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.aj, %bb.a
  %.val11.i.i = phi i64 [ %.sroa.56.0.copyload, %bb.a ], [ %i.bt, %bb.aj ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.05.0.copyload) ]
  store i64 %.val11.i.i, ptr %.sroa.05.0.copyload, align 8, !noalias !5392
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEB1d_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB37_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6e_8for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvMsj_NtB1I_3vecINtB89_3VecB7h_E14extend_trustedBN_E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 6 uses
  %i.c = alloca [112 x i8], align 16              ; 4 uses
  %i.d = alloca [112 x i8], align 16              ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.54.0.copyload = load i64, ptr %.sroa.54.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.e = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3K_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4L_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvB2I_8for_each4callB3U_NCINvMsj_NtB1r_3vecINtB8t_3VecB3U_E14extend_trustedINtB3r_3MapBM_B4E_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.41.0.copyload) ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

.body.i.i:                                        ; preds = %bb.d, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.g, %bb.b ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val13.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !5429
  resume { ptr, i32 } %.pn.i.i

bb.b:                                             ; preds = %.noexc16.i.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0Cs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.c:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.i.i
  %.val13.i.i = phi i64 [ %.sroa.54.0.copyload, %.lr.ph.i.i ], [ %i.r, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i ] ; 3 uses
  %.sroa.0.018.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.h, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %i.h = add nuw i64 %.sroa.0.018.i.i, 1          ; 2 uses
  %i.i = add i64 %.sroa.0.018.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload, i64 %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload, i64 %i.i
  %.val14.i.i = load ptr, ptr %i.j, align 8, !noalias !5429 ; 3 uses
  %.val15.i.i = load ptr, ptr %i.k, align 8, !noalias !5429, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5439
  %i.l = getelementptr inbounds nuw i8, ptr %.val15.i.i, i64 16
  invoke void @_RNvXs1_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnINtNtCsbvkFyIu7lgC_4core7convert4FromRNtNtCs6Po7BT7Nknu_5alloc6string6StringE4from(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %.noexc.i.i unwind label %bb.b, !noalias !5429

.noexc.i.i:                                       ; preds = %bb.c
  store i64 5, ptr %i.b, align 16, !noalias !5439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5439
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i.i) ]
  %i.m = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 40
  invoke fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0Cs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.d, !noalias !5439

bb.d:                                             ; preds = %.noexc.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(112) %i.b) #51
          to label %.body.i.i unwind label %bb.e, !noalias !5439

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !5439
  unreachable

_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0Cs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %.noexc.i.i
  invoke void @_RNvNtCs8VI8w5SIoU4_15datafusion_expr7expr_fn4cast(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc16.i.i unwind label %bb.b, !noalias !5429

.noexc16.i.i:                                     ; preds = %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0Cs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val14.i.i, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5439
  invoke void @_RINvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4Expr5aliasRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.d, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(112) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.b, !noalias !5429

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.noexc16.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5439
  %i.q = getelementptr inbounds nuw [112 x i8], ptr %.sroa.7.0.copyload, i64 %.val13.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.q, ptr noundef nonnull readonly align 16 dereferenceable(112) %i.d, i64 112, i1 false), !noalias !5442
  %i.r = add i64 %.val13.i.i, 1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5436
  %exitcond.not.i.i = icmp eq i64 %i.h, %i.e
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3K_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4L_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvB2I_8for_each4callB3U_NCINvMsj_NtB1r_3vecINtB8t_3VecB3U_E14extend_trustedINtB3r_3MapBM_B4E_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.c

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3K_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4L_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvB2I_8for_each4callB3U_NCINvMsj_NtB1r_3vecINtB8t_3VecB3U_E14extend_trustedINtB3r_3MapBM_B4E_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i, %bb.a
  %.val11.i.i = phi i64 [ %.sroa.54.0.copyload, %bb.a ], [ %i.r, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val11.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !5429
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEB1d_ENCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB34_18LogicalPlanBuilder13join_detailedB21_B21_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4P_8for_each4callTINtNtBc_6result6ResultB21_NtNtB25_5error15DataFusionErrorEB5T_ENCINvNvNtB4T_7collect14default_extend18unchecked_extenderTINtB1i_3VecB5T_EB7Q_EB5S_E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 4 uses
  %i.b = alloca [208 x i8], align 8               ; 7 uses
  %.sroa.616.i.i.i = alloca [96 x i8], align 8    ; 4 uses
  %.sroa.612.i.i.i = alloca [96 x i8], align 8    ; 4 uses
  %.sroa.4.i.i.i = alloca [96 x i8], align 8      ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !90, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !align !140, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5453)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.val15.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !5456, !noalias !5459, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.val16.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !5456, !noalias !5459, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = ptrtoint ptr %.val16.i.i.i.i to i64
  %i.k = ptrtoint ptr %.val15.i.i.i.i to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 104
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %.val.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !5456, !noalias !5459, !nonnull !4, !noundef !4 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.val14.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !5456, !noalias !5459, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = ptrtoint ptr %.val14.i.i.i.i to i64
  %i.q = ptrtoint ptr %.val.i.i.i.i to i64
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = udiv exact i64 %i.r, 104
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 %i.m) ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.020.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.b:                                             ; preds = %.noexc.i.i.i, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit7.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ae, ptr %i.h, align 8
  store ptr %i.aj, ptr %i.n, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEB1e_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c) #51
          to label %common.resume.i.i.i unwind label %bb.i, !noalias !5464

bb.c:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %i.u = phi ptr [ %.val.i.i.i.i, %.lr.ph.i.i.i ], [ %i.aj, %bb.h ]
  %i.v = phi ptr [ %.val15.i.i.i.i, %.lr.ph.i.i.i ], [ %i.ae, %bb.h ]
  %i.w = phi ptr [ %.val.i.i.i.i, %.lr.ph.i.i.i ], [ %i.ak, %bb.h ] ; 5 uses
  %i.x = phi ptr [ %.val15.i.i.i.i, %.lr.ph.i.i.i ], [ %i.af, %bb.h ] ; 5 uses
  %.sroa.01.021.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.y, %bb.h ]
  %i.y = add nuw nsw i64 %.sroa.01.021.i.i.i, 1   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.612.i.i.i)
  %i.z = icmp eq ptr %i.x, %.val16.i.i.i.i
  br i1 %i.z, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 2 uses
  %.sroa.010.0.copyload11.i.i.i = load i64, ptr %i.x, align 8, !noalias !5465
  %.sroa.612.0..sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.612.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.612.0..sroa_idx13.i.i.i, i64 96, i1 false), !noalias !5465
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i.i.i

._crit_edge.i.i.i.loopexit:                       ; preds = %bb.h
  store ptr %i.ae, ptr %i.h, align 8
  store ptr %i.aj, ptr %i.n, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit, %bb.a
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTB1K_B1K_ETINtNtBb_6result6ResultB1K_NtNtB1O_5error15DataFusionErrorEB3Q_EuNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB50_18LogicalPlanBuilder13join_detailedB1K_B1K_E0NCINvNvB2E_8for_each4callB3P_NCINvNvNtB2I_7collect14default_extend18unchecked_extenderTINtB11_3VecB3Q_EB89_EB3P_E0E0E0ECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e, !noalias !5464

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %common.resume.i.i.i unwind label %bb.f, !noalias !5464

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !5464
  unreachable

common.resume.i.i.i:                              ; preds = %bb.e, %bb.b
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %i.t, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.ae = phi ptr [ %i.aa, %bb.d ], [ %i.v, %bb.c ] ; 3 uses
  %i.af = phi ptr [ %i.aa, %bb.d ], [ %i.x, %bb.c ]
  %.sroa.010.0.i.i.i = phi i64 [ %.sroa.010.0.copyload11.i.i.i, %bb.d ], [ 4, %bb.c ] ; 2 uses
  %i.ag = icmp ne i64 %.sroa.010.0.i.i.i, 4
  call void @llvm.assume(i1 %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.612.i.i.i, i64 96, i1 false), !noalias !5468
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.612.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616.i.i.i)
  %i.ah = icmp eq ptr %i.w, %.val14.i.i.i.i
  br i1 %i.ah, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit7.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 104 ; 2 uses
  %.sroa.014.0.copyload15.i.i.i = load i64, ptr %i.w, align 8, !noalias !5469
  %.sroa.616.0..sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.616.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.616.0..sroa_idx17.i.i.i, i64 96, i1 false), !noalias !5469
  br label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit7.i.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit7.i.i.i: ; preds = %bb.g, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.aj = phi ptr [ %i.ai, %bb.g ], [ %i.u, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 3 uses
  %i.ak = phi ptr [ %i.ai, %bb.g ], [ %i.w, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  %.sroa.014.0.i.i.i = phi i64 [ %.sroa.014.0.copyload15.i.i.i, %bb.g ], [ 4, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake.exit.i.i.i ] ; 2 uses
  %i.al = icmp ne i64 %.sroa.014.0.i.i.i, 4
  call void @llvm.assume(i1 %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5468
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapIB1k_INtNtNtBc_5slice4iter4IterINtNtBc_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2G_5ErrorEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00ENCB3A_s_0ENCB3A_s0_0ENCB3A_s1_0ENtNtNtBa_6traits8iterator8Iterator4foldxNCINvNvB5x_6min_by4foldxNvYxNtNtBc_3cmp3Ord3cmpE0ECs7p2uQeJxui2_9deltalake:bb.a
bb.ad:                                            ; preds = %bb.ac
  %i.cw = extractvalue { i64, i1 } %i.cu, 0       ; 2 uses
  %.not102.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not102.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph141.i.i.i.i.i.i.i.i.i:                      ; preds = %.preheader114.i.i.i.i.i.i.i.i.i, %bb.ae
  %.sroa.0.2140.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dd, %bb.ae ], [ %i.ch, %.preheader114.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.26.2139.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dc, %bb.ae ], [ %i.ci, %.preheader114.i.i.i.i.i.i.i.i.i ]
  %.sroa.084.2138.i.i.i.i.i.i.i.i.i = phi i64 [ %i.df, %bb.ae ], [ 0, %.preheader114.i.i.i.i.i.i.i.i.i ]
  %i.cx = load i8, ptr %.sroa.0.2140.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !5658, !noalias !5661, !noundef !4
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add nsw i32 %i.cy, -48                  ; 2 uses
  %i.da = icmp ugt i32 %i.cz, 9
  br i1 %i.da, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph141.i.i.i.i.i.i.i.i.i
  %i.db = mul i64 %.sroa.084.2138.i.i.i.i.i.i.i.i.i, 10
  %i.dc = add nsw i64 %.sroa.26.2139.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i.i.i.i.i.i.i.i, i64 1
  %i.de = zext nneg i32 %i.cz to i64
  %i.df = sub i64 %i.db, %i.de                    ; 2 uses
  %.not103.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not103.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph141.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.z, %bb.y
  %.sroa.26.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cg, %bb.z ], [ %i.cb, %bb.y ] ; 4 uses
  %.sroa.0.0.i4.i.i.i.i.i.i.i.i = phi ptr [ %i.cf, %bb.z ], [ %i.cc, %bb.y ] ; 2 uses
  %i.dg = icmp samesign ult i64 %.sroa.26.0.i.i.i.i.i.i.i.i.i, 16
  br i1 %i.dg, label %.preheader.i.i.i.i.i.i.i.i.i, label %.preheader111.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.af
  %.not105146.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not105146.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph150.i.i.i.i.i.i.i.i.i

.preheader111.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.af, %bb.ai
  %.sroa.0.3145.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dh, %bb.ai ], [ %.sroa.0.0.i4.i.i.i.i.i.i.i.i, %bb.af ] ; 2 uses
  %.sroa.26.3144.i.i.i.i.i.i.i.i.i = phi i64 [ %i.di, %bb.ai ], [ %.sroa.26.0.i.i.i.i.i.i.i.i.i, %bb.af ]
  %.sroa.084.3143.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dt, %bb.ai ], [ 0, %bb.af ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i.i.i.i.i.i.i.i, i64 1
  %i.di = add nsw i64 %.sroa.26.3144.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.dj = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i.i.i.i.i.i.i.i, i64 10) ; 2 uses
  %i.dk = extractvalue { i64, i1 } %i.dj, 0
  %i.dl = extractvalue { i64, i1 } %i.dj, 1
  br i1 %i.dl, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %bb.ag, !prof !12

bb.ag:                                            ; preds = %.preheader111.i.i.i.i.i.i.i.i.i
  %i.dm = load i8, ptr %.sroa.0.3145.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !5658, !noalias !5661, !noundef !4
  %i.dn = zext i8 %i.dm to i32
  %i.do = add nsw i32 %i.dn, -48                  ; 2 uses
  %i.dp = icmp ult i32 %i.do, 10
  br i1 %i.dp, label %bb.ah, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.dq = zext nneg i32 %i.do to i64
  %i.dr = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dk, i64 %i.dq) ; 2 uses
  %i.ds = extractvalue { i64, i1 } %i.dr, 1
  br i1 %i.ds, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %bb.ai, !prof !12

bb.ai:                                            ; preds = %bb.ah
  %i.dt = extractvalue { i64, i1 } %i.dr, 0       ; 2 uses
  %.not104.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.di, 0
  br i1 %.not104.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.preheader111.i.i.i.i.i.i.i.i.i

.lr.ph150.i.i.i.i.i.i.i.i.i:                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i, %bb.aj
  %.sroa.0.4149.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ea, %bb.aj ], [ %.sroa.0.0.i4.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.26.4148.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dz, %bb.aj ], [ %.sroa.26.0.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ]
  %.sroa.084.4147.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ec, %bb.aj ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i ]
  %i.du = load i8, ptr %.sroa.0.4149.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !5658, !noalias !5661, !noundef !4
  %i.dv = zext i8 %i.du to i32
  %i.dw = add nsw i32 %i.dv, -48                  ; 2 uses
  %i.dx = icmp ugt i32 %i.dw, 9
  br i1 %i.dx, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph150.i.i.i.i.i.i.i.i.i
  %i.dy = mul i64 %.sroa.084.4147.i.i.i.i.i.i.i.i.i, 10
  %i.dz = add nsw i64 %.sroa.26.4148.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i.i.i.i.i.i.i.i, i64 1
  %i.eb = zext nneg i32 %i.dw to i64
  %i.ec = add i64 %i.dy, %i.eb                    ; 2 uses
  %.not105.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not105.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph150.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.v, %bb.u, %bb.s, %bb.r, %bb.n
  call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef %i.bp, i64 noundef %i.bn, i64 noundef %i.bo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #53, !noalias !5655
  unreachable

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.ad, %bb.ae, %bb.ai, %bb.aj, %.preheader.i.i.i.i.i.i.i.i.i, %.preheader114.i.i.i.i.i.i.i.i.i
  %i.ed = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i ], [ %i.ec, %bb.aj ], [ %i.dt, %bb.ai ], [ %i.df, %bb.ae ], [ 0, %.preheader114.i.i.i.i.i.i.i.i.i ], [ %i.cw, %bb.ad ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ef = load i32, ptr %i.ee, align 8, !range !5663, !alias.scope !5633, !noalias !5634, !noundef !4 ; 2 uses
  %i.eg = ashr i32 %i.ef, 13                      ; 3 uses
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  %i.ei = icmp slt i32 %i.eg, 1
  br i1 %i.ei, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.ej = sub nsw i32 1, %i.eg
  %i.ek = udiv i32 %i.ej, 400
  %i.el = add nuw nsw i32 %i.ek, 1                ; 2 uses
  %i.em = mul nuw nsw i32 %i.el, 400
  %i.en = add nsw i32 %i.em, %i.eh
  %.neg.i.i.i.i.i.i.i.i = mul nsw i32 %i.el, -146097
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.loopexit.i.i.i.i.i.i.i
  %.sroa.05.0.i.i.i.i.i.i.i.i = phi i32 [ %.neg.i.i.i.i.i.i.i.i, %bb.al ], [ 0, %.loopexit.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i32 [ %i.en, %bb.al ], [ %i.eh, %.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  %i.eo = sdiv i32 %.sroa.0.0.i.i.i.i.i.i.i.i, 100 ; 2 uses
  %i.ep = mul nsw i32 %.sroa.0.0.i.i.i.i.i.i.i.i, 1461
  %i.eq = ashr i32 %i.ep, 2
  %i.er = ashr i32 %i.eo, 2
  %i.es = lshr i32 %i.ef, 4
  %i.et = and i32 %i.es, 511
  %i.eu = getelementptr inbounds nuw i8, ptr %i.aa, i64 84
  %i.ev = load i32, ptr %i.eu, align 4, !alias.scope !5633, !noalias !5634, !noundef !4
  %i.ew = zext i32 %i.ev to i64
  %i.ex = add nuw nsw i32 %i.et, -719163
  %i.ey = add nsw i32 %i.ex, %.sroa.05.0.i.i.i.i.i.i.i.i
  %i.ez = sub nsw i32 %i.ey, %i.eo
  %i.fa = add nsw i32 %i.ez, %i.eq
  %narrow.i.i.i.i.i.i.i = add nsw i32 %i.fa, %i.er
  %i.fb = sext i32 %narrow.i.i.i.i.i.i.i to i64
  %i.fc = mul nsw i64 %i.fb, 86400
  %i.fd = add nsw i64 %i.fc, %i.ew
  %i.fe = mul nsw i64 %i.fd, 1000
  %i.ff = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.fg = load i32, ptr %i.ff, align 8, !alias.scope !5633, !noalias !5634, !noundef !4
  %i.fh = udiv i32 %i.fg, 1000000
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = add nsw i64 %i.fe, %i.fi
  call void @llvm.experimental.noalias.scope.decl(metadata !5664)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !5667, !noalias !5668, !nonnull !4, !align !90, !noundef !4
  %i.fk = load i64, ptr %.val.i.i.i.i.i.i.i, align 8, !noalias !5669, !noundef !4
  %.not.i6.i.i.i.i.i.i = icmp slt i64 %i.fj, %i.fk
  br i1 %.not.i6.i.i.i.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5670
  store i64 %.sroa.02.0.i.i.i.i, ptr %i.b, align 8, !noalias !5675
  store i64 %i.ed, ptr %i.a, align 8, !noalias !5675
  %i.fl = call noundef i8 @_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNvYxNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRxB1p_EE9call_onceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !5678
  %i.fm = icmp slt i8 %i.fl, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.fm, i64 %.sroa.02.0.i.i.i.i, i64 %i.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5670
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %bb.ac, %bb.ab, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph141.i.i.i.i.i.i.i.i.i, %bb.ah, %bb.ag, %.preheader111.i.i.i.i.i.i.i.i.i, %.lr.ph150.i.i.i.i.i.i.i.i.i, %bb.an, %bb.am, %bb.x, %bb.x, %bb.w, %bb.m, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i, %bb.c
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %.sroa.02.0.i.i.i.i, %bb.c ], [ %.sroa.02.0.i.i.i.i, %bb.am ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %bb.an ], [ %.sroa.02.0.i.i.i.i, %bb.m ], [ %.sroa.02.0.i.i.i.i, %_RNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for0s_00Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i, %bb.x ], [ %.sroa.02.0.i.i.i.i, %bb.x ], [ %.sroa.02.0.i.i.i.i, %bb.w ], [ %.sroa.02.0.i.i.i.i, %bb.ah ], [ %.sroa.02.0.i.i.i.i, %.lr.ph150.i.i.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i, %.lr.ph141.i.i.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i, %.preheader111.i.i.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i, %bb.ag ], [ %.sroa.02.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i, %bb.ab ], [ %.sroa.02.0.i.i.i.i, %bb.ac ] ; 2 uses
  %i.fn = add nuw i64 %.sroa.04.0.i.i.i.i, 1      ; 2 uses
  %i.fo = icmp eq i64 %i.fn, %i.q
  br i1 %i.fo, label %_RINvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB6_6FilterINtNtB8_10filter_map9FilterMapIB14_INtNtNtBc_5slice4iter4IterINtNtBc_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2q_5ErrorEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00ENCB3k_s_0ENCB3k_s0_0ENtNtNtBa_6traits8iterator8Iterator4foldxNCINvNtB8_3map8map_foldTxxExxNCB3k_s1_0NCINvNvB56_6min_by4foldxNvYxNtNtBc_3cmp3Ord3cmpE0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.c

_RINvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB6_6FilterINtNtB8_10filter_map9FilterMapIB14_INtNtNtBc_5slice4iter4IterINtNtBc_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2q_5ErrorEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00ENCB3k_s_0ENCB3k_s0_0ENtNtNtBa_6traits8iterator8Iterator4foldxNCINvNtB8_3map8map_foldTxxExxNCB3k_s1_0NCINvNvB56_6min_by4foldxNvYxNtNtBc_3cmp3Ord3cmpE0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %bb.a
  %.sroa.0.0.i.i.i.i = phi i64 [ %1, %bb.a ], [ %.sroa.0.0.i.i.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map15filter_map_foldRINtNtBa_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB1z_5ErrorERB1x_xNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00NCIB2_B2q_TxxExNCB2y_s_0NCINvNtB6_6filter11filter_foldB48_xNCB2y_s0_0NCINvNtB6_3map8map_foldB48_xxNCB2y_s1_0NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldxNvYxNtNtBa_3cmp3Ord3cmpE0E0E0E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5608
  ret i64 %.sroa.0.0.i.i.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB2U_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0ENCB2L_s2_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5Y_8try_folduNCINvNvB5Y_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowB9H_ENcNtBaq_5Break0E0Baq_E0IBar_Baq_EECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef nonnull %2, ptr noalias noundef align 8 dereferenceable(40) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5679
  store ptr %i.b, ptr %i.a, align 8, !noalias !5679
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.c, align 8, !noalias !5684
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5684
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !5684
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters6filter15filter_try_foldBX_uINtNtNtB1H_3ops12control_flow11ControlFlowIB3t_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB59_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0NCINvNtB2L_3map12map_try_foldBX_INtNtB1H_6result6ResultB4d_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB3s_NCB50_s2_0NCINvXB2L_INtB2L_12GenericShuntINtB86_3MapINtB2J_6FilterBI_B4Y_EBa2_EIB8y_NtNtB1H_7convert10InfallibleB8Y_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB4d_B48_NcNtB48_5Break0E0B48_E0E0E0B3s_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !5685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5679
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEINtNtBc_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBc_6option6OptionNtNtB3w_6string6StringEEENtNtCs7p2uQeJxui2_9deltalake5error11PythonErrorENCNvMsl_B4Q_NtB4Q_13RawDeltaTable21get_active_partitionss7_0ENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6G_7HashSetB3r_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB3r_E6extendBX_E0ENtNtB8m_8iterator8Iterator4folduNCINvNvB95_8for_each4callTB3r_uENCINvXs1i_NtB6I_3mapINtBah_7HashMapB3r_uB7t_EIB8i_Ba0_E6extendBN_E0E0EB4Q_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 16               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [96 x i8], align 16               ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(72) %0, i64 72, i1 false), !noalias !5690
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5691)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !alias.scope !5691, !noalias !5694 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !5691, !noalias !5694 ; 3 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.5.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !5691, !noalias !5694 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2P_13RawDeltaTable21get_active_partitionss7_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_7flatten11flatten_oneINtNtBc_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBc_6option6OptionNtNtB5A_6string6StringEEENtNtB2P_5error11PythonErrorEuNCINvB6_8map_foldB5v_TB5v_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB7V_7HashSetB5v_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB44_7collect6ExtendB5v_E6extendINtB4J_7FlatMapBX_B59_B2H_EE0NCINvNvB40_8for_each4callB7E_NCINvXs1i_NtB7X_3mapINtBbc_7HashMapB5v_uB8I_EIB9x_B7E_E6extendIBO_Ba6_B7M_EE0E0E0E0EB2P_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i), "nonnull"(ptr %.sroa.5.sroa.4.0.copyload.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5696)
  %i.h = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.5.sroa.0.0.copyload.i.i
  br i1 %i.h, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2P_13RawDeltaTable21get_active_partitionss7_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_7flatten11flatten_oneINtNtBc_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBc_6option6OptionNtNtB5A_6string6StringEEENtNtB2P_5error11PythonErrorEuNCINvB6_8map_foldB5v_TB5v_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB7V_7HashSetB5v_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB44_7collect6ExtendB5v_E6extendINtB4J_7FlatMapBX_B59_B2H_EE0NCINvNvB40_8for_each4callB7E_NCINvXs1i_NtB7X_3mapINtBbc_7HashMapB5v_uB8I_EIB9x_B7E_E6extendIBO_Ba6_B7M_EE0E0E0E0EB2P_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %.sroa.5.sroa.0.0.copyload.i.i to i64
  %i.j = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = udiv exact i64 %i.k, 48
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload.i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !5696, !noalias !5699, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !5696, !noalias !5699, !noundef !4
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBa_6option6OptionNtNtB2F_6string6StringEEENtNtCs7p2uQeJxui2_9deltalake5error11PythonErrorEuNCNvMsl_B3Z_NtB3Z_13RawDeltaTable21get_active_partitionss7_0NCINvNtB6_7flatten11flatten_oneB2e_uNCIB2_B2A_TB2A_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6H_7HashSetB2A_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB2A_E6extendINtB5L_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2e_B4I_EE0NCINvNvNtNtB8n_8iterator8Iterator8for_each4callB6q_NCINvXs1i_NtB6J_3mapINtBaT_7HashMapB2A_uB7u_EIB8j_B6q_E6extendINtB4_3MapB90_B6y_EE0E0E0E0E0B3Z_.exit.i.i.i.i, %bb.c
  %.sroa.01.0.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ae, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBa_6option6OptionNtNtB2F_6string6StringEEENtNtCs7p2uQeJxui2_9deltalake5error11PythonErrorEuNCNvMsl_B3Z_NtB3Z_13RawDeltaTable21get_active_partitionss7_0NCINvNtB6_7flatten11flatten_oneB2e_uNCIB2_B2A_TB2A_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6H_7HashSetB2A_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB2A_E6extendINtB5L_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2e_B4I_EE0NCINvNvNtNtB8n_8iterator8Iterator8for_each4callB6q_NCINvXs1i_NtB6J_3mapINtBaT_7HashMapB2A_uB7u_EIB8j_B6q_E6extendINtB4_3MapB90_B6y_EE0E0E0E0E0B3Z_.exit.i.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.01.0.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5710
  store ptr %i.n, ptr %i.d, align 8, !noalias !5711
  store ptr %i.q, ptr %i.r, align 8, !noalias !5711
  store ptr %i.w, ptr %i.s, align 8, !noalias !5711
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB8_6string6StringEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1b_4iter8adapters3map3MapINtNtNtB1b_5slice4iter4IterB14_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3P_13RawDeltaTable21get_active_partitionss7_00EE9from_iterB3P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
          to label %.noexc.i.i unwind label %bb.r, !noalias !5712

.noexc.i.i:                                       ; preds = %bb.d
  store i64 -9223372036854775707, ptr %i.e, align 16, !noalias !5710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(96) %i.e, i64 96, i1 false), !noalias !5710
  %i.x = load i64, ptr %i.b, align 16, !range !5720, !noalias !5716, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.x, -9223372036854775707
  br i1 %.not.i.i.i.i.i.i.i, label %bb.n, label %bb.e

bb.e:                                             ; preds = %.noexc.i.i
  %i.y = call i64 @llvm.usub.sat.i64(i64 %i.x, i64 -9223372036854775712)
  switch i64 %i.y, label %bb.f [
    i64 0, label %bb.i
    i64 1, label %bb.j
    i64 2, label %bb.k
    i64 3, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i unwind label %bb.g, !noalias !5721

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body.i.i unwind label %bb.h, !noalias !5721

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !5721
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.thread.i.i.i.i.i unwind label %bb.r, !noalias !5712

bb.i:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.b)
          to label %.thread.i.i.i.i.i unwind label %bb.r, !noalias !5712

bb.j:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.u)
          to label %.thread.i.i.i.i.i unwind label %bb.r, !noalias !5712

bb.k:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.u)
          to label %.thread.i.i.i.i.i unwind label %bb.r, !noalias !5712

bb.l:                                             ; preds = %bb.e
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.u)
          to label %.thread.i.i.i.i.i unwind label %bb.r, !noalias !5712

bb.m:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result8IntoIterINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtB4_6option6OptionNtNtB19_6string6StringEEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.c) #51
          to label %.body.i.i unwind label %bb.q, !noalias !5722

.thread.i.i.i.i.i:                                ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5716
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBa_6option6OptionNtNtB2F_6string6StringEEENtNtCs7p2uQeJxui2_9deltalake5error11PythonErrorEuNCNvMsl_B3Z_NtB3Z_13RawDeltaTable21get_active_partitionss7_0NCINvNtB6_7flatten11flatten_oneB2e_uNCIB2_B2A_TB2A_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6H_7HashSetB2A_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB2A_E6extendINtB5L_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2e_B4I_EE0NCINvNvNtNtB8n_8iterator8Iterator8for_each4callB6q_NCINvXs1i_NtB6J_3mapINtBaT_7HashMapB2A_uB7u_EIB8j_B6q_E6extendINtB4_3MapB90_B6y_EE0E0E0E0E0B3Z_.exit.i.i.i.i

bb.n:                                             ; preds = %.noexc.i.i
  %.sroa.03.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !noalias !5716 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.v, i64 16, i1 false), !noalias !5710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5716
  store i64 -9223372036854775808, ptr %i.c, align 8, !alias.scope !5723, !noalias !5726
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.03.0.copyload.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBa_6option6OptionNtNtB2F_6string6StringEEENtNtCs7p2uQeJxui2_9deltalake5error11PythonErrorEuNCNvMsl_B3Z_NtB3Z_13RawDeltaTable21get_active_partitionss7_0NCINvNtB6_7flatten11flatten_oneB2e_uNCIB2_B2A_TB2A_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6H_7HashSetB2A_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB2A_E6extendINtB5L_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2e_B4I_EE0NCINvNvNtNtB8n_8iterator8Iterator8for_each4callB6q_NCINvXs1i_NtB6J_3mapINtBaT_7HashMapB2A_uB7u_EIB8j_B6q_E6extendINtB4_3MapB90_B6y_EE0E0E0E0E0B3Z_.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.v, i64 16, i1 false), !noalias !5710
  store i64 %.sroa.03.0.copyload.i.i.i.i.i.i.i, ptr %i.a, align 8, !noalias !5713
  %i.ac = invoke noundef zeroext i1 @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBS_6string6StringEEEuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.p unwind label %bb.m, !noalias !5722 ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5728
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBa_6option6OptionNtNtB2F_6string6StringEEENtNtCs7p2uQeJxui2_9deltalake5error11PythonErrorEuNCNvMsl_B3Z_NtB3Z_13RawDeltaTable21get_active_partitionss7_0NCINvNtB6_7flatten11flatten_oneB2e_uNCIB2_B2A_TB2A_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6H_7HashSetB2A_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB2A_E6extendINtB5L_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2e_B4I_EE0NCINvNvNtNtB8n_8iterator8Iterator8for_each4callB6q_NCINvXs1i_NtB6J_3mapINtBaT_7HashMapB2A_uB7u_EIB8j_B6q_E6extendINtB4_3MapB90_B6y_EE0E0E0E0E0B3Z_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !5722
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBa_6option6OptionNtNtB2F_6string6StringEEENtNtCs7p2uQeJxui2_9deltalake5error11PythonErrorEuNCNvMsl_B3Z_NtB3Z_13RawDeltaTable21get_active_partitionss7_0NCINvNtB6_7flatten11flatten_oneB2e_uNCIB2_B2A_TB2A_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6H_7HashSetB2A_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB2A_E6extendINtB5L_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2e_B4I_EE0NCINvNvNtNtB8n_8iterator8Iterator8for_each4callB6q_NCINvXs1i_NtB6J_3mapINtBaT_7HashMapB2A_uB7u_EIB8j_B6q_E6extendINtB4_3MapB90_B6y_EE0E0E0E0E0B3Z_.exit.i.i.i.i: ; preds = %bb.p, %bb.n, %.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5709
  %i.ae = add nuw i64 %.sroa.01.0.i.i.i.i, 1      ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.l
  br i1 %i.af, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2P_13RawDeltaTable21get_active_partitionss7_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_7flatten11flatten_oneINtNtBc_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBc_6option6OptionNtNtB5A_6string6StringEEENtNtB2P_5error11PythonErrorEuNCINvB6_8map_foldB5v_TB5v_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB7V_7HashSetB5v_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB44_7collect6ExtendB5v_E6extendINtB4J_7FlatMapBX_B59_B2H_EE0NCINvNvB40_8for_each4callB7E_NCINvXs1i_NtB7X_3mapINtBbc_7HashMapB5v_uB8I_EIB9x_B7E_E6extendIBO_Ba6_B7M_EE0E0E0E0EB2P_.exit.i.i, label %bb.d

bb.r:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.r, %bb.m, %bb.g
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ag, %bb.r ], [ %i.ab, %bb.m ], [ %i.z, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result8IntoIterINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReIBH_NtNtB1v_6string6StringEEEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f) #51
          to label %bb.aa unwind label %bb.z, !noalias !5733

_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2P_13RawDeltaTable21get_active_partitionss7_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_7flatten11flatten_oneINtNtBc_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBc_6option6OptionNtNtB5A_6string6StringEEENtNtB2P_5error11PythonErrorEuNCINvB6_8map_foldB5v_TB5v_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB7V_7HashSetB5v_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB44_7collect6ExtendB5v_E6extendINtB4J_7FlatMapBX_B59_B2H_EE0NCINvNvB40_8for_each4callB7E_NCINvXs1i_NtB7X_3mapINtBbc_7HashMapB5v_uB8I_EIB9x_B7E_E6extendIBO_Ba6_B7M_EE0E0E0E0EB2P_.exit.i.i: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewINtNtBa_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBa_6option6OptionNtNtB2F_6string6StringEEENtNtCs7p2uQeJxui2_9deltalake5error11PythonErrorEuNCNvMsl_B3Z_NtB3Z_13RawDeltaTable21get_active_partitionss7_0NCINvNtB6_7flatten11flatten_oneB2e_uNCIB2_B2A_TB2A_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB6H_7HashSetB2A_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtB8_6traits7collect6ExtendB2A_E6extendINtB5L_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2e_B4I_EE0NCINvNvNtNtB8n_8iterator8Iterator8for_each4callB6q_NCINvXs1i_NtB6J_3mapINtBaT_7HashMapB2A_uB7u_EIB8j_B6q_E6extendINtB4_3MapB90_B6y_EE0E0E0E0E0B3Z_.exit.i.i.i.i, %bb.b, %bb.a
  %i.ah = load i64, ptr %i.f, align 8, !range !3, !alias.scope !5734, !noalias !5694, !noundef !4
  %switch.i.i.i = icmp slt i64 %i.ah, -9223372036854775806
  br i1 %switch.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result8IntoIterINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReIBH_NtNtB1v_6string6StringEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2P_13RawDeltaTable21get_active_partitionss7_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_7flatten11flatten_oneINtNtBc_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBc_6option6OptionNtNtB5A_6string6StringEEENtNtB2P_5error11PythonErrorEuNCINvB6_8map_foldB5v_TB5v_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB7V_7HashSetB5v_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB44_7collect6ExtendB5v_E6extendINtB4J_7FlatMapBX_B59_B2H_EE0NCINvNvB40_8for_each4callB7E_NCINvXs1i_NtB7X_3mapINtBbc_7HashMapB5v_uB8I_EIB9x_B7E_E6extendIBO_Ba6_B7M_EE0E0E0E0EB2P_.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB7_6string6StringEEENtNtNtBN_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtB4_6option6OptionNtNtBL_6string6StringEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i unwind label %bb.t, !noalias !5733

bb.t:                                             ; preds = %bb.s
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB7_6string6StringEEENtNtNtBU_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.body10.i.i unwind label %bb.u, !noalias !5733

bb.u:                                             ; preds = %bb.t
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !5733
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtB4_6option6OptionNtNtBL_6string6StringEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i: ; preds = %bb.s
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB7_6string6StringEEENtNtNtBU_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result8IntoIterINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReIBH_NtNtB1v_6string6StringEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.v, !noalias !5733

bb.v:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtB4_6option6OptionNtNtBL_6string6StringEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i.i

.body10.i.i:                                      ; preds = %bb.v, %bb.t
  %eh.lpad-body11.i.i = phi { ptr, i32 } [ %i.ak, %bb.v ], [ %i.ai, %bb.t ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result8IntoIterINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReIBH_NtNtB1v_6string6StringEEEEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.al) #51
          to label %common.resume.i.i unwind label %bb.z, !noalias !5733

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result8IntoIterINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReIBH_NtNtB1v_6string6StringEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtB4_6option6OptionNtNtBL_6string6StringEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i.i, %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB2P_13RawDeltaTable21get_active_partitionss7_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_7flatten11flatten_oneINtNtBc_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBc_6option6OptionNtNtB5A_6string6StringEEENtNtB2P_5error11PythonErrorEuNCINvB6_8map_foldB5v_TB5v_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB7V_7HashSetB5v_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB44_7collect6ExtendB5v_E6extendINtB4J_7FlatMapBX_B59_B2H_EE0NCINvNvB40_8for_each4callB7E_NCINvXs1i_NtB7X_3mapINtBbc_7HashMapB5v_uB8I_EIB9x_B7E_E6extendIBO_Ba6_B7M_EE0E0E0E0EB2P_.exit.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  %i.an = load i64, ptr %i.am, align 8, !range !3, !alias.scope !5737, !noalias !5694, !noundef !4
  %switch.i13.i.i = icmp slt i64 %i.an, -9223372036854775806
  br i1 %switch.i13.i.i, label %_RINvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtBc_5slice4iter4IterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewEINtNtBc_6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtBc_6option6OptionNtNtB3g_6string6StringEEENtNtCs7p2uQeJxui2_9deltalake5error11PythonErrorENCNvMsl_B4A_NtB4A_13RawDeltaTable21get_active_partitionss7_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldB3b_TB3b_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB7D_7HashSetB3b_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB6l_7collect6ExtendB3b_E6extendBR_E0NCINvNvB6h_8for_each4callB7m_NCINvXs1i_NtB7F_3mapINtBaw_7HashMapB3b_uB8q_EIB9f_B7m_E6extendINtB70_3MapBR_B7u_EE0E0E0EB4A_.exit, label %bb.w

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result8IntoIterINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReIBH_NtNtB1v_6string6StringEEEEEECs7p2uQeJxui2_9deltalake.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB7_6string6StringEEENtNtNtBN_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTReINtNtB4_6option6OptionNtNtBL_6string6StringEEEECs7p2uQeJxui2_9deltalake.exit.i.i.i15.i.i unwind label %bb.x, !noalias !5733

bb.x:                                             ; preds = %bb.w
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTReINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB7_6string6StringEEENtNtNtBU_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %common.resume.i.i unwind label %bb.y, !noalias !5733

bb.y:                                             ; preds = %bb.x
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !5733
  unreachable

common.resume.i.i:                                ; preds = %bb.aa, %bb.x, %.body10.i.i
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2k_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5f_8try_folduNCINvNvB5f_12try_for_each4calljINtNtNtBc_3ops12control_flow11ControlFlowjENcNtB8Z_5Break0E0B8Z_E0IB90_B8Z_EECs7p2uQeJxui2_9deltalake:bb.a
  store i64 %i.cd, ptr %i.k, align 8, !noalias !6732
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.cg, ptr %.sroa.413.0..sroa_idx.i.i.i, align 8, !noalias !6732
  %.sroa.514.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.514.0..sroa_idx.i.i.i, align 8, !noalias !6732
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6732
  store ptr %i.m, ptr %i.j, align 8, !noalias !6732
  %.sroa.418.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.418.0..sroa_idx.i.i.i, align 8, !noalias !6732
  %i.ch = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.ch, align 8, !noalias !6732
  %.sroa.422.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.422.0..sroa_idx.i.i.i, align 8, !noalias !6732
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull @266, ptr noundef nonnull %i.j)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.aa, !noalias !6735

bb.aa:                                            ; preds = %bb.z
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #51
          to label %.body37.i.i.i unwind label %bb.v, !noalias !6735

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6732
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.ab, !noalias !6735

bb.ab:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body37.i.i.i unwind label %bb.ac, !noalias !6735

bb.ac:                                            ; preds = %bb.ab
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !6735
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit40.i.i.i unwind label %bb.w, !noalias !6735

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit40.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6732
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i unwind label %bb.ad, !noalias !6735

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit40.i.i.i
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume.i.i unwind label %bb.ae, !noalias !6735

bb.ae:                                            ; preds = %bb.ad
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !6735
  unreachable

_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit40.i.i.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m), !noalias !6735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6732
  %.sroa.52.8.copyload.i.i = load i64, ptr %i.n, align 8, !noalias !6749
  %.sroa.9.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa_idx.i.i, i64 16, i1 false), !noalias !6749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i.i, i64 24, i1 false), !noalias !6731
  br label %bb.ag

bb.af:                                            ; preds = %bb.y
  unreachable

_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.s
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !6735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6731
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i.i, i64 24, i1 false), !noalias !6731
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnINtNtBa_6result6ResultjNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3d_jEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB46_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1Q_NtNtBa_7convert10InfallibleB2c_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8P_12try_for_each4calljB3R_NcNtB3R_5Break0E0B3R_E0E0Cs7p2uQeJxui2_9deltalake.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs7p2uQeJxui2_9deltalake.exit.i.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i
  %.sroa.52.19.i.i = phi i64 [ %.sroa.52.8.copyload.i.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i ], [ %.sroa.52.0.i.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.01.08.i.i = phi i64 [ 7, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i ], [ %storemerge.i.i.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %i.cn = load i64, ptr %2, align 8, !range !4505, !alias.scope !6750, !noalias !6753, !noundef !4
  %i.co = icmp eq i64 %i.cn, 20
  br i1 %i.co, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %2)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.ai, !noalias !6756

bb.ai:                                            ; preds = %bb.ah
  %i.cp = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.01.08.i.i, ptr %2, align 8, !noalias !6753
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.52.19.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !noalias !6753
  %.sroa.610.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, i64 24, i1 false), !noalias !6731
  br label %common.resume.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.ah, %bb.ag
  store i64 %.sroa.01.08.i.i, ptr %2, align 8, !noalias !6753
  %.sroa.5.0..8.val.sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.sroa.52.19.i.i, ptr %.sroa.5.0..8.val.sroa_idx8.i.i.i, align 8, !noalias !6753
  %.sroa.610.0..8.val.sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610.0..8.val.sroa_idx11.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i, i64 24, i1 false), !noalias !6731
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnINtNtBa_6result6ResultjNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3d_jEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB46_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1Q_NtNtBa_7convert10InfallibleB2c_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8P_12try_for_each4calljB3R_NcNtB3R_5Break0E0B3R_E0E0Cs7p2uQeJxui2_9deltalake.exit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnINtNtBa_6result6ResultjNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3d_jEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB46_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1Q_NtNtBa_7convert10InfallibleB2c_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8P_12try_for_each4calljB3R_NcNtB3R_5Break0E0B3R_E0E0Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs7p2uQeJxui2_9deltalake.exit.i.i
  %.sroa.4.1.i.i.i = phi i64 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ %.sroa.52.0.i.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs7p2uQeJxui2_9deltalake.exit.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ 1, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0Cs7p2uQeJxui2_9deltalake.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultjNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4u_jEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0NCINvXB2v_INtB2v_12GenericShuntINtB2t_3MapB3_B5g_EIB37_NtNtBa_7convert10InfallibleB3t_EEB1z_8try_folduNCINvNvB1z_12try_for_each4calljB58_NcNtB58_5Break0E0B58_E0E0B4t_ECs7p2uQeJxui2_9deltalake.exit

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultjNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4u_jEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0NCINvXB2v_INtB2v_12GenericShuntINtB2t_3MapB3_B5g_EIB37_NtNtBa_7convert10InfallibleB3t_EEB1z_8try_folduNCINvNvB1z_12try_for_each4calljB58_NcNtB58_5Break0E0B58_E0E0B4t_ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnINtNtBa_6result6ResultjNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3d_jEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB46_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1Q_NtNtBa_7convert10InfallibleB2c_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8P_12try_for_each4calljB3R_NcNtB3R_5Break0E0B3R_E0E0Cs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.3.0.i = phi i64 [ %.sroa.4.1.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnINtNtBa_6result6ResultjNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3d_jEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB46_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1Q_NtNtBa_7convert10InfallibleB2c_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8P_12try_for_each4calljB3R_NcNtB3R_5Break0E0B3R_E0E0Cs7p2uQeJxui2_9deltalake.exit.i ], [ undef, %bb.a ]
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnINtNtBa_6result6ResultjNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3d_jEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB46_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indices0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3Z_EIB1Q_NtNtBa_7convert10InfallibleB2c_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8P_12try_for_each4calljB3R_NcNtB3R_5Break0E0B3R_E0E0Cs7p2uQeJxui2_9deltalake.exit.i ], [ 2, %bb.a ]
  %i.cq = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.cr = insertvalue { i64, i64 } %i.cq, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.cr
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl15TableConstraintENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37new_constraint_from_table_constraints0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5r_8try_folduNCINvNvB5r_12try_for_each4callNtNtB7w_23functional_dependencies10ConstraintINtNtNtBc_3ops12control_flow11ControlFlowB9a_ENcNtB9T_5Break0E0B9T_E0IB9U_B9T_EECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 16               ; 6 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 16               ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 10 uses
  %i.t = alloca [24 x i8], align 16               ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 10 uses
  %i.w = alloca [24 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 16               ; 6 uses
  %i.y = alloca [40 x i8], align 8                ; 8 uses
  %i.z = alloca [40 x i8], align 8                ; 8 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 13 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6757)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6760)
  %i.ad = load ptr, ptr %1, align 8, !alias.scope !6762, !noalias !6757, !nonnull !4, !noundef !4 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !6762, !noalias !6757, !nonnull !4, !noundef !4
  %i.ag = icmp eq ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.bo, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 248
  store ptr %i.ai, ptr %1, align 8, !alias.scope !6762, !noalias !6757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6765)
  %.val.i.i = load ptr, ptr %i.ah, align 8, !noalias !6768 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2.i.i = load ptr, ptr %i.aj, align 8, !noalias !6768 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6770)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !6768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6768
  %i.ak = load i8, ptr %i.ad, align 8, !range !190, !alias.scope !6773, !noalias !6774, !noundef !4
  switch i8 %i.ak, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %.split125.i.i.i
    i8 3, label %.split129.i.i.i
    i8 4, label %.split133.i.i.i
    i8 5, label %.split137.i.i.i
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 72 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !range !11, !alias.scope !6773, !noalias !6774, !noundef !4
  %.not145.not.i.i.i = icmp eq i64 %i.am, -9223372036854775808 ; 4 uses
  br i1 %.not145.not.i.i.i, label %bb.i, label %.split.i.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6776
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i), "nonnull"(ptr %.val2.i.i) ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 208
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !6773, !noalias !6774, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !6773, !noalias !6774, !noundef !4
  call void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indicesCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ao, i64 noundef %i.aq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @278, i64 noundef 11), !noalias !6776
  %i.ar = load i64, ptr %i.y, align 8, !range !4505, !noalias !6776, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ar, 20
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.at = load <2 x i64>, ptr %i.as, align 8, !noalias !6776 ; 3 uses
  %.sroa.611.i.sroa.9.0..sroa_idx40.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.611.i.sroa.9.0.copyload41.i.i = load i64, ptr %.sroa.611.i.sroa.9.0..sroa_idx40.i.i, align 8, !noalias !6776 ; 2 uses
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

.split125.i.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !6776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6777
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, -9223372036854775808) 51, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !6777
  %i.au = load i64, ptr %i.d, align 8, !range !10, !noalias !6777, !noundef !4
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !11, !noalias !6777, !noundef !4 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.av, label %bb.e, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i.i, !prof !12

bb.e:                                             ; preds = %.split125.i.i.i
  %i.az = load i64, ptr %i.ay, align 8, !noalias !6777
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.az) #50, !noalias !6777
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %.split125.i.i.i
  %i.ba = load ptr, ptr %i.ay, align 8, !noalias !6777, !nonnull !4, !noundef !4 ; 2 uses
  %i.bb = icmp ugt i64 %i.ax, 50
  tail call void @llvm.assume(i1 %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6777
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.ba, ptr noundef nonnull readonly align 1 dereferenceable(51) @279, i64 range(i64 0, -9223372036854775808) 51, i1 false), !noalias !6790
  store i64 %i.ax, ptr %i.w, align 8, !noalias !6776
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.ba, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !noalias !6776
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 51, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !6776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !6776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6776
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.aa unwind label %bb.z, !noalias !6776

.split129.i.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6791
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, -9223372036854775808) 45, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !6791
  %i.bc = load i64, ptr %i.c, align 8, !range !10, !noalias !6791, !noundef !4
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !11, !noalias !6791, !noundef !4 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.bd, label %bb.f, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit168.i.i.i, !prof !12

bb.f:                                             ; preds = %.split129.i.i.i
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !6791
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bf, i64 %i.bh) #50, !noalias !6791
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit168.i.i.i: ; preds = %.split129.i.i.i
  %i.bi = load ptr, ptr %i.bg, align 8, !noalias !6791, !nonnull !4, !noundef !4 ; 2 uses
  %i.bj = icmp ugt i64 %i.bf, 44
  tail call void @llvm.assume(i1 %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6791
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(45) %i.bi, ptr noundef nonnull readonly align 1 dereferenceable(45) @280, i64 range(i64 0, -9223372036854775808) 45, i1 false), !noalias !6804
  store i64 %i.bf, ptr %i.s, align 8, !noalias !6776
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.bi, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !6776
  %.sroa.511.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 45, ptr %.sroa.511.0..sroa_idx.i.i.i, align 8, !noalias !6776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6776
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ak unwind label %bb.aj, !noalias !6776

.split133.i.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6805
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, -9223372036854775808) 35, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !6805
  %i.bk = load i64, ptr %i.b, align 8, !range !10, !noalias !6805, !noundef !4
  %i.bl = trunc nuw i64 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !11, !noalias !6805, !noundef !4 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bl, label %bb.g, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit171.i.i.i, !prof !12

bb.g:                                             ; preds = %.split133.i.i.i
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !6805
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bn, i64 %i.bp) #50, !noalias !6805
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit171.i.i.i: ; preds = %.split133.i.i.i
  %i.bq = load ptr, ptr %i.bo, align 8, !noalias !6805, !nonnull !4, !noundef !4 ; 2 uses
  %i.br = icmp ugt i64 %i.bn, 34
  tail call void @llvm.assume(i1 %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6805
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.bq, ptr noundef nonnull readonly align 1 dereferenceable(35) @281, i64 range(i64 0, -9223372036854775808) 35, i1 false), !noalias !6818
  store i64 %i.bn, ptr %i.o, align 8, !noalias !6776
  %.sroa.417.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bq, ptr %.sroa.417.0..sroa_idx.i.i.i, align 8, !noalias !6776
  %.sroa.518.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 35, ptr %.sroa.518.0..sroa_idx.i.i.i, align 8, !noalias !6776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6776
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.at unwind label %bb.as, !noalias !6776

.split137.i.i.i:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6819
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 35, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !6819
  %i.bs = load i64, ptr %i.a, align 8, !range !10, !noalias !6819, !noundef !4
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !range !11, !noalias !6819, !noundef !4 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bt, label %bb.h, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit174.i.i.i, !prof !12

bb.h:                                             ; preds = %.split137.i.i.i
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !6819
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bv, i64 %i.bx) #50, !noalias !6819
  unreachable

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit174.i.i.i: ; preds = %.split137.i.i.i
  %i.by = load ptr, ptr %i.bw, align 8, !noalias !6819, !nonnull !4, !noundef !4 ; 2 uses
  %i.bz = icmp ugt i64 %i.bv, 34
  tail call void @llvm.assume(i1 %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6819
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.by, ptr noundef nonnull readonly align 1 dereferenceable(35) @281, i64 range(i64 0, -9223372036854775808) 35, i1 false), !noalias !6832
  store i64 %i.bv, ptr %i.k, align 8, !noalias !6776
  %.sroa.424.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.by, ptr %.sroa.424.0..sroa_idx.i.i.i, align 8, !noalias !6776
  %.sroa.525.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 35, ptr %.sroa.525.0..sroa_idx.i.i.i, align 8, !noalias !6776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6776
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bc unwind label %bb.bb, !noalias !6776

.split.i.i.i:                                     ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !6776
  store ptr %i.al, ptr %i.ac, align 8, !noalias !6776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !6776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !6776
  store ptr %i.ac, ptr %i.aa, align 8, !noalias !6776
  %.sroa.439.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.439.0..sroa_idx.i.i.i, align 8, !noalias !6776
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull @277, ptr noundef nonnull %i.aa), !noalias !6774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !6776
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !6776, !nonnull !4, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !6776, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !6776
  br label %bb.i

bb.i:                                             ; preds = %.split.i.i.i, %bb.c
  %.sroa.3.0.i.i.i = phi i64 [ %i.cd, %.split.i.i.i ], [ 17, %bb.c ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.cb, %.split.i.i.i ], [ @276, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6776
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i), "nonnull"(ptr %.val2.i.i) ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 208
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !6773, !noalias !6774, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !6773, !noalias !6774, !noundef !4
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE29get_constraint_column_indicesCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.val2.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cf, i64 noundef %i.ch, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i)
          to label %bb.k unwind label %bb.j, !noalias !6774

bb.j:                                             ; preds = %bb.i
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.not145.not.i.i.i, label %common.resume.i.i, label %bb.v

bb.k:                                             ; preds = %bb.i
  %i.cj = load i64, ptr %i.z, align 8, !range !4505, !noalias !6776, !noundef !4 ; 2 uses
  %.not148.i.i.i = icmp eq i64 %i.cj, 20
  %i.ck = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.cl = load <2 x i64>, ptr %i.ck, align 8, !noalias !6776 ; 3 uses
  %.sroa.6.i.sroa.8.0..sroa_idx19.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.6.i.sroa.8.0.copyload20.i.i = load i64, ptr %.sroa.6.i.sroa.8.0..sroa_idx19.i.i, align 8, !noalias !6776 ; 2 uses
  br i1 %.not148.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.646.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.646.0.copyload.i.i.i = load i64, ptr %.sroa.646.0..sroa_idx.i.i.i, align 8, !noalias !6776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6776
  br i1 %.not145.not.i.i.i, label %bb.r, label %bb.s

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6776
  br i1 %.not145.not.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !6776
  %i.cm = extractelement <2 x i64> %i.cl, i64 0
  %i.cn = extractelement <2 x i64> %i.cl, i64 1
  br label %bb.bm

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %bb.p, !noalias !6774

bb.p:                                             ; preds = %bb.o
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume.i.i unwind label %bb.q, !noalias !6774

bb.q:                                             ; preds = %bb.p
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !6774
  unreachable

common.resume.i.i:                                ; preds = %bb.bn, %bb.bi, %.body204.i.i.i, %bb.az, %.body195.i.i.i, %bb.aq, %.body186.i.i.i, %bb.ag, %.body.i.i.i, %bb.v, %bb.t, %bb.p, %bb.j
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.fg, %bb.bn ], [ %i.el, %bb.az ], [ %i.co, %bb.p ], [ %i.cq, %bb.t ], [ %.pn.i.i.i, %.body204.i.i.i ], [ %i.dh, %bb.ag ], [ %i.dw, %bb.aq ], [ %i.ci, %bb.v ], [ %i.ci, %bb.j ], [ %.pn143.i.i.i, %.body.i.i.i ], [ %.pn141.i.i.i, %.body186.i.i.i ], [ %.pn139.i.i.i, %.body195.i.i.i ], [ %i.fa, %bb.bi ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.o
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab), !noalias !6774
  br label %bb.n

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit176.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !6776
  br label %bb.bk

bb.s:                                             ; preds = %bb.l
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit176.i.i.i unwind label %bb.t, !noalias !6774

bb.t:                                             ; preds = %bb.s
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume.i.i unwind label %bb.u, !noalias !6774

bb.u:                                             ; preds = %bb.t
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !6774
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit176.i.i.i: ; preds = %bb.s
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab), !noalias !6774
  br label %bb.r

bb.v:                                             ; preds = %bb.j
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab) #51
          to label %common.resume.i.i unwind label %bb.w, !noalias !6774

bb.w:                                             ; preds = %bb.bf, %.body204.i.i.i, %bb.aw, %.body195.i.i.i, %bb.an, %.body186.i.i.i, %bb.ad, %.body.i.i.i, %bb.v
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !6774
  unreachable

bb.x:                                             ; preds = %bb.d
  %.sroa.655.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.655.0.copyload.i.i.i = load i64, ptr %.sroa.655.0..sroa_idx.i.i.i, align 8, !noalias !6776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6776
  br label %bb.bk

bb.y:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6776
  %i.ct = extractelement <2 x i64> %i.at, i64 0
  %i.cu = extractelement <2 x i64> %i.at, i64 1
  br label %bb.bm

.body.i.i.i:                                      ; preds = %bb.ae, %bb.ad, %bb.z
  %.pn143.i.i.i = phi { ptr, i32 } [ %i.de, %bb.ad ], [ %i.cv, %bb.z ], [ %i.df, %bb.ae ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w) #51
          to label %common.resume.i.i unwind label %bb.w, !noalias !6776

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %bb.ab, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.aa:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i.i
  %i.cw = load i64, ptr %i.h, align 8, !range !10, !noalias !6776, !noundef !4
  %i.cx = trunc nuw i64 %i.cw to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !11, !noalias !6776, !noundef !4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.cx, label %bb.ab, label %bb.ac, !prof !12

bb.ab:                                            ; preds = %bb.aa
  %i.db = load i64, ptr %i.da, align 8, !noalias !6776
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cz, i64 %i.db) #50
          to label %bb.ai unwind label %bb.z, !noalias !6776

bb.ac:                                            ; preds = %bb.aa
  %i.dc = load ptr, ptr %i.da, align 8, !noalias !6776, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6776
  store i64 %i.cz, ptr %i.v, align 8, !noalias !6776
  %.sroa.462.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.dc, ptr %.sroa.462.0..sroa_idx.i.i.i, align 8, !noalias !6776
  %.sroa.563.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %.sroa.563.0..sroa_idx.i.i.i, align 8, !noalias !6776
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !6776
  store ptr %i.w, ptr %i.u, align 8, !noalias !6776
  %.sroa.467.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.467.0..sroa_idx.i.i.i, align 8, !noalias !6776
  %i.dd = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.dd, align 8, !noalias !6776
  %.sroa.471.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.471.0..sroa_idx.i.i.i, align 8, !noalias !6776
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull @266, ptr noundef nonnull %i.u)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit177.i.i.i unwind label %bb.ad, !noalias !6776

bb.ad:                                            ; preds = %bb.ac
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v) #51
          to label %.body.i.i.i unwind label %bb.w, !noalias !6776

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit177.i.i.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !6776
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i unwind label %bb.ae, !noalias !6776

bb.ae:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit177.i.i.i
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body.i.i.i unwind label %bb.af, !noalias !6776

bb.af:                                            ; preds = %bb.ae
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !6776
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit177.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit179.i.i.i unwind label %bb.z, !noalias !6776

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit179.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6776
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit182.i.i.i unwind label %bb.ag, !noalias !6776

bb.ag:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit179.i.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume.i.i unwind label %bb.ah, !noalias !6776

bb.ah:                                            ; preds = %bb.ag
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !6776
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit182.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit179.i.i.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w), !noalias !6776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !6776
  %i.dj = load <2 x i64>, ptr %i.x, align 16, !noalias !6833
  %.sroa.20.sroa.11.0..sroa.20.8..sroa_idx9.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.20.sroa.11.0.copyload29.i.i = load i64, ptr %.sroa.20.sroa.11.0..sroa.20.8..sroa_idx9.sroa_idx.i.i, align 16, !noalias !6833
  br label %bb.bk
end_hunk_3
begin_hunk_4_@_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtB9_6traits8iterator8Iterator4foldB1s_NvMsC_B1u_B1s_3andECs7p2uQeJxui2_9deltalake:bb.a
  %i.n = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.i
  br i1 %i.o, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBV_BV_NvYBV_NtNtBa_5clone5Clone5cloneNvMsC_BX_BV_3andE0Cs7p2uQeJxui2_9deltalake.exit.i, %bb.a
  %.sink = phi ptr [ %3, %bb.a ], [ %i.d, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprBV_BV_NvYBV_NtNtBa_5clone5Clone5cloneNvMsC_BX_BV_3andE0Cs7p2uQeJxui2_9deltalake.exit.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sink, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.body:                                            ; preds = %bb.d
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4callB1s_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3t_3VecB1s_E14extend_trustedBP_E0E0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB48_3VecBQ_E14extend_trustedINtNtB2s_6cloned6ClonedBF_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 112
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %i.g = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8710
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.g) #57
          to label %bb.d unwind label %bb.e, !noalias !8716

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [112 x i8], ptr %.sroa.5.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.h, ptr noundef nonnull readonly align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !8717
  %i.i = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8710
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f
  br i1 %i.k, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB48_3VecBQ_E14extend_trustedINtNtB2s_6cloned6ClonedBF_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.04.0.copyload, align 8, !noalias !8716
  resume { ptr, i32 } %i.l

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB48_3VecBQ_E14extend_trustedINtNtB2s_6cloned6ClonedBF_EE0E0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.i, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !noalias !8716
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanEENtNtNtB9_6traits8iterator8Iterator4foldB1s_NCINvMs1_B1u_B1s_10union_iterBP_E0ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8725)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.c = icmp eq ptr %1, %2
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8727
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false), !noalias !8722
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false), !alias.scope !8727
  br label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvNtNtB1J_8adapters3map8map_foldRBQ_BQ_BQ_NvYBQ_NtNtBb_5clone5Clone5cloneNCINvMs1_BS_BQ_10union_iterINtNtB2x_6cloned6ClonedBF_EE0E0ECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.d, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !8727
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.sroa.01.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !8733
  call void @_RNvMs1_NtCsjhHCjzi9uUI_17datafusion_common5spansNtB5_4Span5union(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h), !noalias !8727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8728
  %i.j = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.g
  br i1 %i.k, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !8725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8727
  br label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvNtNtB1J_8adapters3map8map_foldRBQ_BQ_BQ_NvYBQ_NtNtBb_5clone5Clone5cloneNCINvMs1_BS_BQ_10union_iterINtNtB2x_6cloned6ClonedBF_EE0E0ECs7p2uQeJxui2_9deltalake.exit

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCsjhHCjzi9uUI_17datafusion_common5spans4SpanENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCINvNtNtB1J_8adapters3map8map_foldRBQ_BQ_BQ_NvYBQ_NtNtBb_5clone5Clone5cloneNCINvMs1_BS_BQ_10union_iterINtNtB2x_6cloned6ClonedBF_EE0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterRINtNtB19_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3t_8for_each4callB1R_NCINvMsj_B17_INtB17_3VecB1R_E14extend_trustedBP_E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterRINtNtBa_4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2E_8adapters3map8map_foldBX_BY_uNvYBY_NtNtB2G_5clone5Clone5cloneNCINvNvB2y_8for_each4callBY_NCINvMsj_B8_INtB8_3VecBY_E14extend_trustedINtNtB3G_6cloned6ClonedBI_EE0E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterTNtNtB1b_6string6StringB23_EEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB3k_9EnumeratepEB2w_4fold9enumerateB22_uNCINvNvB2w_8for_each4callTjB22_ENCINvMs1_B17_INtB17_8VecDequeB22_E10write_iterBP_E0E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.03.0.copyload = load ptr, ptr %0, align 8, !alias.scope !8734, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !8734, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !8734 ; 4 uses
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.66.0.copyload = load ptr, ptr %.sroa.66.0..sroa_idx, align 8, !alias.scope !8734 ; 3 uses
  %.sroa.07.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.59.0.copyload = load ptr, ptr %.sroa.59.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %i.c = icmp eq ptr %.sroa.03.0.copyload, %.sroa.44.0.copyload
  br i1 %i.c, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1E_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2r_9enumerateINtB3G_9EnumeratepEB1y_4fold9enumerateBQ_uNCINvNvB1y_8for_each4callTjBQ_ENCINvMs1_NtNtBV_11collections9vec_dequeINtB5g_8VecDequeBQ_E10write_iterINtNtB2r_6cloned6ClonedINtNtB5g_4iter4IterBQ_EEE0E0E0E0ECs7p2uQeJxui2_9deltalake.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %.sroa.44.0.copyload to i64
  %i.e = ptrtoint ptr %.sroa.03.0.copyload to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.b
  %i.j = phi i64 [ %.sroa.9.0.copyload, %bb.b ], [ %i.u, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.v, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %.sroa.03.0.copyload, i64 %.sroa.01.0.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8738
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k), !noalias !8749
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.d, !noalias !8749

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #51
          to label %common.resume.i unwind label %bb.e, !noalias !8749

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !8749
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %bb.d ], [ %i.ah, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.c
  %i.o = load i64, ptr %.sroa.59.0.copyload, align 8, !noalias !8750, !noundef !4
  %i.p = load ptr, ptr %i.i, align 8, !noalias !8750, !nonnull !4, !noundef !4
  %i.q = getelementptr [48 x i8], ptr %i.p, i64 %i.o
  %i.r = getelementptr [48 x i8], ptr %i.q, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !8749
  %i.s = load i64, ptr %.sroa.7.0.copyload, align 8, !noalias !8750, !noundef !4
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %.sroa.7.0.copyload, align 8, !noalias !8750
  %i.u = add i64 %i.j, 1                          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8738
  %i.v = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.g
  br i1 %i.w, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1E_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2r_9enumerateINtB3G_9EnumeratepEB1y_4fold9enumerateBQ_uNCINvNvB1y_8for_each4callTjBQ_ENCINvMs1_NtNtBV_11collections9vec_dequeINtB5g_8VecDequeBQ_E10write_iterINtNtB2r_6cloned6ClonedINtNtB5g_4iter4IterBQ_EEE0E0E0E0ECs7p2uQeJxui2_9deltalake.exit.i, label %bb.c

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1E_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2r_9enumerateINtB3G_9EnumeratepEB1y_4fold9enumerateBQ_uNCINvNvB1y_8for_each4callTjBQ_ENCINvMs1_NtNtBV_11collections9vec_dequeINtB5g_8VecDequeBQ_E10write_iterINtNtB2r_6cloned6ClonedINtNtB5g_4iter4IterBQ_EEE0E0E0E0ECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.a
  %.sroa.9.0 = phi i64 [ %.sroa.9.0.copyload, %bb.a ], [ %i.u, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.55.0.copyload), "nonnull"(ptr %.sroa.66.0.copyload) ]
  %i.x = icmp eq ptr %.sroa.55.0.copyload, %.sroa.66.0.copyload
  br i1 %i.x, label %_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtBc_6string6StringB1a_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRB19_B19_uNvYB19_NtNtB1J_5clone5Clone5cloneNCINvNvXs_NtB2J_9enumerateINtB42_9EnumeratepEB1B_4fold9enumerateB19_uNCINvNvB1B_8for_each4callTjB19_ENCINvMs1_B8_INtB8_8VecDequeB19_E10write_iterINtNtB2J_6cloned6ClonedBY_EE0E0E0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.f

bb.f:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1E_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2r_9enumerateINtB3G_9EnumeratepEB1y_4fold9enumerateBQ_uNCINvNvB1y_8for_each4callTjBQ_ENCINvMs1_NtNtBV_11collections9vec_dequeINtB5g_8VecDequeBQ_E10write_iterINtNtB2r_6cloned6ClonedINtNtB5g_4iter4IterBQ_EEE0E0E0E0ECs7p2uQeJxui2_9deltalake.exit.i
  %i.y = ptrtoint ptr %.sroa.66.0.copyload to i64
  %i.z = ptrtoint ptr %.sroa.55.0.copyload to i64
  %i.aa = sub nuw i64 %i.y, %i.z
  %i.ab = udiv exact i64 %i.aa, 48
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload, i64 8
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i3.i, %bb.f
  %i.ae = phi i64 [ %.sroa.9.0, %bb.f ], [ %i.ap, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i3.i ] ; 2 uses
  %.sroa.01.0.i2.i = phi i64 [ 0, %bb.f ], [ %i.aq, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i3.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %.sroa.55.0.copyload, i64 %.sroa.01.0.i2.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8760
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.af), !noalias !8768
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i3.i unwind label %bb.h, !noalias !8768

bb.h:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #51
          to label %common.resume.i unwind label %bb.i, !noalias !8768

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !8768
  unreachable

_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i3.i: ; preds = %bb.g
  %i.aj = load i64, ptr %.sroa.59.0.copyload, align 8, !noalias !8769, !noundef !4
  %i.ak = load ptr, ptr %i.ad, align 8, !noalias !8769, !nonnull !4, !noundef !4
  %i.al = getelementptr [48 x i8], ptr %i.ak, i64 %i.aj
  %i.am = getelementptr [48 x i8], ptr %i.al, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !8768
  %i.an = load i64, ptr %.sroa.7.0.copyload, align 8, !noalias !8769, !noundef !4
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %.sroa.7.0.copyload, align 8, !noalias !8769
  %i.ap = add i64 %i.ae, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8760
  %i.aq = add nuw i64 %.sroa.01.0.i2.i, 1         ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.ab
  br i1 %i.ar, label %_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtBc_6string6StringB1a_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRB19_B19_uNvYB19_NtNtB1J_5clone5Clone5cloneNCINvNvXs_NtB2J_9enumerateINtB42_9EnumeratepEB1B_4fold9enumerateB19_uNCINvNvB1B_8for_each4callTjB19_ENCINvMs1_B8_INtB8_8VecDequeB19_E10write_iterINtNtB2J_6cloned6ClonedBY_EE0E0E0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.g

_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtBc_6string6StringB1a_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRB19_B19_uNvYB19_NtNtB1J_5clone5Clone5cloneNCINvNvXs_NtB2J_9enumerateINtB42_9EnumeratepEB1B_4fold9enumerateB19_uNCINvNvB1B_8for_each4callTjB19_ENCINvMs1_B8_INtB8_8VecDequeB19_E10write_iterINtNtB2J_6cloned6ClonedBY_EE0E0E0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1v_EB1u_uNvYB1u_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtBV_9enumerateINtB2X_9EnumeratepENtNtNtBX_6traits8iterator8Iterator4fold9enumerateB1u_uNCINvNvB3v_8for_each4callTjB1u_ENCINvMs1_NtNtB1z_11collections9vec_dequeINtB52_8VecDequeB1u_E10write_iterINtNtBV_6cloned6ClonedINtNtB52_4iter4IterB1u_EEE0E0E0E0INtB7_5FnMutTuB1t_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i3.i, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1E_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvXs_NtB2r_9enumerateINtB3G_9EnumeratepEB1y_4fold9enumerateBQ_uNCINvNvB1y_8for_each4callTjBQ_ENCINvMs1_NtNtBV_11collections9vec_dequeINtB5g_8VecDequeBQ_E10write_iterINtNtB2r_6cloned6ClonedINtNtB5g_4iter4IterBQ_EEE0E0E0E0ECs7p2uQeJxui2_9deltalake.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iter4IterTNtNtB1b_6string6StringB23_EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvXs_NtB7_4takeINtB3o_4TakepEB2w_8try_fold5checkB22_uINtNtNtBb_3ops9try_trait17NeverShortCircuituENCINvMs0_B4d_B4a_10wrap_mut_2uB22_NCINvNvXs_NtB7_9enumerateINtB5B_9EnumeratepEB2w_4fold9enumerateB22_uNCINvNvB2w_8for_each4callTjB22_ENCINvMs1_B17_INtB17_8VecDequeB22_E10write_iterIB3z_INtNtB7_12by_ref_sized10ByRefSizedBP_EEE0E0E0E0E0INtNtB4f_12control_flow11ControlFlowB4a_EECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 6 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8779)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8782)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !8785, !noalias !8788, !nonnull !4, !noundef !4
  %.promoted.i.i = load ptr, ptr %0, align 8, !alias.scope !8785, !noalias !8788
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.a
  %.promoted12.i4.i = phi i64 [ %i.t, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.7.0.copyload, %bb.a ] ; 3 uses
  %i.g = phi ptr [ %i.h, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.promoted.i.i, %bb.a ] ; 4 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.not.not.i.not.i, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1x_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB39_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2o_4takeINtB4y_4TakepEB1r_8try_fold5checkBJ_uB3J_NCINvMs0_B3M_B3J_10wrap_mut_2uBJ_NCINvNvXs_NtB2o_9enumerateINtB65_9EnumeratepEB1r_4fold9enumerateBJ_uNCINvNvB1r_8for_each4callTjBJ_ENCINvMs1_NtNtBO_11collections9vec_dequeINtB7F_8VecDequeBJ_E10write_iterIB4K_INtNtB2o_12by_ref_sized10ByRefSizedINtB2m_6ClonedINtNtB7F_4iter4IterBJ_EEEEE0E0E0E0E0E0B34_ECs7p2uQeJxui2_9deltalake.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !alias.scope !8785, !noalias !8788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8791
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g), !noalias !8797
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.d, !noalias !8797

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #51
          to label %common.resume.i unwind label %bb.e, !noalias !8797

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !8797
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.ae, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.c
  %i.l = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !8798, !noundef !4
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %.sroa.0.0.copyload, align 8, !noalias !8798
  %i.n = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !8802, !noundef !4
  %i.o = load ptr, ptr %i.f, align 8, !noalias !8802, !nonnull !4, !noundef !4
  %i.p = getelementptr [48 x i8], ptr %i.o, i64 %i.n
  %i.q = getelementptr [48 x i8], ptr %i.p, i64 %.promoted12.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !8797
  %i.r = load i64, ptr %.sroa.6.0.copyload, align 8, !noalias !8802, !noundef !4
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %.sroa.6.0.copyload, align 8, !noalias !8802
  %i.t = add i64 %.promoted12.i4.i, 1
  %i.u = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !8798, !noundef !4
  %i.v = icmp eq i64 %i.u, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8791
  br i1 %i.v, label %_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtBc_6string6StringB1a_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1H_8adapters6cloned14clone_try_foldB19_uINtNtNtB1J_3ops12control_flow11ControlFlowINtNtB3z_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2N_4takeINtB4Z_4TakepEB1B_8try_fold5checkB19_uB4a_NCINvMs0_B4d_B4a_10wrap_mut_2uB19_NCINvNvXs_NtB2N_9enumerateINtB6y_9EnumeratepEB1B_4fold9enumerateB19_uNCINvNvB1B_8for_each4callTjB19_ENCINvMs1_B8_INtB8_8VecDequeB19_E10write_iterIB5b_INtNtB2N_12by_ref_sized10ByRefSizedINtB2L_6ClonedBY_EEEE0E0E0E0E0E0B3u_ECs7p2uQeJxui2_9deltalake.exit, label %bb.b

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1x_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB39_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2o_4takeINtB4y_4TakepEB1r_8try_fold5checkBJ_uB3J_NCINvMs0_B3M_B3J_10wrap_mut_2uBJ_NCINvNvXs_NtB2o_9enumerateINtB65_9EnumeratepEB1r_4fold9enumerateBJ_uNCINvNvB1r_8for_each4callTjBJ_ENCINvMs1_NtNtBO_11collections9vec_dequeINtB7F_8VecDequeBJ_E10write_iterIB4K_INtNtB2o_12by_ref_sized10ByRefSizedINtB2m_6ClonedINtNtB7F_4iter4IterBJ_EEEEE0E0E0E0E0E0B34_ECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8815)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !8818, !noalias !8821, !nonnull !4, !noundef !4
  %.promoted.i3.i = load ptr, ptr %i.w, align 8, !alias.scope !8818, !noalias !8821
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i6.i, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1x_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB39_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2o_4takeINtB4y_4TakepEB1r_8try_fold5checkBJ_uB3J_NCINvMs0_B3M_B3J_10wrap_mut_2uBJ_NCINvNvXs_NtB2o_9enumerateINtB65_9EnumeratepEB1r_4fold9enumerateBJ_uNCINvNvB1r_8for_each4callTjBJ_ENCINvMs1_NtNtBO_11collections9vec_dequeINtB7F_8VecDequeBJ_E10write_iterIB4K_INtNtB2o_12by_ref_sized10ByRefSizedINtB2m_6ClonedINtNtB7F_4iter4IterBJ_EEEEE0E0E0E0E0E0B34_ECs7p2uQeJxui2_9deltalake.exit.i
  %i.aa = phi i64 [ %i.ao, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i6.i ], [ %.promoted12.i4.i, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1x_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB39_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2o_4takeINtB4y_4TakepEB1r_8try_fold5checkBJ_uB3J_NCINvMs0_B3M_B3J_10wrap_mut_2uBJ_NCINvNvXs_NtB2o_9enumerateINtB65_9EnumeratepEB1r_4fold9enumerateBJ_uNCINvNvB1r_8for_each4callTjBJ_ENCINvMs1_NtNtBO_11collections9vec_dequeINtB7F_8VecDequeBJ_E10write_iterIB4K_INtNtB2o_12by_ref_sized10ByRefSizedINtB2m_6ClonedINtNtB7F_4iter4IterBJ_EEEEE0E0E0E0E0E0B34_ECs7p2uQeJxui2_9deltalake.exit.i ] ; 2 uses
  %i.ab = phi ptr [ %i.ac, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i6.i ], [ %.promoted.i3.i, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_EENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1x_8adapters6cloned14clone_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB39_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2o_4takeINtB4y_4TakepEB1r_8try_fold5checkBJ_uB3J_NCINvMs0_B3M_B3J_10wrap_mut_2uBJ_NCINvNvXs_NtB2o_9enumerateINtB65_9EnumeratepEB1r_4fold9enumerateBJ_uNCINvNvB1r_8for_each4callTjBJ_ENCINvMs1_NtNtBO_11collections9vec_dequeINtB7F_8VecDequeBJ_E10write_iterIB4K_INtNtB2o_12by_ref_sized10ByRefSizedINtB2m_6ClonedINtNtB7F_4iter4IterBJ_EEEEE0E0E0E0E0E0B34_ECs7p2uQeJxui2_9deltalake.exit.i ] ; 4 uses
  %.not.not.not.i5.not.not.i.not.not = icmp ne ptr %i.ab, %i.y ; 3 uses
  br i1 %.not.not.not.i5.not.not.i.not.not, label %bb.g, label %_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtBc_6string6StringB1a_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1H_8adapters6cloned14clone_try_foldB19_uINtNtNtB1J_3ops12control_flow11ControlFlowINtNtB3z_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2N_4takeINtB4Z_4TakepEB1B_8try_fold5checkB19_uB4a_NCINvMs0_B4d_B4a_10wrap_mut_2uB19_NCINvNvXs_NtB2N_9enumerateINtB6y_9EnumeratepEB1B_4fold9enumerateB19_uNCINvNvB1B_8for_each4callTjB19_ENCINvMs1_B8_INtB8_8VecDequeB19_E10write_iterIB5b_INtNtB2N_12by_ref_sized10ByRefSizedINtB2L_6ClonedBY_EEEE0E0E0E0E0E0B3u_ECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  store ptr %i.ac, ptr %i.w, align 8, !alias.scope !8818, !noalias !8821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8823
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab), !noalias !8829
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i6.i unwind label %bb.h, !noalias !8829

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #51
          to label %common.resume.i unwind label %bb.i, !noalias !8829

bb.i:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !8829
  unreachable

_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i6.i: ; preds = %bb.g
  %i.ag = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !8830, !noundef !4
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %.sroa.0.0.copyload, align 8, !noalias !8830
  %i.ai = load i64, ptr %.sroa.5.0.copyload, align 8, !noalias !8834, !noundef !4
  %i.aj = load ptr, ptr %i.f, align 8, !noalias !8834, !nonnull !4, !noundef !4
  %i.ak = getelementptr [48 x i8], ptr %i.aj, i64 %i.ai
  %i.al = getelementptr [48 x i8], ptr %i.ak, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !8829
  %i.am = load i64, ptr %.sroa.6.0.copyload, align 8, !noalias !8834, !noundef !4
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %.sroa.6.0.copyload, align 8, !noalias !8834
  %i.ao = add i64 %i.aa, 1
  %i.ap = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !8830, !noundef !4
  %i.aq = icmp eq i64 %i.ap, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8823
  br i1 %i.aq, label %_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtBc_6string6StringB1a_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1H_8adapters6cloned14clone_try_foldB19_uINtNtNtB1J_3ops12control_flow11ControlFlowINtNtB3z_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2N_4takeINtB4Z_4TakepEB1B_8try_fold5checkB19_uB4a_NCINvMs0_B4d_B4a_10wrap_mut_2uB19_NCINvNvXs_NtB2N_9enumerateINtB6y_9EnumeratepEB1B_4fold9enumerateB19_uNCINvNvB1B_8for_each4callTjB19_ENCINvMs1_B8_INtB8_8VecDequeB19_E10write_iterIB5b_INtNtB2N_12by_ref_sized10ByRefSizedINtB2L_6ClonedBY_EEEE0E0E0E0E0E0B3u_ECs7p2uQeJxui2_9deltalake.exit, label %bb.f

_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtBc_6string6StringB1a_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1H_8adapters6cloned14clone_try_foldB19_uINtNtNtB1J_3ops12control_flow11ControlFlowINtNtB3z_9try_trait17NeverShortCircuituEENCINvNvXs_NtB2N_4takeINtB4Z_4TakepEB1B_8try_fold5checkB19_uB4a_NCINvMs0_B4d_B4a_10wrap_mut_2uB19_NCINvNvXs_NtB2N_9enumerateINtB6y_9EnumeratepEB1B_4fold9enumerateB19_uNCINvNvB1B_8for_each4callTjB19_ENCINvMs1_B8_INtB8_8VecDequeB19_E10write_iterIB5b_INtNtB2N_12by_ref_sized10ByRefSizedINtB2L_6ClonedBY_EEEE0E0E0E0E0E0B3u_ECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.f, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i6.i
  %.sroa.0.0.i = phi i1 [ %.not.not.not.i5.not.not.i.not.not, %bb.f ], [ %.not.not.not.i5.not.not.i.not.not, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i6.i ], [ true, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6cloned14clone_try_foldTNtNtCs6Po7BT7Nknu_5alloc6string6StringB1E_EuINtNtB9_12control_flow11ControlFlowINtNtB9_9try_trait17NeverShortCircuituEENCINvNvXs_NtBV_4takeINtB3J_4TakepENtNtNtBX_6traits8iterator8Iterator8try_fold5checkB1D_uB2V_NCINvMs0_B2Y_B2V_10wrap_mut_2uB1D_NCINvNvXs_NtBV_9enumerateINtB5L_9EnumeratepEB47_4fold9enumerateB1D_uNCINvNvB47_8for_each4callTjB1D_ENCINvMs1_NtNtB1I_11collections9vec_dequeINtB7m_8VecDequeB1D_E10write_iterIB3U_INtNtBV_12by_ref_sized10ByRefSizedINtBT_6ClonedINtNtB7m_4iter4IterB1D_EEEEE0E0E0E0E0E0INtB7_5FnMutTuRB1D_EE8call_mutCs7p2uQeJxui2_9deltalake.exit.i.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs_NvXNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize1__NtBa_7MetricsNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeNtB5_s_15___SerializeWithB1j_9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !90, !noundef !4
  %i.b = tail call fastcc noundef align 8 ptr @_RINvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize24serialize_metric_detailsQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a, ptr noalias noundef align 8 dereferenceable(8) %1)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsb_Cs3JXekYNd0JR_7dashmapINtB6_7DashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBK_3vec3VecbEEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendTBG_B1i_EE6extendINtNtB1K_6option6OptionB2u_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
end_hunk_4
begin_hunk_5_@_RNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB2_14PyMergeBuilder3new:bb.a
  %i.bd = alloca [48 x i8], align 8               ; 4 uses
  %i.be = alloca [48 x i8], align 8               ; 9 uses
  %i.bf = alloca [16 x i8], align 8               ; 7 uses
  %i.bg = alloca [8 x i8], align 8                ; 6 uses
  %i.bh = alloca [16 x i8], align 8               ; 7 uses
  store ptr %1, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  store ptr %2, ptr %i.bi, align 8
  store ptr %5, ptr %i.bg, align 8
  store ptr %20, ptr %i.bf, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %21, ptr %i.bj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  invoke void @_RNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7session14create_session(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.bd)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body170, %bb.c
  %.sroa.045.0 = phi i8 [ %.sroa.043.1, %bb.c ], [ %.sroa.045.2, %.body170 ] ; 2 uses
  %.sroa.043.0 = phi i8 [ %.sroa.043.1, %bb.c ], [ %.sroa.043.2, %.body170 ] ; 2 uses
  %.sroa.041.0 = phi i8 [ %.sroa.041.1, %bb.c ], [ %.sroa.041.2, %.body170 ] ; 2 uses
  %.sroa.055.0 = phi i1 [ %.sroa.055.1, %bb.c ], [ %.sroa.055.2, %.body170 ]
  %.sroa.056.0 = phi i8 [ %.sroa.058.1, %bb.c ], [ %.sroa.056.2, %.body170 ]
  %.sroa.058.0 = phi i8 [ %.sroa.058.1, %bb.c ], [ 1, %.body170 ] ; 2 uses
  %.sroa.059.0 = phi i1 [ %.sroa.059.1, %bb.c ], [ false, %.body170 ] ; 2 uses
  %.pn125 = phi { ptr, i32 } [ %i.bm, %bb.c ], [ %.pn123, %.body170 ] ; 2 uses
  %i.bk = load ptr, ptr %i.bf, align 8, !noundef !4 ; 2 uses
  %i.bl = icmp ne ptr %i.bk, null
  %or.cond3 = and i1 %.sroa.055.0, %i.bl
  br i1 %or.cond3, label %bb.gg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core10operations20CustomExecuteHandlerEL_EECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.ex, %bb.er, %bb.a
  %.sroa.043.1 = phi i8 [ %.sroa.041.9, %bb.er ], [ 0, %bb.ex ], [ 1, %bb.a ] ; 2 uses
  %.sroa.041.1 = phi i8 [ %.sroa.041.9, %bb.er ], [ %.sroa.041.8, %bb.ex ], [ 1, %bb.a ]
  %.sroa.055.1 = phi i1 [ true, %bb.er ], [ %.not117, %bb.ex ], [ true, %bb.a ]
  %.sroa.058.1 = phi i8 [ 1, %bb.er ], [ 0, %bb.ex ], [ 1, %bb.a ] ; 2 uses
  %.sroa.059.1 = phi i1 [ false, %bb.er ], [ false, %bb.ex ], [ true, %bb.a ]
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull align 8 dereferenceable(48) %i.bd, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  invoke void @_RNvMNtCs3gECBqE52CY_10pyo3_arrow19record_batch_readerNtB2_19PyRecordBatchReader11into_reader(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bb)
          to label %bb.f unwind label %bb.e

.body170:                                         ; preds = %.body.i, %bb.e, %bb.fd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit
  %.sroa.045.2 = phi i8 [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit ], [ 0, %bb.fd ], [ %.sroa.045.3, %bb.e ], [ 1, %.body.i ]
  %.sroa.043.2 = phi i8 [ %.sroa.043.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit ], [ %.sroa.043.3, %bb.fd ], [ 1, %bb.e ], [ 1, %.body.i ]
  %.sroa.041.2 = phi i8 [ %.sroa.041.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit ], [ %.sroa.041.3, %bb.fd ], [ 1, %bb.e ], [ 1, %.body.i ]
  %.sroa.055.2 = phi i1 [ %.sroa.055.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit ], [ %.sroa.055.3, %bb.fd ], [ true, %bb.e ], [ true, %.body.i ]
  %.sroa.056.2 = phi i8 [ %.sroa.056.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit ], [ %.sroa.056.3, %bb.fd ], [ 1, %bb.e ], [ 1, %.body.i ]
  %.pn123 = phi { ptr, i32 } [ %.pn121, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit ], [ %.pn121, %bb.fd ], [ %i.bn, %bb.e ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.be) #51
          to label %bb.b unwind label %bb.bc

bb.e:                                             ; preds = %bb.n, %bb.p, %bb.d
  %.sroa.045.3 = phi i8 [ 1, %bb.n ], [ 0, %bb.p ], [ 1, %bb.d ]
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body170

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.bo = load i64, ptr %i.bc, align 8, !range !10, !noundef !4
  %i.bp = trunc nuw i64 %i.bo to i1               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  br i1 %i.bp, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(56) %i.bq, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !9324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !9328
  store i64 0, ptr %i.r, align 8, !noalias !9328
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !9328
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !9328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !9328
  %i.br = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i32 1610612768, ptr %i.br, align 8, !noalias !9328
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !9328
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !9328
  store ptr %i.r, ptr %i.q, align 8, !noalias !9328
  %i.bs = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @531, ptr %i.bs, align 8, !noalias !9328
  %i.bt = invoke noundef zeroext i1 @_RNvXs3_NtCsgbCypRs12E4_4pyo33errNtB5_5PyErrNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.i unwind label %bb.h, !noalias !9331

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #51
          to label %.body.i unwind label %bb.k, !noalias !9331

bb.i:                                             ; preds = %bb.g
  br i1 %i.bt, label %bb.j, label %bb.m, !prof !12

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @532, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @313, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @534) #50
          to label %.noexc.i.i unwind label %bb.h, !noalias !9331

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !9331
  unreachable

bb.l:                                             ; preds = %bb.m
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.l, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bw, %bb.l ], [ %i.bu, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aa) #51
          to label %.body170 unwind label %bb.o, !noalias !9332

bb.m:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !9324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9328
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9328
  invoke void @_RINvMs0_NtCs14kWLkQVSKO_14deltalake_core6errorsNtB6_15DeltaTableError7genericNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !9324
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.aa)
          to label %_RNCNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB4_14PyMergeBuilder3new0B6_.exit unwind label %bb.e

bb.o:                                             ; preds = %.body.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !9332
  unreachable

bb.p:                                             ; preds = %bb.f
  %i.by = load ptr, ptr %i.bq, align 8, !nonnull !4, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !align !90, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.cb = load ptr, ptr %i.bg, align 8, !nonnull !4, !noundef !4
  %i.cc = invoke { ptr, ptr } @_RNvNtCs7p2uQeJxui2_9deltalake6writer22maybe_lazy_cast_reader(ptr noundef nonnull %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ca, ptr noundef nonnull %i.cb)
          to label %bb.q unwind label %bb.e       ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cd = extractvalue { ptr, ptr } %i.cc, 0      ; 7 uses
  %i.ce = extractvalue { ptr, ptr } %i.cc, 1      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !invariant.load !4, !nonnull !4
  %i.ch = invoke noundef nonnull ptr %i.cg(ptr noundef %i.cd)
          to label %bb.s unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body, %bb.z, %bb.r
  %.sroa.043.3 = phi i8 [ %.sroa.054.1, %bb.r ], [ %.sroa.043.5, %bb.z ], [ %.sroa.043.5, %.body ] ; 2 uses
  %.sroa.041.3 = phi i8 [ %.sroa.054.1, %bb.r ], [ %.sroa.041.5, %bb.z ], [ %.sroa.041.5, %.body ] ; 2 uses
  %.sroa.054.0 = phi i8 [ %.sroa.054.1, %bb.r ], [ %.sroa.054.2, %bb.z ], [ %.sroa.054.2, %.body ]
  %.sroa.055.3 = phi i1 [ true, %bb.r ], [ %.sroa.055.4, %bb.z ], [ %.sroa.055.4, %.body ] ; 2 uses
  %.sroa.056.3 = phi i8 [ 1, %bb.r ], [ %.sroa.056.4, %bb.z ], [ %.sroa.056.4, %.body ] ; 2 uses
  %.pn121 = phi { ptr, i32 } [ %i.cj, %bb.r ], [ %.pn118.pn, %bb.z ], [ %.pn118.pn, %.body ] ; 2 uses
  %i.ci = trunc nuw i8 %.sroa.054.0 to i1
  br i1 %i.ci, label %bb.fd, label %.body170

bb.r:                                             ; preds = %bb.eq, %bb.q
  %.sroa.054.1 = phi i8 [ 0, %bb.eq ], [ 1, %bb.q ] ; 3 uses
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit

bb.s:                                             ; preds = %bb.q
  store ptr %i.ch, ptr %i.ba, align 8
  br i1 %11, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.ck = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #44 ; 4 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.u, label %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #50
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd), "nonnull"(ptr %i.ce) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !9333
  %i.cm = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #44, !noalias !9333 ; 8 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.w, label %bb.bd, !prof !12

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #50
          to label %.noexc172 unwind label %bb.x

.noexc172:                                        ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerINtNtCslfDARg5dRCJ_8lock_api6rwlock6RwLockNtNtCs8fBJGmGoRiY_11parking_lot10raw_rwlock9RawRwLockNtNtCs7p2uQeJxui2_9deltalake6writer25ArrowStreamBatchGeneratorEEEB2U_(ptr nonnull %i.cd, ptr nonnull %i.ce) #51
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52
  unreachable

.body:                                            ; preds = %.body147, %bb.cd, %bb.ek, %bb.fb, %bb.fc, %bb.ef, %bb.ee, %bb.ed, %bb.dd, %bb.dc, %bb.db, %.thread279, %bb.bq, %bb.bm, %bb.bk, %bb.bb, %bb.ar, %bb.am, %bb.ah, %bb.x, %bb.aa, %bb.ab, %bb.fa
  %.sroa.043.5 = phi i8 [ 0, %bb.fa ], [ 0, %.thread279 ], [ 1, %bb.ab ], [ 0, %bb.ef ], [ 0, %bb.bb ], [ 1, %bb.x ], [ 1, %bb.ah ], [ 1, %bb.am ], [ 1, %bb.ar ], [ 1, %bb.aa ], [ 1, %bb.bk ], [ 1, %bb.bm ], [ 1, %bb.bq ], [ 1, %bb.fb ], [ 0, %bb.dd ], [ 0, %bb.db ], [ 0, %bb.dc ], [ 0, %bb.ed ], [ 0, %bb.ee ], [ 1, %bb.fc ], [ 0, %bb.ek ], [ 0, %bb.cd ], [ 0, %.body147 ] ; 2 uses
  %.sroa.041.5 = phi i8 [ %.sroa.041.7.ph277, %bb.fa ], [ %.sroa.041.7.ph, %.thread279 ], [ 1, %bb.ab ], [ 1, %bb.ef ], [ 1, %bb.bb ], [ 1, %bb.x ], [ 1, %bb.ah ], [ 1, %bb.am ], [ 1, %bb.ar ], [ 1, %bb.aa ], [ 1, %bb.bk ], [ 1, %bb.bm ], [ 1, %bb.bq ], [ 1, %bb.fb ], [ 1, %bb.dd ], [ 1, %bb.db ], [ 1, %bb.dc ], [ 1, %bb.ed ], [ 1, %bb.ee ], [ 1, %bb.fc ], [ 0, %bb.ek ], [ 1, %bb.cd ], [ 1, %.body147 ] ; 2 uses
  %.sroa.054.2 = phi i8 [ 0, %bb.fa ], [ 0, %.thread279 ], [ 0, %bb.ab ], [ 0, %bb.ef ], [ 0, %bb.bb ], [ 0, %bb.x ], [ 0, %bb.ah ], [ 0, %bb.am ], [ 0, %bb.ar ], [ %.sroa.054.3, %bb.aa ], [ 0, %bb.bk ], [ 0, %bb.bm ], [ 0, %bb.bq ], [ 0, %bb.fb ], [ 0, %bb.dd ], [ 0, %bb.db ], [ 0, %bb.dc ], [ 0, %bb.ed ], [ 0, %bb.ee ], [ 0, %bb.fc ], [ 0, %bb.ek ], [ 0, %bb.cd ], [ 0, %.body147 ] ; 2 uses
  %.sroa.055.4 = phi i1 [ true, %bb.fa ], [ %.sroa.055.6.ph, %.thread279 ], [ true, %bb.ab ], [ true, %bb.ef ], [ true, %bb.bb ], [ true, %bb.x ], [ true, %bb.ah ], [ true, %bb.am ], [ true, %bb.ar ], [ true, %bb.aa ], [ true, %bb.bk ], [ true, %bb.bm ], [ true, %bb.bq ], [ true, %bb.fb ], [ true, %bb.dd ], [ true, %bb.db ], [ true, %bb.dc ], [ true, %bb.ed ], [ true, %bb.ee ], [ true, %bb.fc ], [ true, %bb.ek ], [ true, %bb.cd ], [ true, %.body147 ] ; 2 uses
  %.sroa.056.4 = phi i8 [ %.sroa.056.6.ph278, %bb.fa ], [ %.sroa.056.6.ph, %.thread279 ], [ 1, %bb.ab ], [ 1, %bb.ef ], [ 1, %bb.bb ], [ 1, %bb.x ], [ 1, %bb.ah ], [ 1, %bb.am ], [ 1, %bb.ar ], [ 1, %bb.aa ], [ 1, %bb.bk ], [ 1, %bb.bm ], [ 1, %bb.bq ], [ 1, %bb.fb ], [ 1, %bb.dd ], [ 1, %bb.db ], [ 1, %bb.dc ], [ 1, %bb.ed ], [ 1, %bb.ee ], [ 1, %bb.fc ], [ 1, %bb.ek ], [ 1, %bb.cd ], [ 1, %.body147 ] ; 2 uses
  %.pn118.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.fa ], [ %lpad.thr_comm, %.thread279 ], [ %i.cu, %bb.ab ], [ %.pn.i203, %bb.ef ], [ %i.dv, %bb.bb ], [ %i.co, %bb.x ], [ %i.de, %bb.ah ], [ %i.dk, %bb.am ], [ %i.dp, %bb.ar ], [ %i.ct, %bb.aa ], [ %i.es, %bb.bk ], [ %i.eu, %bb.bm ], [ %i.ey, %bb.bq ], [ %i.ei, %bb.fb ], [ %.pn.i, %bb.dd ], [ %.pn.i, %bb.db ], [ %.pn.i, %bb.dc ], [ %.pn.i203, %bb.ed ], [ %.pn.i203, %bb.ee ], [ %i.ei, %bb.fc ], [ %i.ik, %bb.ek ], [ %i.fh, %bb.cd ], [ %i.fj, %.body147 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9336)
  call void @llvm.experimental.noalias.scope.decl(metadata !9339)
  %i.cq = load ptr, ptr %i.ba, align 8, !alias.scope !9342, !nonnull !4, !noundef !4
  %i.cr = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !9342
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit

bb.z:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba) #55
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.bc

bb.aa:                                            ; preds = %bb.u, %bb.ao, %bb.ad
  %.sroa.054.3 = phi i8 [ 0, %bb.ao ], [ 1, %bb.u ], [ 0, %bb.ad ]
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd), "nonnull"(ptr %i.ce) ]
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB6_5boxed3BoxDNtB13_17RecordBatchReaderp4ItemINtNtB2B_6result6ResultB11_NtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorENtNtB2B_6marker4SendEL_ENCNvMNtCs7p2uQeJxui2_9deltalake5mergeNtB5N_14PyMergeBuilder3news_0EE9from_iterB5P_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noundef nonnull %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ce)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ck, i64 noundef 24, i64 noundef 8) #44
  br label %.body

bb.ac:                                            ; preds = %_RNvNtCs6Po7BT7Nknu_5alloc5boxed14box_new_uninit.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  store i64 1, ptr %i.av, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.ck, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 1, ptr %i.cw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.cx = load ptr, ptr %i.ba, align 8, !nonnull !4, !noundef !4
  %i.cy = atomicrmw add ptr %i.cx, i64 1 monotonic, align 8
  %i.cz = icmp slt i64 %i.cy, 0
  br i1 %i.cz, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = load ptr, ptr %i.ba, align 8, !nonnull !4, !noundef !4
  invoke void @_RNvMNtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB2_8MemTable7try_new(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.at, ptr noundef nonnull %i.da, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.av)
          to label %bb.af unwind label %bb.aa

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !9343)
  %i.db = load i64, ptr %i.at, align 8, !range !11, !alias.scope !9343, !noalias !9346, !noundef !4
  %i.dc = icmp eq i64 %i.db, -9223372036854775808
  br i1 %i.dc, label %bb.ag, label %bb.ak, !prof !12

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !9348
  %i.dd = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.dd, i64 40, i1 false), !noalias !9346
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @310, i64 noundef 43, ptr noundef nonnull %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @311, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @298) #50
          to label %bb.ai unwind label %bb.ah, !noalias !9348

bb.ah:                                            ; preds = %bb.ag
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t) #51
          to label %.body unwind label %bb.aj, !noalias !9348

bb.ai:                                            ; preds = %bb.ag
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !9348
  unreachable

bb.ak:                                            ; preds = %bb.af
  %i.dg = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.dg, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.at, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  store i64 1, ptr %i.y, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 1, ptr %i.dh, align 8
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !9349
  %i.di = call noundef align 8 dereferenceable_or_null(128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 128, i64 noundef 8) #44, !noalias !9349 ; 3 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.al, label %bb.ao, !prof !12

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 128) #50
          to label %.noexc175 unwind label %bb.am

.noexc175:                                        ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.dg)
          to label %.body unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52
  unreachable

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.di, ptr noundef nonnull align 8 dereferenceable(128) %i.y, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke void @_RNvMs3_NtNtCs8Hz2sPNgbCO_10datafusion9execution7contextNtB5_14SessionContext10read_table(ptr noalias noundef nonnull sret([336 x i8]) align 16 captures(none) dereferenceable(336) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.be, ptr noundef nonnull %i.di, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) @299)
          to label %bb.ap unwind label %bb.aa

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !9352)
  call void @llvm.experimental.noalias.scope.decl(metadata !9355)
  %i.dm = load i64, ptr %i.as, align 16, !range !1559, !alias.scope !9355, !noalias !9357, !noundef !4
  %i.dn = icmp eq i64 %i.dm, 36
  br i1 %i.dn, label %bb.aq, label %bb.au, !prof !12

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !9359
  %i.do = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.do, i64 40, i1 false), !noalias !9357
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @310, i64 noundef 43, ptr noundef nonnull %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @311, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @300) #50
          to label %bb.as unwind label %bb.ar, !noalias !9360

bb.ar:                                            ; preds = %bb.aq
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.u) #51
          to label %.body unwind label %bb.at, !noalias !9360

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !9360
  unreachable

bb.au:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.az, ptr noundef nonnull readonly align 16 dereferenceable(336) %i.as, i64 336, i1 false), !alias.scope !9360, !noalias !9361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.av

bb.av:                                            ; preds = %bb.bt, %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.dr = load ptr, ptr %i.bh, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ds = load ptr, ptr %i.bi, align 8, !nonnull !4, !align !90, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !9362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  store i64 37, ptr %i.p, align 16, !noalias !9362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !9362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(336) %i.o, ptr noundef nonnull readonly align 16 dereferenceable(336) %i.az, i64 336, i1 false), !noalias !9369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !9362
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9362
  store ptr %i.dr, ptr %i.m, align 8, !noalias !9362
  %i.dt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.ds, ptr %i.dt, align 8, !noalias !9362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9362
  store i64 -9223372036854775808, ptr %i.l, align 8, !noalias !9362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9362
  store i64 -9223372036854775808, ptr %i.k, align 8, !noalias !9362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9362
  invoke void @_RNvXs3_NtNtCs14kWLkQVSKO_14deltalake_core6kernel11transactionNtB5_16CommitPropertiesNtNtCsbvkFyIu7lgC_4core7default7Default7default(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.j)
          to label %bb.bu unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs7p2uQeJxui2_9deltalake.exit.i, !noalias !9370

bb.aw:                                            ; preds = %bb.bb, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEECs7p2uQeJxui2_9deltalake.exit.i, %bb.ba, %bb.az, %bb.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs7p2uQeJxui2_9deltalake.exit.i
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !9370
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.av
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #51
          to label %bb.ax unwind label %bb.aw, !noalias !9370

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8PD1TAMvwcd_18datafusion_session7session7SessionEL_EEECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #51
          to label %bb.ay unwind label %bb.aw, !noalias !9370

bb.ay:                                            ; preds = %bb.ax
  %i.dw = atomicrmw sub ptr %i.dr, i64 1 release, align 8, !noalias !9371
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #55
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.aw, !noalias !9370

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.az, %bb.ay
  %i.dy = load i64, ptr %i.n, align 8, !range !11, !alias.scope !9376, !noalias !9362, !noundef !4
  %i.dz = icmp eq i64 %i.dy, -9223372036854775808
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEECs7p2uQeJxui2_9deltalake.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.aw, !noalias !9370

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.ba, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8Hz2sPNgbCO_10datafusion9dataframe9DataFrameECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(336) %i.o) #51
          to label %bb.bb unwind label %bb.aw, !noalias !9370

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotEECs7p2uQeJxui2_9deltalake.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion5utils10ExpressionECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(112) %i.p) #51
end_hunk_5
begin_hunk_6_@_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder46___pymethod_when_not_matched_by_source_update__:bb.a
bb.ba:                                            ; preds = %bb.az, %bb.d
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52
  unreachable

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit, %bb.g
  %.val = load ptr, ptr %i.z, align 8, !noundef !4 ; 2 uses
  %i.ck = icmp eq ptr %.val, null
  br i1 %i.ck, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit30, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cl = getelementptr inbounds nuw i8, ptr %.val, i64 1072
  call void @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8 %i.cl), !noalias !10108
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit30

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit30: ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ay

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard15PyClassGuardMutNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderEEEB21_.exit: ; preds = %.body, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsb_NtCs7p2uQeJxui2_9deltalake5queryNtB5_14PyQueryBuilder20___pymethod_execute__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 16               ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [96 x i8], align 16               ; 8 uses
  %i.f = alloca [64 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.10 = alloca [48 x i8], align 8           ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = alloca [64 x i8], align 8                ; 8 uses
  %i.l = alloca [64 x i8], align 8                ; 5 uses
  %i.m = alloca [64 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr null, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @366, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.n, i64 noundef 1)
  %i.o = load i64, ptr %i.m, align 8, !range !10, !noundef !4
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.q, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit48

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10111
  %i.s = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs4_NtCs7p2uQeJxui2_9deltalake5queryNtB7_14PyQueryBuilderNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !10118
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i.i.i, !prof !651

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i.i.i: ; preds = %bb.c
  call void @_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE8try_initB1p_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.f, ptr noundef nonnull align 8 @_RNvNvXs4_NtCs7p2uQeJxui2_9deltalake5queryNtB7_14PyQueryBuilderNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT)
  %.pre.i.i.i = load i64, ptr %i.f, align 8, !range !10, !noalias !10111
  %i.u = trunc nuw i64 %.pre.i.i.i to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.u, label %.noexc35, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i._RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i, !prof !4560

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i._RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i: ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.v, align 8, !noalias !10111
  br label %_RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i

.noexc35:                                         ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i.i.i
  call void @_RNvNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @158, i64 noundef 14) #50
  unreachable

_RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i: ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i._RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i, %bb.c
  %i.w = phi ptr [ %.pre.i.i, %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i._RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXs4_NtCs7p2uQeJxui2_9deltalake5queryNtB7_14PyQueryBuilderNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %bb.c ]
  %i.x = load ptr, ptr %i.w, align 8, !noalias !10111, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10111
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !10111, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.i

_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.i: ; preds = %_RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i
  %i.aa = call noundef i32 @PyType_IsSubtype(ptr noundef %i.z, ptr noundef nonnull %i.x) #44, !noalias !10111
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %.noexc36, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i

.noexc36:                                         ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10121
  store i64 -9223372036854775808, ptr %i.g, align 8, !noalias !10121
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @158, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !10121
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 14, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !10121
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %1, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !10121
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @_RNvXs9_NtCsgbCypRs12E4_4pyo33errNtB5_5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_13DowncastErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10121
  br label %.thread

_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i: ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.i, %_RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ad = call noundef zeroext i1 @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.ac)
  br i1 %i.ad, label %.noexc38, label %bb.d

.noexc38:                                         ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @_RNvXsk_NtCsgbCypRs12E4_4pyo36pycellNtNtB7_3err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ae)
  br label %.thread

.thread:                                          ; preds = %.noexc36, %.noexc38
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.018.0.copyload = load ptr, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.018.0.copyload, ptr %i.ag, align 8
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.221.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit48

bb.d:                                             ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument16extract_argumentReKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @364, i64 noundef 3)
          to label %bb.e unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit

bb.e:                                             ; preds = %bb.d
  %i.aj = load i64, ptr %i.k, align 8, !range !10, !noundef !4
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.025.0.copyload = load ptr, ptr %i.al, align 8 ; 2 uses
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.526.0.copyload = load i64, ptr %.sroa.526.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.ak, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !10122)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10125
  store ptr %i.ah, ptr %i.d, align 8, !noalias !10125
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.025.0.copyload, ptr %i.am, align 8, !noalias !10125
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.526.0.copyload, ptr %i.an, align 8, !noalias !10125
  invoke void @_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtBW_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemIBS_NtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBW_6marker4SendEL_EENtNtCs7p2uQeJxui2_9deltalake5error11PythonErrorENCNvMs9_NtB5U_5queryNtB6K_14PyQueryBuilder7execute0EB5U_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
          to label %.noexc42 unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit

.noexc42:                                         ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10125
  %i.ao = load i64, ptr %i.e, align 16, !range !5720, !noalias !10125, !noundef !4 ; 2 uses
  %.not.i39 = icmp eq i64 %i.ao, -9223372036854775707
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !10125 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.as = load ptr, ptr %i.ar, align 16, !noalias !10125 ; 2 uses
  br i1 %.not.i39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.noexc42
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx.i, i64 72, i1 false), !noalias !10125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10125
  store i64 %i.ao, ptr %i.c, align 16, !noalias !10125
  %.sroa.2.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.aq, ptr %.sroa.2.0..sroa_idx.i40, align 8, !noalias !10125
  %.sroa.3.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.as, ptr %.sroa.3.0..sroa_idx.i41, align 16, !noalias !10125
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.at, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.c)
          to label %bb.i unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit

bb.h:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10125
  %i.au = invoke { ptr, ptr } @_RNvNtCs7p2uQeJxui2_9deltalake6reader24convert_stream_to_reader(ptr noundef nonnull %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.as)
          to label %bb.j unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit ; 2 uses

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.sroa.055.0.copyload = load ptr, ptr %i.at, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.556.0..sroa_idx, i64 48, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.av = extractvalue { ptr, ptr } %i.au, 0      ; 2 uses
  %i.aw = extractvalue { ptr, ptr } %i.au, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av), "nonnull"(ptr %i.aw) ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i64 0, ptr %i.ax, align 8, !alias.scope !10122, !noalias !10128
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.av, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !10122, !noalias !10128
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.aw, ptr %.sroa.520.0..sroa_idx.i, align 8, !alias.scope !10122, !noalias !10128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10129
  invoke void @_RNvXs5_NtCs3gECBqE52CY_10pyo3_arrow19record_batch_readerNtB5_19PyRecordBatchReaderNtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc46 unwind label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit

.noexc46:                                         ; preds = %bb.j
  %i.ay = load i64, ptr %i.b, align 8, !range !10, !noalias !10129, !noundef !4
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.8.copyload52 = load ptr, ptr %i.ba, align 8, !noalias !10133 ; 2 uses
  br i1 %i.az, label %.thread64, label %bb.l

.thread64:                                        ; preds = %.noexc46
  %.sroa.10.8..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.8..sroa_idx54, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10129
  br label %bb.k

bb.k:                                             ; preds = %.thread64, %bb.i
  %.sroa.5.0 = phi ptr [ %.sroa.055.0.copyload, %bb.i ], [ %.sroa.5.8.copyload52, %.thread64 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.bb, align 8
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.558.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, i64 48, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit47

bb.l:                                             ; preds = %.noexc46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10129
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.8.copyload52, ptr %i.bc, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit47

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit47: ; preds = %bb.l, %bb.k
  %storemerge = phi i64 [ 0, %bb.l ], [ 1, %bb.k ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.be = atomicrmw sub ptr %i.bd, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit48

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit48: ; preds = %bb.b, %bb.m, %.thread, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

bb.m:                                             ; preds = %bb.e
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.329.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.025.0.copyload, ptr %i.bf, align 8
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.526.0.copyload, ptr %.sroa.228.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bh = atomicrmw sub ptr %i.bg, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit48

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderEEEB1Y_.exit: ; preds = %bb.j, %bb.h, %bb.g, %bb.f, %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 release, align 8 ; 0 uses
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvMsb_NtCs7p2uQeJxui2_9deltalake5queryNtB5_14PyQueryBuilder21___pymethod_register__(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [96 x i8], align 16               ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = alloca [96 x i8], align 16               ; 5 uses
  %i.f = alloca [184 x i8], align 8               ; 10 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 16               ; 5 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [168 x i8], align 8               ; 9 uses
  %.sroa.512.sroa.7.i = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.59.sroa.8.i = alloca [40 x i8], align 8  ; 7 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  %i.l = alloca [17 x i8], align 1                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [64 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 13 uses
  %i.p = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.5.i.sroa.8 = alloca [40 x i8], align 8   ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 9 uses
  %i.r = alloca [64 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [64 x i8], align 8                ; 7 uses
  %i.u = alloca [64 x i8], align 8                ; 8 uses
  %i.v = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.12 = alloca [40 x i8], align 8           ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [64 x i8], align 8                ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @371, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.y, i64 noundef 2)
  %i.z = load i64, ptr %i.x, align 8, !range !10, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %i.ab, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 1, ptr %0, align 8
  br label %bb.at

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr null, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !10134)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10137
  %i.ad = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs4_NtCs7p2uQeJxui2_9deltalake5queryNtB7_14PyQueryBuilderNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !10142
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i.i.i, !prof !651

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i.i.i: ; preds = %bb.c
  call void @_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE8try_initB1p_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.r, ptr noundef nonnull align 8 @_RNvNvXs4_NtCs7p2uQeJxui2_9deltalake5queryNtB7_14PyQueryBuilderNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT)
  %.pre.i.i.i = load i64, ptr %i.r, align 8, !range !10, !noalias !10137
  %i.af = trunc nuw i64 %.pre.i.i.i to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  br i1 %i.af, label %.noexc56, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i._RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i, !prof !4560

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i._RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i: ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.ag, align 8, !noalias !10137
  br label %_RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i

.noexc56:                                         ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i.i.i
  call void @_RNvNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) @158, i64 noundef 14) #50
  unreachable

_RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i: ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i._RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i, %bb.c
  %i.ah = phi ptr [ %.pre.i.i, %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_.exit.i._RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXs4_NtCs7p2uQeJxui2_9deltalake5queryNtB7_14PyQueryBuilderNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %bb.c ]
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !10137, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10137
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !10137, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.i

_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.i: ; preds = %_RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i
  %i.al = call noundef i32 @PyType_IsSubtype(ptr noundef %i.ak, ptr noundef nonnull %i.ai) #44, !noalias !10137
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %.noexc57, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i

.noexc57:                                         ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10145
  store i64 -9223372036854775808, ptr %i.s, align 8, !noalias !10145
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @158, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !10145
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 14, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !10145
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %1, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !10145
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @_RNvXs9_NtCsgbCypRs12E4_4pyo33errNtB5_5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_13DowncastErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10145
  br label %.noexc59

_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i: ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.i, %_RNvXs_NtCs7p2uQeJxui2_9deltalake5queryNtB4_14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = call noundef zeroext i1 @_RNvXs3_NtNtCsgbCypRs12E4_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.an)
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @_RNvXsk_NtCsgbCypRs12E4_4pyo36pycellNtNtB7_3err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ap)
  br label %.noexc59

.body.thread113:                                  ; preds = %bb.p, %bb.an, %bb.ak, %bb.k, %bb.h, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread:                                     ; preds = %.noexc.i, %bb.aq, %.body.thread113
  %eh.lpad-body110 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread113 ], [ %eh.lpad-body.i, %.noexc.i ], [ %.pn111.i, %bb.aq ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8 ; 0 uses
  resume { ptr, i32 } %eh.lpad-body110

bb.e:                                             ; preds = %_RNvYNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 8
end_hunk_6
begin_hunk_7_@_RNvNvNvXsa_NtCs7p2uQeJxui2_9deltalake5mergeINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_14PyMergeBuilderEINtBI_9PyMethodsB1F_E10py_methods5ITEMSs2_10trampoline:bb.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXsa_NtCs7p2uQeJxui2_9deltalake5mergeINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_14PyMergeBuilderEINtBI_9PyMethodsB1F_E10py_methods5ITEMSs_10trampoline(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvMsb_NtCs7p2uQeJxui2_9deltalake5mergeNtB5_14PyMergeBuilder32___pymethod_when_matched_delete__, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.j, align 8
  %i.k = invoke fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_22fastcall_with_keywords0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #52
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.k
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXsa_NtCs7p2uQeJxui2_9deltalake5queryINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_14PyQueryBuilderEINtBI_9PyMethodsB1F_E10py_methods5ITEMS10trampoline(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvMsb_NtCs7p2uQeJxui2_9deltalake5queryNtB5_14PyQueryBuilder21___pymethod_register__, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.j, align 8
  %i.k = invoke fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_22fastcall_with_keywords0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #52
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.k
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXsa_NtCs7p2uQeJxui2_9deltalake5queryINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_14PyQueryBuilderEINtBI_9PyMethodsB1F_E10py_methods5ITEMSs0_10trampoline(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 8
  %i.b = alloca [64 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.11 = alloca [32 x i8], align 8           ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10301
  store ptr @156, ptr %i.h, align 8, !noalias !10301
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 30, ptr %i.i, align 8, !noalias !10301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10301
  %i.j = invoke noundef i32 @_RNvMNtNtCsgbCypRs12E4_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread49.i, !noalias !10301

.thread49.i:                                      ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.thread.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.j, ptr %i.g, align 4, !noalias !10301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10301
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10304
  invoke void @_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription28extract_arguments_tuple_dictNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @362, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull align 8 %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.l = load i64, ptr %i.d, align 8, !range !10, !noalias !10304, !noundef !4
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %.thread, label %bb.c

.thread:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load <2 x ptr>, ptr %i.n, align 8, !noalias !10301
  %.sroa.10.8..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.10.8.copyload10 = load ptr, ptr %.sroa.10.8..sroa_idx9, align 8, !noalias !10301
  %.sroa.11.8..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.8..sroa_idx11, i64 32, i1 false), !noalias !10301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10304
  br label %.invoke.i.sink.split

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10304
  invoke void @_RNvMs4_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion7sessionNtB5_19DeltaSessionContext3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10304
  invoke void @_RNvMNtCsgbCypRs12E4_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE27create_class_object_of_typeB15_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c, ptr noundef %0)
          to label %.noexc5 unwind label %bb.d

.noexc5:                                          ; preds = %.noexc4
  %i.p = load i64, ptr %i.b, align 8, !range !10, !noalias !10304, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.8.copyload = load ptr, ptr %i.r, align 8, !noalias !10301 ; 2 uses
  br i1 %i.q, label %.thread20, label %bb.f

.thread20:                                        ; preds = %.noexc5
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.9.8.copyload = load ptr, ptr %.sroa.9.8..sroa_idx, align 8, !noalias !10301
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.8.copyload = load ptr, ptr %.sroa.10.8..sroa_idx, align 8, !noalias !10301
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.8..sroa_idx, i64 32, i1 false), !noalias !10301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10304
  %i.s = insertelement <2 x ptr> poison, ptr %.sroa.5.8.copyload, i64 0
  %i.t = insertelement <2 x ptr> %i.s, ptr %.sroa.9.8.copyload, i64 1
  br label %.invoke.i.sink.split

bb.d:                                             ; preds = %.noexc4, %bb.c, %bb.b
  %i.u = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  %i.w = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.v)
          to label %bb.g unwind label %bb.e, !noalias !10301 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #52, !noalias !10301
  unreachable

bb.f:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10304
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10301
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10.i

bb.g:                                             ; preds = %bb.d
  %i.y = extractvalue { ptr, ptr } %i.w, 0        ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.w, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y), "nonnull"(ptr %i.z) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10301
  invoke void @_RNvMNtCsgbCypRs12E4_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noundef nonnull %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
          to label %.invoke.i unwind label %bb.h, !noalias !10301

.invoke.i.sink.split:                             ; preds = %.thread, %.thread20
  %.sroa.10.8.copyload.sink = phi ptr [ %.sroa.10.8.copyload, %.thread20 ], [ %.sroa.10.8.copyload10, %.thread ]
  %i.aa = phi <2 x ptr> [ %i.t, %.thread20 ], [ %i.o, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.737.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.737.0..sroa_idx.i25, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11, i64 32, i1 false), !noalias !10301
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !noalias !10301
  %.sroa.434.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store <2 x ptr> %i.aa, ptr %.sroa.434.0..sroa_idx.i26, align 8, !noalias !10301
  %.sroa.636.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.10.8.copyload.sink, ptr %.sroa.636.0..sroa_idx.i28, align 8, !noalias !10301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10301
  br label %.invoke.i

.invoke.i:                                        ; preds = %.invoke.i.sink.split, %bb.g
  %i.ab = phi ptr [ %i.e, %bb.g ], [ %.sroa.434.0..sroa_idx.i26, %.invoke.i.sink.split ]
  invoke void @_RNvMs0_NtNtCsgbCypRs12E4_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10.i unwind label %bb.h, !noalias !10301

bb.h:                                             ; preds = %.invoke.i, %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %.thread.i unwind label %bb.i, !noalias !10301

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10.i: ; preds = %bb.f, %.invoke.i
  %.sroa.0.0.i.i = phi ptr [ null, %.invoke.i ], [ %.sroa.5.8.copyload, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10301
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %.thread.i, %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10301
  unreachable

.thread.i:                                        ; preds = %bb.h, %.thread49.i
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.body unwind label %bb.i, !noalias !10301

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.thread.i, %bb.j
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #52
  unreachable

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10301
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXsa_NtCs7p2uQeJxui2_9deltalake5queryINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_14PyQueryBuilderEINtBI_9PyMethodsB1F_E10py_methods5ITEMSs_10trampoline(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #14 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %0, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvMsb_NtCs7p2uQeJxui2_9deltalake5queryNtB5_14PyQueryBuilder20___pymethod_execute__, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %i.j, align 8
  %i.k = invoke fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_22fastcall_with_keywords0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #52
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs2y6mmZ7bjoM_12tracing_core4span2IdINtB2_10EquivalentBq_E10equivalentCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #12 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !9045, !noundef !4
  %.val1 = load i64, ptr %1, align 8, !range !9045, !noundef !4
  %i.a = icmp eq i64 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNtCs7p2uQeJxui2_9deltalake6writerNtB2_13ReaderWrapperNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @403, i64 noundef 13)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @407, i64 noundef 6, ptr noundef nonnull @405, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @406)
  %i.c = call noundef zeroext i1 @_RNvMs1_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArraylENtB2_3Any7type_idCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @408, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyINtNtNtCs1N9T06jgEdt_11arrow_array5array10list_array16GenericListArrayxENtB2_3Any7type_idCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @409, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtCs7p2uQeJxui2_9deltalake10datafusion17LazyTableProviderNtB2_3Any7type_idBv_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @410, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtCs7p2uQeJxui2_9deltalake6writer24ExhaustedStreamGeneratorNtB2_3Any7type_idBv_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nonnull readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @411, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtCs7p2uQeJxui2_9deltalake6writer25ArrowStreamBatchGeneratorNtB2_3Any7type_idBv_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @412, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state12SessionStateNtB2_3Any7type_idCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @413, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtCsanCXJAiNsO_18datafusion_catalog6memory5table8MemTableNtB2_3Any7type_idCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @414, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCsbvkFyIu7lgC_4core3anyNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next9DeltaScanNtB2_3Any7type_idCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @415, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectNtB2_8CopySpec9clone_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 2432)) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2432 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXs2F_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6SelectNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2432) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2432) %0) #57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2432) %1, ptr noundef nonnull align 8 dereferenceable(2432) %i.a, i64 2432, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCsbvkFyIu7lgC_4core5clone6uninitNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeNtB2_8CopySpec9clone_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 56)) %1) unnamed_addr #1 {
end_hunk_7
begin_hunk_8_@_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10402
  invoke fastcc void @_RNvXs1t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(1400) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1400) %i.o) #57
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit unwind label %bb.e, !noalias !10398, !inline_history !10405

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 1400, i64 noundef 8) #44, !noalias !10398, !inline_history !10401
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1400) %i.n, ptr noundef nonnull align 8 dereferenceable(1400) %i.d, i64 1400, i1 false), !noalias !10402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10402
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.q, align 8
  store i8 1, ptr %0, align 8
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i8, ptr %i.r, align 2, !range !165, !noundef !4
  %.val1 = load i8, ptr %i.s, align 1, !range !190, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10406)
  %i.u = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprE13new_uninit_inCs7p2uQeJxui2_9deltalake(), !noalias !10406, !inline_history !10409 ; 4 uses
  %i.v = load ptr, ptr %i.t, align 8, !alias.scope !10406, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10410
  invoke fastcc void @_RNvXs1N_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_7SetExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2696) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2696) %i.v) #57
          to label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit unwind label %bb.g, !noalias !10406, !inline_history !10413

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef 2696, i64 noundef 8) #44, !noalias !10406, !inline_history !10409
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2696) %i.u, ptr noundef nonnull align 8 dereferenceable(2696) %i.c, i64 2696, i1 false), !noalias !10410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10410
  store ptr %i.u, ptr %i.f, align 8
  %i.y = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %bb.x unwind label %bb.w

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10417)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i8, ptr %i.aa, align 8, !range !86, !alias.scope !10417, !noalias !10414, !noundef !4
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecIBw_NtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.z)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 %i.ab, ptr %i.ac, align 8, !alias.scope !10414, !noalias !10417
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  store i8 3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

bb.i:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ae) #57
  store i8 4, ptr %0, align 8
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ag) #57
  store i8 5, ptr %0, align 8
  br label %bb.v

bb.k:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ai) #57
  store i8 6, ptr %0, align 8
  br label %bb.v

bb.l:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.ak) #57
  store i8 7, ptr %0, align 8
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.am, align 8           ; 4 uses
  %i.an = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableE13new_uninit_inCs7p2uQeJxui2_9deltalake() ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10419)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10422)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10425
  %i.ao = load i64, ptr %.val2, align 8, !range !11, !alias.scope !10427, !noalias !10428, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.ao, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2)
          to label %.noexc.i unwind label %bb.t

bb.o:                                             ; preds = %bb.m
  store i64 -9223372036854775808, ptr %i.b, align 8, !noalias !10425
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.o, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !range !11, !alias.scope !10427, !noalias !10428, !noundef !4
  %.not4.i.i.i = icmp eq i64 %i.aq, -9223372036854775808
  br i1 %.not4.i.i.i, label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit, label %bb.p

bb.p:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10425
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %bb.r unwind label %bb.q, !noalias !10428

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #51
          to label %bb.u unwind label %bb.s, !noalias !10428

bb.r:                                             ; preds = %bb.p
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.a, align 8, !noalias !10425
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i, i64 16, i1 false), !noalias !10419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10425
  br label %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit

bb.s:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !10428
  unreachable

bb.t:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.at, %bb.t ], [ %i.ar, %bb.q ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 48, i64 noundef 8) #44
  br label %common.resume

_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc.i, %bb.r
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %bb.r ], [ -9223372036854775808, %.noexc.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !10427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, i64 24, i1 false), !noalias !10419
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !10419
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !10419
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.au, align 8
  store i8 8, ptr %0, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.x, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5TableENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query5QueryENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query6SelectENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit
  ret void

bb.w:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(8) %i.f) #51
          to label %common.resume unwind label %bb.y

bb.x:                                             ; preds = %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SetExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %.val, ptr %i.aw, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val1, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.y, ptr %i.az, align 8
  store i8 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.y:                                             ; preds = %bb.w
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1N_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13DescribeTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr captures(address, read_provenance) %.0.val, ptr nofree readonly captures(address) %.8.val, ptr captures(address, read_provenance) %.0.val1, ptr nofree readonly captures(address) %.8.val3) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val), "nonnull"(ptr %.0.val1) ]
  %i.a = icmp eq ptr %.0.val, %.0.val1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10432)
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !10429, !noalias !10432, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10432, !noalias !10429, !noundef !4
  %i.f = icmp eq i64 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !10432, !noalias !10429, !nonnull !4, !noundef !4
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !10429, !noalias !10432, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = icmp eq i64 %i.c, 0
  br i1 %i.m, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  %.sroa.01.07.i.i = phi i64 [ %i.t, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sroa.01.07.i.i
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.01.07.i.i
  %.val.i.i = load ptr, ptr %i.n, align 8, !noalias !10434, !nonnull !4, !noundef !4 ; 2 uses
  %.val5.i.i = load ptr, ptr %i.o, align 8, !noalias !10434, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = icmp eq ptr %.val.i.i, %.val5.i.i
  br i1 %i.p, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 16
  %i.s = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.r), !noalias !10434
  br i1 %i.s, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.i.i
  %i.t = add nuw i64 %.sroa.01.07.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.t, %i.c
  br i1 %exitcond.not.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val1, i64 32
  %i.w = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.v)
  br i1 %i.w, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.a, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val), "nonnull"(ptr %.8.val3) ]
  %i.x = icmp eq ptr %.8.val, %.8.val3
  br i1 %i.x, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.b, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.f, %bb.d, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ true, %bb.d ], [ %i.bs, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.b ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10438)
  %i.y = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !10435, !noalias !10438, !nonnull !4, !noundef !4 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val3, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !10438, !noalias !10435, !nonnull !4, !noundef !4 ; 4 uses
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10443)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !10440, !noalias !10445, !noundef !4 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !10443, !noalias !10446, !noundef !4
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !10443, !noalias !10446, !nonnull !4, !noundef !4
  %i.al = load ptr, ptr %i.aj, align 8, !alias.scope !10440, !noalias !10445, !nonnull !4, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ao = icmp eq i64 %i.ae, 0
  br i1 %i.ao, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i
  %.sroa.01.07.i.i.i = phi i64 [ %i.av, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.01.07.i.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.01.07.i.i.i
  %.val.i.i.i = load ptr, ptr %i.ap, align 8, !noalias !10447, !nonnull !4, !noundef !4 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.aq, align 8, !noalias !10447, !nonnull !4, !noundef !4 ; 2 uses
  %i.ar = icmp eq ptr %.val.i.i.i, %.val5.i.i.i
  br i1 %i.ar, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.au = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.at), !noalias !10447
  br i1 %i.au, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i, %.lr.ph.i.i.i
  %i.av = add nuw i64 %.sroa.01.07.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.av, %i.ae
  br i1 %exitcond.not.i.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ay = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ax), !noalias !10448
  br i1 %i.ay, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !10435, !noalias !10438, !noundef !4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.8.val3, i64 32
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !10438, !noalias !10435, !noundef !4
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.8.val3, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !10438, !noalias !10435, !nonnull !4, !noundef !4
  %i.bg = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !10435, !noalias !10438, !nonnull !4, !noundef !4
  %i.bi = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bf, i64 noundef %i.ba), !noalias !10448
  br i1 %i.bi, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.8.val, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !10435, !noalias !10438, !noundef !4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.8.val3, i64 56
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !10438, !noalias !10435, !noundef !4
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.8.val3, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !10438, !noalias !10435, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !10435, !noalias !10438, !nonnull !4, !noundef !4
  %i.bs = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bp, i64 noundef %i.bk), !noalias !10448
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1R_NtCs4tdlwR1I4n2_7parquet5basicNtB6_11LogicalTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #19 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10449, !noundef !4 ; 4 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775791
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775807
  %i.d = icmp ugt i64 %i.a, -9223372036854775808
  %i.e = select i1 %i.d, i64 %i.c, i64 16         ; 2 uses
  %i.f = load i64, ptr %1, align 8, !range !10449, !noundef !4 ; 4 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775791
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, 9223372036854775807
  %i.i = icmp ugt i64 %i.f, -9223372036854775808
  %i.j = select i1 %i.i, i64 %i.h, i64 16
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.x, %bb.ab, %bb.z, %bb.aa, %bb.ac, %bb.w, %bb.u, %bb.v, %bb.s, %bb.p, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.t, %bb.q, %bb.r, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.bb, %bb.l ], [ true, %bb.c ], [ %i.bg, %bb.m ], [ false, %bb.d ], [ %i.bl, %bb.n ], [ false, %bb.e ], [ %i.bq, %bb.o ], [ false, %bb.f ], [ %i.bv, %bb.r ], [ false, %bb.g ], [ %i.br, %bb.q ], [ %i.cf, %bb.t ], [ %.mux, %bb.i ], [ false, %bb.p ], [ false, %bb.x ], [ false, %bb.s ], [ %i.aw, %bb.k ], [ %i.db, %bb.ac ], [ true, %bb.ab ], [ false, %bb.z ], [ false, %bb.v ], [ %i.cx, %bb.aa ], [ false, %bb.w ], [ false, %bb.u ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  switch i64 %i.e, label %bb.b [
    i64 4, label %bb.d
    i64 6, label %bb.e
    i64 7, label %bb.f
    i64 8, label %bb.g
    i64 14, label %bb.h
    i64 15, label %bb.i
    i64 16, label %bb.j
    i64 17, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i32, ptr %i.n, align 8, !noundef !4
  %i.p = icmp eq i32 %i.m, %i.o
  br i1 %i.p, label %bb.l, label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i8, ptr %i.q, align 8, !range !86, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i8, ptr %i.s, align 8, !range !86, !noundef !4
  %i.u = icmp eq i8 %i.r, %i.t
  br i1 %i.u, label %bb.m, label %bb.b

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i8, ptr %i.v, align 8, !range !86, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i8, ptr %i.x, align 8, !range !86, !noundef !4
  %i.z = icmp eq i8 %i.w, %i.y
  br i1 %i.z, label %bb.n, label %bb.b

bb.g:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !noundef !4
  %i.ae = icmp eq i8 %i.ab, %i.ad
  br i1 %i.ae, label %bb.o, label %bb.b

bb.h:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !range !86, !noundef !4
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i8, ptr %i.aj, align 8, !range !86, !noundef !4
  %i.al = trunc nuw i8 %i.ak to i1                ; 2 uses
  br i1 %i.ah, label %bb.p, label %bb.q

bb.i:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !11, !noundef !4
  %.not10 = icmp eq i64 %i.an, -9223372036854775808 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !11, !noundef !4
  %i.aq = icmp eq i64 %i.ap, -9223372036854775808 ; 2 uses
  %brmerge = or i1 %.not10, %i.aq
  %.mux = and i1 %.not10, %i.aq
  br i1 %brmerge, label %bb.b, label %bb.s

bb.j:                                             ; preds = %bb.c
  %.not = icmp eq i64 %i.a, -9223372036854775808
  %i.ar = icmp eq i64 %i.f, -9223372036854775808  ; 2 uses
  br i1 %.not, label %bb.v, label %bb.u

bb.k:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load i16, ptr %i.as, align 8, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i16, ptr %i.au, align 8, !noundef !4
  %i.aw = icmp eq i16 %i.at, %i.av
  br label %bb.b

bb.l:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 12
end_hunk_8
begin_hunk_9_@_RNvXs1u_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_4LikeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.g = load i8, ptr %i.f, align 1, !range !86, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.i = load i8, ptr %i.h, align 1, !range !86, !noundef !4
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.l = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.m = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.k, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.l) #57
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.o, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.q) #57
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8, !range !5062, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.t, 1114112
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i32, ptr %i.u, align 8, !range !5062, !noundef !4 ; 2 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.c, %bb.d, %bb.a, %bb.b, %bb.h
  %.sroa.0.0.shrunk = phi i1 [ %i.w, %bb.g ], [ false, %bb.c ], [ %i.x, %bb.h ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ]
  ret i1 %.sroa.0.0.shrunk

bb.g:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %i.t, %i.v
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %i.v, 1114112
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs22_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_7TryCastNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.d) #57
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #57
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs25_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_7AnalyzeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !86, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !86, !noundef !4
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.i, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.j) #57
  br i1 %i.k, label %bb.d, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.e

_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.k, %bb.j, %bb.i, %bb.h, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.f, %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ true, %bb.d ], [ false, %bb.a ], [ %i.bk, %bb.k ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.j ], [ false, %bb.f ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i ]
  ret i1 %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11114)
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !11111, !noalias !11114, !nonnull !4, !noundef !4 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !11114, !noalias !11111, !nonnull !4, !noundef !4 ; 4 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11119)
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !11116, !noalias !11121, !noundef !4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !11119, !noalias !11122, !noundef !4
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ac = load ptr, ptr %i.aa, align 8, !alias.scope !11119, !noalias !11122, !nonnull !4, !noundef !4
  %i.ad = load ptr, ptr %i.ab, align 8, !alias.scope !11116, !noalias !11121, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = icmp eq i64 %i.w, 0
  br i1 %i.ag, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i
  %.sroa.01.07.i.i.i = phi i64 [ %i.an, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i ], [ 0, %bb.g ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.sroa.01.07.i.i.i
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.01.07.i.i.i
  %.val.i.i.i = load ptr, ptr %i.ah, align 8, !noalias !11123, !nonnull !4, !noundef !4 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !11123, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = icmp eq ptr %.val.i.i.i, %.val5.i.i.i
  br i1 %i.aj, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.am = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.al), !noalias !11123
  br i1 %i.am, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i, %.lr.ph.i.i.i
  %i.an = add nuw i64 %.sroa.01.07.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.w
  br i1 %exitcond.not.i.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %.lr.ph.i.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aq = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ap), !noalias !11124
  br i1 %i.aq, label %bb.h, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !11111, !noalias !11114, !noundef !4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !11114, !noalias !11111, !noundef !4
  %i.av = icmp eq i64 %i.as, %i.au
  br i1 %i.av, label %bb.i, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !11114, !noalias !11111, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !11111, !noalias !11114, !nonnull !4, !noundef !4
  %i.ba = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ax, i64 noundef %i.as), !noalias !11124
  br i1 %i.ba, label %bb.j, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !11111, !noalias !11114, !noundef !4 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !11114, !noalias !11111, !noundef !4
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.k, label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !11114, !noalias !11111, !nonnull !4, !noundef !4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !11111, !noalias !11114, !nonnull !4, !noundef !4
  %i.bk = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bh, i64 noundef %i.bc), !noalias !11124
  br label %_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs2B_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_14WindowFunctionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(288) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val = load i64, ptr %i.a, align 16, !range !10, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val1 = load ptr, ptr %i.c, align 8            ; 4 uses
  %.val2 = load i64, ptr %i.b, align 16, !range !10, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.val3 = load ptr, ptr %i.d, align 8            ; 4 uses
  %i.e = icmp eq i64 %.val, %.val2
  br i1 %i.e, label %bb.b, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.f = trunc nuw i64 %.val to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1), "nonnull"(ptr %.val3) ]
  %i.g = icmp eq ptr %.val1, %.val3               ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  br i1 %i.g, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = tail call noundef zeroext i1 @_RNvXNtCs8VI8w5SIoU4_15datafusion_expr4udafNtB2_12AggregateUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  br i1 %i.j, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.m = tail call noundef zeroext i1 @_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr4udwfNtB4_9WindowUDFNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l)
  br i1 %i.m, label %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11128)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load i8, ptr %i.n, align 16, !range !86, !alias.scope !11125, !noalias !11128, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.q = load i8, ptr %i.p, align 16, !range !86, !alias.scope !11128, !noalias !11125, !noundef !4
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %bb.f, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load i64, ptr %i.s, align 16, !alias.scope !11125, !noalias !11128, !noundef !4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.v = load i64, ptr %i.u, align 16, !alias.scope !11128, !noalias !11125, !noundef !4
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.g, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !11128, !noalias !11125, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !11125, !noalias !11128, !nonnull !4, !noundef !4
  %i.ab = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.y, i64 noundef %i.t), !noalias !11130, !inline_history !11131
  br i1 %i.ab, label %bb.h, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !11125, !noalias !11128, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !11128, !noalias !11125, !noundef !4
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ai = load ptr, ptr %i.ah, align 16, !alias.scope !11128, !noalias !11125, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = load ptr, ptr %i.aj, align 16, !alias.scope !11125, !noalias !11128, !nonnull !4, !noundef !4
  %i.al = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ai, i64 noundef %i.ad), !noalias !11130, !inline_history !11131
  br i1 %i.al, label %bb.j, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.an = load i64, ptr %i.am, align 16, !alias.scope !11125, !noalias !11128, !noundef !4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ap = load i64, ptr %i.ao, align 16, !alias.scope !11128, !noalias !11125, !noundef !4
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.k, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !11128, !noalias !11125, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !11125, !noalias !11128, !nonnull !4, !noundef !4
  %i.av = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.au, ptr noundef nonnull %i.as, i64 noundef %i.an), !noalias !11130, !inline_history !11131
  br i1 %i.av, label %bb.l, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call fastcc noundef zeroext i1 @_RNvXs9_NtCs8VI8w5SIoU4_15datafusion_expr12window_frameNtB5_11WindowFrameNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(272) %1) #57, !inline_history !11131
  br i1 %i.aw, label %bb.m, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !11125, !noalias !11128, !align !140, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !11128, !noalias !11125, !align !140, !noundef !4 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null                 ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.bb, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.p

bb.o:                                             ; preds = %bb.m
  br i1 %i.bb, label %bb.q, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.n
  %i.bc = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ay, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ba) #57, !inline_history !11131
  br i1 %i.bc, label %bb.q, label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.be = load i8, ptr %i.bd, align 1, !range !241, !alias.scope !11125, !noalias !11128, !noundef !4 ; 2 uses
  %.not5.i = icmp eq i8 %i.be, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 257
  %i.bg = load i8, ptr %i.bf, align 1, !range !241, !alias.scope !11128, !noalias !11125, !noundef !4 ; 2 uses
  br i1 %.not5.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = icmp eq i8 %i.be, %i.bg
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.q
  %i.bi = icmp eq i8 %i.bg, 2
  br label %_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs2I_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_20WindowFunctionParamsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.r, %bb.a, %bb.s, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread, %bb.p, %bb.e, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %.sroa.0.0 = phi i1 [ false, %bb.e ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ false, %bb.p ], [ false, %bb.a ], [ false, %bb.g ], [ %i.bi, %bb.s ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %_RNvXs2v_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB6_24WindowFunctionDefinitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.thread ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.i ], [ %i.bh, %bb.r ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs2F_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_6SelectNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(2432) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2432) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [328 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i = alloca [56 x i8], align 8          ; 5 uses
  %.sroa.552 = alloca [320 x i8], align 8         ; 5 uses
  %.sroa.5.i = alloca [320 x i8], align 8         ; 4 uses
  %.sroa.458 = alloca [344 x i8], align 8         ; 3 uses
  %i.f = alloca [328 x i8], align 8               ; 4 uses
  %i.g = alloca [328 x i8], align 8               ; 4 uses
  %i.h = alloca [328 x i8], align 8               ; 4 uses
  %i.i = alloca [328 x i8], align 8               ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [64 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [328 x i8], align 8               ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [328 x i8], align 8               ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [328 x i8], align 8               ; 7 uses
  %i.u = alloca [328 x i8], align 8               ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 6 uses
  %i.y = alloca [64 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [336 x i8], align 8              ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [88 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2336
  call fastcc void @_RNvXs7_NtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_tokenNtB5_13AttachedTokenNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ad) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 2248 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !3, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.af, -9223372036854775807
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %.not.i = icmp eq i64 %i.af, -9223372036854775808
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae)
          to label %_RNvXsdB_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %i.l, align 8, !alias.scope !11132, !noalias !11135
  br label %_RNvXsdB_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

bb.e:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %i.ab, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXsdB_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_8DistinctNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1664 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !3169, !noundef !4 ; 3 uses
  %.not2 = icmp eq i64 %i.ah, 71
  br i1 %.not2, label %bb.m, label %bb.i

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3TopEECs7p2uQeJxui2_9deltalake.exit, %bb.h
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query3TopEECs7p2uQeJxui2_9deltalake.exit ], [ %i.ai, %bb.h ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs4lawaffTVVK_9sqlparser3ast7helpers14attached_token13AttachedTokenECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(88) %i.ac) #51
          to label %bb.ck unwind label %bb.cj

bb.h:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
end_hunk_9
begin_hunk_10_@_RNvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.bn = icmp eq i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.o, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !11226, !noalias !11223, !nonnull !4, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !11223, !noalias !11226, !nonnull !4, !noundef !4
  %i.bs = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.br, ptr noundef nonnull %i.bp, i64 noundef %i.bk), !noalias !11228, !inline_history !11229
  br i1 %i.bs, label %bb.p, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !11223, !noalias !11226, !nonnull !4, !noundef !4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !11226, !noalias !11223, !nonnull !4, !noundef !4 ; 2 uses
  %i.bx = icmp eq ptr %i.bu, %i.bw
  br i1 %i.bx, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ca = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.by, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.bz) #57, !noalias !11228, !inline_history !11229
  br label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11233)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !11230, !noalias !11233, !noundef !4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !alias.scope !11233, !noalias !11230, !noundef !4
  %i.cf = icmp eq i64 %i.cc, %i.ce
  br i1 %i.cf, label %bb.s, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !11233, !noalias !11230, !nonnull !4, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !11230, !noalias !11233, !nonnull !4, !noundef !4
  %bcmp.i22 = tail call i32 @bcmp(ptr nonnull %i.cj, ptr nonnull %i.ch, i64 %i.cc), !noalias !11235
  %i.ck = icmp eq i32 %bcmp.i22, 0
  br i1 %i.ck, label %bb.t, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !11230, !noalias !11233, !noundef !4 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !11233, !noalias !11230, !noundef !4
  %i.cp = icmp eq i64 %i.cm, %i.co
  br i1 %i.cp, label %bb.u, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.t
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !11233, !noalias !11230, !nonnull !4, !noundef !4
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !11230, !noalias !11233, !nonnull !4, !noundef !4
  %i.cu = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cr, i64 noundef %i.cm), !noalias !11235
  br label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.b
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val14 = load i64, ptr %i.cv, align 8, !noundef !4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val16 = load i64, ptr %i.cw, align 8, !noundef !4
  %i.cx = icmp eq i64 %.val14, %.val16
  br i1 %i.cx, label %bb.w, label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val15 = load ptr, ptr %i.cy, align 8, !nonnull !4, !noundef !4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val13 = load ptr, ptr %i.cz, align 8, !nonnull !4, !noundef !4
  %bcmp.i.i.i24 = tail call i32 @bcmp(ptr nonnull readonly %.val13, ptr nonnull readonly %.val15, i64 %.val14)
  %i.da = icmp eq i32 %bcmp.i.i.i24, 0
  br label %_RNvXsI_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_11SetVariableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCsanCXJAiNsO_18datafusion_catalog6memory5tableNtB5_8MemTableNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @439, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @419, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @416, ptr noalias noundef nonnull readonly captures(address, read_provenance) @420, i64 noundef 7, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @435, ptr noalias noundef nonnull readonly captures(address, read_provenance) @440, i64 noundef 11, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @436, ptr noalias noundef nonnull readonly captures(address, read_provenance) @441, i64 noundef 15, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @437, ptr noalias noundef nonnull readonly captures(address, read_provenance) @442, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @438)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread
  %.sroa.01.07 = phi i64 [ %i.h, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.07
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.07
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.val5 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %.val, %.val5
  br i1 %i.d, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.g = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.f)
  br i1 %i.g, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit._crit_edge

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit._crit_edge: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ true, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread ]
  ret i1 %.lcssa

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %.lr.ph, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit
  %i.h = add nuw i64 %.sroa.01.07, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %2
  br i1 %exitcond.not, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit._crit_edge, label %.lr.ph
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types4TypeEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #22 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.01.05 = phi i64 [ %i.e, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.05
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.05
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXsP_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs4tdlwR1I4n2_7parquet6schema5types4TypeEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) #57, !inline_history !11236 ; 2 uses
  %i.e = add nuw i64 %.sroa.01.05, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.e, %2
  %or.cond = select i1 %i.d, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.lcssa.ph = xor i1 %i.d, true
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ %.lcssa.ph, %._crit_edge.loopexit ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit.thread
  %.sroa.01.07 = phi i64 [ %i.h, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit.thread ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.07
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.01.07
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.val5 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %.val, %.val5
  br i1 %i.d, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit.thread, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit

_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.g = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.f) #57, !inline_history !11237
  br i1 %i.g, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit.thread, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit._crit_edge

_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit._crit_edge: ; preds = %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit.thread, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit ], [ true, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit.thread ]
  ret i1 %.lcssa

_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %.lr.ph, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit
  %i.h = add nuw i64 %.sroa.01.07, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %2
  br i1 %exitcond.not, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9
  %.sroa.01.011 = phi i64 [ %i.j, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9 ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.011 ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.01.011 ; 2 uses
  %.val = load i8, ptr %i.b, align 1, !noundef !4
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val5 = load ptr, ptr %i.d, align 8            ; 3 uses
  %.val6 = load i8, ptr %i.c, align 1, !noundef !4
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val7 = load ptr, ptr %i.e, align 8            ; 3 uses
  %.not.i = icmp eq i8 %.val, %.val6
  br i1 %.not.i, label %bb.b, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5), "nonnull"(ptr %.val7) ]
  %i.f = icmp eq ptr %.val5, %.val7
  br i1 %i.f, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.i = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.h)
  br i1 %i.i, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit, %.lr.ph, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit ], [ true, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9 ]
  ret i1 %.lcssa

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9: ; preds = %bb.b, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit
  %i.j = add nuw i64 %.sroa.01.011, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %2
  br i1 %exitcond.not, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs2d_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_9AlterTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(168) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.i.i = alloca [56 x i8], align 8        ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.01.i.i.i = alloca [56 x i8], align 8     ; 5 uses
  %.sroa.0.i.i.i = alloca [56 x i8], align 8      ; 5 uses
  %.sroa.4.i.i = alloca [56 x i8], align 8        ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.0.i = alloca [56 x i8], align 8          ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !11238)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.f = load i64, ptr %1, align 8, !range !1249, !alias.scope !11238, !noalias !11241, !noundef !4 ; 5 uses
  %i.g = icmp ne i64 %i.f, 4
  call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -3
  %i.i = icmp samesign ugt i64 %i.f, 2
  %i.j = select i1 %i.i, i64 %i.h, i64 1
  switch i64 %i.j, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i32, ptr %i.l, align 8, !range !5062, !alias.scope !11238, !noalias !11241, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !11241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i, i64 56, i1 false)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !11243)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.p = load i8, ptr %i.o, align 8, !range !86, !alias.scope !11246, !noalias !11247, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11249
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %.noexc1 unwind label %bb.m

.noexc1:                                          ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.s = load i32, ptr %i.r, align 8, !range !5062, !alias.scope !11246, !noalias !11247, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !11247
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 %i.s, ptr %i.v, align 8, !noalias !11249
  %.not.i.i = icmp eq i64 %i.f, 2
  br i1 %.not.i.i, label %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, label %bb.e

bb.e:                                             ; preds = %.noexc1
  call void @llvm.experimental.noalias.scope.decl(metadata !11250)
  %i.w = trunc nuw i64 %i.f to i1
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i.i), !noalias !11253
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.01.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %.noexc.i.i unwind label %bb.h, !noalias !11247

.noexc.i.i:                                       ; preds = %bb.f
  %i.aa = load i32, ptr %i.y, align 8, !range !5062, !alias.scope !11255, !noalias !11256, !noundef !4
  %.sroa.01.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.24..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !11256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.01.i.i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i), !noalias !11253
  br label %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i), !noalias !11253
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.0.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x)
          to label %.noexc4.i.i unwind label %bb.h, !noalias !11247

.noexc4.i.i:                                      ; preds = %bb.g
  %i.ab = load i32, ptr %i.y, align 8, !range !5062, !alias.scope !11255, !noalias !11256, !noundef !4
  %.sroa.0.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !11256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i), !noalias !11253
  br label %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.c) #51
          to label %.body unwind label %bb.i, !noalias !11247

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !11247
  unreachable

_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %.noexc4.i.i, %.noexc.i.i, %.noexc1
  %.sroa.5.sroa.4.0.i.i = phi i32 [ undef, %.noexc1 ], [ %i.aa, %.noexc.i.i ], [ %i.ab, %.noexc4.i.i ]
  %.sroa.0.0.i.i = phi i64 [ 2, %.noexc1 ], [ 1, %.noexc.i.i ], [ 0, %.noexc4.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  %.sroa.6.i.sroa.5.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %.sroa.6.i.sroa.5.4.copyload = load i32, ptr %.sroa.6.i.sroa.5.4..sroa_idx, align 4, !noalias !11257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11249
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !11258)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11261
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.ae)
          to label %.noexc2 unwind label %bb.m

.noexc2:                                          ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ag = load i32, ptr %i.af, align 8, !range !5062, !alias.scope !11263, !noalias !11264, !noundef !4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !noalias !11264
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %i.ag, ptr %i.aj, align 8, !noalias !11261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11261
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak)
          to label %_RNvXs31_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterTypeRenameValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.k, !noalias !11264

bb.k:                                             ; preds = %.noexc2
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.b) #51
          to label %.body unwind label %bb.l, !noalias !11264

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #52, !noalias !11264
  unreachable

_RNvXs31_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterTypeRenameValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %.noexc2
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ao = load i32, ptr %i.an, align 8, !range !5062, !alias.scope !11263, !noalias !11264, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.0.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ap, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11261
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %.sroa.06.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.aq = load i32, ptr %.sroa.06.i.sroa.5.0..sroa_idx, align 4, !noalias !11265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11261
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.d, %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.k, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %i.ac, %bb.h ], [ %i.al, %bb.k ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.d) #51
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %_RNvXs31_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterTypeRenameValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %.noexc
  %.sroa.11.sroa.0.0 = phi i32 [ undef, %.noexc ], [ undef, %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ %i.aq, %_RNvXs31_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterTypeRenameValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.133.0 = phi i8 [ undef, %.noexc ], [ %i.p, %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs31_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterTypeRenameValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
  %.sroa.13.0 = phi i32 [ undef, %.noexc ], [ %.sroa.6.i.sroa.5.4.copyload, %_RNvXs2H_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_17AlterTypeAddValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ], [ undef, %_RNvXs31_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_20AlterTypeRenameValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i ]
end_hunk_10
begin_hunk_11_@_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq
define internal fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !1869, !noundef !4 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !1869, !noundef !4
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %.lr.ph, %bb.r, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i, %.lr.ph.i.i.i28, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.y, %bb.a, %bb.o, %bb.n, %bb.m, %bb.ao, %bb.an, %bb.al, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.l, %bb.k, %bb.ad, %bb.j, %bb.i, %bb.h, %bb.z, %bb.b, %bb.ap, %bb.am, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.ag, %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.m ], [ %i.ei, %bb.aa ], [ %.mux, %bb.y ], [ false, %bb.b ], [ true, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i ], [ true, %bb.n ], [ %i.n, %bb.c ], [ %i.s, %bb.d ], [ %i.x, %bb.e ], [ %i.ac, %bb.f ], [ %i.ah, %bb.g ], [ false, %bb.z ], [ %i.el, %bb.ab ], [ true, %bb.h ], [ %i.eo, %bb.ac ], [ false, %bb.j ], [ %i.ew, %bb.ae ], [ true, %bb.i ], [ true, %bb.ad ], [ %i.ez, %bb.af ], [ true, %bb.k ], [ %i.fc, %bb.ag ], [ true, %bb.ao ], [ %i.fh, %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ true, %bb.l ], [ false, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ false, %bb.o ], [ %i.ft, %bb.ah ], [ false, %bb.a ], [ %i.fy, %bb.ai ], [ false, %bb.s ], [ %i.gd, %bb.aj ], [ false, %bb.t ], [ %i.gi, %bb.ak ], [ false, %bb.u ], [ false, %bb.w ], [ %i.gq, %bb.am ], [ false, %bb.v ], [ false, %bb.an ], [ %i.hb, %bb.ap ], [ true, %bb.al ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i ], [ false, %.lr.ph.i.i.i28 ], [ true, %.lr.ph ], [ false, %tailrecurse ], [ false, %bb.r ]
  ret i1 %.sroa.0.0.shrunk

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i8 [ %i.fm, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr3376 = phi ptr [ %i.fl, %tailrecurse ], [ %1, %bb.a ] ; 33 uses
  %.tr75 = phi ptr [ %i.fj, %tailrecurse ], [ %0, %bb.a ] ; 33 uses
  switch i8 %i.d, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit [
    i8 13, label %bb.b
    i8 16, label %bb.c
    i8 17, label %bb.d
    i8 18, label %bb.e
    i8 19, label %bb.f
    i8 21, label %bb.g
    i8 27, label %bb.h
    i8 28, label %bb.i
    i8 29, label %bb.j
    i8 30, label %bb.k
    i8 31, label %bb.l
    i8 32, label %bb.m
    i8 33, label %bb.o
    i8 34, label %bb.r
    i8 35, label %bb.s
    i8 36, label %bb.t
    i8 37, label %bb.u
    i8 38, label %bb.v
    i8 39, label %bb.w
    i8 40, label %bb.x
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !165, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !165, !noundef !4
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.y, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !165, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !165, !noundef !4
  %i.n = icmp eq i8 %i.k, %i.m
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !165, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !165, !noundef !4
  %i.s = icmp eq i8 %i.p, %i.r
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !165, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !165, !noundef !4
  %i.x = icmp eq i8 %i.u, %i.w
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !241, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !241, !noundef !4
  %i.ac = icmp eq i8 %i.z, %i.ab
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr75, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %.tr3376, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noundef !4
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ab

bb.i:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ac

bb.j:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.tr75, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.tr3376, i64 4
  %i.av = load i32, ptr %i.au, align 4, !noundef !4
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.ad, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.af

bb.l:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ag

bb.m:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %.val = load ptr, ptr %i.bh, align 8, !nonnull !4, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr75, i64 16
  %.val20 = load i64, ptr %i.bj, align 8, !noundef !4 ; 3 uses
  %.val21 = load ptr, ptr %i.bi, align 8, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr3376, i64 16
  %.val22 = load i64, ptr %i.bk, align 8, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11358)
  %i.bn = icmp eq i64 %.val20, %.val22
  br i1 %i.bn, label %bb.n, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bo = icmp eq i64 %.val20, 0
  br i1 %i.bo, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i
  %.sroa.01.07.i.i.i = phi i64 [ %i.bv, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i ], [ 0, %bb.n ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.01.07.i.i.i
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.sroa.01.07.i.i.i
  %.val.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !11355, !noalias !11358, !nonnull !4, !noundef !4 ; 2 uses
  %.val5.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !11358, !noalias !11355, !nonnull !4, !noundef !4 ; 2 uses
  %i.br = icmp eq ptr %.val.i.i.i, %.val5.i.i.i
  br i1 %i.br, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.val5.i.i.i, i64 16
  %i.bu = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.bt), !noalias !11360
  br i1 %i.bu, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i, %.lr.ph.i.i.i
  %i.bv = add nuw nsw i64 %.sroa.01.07.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bv, %.val20
  br i1 %exitcond.not.i.i.i, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i

bb.o:                                             ; preds = %.lr.ph
  %i.bw = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %.val23 = load ptr, ptr %i.bw, align 8, !nonnull !4, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %.tr75, i64 16
  %.val24 = load i64, ptr %i.by, align 8, !noundef !4 ; 3 uses
  %.val25 = load ptr, ptr %i.bx, align 8, !nonnull !4, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr3376, i64 16
  %.val26 = load i64, ptr %i.bz, align 8, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %.val23, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11364)
  %i.cc = icmp eq i64 %.val24, %.val26
  br i1 %i.cc, label %bb.p, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.cd = icmp eq i64 %.val24, 0
  br i1 %i.cd, label %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %bb.p, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9.i.i.i
  %.sroa.01.011.i.i.i = phi i64 [ %i.cm, %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9.i.i.i ], [ 0, %bb.p ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %.sroa.01.011.i.i.i ; 2 uses
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %.sroa.01.011.i.i.i ; 2 uses
  %.val.i.i.i29 = load i8, ptr %i.ce, align 1, !alias.scope !11361, !noalias !11364, !noundef !4
  %i.cg = getelementptr i8, ptr %i.ce, i64 8
  %.val5.i.i.i30 = load ptr, ptr %i.cg, align 8, !alias.scope !11361, !noalias !11364 ; 3 uses
  %.val6.i.i.i = load i8, ptr %i.cf, align 1, !alias.scope !11364, !noalias !11361, !noundef !4
  %i.ch = getelementptr i8, ptr %i.cf, i64 8
  %.val7.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !11364, !noalias !11361 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %.val.i.i.i29, %.val6.i.i.i
  br i1 %.not.i.i.i.i, label %bb.q, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph.i.i.i28
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i.i.i30), "nonnull"(ptr %.val7.i.i.i) ]
  %i.ci = icmp eq ptr %.val5.i.i.i30, %.val7.i.i.i
  br i1 %i.ci, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9.i.i.i, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %.val5.i.i.i30, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %.val7.i.i.i, i64 16
  %i.cl = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ck), !noalias !11366
  br i1 %i.cl, label %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9.i.i.i, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9.i.i.i: ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i, %bb.q
  %i.cm = add nuw nsw i64 %.sroa.01.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i31 = icmp eq i64 %i.cm, %.val24
  br i1 %exitcond.not.i.i.i31, label %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i.i28

bb.r:                                             ; preds = %.lr.ph
  %i.cn = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !4, !noundef !4
  %i.cp = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !4, !noundef !4
  %i.cr = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq) #57
  br i1 %i.cr, label %tailrecurse, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph
  %i.cs = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !4
  %i.cw = icmp eq i8 %i.ct, %i.cv
  br i1 %i.cw, label %bb.ah, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cx = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !4
  %i.cz = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !noundef !4
  %i.db = icmp eq i8 %i.cy, %i.da
  br i1 %i.db, label %bb.ai, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.df = load i8, ptr %i.de, align 1, !noundef !4
  %i.dg = icmp eq i8 %i.dd, %i.df
  br i1 %i.dg, label %bb.aj, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.dh = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !noundef !4
  %i.dl = icmp eq i8 %i.di, %i.dk
  br i1 %i.dl, label %bb.ak, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %.lr.ph
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !range !86, !noundef !4
  %i.do = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !range !86, !noundef !4
  %i.dq = icmp eq i8 %i.dn, %i.dp
  br i1 %i.dq, label %bb.al, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %.lr.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dv = icmp eq ptr %i.ds, %i.du
  br i1 %i.dv, label %bb.ao, label %bb.an

bb.y:                                             ; preds = %bb.b
  %i.dw = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.dx, null                 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !noundef !4 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null                 ; 2 uses
  %brmerge = or i1 %.not, %i.ea
  %.mux = and i1 %.not, %i.ea
  br i1 %brmerge, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw i8, ptr %.tr75, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %.tr3376, i64 16
  %i.ed = load i64, ptr %i.eb, align 8, !noundef !4 ; 2 uses
  %i.ee = load i64, ptr %i.ec, align 8, !noundef !4
  %i.ef = icmp eq i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.aa, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.z
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.eh, ptr nonnull %i.eg, i64 %i.ed)
  %i.ei = icmp eq i32 %bcmp, 0
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.h
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.el = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ej, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ek)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.eo = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.em, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.en)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.j
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.et = icmp eq ptr %i.eq, %i.es
  br i1 %i.et, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ew = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ev)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.k
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.ez = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ey)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.l
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.fc = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fb)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %_RNvXs8_NtCsbvkFyIu7lgC_4core5tupleTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtB7_3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread9.i.i.i, %bb.p
  %i.fd = getelementptr inbounds nuw i8, ptr %.tr75, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !range !86, !noundef !4
  %i.ff = getelementptr inbounds nuw i8, ptr %.tr3376, i64 1
  %i.fg = load i8, ptr %i.ff, align 1, !range !86, !noundef !4
  %i.fh = icmp eq i8 %i.fe, %i.fg
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %bb.r
  %i.fi = getelementptr inbounds nuw i8, ptr %.tr75, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.tr3376, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.fm = load i8, ptr %i.fj, align 8, !range !1869, !noundef !4 ; 2 uses
  %i.fn = load i8, ptr %i.fl, align 8, !range !1869, !noundef !4
  %i.fo = icmp eq i8 %i.fm, %i.fn
  br i1 %i.fo, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.s
  %i.fp = getelementptr inbounds nuw i8, ptr %.tr75, i64 2
  %i.fq = load i8, ptr %i.fp, align 2, !noundef !4
  %i.fr = getelementptr inbounds nuw i8, ptr %.tr3376, i64 2
  %i.fs = load i8, ptr %i.fr, align 2, !noundef !4
  %i.ft = icmp eq i8 %i.fq, %i.fs
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.t
  %i.fu = getelementptr inbounds nuw i8, ptr %.tr75, i64 2
  %i.fv = load i8, ptr %i.fu, align 2, !noundef !4
  %i.fw = getelementptr inbounds nuw i8, ptr %.tr3376, i64 2
  %i.fx = load i8, ptr %i.fw, align 2, !noundef !4
  %i.fy = icmp eq i8 %i.fv, %i.fx
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.u
  %i.fz = getelementptr inbounds nuw i8, ptr %.tr75, i64 2
  %i.ga = load i8, ptr %i.fz, align 2, !noundef !4
  %i.gb = getelementptr inbounds nuw i8, ptr %.tr3376, i64 2
  %i.gc = load i8, ptr %i.gb, align 2, !noundef !4
  %i.gd = icmp eq i8 %i.ga, %i.gc
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.v
  %i.ge = getelementptr inbounds nuw i8, ptr %.tr75, i64 2
  %i.gf = load i8, ptr %i.ge, align 2, !noundef !4
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr3376, i64 2
  %i.gh = load i8, ptr %i.gg, align 2, !noundef !4
  %i.gi = icmp eq i8 %i.gf, %i.gh
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.al:                                            ; preds = %bb.w
  %i.gj = getelementptr inbounds nuw i8, ptr %.tr75, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.tr3376, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.gn = icmp eq ptr %i.gk, %i.gm
  br i1 %i.gn, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.go = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gq = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.go, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gp)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.x
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
end_hunk_11
begin_hunk_12_@_RNvXsK_CsjyY8HP3IvQ6_12object_storeNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ap, ptr %i.b, align 8
  %i.aq = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @627, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @204, i64 noundef 4, ptr noundef nonnull %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @443, ptr noalias noundef nonnull readonly captures(address, read_provenance) @469, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @614)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.a, align 8
  %i.at = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @628, i64 noundef 23, ptr noalias noundef nonnull readonly captures(address, read_provenance) @616, i64 noundef 5, ptr noundef nonnull %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @406, ptr noalias noundef nonnull readonly captures(address, read_provenance) @629, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.s, %bb.c ], [ %i.v, %bb.d ], [ %i.w, %bb.e ], [ %i.y, %bb.f ], [ %i.aa, %bb.g ], [ %i.ad, %bb.h ], [ %i.ag, %bb.i ], [ %i.aj, %bb.j ], [ %i.ak, %bb.k ], [ %i.an, %bb.l ], [ %i.aq, %bb.m ], [ %i.at, %bb.n ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsbvkFyIu7lgC_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @630, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !3432, !noundef !4 ; 3 uses
  %i.b = icmp ne i64 %i.a, 31
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -11
  %i.d = icmp samesign ugt i64 %i.a, 10
  %i.e = select i1 %i.d, i64 %i.c, i64 20         ; 2 uses
  %i.f = load i64, ptr %1, align 16, !range !3432, !noundef !4 ; 3 uses
  %i.g = icmp ne i64 %i.f, 31
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nsw i64 %i.f, -11
  %i.i = icmp samesign ugt i64 %i.f, 10
  %i.j = select i1 %i.i, i64 %i.h, i64 20
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse.backedge
  %i.l = phi i64 [ %i.em, %tailrecurse.backedge ], [ %i.e, %bb.a ]
  %.tr1591 = phi ptr [ %.tr15.be, %tailrecurse.backedge ], [ %1, %bb.a ] ; 41 uses
  %.tr90 = phi ptr [ %.tr.be, %tailrecurse.backedge ], [ %0, %bb.a ] ; 41 uses
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.m
    i64 9, label %bb.n
    i64 10, label %bb.w
    i64 11, label %bb.x
    i64 12, label %bb.y
    i64 13, label %bb.ah
    i64 14, label %bb.ai
    i64 15, label %bb.aj
    i64 16, label %bb.as
    i64 17, label %bb.at
    i64 18, label %bb.au
    i64 19, label %bb.av
    i64 20, label %bb.aw
    i64 21, label %bb.ax
    i64 22, label %bb.ay
    i64 23, label %bb.az
    i64 24, label %bb.ba
  ]

_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse.backedge, %bb.af, %bb.ab, %bb.z, %bb.aa, %bb.ad, %bb.ae, %bb.ag, %bb.ba, %bb.bb, %bb.bc, %bb.be, %bb.bf, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit, %bb.a, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.aj, %bb.v, %bb.u, %bb.t, %bb.s, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.q, %bb.o, %bb.n, %bb.l, %._crit_edge, %bb.j, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ai, %bb.ah, %bb.x, %bb.w, %bb.m, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %bb.c ], [ %i.r, %bb.d ], [ %i.u, %bb.e ], [ %i.x, %bb.f ], [ %i.aa, %bb.g ], [ %i.ad, %bb.h ], [ %i.ag, %bb.i ], [ false, %bb.an ], [ %i.bj, %bb.m ], [ false, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit ], [ %i.dn, %bb.w ], [ %i.dq, %bb.x ], [ false, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i.i ], [ %i.ev, %bb.ah ], [ %i.ey, %bb.ai ], [ false, %bb.al ], [ %i.gq, %bb.as ], [ %i.gt, %bb.at ], [ %i.gw, %bb.au ], [ %i.gz, %bb.av ], [ %i.ha, %bb.aw ], [ %i.hd, %bb.ax ], [ %i.hi, %bb.ay ], [ %i.hl, %bb.az ], [ true, %bb.aq ], [ true, %._crit_edge ], [ %i.bg, %bb.l ], [ false, %bb.j ], [ false, %bb.n ], [ true, %bb.o ], [ %i.dk, %bb.v ], [ false, %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i ], [ false, %bb.s ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.q ], [ %i.gn, %bb.ar ], [ false, %bb.ao ], [ false, %bb.ak ], [ false, %bb.aj ], [ false, %bb.ap ], [ false, %bb.a ], [ false, %bb.ba ], [ false, %bb.bc ], [ false, %bb.bb ], [ false, %bb.af ], [ false, %bb.ae ], [ false, %bb.ad ], [ false, %bb.ab ], [ false, %bb.aa ], [ false, %bb.be ], [ false, %bb.z ], [ false, %tailrecurse.backedge ], [ true, %bb.ag ], [ true, %bb.bf ]
  ret i1 %.sroa.0.0.shrunk

bb.b:                                             ; preds = %.lr.ph
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.tr90, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.tr1591, i64 8
  %i.o = tail call fastcc noundef zeroext i1 @_RNvXs19_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_10ProjectionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.tr90, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.tr1591, i64 16
  %i.r = tail call fastcc noundef zeroext i1 @_RNvXs1m_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6FilterNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.p, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(128) %i.q) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.tr90, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.tr1591, i64 8
  %i.u = tail call fastcc noundef zeroext i1 @_RNvXs1t_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6WindowNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.tr90, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.tr1591, i64 8
  %i.x = tail call fastcc noundef zeroext i1 @_RNvXs2z_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_9AggregateNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.w) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr90, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.tr1591, i64 8
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvXs2F_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4SortNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr90, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr1591, i64 16
  %i.ad = tail call fastcc noundef zeroext i1 @_RNvXs2M_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_4JoinNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ab, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.ac) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr90, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.tr1591, i64 8
  %i.ag = tail call fastcc noundef zeroext i1 @_RNvXs1A_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_11RepartitionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12279)
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr90, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !12276, !noalias !12279, !noundef !4 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr1591, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !12279, !noalias !12276, !noundef !4
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.k, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %.tr1591, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !12279, !noalias !12276, !nonnull !4, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr90, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !12276, !noalias !12279, !nonnull !4, !noundef !4
  %.not115.not = icmp eq i64 %i.ai, 0
  br i1 %.not115.not, label %._crit_edge, label %.lr.ph117

.lr.ph117:                                        ; preds = %bb.k, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit.thread
  %.sroa.01.0.i116 = phi i64 [ %i.ay, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit.thread ], [ 0, %bb.k ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.sroa.01.0.i116
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.01.0.i116
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12284)
  %i.as = load ptr, ptr %i.aq, align 8, !alias.scope !12281, !noalias !12286, !nonnull !4, !noundef !4 ; 2 uses
  %i.at = load ptr, ptr %i.ar, align 8, !alias.scope !12284, !noalias !12287, !nonnull !4, !noundef !4 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit.thread, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit

_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit: ; preds = %.lr.ph117
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = tail call fastcc noundef zeroext i1 @_RNvXsK_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.av, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %i.aw) #57, !noalias !12288, !inline_history !12289
  br i1 %i.ax, label %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit.thread, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %.lr.ph117, %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit
  %i.ay = add nuw i64 %.sroa.01.0.i116, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.ay, %i.ai
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph117

._crit_edge:                                      ; preds = %_RNvXsQ_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4plan11LogicalPlanEINtB5_10ArcEqIdentBG_NtNtB7_5alloc6GlobalE2neCs7p2uQeJxui2_9deltalake.exit.thread, %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.tr90, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !12276, !noalias !12279, !nonnull !4, !noundef !4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.tr1591, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !12279, !noalias !12276, !nonnull !4, !noundef !4 ; 2 uses
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bg = tail call fastcc noundef zeroext i1 @_RNvXse_NtCsjhHCjzi9uUI_17datafusion_common8dfschemaNtB5_8DFSchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bf) #57, !noalias !12290, !inline_history !12291
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr90, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr1591, i64 8
  %i.bj = tail call noundef zeroext i1 @_RNvXse_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_9TableScanNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.bi)
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr90, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr1591, i64 8
  %.val = load ptr, ptr %i.bk, align 8            ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr90, i64 16
  %.val2 = load i8, ptr %i.bm, align 8, !range !86, !noundef !4
  %.val3 = load ptr, ptr %i.bl, align 8           ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr1591, i64 16
  %.val4 = load i8, ptr %i.bn, align 8, !range !86, !noundef !4
  %i.bo = icmp eq i8 %.val2, %.val4
  br i1 %i.bo, label %bb.o, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val3) ]
  %i.bp = icmp eq ptr %.val, %.val3
  br i1 %i.bp, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12295)
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !12292, !noalias !12295, !nonnull !4, !noundef !4 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val3, i64 64
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !12295, !noalias !12292, !nonnull !4, !noundef !4 ; 4 uses
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12300)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !12297, !noalias !12302, !noundef !4 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !12300, !noalias !12303, !noundef !4
  %i.bz = icmp eq i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.r, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cc = load ptr, ptr %i.ca, align 8, !alias.scope !12300, !noalias !12303, !nonnull !4, !noundef !4
  %i.cd = load ptr, ptr %i.cb, align 8, !alias.scope !12297, !noalias !12302, !nonnull !4, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = icmp eq i64 %i.bw, 0
  br i1 %i.cg, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.r, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i
  %.sroa.01.07.i.i.i.i = phi i64 [ %i.cn, %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i ], [ 0, %bb.r ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.sroa.01.07.i.i.i.i
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.sroa.01.07.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.ch, align 8, !noalias !12304, !nonnull !4, !noundef !4 ; 2 uses
  %.val5.i.i.i.i = load ptr, ptr %i.ci, align 8, !noalias !12304, !nonnull !4, !noundef !4 ; 2 uses
  %i.cj = icmp eq ptr %.val.i.i.i.i, %.val5.i.i.i.i
  br i1 %i.cj, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i.i

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 16
  %i.cm = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.cl), !noalias !12304
  br i1 %i.cm, label %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cn = add nuw i64 %.sroa.01.07.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cn, %i.bw
  br i1 %exitcond.not.i.i.i.i, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i: ; preds = %_RNvXsR_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2neCs7p2uQeJxui2_9deltalake.exit.thread.i.i.i.i, %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cq = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.co, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cp), !noalias !12305
  br i1 %i.cq, label %bb.s, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i, %bb.p
  %i.cr = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !12292, !noalias !12295, !noundef !4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.val3, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !12295, !noalias !12292, !noundef !4
  %i.cv = icmp eq i64 %i.cs, %i.cu
  br i1 %i.cv, label %bb.t, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.s
  %i.cw = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !12295, !noalias !12292, !nonnull !4, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !12292, !noalias !12295, !nonnull !4, !noundef !4
  %i.da = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.cz, ptr noundef nonnull %i.cx, i64 noundef %i.cs), !noalias !12305
  br i1 %i.da, label %bb.u, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !12292, !noalias !12295, !noundef !4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val3, i64 56
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !12295, !noalias !12292, !noundef !4
  %i.df = icmp eq i64 %i.dc, %i.de
  br i1 %i.df, label %bb.v, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %bb.u
  %i.dg = getelementptr inbounds nuw i8, ptr %.val3, i64 48
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !12295, !noalias !12292, !nonnull !4, !noundef !4
  %i.di = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !12292, !noalias !12295, !nonnull !4, !noundef !4
  %i.dk = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dh, i64 noundef %i.dc), !noalias !12305
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %.lr.ph
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr90, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr1591, i64 8
  %i.dn = tail call fastcc noundef zeroext i1 @_RNvXs2R_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_8SubqueryNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.dm) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %.lr.ph
  %i.do = getelementptr inbounds nuw i8, ptr %.tr90, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.tr1591, i64 8
  %i.dq = tail call fastcc noundef zeroext i1 @_RNvXs1g_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_13SubqueryAliasNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.do, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.dp) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %.lr.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %.tr90, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.tr1591, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12309)
  %i.dt = getelementptr inbounds nuw i8, ptr %.tr90, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !12306, !noalias !12309, !align !140, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.du, null
  %i.dv = getelementptr inbounds nuw i8, ptr %.tr1591, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !alias.scope !12309, !noalias !12306, !align !140, !noundef !4 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null                 ; 2 uses
  br i1 %.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %i.dx, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ab

bb.aa:                                            ; preds = %bb.y
  br i1 %i.dx, label %bb.ac, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.z
  %i.dy = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.du, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.dw) #57, !noalias !12311, !inline_history !12312
  br i1 %i.dy, label %bb.ac, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %.tr90, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !alias.scope !12306, !noalias !12309, !align !140, !noundef !4 ; 2 uses
  %.not5.i = icmp eq ptr %i.ea, null
  %i.eb = getelementptr inbounds nuw i8, ptr %.tr1591, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !12309, !noalias !12306, !align !140, !noundef !4 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null                 ; 2 uses
  br i1 %.not5.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.ed, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.ed, label %bb.ag, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %bb.ad
  %i.ee = tail call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ea, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ec) #57, !noalias !12311, !inline_history !12312
  br i1 %i.ee, label %bb.ag, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ef = load ptr, ptr %i.dr, align 8, !alias.scope !12306, !noalias !12309, !nonnull !4, !noundef !4 ; 2 uses
  %i.eg = load ptr, ptr %i.ds, align 8, !alias.scope !12309, !noalias !12306, !nonnull !4, !noundef !4 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.bf, %bb.ag
  %.pn = phi ptr [ %i.ef, %bb.ag ], [ %i.ik, %bb.bf ]
  %.pn118 = phi ptr [ %i.eg, %bb.ag ], [ %i.im, %bb.bf ]
  %.tr15.be = getelementptr inbounds nuw i8, ptr %.pn118, i64 16 ; 2 uses
  %.tr.be = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 2 uses
  %i.ei = load i64, ptr %.tr.be, align 16, !range !3432, !noundef !4 ; 3 uses
  %i.ej = icmp ne i64 %i.ei, 31
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = add nsw i64 %i.ei, -11
  %i.el = icmp samesign ugt i64 %i.ei, 10
  %i.em = select i1 %i.el, i64 %i.ek, i64 20      ; 2 uses
  %i.en = load i64, ptr %.tr15.be, align 16, !range !3432, !noundef !4 ; 3 uses
  %i.eo = icmp ne i64 %i.en, 31
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = add nsw i64 %i.en, -11
  %i.eq = icmp samesign ugt i64 %i.en, 10
  %i.er = select i1 %i.eq, i64 %i.ep, i64 20
  %i.es = icmp eq i64 %i.em, %i.er
  br i1 %i.es, label %.lr.ph, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %.lr.ph
  %i.et = getelementptr inbounds nuw i8, ptr %.tr90, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %.tr1591, i64 8
  %i.ev = tail call fastcc noundef zeroext i1 @_RNvXs2_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan9statementNtB5_9StatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.et, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.eu) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %.lr.ph
  %i.ew = getelementptr inbounds nuw i8, ptr %.tr90, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.tr1591, i64 8
  %i.ey = tail call fastcc noundef zeroext i1 @_RNvXs14_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_6ValuesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ew, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ex) #57
  br label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12316)
  %i.ez = getelementptr inbounds nuw i8, ptr %.tr90, i64 48
  %i.fa = load i8, ptr %i.ez, align 8, !range !86, !alias.scope !12313, !noalias !12316, !noundef !4
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr1591, i64 48
  %i.fc = load i8, ptr %i.fb, align 8, !range !86, !alias.scope !12316, !noalias !12313, !noundef !4
  %i.fd = icmp eq i8 %i.fa, %i.fc
  br i1 %i.fd, label %bb.ak, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.aj
  %i.fe = getelementptr inbounds nuw i8, ptr %.tr90, i64 49
  %i.ff = load i8, ptr %i.fe, align 1, !range !86, !alias.scope !12313, !noalias !12316, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %.tr1591, i64 49
  %i.fh = load i8, ptr %i.fg, align 1, !range !86, !alias.scope !12316, !noalias !12313, !noundef !4
  %i.fi = icmp eq i8 %i.ff, %i.fh
  br i1 %i.fi, label %bb.al, label %_RNvXs1H_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB6_5UnionNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
end_hunk_12
