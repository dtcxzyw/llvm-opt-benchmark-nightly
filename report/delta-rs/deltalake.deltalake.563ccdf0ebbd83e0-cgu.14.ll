inline.NumInlined: 4294
inline.NumDeleted: 1503
begin_hunk_0_@_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake:bb.a
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @_RNvNtCseqDwI8vvjGQ_10serde_json3ser6ESCAPE, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !1419, !noundef !12 ; 3 uses
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core5sliceSh8split_atCs7p2uQeJxui2_9deltalake.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i24, i64 %.sroa.010.0.i18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  %i.p = xor i64 %.sroa.010.0.i18, -1
  %i.q = add i64 %.sroa.5.0.ph.i23, %i.p          ; 3 uses
  %i.r = icmp eq i64 %.sroa.010.0.i18, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i24, i64 noundef range(i64 1, -9223372036854775808) %.sroa.010.0.i18)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = icmp eq i8 %i.l, 117
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1419
  %i.t = and i8 %i.i, 15
  %i.u = zext nneg i8 %i.t to i64
  %i.v = lshr i8 %i.i, 4
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCseqDwI8vvjGQ_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !1419, !noundef !12
  %i.z = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCseqDwI8vvjGQ_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.u
  %i.aa = load i8, ptr %i.z, align 1, !noalias !1419, !noundef !12
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.b, align 4, !noalias !1419
  store i8 %i.y, ptr %i.d, align 4, !noalias !1419
  store i8 %i.aa, ptr %i.e, align 1, !noalias !1419
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef range(i64 0, -9223372036854775808) 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1419
  br label %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1419
  store i8 92, ptr %i.a, align 1, !noalias !1419
  store i8 %i.l, ptr %i.c, align 1, !noalias !1419
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, -9223372036854775808) 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1419
  br label %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i

_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.h, %bb.g
  %exitcond.not.i17 = icmp eq i64 %i.q, 0
  br i1 %exitcond.not.i17, label %.outer.i._crit_edge, label %_RNvMNtCsbvkFyIu7lgC_4core5sliceSh8split_atCs7p2uQeJxui2_9deltalake.exit.i.lr.ph

_RINvNtCseqDwI8vvjGQ_10serde_json3ser27format_escaped_str_contentsQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake.exit: ; preds = %.outer.i._crit_edge, %bb.c
  call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef range(i64 0, -9223372036854775808) 1)
  ret ptr null
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCseqDwI8vvjGQ_10serde_json3ser6to_vecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize7MetricsECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 128, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.b, align 8, !range !11, !noundef !12
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !62, !noundef !12 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !12, !noundef !12
  %i.k = icmp samesign ugt i64 %i.g, 127
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1422
  store ptr %i.c, ptr %i.a, align 8, !noalias !1422
  %i.n = invoke noundef align 8 ptr @_RINvXNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize1__NtB5_7MetricsNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.c) #39
          to label %common.resume unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1422
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.p, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.o, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_11richcmpfunc0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @22, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = invoke noundef i32 @_RNvMNtNtCsgbCypRs12E4_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread49

.thread49:                                        ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.040.0.copyload = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.441.0.copyload = load ptr, ptr %.sroa.441.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.542.0.copyload = load ptr, ptr %.sroa.542.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.643.0.copyload = load ptr, ptr %.sroa.643.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %.sroa.040.0.copyload, align 8, !noalias !1426, !nonnull !12, !noundef !12
  %i.j = load ptr, ptr %.sroa.441.0.copyload, align 8, !noalias !1426, !noundef !12
  %i.k = load ptr, ptr %.sroa.542.0.copyload, align 8, !noalias !1426, !noundef !12
  %i.l = load i32, ptr %.sroa.643.0.copyload, align 4, !noalias !1426, !noundef !12
  invoke void %i.i(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef %i.j, ptr noundef %i.k, i32 noundef %i.l)
          to label %bb.e unwind label %bb.c, !inline_history !1433

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.n)
          to label %.thread60 unwind label %bb.d  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

.thread60:                                        ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.o, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.copyload13 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload16 = load ptr, ptr %.sroa.8.0..sroa_idx15, align 8 ; 3 uses
  %.sroa.11.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.13.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.737.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.0..sroa_idx27, i64 32, i1 false)
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load <2 x ptr>, ptr %.sroa.11.0..sroa_idx19, align 8
  %.sroa.11.0.copyload20 = load ptr, ptr %.sroa.11.0..sroa_idx19, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.copyload13, ptr %i.c, align 8
  store ptr %.sroa.8.0.copyload16, ptr %.sroa.434.0..sroa_idx, align 8
  store <2 x ptr> %i.s, ptr %.sroa.535.0..sroa_idx, align 8
  %i.t = ptrtoint ptr %.sroa.0.0.copyload13 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  switch i64 %i.t, label %.invoke [
    i64 2, label %bb.f
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10
  ], !prof !1434

bb.f:                                             ; preds = %.thread60, %bb.e
  %.sroa.0.0.3864 = phi ptr [ %i.q, %.thread60 ], [ %.sroa.8.0.copyload16, %bb.e ]
  %.sroa.8.8.3963 = phi ptr [ %i.r, %.thread60 ], [ %.sroa.11.0.copyload20, %bb.e ]
  invoke void @_RNvMNtCsgbCypRs12E4_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull %.sroa.0.0.3864, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.8.8.3963)
          to label %.invoke unwind label %bb.g

.invoke:                                          ; preds = %bb.e, %bb.f
  %i.u = phi ptr [ %i.b, %bb.f ], [ %.sroa.434.0..sroa_idx, %bb.e ]
  invoke void @_RNvMs0_NtNtCsgbCypRs12E4_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10 unwind label %bb.g

bb.g:                                             ; preds = %.invoke, %bb.f
  %i.v = landingpad { ptr, i32 }
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
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.g, %.thread49
  %.pn48 = phi { ptr, i32 } [ %i.h, %.thread49 ], [ %i.v, %bb.g ]
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit: ; preds = %.thread
  resume { ptr, i32 } %.pn48
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_22fastcall_with_keywords0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @22, ptr %i.e, align 8
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
  %.sroa.047.0.copyload = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.448.0.copyload = load ptr, ptr %.sroa.448.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.549.0.copyload = load ptr, ptr %.sroa.549.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.650.0.copyload = load ptr, ptr %.sroa.650.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.751.0.copyload = load ptr, ptr %.sroa.751.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %.sroa.047.0.copyload, align 8, !noalias !1435, !nonnull !12, !noundef !12
  %i.j = load ptr, ptr %.sroa.448.0.copyload, align 8, !noalias !1435, !noundef !12
  %i.k = load ptr, ptr %.sroa.549.0.copyload, align 8, !noalias !1435, !noundef !12
  %i.l = load i64, ptr %.sroa.650.0.copyload, align 8, !noalias !1435, !noundef !12
  %i.m = load ptr, ptr %.sroa.751.0.copyload, align 8, !noalias !1435, !noundef !12
  invoke void %i.i(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef %i.j, ptr noundef %i.k, i64 noundef %i.l, ptr noundef %i.m)
          to label %bb.e unwind label %bb.c, !inline_history !1442

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %.thread70 unwind label %bb.d  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

.thread70:                                        ; preds = %bb.c
  %i.r = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
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
  ], !prof !1434

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
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.g, %.thread57
  %.pn56 = phi { ptr, i32 } [ %i.h, %.thread57 ], [ %i.w, %bb.g ]
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit: ; preds = %.thread
  resume { ptr, i32 } %.pn56
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_6noargs0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @22, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = invoke noundef i32 @_RNvMNtNtCsgbCypRs12E4_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread29

.thread29:                                        ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val.i = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %.val1.i = load ptr, ptr %1, align 8, !noundef !12
  invoke void %.val.i(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef %.val1.i)
          to label %bb.e unwind label %bb.c, !inline_history !1443

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %.thread36 unwind label %bb.d  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

.thread36:                                        ; preds = %bb.c
  %i.m = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.copyload14 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload16 = load ptr, ptr %.sroa.8.0..sroa_idx15, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.522.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.0..sroa_idx18, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.copyload14, ptr %i.c, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.8.0.copyload16, ptr %.sroa.421.0..sroa_idx, align 8
  %.pr.cast = ptrtoint ptr %.sroa.0.0.copyload14 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  switch i64 %.pr.cast, label %.invoke [
    i64 2, label %._crit_edge
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10
  ], !prof !1434

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %.sroa.522.0..sroa_idx, align 8, !alias.scope !1444
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.thread36
  %i.o = phi ptr [ %i.n, %.thread36 ], [ %.pre, %._crit_edge ]
  %.sroa.0.0.2338 = phi ptr [ %i.m, %.thread36 ], [ %.sroa.8.0.copyload16, %._crit_edge ]
  invoke void @_RNvMNtCsgbCypRs12E4_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull %.sroa.0.0.2338, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %.invoke unwind label %bb.g

.invoke:                                          ; preds = %bb.e, %bb.f
  %i.p = phi ptr [ %i.b, %bb.f ], [ %.sroa.421.0..sroa_idx, %bb.e ]
  invoke void @_RNvMs0_NtNtCsgbCypRs12E4_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10 unwind label %bb.g

bb.g:                                             ; preds = %.invoke, %bb.f
  %i.q = landingpad { ptr, i32 }
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
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.g, %.thread29
  %.pn28 = phi { ptr, i32 } [ %i.h, %.thread29 ], [ %i.q, %bb.g ]
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit: ; preds = %.thread
  resume { ptr, i32 } %.pn28
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_7newfunc0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @22, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = invoke noundef i32 @_RNvMNtNtCsgbCypRs12E4_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread49

.thread49:                                        ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.040.0.copyload = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.441.0.copyload = load ptr, ptr %.sroa.441.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.542.0.copyload = load ptr, ptr %.sroa.542.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.643.0.copyload = load ptr, ptr %.sroa.643.0..sroa_idx, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %.sroa.040.0.copyload, align 8, !noalias !1447, !nonnull !12, !noundef !12
  %i.j = load ptr, ptr %.sroa.441.0.copyload, align 8, !noalias !1447, !noundef !12
  %i.k = load ptr, ptr %.sroa.542.0.copyload, align 8, !noalias !1447, !noundef !12
  %i.l = load ptr, ptr %.sroa.643.0.copyload, align 8, !noalias !1447, !noundef !12
  invoke void %i.i(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %i.l)
          to label %bb.e unwind label %bb.c, !inline_history !1454

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.n)
          to label %.thread60 unwind label %bb.d  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

.thread60:                                        ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.o, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.copyload13 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload16 = load ptr, ptr %.sroa.8.0..sroa_idx15, align 8 ; 3 uses
  %.sroa.11.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.13.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.737.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.0..sroa_idx27, i64 32, i1 false)
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load <2 x ptr>, ptr %.sroa.11.0..sroa_idx19, align 8
  %.sroa.11.0.copyload20 = load ptr, ptr %.sroa.11.0..sroa_idx19, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.copyload13, ptr %i.c, align 8
  store ptr %.sroa.8.0.copyload16, ptr %.sroa.434.0..sroa_idx, align 8
  store <2 x ptr> %i.s, ptr %.sroa.535.0..sroa_idx, align 8
  %i.t = ptrtoint ptr %.sroa.0.0.copyload13 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  switch i64 %i.t, label %.invoke [
    i64 2, label %bb.f
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10
  ], !prof !1434

bb.f:                                             ; preds = %.thread60, %bb.e
  %.sroa.0.0.3864 = phi ptr [ %i.q, %.thread60 ], [ %.sroa.8.0.copyload16, %bb.e ]
  %.sroa.8.8.3963 = phi ptr [ %i.r, %.thread60 ], [ %.sroa.11.0.copyload20, %bb.e ]
  invoke void @_RNvMNtCsgbCypRs12E4_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull %.sroa.0.0.3864, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.8.8.3963)
          to label %.invoke unwind label %bb.g

.invoke:                                          ; preds = %bb.e, %bb.f
  %i.u = phi ptr [ %i.b, %bb.f ], [ %.sroa.434.0..sroa_idx, %bb.e ]
  invoke void @_RNvMs0_NtNtCsgbCypRs12E4_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10 unwind label %bb.g

