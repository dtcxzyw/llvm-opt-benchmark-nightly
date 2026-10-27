Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3-c97dc5db0a5415c3.pyo3.99b17b84ad475dbd-cgu.13?download=true
inline.NumInlined: 182
inline.NumDeleted: 99
begin_hunk_0_@_RNSNvYNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtBc_5PyErr3newNtNtBe_10exceptions14PyRuntimeErrorNtNtCsexYYUdYSQU6_5alloc6string6StringE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTNtNtBe_6marker6PythonEE9call_once6vtableBe_:bb.a
          to label %bb.e unwind label %bb.d, !noalias !27

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !27
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNCINvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB7_5PyErr3newNtNtB9_10exceptions14PyRuntimeErrorNtNtCsexYYUdYSQU6_5alloc6string6StringE0B9_.exit: ; preds = %_RNvYNtNtCsdc6yCHiM2ZJ_4pyo310exceptions14PyRuntimeErrorNtNtB6_11type_object10PyTypeInfo11type_objectB6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.f, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo35types10memoryviewNtB2_12PyMemoryView4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.e = tail call noundef ptr @PyMemoryView_FromObject(ptr noundef nonnull %i.d) #22 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.g, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs_NtCsdc6yCHiM2ZJ_4pyo33errNtB4_5PyErr4take(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c)
  %i.h = load i64, ptr %i.c, align 8, !range !4, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.f, !prof !10

bb.d:                                             ; preds = %bb.g, %bb.b
  %.sink = phi i64 [ 1, %bb.g ], [ 0, %bb.b ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @_RNvNtCsdc6yCHiM2ZJ_4pyo33err15failed_to_fetch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.4.8.copyload = load ptr, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.8.copyload, ptr %i.k, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.44.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define range(i64 0, 8589934594) i64 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard10try_attach() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.b = icmp sgt i64 %.val.i, 0
  br i1 %i.b, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit.i, label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.c = tail call noundef i32 @Py_IsInitialized() #22
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume.exit, label %bb.e, !prof !10

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.val.i, -1
  br i1 %i.e, label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume.exit, label %bb.b

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit.i: ; preds = %bb.a
  %i.f = add nuw i64 %.val.i, 1
  store i64 %i.f, ptr %i.a, align 8
  %i.g = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state4POOL, i64 32) acquire, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume.exit

bb.d:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit.i
  tail call fastcc void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13ReferencePool24drop_deferred_references()
  br label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume.exit

_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume.exit: ; preds = %bb.d, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit.i, %bb.b, %bb.c, %bb.e
  %.sroa.5.0.insert.insert = phi i64 [ 8589934593, %bb.c ], [ %i.k, %bb.e ], [ 257, %bb.b ], [ 8589934592, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit.i ], [ 8589934592, %bb.d ]
  ret i64 %.sroa.5.0.insert.insert

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsdc6yCHiM2ZJ_4pyo321interpreter_lifecycle23wait_for_initialization()
  %i.i = tail call fastcc noundef i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard19do_attach_unchecked()
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 32
  br label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume.exit
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, 3) i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard16attach_unchecked() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.b = icmp sgt i64 %.val.i, 0
  br i1 %i.b, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit.i, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard19do_attach_unchecked()
  br label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume.exit

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit.i: ; preds = %bb.a
  %i.d = add nuw i64 %.val.i, 1
  store i64 %i.d, ptr %i.a, align 8
  %i.e = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state4POOL, i64 32) acquire, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume.exit

bb.c:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit.i
  tail call fastcc void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13ReferencePool24drop_deferred_references()
  br label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume.exit

_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume.exit: ; preds = %bb.c, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit.i, %bb.b
  %.sroa.0.0 = phi i32 [ %i.c, %bb.b ], [ 2, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit.i ], [ 2, %bb.c ]
  ret i32 %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard19do_attach_unchecked() unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i32 @_RNvNtCs971naDxHMnY_8pyo3_ffi7pystate17PyGILState_Ensure() #22
  %i.b = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMs5_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_15ForbidAttaching4bail(i64 noundef %i.c)
  unreachable

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit: ; preds = %bb.a
  %i.e = add nuw i64 %i.c, 1
  store i64 %i.e, ptr %i.b, align 8
  %i.f = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state4POOL, i64 32) acquire, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state24drop_deferred_references.exit

bb.c:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit
  tail call fastcc void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13ReferencePool24drop_deferred_references()
  br label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state24drop_deferred_references.exit

_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state24drop_deferred_references.exit: ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit, %bb.c
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, 3) i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6assume() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 3 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RNvMs5_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_15ForbidAttaching4bail(i64 noundef %i.b)
  unreachable

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit: ; preds = %bb.a
  %i.d = add nuw i64 %i.b, 1
  store i64 %i.d, ptr %i.a, align 8
  %i.e = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state4POOL, i64 32) acquire, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state24drop_deferred_references.exit

bb.c:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit
  tail call fastcc void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13ReferencePool24drop_deferred_references()
  br label %_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state24drop_deferred_references.exit

_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state24drop_deferred_references.exit: ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit, %bb.c
  ret i32 2
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, 3) i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard6attach() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i.i = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %.val.i.i, 0
  br i1 %i.c, label %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit.i.i, label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @Py_IsInitialized() #22
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard10try_attach.exit.thread.thread18, label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard10try_attach.exit.a, !prof !10

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.val.i.i, -1
  br i1 %i.f, label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard10try_attach.exit.thread.thread, label %bb.b