bb.g:                                             ; preds = %.invoke, %bb.f
  %i.v = landingpad { ptr, i32 }
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
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.g, %.thread49
  %.pn48 = phi { ptr, i32 } [ %i.h, %.thread49 ], [ %i.v, %bb.g ]
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit: ; preds = %.thread
  resume { ptr, i32 } %.pn48
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_8reprfunc0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @22, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 30, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = invoke noundef i32 @_RNvMNtNtCsgbCypRs12E4_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread29

.thread29:                                        ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.b:                                             ; preds = %bb.a
  store i32 %i.g, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val.i = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %.val1.i = load ptr, ptr %1, align 8, !noundef !12
  invoke void %.val.i(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef %.val1.i)
          to label %bb.e unwind label %bb.c, !inline_history !1455

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %.thread36 unwind label %bb.d  ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

.thread36:                                        ; preds = %bb.c
  %i.m = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.k, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.copyload14 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0.copyload16 = load ptr, ptr %.sroa.8.0..sroa_idx15, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.522.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.12.0..sroa_idx18, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0.copyload14, ptr %i.c, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.8.0.copyload16, ptr %.sroa.421.0..sroa_idx, align 8
  %.pr.cast = ptrtoint ptr %.sroa.0.0.copyload14 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  switch i64 %.pr.cast, label %.invoke [
    i64 2, label %._crit_edge
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10
  ], !prof !1434

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %.sroa.522.0..sroa_idx, align 8, !alias.scope !1456
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.thread36
  %i.o = phi ptr [ %i.n, %.thread36 ], [ %.pre, %._crit_edge ]
  %.sroa.0.0.2338 = phi ptr [ %i.m, %.thread36 ], [ %.sroa.8.0.copyload16, %._crit_edge ]
  invoke void @_RNvMNtCsgbCypRs12E4_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull %.sroa.0.0.2338, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %.invoke unwind label %bb.g

.invoke:                                          ; preds = %bb.e, %bb.f
  %i.p = phi ptr [ %i.b, %bb.f ], [ %.sroa.421.0..sroa_idx, %bb.e ]
  invoke void @_RNvMs0_NtNtCsgbCypRs12E4_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10 unwind label %bb.g

bb.g:                                             ; preds = %.invoke, %bb.f
  %i.q = landingpad { ptr, i32 }
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
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

.thread:                                          ; preds = %bb.g, %.thread29
  %.pn28 = phi { ptr, i32 } [ %i.h, %.thread29 ], [ %i.q, %bb.g ]
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo35impl_5panic9PanicTrapECs7p2uQeJxui2_9deltalake.exit: ; preds = %.thread
  resume { ptr, i32 } %.pn28
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument19extract_pyclass_refNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEB1a_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !1459, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1459
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs8_Cs7p2uQeJxui2_9deltalakeNtB7_13RawDeltaTableNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !1462
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RNvXs4_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCs7p2uQeJxui2_9deltalake13RawDeltaTableE15get_or_try_initB1n_.exit.i.i, !prof !28

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCs7p2uQeJxui2_9deltalake13RawDeltaTableE15get_or_try_initB1n_.exit.i.i: ; preds = %bb.a
  call void @_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCs7p2uQeJxui2_9deltalake13RawDeltaTableE8try_initB1n_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull align 8 @_RNvNvXs8_Cs7p2uQeJxui2_9deltalakeNtB7_13RawDeltaTableNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT), !noalias !1459
  %.pre.i.i = load i64, ptr %i.a, align 8, !range !11, !noalias !1459
  %i.f = trunc nuw i64 %.pre.i.i to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCs7p2uQeJxui2_9deltalake13RawDeltaTableE15get_or_try_initB1n_.exit.i._RNvXs4_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i, !prof !1465

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCs7p2uQeJxui2_9deltalake13RawDeltaTableE15get_or_try_initB1n_.exit.i._RNvXs4_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i: ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCs7p2uQeJxui2_9deltalake13RawDeltaTableE15get_or_try_initB1n_.exit.i.i
  %.pre.i = load ptr, ptr %i.g, align 8, !noalias !1459
  br label %_RNvXs4_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i

bb.b:                                             ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCs7p2uQeJxui2_9deltalake13RawDeltaTableE15get_or_try_initB1n_.exit.i.i
  call void @_RNvNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 13) #40, !noalias !1459
  unreachable

_RNvXs4_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i: ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCs7p2uQeJxui2_9deltalake13RawDeltaTableE15get_or_try_initB1n_.exit.i._RNvXs4_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i, %bb.a
  %i.h = phi ptr [ %.pre.i, %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCs7p2uQeJxui2_9deltalake13RawDeltaTableE15get_or_try_initB1n_.exit.i._RNvXs4_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXs8_Cs7p2uQeJxui2_9deltalakeNtB7_13RawDeltaTableNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %bb.a ]
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1459, !nonnull !12, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1459
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1459, !noundef !12 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i, label %_RNvYNtCs7p2uQeJxui2_9deltalake13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB4_.exit.thread, label %_RNvYNtCs7p2uQeJxui2_9deltalake13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB4_.exit

_RNvYNtCs7p2uQeJxui2_9deltalake13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB4_.exit: ; preds = %_RNvXs4_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i
  %i.l = call noundef i32 @PyType_IsSubtype(ptr noundef %i.k, ptr noundef nonnull %i.i) #43, !noalias !1459
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %_RNvYNtCs7p2uQeJxui2_9deltalake13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB4_.exit.thread

bb.c:                                             ; preds = %_RNvYNtCs7p2uQeJxui2_9deltalake13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775808, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @24, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 13, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.c, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXs9_NtCsgbCypRs12E4_4pyo33errNtB5_5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_13DowncastErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

_RNvYNtCs7p2uQeJxui2_9deltalake13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB4_.exit.thread: ; preds = %_RNvXs4_Cs7p2uQeJxui2_9deltalakeNtB5_13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i, %_RNvYNtCs7p2uQeJxui2_9deltalake13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB4_.exit
  %i.n = call noundef ptr @_RNvMNtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB2_12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableE21try_from_class_objectBZ_(ptr noundef nonnull align 8 %i.c) ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvYNtCs7p2uQeJxui2_9deltalake13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB4_.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvXsk_NtCsgbCypRs12E4_4pyo36pycellNtNtB7_3err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.p)
  store i64 1, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %_RNvYNtCs7p2uQeJxui2_9deltalake13RawDeltaTableNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB4_.exit.thread
  %i.q = load ptr, ptr %2, align 8, !alias.scope !1466, !noundef !12
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEE6insertB1B_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
          to label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEE6insertB1B_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  store ptr %i.n, ptr %2, align 8, !alias.scope !1471
  resume { ptr, i32 } %i.s

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEE6insertB1B_.exit: ; preds = %bb.e, %bb.f
  store ptr %i.n, ptr %2, align 8, !alias.scope !1471
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8
  store i64 0, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtCs7p2uQeJxui2_9deltalake13RawDeltaTableEE6insertB1B_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeEB1c_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1472)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !1472, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1472
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs19_NtCs7p2uQeJxui2_9deltalake6schemaNtB8_10StructTypeNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !1475
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RNvXs13_NtCs7p2uQeJxui2_9deltalake6schemaNtB6_10StructTypeNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeE15get_or_try_initB1p_.exit.i.i, !prof !28

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeE15get_or_try_initB1p_.exit.i.i: ; preds = %bb.a
  call void @_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeE8try_initB1p_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull align 8 @_RNvNvXs19_NtCs7p2uQeJxui2_9deltalake6schemaNtB8_10StructTypeNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT), !noalias !1472
  %.pre.i.i = load i64, ptr %i.a, align 8, !range !11, !noalias !1472
  %i.f = trunc nuw i64 %.pre.i.i to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeE15get_or_try_initB1p_.exit.i._RNvXs13_NtCs7p2uQeJxui2_9deltalake6schemaNtB6_10StructTypeNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i, !prof !1465

_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeE15get_or_try_initB1p_.exit.i._RNvXs13_NtCs7p2uQeJxui2_9deltalake6schemaNtB6_10StructTypeNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i: ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeE15get_or_try_initB1p_.exit.i.i
  %.pre.i = load ptr, ptr %i.g, align 8, !noalias !1472
  br label %_RNvXs13_NtCs7p2uQeJxui2_9deltalake6schemaNtB6_10StructTypeNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i

bb.b:                                             ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeE15get_or_try_initB1p_.exit.i.i
  call void @_RNvNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 10) #40, !noalias !1472
  unreachable

_RNvXs13_NtCs7p2uQeJxui2_9deltalake6schemaNtB6_10StructTypeNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i: ; preds = %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeE15get_or_try_initB1p_.exit.i._RNvXs13_NtCs7p2uQeJxui2_9deltalake6schemaNtB6_10StructTypeNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i, %bb.a
  %i.h = phi ptr [ %.pre.i, %_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeE15get_or_try_initB1p_.exit.i._RNvXs13_NtCs7p2uQeJxui2_9deltalake6schemaNtB6_10StructTypeNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit_crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXs19_NtCs7p2uQeJxui2_9deltalake6schemaNtB8_10StructTypeNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %bb.a ]
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1472, !nonnull !12, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1472
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1472, !noundef !12 ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit

_RNvYNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit: ; preds = %_RNvXs13_NtCs7p2uQeJxui2_9deltalake6schemaNtB6_10StructTypeNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo15type_object_raw.exit.i
  %i.l = call noundef i32 @PyType_IsSubtype(ptr noundef %i.k, ptr noundef nonnull %i.i) #43, !noalias !1472
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %_RNvYNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeNtNtCsgbCypRs12E4_4pyo311type_object10PyTypeInfo10is_type_ofB6_.exit.thread
end_hunk_0
begin_hunk_1_@_RNvCs7p2uQeJxui2_9deltalake12scalar_to_py:bb.a
  %.sroa.0219.0.copyload = load ptr, ptr %i.v, align 8 ; 2 uses
  br i1 %i.u, label %bb.w, label %bb.x

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.w = tail call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types4dictNtB2_6PyDict3new() ; 5 uses
  store ptr %i.w, ptr %i.h, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 16, !nonnull !12, !noundef !12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !noundef !12
  %i.ab = getelementptr inbounds nuw [96 x i8], ptr %i.y, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load i64, ptr %i.ae, align 16, !noundef !12
  %i.ag = getelementptr inbounds nuw [96 x i8], ptr %i.ad, i64 %i.af
  invoke void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.y, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ag)
          to label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @147, ptr noundef nonnull inttoptr (i64 101 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #41
  unreachable

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ah = tail call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types4dictNtB2_6PyDict3new() ; 5 uses
  store ptr %i.ah, ptr %i.d, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.al = load i64, ptr %i.ak, align 16, !noundef !12 ; 2 uses
  %.idx = mul nuw nsw i64 %i.al, 192
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx
  %.not342345 = icmp eq i64 %i.al, 0
  br i1 %.not342345, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.aj

bb.h:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val272 = load i32, ptr %i.ap, align 8, !noundef !12
  %i.aq = tail call noundef nonnull ptr @_RNvXsa_NtNtNtCsgbCypRs12E4_4pyo311conversions3std3numlNtNtBb_10conversion12IntoPyObject13into_pyobject(i32 noundef %.val272), !noalias !3297
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %.thread, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit288, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h
  %.sroa.0139.0 = phi ptr [ %i.aq, %bb.h ], [ %i.at, %bb.j ], [ %i.av, %bb.k ], [ %i.ax, %bb.l ], [ %i.ba, %bb.m ], [ %i.bc, %bb.n ], [ %i.bf, %bb.o ], [ %i.bi, %bb.p ], [ %i.bk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit288 ], [ %i.bo, %bb.v ], [ %.sroa.0219.0.copyload, %bb.x ], [ %i.bs, %bb.y ], [ %i.bt, %bb.z ], [ @_Py_NoneStruct, %bb.aa ], [ %i.w, %.thread ], [ %i.ah, %._crit_edge ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0139.0, ptr %i.ar, align 8
  store i64 0, ptr %0, align 8
  br label %bb.aw

bb.j:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val273 = load i64, ptr %i.as, align 8, !noundef !12
  %i.at = tail call noundef nonnull ptr @_RNvXsg_NtNtNtCsgbCypRs12E4_4pyo311conversions3std3numxNtNtBb_10conversion12IntoPyObject13into_pyobject(i64 noundef %.val273), !noalias !3300
  br label %bb.i

bb.k:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val274 = load i16, ptr %i.au, align 8, !noundef !12
  %i.av = tail call noundef nonnull ptr @_RNvXs4_NtNtNtCsgbCypRs12E4_4pyo311conversions3std3numsNtNtBb_10conversion12IntoPyObject13into_pyobject(i16 noundef %.val274), !noalias !3303
  br label %bb.i

bb.l:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val275 = load i8, ptr %i.aw, align 8, !noundef !12
  %i.ax = tail call noundef nonnull ptr @_RNvXs1_NtNtNtCsgbCypRs12E4_4pyo311conversions3std3numaNtNtBb_10conversion12IntoPyObject13into_pyobject(i8 noundef %.val275), !noalias !3306
  br label %bb.i

bb.m:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val276 = load float, ptr %i.ay, align 8, !noundef !12
  %i.az = fpext float %.val276 to double
  %i.ba = tail call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types5floatNtB2_7PyFloat3new(double noundef %i.az), !noalias !3309
  br label %bb.i

bb.n:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val277 = load double, ptr %i.bb, align 8, !noundef !12
  %i.bc = tail call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types5floatNtB2_7PyFloat3new(double noundef %.val277), !noalias !3312
  br label %bb.i

bb.o:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val278 = load ptr, ptr %i.bd, align 16, !nonnull !12, !noundef !12
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val279 = load i64, ptr %i.be, align 8, !noundef !12
  %i.bf = tail call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types6stringNtB2_8PyString3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val278, i64 noundef %.val279), !noalias !3315
  br label %bb.i

bb.p:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val280 = load i8, ptr %i.bg, align 8, !range !14, !noundef !12
  %i.bh = trunc nuw i8 %.val280 to i1
  %_Py_TrueStruct._Py_FalseStruct.i.i.i = select i1 %i.bh, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  %i.bi = tail call noundef nonnull ptr @_RNvXsk_NtCsgbCypRs12E4_4pyo38instanceINtB5_8BorrowedNtNtNtB7_5types3any5PyAnyEINtB5_11BoundObjectBO_E6unbindCs7p2uQeJxui2_9deltalake(ptr noundef nonnull %_Py_TrueStruct._Py_FalseStruct.i.i.i), !noalias !3318
  br label %bb.i

bb.q:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit, %bb.c
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #39
          to label %common.resume unwind label %bb.u

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bk = invoke noundef nonnull ptr @_RNvXs4_NtNtNtCsgbCypRs12E4_4pyo311conversions3std6stringNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBb_10conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.r unwind label %bb.q

bb.r:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit288 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume.sink.split:                         ; preds = %bb.ao, %bb.ak, %.loopexit, %.loopexit.split-lp
  %.sink = phi ptr [ %i.w, %.loopexit ], [ %i.w, %.loopexit.split-lp ], [ %i.ah, %bb.ak ], [ %i.ah, %bb.ao ]
  %common.resume.op.ph = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ci, %bb.ak ], [ %i.cm, %bb.ao ]
  call void @_Py_DecRef(ptr noundef nonnull %.sink) #43
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.q, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.s ], [ %i.bj, %bb.q ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit288: ; preds = %bb.r
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.i

bb.u:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.v:                                             ; preds = %bb.a
  call void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt9serialize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1)
  %i.bo = call noundef nonnull ptr @_RNvXs4_NtNtNtCsgbCypRs12E4_4pyo311conversions3std6stringNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBb_10conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !3321
  br label %bb.i

bb.w:                                             ; preds = %bb.d
  %.sroa.5220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.2222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2222.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5220.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0219.0.copyload, ptr %i.bp, align 8
  store i64 1, ptr %0, align 8
  br label %bb.aw

bb.x:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.i

bb.y:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val281 = load ptr, ptr %i.bq, align 16, !nonnull !12, !noundef !12
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val282 = load i64, ptr %i.br, align 8, !noundef !12
  %i.bs = tail call noundef nonnull ptr @_RNvMNtNtCsgbCypRs12E4_4pyo35types5bytesNtB2_7PyBytes3new(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val281, i64 noundef range(i64 0, -9223372036854775808) %.val282), !noalias !3324
  br label %bb.i

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt9serialize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %1)
  %i.bt = call noundef nonnull ptr @_RNvXs4_NtNtNtCsgbCypRs12E4_4pyo311conversions3std6stringNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtBb_10conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !3331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.i

bb.aa:                                            ; preds = %bb.a
  tail call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #43
  br label %bb.i

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e
  %.sroa.0326.0.copyload = load ptr, ptr %i.g, align 8 ; 2 uses
  %.sroa.5328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5328.0.copyload = load ptr, ptr %.sroa.5328.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.6329.0.copyload = load i64, ptr %.sroa.6329.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.8330.0.copyload = load i64, ptr %.sroa.8330.0..sroa_idx, align 8 ; 2 uses
  %i.bu = icmp ult i64 %.sroa.6329.0.copyload, %.sroa.8330.0.copyload
  br i1 %i.bu, label %.lr.ph348, label %.thread

.lr.ph348:                                        ; preds = %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0326.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5328.0.copyload) ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph348, %bb.ai
  %.sroa.6329.0347 = phi i64 [ %.sroa.6329.0.copyload, %.lr.ph348 ], [ %i.bw, %bb.ai ] ; 3 uses
  %i.bw = add i64 %.sroa.6329.0347, 1             ; 2 uses
  %i.bx = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0326.0.copyload, i64 %.sroa.6329.0347
  %i.by = getelementptr inbounds nuw [96 x i8], ptr %.sroa.5328.0.copyload, i64 %.sroa.6329.0347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_RNvCs7p2uQeJxui2_9deltalake12scalar_to_py(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.e, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.ad unwind label %.loopexit

.thread:                                          ; preds = %bb.ai, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.i

bb.ac:                                            ; preds = %bb.ae, %bb.ah
  call void @_Py_DecRef(ptr noundef nonnull %i.w) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aw

bb.ad:                                            ; preds = %bb.ab
  %i.bz = load i64, ptr %i.e, align 8, !range !11, !noundef !12
  %i.ca = trunc nuw i64 %i.bz to i1
  %.sroa.0237.0.copyload = load ptr, ptr %i.bv, align 8 ; 2 uses
  br i1 %i.ca, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.sroa.5238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.2240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2240.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5238.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0237.0.copyload, ptr %i.cb, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ac

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types4dictINtNtB9_8instance5BoundNtB5_6PyDictENtB5_13PyDictMethods8set_itemRNtNtCs6Po7BT7Nknu_5alloc6string6StringIBE_NtNtB7_3any5PyAnyEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx, ptr noundef nonnull %.sroa.0237.0.copyload)
          to label %bb.ag unwind label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.cc = load i64, ptr %i.f, align 8, !range !11, !noundef !12
  %i.cd = trunc nuw i64 %i.cc to i1
  br i1 %i.cd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull align 8 dereferenceable(56) %i.ce, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 1, ptr %0, align 8
  br label %bb.ac

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond.not = icmp eq i64 %i.bw, %.sroa.8330.0.copyload
  br i1 %exitcond.not, label %.thread, label %bb.ab

.loopexit:                                        ; preds = %bb.af, %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.aj:                                            ; preds = %.lr.ph, %bb.at
  %.sroa.0113.0346 = phi ptr [ %i.aj, %.lr.ph ], [ %i.cg, %bb.at ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0113.0346, i64 192 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0113.0346, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvCs7p2uQeJxui2_9deltalake12scalar_to_py(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %.sroa.0113.0346, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aq, %bb.aj
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.al:                                            ; preds = %bb.aj
  %i.cj = load i64, ptr %i.b, align 8, !range !11, !noundef !12
  %i.ck = trunc nuw i64 %i.cj to i1
  %.sroa.0249.0.copyload = load ptr, ptr %i.an, align 8 ; 4 uses
  br i1 %i.ck, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2252.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5250.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0249.0.copyload, ptr %i.cl, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.av

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvCs7p2uQeJxui2_9deltalake12scalar_to_py(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.ch, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0249.0.copyload) #43
  br label %common.resume.sink.split

bb.ap:                                            ; preds = %bb.an
  %i.cn = load i64, ptr %i.a, align 8, !range !11, !noundef !12
  %i.co = trunc nuw i64 %i.cn to i1
  %.sroa.0255.0.copyload = load ptr, ptr %i.ao, align 8 ; 2 uses
  br i1 %i.co, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types4dictINtNtB9_8instance5BoundNtB5_6PyDictENtB5_13PyDictMethods8set_itemIBE_NtNtB7_3any5PyAnyEB1G_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull %.sroa.0249.0.copyload, ptr noundef nonnull %.sroa.0255.0.copyload)
          to label %bb.ar unwind label %bb.ak

bb.ar:                                            ; preds = %bb.aq
  %i.cp = load i64, ptr %i.c, align 8, !range !11, !noundef !12
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cs, ptr noundef nonnull align 8 dereferenceable(56) %i.cr, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 1, ptr %0, align 8
  br label %bb.av

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not342 = icmp eq ptr %i.cg, %i.am
  br i1 %.not342, label %._crit_edge, label %bb.aj

bb.au:                                            ; preds = %bb.ap
  %.sroa.5256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.2258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2258.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5256.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0255.0.copyload, ptr %i.ct, align 8
  store i64 1, ptr %0, align 8
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0249.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %bb.au, %bb.am
  call void @_Py_DecRef(ptr noundef nonnull %i.ah) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aw

._crit_edge:                                      ; preds = %bb.at, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.aw:                                            ; preds = %bb.w, %bb.ac, %bb.av, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCs7p2uQeJxui2_9deltalake16create_deltalake(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %3, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %4, i1 noundef zeroext %5, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %6, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %7, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %8, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %9, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %10, i8 noundef range(i8 0, 3) %11, i8 %12) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [264 x i8], align 8               ; 15 uses
  %i.e = alloca [144 x i8], align 8               ; 8 uses
  %i.f = alloca [1 x i8], align 1                 ; 2 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %2, ptr %i.g, align 8
  %i.h = zext i1 %5 to i8
  store i8 %i.h, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3334
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.i)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3334
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  invoke void @_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.j)
          to label %bb.d unwind label %bb.c, !noalias !3338

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.k, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #39
          to label %.thread40 unwind label %bb.f, !noalias !3338

bb.c:                                             ; preds = %.noexc
end_hunk_1
begin_hunk_2_@_RNvCs7p2uQeJxui2_9deltalake28filestats_to_expression_next:bb.a
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.0186.0.copyload = load ptr, ptr %i.bq, align 8 ; 10 uses
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.2189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2189.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5187.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0186.0.copyload, ptr %i.br, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ic

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  invoke void @_RINvMNtNtCsgbCypRs12E4_4pyo35types6moduleNtB3_8PyModule6importReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 7)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.q, %bb.m
  %.pn366 = phi { ptr, i32 } [ %i.bs, %bb.m ], [ %.pn364, %bb.q ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0186.0.copyload) #43
  br label %bb.g

bb.m:                                             ; preds = %bb.k
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  %i.bt = load i64, ptr %i.bd, align 8, !range !11, !noundef !12
  %i.bu = trunc nuw i64 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.0192.0.copyload = load ptr, ptr %i.bv, align 8 ; 5 uses
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.2195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2195.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5193.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0192.0.copyload, ptr %i.bw, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ib

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  store ptr %.sroa.0192.0.copyload, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  invoke void @_RINvMNtNtCsgbCypRs12E4_4pyo35types6moduleNtB3_8PyModule6importReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.az, ptr noalias noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %bb.y, %bb.v, %bb.r
  %.pn364 = phi { ptr, i32 } [ %i.bx, %bb.r ], [ %.pn360.pn.pn, %bb.y ], [ %i.cc, %bb.v ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0192.0.copyload) #43
  br label %bb.l

bb.r:                                             ; preds = %bb.p
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  %i.by = load i64, ptr %i.az, align 8, !range !11, !noundef !12
  %i.bz = trunc nuw i64 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.0198.0.copyload = load ptr, ptr %i.ca, align 8 ; 5 uses
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.5199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.2201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2201.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5199.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0198.0.copyload, ptr %i.cb, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.ia

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  store ptr %.sroa.0198.0.copyload, ptr %i.ba, align 8
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 4)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0198.0.copyload) #43
  br label %bb.q