_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit.i.i: ; preds = %bb.a
  %i.g = add nuw i64 %.val.i.i, 1
  store i64 %i.g, ptr %i.b, align 8
  %i.h = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state4POOL, i64 32) acquire, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard10try_attach.exit.thread13

bb.d:                                             ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit.i.i
  tail call fastcc void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13ReferencePool24drop_deferred_references()
  br label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard10try_attach.exit.thread13

_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard10try_attach.exit.a: ; preds = %bb.b
  tail call void @_RNvNtCsdc6yCHiM2ZJ_4pyo321interpreter_lifecycle23wait_for_initialization()
  %i.j = tail call fastcc noundef i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard19do_attach_unchecked()
  br label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard10try_attach.exit.thread13

_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard10try_attach.exit.thread13: ; preds = %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit.i.i, %bb.d, %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard10try_attach.exit.a, %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard10try_attach.exit.thread.thread18
  %.sroa.0.0 = phi i32 [ %0, %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard10try_attach.exit.thread.thread18 ], [ %i.j, %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard10try_attach.exit.a ], [ 2, %_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CelliEE8try_withNCNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state22increment_attach_count0uEB1L_.exit.i.i ], [ 2, %bb.d ]
  ret i32 %.sroa.0.0

_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard10try_attach.exit.thread.thread18: ; preds = %bb.b
  tail call void @_RNvNtCsdc6yCHiM2ZJ_4pyo321interpreter_lifecycle18ensure_initialized()
  %0 = tail call fastcc noundef i32 @_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard19do_attach_unchecked()
  br label %_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard10try_attach.exit.thread13

_RNvMNtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB2_11AttachGuard10try_attach.exit.thread.thread: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @8, ptr %i.a, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsdc6yCHiM2ZJ_4pyo3, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13ReferencePool15register_decref(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEEE4lockCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.c = load i64, ptr %i.b, align 8, !range !4, !alias.scope !33, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtB4_3ptr8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEEEINtBM_11PoisonErrorBH_EE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !33, !nonnull !5, !align !8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !9, !alias.scope !33, !noundef !5
  store ptr %i.f, ptr %i.a, align 8, !noalias !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !34
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #27
          to label %bb.d unwind label %bb.c, !noalias !33

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2_8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEEEEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #25
          to label %common.resume unwind label %bb.e, !noalias !33

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !33
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.v, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtB4_3ptr8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEEEINtBM_11PoisonErrorBH_EE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !33, !nonnull !5, !align !8, !noundef !5 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !9, !alias.scope !33, !noundef !5 ; 2 uses
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !35, !noundef !5 ; 3 uses
  %i.t = load i64, ptr %i.q, align 8, !range !12, !alias.scope !35, !noundef !5
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtB4_3ptr8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEEEINtBM_11PoisonErrorBH_EE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEE8grow_oneCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #24
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2_8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEEEECsdc6yCHiM2ZJ_4pyo3(ptr nonnull %i.m, i8 %i.o) #25
          to label %common.resume unwind label %bb.m

bb.h:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtB4_3ptr8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEEEINtBM_11PoisonErrorBH_EE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !35, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.s
  store ptr %1, ptr %i.y, align 8
  %i.z = add i64 %i.s, 1
  store i64 %i.z, ptr %i.r, align 8, !alias.scope !35
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.p, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ac = and i64 %i.ab, 9223372036854775807
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.ae = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24
  br i1 %i.ae, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  store atomic i8 1, ptr %i.aa monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.af = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.ag = icmp eq i32 %i.af, 2
  br i1 %i.ag, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2_8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEEEECsdc6yCHiM2ZJ_4pyo3.exit, !prof !11

bb.l:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2_8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEEEECsdc6yCHiM2ZJ_4pyo3.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2_8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEEEECsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.l
  ret void

bb.m:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCsdc6yCHiM2ZJ_4pyo38internal5stateNtB5_13ReferencePool24drop_deferred_references() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEEE4lockCsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 @_RNvNtNtCsdc6yCHiM2ZJ_4pyo38internal5state4POOL)
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.e = load i64, ptr %i.d, align 8, !range !4, !alias.scope !41, !noundef !5
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtB4_3ptr8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEEEINtBM_11PoisonErrorBH_EE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !41, !nonnull !5, !align !8, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !9, !alias.scope !41, !noundef !5
  store ptr %i.h, ptr %i.a, align 8, !noalias !42
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.j, ptr %i.k, align 8, !noalias !42
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #27
          to label %bb.d unwind label %bb.c, !noalias !41

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB2_8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEEEEECsdc6yCHiM2ZJ_4pyo3(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #25
          to label %common.resume unwind label %bb.e, !noalias !41

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !41
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.c ], [ %lpad.thr_comm, %bb.t ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtB4_3ptr8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEEEINtBM_11PoisonErrorBH_EE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !41, !nonnull !5, !align !8, !noundef !5 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !9, !alias.scope !41, !noundef !5
  %i.r = trunc nuw i8 %i.q to i1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 2 uses
  %i.u = icmp ult i64 %i.t, 1152921504606846976
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %bb.k, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtB4_3ptr8non_null7NonNullNtNtCs971naDxHMnY_8pyo3_ffi6object8PyObjectEEEINtBM_11PoisonErrorBH_EE6unwrapCsdc6yCHiM2ZJ_4pyo3.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  store i64 0, ptr %i.w, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  store i64 0, ptr %i.s, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br i1 %i.r, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.z = and i64 %i.y, 9223372036854775807
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.ab = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #24
          to label %.noexc unwind label %bb.t

end_hunk_0