bb.w:                                             ; preds = %bb.u
  %i.cd = load i64, ptr %i.bb, align 8, !range !11, !noundef !12
  %i.ce = trunc nuw i64 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.0204.0.copyload = load ptr, ptr %i.cf, align 8 ; 5 uses
  br i1 %i.ce, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.2207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2207.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5205.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0204.0.copyload, ptr %i.cg, align 8
  store i64 1, ptr %0, align 8
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0198.0.copyload) #43
  br label %bb.ia

bb.y:                                             ; preds = %bb.ab, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit, %.thread, %bb.z
  %.pn360.pn.pn = phi { ptr, i32 } [ %.pn360.pn509, %.thread ], [ %lpad.thr_comm.split-lp, %bb.ab ], [ %i.ch, %bb.z ], [ %.pn353, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0204.0.copyload) #43
  br label %bb.q

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit470, %bb.bx
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.aa:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  store ptr %.sroa.0204.0.copyload, ptr %i.bc, align 8
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0198.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i64 0, ptr %i.ay, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 12 uses
  store i64 0, ptr %i.cj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView16partition_values(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %4)
          to label %bb.ac unwind label %.thread511

.thread511:                                       ; preds = %bb.az, %bb.dv, %bb.hr, %bb.ag, %.thread514, %bb.aa
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ab:                                            ; preds = %bb.hv
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.ac:                                            ; preds = %bb.aa
  %i.ck = load i64, ptr %i.ax, align 8, !range !62, !noundef !12
  %.not = icmp eq i64 %i.ck, -9223372036854775808
  br i1 %.not, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %i.ax, i64 48, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !noundef !12
  %i.cp = getelementptr inbounds nuw [96 x i8], ptr %i.cm, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !12
  %i.cu = getelementptr inbounds nuw [96 x i8], ptr %i.cr, i64 %i.ct
  invoke void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.av, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cu)
          to label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit unwind label %.loopexit.split-lp600

.body434:                                         ; preds = %.loopexit599, %.loopexit.split-lp600, %bb.br, %bb.ao, %.thread524, %.thread520
  %.pn360 = phi { ptr, i32 } [ %i.du, %bb.ao ], [ %.pn358523, %.thread520 ], [ %i.fb, %bb.br ], [ %eh.lpad-body, %.thread524 ], [ %lpad.loopexit601, %.loopexit599 ], [ %lpad.loopexit.split-lp602, %.loopexit.split-lp600 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.aw) #39
          to label %.thread unwind label %bb.ay

.loopexit599:                                     ; preds = %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  %lpad.loopexit601 = landingpad { ptr, i32 }
          cleanup
  br label %.body434

.loopexit.split-lp600:                            ; preds = %bb.ai, %bb.bt, %bb.ad
  %lpad.loopexit.split-lp602 = landingpad { ptr, i32 }
          cleanup
  br label %.body434

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.ad
  %.sroa.0479.0.copyload = load ptr, ptr %i.av, align 8 ; 2 uses
  %.sroa.5481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.5481.0.copyload = load ptr, ptr %.sroa.5481.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.sroa.6482.0.copyload = load i64, ptr %.sroa.6482.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.cv = icmp ult i64 %.sroa.6482.0.copyload, %.sroa.8.0.copyload
  br i1 %i.cv, label %.lr.ph, label %.thread514

.lr.ph:                                           ; preds = %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0479.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5481.0.copyload) ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.6210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cz = load ptr, ptr %1, align 8, !nonnull !12
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  %.sroa.6482.0676 = phi i64 [ %.sroa.6482.0.copyload, %.lr.ph ], [ %i.de, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit ] ; 3 uses
  %i.de = add i64 %.sroa.6482.0676, 1             ; 2 uses
  %i.df = getelementptr inbounds nuw [96 x i8], ptr %.sroa.5481.0.copyload, i64 %.sroa.6482.0676 ; 2 uses
  %i.dg = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0479.0.copyload, i64 %.sroa.6482.0676 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !12, !noundef !12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !12 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.dk, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ah unwind label %.loopexit599

.thread514:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.aw)
          to label %bb.af unwind label %.thread511

bb.af:                                            ; preds = %.thread514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.dl = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @3)
          to label %bb.bz unwind label %.thread511 ; 2 uses

bb.ah:                                            ; preds = %bb.ae
  %i.dm = load i64, ptr %i.b, align 8, !range !11, !noundef !12
  %i.dn = trunc nuw i64 %i.dm to i1
  %i.do = load i64, ptr %i.cw, align 8, !range !62, !noundef !12 ; 3 uses
  br i1 %i.dn, label %bb.ai, label %bb.aj, !prof !20

bb.ai:                                            ; preds = %bb.ah
  %i.dp = load i64, ptr %i.cx, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dp) #40
          to label %bb.by unwind label %.loopexit.split-lp600

bb.aj:                                            ; preds = %bb.ah
  %i.dq = load ptr, ptr %i.cx, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.dr = icmp ule i64 %i.dk, %i.do
  call void @llvm.assume(i1 %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not355 = icmp eq i64 %i.dk, 0
  br i1 %.not355, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.al, %bb.aj
  store i64 %i.do, ptr %i.au, align 8
  store ptr %i.dq, ptr %.sroa.4209.0..sroa_idx, align 8
  store i64 %i.dk, ptr %.sroa.6210.0..sroa_idx, align 8
  %i.ds = load i64, ptr %i.df, align 16, !range !1260, !noundef !12
  %.not583 = icmp eq i64 %i.ds, -9223372036854775795
  br i1 %.not583, label %bb.am, label %bb.an

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr nonnull align 1 %i.di, i64 %i.dk, i1 false)
  br label %bb.ak

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  invoke void @_RNvXsj_NtNtCsgbCypRs12E4_4pyo35types5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB9_4call10PyCallArgs15call_positionalCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.al, ptr noundef nonnull %.sroa.0186.0.copyload)
          to label %bb.ap unwind label %bb.ao

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  invoke fastcc void @_RNvCs7p2uQeJxui2_9deltalake12scalar_to_py(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.ar, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc)
          to label %bb.ba unwind label %.thread527

.thread527:                                       ; preds = %bb.an
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.thread520

bb.ao:                                            ; preds = %bb.am
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body434

bb.ap:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.dv = load i64, ptr %i.am, align 8, !range !11, !noundef !12
  %i.dw = trunc nuw i64 %i.dv to i1
  %.sroa.0231.0.copyload = load ptr, ptr %i.dd, align 8 ; 4 uses
  br i1 %i.dw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.2234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2234.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5232.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0231.0.copyload, ptr %i.dx, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %bb.az

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  invoke fastcc void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method0ReECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.an, ptr nonnull %.sroa.0231.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 7)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.thread524

.thread524:                                       ; preds = %bb.av, %bb.as
  %eh.lpad-body = phi { ptr, i32 } [ %i.dy, %bb.as ], [ %i.ec, %bb.av ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0231.0.copyload) #43
  br label %.body434

bb.at:                                            ; preds = %bb.ar
  %i.dz = load i64, ptr %i.cj, align 8, !alias.scope !3516, !noalias !3519, !noundef !12 ; 3 uses
  %i.ea = load i64, ptr %i.ay, align 8, !range !237, !alias.scope !3516, !noalias !3519, !noundef !12
  %i.eb = icmp eq i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1t_5types3any5PyAnyENtNtB1t_3err5PyErrEE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %bb.ax unwind label %bb.av, !noalias !3519

bb.av:                                            ; preds = %bb.au
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.an) #39
          to label %.thread524 unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ax:                                            ; preds = %bb.at, %bb.au
  %i.ee = load ptr, ptr %i.ci, align 8, !alias.scope !3516, !noalias !3519, !nonnull !12, !noundef !12
  %i.ef = getelementptr inbounds nuw [64 x i8], ptr %i.ee, i64 %i.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ef, ptr noundef nonnull align 8 dereferenceable(64) %i.an, i64 64, i1 false)
  %i.eg = add i64 %i.dz, 1
  store i64 %i.eg, ptr %i.cj, align 8, !alias.scope !3516, !noalias !3519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0231.0.copyload) #43
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %exitcond.not = icmp eq i64 %i.de, %.sroa.8.0.copyload
  br i1 %exitcond.not, label %.thread514, label %bb.ae

bb.ay:                                            ; preds = %bb.ca, %bb.b, %.thread, %bb.hq, %bb.hk, %bb.hg, %bb.fx, %bb.fu, %bb.fq, %bb.fm, %bb.dz, %bb.dw, %bb.ce, %.thread520, %.body434
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.az:                                            ; preds = %bb.bt, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.aw)
          to label %bb.bw unwind label %.thread511

bb.ba:                                            ; preds = %bb.an
  %i.ei = load i64, ptr %i.ar, align 8, !range !11, !noundef !12
  %i.ej = trunc nuw i64 %i.ei to i1
  %.sroa.0213.0.copyload = load ptr, ptr %i.cy, align 8 ; 5 uses
  br i1 %i.ej, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %.sroa.5214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.2216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2216.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5214.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0213.0.copyload, ptr %i.ek, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.bv

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  store ptr %.sroa.0213.0.copyload, ptr %i.as, align 8
  invoke fastcc void @_RNCNvCs7p2uQeJxui2_9deltalake28filestats_to_expression_next0B3_(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.at, ptr nonnull %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.da)
          to label %bb.be unwind label %bb.bd

end_hunk_2
begin_hunk_3_@_RNvCs7p2uQeJxui2_9deltalake28filestats_to_expression_next:bb.a

bb.bh:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0213.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke void @_RNvXsj_NtNtCsgbCypRs12E4_4pyo35types5tupleTRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB9_4call10PyCallArgs15call_positionalCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au, ptr noundef nonnull %.sroa.0186.0.copyload)
          to label %bb.bi unwind label %bb.bu

bb.bi:                                            ; preds = %bb.bh
  %i.ep = load i64, ptr %i.ao, align 8, !range !11, !noundef !12
  %i.eq = trunc nuw i64 %i.ep to i1
  %.sroa.0225.0.copyload = load ptr, ptr %i.dc, align 8 ; 4 uses
  br i1 %i.eq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %.sroa.5226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.2228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2228.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5226.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0225.0.copyload, ptr %i.er, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0219.0.copyload) #43
  br label %bb.bt

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  store ptr %.sroa.0225.0.copyload, ptr %i.ap, align 8
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method1ReTBC_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ap, ptr noalias noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 6, ptr noundef nonnull %.sroa.0219.0.copyload)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bm:                                            ; preds = %bb.bk
  %i.et = load i64, ptr %i.cj, align 8, !alias.scope !3521, !noalias !3524, !noundef !12 ; 3 uses
  %i.eu = load i64, ptr %i.ay, align 8, !range !237, !alias.scope !3521, !noalias !3524, !noundef !12
  %i.ev = icmp eq i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1t_5types3any5PyAnyENtNtB1t_3err5PyErrEE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %bb.bq unwind label %bb.bo, !noalias !3524

bb.bo:                                            ; preds = %bb.bn
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aq) #39
          to label %bb.bg unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.bq:                                            ; preds = %bb.bm, %bb.bn
  %i.ey = load ptr, ptr %i.ci, align 8, !alias.scope !3521, !noalias !3524, !nonnull !12, !noundef !12
  %i.ez = getelementptr inbounds nuw [64 x i8], ptr %i.ey, i64 %i.et
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ez, ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i64 64, i1 false)
  %i.fa = add i64 %i.et, 1
  store i64 %i.fa, ptr %i.cj, align 8, !alias.scope !3521, !noalias !3524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0225.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %.body434 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.bq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit unwind label %.loopexit599

bb.bt:                                            ; preds = %bb.bj, %bb.bv
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.az unwind label %.loopexit.split-lp600

bb.bu:                                            ; preds = %bb.bh
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0219.0.copyload) #43
  br label %.thread520

bb.bv:                                            ; preds = %bb.bf, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.bt

bb.bw:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit448, %bb.bw
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1E_5types3any5PyAnyENtNtB1E_3err5PyErrEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.ay)
          to label %bb.ho unwind label %bb.z

.thread520:                                       ; preds = %bb.bg, %bb.bd, %bb.bu, %.thread527
  %.pn358523 = phi { ptr, i32 } [ %i.dt, %.thread527 ], [ %i.el, %bb.bd ], [ %eh.lpad-body432, %bb.bg ], [ %i.fd, %bb.bu ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au) #39
          to label %.body434 unwind label %bb.ay

bb.by:                                            ; preds = %bb.de, %bb.ai
  unreachable

bb.bz:                                            ; preds = %bb.ag
  %i.fe = extractvalue { i64, i64 } %i.dl, 0
  %i.ff = extractvalue { i64, i64 } %i.dl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) @5, i64 32, i1 false)
  %.sroa.4239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i64 %i.fe, ptr %.sroa.4239.0..sroa_idx, align 8
  %.sroa.5240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store i64 %i.ff, ptr %.sroa.5240.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView11null_counts(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %4)
          to label %bb.cc unwind label %bb.cb

bb.ca:                                            ; preds = %bb.fz, %bb.fz, %bb.eb, %bb.eb, %bb.cg, %bb.cg, %bb.hq, %bb.fu, %bb.dw, %bb.cb
  %.sroa.0170.2 = phi i1 [ %.sroa.0170.3, %bb.cb ], [ true, %bb.cg ], [ true, %bb.dw ], [ true, %bb.cg ], [ true, %bb.eb ], [ true, %bb.fu ], [ true, %bb.eb ], [ true, %bb.fz ], [ true, %bb.hq ], [ true, %bb.fz ]
  %.pn353 = phi { ptr, i32 } [ %i.fg, %bb.cb ], [ %.pn349, %bb.cg ], [ %.pn349, %bb.dw ], [ %.pn349, %bb.cg ], [ %.pn342, %bb.eb ], [ %.pn342, %bb.fu ], [ %.pn342, %bb.eb ], [ %.pn329, %bb.fz ], [ %.pn329, %bb.hq ], [ %.pn329, %bb.fz ] ; 2 uses
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.ay

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.ca
  br i1 %.sroa.0170.2, label %.thread, label %bb.y

bb.cb:                                            ; preds = %.invoke842, %.invoke841, %.invoke, %bb.hs, %bb.hn, %bb.ft, %bb.ee, %bb.du, %bb.cj, %bb.bz
  %.sroa.0170.3 = phi i1 [ true, %bb.du ], [ true, %bb.ft ], [ true, %bb.hn ], [ false, %bb.hs ], [ true, %bb.bz ], [ true, %.invoke ], [ true, %bb.ee ], [ true, %.invoke842 ], [ true, %.invoke841 ], [ true, %bb.cj ]
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.cc:                                            ; preds = %bb.bz
  %i.fh = load i64, ptr %i.aj, align 16, !range !3526, !noundef !12
  switch i64 %i.fh, label %.invoke842 [
    i64 -9223372036854775794, label %bb.cd
    i64 -9223372036854775792, label %bb.cj
  ]

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr noundef nonnull align 8 dereferenceable(48) %i.fi, i64 48, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !noundef !12
  %i.fn = getelementptr inbounds nuw [96 x i8], ptr %i.fk, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.fr = load i64, ptr %i.fq, align 8, !noundef !12
  %i.fs = getelementptr inbounds nuw [96 x i8], ptr %i.fp, i64 %i.fr
  invoke void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ah, ptr noundef nonnull %i.fk, ptr noundef nonnull %i.fn, ptr noundef nonnull %i.fp, ptr noundef nonnull %i.fs)
          to label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit436 unwind label %.loopexit.split-lp595

bb.ce:                                            ; preds = %.loopexit594, %.loopexit.split-lp595, %.body445, %.body442
  %.pn347 = phi { ptr, i32 } [ %eh.lpad-body446, %.body445 ], [ %eh.lpad-body443, %.body442 ], [ %lpad.loopexit596, %.loopexit594 ], [ %lpad.loopexit.split-lp597, %.loopexit.split-lp595 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.ai) #39
          to label %bb.cg unwind label %bb.ay

.loopexit594:                                     ; preds = %bb.cf, %bb.co, %bb.cp, %bb.db, %bb.dc, %bb.dg
  %lpad.loopexit596 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit.split-lp595:                            ; preds = %bb.de, %bb.cd
  %lpad.loopexit.split-lp597 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit436: ; preds = %bb.cd
  %.sroa.0485.0.copyload = load ptr, ptr %i.ah, align 8 ; 2 uses
  %.sroa.5487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.5487.0.copyload = load ptr, ptr %.sroa.5487.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.sroa.6489.0.copyload = load i64, ptr %.sroa.6489.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %.sroa.8490.0.copyload = load i64, ptr %.sroa.8490.0..sroa_idx, align 8 ; 2 uses
  %i.ft = icmp ult i64 %.sroa.6489.0.copyload, %.sroa.8490.0.copyload
  br i1 %i.ft, label %.lr.ph678, label %.thread532

.lr.ph678:                                        ; preds = %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit436
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0485.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5487.0.copyload) ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.6255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph678, %bb.cl
  %.sroa.6489.0677 = phi i64 [ %.sroa.6489.0.copyload, %.lr.ph678 ], [ %i.fy, %bb.cl ] ; 3 uses
  %i.fy = add i64 %.sroa.6489.0677, 1             ; 2 uses
  %i.fz = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0485.0.copyload, i64 %.sroa.6489.0677 ; 5 uses
  %i.ga = getelementptr inbounds nuw [96 x i8], ptr %.sroa.5487.0.copyload, i64 %.sroa.6489.0677 ; 2 uses
  %i.gb = invoke noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.ck unwind label %.loopexit594

.thread532:                                       ; preds = %bb.cl, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit436
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.ai)
          to label %bb.ci unwind label %bb.ch

bb.cg:                                            ; preds = %bb.ch, %bb.ce
  %.pn349 = phi { ptr, i32 } [ %i.gd, %bb.ch ], [ %.pn347, %bb.ce ] ; 3 uses
  %i.gc = load i64, ptr %i.aj, align 16, !range !3526, !noundef !12
  switch i64 %i.gc, label %bb.dw [
    i64 -9223372036854775792, label %bb.ca
    i64 -9223372036854775794, label %bb.ca
  ]

bb.ch:                                            ; preds = %bb.cz, %.thread532
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.ci:                                            ; preds = %.thread532
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.ge = load i64, ptr %i.aj, align 16, !range !3526, !noundef !12
  switch i64 %i.ge, label %.invoke842 [
    i64 -9223372036854775792, label %bb.cj
    i64 -9223372036854775794, label %bb.cj
  ]

bb.cj:                                            ; preds = %.invoke842, %bb.ci, %bb.ci, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView10min_values(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %4)
          to label %bb.dx unwind label %bb.cb

bb.ck:                                            ; preds = %bb.cf
  br i1 %i.gb, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.di, %bb.dr, %bb.cy, %bb.cm, %bb.ck
  %exitcond755.not = icmp eq i64 %i.fy, %.sroa.8490.0.copyload
  br i1 %exitcond755.not, label %.thread532, label %bb.cf

bb.cm:                                            ; preds = %bb.ck
  %i.gf = load i64, ptr %i.ga, align 16, !range !1260, !noundef !12
  %i.gg = icmp eq i64 %i.gf, -9223372036854775807
  br i1 %i.gg, label %bb.cn, label %bb.cl

bb.cn:                                            ; preds = %bb.cm
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !noundef !12 ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvXsj_NtNtCsgbCypRs12E4_4pyo35types5tupleTRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB9_4call10PyCallArgs15call_positionalCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fz, ptr noundef nonnull %.sroa.0186.0.copyload)
          to label %bb.cq unwind label %.loopexit594

bb.cp:                                            ; preds = %bb.cn
  %i.gk = invoke { i64, i64 } @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView11num_records(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %4)
          to label %bb.da unwind label %.loopexit594 ; 2 uses

bb.cq:                                            ; preds = %bb.co
  %i.gl = load i64, ptr %i.af, align 8, !range !11, !noundef !12
  %i.gm = trunc nuw i64 %i.gl to i1
  %.sroa.0243.0.copyload = load ptr, ptr %i.fx, align 8 ; 4 uses
  br i1 %i.gm, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %.sroa.5244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.2246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2246.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5244.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0243.0.copyload, ptr %i.gn, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.cz

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke fastcc void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method0ReECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.ag, ptr nonnull %.sroa.0243.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) @165, i64 noundef 8)
          to label %bb.cu unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body442

.body442:                                         ; preds = %bb.cw, %bb.ct
  %eh.lpad-body443 = phi { ptr, i32 } [ %i.go, %bb.ct ], [ %i.gs, %bb.cw ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0243.0.copyload) #43
  br label %bb.ce

bb.cu:                                            ; preds = %bb.cs
  %i.gp = load i64, ptr %i.cj, align 8, !alias.scope !3527, !noalias !3530, !noundef !12 ; 3 uses
  %i.gq = load i64, ptr %i.ay, align 8, !range !237, !alias.scope !3527, !noalias !3530, !noundef !12
  %i.gr = icmp eq i64 %i.gp, %i.gq
  br i1 %i.gr, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1t_5types3any5PyAnyENtNtB1t_3err5PyErrEE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %bb.cy unwind label %bb.cw, !noalias !3530

bb.cw:                                            ; preds = %bb.cv
  %i.gs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ag) #39
          to label %.body442 unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.cy:                                            ; preds = %bb.cu, %bb.cv
  %i.gu = load ptr, ptr %i.ci, align 8, !alias.scope !3527, !noalias !3530, !nonnull !12, !noundef !12
  %i.gv = getelementptr inbounds nuw [64 x i8], ptr %i.gu, i64 %i.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gv, ptr noundef nonnull align 8 dereferenceable(64) %i.ag, i64 64, i1 false)
  %i.gw = add i64 %i.gp, 1
  store i64 %i.gw, ptr %i.cj, align 8, !alias.scope !3527, !noalias !3530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0243.0.copyload) #43
  br label %bb.cl

bb.cz:                                            ; preds = %bb.dk, %bb.cr
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.ai)
          to label %bb.ds unwind label %bb.ch

bb.da:                                            ; preds = %bb.cp
  %i.gx = extractvalue { i64, i64 } %i.gk, 0
  %i.gy = extractvalue { i64, i64 } %i.gk, 1
  %i.gz = trunc nuw i64 %i.gx to i1
  %i.ha = icmp eq i64 %i.gi, %i.gy
  %or.cond = select i1 %i.gz, i1 %i.ha, i1 false
  br i1 %or.cond, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !nonnull !12, !noundef !12
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.he = load i64, ptr %i.hd, align 8, !noundef !12 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.he, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.dd unwind label %.loopexit594

bb.dc:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke void @_RNvXsj_NtNtCsgbCypRs12E4_4pyo35types5tupleTRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB9_4call10PyCallArgs15call_positionalCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fz, ptr noundef nonnull %.sroa.0186.0.copyload)
          to label %bb.dj unwind label %.loopexit594

bb.dd:                                            ; preds = %bb.db
  %i.hf = load i64, ptr %i.a, align 8, !range !11, !noundef !12
  %i.hg = trunc nuw i64 %i.hf to i1
  %i.hh = load i64, ptr %i.fu, align 8, !range !62, !noundef !12 ; 3 uses
  br i1 %i.hg, label %bb.de, label %bb.df, !prof !20

bb.de:                                            ; preds = %bb.dd
  %i.hi = load i64, ptr %i.fv, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.hh, i64 %i.hi) #40
          to label %bb.by unwind label %.loopexit.split-lp595

bb.df:                                            ; preds = %bb.dd
  %i.hj = load ptr, ptr %i.fv, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.hk = icmp ule i64 %i.he, %i.hh
  call void @llvm.assume(i1 %i.hk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not346 = icmp eq i64 %i.he, 0
  br i1 %.not346, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.dh, %bb.df
  store i64 %i.hh, ptr %i.ac, align 8
  store ptr %i.hj, ptr %.sroa.4254.0..sroa_idx, align 8
  store i64 %i.he, ptr %.sroa.6255.0..sroa_idx, align 8
  %i.hl = invoke noundef zeroext i1 @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac)
          to label %bb.di unwind label %.loopexit594 ; 0 uses

bb.dh:                                            ; preds = %bb.df
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hj, ptr nonnull align 1 %i.hc, i64 %i.he, i1 false)
  br label %bb.dg

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.cl

bb.dj:                                            ; preds = %bb.dc
  %i.hm = load i64, ptr %i.ad, align 8, !range !11, !noundef !12
  %i.hn = trunc nuw i64 %i.hm to i1
  %.sroa.0249.0.copyload = load ptr, ptr %i.fw, align 8 ; 4 uses
  br i1 %i.hn, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.2252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2252.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5250.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0249.0.copyload, ptr %i.ho, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.cz

bb.dl:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke fastcc void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method0ReECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.ae, ptr nonnull %.sroa.0249.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 7)
          to label %bb.dn unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %.body445

.body445:                                         ; preds = %bb.dp, %bb.dm
  %eh.lpad-body446 = phi { ptr, i32 } [ %i.hp, %bb.dm ], [ %i.ht, %bb.dp ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0249.0.copyload) #43
  br label %bb.ce

bb.dn:                                            ; preds = %bb.dl
  %i.hq = load i64, ptr %i.cj, align 8, !alias.scope !3532, !noalias !3535, !noundef !12 ; 3 uses
  %i.hr = load i64, ptr %i.ay, align 8, !range !237, !alias.scope !3532, !noalias !3535, !noundef !12
  %i.hs = icmp eq i64 %i.hq, %i.hr
  br i1 %i.hs, label %bb.do, label %bb.dr

bb.do:                                            ; preds = %bb.dn
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1t_5types3any5PyAnyENtNtB1t_3err5PyErrEE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %bb.dr unwind label %bb.dp, !noalias !3535

bb.dp:                                            ; preds = %bb.do
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ae) #39
          to label %.body445 unwind label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.dr:                                            ; preds = %bb.dn, %bb.do
  %i.hv = load ptr, ptr %i.ci, align 8, !alias.scope !3532, !noalias !3535, !nonnull !12, !noundef !12
  %i.hw = getelementptr inbounds nuw [64 x i8], ptr %i.hv, i64 %i.hq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hw, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i64 64, i1 false)
  %i.hx = add i64 %i.hq, 1
  store i64 %i.hx, ptr %i.cj, align 8, !alias.scope !3532, !noalias !3535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0249.0.copyload) #43
  br label %bb.cl

bb.ds:                                            ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.hy = load i64, ptr %i.aj, align 16, !range !3526, !noundef !12
  switch i64 %i.hy, label %bb.du [
    i64 -9223372036854775792, label %bb.dt
    i64 -9223372036854775794, label %bb.dt
  ]

bb.dt:                                            ; preds = %bb.ds, %bb.ds, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(96) %i.aj)
          to label %bb.dt unwind label %bb.cb

bb.dv:                                            ; preds = %bb.hm, %bb.fs, %bb.dt
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit448 unwind label %.thread511

bb.dw:                                            ; preds = %bb.cg
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(96) %i.aj) #39
          to label %bb.ca unwind label %bb.ay

.invoke842:                                       ; preds = %bb.cc, %bb.ci
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(96) %i.aj)
          to label %bb.cj unwind label %bb.cb

bb.dx:                                            ; preds = %bb.cj
  %i.hz = load i64, ptr %i.ab, align 16, !range !3526, !noundef !12
  switch i64 %i.hz, label %.invoke841 [
    i64 -9223372036854775794, label %bb.dy
    i64 -9223372036854775792, label %bb.ee
  ]

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.ia, i64 48, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ie = load i64, ptr %i.id, align 8, !noundef !12
  %i.if = getelementptr inbounds nuw [96 x i8], ptr %i.ic, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ih = load ptr, ptr %i.ig, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ij = load i64, ptr %i.ii, align 8, !noundef !12
  %i.ik = getelementptr inbounds nuw [96 x i8], ptr %i.ih, i64 %i.ij
  invoke void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.z, ptr noundef nonnull %i.ic, ptr noundef nonnull %i.if, ptr noundef nonnull %i.ih, ptr noundef nonnull %i.ik)
          to label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit449 unwind label %.loopexit.split-lp590

bb.dz:                                            ; preds = %.loopexit589, %.loopexit.split-lp590, %.thread550, %bb.em, %bb.fq
  %.pn340 = phi { ptr, i32 } [ %.pn338, %bb.fq ], [ %.pn338, %.thread550 ], [ %i.jd, %bb.em ], [ %lpad.loopexit591, %.loopexit589 ], [ %lpad.loopexit.split-lp592, %.loopexit.split-lp590 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.aa) #39
          to label %bb.eb unwind label %bb.ay

.loopexit589:                                     ; preds = %bb.ea, %bb.ei, %.thread766
  %lpad.loopexit591 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.loopexit.split-lp590:                            ; preds = %bb.fn, %bb.dy
  %lpad.loopexit.split-lp592 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit449: ; preds = %bb.dy
  %.sroa.0493.0.copyload = load ptr, ptr %i.z, align 8 ; 2 uses
  %.sroa.5495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5495.0.copyload = load ptr, ptr %.sroa.5495.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.6497.0.copyload = load i64, ptr %.sroa.6497.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.8498.0.copyload = load i64, ptr %.sroa.8498.0..sroa_idx, align 8 ; 2 uses
  %i.il = icmp ult i64 %.sroa.6497.0.copyload, %.sroa.8498.0.copyload
  br i1 %i.il, label %.lr.ph680, label %.thread537

.lr.ph680:                                        ; preds = %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit449
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0493.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5495.0.copyload) ]
  %i.im = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.in = load ptr, ptr %1, align 8, !nonnull !12
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ip = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.7115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.7125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.ea

bb.ea:                                            ; preds = %.lr.ph680, %bb.eg
  %.sroa.6497.0679 = phi i64 [ %.sroa.6497.0.copyload, %.lr.ph680 ], [ %i.ir, %bb.eg ] ; 3 uses
  %i.ir = add i64 %.sroa.6497.0679, 1             ; 2 uses
  %i.is = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0493.0.copyload, i64 %.sroa.6497.0679 ; 4 uses
  %i.it = getelementptr inbounds nuw [96 x i8], ptr %.sroa.5495.0.copyload, i64 %.sroa.6497.0679 ; 2 uses
  %i.iu = invoke noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.is, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.ef unwind label %.loopexit589

.thread537:                                       ; preds = %bb.eg, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit449
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.aa)
          to label %bb.ed unwind label %bb.ec

bb.eb:                                            ; preds = %bb.ec, %bb.dz
  %.pn342 = phi { ptr, i32 } [ %i.iw, %bb.ec ], [ %.pn340, %bb.dz ] ; 3 uses
  %i.iv = load i64, ptr %i.ab, align 16, !range !3526, !noundef !12
  switch i64 %i.iv, label %bb.fu [
    i64 -9223372036854775792, label %bb.ca
    i64 -9223372036854775794, label %bb.ca
  ]

bb.ec:                                            ; preds = %bb.fo, %.thread537
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.ed:                                            ; preds = %.thread537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ix = load i64, ptr %i.ab, align 16, !range !3526, !noundef !12
  switch i64 %i.ix, label %.invoke841 [
    i64 -9223372036854775792, label %bb.ee
    i64 -9223372036854775794, label %bb.ee
  ]

bb.ee:                                            ; preds = %.invoke841, %bb.ed, %bb.ed, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView10max_values(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %4)
          to label %bb.fv unwind label %bb.cb

bb.ef:                                            ; preds = %bb.ea
  br i1 %i.iu, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake.exit, %bb.eh, %bb.ef
  %exitcond756.not = icmp eq i64 %i.ir, %.sroa.8498.0.copyload
  br i1 %exitcond756.not, label %.thread537, label %bb.ea

bb.eh:                                            ; preds = %bb.ef
  %i.iy = load i64, ptr %i.it, align 16, !range !1260, !noundef !12
  %i.iz = icmp eq i64 %i.iy, -9223372036854775794
  br i1 %i.iz, label %bb.eg, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke fastcc void @_RNvCs7p2uQeJxui2_9deltalake12scalar_to_py(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.w, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.it, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc)
          to label %bb.ej unwind label %.loopexit589

bb.ej:                                            ; preds = %bb.ei
  %i.ja = load i64, ptr %i.w, align 8, !range !11, !noundef !12
  %i.jb = trunc nuw i64 %i.ja to i1
  %.sroa.0258.0.copyload = load ptr, ptr %i.im, align 8 ; 4 uses
  br i1 %i.jb, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %.sroa.5259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.2261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2261.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5259.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0258.0.copyload, ptr %i.jc, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.fo

bb.el:                                            ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store ptr %.sroa.0258.0.copyload, ptr %i.x, align 8
  invoke fastcc void @_RNCNvCs7p2uQeJxui2_9deltalake28filestats_to_expression_next0B3_(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.y, ptr nonnull %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.is, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.io)
          to label %bb.en unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0258.0.copyload) #43
  br label %bb.dz

.thread550:                                       ; preds = %bb.fm, %bb.et, %bb.ev, %bb.fb, %bb.fh, %bb.fp
  %.sink = phi ptr [ %i.jm, %bb.fp ], [ %.sroa.0264.0.copyload, %bb.fm ], [ %.sroa.0264.0.copyload, %bb.ev ], [ %.sroa.0264.0.copyload, %bb.et ], [ %.sroa.0264.0.copyload, %bb.fb ], [ %.sroa.0264.0.copyload, %bb.fh ]
  %.pn338 = phi { ptr, i32 } [ %i.ke, %bb.fp ], [ %lpad.thr_comm555, %bb.fm ], [ %lpad.thr_comm.split-lp556, %bb.ev ], [ %i.jq, %bb.et ], [ %i.jv, %bb.fb ], [ %i.ka, %bb.fh ] ; 2 uses
  call void @_Py_DecRef(ptr noundef nonnull %.sink) #43
  %i.je = load i64, ptr %i.y, align 8, !range !11, !noundef !12
  %i.jf = icmp eq i64 %i.je, 0
  br i1 %i.jf, label %bb.dz, label %bb.fq

bb.en:                                            ; preds = %bb.el
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0258.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.jg = load i64, ptr %i.y, align 8, !range !11, !noundef !12
  %i.jh = trunc nuw i64 %i.jg to i1
  br i1 %i.jh, label %.thread766, label %bb.ep

bb.eo:                                            ; preds = %bb.fa, %bb.ez
  %i.ji = load ptr, ptr %i.ci, align 8, !alias.scope !3537, !noalias !3540, !nonnull !12, !noundef !12
  %i.jj = getelementptr inbounds nuw [64 x i8], ptr %i.ji, i64 %i.js
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jj, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false)
  %i.jk = add i64 %i.js, 1
  store i64 %i.jk, ptr %i.cj, align 8, !alias.scope !3537, !noalias !3540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0264.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.pre = load i64, ptr %i.y, align 8, !range !11
  %i.jl = trunc nuw i64 %.pre to i1
  br i1 %i.jl, label %.thread766, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake.exit

bb.ep:                                            ; preds = %bb.en
  %i.jm = load ptr, ptr %i.ip, align 8, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvXsj_NtNtCsgbCypRs12E4_4pyo35types5tupleTRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB9_4call10PyCallArgs15call_positionalCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.is, ptr noundef nonnull %.sroa.0186.0.copyload)
          to label %bb.eq unwind label %bb.fp

bb.eq:                                            ; preds = %bb.ep
  %i.jn = load i64, ptr %i.u, align 8, !range !11, !noundef !12
  %i.jo = trunc nuw i64 %i.jn to i1
  %.sroa.0264.0.copyload = load ptr, ptr %i.iq, align 8 ; 10 uses
  br i1 %i.jo, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.2267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2267.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5265.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0264.0.copyload, ptr %i.jp, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @_Py_DecRef(ptr noundef nonnull %i.jm) #43
  br label %bb.fl

bb.es:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store ptr %.sroa.0264.0.copyload, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method1ReTBC_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 6, ptr noundef nonnull %i.jm)
          to label %bb.eu unwind label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %.thread550

bb.eu:                                            ; preds = %bb.es
  %i.jr = invoke noundef zeroext i1 @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12contains_keyBO_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.is)
          to label %bb.ew unwind label %bb.fm

bb.ev:                                            ; preds = %bb.fe
  %lpad.thr_comm.split-lp556 = landingpad { ptr, i32 }
          cleanup
  br label %.thread550

bb.ew:                                            ; preds = %bb.eu
  br i1 %i.jr, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false)
  br label %bb.ez

bb.ey:                                            ; preds = %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke fastcc void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method0ReECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.r, ptr nonnull %.sroa.0264.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 7)
          to label %bb.fd unwind label %bb.fm

bb.ez:                                            ; preds = %bb.fi, %bb.ex
  %i.js = load i64, ptr %i.cj, align 8, !alias.scope !3537, !noalias !3540, !noundef !12 ; 3 uses
  %i.jt = load i64, ptr %i.ay, align 8, !range !237, !alias.scope !3537, !noalias !3540, !noundef !12
  %i.ju = icmp eq i64 %i.js, %i.jt
  br i1 %i.ju, label %bb.fa, label %bb.eo

bb.fa:                                            ; preds = %bb.ez
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1t_5types3any5PyAnyENtNtB1t_3err5PyErrEE8grow_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %bb.eo unwind label %bb.fb, !noalias !3540

bb.fb:                                            ; preds = %bb.fa
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s) #39
          to label %.thread550 unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.fd:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.sroa.0113.0.copyload = load i64, ptr %i.t, align 8
  %.sroa.5114.0.copyload = load ptr, ptr %.sroa.5114.0..sroa_idx, align 8 ; 6 uses
  %i.jx = trunc nuw i64 %.sroa.0113.0.copyload to i1
  br i1 %i.jx, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %.sroa.2277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2277.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7115.0..sroa_idx, i64 48, i1 false)
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5114.0.copyload, ptr %i.jy, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.r)
          to label %bb.fk unwind label %bb.ev

bb.ff:                                            ; preds = %bb.fd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5114.0.copyload) ]
  store ptr %.sroa.5114.0.copyload, ptr %i.q, align 8
  %.sroa.0123.0.copyload = load i64, ptr %i.r, align 8
  %.sroa.5124.0.copyload = load ptr, ptr %.sroa.5124.0..sroa_idx, align 8 ; 3 uses
  %i.jz = trunc nuw i64 %.sroa.0123.0.copyload to i1
  br i1 %i.jz, label %bb.fj, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5124.0.copyload) ]
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method1ReTBC_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 6, ptr noundef nonnull %.sroa.5124.0.copyload)
          to label %bb.fi unwind label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ka = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.5114.0.copyload) #43
  br label %.thread550

bb.fi:                                            ; preds = %bb.fg
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.5114.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ez

bb.fj:                                            ; preds = %bb.ff
  %.sroa.2279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2279.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7125.0..sroa_idx, i64 48, i1 false)
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5124.0.copyload, ptr %i.kb, align 8
  store i64 1, ptr %0, align 8
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.5114.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fe, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0264.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.er, %bb.fk
  %i.kc = load i64, ptr %i.y, align 8, !range !11, !noundef !12
  %i.kd = trunc nuw i64 %i.kc to i1
  br i1 %i.kd, label %bb.fn, label %bb.fo

bb.fm:                                            ; preds = %bb.eu, %bb.ey
  %lpad.thr_comm555 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.t) #39
          to label %.thread550 unwind label %bb.ay

bb.fn:                                            ; preds = %bb.fl
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.y)
          to label %bb.fo unwind label %.loopexit.split-lp590

bb.fo:                                            ; preds = %bb.fn, %bb.fl, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.aa)
          to label %bb.fr unwind label %bb.ec

bb.fp:                                            ; preds = %bb.ep
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.thread550

.thread766:                                       ; preds = %bb.en, %bb.eo
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.ip)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake.exit unwind label %.loopexit589

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.thread766, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.eg

bb.fq:                                            ; preds = %.thread550
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.y) #39
          to label %bb.dz unwind label %bb.ay

bb.fr:                                            ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.kf = load i64, ptr %i.ab, align 16, !range !3526, !noundef !12
  switch i64 %i.kf, label %bb.ft [
    i64 -9223372036854775792, label %bb.fs
    i64 -9223372036854775794, label %bb.fs
  ]

bb.fs:                                            ; preds = %bb.fr, %bb.fr, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.dv

bb.ft:                                            ; preds = %bb.fr
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(96) %i.ab)
          to label %bb.fs unwind label %bb.cb

bb.fu:                                            ; preds = %bb.eb
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(96) %i.ab) #39
          to label %bb.ca unwind label %bb.ay

.invoke841:                                       ; preds = %bb.dx, %bb.ed
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(96) %i.ab)
          to label %bb.ee unwind label %bb.cb

bb.fv:                                            ; preds = %bb.ee
  %i.kg = load i64, ptr %i.p, align 16, !range !3526, !noundef !12
  switch i64 %i.kg, label %.invoke [
    i64 -9223372036854775794, label %bb.fw
    i64 -9223372036854775792, label %bb.gc
  ]

bb.fw:                                            ; preds = %bb.fv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.kh = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.kh, i64 48, i1 false)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.kl = load i64, ptr %i.kk, align 8, !noundef !12
  %i.km = getelementptr inbounds nuw [96 x i8], ptr %i.kj, i64 %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ko = load ptr, ptr %i.kn, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.kq = load i64, ptr %i.kp, align 8, !noundef !12
  %i.kr = getelementptr inbounds nuw [96 x i8], ptr %i.ko, i64 %i.kq
  invoke void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.n, ptr noundef nonnull %i.kj, ptr noundef nonnull %i.km, ptr noundef nonnull %i.ko, ptr noundef nonnull %i.kr)
          to label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit460 unwind label %.loopexit.split-lp

bb.fx:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.thread571, %bb.gk, %bb.hk
  %.pn327 = phi { ptr, i32 } [ %.pn325, %bb.hk ], [ %.pn325, %.thread571 ], [ %i.ln, %bb.gk ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.o) #39
          to label %bb.fz unwind label %bb.ay

.loopexit:                                        ; preds = %bb.fy, %bb.gg, %.thread767
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

.loopexit.split-lp:                               ; preds = %bb.hh, %bb.fw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit460: ; preds = %bb.fw
  %.sroa.0500.0.copyload = load ptr, ptr %i.n, align 8 ; 2 uses
  %.sroa.5502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5502.0.copyload = load ptr, ptr %.sroa.5502.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.6504.0.copyload = load i64, ptr %.sroa.6504.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.8505.0.copyload = load i64, ptr %.sroa.8505.0..sroa_idx, align 8 ; 2 uses
  %i.ks = icmp ult i64 %.sroa.6504.0.copyload, %.sroa.8505.0.copyload
  br i1 %i.ks, label %.lr.ph682, label %.thread561

.lr.ph682:                                        ; preds = %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit460
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0500.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5502.0.copyload) ]
  %i.kt = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ku = load ptr, ptr %1, align 8, !nonnull !12
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kw = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  br label %bb.fy

bb.fy:                                            ; preds = %.lr.ph682, %bb.ge
  %.sroa.6504.0681 = phi i64 [ %.sroa.6504.0.copyload, %.lr.ph682 ], [ %i.ky, %bb.ge ] ; 3 uses
  %i.ky = add i64 %.sroa.6504.0681, 1             ; 2 uses
  %i.kz = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0500.0.copyload, i64 %.sroa.6504.0681 ; 4 uses
  %i.la = getelementptr inbounds nuw [96 x i8], ptr %.sroa.5502.0.copyload, i64 %.sroa.6504.0681 ; 2 uses
  %i.lb = invoke noundef zeroext i1 @_RNvXsf_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB5_13SliceContains14slice_containsCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.gd unwind label %.loopexit

.thread561:                                       ; preds = %bb.ge, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit460
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.o)
          to label %bb.gb unwind label %bb.ga

bb.fz:                                            ; preds = %bb.ga, %bb.fx
  %.pn329 = phi { ptr, i32 } [ %i.ld, %bb.ga ], [ %.pn327, %bb.fx ] ; 3 uses
  %i.lc = load i64, ptr %i.p, align 16, !range !3526, !noundef !12
  switch i64 %i.lc, label %bb.hq [
    i64 -9223372036854775792, label %bb.ca
    i64 -9223372036854775794, label %bb.ca
  ]

bb.ga:                                            ; preds = %bb.hi, %.thread561
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.gb:                                            ; preds = %.thread561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.le = load i64, ptr %i.p, align 16, !range !3526, !noundef !12
  switch i64 %i.le, label %.invoke [
    i64 -9223372036854775792, label %bb.gc
    i64 -9223372036854775794, label %bb.gc
  ]

bb.gc:                                            ; preds = %.invoke, %bb.gb, %bb.gb, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.lf = load i64, ptr %i.cj, align 8, !noundef !12 ; 3 uses
  %i.lg = icmp ult i64 %i.lf, 144115188075855872
  call void @llvm.assume(i1 %i.lg)
  %i.lh = icmp eq i64 %i.lf, 0
  br i1 %i.lh, label %bb.hr, label %bb.hs

bb.gd:                                            ; preds = %bb.fy
  br i1 %i.lb, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake.exit468, %bb.gf, %bb.gd
  %exitcond757.not = icmp eq i64 %i.ky, %.sroa.8505.0.copyload
  br i1 %exitcond757.not, label %.thread561, label %bb.fy

bb.gf:                                            ; preds = %bb.gd
  %i.li = load i64, ptr %i.la, align 16, !range !1260, !noundef !12
  %i.lj = icmp eq i64 %i.li, -9223372036854775794
  br i1 %i.lj, label %bb.ge, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke fastcc void @_RNvCs7p2uQeJxui2_9deltalake12scalar_to_py(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.k, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.la, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bc)
          to label %bb.gh unwind label %.loopexit

bb.gh:                                            ; preds = %bb.gg
  %i.lk = load i64, ptr %i.k, align 8, !range !11, !noundef !12
  %i.ll = trunc nuw i64 %i.lk to i1
  %.sroa.0282.0.copyload = load ptr, ptr %i.kt, align 8 ; 4 uses
  br i1 %i.ll, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %.sroa.5283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.2285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2285.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5283.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0282.0.copyload, ptr %i.lm, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.hi

bb.gj:                                            ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store ptr %.sroa.0282.0.copyload, ptr %i.l, align 8
  invoke fastcc void @_RNCNvCs7p2uQeJxui2_9deltalake28filestats_to_expression_next0B3_(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.m, ptr nonnull %i.be, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.kv)
          to label %bb.gl unwind label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.ln = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0282.0.copyload) #43
  br label %bb.fx

.thread571:                                       ; preds = %bb.hg, %bb.gr, %bb.hb, %.loopexit.split-lp585, %.loopexit584, %bb.hj
  %.sink840 = phi ptr [ %i.lt, %bb.hj ], [ %.sroa.0288.0.copyload, %bb.hg ], [ %.sroa.0288.0.copyload, %bb.hb ], [ %.sroa.0288.0.copyload, %bb.gr ], [ %.sroa.0288.0.copyload, %.loopexit584 ], [ %.sroa.0288.0.copyload, %.loopexit.split-lp585 ]
  %.pn325 = phi { ptr, i32 } [ %i.mg, %bb.hj ], [ %lpad.thr_comm576, %bb.hg ], [ %i.mc, %bb.hb ], [ %i.lx, %bb.gr ], [ %lpad.loopexit586, %.loopexit584 ], [ %lpad.loopexit.split-lp587, %.loopexit.split-lp585 ] ; 2 uses
  call void @_Py_DecRef(ptr noundef nonnull %.sink840) #43
  %i.lo = load i64, ptr %i.m, align 8, !range !11, !noundef !12
  %i.lp = icmp eq i64 %i.lo, 0
  br i1 %i.lp, label %bb.fx, label %bb.hk

bb.gl:                                            ; preds = %bb.gj
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0282.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.lq = load i64, ptr %i.m, align 8, !range !11, !noundef !12
  %i.lr = trunc nuw i64 %i.lq to i1
  br i1 %i.lr, label %.thread767, label %bb.gn

bb.gm:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0288.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.pre758 = load i64, ptr %i.m, align 8, !range !11
  %i.ls = trunc nuw i64 %.pre758 to i1
  br i1 %i.ls, label %.thread767, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake.exit468

bb.gn:                                            ; preds = %bb.gl
  %i.lt = load ptr, ptr %i.kw, align 8, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXsj_NtNtCsgbCypRs12E4_4pyo35types5tupleTRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB9_4call10PyCallArgs15call_positionalCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kz, ptr noundef nonnull %.sroa.0186.0.copyload)
          to label %bb.go unwind label %bb.hj

bb.go:                                            ; preds = %bb.gn
  %i.lu = load i64, ptr %i.i, align 8, !range !11, !noundef !12
  %i.lv = trunc nuw i64 %i.lu to i1
  %.sroa.0288.0.copyload = load ptr, ptr %i.kx, align 8 ; 10 uses
  br i1 %i.lv, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %.sroa.5289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.2291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2291.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5289.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0288.0.copyload, ptr %i.lw, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_Py_DecRef(ptr noundef nonnull %i.lt) #43
  br label %bb.hf

bb.gq:                                            ; preds = %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %.sroa.0288.0.copyload, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method1ReTBC_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 6, ptr noundef nonnull %i.lt)
          to label %bb.gs unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %.thread571

bb.gs:                                            ; preds = %bb.gq
  %i.ly = invoke noundef zeroext i1 @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12contains_keyBO_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kz)
          to label %bb.gt unwind label %bb.hg

.loopexit584:                                     ; preds = %bb.gw
  %lpad.loopexit586 = landingpad { ptr, i32 }
          cleanup
  br label %.thread571

.loopexit.split-lp585:                            ; preds = %bb.gy
  %lpad.loopexit.split-lp587 = landingpad { ptr, i32 }
          cleanup
  br label %.thread571

bb.gt:                                            ; preds = %bb.gs
  br i1 %i.ly, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method0ReECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.f, ptr nonnull %.sroa.0288.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 7)
          to label %bb.gx unwind label %bb.hg

bb.gw:                                            ; preds = %bb.hc, %bb.gu
  invoke fastcc void @_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1m_5types3any5PyAnyENtNtB1m_3err5PyErrEE8push_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.ay, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.g)
          to label %bb.gm unwind label %.loopexit584

bb.gx:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.0154.0.copyload = load i64, ptr %i.h, align 8
  %.sroa.5155.0.copyload = load ptr, ptr %.sroa.5155.0..sroa_idx, align 8 ; 6 uses
  %i.lz = trunc nuw i64 %.sroa.0154.0.copyload to i1
  br i1 %i.lz, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %.sroa.2301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2301.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7156.0..sroa_idx, i64 48, i1 false)
end_hunk_3
begin_hunk_4_@_RNvNvNvXs1r_NtCs7p2uQeJxui2_9deltalake6schemaINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtBa_8PySchemaEINtBK_9PyMethodsB1H_E10py_methods5ITEMSs_10trampoline:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.k
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXs4_NtCs7p2uQeJxui2_9deltalake8featuresNtB9_13TableFeaturesNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl10items_iter15INTRINSIC_ITEMS10trampoline(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvMs5_NtCs7p2uQeJxui2_9deltalake8featuresNtB5_13TableFeatures39___pymethod___default___pyo3__repr______, ptr %i.a, align 8
  %i.c = invoke fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_8reprfunc0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXs4_NtCs7p2uQeJxui2_9deltalake8featuresNtB9_13TableFeaturesNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl10items_iter15INTRINSIC_ITEMSs0_10trampoline(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %2, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvMs5_NtCs7p2uQeJxui2_9deltalake8featuresNtB5_13TableFeatures24___pymethod___richcmp____, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %i.h, align 8
  %i.i = invoke fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_11richcmpfunc0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXs4_NtCs7p2uQeJxui2_9deltalake8featuresNtB9_13TableFeaturesNtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass11PyClassImpl10items_iter15INTRINSIC_ITEMSs_10trampoline(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 11 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.8 = alloca [48 x i8], align 8            ; 7 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 8 uses
  %i.f = alloca [4 x i8], align 4                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9028
  store ptr @22, ptr %i.g, align 8, !noalias !9028
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 30, ptr %i.h, align 8, !noalias !9028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9028
  %i.i = invoke noundef i32 @_RNvMNtNtCsgbCypRs12E4_4pyo38internal5stateNtB2_11AttachGuard6assume()
          to label %bb.b unwind label %.thread29.i, !noalias !9028

.thread29.i:                                      ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.thread.i

bb.b:                                             ; preds = %bb.a
  store i32 %i.i, ptr %i.f, align 4, !noalias !9028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9028
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9032
  store ptr %0, ptr %i.c, align 8, !noalias !9032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9032
  store ptr null, ptr %i.b, align 8, !noalias !9032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9032
  invoke fastcc void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument19extract_pyclass_refNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesEB1c_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef align 8 dereferenceable(8) %i.b)
          to label %bb.e unwind label %bb.c, !noalias !9032

bb.c:                                             ; preds = %bb.g, %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer        ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !alias.scope !9035, !noalias !9032, !noundef !12
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.body2, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.body2 unwind label %bb.i, !noalias !9032

bb.e:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.a, align 8, !range !11, !noalias !9032, !noundef !12
  %i.o = trunc nuw i64 %i.n to i1                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.05.0.copyload.i = load ptr, ptr %i.p, align 8, !noalias !9032 ; 3 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.56.0..sroa_idx.i, i64 48, i1 false), !noalias !9028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9032
  %i.q = load ptr, ptr %i.b, align 8, !alias.scope !9038, !noalias !9032, !noundef !12
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesEEEB1Y_.exit11.sink.split.i

.thread:                                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9032
  %.sroa.522.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.522.0..sroa_idx.i5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8, i64 48, i1 false), !noalias !9028
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8, !noalias !9028
  %.sroa.421.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.sroa.05.0.copyload.i, ptr %.sroa.421.0..sroa_idx.i6, align 8, !noalias !9028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9028
  br label %.invoke.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9032
  %i.s = load i8, ptr %.sroa.05.0.copyload.i, align 1, !range !1673, !noalias !9032, !noundef !12
  %i.t = zext nneg i8 %i.s to i64
  %i.u = invoke noundef nonnull ptr @_RNvXsj_NtNtNtCsgbCypRs12E4_4pyo311conversions3std3numiNtNtBb_10conversion12IntoPyObject13into_pyobject(i64 noundef range(i64 0, 13) %i.t)
          to label %bb.h unwind label %bb.c, !noalias !9032 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.b, align 8, !alias.scope !9041, !noalias !9032, !noundef !12
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.thread7, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesEEEB1Y_.exit11.sink.split.i

.thread7:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9032
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9028
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesEEEB1Y_.exit11.sink.split.i: ; preds = %bb.h, %bb.f
  %.sroa.5.0 = phi ptr [ %.sroa.05.0.copyload.i, %bb.f ], [ %i.u, %bb.h ] ; 2 uses
  %.sroa.0.0 = phi i64 [ 1, %bb.f ], [ 0, %bb.h ]
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo37pyclass5guardINtB5_12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.l unwind label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !9032
  unreachable

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesEEEB1Y_.exit11.sink.split.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
          filter [0 x ptr] zeroinitializer
  br label %.body2

.body2:                                           ; preds = %bb.c, %bb.d, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.j ], [ %i.k, %bb.d ], [ %i.k, %bb.c ]
  %i.z = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.aa = invoke { ptr, ptr } @_RNvNvNtCs2pqxYH9ZEk8_3std9panicking12catch_unwind7cleanup(ptr noundef %i.z)
          to label %.thread36.i unwind label %bb.k, !noalias !9028 ; 2 uses

bb.k:                                             ; preds = %.body2
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38, !noalias !9028
  unreachable

.thread36.i:                                      ; preds = %.body2
  %i.ac = extractvalue { ptr, ptr } %i.aa, 0      ; 2 uses
  %i.ad = extractvalue { ptr, ptr } %i.aa, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9028
  invoke void @_RNvMNtCsgbCypRs12E4_4pyo35panicNtB2_14PanicException18from_panic_payload(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noundef nonnull %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad)
          to label %.invoke.i unwind label %bb.m, !noalias !9028

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCsgbCypRs12E4_4pyo37pyclass5guard12PyClassGuardNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesEEEB1Y_.exit11.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9032
  %i.ae = inttoptr i64 %.sroa.0.0 to ptr
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.522.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8, i64 48, i1 false), !noalias !9028
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  store ptr %i.ae, ptr %i.e, align 8, !noalias !9028
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %.sroa.5.0, ptr %.sroa.421.0..sroa_idx.i, align 8, !noalias !9028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9028
  br i1 %i.o, label %.invoke.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10.i, !prof !9044

.invoke.i:                                        ; preds = %bb.l, %.thread, %.thread36.i
  %i.af = phi ptr [ %i.d, %.thread36.i ], [ %.sroa.421.0..sroa_idx.i, %bb.l ], [ %.sroa.421.0..sroa_idx.i6, %.thread ]
  invoke void @_RNvMs0_NtNtCsgbCypRs12E4_4pyo33err9err_stateNtB5_10PyErrState7restore(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10.i unwind label %bb.m, !noalias !9028

bb.m:                                             ; preds = %.invoke.i, %.thread36.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %.thread.i unwind label %bb.n, !noalias !9028

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10.i: ; preds = %bb.l, %.thread7, %.invoke.i
  %.sroa.0.0.i.i = phi ptr [ null, %.invoke.i ], [ %.sroa.5.0, %bb.l ], [ %i.u, %.thread7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9028
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB4_11AttachGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %.thread.i, %bb.m
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !9028
  unreachable

.thread.i:                                        ; preds = %bb.m, %.thread29.i
  invoke void @_RNvXs_NtNtCsgbCypRs12E4_4pyo35impl_5panicNtB4_9PanicTrapNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.body unwind label %bb.n, !noalias !9028

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %.thread.i, %bb.o
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state11AttachGuardECs7p2uQeJxui2_9deltalake.exit10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9028
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXsI_Cs7p2uQeJxui2_9deltalakeINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_13PyTransactionEINtBA_9PyMethodsB1x_E10py_methods5ITEMS10trampoline(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvMsJ_Cs7p2uQeJxui2_9deltalakeNtB5_13PyTransaction20___pymethod___new____, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %i.h, align 8
  %i.i = invoke fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_7newfunc0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXsI_Cs7p2uQeJxui2_9deltalakeINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_13PyTransactionEINtBA_9PyMethodsB1x_E10py_methods5ITEMSs_10trampoline(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvMsJ_Cs7p2uQeJxui2_9deltalakeNtB5_13PyTransaction21___pymethod___repr____, ptr %i.a, align 8
  %i.c = invoke fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_8reprfunc0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXsM_NtCs7p2uQeJxui2_9deltalake6schemaINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_7MapTypeEINtBJ_9PyMethodsB1G_E10py_methods5ITEMS10trampoline(ptr noundef %0, ptr nofree readnone captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvMsN_NtCs7p2uQeJxui2_9deltalake6schemaNtB5_7MapType20___pymethod_to_json__, ptr %i.a, align 8
  %i.c = invoke fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_6noargs0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXsM_NtCs7p2uQeJxui2_9deltalake6schemaINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_7MapTypeEINtBJ_9PyMethodsB1G_E10py_methods5ITEMSs0_10trampoline(ptr noundef %0, ptr nofree readnone captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @_RNvMsN_NtCs7p2uQeJxui2_9deltalake6schemaNtB5_7MapType21___pymethod_to_arrow__, ptr %i.a, align 8
  %i.c = invoke fastcc noundef ptr @_RINvNtNtCsgbCypRs12E4_4pyo35impl_10trampoline10trampolineNCNvB2_6noargs0ONtNtCs8qYbsySkclr_8pyo3_ffi6object8PyObjectECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking19panic_cannot_unwind() #38
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef ptr @_RNvNvNvXsM_NtCs7p2uQeJxui2_9deltalake6schemaINtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass20PyClassImplCollectorNtB9_7MapTypeEINtBJ_9PyMethodsB1G_E10py_methods5ITEMSs1_10trampoline(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  store ptr @_RNvMsN_NtCs7p2uQeJxui2_9deltalake6schemaNtB5_7MapType23___pymethod_from_arrow__, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
end_hunk_4
