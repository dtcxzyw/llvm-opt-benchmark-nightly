inline.NumInlined: 8879
inline.NumDeleted: 3388
begin_hunk_0_@_ZN5arrow30CreateAsyncDeviceStreamHandlerEP29ArrowAsyncDeviceStreamHandlerPNS_8internal8ExecutorEmSt8functionIFNS_6ResultISt10shared_ptrINS_13MemoryManagerEEEEilEE:bb.a
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ey, align 4, !tbaa !166
  %i.ez = load ptr, ptr %i.bv, align 8, !tbaa !84
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #32, !inline_history !985
  %i.fc = load ptr, ptr %i.bv, align 8, !tbaa !84
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #32, !inline_history !985
  br label %_ZN5arrow6FutureISt10shared_ptrINS_12_GLOBAL__N_124AsyncRecordBatchIterator5StateEEED2Ev.exit

bb.av:                                            ; preds = %bb.at
  %i.ff = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i27 = icmp eq i8 %i.ff, 0
  br i1 %.not.i.i.i.i27, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fg = add nsw i32 %i.ex, -1
  store i32 %i.fg, ptr %i.eu, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.fh = atomicrmw volatile add ptr %i.eu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i = phi i32 [ %i.ex, %bb.aw ], [ %i.fh, %bb.ax ]
  %i.fi = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fi, label %bb.ay, label %_ZN5arrow6FutureISt10shared_ptrINS_12_GLOBAL__N_124AsyncRecordBatchIterator5StateEEED2Ev.exit, !prof !168

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #32
  br label %_ZN5arrow6FutureISt10shared_ptrINS_12_GLOBAL__N_124AsyncRecordBatchIterator5StateEEED2Ev.exit

_ZN5arrow6FutureISt10shared_ptrINS_12_GLOBAL__N_124AsyncRecordBatchIterator5StateEEED2Ev.exit: ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.au, %bb.as
  %i.fj = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 4294967297
  %i.fl = trunc i64 %i.fj to i32                  ; 2 uses
  br i1 %i.fk, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_12_GLOBAL__N_124AsyncRecordBatchIterator5StateEEED2Ev.exit
  store i32 0, ptr %i.b, align 8, !tbaa !164
  store i32 0, ptr %i.c, align 4, !tbaa !166
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #32, !inline_history !986
  %i.fp = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #32, !inline_history !986
  br label %_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_124AsyncRecordBatchIteratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ba:                                            ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_12_GLOBAL__N_124AsyncRecordBatchIterator5StateEEED2Ev.exit
  %i.fs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i28 = icmp eq i8 %i.fs, 0
  br i1 %.not.i.i.i28, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ft = add nsw i32 %i.fl, -1
  store i32 %i.ft, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.fu = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i = phi i32 [ %i.fl, %bb.bb ], [ %i.fu, %bb.bc ]
  %i.fv = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.fv, label %bb.bd, label %_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_124AsyncRecordBatchIteratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !168

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #32
  br label %_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_124AsyncRecordBatchIteratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_124AsyncRecordBatchIteratorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.bd
  ret void

.body:                                            ; preds = %bb.af, %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i, %common.resume.i14
  %.pn = phi { ptr, i32 } [ %common.resume.op.i15, %common.resume.i14 ], [ %i.di, %bb.af ], [ %.pn.i.i, %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i ]
  call fastcc void @_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_124AsyncRecordBatchIteratorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.a) #32
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN5arrow6FutureISt10shared_ptrINS_12_GLOBAL__N_124AsyncRecordBatchIterator5StateEEED2Ev(ptr %.8.val) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %.8.val, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !166
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #32, !inline_history !987
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #32, !inline_history !987
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !168

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #32
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_124AsyncRecordBatchIteratorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %.8.val, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !164
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !166
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !84
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #32, !inline_history !439
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #32, !inline_history !439
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !168

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #32
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow28ExportAsyncRecordBatchReaderESt10shared_ptrINS_6SchemaEESt8functionIFNS_6FutureIS0_INS_11RecordBatchEEEEvEENS_20DeviceAllocationTypeEP29ArrowAsyncDeviceStreamHandler(ptr dead_on_unwind noalias writable sret(%"class.arrow::Future.201") align 8 %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i8 noundef signext %3, ptr noundef %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::FnOnce", align 8 ; 6 uses
  %6 = alloca %"class.std::__shared_ptr.192", align 8 ; 6 uses
  %7 = alloca %"class.std::unique_ptr.530", align 8 ; 7 uses
  %8 = alloca %"struct.arrow::Future<std::optional<arrow::internal::Empty>>::WrapResultOnComplete::Callback", align 8 ; 12 uses
  %9 = alloca %"class.arrow::internal::FnOnce", align 8 ; 6 uses
  %10 = alloca %"struct.arrow::Future<std::optional<arrow::internal::Empty>>::WrapResultOnComplete::Callback", align 8 ; 15 uses
  %11 = alloca %"class.std::__shared_ptr.192", align 8 ; 6 uses
  %12 = alloca %"class.std::unique_ptr.530", align 8 ; 7 uses
  %13 = alloca %"class.arrow::Future.798", align 8 ; 7 uses
  %14 = alloca %struct.Callback, align 8          ; 16 uses
  %15 = alloca %struct.LoopBody, align 8          ; 15 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %19 = alloca %struct.ArrowSchema, align 8       ; 6 uses
  %20 = alloca %"class.arrow::internal::ExportGuard", align 8 ; 6 uses
  %21 = alloca %"class.arrow::Status", align 8    ; 11 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %23 = alloca %"class.arrow::Future.201", align 8 ; 9 uses
  %24 = alloca %"class.std::function.202", align 8 ; 11 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !431    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !972
  tail call void %i.d(ptr noundef %4, i32 noundef 22, ptr noundef nonnull @.str, ptr noundef null)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !973
  tail call void %i.f(ptr noundef %4)
  call void @_ZN5arrow6Status8FromArgsIJRA15_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %18, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(15) @.str)
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE12MakeFinishedIS2_vEES3_NS_6StatusE(ptr dead_on_unwind writable sret(%"class.arrow::Future.201") align 8 %0, ptr noundef nonnull %18)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %18, align 8, !tbaa !78    ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d, !prof !90

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !93, !range !102, !noundef !103
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #32
  br label %_ZN5arrow6StatusD2Ev.exit

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.l = load ptr, ptr %18, align 8, !tbaa !78    ; 2 uses
  %.not.i28 = icmp eq ptr %i.l, null
  br i1 %.not.i28, label %_ZN5arrow6StatusD2Ev.exit29, label %bb.g, !prof !90

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !93, !range !102, !noundef !103
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit29, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #32
  br label %_ZN5arrow6StatusD2Ev.exit29

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  store ptr %19, ptr %20, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  invoke void @_ZN5arrow12ExportSchemaERKNS_6SchemaEP11ArrowSchema(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull %19)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.p = load ptr, ptr %21, align 8, !tbaa !78
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !972
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5arrow6Status7messageB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !91
  invoke void %i.s(ptr noundef nonnull %4, i32 noundef 22, ptr noundef %i.u, ptr noundef null)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !973
  invoke void %i.w(ptr noundef nonnull %4)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %22, align 8, !tbaa !78
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.s

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.n
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE12MakeFinishedIS2_vEES3_NS_6StatusE(ptr dead_on_unwind writable sret(%"class.arrow::Future.201") align 8 %0, ptr noundef nonnull %22)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.x = load ptr, ptr %22, align 8, !tbaa !78    ; 2 uses
  %.not.i30 = icmp eq ptr %i.x, null
  br i1 %.not.i30, label %_ZN5arrow6StatusD2Ev.exit31, label %bb.p, !prof !90

bb.p:                                             ; preds = %bb.o
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !93, !range !102, !noundef !103
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit31, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #32
  br label %_ZN5arrow6StatusD2Ev.exit31

bb.r:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit62

bb.s:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit33

bb.t:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ae = load ptr, ptr %22, align 8, !tbaa !78   ; 2 uses
  %.not.i32 = icmp eq ptr %i.ae, null
  br i1 %.not.i32, label %_ZN5arrow6StatusD2Ev.exit33, label %bb.u, !prof !90

bb.u:                                             ; preds = %bb.t
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !93, !range !102, !noundef !103
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit33, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #32
  br label %_ZN5arrow6StatusD2Ev.exit33

bb.w:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  %i.ai = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %24, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 0, i64 32, i1 false)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !585 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFN5arrow6FutureISt10shared_ptrINS0_11RecordBatchEEEEvEEC2ERKS7_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 2)
          to label %bb.y unwind label %bb.z       ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.an = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !244
  store <2 x ptr> %i.an, ptr %i.ai, align 8, !tbaa !244
  br label %_ZNSt8functionIFN5arrow6FutureISt10shared_ptrINS0_11RecordBatchEEEEvEEC2ERKS7_.exit

bb.z:                                             ; preds = %bb.x
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !585 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %.body, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 3)
          to label %.body unwind label %bb.ab     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #39
  unreachable

_ZNSt8functionIFN5arrow6FutureISt10shared_ptrINS0_11RecordBatchEEEEvEEC2ERKS7_.exit: ; preds = %bb.y, %bb.w
  %i.at = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #35
          to label %.noexc unwind label %bb.cp    ; 12 uses

.noexc:                                           ; preds = %_ZNSt8functionIFN5arrow6FutureISt10shared_ptrINS0_11RecordBatchEEEEvEEC2ERKS7_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 1, ptr %i.au, align 8, !tbaa !164, !noalias !988
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 1, ptr %i.av, align 4, !tbaa !166, !noalias !988
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12_GLOBAL__N_113AsyncProducer5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.at, align 8, !tbaa !84, !noalias !988
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.aw, i8 0, i64 144, i1 false), !noalias !988
  call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.ax) #32, !noalias !988
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false), !noalias !988
  %i.az = sext i8 %3 to i32
  store i32 %i.az, ptr %i.aw, align 8, !tbaa !991
end_hunk_0
begin_hunk_1_@_ZN5arrow28ExportAsyncRecordBatchReaderESt10shared_ptrINS_6SchemaEESt8functionIFNS_6FutureIS0_INS_11RecordBatchEEEEvEENS_20DeviceAllocationTypeEP29ArrowAsyncDeviceStreamHandler:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32, !noalias !998
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32, !noalias !998
  %i.bt = getelementptr inbounds nuw i8, ptr %i.at, i64 152 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.ag, !prof !90

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !93, !range !102, !noundef !103
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #32
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.ah, %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.by = load ptr, ptr %17, align 8, !tbaa !78
  store ptr %i.by, ptr %i.bt, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.al

bb.ai:                                            ; preds = %.noexc
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ad
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ca, %bb.aj ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.ak

bb.ak:                                            ; preds = %.body.i, %bb.ai
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.bz, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call fastcc void @_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_113AsyncProducer5StateELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.at) #32
  br label %.body34

bb.al:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 24, i1 false), !noalias !1003
  %i.cc = load ptr, ptr %i.aj, align 8, !tbaa !1006, !noalias !1003
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !1006, !noalias !1003
  %i.cd = load ptr, ptr %i.ai, align 8, !tbaa !585, !noalias !1003 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFN5arrow6FutureISt10shared_ptrINS0_11RecordBatchEEEEvEEC2EOS7_.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 16, i1 false), !tbaa.struct !589, !noalias !1003
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !585, !noalias !1003
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false), !noalias !1003
  br label %_ZNSt8functionIFN5arrow6FutureISt10shared_ptrINS0_11RecordBatchEEEEvEEC2EOS7_.exit.i

_ZNSt8functionIFN5arrow6FutureISt10shared_ptrINS0_11RecordBatchEEEEvEEC2EOS7_.exit.i: ; preds = %bb.am, %bb.al
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 2 uses
  store ptr %4, ptr %i.cf, align 8, !tbaa !1008, !noalias !1003
  %i.cg = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  store ptr %i.aw, ptr %i.cg, align 8, !tbaa !1014, !noalias !1003
  %i.ch = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 4 uses
  store ptr %i.at, ptr %i.ch, align 8, !tbaa !163, !noalias !1003
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !1003
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false), !alias.scope !1021
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32, !noalias !1021
  invoke void @_ZN5arrow10FutureImpl4MakeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.530") align 8 %12)
          to label %bb.an unwind label %bb.ap, !noalias !1021

bb.an:                                            ; preds = %_ZNSt8functionIFN5arrow6FutureISt10shared_ptrINS0_11RecordBatchEEEEvEEC2EOS7_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32, !noalias !1021
  invoke void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ao unwind label %bb.aq, !noalias !1021

bb.ao:                                            ; preds = %bb.an
  %i.ci = load ptr, ptr %11, align 8, !tbaa !961, !noalias !1021 ; 2 uses
  store ptr null, ptr %11, align 8, !tbaa !961, !noalias !1021
  store ptr %i.ci, ptr %23, align 8, !tbaa !961, !alias.scope !1021
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !163, !noalias !1021 ; 4 uses
  store ptr %i.cl, ptr %i.ck, align 8, !tbaa !163, !alias.scope !1021
  %.pre.i.i.i = load ptr, ptr %12, align 8, !tbaa !961, !noalias !1021 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32, !noalias !1021
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i: ; preds = %bb.ao
  %i.cm = load ptr, ptr %.pre.i.i.i, align 8, !tbaa !84, !noalias !1021
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !1021
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(72) %.pre.i.i.i) #32, !noalias !1021, !inline_history !1022
  br label %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i

bb.ap:                                            ; preds = %_ZNSt8functionIFN5arrow6FutureISt10shared_ptrINS0_11RecordBatchEEEEvEEC2EOS7_.exit.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i

bb.aq:                                            ; preds = %bb.an
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cr = load ptr, ptr %12, align 8, !tbaa !961, !noalias !1021 ; 3 uses
  %.not.i4.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i4.i.i.i, label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i, label %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i

_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i: ; preds = %bb.aq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !84, !noalias !1021
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !1021
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(72) %i.cr) #32, !noalias !1021, !inline_history !1022
  br label %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i

common.resume.i.i:                                ; preds = %bb.bk, %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i ], [ %.pn.i.i, %bb.bk ]
  call void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #32
  call fastcc void @_ZZN5arrow19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS6_IT_EEvEET0_EN8LoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %15) #32
  br label %.body37

_ZNSt10unique_ptrIN5arrow10FutureImplESt14default_deleteIS1_EED2Ev.exit6.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i, %bb.aq, %bb.ap
  %.pn.i.i.i = phi { ptr, i32 } [ %i.cp, %bb.ap ], [ %i.cq, %bb.aq ], [ %i.cq, %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i5.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32, !noalias !1021
  br label %common.resume.i.i

_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32, !noalias !1021
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32, !noalias !1023
  invoke fastcc void @_ZZN5arrow19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS6_IT_EEvEET0_EN8LoopBodyclEv(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef nonnull align 8 dereferenceable(56) %15)
          to label %bb.ar unwind label %bb.bj, !noalias !1023

bb.ar:                                            ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %14, i8 0, i64 24, i1 false), !noalias !1023
  %i.cw = load ptr, ptr %i.cb, align 8, !tbaa !1006, !noalias !1023 ; 3 uses
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !1006, !noalias !1023
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !585, !noalias !1023 ; 4 uses
  %.not.i.i.not.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.not.i.i.i.i, label %_ZZN5arrow19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS6_IT_EEvEET0_EN8LoopBodyC2EOSG_.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cz = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(56) %15, i64 16, i1 false), !tbaa.struct !589, !noalias !1023
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !585, !noalias !1023
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i8 0, i64 16, i1 false), !noalias !1023
  br label %_ZZN5arrow19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS6_IT_EEvEET0_EN8LoopBodyC2EOSG_.exit.i.i

_ZZN5arrow19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS6_IT_EEvEET0_EN8LoopBodyC2EOSG_.exit.i.i: ; preds = %bb.as, %bb.ar
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %14, i64 40 ; 2 uses
  %i.dc = load <2 x ptr>, ptr %i.cf, align 8, !tbaa !244, !noalias !1023
  store <2 x ptr> %i.dc, ptr %i.da, align 8, !tbaa !244, !noalias !1023
  %i.dd = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 2 uses
  %i.de = load ptr, ptr %i.ch, align 8, !tbaa !163, !noalias !1023
  store ptr null, ptr %i.ch, align 8, !tbaa !163, !noalias !1023
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !163, !noalias !1023
  store ptr null, ptr %i.cg, align 8, !tbaa !1014, !noalias !1023
  %i.df = getelementptr inbounds nuw i8, ptr %14, i64 56 ; 2 uses
  store ptr %i.ci, ptr %i.df, align 8, !tbaa !965, !noalias !1023
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  store ptr %i.cl, ptr %i.dg, align 8, !tbaa !163, !noalias !1023
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i, label %bb.at

bb.at:                                            ; preds = %_ZZN5arrow19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS6_IT_EEvEET0_EN8LoopBodyC2EOSG_.exit.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 3 uses
  %i.di = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !1023
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !3, !noalias !1023
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !3, !noalias !1023
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i

bb.av:                                            ; preds = %bb.at
  %i.dl = atomicrmw volatile add ptr %i.dh, i32 1 acq_rel, align 4, !noalias !1023 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.cv, align 8, !tbaa !1006, !noalias !1023
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.pre7.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !585, !noalias !1023
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i

_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i: ; preds = %bb.av, %bb.au, %_ZZN5arrow19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS6_IT_EEvEET0_EN8LoopBodyC2EOSG_.exit.i.i
  %i.dm = phi ptr [ %i.cy, %_ZZN5arrow19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS6_IT_EEvEET0_EN8LoopBodyC2EOSG_.exit.i.i ], [ %i.cy, %bb.au ], [ %.pre7.i.i, %bb.av ] ; 4 uses
  %i.dn = phi ptr [ %i.cw, %_ZZN5arrow19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS6_IT_EEvEET0_EN8LoopBodyC2EOSG_.exit.i.i ], [ %i.cw, %bb.au ], [ %.pre.i.i, %bb.av ] ; 4 uses
  %.val.i.i = load ptr, ptr %13, align 8, !tbaa !965, !noalias !1023
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !1023
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !1023
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %10, i8 0, i64 24, i1 false), !noalias !1023
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !1006, !noalias !1023
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.dm, null ; 2 uses
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZZN5arrow4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS7_IT_EEvEET0_E8LoopBodySt8optionalIS9_ES9_EENS7_IT1_EESC_EN8CallbackC2EOSM_.exit.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(72) %14, i64 16, i1 false), !tbaa.struct !589, !noalias !1023
  store ptr %i.dm, ptr %i.dq, align 8, !tbaa !585, !noalias !1023
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i8 0, i64 16, i1 false), !noalias !1023
  br label %_ZZN5arrow4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS7_IT_EEvEET0_E8LoopBodySt8optionalIS9_ES9_EENS7_IT1_EESC_EN8CallbackC2EOSM_.exit.i.i.i

_ZZN5arrow4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS7_IT_EEvEET0_E8LoopBodySt8optionalIS9_ES9_EENS7_IT1_EESC_EN8CallbackC2EOSM_.exit.i.i.i: ; preds = %bb.aw, %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ds = load ptr, ptr %i.da, align 8, !tbaa !1008, !noalias !1023 ; 4 uses
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !1008, !noalias !1023
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 3 uses
  %i.du = load ptr, ptr %i.db, align 8, !tbaa !1014, !noalias !1023 ; 2 uses
  store ptr %i.du, ptr %i.dt, align 8, !tbaa !1014, !noalias !1023
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.dw = load ptr, ptr %i.dd, align 8, !tbaa !163, !noalias !1023 ; 2 uses
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !163, !noalias !1023
  %i.dx = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.dy = load ptr, ptr %i.df, align 8, !tbaa !965, !noalias !1023 ; 2 uses
  store ptr %i.dy, ptr %i.dx, align 8, !tbaa !965, !noalias !1023
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ea = load ptr, ptr %i.dg, align 8, !tbaa !163, !noalias !1023 ; 2 uses
  store ptr %i.ea, ptr %i.dz, align 8, !tbaa !163, !noalias !1023
  store <4 x ptr> splat (ptr null), ptr %i.db, align 8, !tbaa !244, !noalias !1023
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !1023
  %i.eb = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #35
          to label %.noexc.i.i.i unwind label %bb.ba, !noalias !1023, !inline_history !1024 ; 13 uses

.noexc.i.i.i:                                     ; preds = %_ZZN5arrow4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS7_IT_EEvEET0_E8LoopBodySt8optionalIS9_ES9_EENS7_IT1_EESC_EN8CallbackC2EOSM_.exit.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 24, i1 false), !noalias !1023
  store ptr %i.dn, ptr %i.ec, align 8, !tbaa !1006, !noalias !1023
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZN5arrow6FutureISt8optionalINS_8internal5EmptyEEE20WrapResultOnComplete8CallbackIZNS_4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS0_IS3_EESt8functionIFNS0_IT_EEvEET0_E8LoopBodyS4_S3_EENS0_IT1_EESH_E8CallbackEC2EOSQ_.exit.i.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %.noexc.i.i.i
  %25 = getelementptr inbounds nuw i8, ptr %10, i64 16
  %26 = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %10, i64 16, i1 false), !tbaa.struct !589, !noalias !1023
  store ptr %i.dm, ptr %26, align 8, !tbaa !585, !noalias !1023
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false), !noalias !1023
  %27 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.ds, ptr %27, align 8, !tbaa !1008, !noalias !1023
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, i8 0, i64 32, i1 false), !noalias !1023
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt8optionalINS0_5EmptyEEE20WrapResultOnComplete8CallbackIZNS_4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS8_ISA_EESt8functionIFNS8_IT_EEvEET0_E8LoopBodySB_SA_EENS8_IT1_EESO_E8CallbackEEEE, i64 16), ptr %i.eb, align 8, !tbaa !84, !noalias !1023
  %28 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %28, i8 0, i64 24, i1 false), !noalias !1023
  store ptr %i.dn, ptr %29, align 8, !tbaa !1006, !noalias !1023
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %28, ptr noundef nonnull align 8 dereferenceable(72) %8, i64 16, i1 false), !tbaa.struct !589, !noalias !1023
  store ptr %i.dm, ptr %i.ee, align 8, !tbaa !585, !noalias !1023
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i8 0, i64 16, i1 false), !noalias !1023
  br label %bb.ay

_ZN5arrow6FutureISt8optionalINS_8internal5EmptyEEE20WrapResultOnComplete8CallbackIZNS_4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS0_IS3_EESt8functionIFNS0_IT_EEvEET0_E8LoopBodyS4_S3_EENS0_IT1_EESH_E8CallbackEC2EOSQ_.exit.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.ds, ptr %i.ef, align 8, !tbaa !1008, !noalias !1023
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, i8 0, i64 32, i1 false), !noalias !1023
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt8optionalINS0_5EmptyEEE20WrapResultOnComplete8CallbackIZNS_4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS8_ISA_EESt8functionIFNS8_IT_EEvEET0_E8LoopBodySB_SA_EENS8_IT1_EESO_E8CallbackEEEE, i64 16), ptr %i.eb, align 8, !tbaa !84, !noalias !1023
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eg, i8 0, i64 24, i1 false), !noalias !1023
  store ptr %i.dn, ptr %i.eh, align 8, !tbaa !1006, !noalias !1023
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN5arrow6FutureISt8optionalINS_8internal5EmptyEEE20WrapResultOnComplete8CallbackIZNS_4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS0_IS3_EESt8functionIFNS0_IT_EEvEET0_E8LoopBodyS4_S3_EENS0_IT1_EESH_E8CallbackEC2EOSQ_.exit.i.i.i.i, %bb.ax
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  store ptr %i.ds, ptr %i.ej, align 8, !tbaa !1008, !noalias !1023
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  store ptr %i.du, ptr %i.ek, align 8, !tbaa !1014, !noalias !1023
  %i.el = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  store ptr %i.dw, ptr %i.el, align 8, !tbaa !163, !noalias !1023
  %i.em = getelementptr inbounds nuw i8, ptr %i.eb, i64 64
  store ptr %i.dy, ptr %i.em, align 8, !tbaa !965, !noalias !1023
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  store ptr %i.ea, ptr %i.en, align 8, !tbaa !163, !noalias !1023
  store <4 x ptr> splat (ptr null), ptr %i.ei, align 8, !tbaa !244, !noalias !1023
  store ptr %i.eb, ptr %9, align 8, !tbaa !982, !noalias !1023
  call fastcc void @_ZZN5arrow4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS7_IT_EEvEET0_E8LoopBodySt8optionalIS9_ES9_EENS7_IT1_EESC_EN8CallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %8) #32, !noalias !1023, !inline_history !1024
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !1023
  invoke void @_ZN5arrow10FutureImpl11AddCallbackENS_8internal6FnOnceIFvRKS0_EEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(72) %.val.i.i, ptr noundef nonnull %9, i32 0, ptr null)
          to label %bb.az unwind label %bb.bb, !noalias !1023

bb.az:                                            ; preds = %bb.ay
  %i.eo = load ptr, ptr %9, align 8, !tbaa !982, !noalias !1023 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i, label %bb.bc, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i: ; preds = %bb.az
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !84, !noalias !1023
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !1023
  call void %i.er(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eo) #32, !noalias !1023, !inline_history !1025
  br label %bb.bc

bb.ba:                                            ; preds = %_ZZN5arrow4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS7_IT_EEvEET0_E8LoopBodySt8optionalIS9_ES9_EENS7_IT1_EESC_EN8CallbackC2EOSM_.exit.i.i.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i.i.i

bb.bb:                                            ; preds = %bb.ay
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = load ptr, ptr %9, align 8, !tbaa !982, !noalias !1023 ; 3 uses
  %.not.i.i7.i.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i7.i.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i8.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i8.i.i.i: ; preds = %bb.bb
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !84, !noalias !1023
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !1023
  call void %i.ex(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eu) #32, !noalias !1023, !inline_history !1025
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i.i.i

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i8.i.i.i, %bb.bb, %bb.ba
  %.pn.i4.i.i = phi { ptr, i32 } [ %i.es, %bb.ba ], [ %i.et, %bb.bb ], [ %i.et, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i8.i.i.i ]
  call fastcc void @_ZZN5arrow4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS7_IT_EEvEET0_E8LoopBodySt8optionalIS9_ES9_EENS7_IT1_EESC_EN8CallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %10) #32, !noalias !1023
  call fastcc void @_ZZN5arrow4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS7_IT_EEvEET0_E8LoopBodySt8optionalIS9_ES9_EENS7_IT1_EESC_EN8CallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %14) #32, !noalias !1023
  call void @_ZN5arrow6FutureISt8optionalINS_8internal5EmptyEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #32, !noalias !1023
  br label %bb.bk

bb.bc:                                            ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i, %bb.az
  call fastcc void @_ZZN5arrow4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS7_IT_EEvEET0_E8LoopBodySt8optionalIS9_ES9_EENS7_IT1_EESC_EN8CallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %10) #32, !noalias !1023
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !1023
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !1023
  call fastcc void @_ZZN5arrow4LoopIZNS_19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS7_IT_EEvEET0_E8LoopBodySt8optionalIS9_ES9_EENS7_IT1_EESC_EN8CallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %14) #32, !noalias !1023
  %i.ey = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !163, !noalias !1023 ; 8 uses
  %.not.i.i.i5.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i5.i.i, label %bb.bl, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 4 uses
  %i.fb = load atomic i64, ptr %i.fa acquire, align 8, !noalias !1023 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, 4294967297
  %i.fd = trunc i64 %i.fb to i32                  ; 2 uses
  br i1 %i.fc, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.fa, align 8, !tbaa !164, !noalias !1023
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 0, ptr %i.fe, align 4, !tbaa !166, !noalias !1023
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !84, !noalias !1023
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !1023
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #32, !noalias !1023, !inline_history !1026
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !84, !noalias !1023
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !1023
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #32, !noalias !1023, !inline_history !1026
  br label %bb.bl

bb.bf:                                            ; preds = %bb.bd
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !1023
  %.not.i.i.i.i6.i.i = icmp eq i8 %i.fl, 0
  br i1 %.not.i.i.i.i6.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fm = add nsw i32 %i.fd, -1
  store i32 %i.fm, ptr %i.fa, align 4, !tbaa !3, !noalias !1023
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.fn = atomicrmw volatile add ptr %i.fa, i32 -1 acq_rel, align 4, !noalias !1023
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fd, %bb.bg ], [ %i.fn, %bb.bh ]
  %i.fo = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.fo, label %bb.bi, label %bb.bl, !prof !168

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ez) #32, !noalias !1023
  br label %bb.bl

bb.bj:                                            ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv.exit.i.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i.i.i
  %.pn.i.i = phi { ptr, i32 } [ %.pn.i4.i.i, %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i.i.i ], [ %i.fp, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32, !noalias !1023
  br label %common.resume.i.i

bb.bl:                                            ; preds = %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.be, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32, !noalias !1023
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !1003
  %.val.i1.i = load ptr, ptr %i.ch, align 8, !tbaa !163, !noalias !1003 ; 8 uses
  %.not.i.i.i.i2.i = icmp eq ptr %.val.i1.i, null
  br i1 %.not.i.i.i.i2.i, label %_ZN5arrow12_GLOBAL__N_113AsyncProducerD2Ev.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fq = getelementptr inbounds nuw i8, ptr %.val.i1.i, i64 8 ; 4 uses
  %i.fr = load atomic i64, ptr %i.fq acquire, align 8, !noalias !1003 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 4294967297
  %i.ft = trunc i64 %i.fr to i32                  ; 2 uses
  br i1 %i.fs, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.fq, align 8, !tbaa !164, !noalias !1003
  %i.fu = getelementptr inbounds nuw i8, ptr %.val.i1.i, i64 12
  store i32 0, ptr %i.fu, align 4, !tbaa !166, !noalias !1003
  %i.fv = load ptr, ptr %.val.i1.i, align 8, !tbaa !84, !noalias !1003
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !1003
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(16) %.val.i1.i) #32, !noalias !1003, !inline_history !1027
  %i.fy = load ptr, ptr %.val.i1.i, align 8, !tbaa !84, !noalias !1003
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !1003
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %.val.i1.i) #32, !noalias !1003, !inline_history !1027
  br label %_ZN5arrow12_GLOBAL__N_113AsyncProducerD2Ev.exit.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.gb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !1003
  %.not.i.i.i.i.i3.i = icmp eq i8 %i.gb, 0
  br i1 %.not.i.i.i.i.i3.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gc = add nsw i32 %i.ft, -1
  store i32 %i.gc, ptr %i.fq, align 4, !tbaa !3, !noalias !1003
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i4.i

bb.bq:                                            ; preds = %bb.bo
  %i.gd = atomicrmw volatile add ptr %i.fq, i32 -1 acq_rel, align 4, !noalias !1003
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i4.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i4.i: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i.i.i5.i = phi i32 [ %i.ft, %bb.bp ], [ %i.gd, %bb.bq ]
  %i.ge = icmp eq i32 %.0.i.i.i.i.i.i5.i, 1
  br i1 %i.ge, label %bb.br, label %_ZN5arrow12_GLOBAL__N_113AsyncProducerD2Ev.exit.i.i, !prof !168

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i4.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i1.i) #32, !noalias !1003
  br label %_ZN5arrow12_GLOBAL__N_113AsyncProducerD2Ev.exit.i.i

_ZN5arrow12_GLOBAL__N_113AsyncProducerD2Ev.exit.i.i: ; preds = %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i4.i, %bb.bn, %bb.bl
  %i.gf = load ptr, ptr %i.cx, align 8, !tbaa !585, !noalias !1003 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i36, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %_ZN5arrow12_GLOBAL__N_113AsyncProducerD2Ev.exit.i.i
  %i.gg = invoke noundef zeroext i1 %i.gf(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(56) %15, i32 noundef 3)
          to label %bb.bu unwind label %bb.bt, !noalias !1003 ; 0 uses

bb.bt:                                            ; preds = %bb.bs
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #39, !noalias !1003
  unreachable

bb.bu:                                            ; preds = %bb.bs, %_ZN5arrow12_GLOBAL__N_113AsyncProducerD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !1034
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32, !noalias !1034
  invoke void @_ZN5arrow10FutureImpl4MakeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.530") align 8 %7)
          to label %bb.bv unwind label %bb.bx, !noalias !1034

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32, !noalias !1034
  invoke void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.bw unwind label %bb.by, !noalias !1034
end_hunk_1
begin_hunk_2_@_ZN5arrow6ResultIaEC2ERKNS_6StatusE:bb.a

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !91     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !39
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !91     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !39
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.m = load ptr, ptr %3, align 8, !tbaa !91     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !39
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #39
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN5arrow11IntegerTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_8Int8TypeEE7ConvertERKS2_PKcmPa(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %bb.b, !prof !168

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %3, 2
  %i.c = load i8, ptr %2, align 1, !tbaa !39      ; 2 uses
  %i.d = icmp eq i8 %i.c, 48
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !39
  switch i8 %i.f, label %.thread [
    i8 120, label %bb.d
    i8 88, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.h = add i64 %3, -3                           ; 2 uses
  %i.i = icmp ult i64 %i.h, 2
  br i1 %i.i, label %.lr.ph.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, !prof !90

.lr.ph.i:                                         ; preds = %bb.d
  %i.j = load i8, ptr %i.g, align 1, !tbaa !39    ; 5 uses
  %i.k = add i8 %i.j, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.k, 10
  br i1 %or.cond.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.l = add i8 %i.j, -65
  %or.cond39.i = icmp ult i8 %i.l, 6
  br i1 %or.cond39.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i8 %i.j, -55
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.n = add i8 %i.j, -97
  %or.cond40.i = icmp ult i8 %i.n, 6
  br i1 %or.cond40.i, label %bb.h, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, !prof !2469

bb.h:                                             ; preds = %bb.g
  %i.o = add nsw i8 %i.j, -87
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %.lr.ph.i
  %narrow.pn.i = phi i8 [ %i.o, %bb.h ], [ %i.m, %bb.f ], [ %i.k, %.lr.ph.i ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, 0
  br i1 %exitcond.not.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.sink.split, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.i
  %i.p = shl i8 %narrow.pn.i, 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !39    ; 5 uses
  %i.s = add i8 %i.r, -48                         ; 2 uses
  %or.cond.i.1 = icmp ult i8 %i.s, 10
  br i1 %or.cond.i.1, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.1
  %i.t = add i8 %i.r, -65
  %or.cond39.i.1 = icmp ult i8 %i.t, 6
  br i1 %or.cond39.i.1, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = add i8 %i.r, -97
  %or.cond40.i.1 = icmp ult i8 %i.u, 6
  br i1 %or.cond40.i.1, label %bb.l, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, !prof !2469

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i8 %i.r, -87
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.w = add nsw i8 %i.r, -55
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph.i.1
  %narrow.pn.i.1 = phi i8 [ %i.v, %bb.l ], [ %i.w, %bb.m ], [ %i.s, %.lr.ph.i.1 ]
  %.1.i.1 = or i8 %narrow.pn.i.1, %i.p
  br label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.sink.split

thread-pre-split:                                 ; preds = %bb.b
  %i.x = icmp eq i8 %i.c, 45
  br i1 %i.x, label %bb.o, label %.thread

bb.o:                                             ; preds = %thread-pre-split
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.z = add i64 %3, -1                           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.o, %thread-pre-split
  %i.ab = phi i1 [ true, %bb.o ], [ false, %thread-pre-split ], [ false, %bb.c ] ; 2 uses
  %.024 = phi ptr [ %i.y, %bb.o ], [ %2, %thread-pre-split ], [ %2, %bb.c ]
  %.023 = phi i64 [ %i.z, %bb.o ], [ %3, %thread-pre-split ], [ %3, %bb.c ]
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.q
  %.150 = phi i64 [ %.023, %.thread ], [ %i.ae, %bb.q ] ; 3 uses
  %.12549 = phi ptr [ %.024, %.thread ], [ %i.af, %bb.q ] ; 4 uses
  %i.ac = load i8, ptr %.12549, align 1, !tbaa !39 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 48
  br i1 %i.ad, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.ae = add i64 %.150, -1                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.12549, i64 1
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %.thread38, label %bb.p, !llvm.loop !2655

.critedge:                                        ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %.12549, i64 1
  %i.ah = add i8 %i.ac, -48                       ; 3 uses
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %bb.r, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, !prof !2469

bb.r:                                             ; preds = %.critedge
  %.not43.i = icmp eq i64 %.150, 1
  br i1 %.not43.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %.12549, i64 2
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !39
  %i.al = add i8 %i.ak, -48                       ; 2 uses
  %narrow.i = mul nuw nsw i8 %i.ah, 10
  %i.am = add i64 %.150, -2                       ; 2 uses
  %i.an = icmp ult i8 %i.al, 10
  %i.ao = add i8 %i.al, %narrow.i                 ; 3 uses
  br i1 %i.an, label %bb.t, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, !prof !2469

bb.t:                                             ; preds = %bb.s
  %.not44.i = icmp eq i64 %i.am, 0
  br i1 %.not44.i, label %bb.w, label %5

5:                                                ; preds = %bb.t
  %6 = icmp ugt i8 %i.ao, 25
  br i1 %6, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %bb.u, !prof !168

bb.u:                                             ; preds = %5
  %7 = load i8, ptr %i.aj, align 1, !tbaa !39
  %8 = add i8 %7, -48                             ; 2 uses
  %.not45.i = icmp ne i64 %i.am, 1
  %i.ap = icmp ugt i8 %8, 9
  %or.cond.i30 = or i1 %.not45.i, %i.ap
  br i1 %or.cond.i30, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %bb.v, !prof !2471

bb.v:                                             ; preds = %bb.u
  %i.aq = mul nuw i8 %i.ao, 10                    ; 3 uses
  %i.ar = add i8 %8, %i.aq                        ; 2 uses
  %i.as = icmp ult i8 %i.ar, %i.aq
  %.46.i = tail call i8 @llvm.umax.i8(i8 %i.ar, i8 %i.aq)
  br i1 %i.as, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %bb.w, !prof !2656

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.r
  %.132.ph = phi i8 [ %i.ah, %bb.r ], [ %i.ao, %bb.t ], [ %.46.i, %bb.v ] ; 4 uses
  br i1 %i.ab, label %bb.x, label %bb.y

.thread38:                                        ; preds = %bb.q
  br i1 %i.ab, label %.thread42, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.sink.split

bb.x:                                             ; preds = %bb.w
  %i.at = icmp ugt i8 %.132.ph, -128
  br i1 %i.at, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %.thread42, !prof !2657

.thread42:                                        ; preds = %.thread38, %bb.x
  %.132.ph4144 = phi i8 [ %.132.ph, %bb.x ], [ 0, %.thread38 ]
  %i.au = sub i8 0, %.132.ph4144
  br label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.sink.split

bb.y:                                             ; preds = %bb.w
  %i.av = icmp slt i8 %.132.ph, 0
  br i1 %i.av, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.sink.split, !prof !2657

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.sink.split: ; preds = %bb.i, %bb.n, %.thread42, %bb.y, %.thread38
  %storemerge.sink = phi i8 [ 0, %.thread38 ], [ %i.au, %.thread42 ], [ %.132.ph, %bb.y ], [ %narrow.pn.i, %bb.i ], [ %.1.i.1, %bb.n ]
  store i8 %storemerge.sink, ptr %4, align 1, !tbaa !39
  br label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit:    ; preds = %bb.g, %bb.k, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.sink.split, %5, %bb.s, %bb.v, %bb.u, %.critedge, %bb.d, %bb.y, %bb.x, %bb.o, %bb.a
  %.022 = phi i1 [ false, %bb.o ], [ false, %bb.s ], [ false, %bb.a ], [ false, %bb.y ], [ false, %5 ], [ true, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.sink.split ], [ false, %bb.x ], [ false, %bb.d ], [ false, %.critedge ], [ false, %bb.u ], [ false, %bb.v ], [ false, %bb.k ], [ false, %bb.g ]
  ret i1 %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(111) %1, ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(2) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1568, !nonnull !103, !align !1578
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(111) %1) #32
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(111) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSJ_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSJ_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1568, !nonnull !103, !align !1578
  %i.f = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %2) #32
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(2) %2, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS6_EEDaSJ_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS6_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSJ_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !1568, !nonnull !103, !align !1578 ; 3 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !105    ; 3 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS6_EEDaSJ_.exit
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !84
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !2597
  %i.p = or i32 %i.o, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.m, i32 noundef %i.p)
          to label %_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS8_EEDaSJ_.exit unwind label %bb.g

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS6_EEDaSJ_.exit
  %i.q = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #32
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.i, i64 noundef %i.q)
          to label %_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS8_EEDaSJ_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS8_EEDaSJ_.exit: ; preds = %bb.b, %bb.c
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !1568, !nonnull !103, !align !1578
  %i.t = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %4) #32
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 1 dereferenceable(2) %4, i64 noundef %i.t)
          to label %_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSJ_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS8_EEDaSJ_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSJ_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

bb.e:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E2_clIS4_EEDaSJ_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS8_EEDaSJ_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS6_EEDaSJ_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.g, %bb.h, %bb.f, %bb.i
  %.pn12 = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.v, %bb.e ], [ %i.w, %bb.f ], [ %i.y, %bb.h ], [ %i.x, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %.pn12
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(45) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1568, !nonnull !103, !align !1578
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(45) %1) #32
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(45) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1568, !nonnull !103, !align !1578 ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !105    ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !2597
  %i.m = or i32 %i.l, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.j, i32 noundef %i.m)
          to label %_ZZN5arrow8internal12JoinToStringIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS6_EEDaSJ_.exit unwind label %bb.f

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSJ_.exit
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #32
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull %i.f, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS6_EEDaSJ_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS6_EEDaSJ_.exit: ; preds = %bb.b, %bb.c
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !1568, !nonnull !103, !align !1578
  %i.q = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #32
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.q)
          to label %_ZZN5arrow8internal12JoinToStringIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS8_EEDaSJ_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS8_EEDaSJ_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS6_EEDaSJ_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS8_EEDaSJ_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.e:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS6_EEDaSJ_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS8_EEDaSJ_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.h
  %.pn9 = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.s, %bb.e ], [ %i.u, %bb.g ], [ %i.t, %bb.f ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn9
}

declare void @_ZN5arrow15run_end_encodedESt10shared_ptrINS_8DataTypeEES2_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA55_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(55) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1568, !nonnull !103, !align !1578
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(55) %1) #32
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(55) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA55_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA55_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1568, !nonnull !103, !align !1578
  %i.f = load ptr, ptr %2, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA55_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISA_EEDaSF_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA55_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISA_EEDaSF_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA55_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA55_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISA_EEDaSF_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_ZN5arrow12_GLOBAL__N_114ImportedBufferD2Ev:bb.a
  store i32 %i.n, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_117ImportedArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !168

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #32
  br label %_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_117ImportedArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_117ImportedArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_114ImportedBufferD0Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_114ImportedBufferE, i64 16), ptr %0, align 8, !tbaa !84
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !163 ; 8 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_114ImportedBufferD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !164
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !166
  %i.g = load ptr, ptr %.val.i, align 8, !tbaa !84
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #32, !inline_history !3000
  %i.j = load ptr, ptr %.val.i, align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #32, !inline_history !3000
  br label %_ZN5arrow12_GLOBAL__N_114ImportedBufferD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZN5arrow12_GLOBAL__N_114ImportedBufferD2Ev.exit, !prof !168

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #32, !inline_history !3001
  br label %_ZN5arrow12_GLOBAL__N_114ImportedBufferD2Ev.exit

_ZN5arrow12_GLOBAL__N_114ImportedBufferD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(96) %0) #32, !inline_history !3001
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZNK5arrow12_GLOBAL__N_114ImportedBuffer17device_sync_eventEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.57") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val = load ptr, ptr %i.a, align 8, !tbaa !548 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !163  ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !244
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !244
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA85_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(85) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !3002
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !3002
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1568, !noalias !3002, !nonnull !103, !align !1578
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(85) %2) #32, !noalias !3002
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(85) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA85_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !3002 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA85_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA85_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA85_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !3002
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA85_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA85_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !3002
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA85_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !91     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !39
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA85_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !91     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !39
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter24ImportStringValuesBufferIiEENS_6StatusEiil(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(113) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !549    ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !408  ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !411
  %i.g = add nsw i64 %i.f, %i.c
  %i.h = shl i64 %i.g, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !178
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !214
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef %i.h, i64 noundef 4, ptr noundef nonnull %i.a)
  %i.n = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.critedge.thread, label %bb.b

.critedge.thread:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.p = load i32, ptr %i.a, align 4, !tbaa !3
  %i.q = sext i32 %i.p to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.thread, %bb.a
  %.112 = phi i64 [ %i.q, %.critedge.thread ], [ 0, %bb.a ]
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter12ImportBufferEilb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(113) %1, i32 noundef 2, i64 noundef %.112, i1 noundef zeroext false)
  br label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  ret void
}

declare void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportBinaryViewERKNS_14BinaryViewTypeE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(113) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter16CheckNumChildrenEl(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull readonly align 8 dereferenceable(113) %1, i64 noundef 0)
  %i.a = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.a, label %.critedge

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.c = load ptr, ptr %1, align 8, !tbaa !549
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !412
  %i.f = icmp slt i64 %i.e, 3
  br i1 %i.f, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit40

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2681, !nonnull !103, !align !1578
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !158  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !84
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i1 noundef zeroext false)
  %i.m = load ptr, ptr %1, align 8, !tbaa !549
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !3005
  invoke void @_ZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(47) @.str.120, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(25) @.str.88, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %2, align 8, !tbaa !91, !noalias !3005 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.p, align 8, !tbaa !39, !noalias !3005
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.d:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %2, align 8, !tbaa !91, !noalias !3005 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.v, align 8, !tbaa !39, !noalias !3005
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !3005
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !3005
  %i.z = load ptr, ptr %4, align 8, !tbaa !91     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !39
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  %i.af = load ptr, ptr %4, align 8, !tbaa !91    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %.body
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !39
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %eh.lpad-body

_ZN5arrow6StatusD2Ev.exit40:                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter17AllocateArrayDataEv(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(113) %1)
  %i.ak = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN5arrow6StatusD2Ev.exit46, label %.critedge

_ZN5arrow6StatusD2Ev.exit46:                      ; preds = %_ZN5arrow6StatusD2Ev.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportNullBitmapEi(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(113) %1)
  %i.am = load ptr, ptr %6, align 8, !tbaa !78    ; 2 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit46
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.ao = load ptr, ptr %1, align 8, !tbaa !549, !noalias !3010 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !408, !noalias !3010 ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %_ZN5arrow6StatusD2Ev.exit52

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !411, !noalias !3010
  %i.at = add nsw i64 %i.as, %i.ap
  %i.au = shl nsw i64 %i.at, 4
  br label %_ZN5arrow6StatusD2Ev.exit52

_ZN5arrow6StatusD2Ev.exit52:                      ; preds = %bb.f, %bb.g
  %i.av = phi i64 [ %i.au, %bb.g ], [ 0, %bb.f ]
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter12ImportBufferEilb(ptr dead_on_unwind noalias nonnull writable align 8 %7, ptr noundef nonnull readonly align 8 dereferenceable(113) %1, i32 noundef 1, i64 noundef %i.av, i1 noundef zeroext false)
  %i.aw = load ptr, ptr %7, align 8, !tbaa !78    ; 2 uses
  store ptr %i.aw, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit52
  %i.ay = load ptr, ptr %1, align 8, !tbaa !549   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !414
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !412 ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %i.ba, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !244
  %.not1 = icmp sgt i64 %i.bc, 3
  br i1 %.not1, label %_ZN5arrow6StatusD2Ev.exit58, label %.critedge31

bb.i:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = load ptr, ptr %1, align 8, !tbaa !549
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !412
  %i.bj = add nsw i64 %i.bi, -1
  %.not = icmp sgt i64 %i.bj, %indvars.iv.next
  br i1 %.not, label %_ZN5arrow6StatusD2Ev.exit58, label %.critedge31, !llvm.loop !3013

_ZN5arrow6StatusD2Ev.exit58:                      ; preds = %bb.h, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 2, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.bk = getelementptr [8 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bl = getelementptr i8, ptr %i.bk, i64 -16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !277
  %i.bn = trunc nuw nsw i64 %indvars.iv to i32
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter12ImportBufferEilb(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(113) %1, i32 noundef %i.bn, i64 noundef %i.bm, i1 noundef zeroext false)
  %i.bo = load ptr, ptr %8, align 8, !tbaa !78    ; 2 uses
  store ptr %i.bo, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.i, label %.critedge

.critedge31:                                      ; preds = %bb.i, %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !178
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bs) #32
  store ptr null, ptr %0, align 8, !tbaa !78, !alias.scope !3014
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit58, %.critedge31, %_ZN5arrow6StatusD2Ev.exit52, %_ZN5arrow6StatusD2Ev.exit46, %_ZN5arrow6StatusD2Ev.exit40, %_ZN5arrow6StatusD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  store ptr %i.c, ptr %i.a, align 8, !tbaa !211
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !163  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZSt10destroy_atISt10shared_ptrIN5arrow6BufferEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !164
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !166
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #32, !inline_history !3017
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !84
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #32, !inline_history !3017
  br label %_ZSt10destroy_atISt10shared_ptrIN5arrow6BufferEEEvPT_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt10destroy_atISt10shared_ptrIN5arrow6BufferEEEvPT_.exit, !prof !168

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #32
  br label %_ZSt10destroy_atISt10shared_ptrIN5arrow6BufferEEEvPT_.exit

_ZSt10destroy_atISt10shared_ptrIN5arrow6BufferEEEvPT_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(47) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(25) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1568, !nonnull !103, !align !1578
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(47) %1) #32
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(47) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_ENKUlOT_E2_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_ENKUlOT_E2_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1568, !nonnull !103, !align !1578
  %i.f = load ptr, ptr %2, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_ENKUlOT_E1_clISA_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_ENKUlOT_E1_clISA_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_ENKUlOT_E2_clIS4_EEDaSI_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !1568, !nonnull !103, !align !1578
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(25) %3) #32
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(25) %3, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_ENKUlOT_E0_clISC_EEDaSI_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_ENKUlOT_E0_clISC_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_ENKUlOT_E1_clISA_EEDaSI_.exit
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !1568, !nonnull !103, !align !1578
  %i.n = load i64, ptr %4, align 8, !tbaa !277
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_ENKUlOT_E0_clISC_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_ENKUlOT_E2_clIS4_EEDaSI_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_ENKUlOT_E1_clISA_EEDaSI_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_ENKUlOT_E0_clISC_EEDaSI_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_ENKUlOT_E_clISD_EEDaSI_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.p, %bb.c ], [ %i.q, %bb.d ], [ %i.s, %bb.f ], [ %i.r, %bb.e ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %.pn12
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter24ImportStringValuesBufferIlEENS_6StatusEiil(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(113) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !549    ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !408  ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !411
  %i.g = add nsw i64 %i.f, %i.c
  %i.h = shl i64 %i.g, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !178
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !214
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef %i.h, i64 noundef 8, ptr noundef nonnull %i.a)
  %i.n = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit18, label %.critedge

_ZN5arrow6StatusD2Ev.exit18:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %3 = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit18, %bb.a
  %.112 = phi i64 [ %3, %_ZN5arrow6StatusD2Ev.exit18 ], [ 0, %bb.a ]
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter12ImportBufferEilb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(113) %1, i32 noundef 2, i64 noundef %.112, i1 noundef zeroext false)
  br label %bb.c

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter12CheckNoNullsEv(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %.0.val.8.val, ptr readonly captures(none) %.16.val) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq i64 %.0.val.8.val, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = load ptr, ptr %.16.val, align 8, !tbaa !158 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32, !noalias !3018
  invoke void @_ZN5arrow8internal12JoinToStringIJRA50_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 1 dereferenceable(50) @.str.121, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.e = load ptr, ptr %1, align 8, !tbaa !91, !noalias !3018 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !39, !noalias !3018
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.d:                                             ; preds = %.noexc
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %1, align 8, !tbaa !91, !noalias !3018 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !39, !noalias !3018
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32, !noalias !3018
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32, !noalias !3018
  %i.p = load ptr, ptr %2, align 8, !tbaa !91     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !39
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  %i.v = load ptr, ptr %2, align 8, !tbaa !91     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %.body
  %i.y = load i64, ptr %i.w, align 8, !tbaa !39
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %eh.lpad-body

bb.f:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !78, !alias.scope !3023
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA50_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(50) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1568, !nonnull !103, !align !1578
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(50) %1) #32
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(50) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA50_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA50_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1568, !nonnull !103, !align !1578
  %i.f = load ptr, ptr %2, align 8, !tbaa !91
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.f, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA50_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISA_EEDaSF_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA50_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISA_EEDaSF_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA50_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA50_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISA_EEDaSF_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA50_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E0_clIS4_EEDaSF_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA50_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_ENKUlOT_E_clISA_EEDaSF_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJDnEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !214    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #42
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #35 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3029)
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.s = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !244, !alias.scope !3029, !noalias !3026
  store ptr null, ptr %i.r, align 8, !tbaa !163, !alias.scope !3029, !noalias !3026
  store <2 x ptr> %i.s, ptr %.012.i.i.i, align 8, !tbaa !244, !alias.scope !3026, !noalias !3029
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !246, !alias.scope !3029, !noalias !3026
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
end_hunk_3
begin_hunk_4_@bcmp
!2456 = distinct !{!2456, !2457, !"_ZN5arrow6Status2OKEv: argument 0"}
!2457 = distinct !{!2457, !"_ZN5arrow6Status2OKEv"}
!2458 = !{!2459}
!2459 = distinct !{!2459, !2460, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv: argument 0"}
!2460 = distinct !{!2460, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv"}
!2461 = !{!2462, !2459}
!2462 = distinct !{!2462, !2463, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!2463 = distinct !{!2463, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!2464 = !{!2465, !2467, !2462, !2459}
!2465 = distinct !{!2465, !2466, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2466 = distinct !{!2466, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_"}
!2467 = distinct !{!2467, !2468, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_: argument 0"}
!2468 = distinct !{!2468, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_"}
!2469 = !{!"branch_weights", i32 2146410443, i32 1073205}
!2470 = distinct !{!2470, !129}
!2471 = !{!"branch_weights", i32 4001, i32 4000000}
!2472 = !{!1744, !28, i64 32}
!2473 = !{!2474, !2476, !2477, !2479}
!2474 = distinct !{!2474, !2475, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceILb0EEENSt9enable_ifIXntT_EvE4typeEPS6_SB_mm: argument 0"}
!2475 = distinct !{!2475, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceILb0EEENSt9enable_ifIXntT_EvE4typeEPS6_SB_mm"}
!2476 = distinct !{!2476, !2475, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceILb0EEENSt9enable_ifIXntT_EvE4typeEPS6_SB_mm: argument 1"}
!2477 = distinct !{!2477, !2478, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceEPS6_S7_m: argument 0"}
!2478 = distinct !{!2478, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceEPS6_S7_m"}
!2479 = distinct !{!2479, !2478, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceEPS6_S7_m: argument 1"}
!2480 = !{!2481, !2483, !2484, !2486}
!2481 = distinct !{!2481, !2482, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceILb0EEENSt9enable_ifIXntT_EvE4typeEPS6_SB_mm: argument 0"}
!2482 = distinct !{!2482, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceILb0EEENSt9enable_ifIXntT_EvE4typeEPS6_SB_mm"}
!2483 = distinct !{!2483, !2482, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceILb0EEENSt9enable_ifIXntT_EvE4typeEPS6_SB_mm: argument 1"}
!2484 = distinct !{!2484, !2485, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceEPS6_S7_m: argument 0"}
!2485 = distinct !{!2485, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceEPS6_S7_m"}
!2486 = distinct !{!2486, !2485, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceEPS6_S7_m: argument 1"}
!2487 = distinct !{!2487, !129}
!2488 = !{!2489}
!2489 = distinct !{!2489, !2490, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser12CheckHasNextEv: argument 0"}
!2490 = distinct !{!2490, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser12CheckHasNextEv"}
!2491 = !{!2492, !2489}
!2492 = distinct !{!2492, !2493, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv: argument 0"}
!2493 = distinct !{!2493, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv"}
!2494 = !{!2495, !2492, !2489}
!2495 = distinct !{!2495, !2496, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!2496 = distinct !{!2496, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!2497 = !{!2498, !2500, !2495, !2492, !2489}
!2498 = distinct !{!2498, !2499, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2499 = distinct !{!2499, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_"}
!2500 = distinct !{!2500, !2501, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_: argument 0"}
!2501 = distinct !{!2501, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_"}
!2502 = !{!"branch_weights", !"expected", i32 2145337237, i32 2146411}
!2503 = !{!2504}
!2504 = distinct !{!2504, !2505, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv: argument 0"}
!2505 = distinct !{!2505, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv"}
!2506 = !{!2507, !2504}
!2507 = distinct !{!2507, !2508, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!2508 = distinct !{!2508, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!2509 = !{!2510, !2512, !2507, !2504}
!2510 = distinct !{!2510, !2511, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2511 = distinct !{!2511, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_"}
!2512 = distinct !{!2512, !2513, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_: argument 0"}
!2513 = distinct !{!2513, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_"}
!2514 = !{!2515}
!2515 = distinct !{!2515, !2516, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser10CheckAtEndEv: argument 0"}
!2516 = distinct !{!2516, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser10CheckAtEndEv"}
!2517 = !{!2518, !2515}
!2518 = distinct !{!2518, !2519, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv: argument 0"}
!2519 = distinct !{!2519, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv"}
!2520 = !{!2521, !2518, !2515}
!2521 = distinct !{!2521, !2522, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!2522 = distinct !{!2522, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!2523 = !{!2524, !2526, !2521, !2518, !2515}
!2524 = distinct !{!2524, !2525, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2525 = distinct !{!2525, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_"}
!2526 = distinct !{!2526, !2527, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_: argument 0"}
!2527 = distinct !{!2527, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_"}
!2528 = !{!2529}
!2529 = distinct !{!2529, !2530, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter16CheckNumChildrenEl: argument 0"}
!2530 = distinct !{!2530, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter16CheckNumChildrenEl"}
!2531 = !{!2532, !2534, !2529}
!2532 = distinct !{!2532, !2533, !"_ZN5arrow6Status8FromArgsIJRA10_KcRlRA32_S2_RPS2_RA26_S2_S5_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2533 = distinct !{!2533, !"_ZN5arrow6Status8FromArgsIJRA10_KcRlRA32_S2_RPS2_RA26_S2_S5_EEES0_NS_10StatusCodeEDpOT_"}
!2534 = distinct !{!2534, !2535, !"_ZN5arrow6Status7InvalidIJRA10_KcRlRA32_S2_RPS2_RA26_S2_S5_EEES0_DpOT_: argument 0"}
!2535 = distinct !{!2535, !"_ZN5arrow6Status7InvalidIJRA10_KcRlRA32_S2_RPS2_RA26_S2_S5_EEES0_DpOT_"}
!2536 = !{!2537}
!2537 = distinct !{!2537, !2538, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl: argument 0"}
!2538 = distinct !{!2538, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl"}
!2539 = !{!2540}
!2540 = distinct !{!2540, !2541, !"_ZNO5arrow6ResultISt10shared_ptrINS_5FieldEEE11ValueUnsafeEv: argument 0"}
!2541 = distinct !{!2541, !"_ZNO5arrow6ResultISt10shared_ptrINS_5FieldEEE11ValueUnsafeEv"}
!2542 = !{!2543}
!2543 = distinct !{!2543, !2544, !"_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE15MoveValueUnsafeEv: argument 0"}
!2544 = distinct !{!2544, !"_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE15MoveValueUnsafeEv"}
!2545 = !{!2543, !2540}
!2546 = !{!2547}
!2547 = distinct !{!2547, !2548, !"_ZSt11make_sharedIN5arrow12ListViewTypeEJSt10shared_ptrINS0_5FieldEEEES2_IT_EDpOT0_: argument 0"}
!2548 = distinct !{!2548, !"_ZSt11make_sharedIN5arrow12ListViewTypeEJSt10shared_ptrINS0_5FieldEEEES2_IT_EDpOT0_"}
!2549 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2550 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2551 = !{!2552}
!2552 = distinct !{!2552, !2553, !"_ZN5arrow6Status2OKEv: argument 0"}
!2553 = distinct !{!2553, !"_ZN5arrow6Status2OKEv"}
!2554 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2555 = distinct !{ptr @_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2556 = !{!2557}
!2557 = distinct !{!2557, !2558, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser10CheckAtEndEv: argument 0"}
!2558 = distinct !{!2558, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser10CheckAtEndEv"}
!2559 = !{!2560, !2557}
!2560 = distinct !{!2560, !2561, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv: argument 0"}
!2561 = distinct !{!2561, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv"}
!2562 = !{!2563, !2560, !2557}
!2563 = distinct !{!2563, !2564, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!2564 = distinct !{!2564, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!2565 = !{!2566, !2568, !2563, !2560, !2557}
!2566 = distinct !{!2566, !2567, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2567 = distinct !{!2567, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_"}
!2568 = distinct !{!2568, !2569, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_: argument 0"}
!2569 = distinct !{!2569, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_"}
!2570 = !{!2571}
!2571 = distinct !{!2571, !2572, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter16CheckNumChildrenEl: argument 0"}
!2572 = distinct !{!2572, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter16CheckNumChildrenEl"}
!2573 = !{!2574, !2576, !2571}
!2574 = distinct !{!2574, !2575, !"_ZN5arrow6Status8FromArgsIJRA10_KcRlRA32_S2_RPS2_RA26_S2_S5_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2575 = distinct !{!2575, !"_ZN5arrow6Status8FromArgsIJRA10_KcRlRA32_S2_RPS2_RA26_S2_S5_EEES0_NS_10StatusCodeEDpOT_"}
!2576 = distinct !{!2576, !2577, !"_ZN5arrow6Status7InvalidIJRA10_KcRlRA32_S2_RPS2_RA26_S2_S5_EEES0_DpOT_: argument 0"}
!2577 = distinct !{!2577, !"_ZN5arrow6Status7InvalidIJRA10_KcRlRA32_S2_RPS2_RA26_S2_S5_EEES0_DpOT_"}
!2578 = !{!2579}
!2579 = distinct !{!2579, !2580, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl: argument 0"}
!2580 = distinct !{!2580, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl"}
!2581 = !{!2582}
!2582 = distinct !{!2582, !2583, !"_ZNO5arrow6ResultISt10shared_ptrINS_5FieldEEE11ValueUnsafeEv: argument 0"}
!2583 = distinct !{!2583, !"_ZNO5arrow6ResultISt10shared_ptrINS_5FieldEEE11ValueUnsafeEv"}
!2584 = !{!2585}
!2585 = distinct !{!2585, !2586, !"_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE15MoveValueUnsafeEv: argument 0"}
!2586 = distinct !{!2586, !"_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE15MoveValueUnsafeEv"}
!2587 = !{!2585, !2582}
!2588 = !{!2589}
!2589 = distinct !{!2589, !2590, !"_ZSt11make_sharedIN5arrow17LargeListViewTypeEJSt10shared_ptrINS0_5FieldEEEES2_IT_EDpOT0_: argument 0"}
!2590 = distinct !{!2590, !"_ZSt11make_sharedIN5arrow17LargeListViewTypeEJSt10shared_ptrINS0_5FieldEEEES2_IT_EDpOT0_"}
!2591 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2592 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2593 = !{!2594}
!2594 = distinct !{!2594, !2595, !"_ZN5arrow6Status2OKEv: argument 0"}
!2595 = distinct !{!2595, !"_ZN5arrow6Status2OKEv"}
!2596 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2597 = !{!2598, !2600, i64 32}
!2598 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !2599, i64 24, !2600, i64 28, !2600, i64 32, !2601, i64 40, !2602, i64 48, !5, i64 64, !4, i64 192, !2603, i64 200, !2604, i64 208}
!2599 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!2600 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!2601 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !36, i64 0}
!2602 = !{!"_ZTSNSt8ios_base6_WordsE", !36, i64 0, !28, i64 8}
!2603 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !36, i64 0}
!2604 = !{!"_ZTSSt6locale", !2605, i64 0}
!2605 = !{!"p1 _ZTSNSt6locale5_ImplE", !36, i64 0}
!2606 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2607 = distinct !{null, null}
!2608 = !{!2609, !35, i64 8}
!2609 = !{!"_ZTSSt9type_info", !35, i64 8}
!2610 = distinct !{!2610, !129}
!2611 = distinct !{null, null, null, null, null, null, null, null, null}
!2612 = distinct !{!2612, !129}
!2613 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2614 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2615 = distinct !{null, null}
!2616 = !{!2617, !2618, i64 0}
!2617 = !{!"_ZTSSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EE", !2618, i64 0, !100, i64 8}
!2618 = !{!"p1 _ZTSN5arrow12ListViewTypeE", !36, i64 0}
!2619 = !{!2620}
!2620 = distinct !{!2620, !2621, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!2621 = distinct !{!2621, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!2622 = !{!2618, !2618, i64 0}
!2623 = distinct !{null, null, null, null, null}
!2624 = distinct !{null, null}
!2625 = !{!2626, !2627, i64 0}
!2626 = !{!"_ZTSSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EE", !2627, i64 0, !100, i64 8}
!2627 = !{!"p1 _ZTSN5arrow17LargeListViewTypeE", !36, i64 0}
!2628 = !{!2629}
!2629 = distinct !{!2629, !2630, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!2630 = distinct !{!2630, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!2631 = !{!2627, !2627, i64 0}
!2632 = distinct !{null, null, null, null, null}
!2633 = distinct !{null, null}
!2634 = distinct !{!2634, !129}
!2635 = !{!2636}
!2636 = distinct !{!2636, !2637, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl: argument 0"}
!2637 = distinct !{!2637, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl"}
!2638 = !{!2639, !2641}
!2639 = distinct !{!2639, !2640, !"_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE15MoveValueUnsafeEv: argument 0"}
!2640 = distinct !{!2640, !"_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE15MoveValueUnsafeEv"}
!2641 = distinct !{!2641, !2642, !"_ZNO5arrow6ResultISt10shared_ptrINS_5FieldEEE11ValueUnsafeEv: argument 0"}
!2642 = distinct !{!2642, !"_ZNO5arrow6ResultISt10shared_ptrINS_5FieldEEE11ValueUnsafeEv"}
!2643 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2644 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2645 = distinct !{null, null, ptr @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2646 = !{!2647, !2648, i64 0}
!2647 = !{!"_ZTSSt12__shared_ptrIN5arrow7MapTypeELN9__gnu_cxx12_Lock_policyE2EE", !2648, i64 0, !100, i64 8}
!2648 = !{!"p1 _ZTSN5arrow7MapTypeE", !36, i64 0}
!2649 = !{!2650}
!2650 = distinct !{!2650, !2651, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!2651 = distinct !{!2651, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!2652 = !{!2648, !2648, i64 0}
!2653 = distinct !{null, null, null, null, null}
!2654 = distinct !{null, null}
!2655 = distinct !{!2655, !129}
!2656 = !{!"branch_weights", i32 1073205, i32 2146410443}
!2657 = !{!"branch_weights", !"expected", i32 2182155, i32 2145301493}
!2658 = !{!2659}
!2659 = distinct !{!2659, !2660, !"_ZN5arrow8internal12JoinToStringIJRA58_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!2660 = distinct !{!2660, !"_ZN5arrow8internal12JoinToStringIJRA58_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!2661 = !{!2662}
!2662 = distinct !{!2662, !2663, !"_ZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!2663 = distinct !{!2663, !"_ZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!2664 = distinct !{null, null, null}
!2665 = distinct !{null, null}
!2666 = !{!250, !96, i64 8}
!2667 = !{!250, !28, i64 32}
!2668 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2669 = !{!2670, !96, i64 24}
!2670 = !{!"_ZTSN5arrow6DeviceE", !2671, i64 8, !96, i64 24}
!2671 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow6DeviceEE", !2672, i64 0}
!2672 = !{!"_ZTSSt8weak_ptrIN5arrow6DeviceEE", !2673, i64 0}
!2673 = !{!"_ZTSSt10__weak_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EE", !1646, i64 0, !220, i64 8}
!2674 = distinct !{null}
!2675 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZN5arrow12_GLOBAL__N_113ArrayImporterD2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2676 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZN5arrow12_GLOBAL__N_113ArrayImporterD2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2677 = distinct !{ptr @_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EED2Ev, ptr @_ZN5arrow12_GLOBAL__N_113ArrayImporterD2Ev, null, null, null}
!2678 = !{ptr @_ZNSt6vectorIN5arrow12_GLOBAL__N_113ArrayImporterESaIS2_EED2Ev, ptr @_ZN5arrow12_GLOBAL__N_113ArrayImporterD2Ev}
!2679 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZN5arrow12_GLOBAL__N_113ArrayImporterD2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2680 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_117ImportedArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZN5arrow12_GLOBAL__N_113ArrayImporterD2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2681 = !{!530, !524, i64 16}
!2682 = !{!2683, !2685}
!2683 = distinct !{!2683, !2684, !"_ZN5arrow6Status8FromArgsIJRA23_KcRlRA21_S2_mRA11_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2684 = distinct !{!2684, !"_ZN5arrow6Status8FromArgsIJRA23_KcRlRA21_S2_mRA11_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_"}
!2685 = distinct !{!2685, !2686, !"_ZN5arrow6Status7InvalidIJRA23_KcRlRA21_S2_mRA11_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_: argument 0"}
!2686 = distinct !{!2686, !"_ZN5arrow6Status7InvalidIJRA23_KcRlRA21_S2_mRA11_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_"}
!2687 = !{!2688}
!2688 = distinct !{!2688, !2689, !"_ZSt19__relocate_object_aIN5arrow12_GLOBAL__N_113ArrayImporterES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!2689 = distinct !{!2689, !"_ZSt19__relocate_object_aIN5arrow12_GLOBAL__N_113ArrayImporterES2_SaIS2_EEvPT_PT0_RT1_"}
!2690 = !{!2691}
!2691 = distinct !{!2691, !2689, !"_ZSt19__relocate_object_aIN5arrow12_GLOBAL__N_113ArrayImporterES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!2692 = !{!2688, !2691}
!2693 = !{!538, !538, i64 0}
!2694 = distinct !{!2694, !129}
!2695 = distinct !{!2695, !129}
!2696 = !{!2697}
!2697 = distinct !{!2697, !2698, !"_ZSt19__relocate_object_aIN5arrow12_GLOBAL__N_113ArrayImporterES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!2698 = distinct !{!2698, !"_ZSt19__relocate_object_aIN5arrow12_GLOBAL__N_113ArrayImporterES2_SaIS2_EEvPT_PT0_RT1_"}
!2699 = !{!2700}
!2700 = distinct !{!2700, !2698, !"_ZSt19__relocate_object_aIN5arrow12_GLOBAL__N_113ArrayImporterES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!2701 = !{!2697, !2700}
!2702 = !{!2703}
!2703 = distinct !{!2703, !2704, !"_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_113ArrayImporterEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_: argument 0"}
!2704 = distinct !{!2704, !"_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_113ArrayImporterEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_"}
!2705 = !{!2706}
!2706 = distinct !{!2706, !2707, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_8NullTypeE: argument 0"}
!2707 = distinct !{!2707, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_8NullTypeE"}
!2708 = !{!2706, !2703}
!2709 = !{!212, !213, i64 16}
!2710 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!2711 = !{!2712, !2714, !2703}
!2712 = distinct !{!2712, !2713, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportStringLikeINS_10StringTypeEEENS_6StatusERKT_: argument 0"}
!2713 = distinct !{!2713, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportStringLikeINS_10StringTypeEEENS_6StatusERKT_"}
!2714 = distinct !{!2714, !2715, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_10StringTypeE: argument 0"}
!2715 = distinct !{!2715, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_10StringTypeE"}
!2716 = !{!2712, !2714}
!2717 = !{!2718, !2712, !2714, !2703}
!2718 = distinct !{!2718, !2719, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIiLb1EEENS_6StatusEi: argument 0"}
!2719 = distinct !{!2719, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIiLb1EEENS_6StatusEi"}
!2720 = !{!2718, !2712, !2714}
!2721 = !{!2722}
!2722 = distinct !{!2722, !2723, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_10BinaryTypeE: argument 0"}
!2723 = distinct !{!2723, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_10BinaryTypeE"}
!2724 = !{!2725}
!2725 = distinct !{!2725, !2726, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportStringLikeINS_10BinaryTypeEEENS_6StatusERKT_: argument 0"}
!2726 = distinct !{!2726, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportStringLikeINS_10BinaryTypeEEENS_6StatusERKT_"}
!2727 = !{!2725, !2722, !2703}
!2728 = !{!2725, !2722}
!2729 = !{!2730, !2725, !2722, !2703}
!2730 = distinct !{!2730, !2731, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIiLb1EEENS_6StatusEi: argument 0"}
!2731 = distinct !{!2731, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIiLb1EEENS_6StatusEi"}
!2732 = !{!2730, !2725, !2722}
!2733 = !{!2734}
!2734 = distinct !{!2734, !2735, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_15LargeStringTypeE: argument 0"}
!2735 = distinct !{!2735, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_15LargeStringTypeE"}
!2736 = !{!2737}
!2737 = distinct !{!2737, !2738, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportStringLikeINS_15LargeStringTypeEEENS_6StatusERKT_: argument 0"}
!2738 = distinct !{!2738, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportStringLikeINS_15LargeStringTypeEEENS_6StatusERKT_"}
!2739 = !{!2737, !2734, !2703}
!2740 = !{!2737, !2734}
!2741 = !{!2742, !2737, !2734, !2703}
!2742 = distinct !{!2742, !2743, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIlLb1EEENS_6StatusEi: argument 0"}
!2743 = distinct !{!2743, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIlLb1EEENS_6StatusEi"}
!2744 = !{!2742, !2737, !2734}
!2745 = !{!2746}
!2746 = distinct !{!2746, !2747, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_15LargeBinaryTypeE: argument 0"}
!2747 = distinct !{!2747, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_15LargeBinaryTypeE"}
!2748 = !{!2749}
!2749 = distinct !{!2749, !2750, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportStringLikeINS_15LargeBinaryTypeEEENS_6StatusERKT_: argument 0"}
!2750 = distinct !{!2750, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportStringLikeINS_15LargeBinaryTypeEEENS_6StatusERKT_"}
!2751 = !{!2749, !2746, !2703}
!2752 = !{!2749, !2746}
!2753 = !{!2754, !2749, !2746, !2703}
!2754 = distinct !{!2754, !2755, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIlLb1EEENS_6StatusEi: argument 0"}
!2755 = distinct !{!2755, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIlLb1EEENS_6StatusEi"}
!2756 = !{!2754, !2749, !2746}
!2757 = !{!2758}
!2758 = distinct !{!2758, !2759, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_13LargeListTypeE: argument 0"}
!2759 = distinct !{!2759, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_13LargeListTypeE"}
!2760 = !{!2761}
!2761 = distinct !{!2761, !2762, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter14ImportListLikeINS_13LargeListTypeEEENS_6StatusERKT_: argument 0"}
!2762 = distinct !{!2762, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter14ImportListLikeINS_13LargeListTypeEEENS_6StatusERKT_"}
!2763 = !{!2761, !2758, !2703}
!2764 = !{!2761, !2758}
!2765 = !{!2766, !2761, !2758, !2703}
!2766 = distinct !{!2766, !2767, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIlLb1EEENS_6StatusEi: argument 0"}
!2767 = distinct !{!2767, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIlLb1EEENS_6StatusEi"}
!2768 = !{!2766, !2761, !2758}
!2769 = !{!2770}
!2770 = distinct !{!2770, !2771, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_12ListViewTypeE: argument 0"}
!2771 = distinct !{!2771, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_12ListViewTypeE"}
!2772 = !{!2773}
!2773 = distinct !{!2773, !2774, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter14ImportListViewINS_12ListViewTypeEEENS_6StatusERKT_: argument 0"}
!2774 = distinct !{!2774, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter14ImportListViewINS_12ListViewTypeEEENS_6StatusERKT_"}
!2775 = !{!2773, !2770, !2703}
!2776 = !{!2773, !2770}
!2777 = !{!2778, !2773, !2770, !2703}
!2778 = distinct !{!2778, !2779, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIiLb0EEENS_6StatusEi: argument 0"}
!2779 = distinct !{!2779, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIiLb0EEENS_6StatusEi"}
!2780 = !{!2778, !2773, !2770}
!2781 = !{!2782, !2773, !2770, !2703}
!2782 = distinct !{!2782, !2783, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter17ImportSizesBufferIiEENS_6StatusEi: argument 0"}
!2783 = distinct !{!2783, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter17ImportSizesBufferIiEENS_6StatusEi"}
!2784 = !{!2782, !2773, !2770}
!2785 = !{!2786}
!2786 = distinct !{!2786, !2787, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_17LargeListViewTypeE: argument 0"}
!2787 = distinct !{!2787, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_17LargeListViewTypeE"}
!2788 = !{!2789}
!2789 = distinct !{!2789, !2790, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter14ImportListViewINS_17LargeListViewTypeEEENS_6StatusERKT_: argument 0"}
!2790 = distinct !{!2790, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter14ImportListViewINS_17LargeListViewTypeEEENS_6StatusERKT_"}
!2791 = !{!2789, !2786, !2703}
!2792 = !{!2789, !2786}
!2793 = !{!2794, !2789, !2786, !2703}
!2794 = distinct !{!2794, !2795, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIlLb0EEENS_6StatusEi: argument 0"}
!2795 = distinct !{!2795, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIlLb0EEENS_6StatusEi"}
!2796 = !{!2794, !2789, !2786}
!2797 = !{!2798, !2789, !2786, !2703}
!2798 = distinct !{!2798, !2799, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter17ImportSizesBufferIlEENS_6StatusEi: argument 0"}
!2799 = distinct !{!2799, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter17ImportSizesBufferIlEENS_6StatusEi"}
!2800 = !{!2798, !2789, !2786}
!2801 = !{!2802}
!2802 = distinct !{!2802, !2803, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_17FixedSizeListTypeE: argument 0"}
!2803 = distinct !{!2803, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_17FixedSizeListTypeE"}
!2804 = !{!2802, !2703}
!2805 = !{!2806}
!2806 = distinct !{!2806, !2807, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_10StructTypeE: argument 0"}
!2807 = distinct !{!2807, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_10StructTypeE"}
!2808 = !{!2806, !2703}
!2809 = !{!2810}
!2810 = distinct !{!2810, !2811, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_15SparseUnionTypeE: argument 0"}
!2811 = distinct !{!2811, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_15SparseUnionTypeE"}
!2812 = !{!2810, !2703}
!2813 = !{!2814, !2810, !2703}
!2814 = distinct !{!2814, !2815, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter21ImportFixedSizeBufferEil: argument 0"}
!2815 = distinct !{!2815, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter21ImportFixedSizeBufferEil"}
!2816 = !{!2814, !2810}
!2817 = !{!2818, !2810, !2703}
!2818 = distinct !{!2818, !2819, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter21ImportFixedSizeBufferEil: argument 0"}
!2819 = distinct !{!2819, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter21ImportFixedSizeBufferEil"}
!2820 = !{!2818, !2810}
!2821 = !{!2822}
!2822 = distinct !{!2822, !2823, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_14DenseUnionTypeE: argument 0"}
!2823 = distinct !{!2823, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_14DenseUnionTypeE"}
!2824 = !{!2822, !2703}
!2825 = !{!2826, !2822, !2703}
!2826 = distinct !{!2826, !2827, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter21ImportFixedSizeBufferEil: argument 0"}
!2827 = distinct !{!2827, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter21ImportFixedSizeBufferEil"}
!2828 = !{!2826, !2822}
!2829 = !{!2830, !2822, !2703}
!2830 = distinct !{!2830, !2831, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter21ImportFixedSizeBufferEil: argument 0"}
!2831 = distinct !{!2831, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter21ImportFixedSizeBufferEil"}
!2832 = !{!2830, !2822}
!2833 = !{!2834, !2822, !2703}
!2834 = distinct !{!2834, !2835, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter21ImportFixedSizeBufferEil: argument 0"}
!2835 = distinct !{!2835, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter21ImportFixedSizeBufferEil"}
!2836 = !{!2834, !2822}
!2837 = !{!2838, !2822, !2703}
!2838 = distinct !{!2838, !2839, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter21ImportFixedSizeBufferEil: argument 0"}
!2839 = distinct !{!2839, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter21ImportFixedSizeBufferEil"}
!2840 = !{!2838, !2822}
!2841 = !{!2842}
!2842 = distinct !{!2842, !2843, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_17RunEndEncodedTypeE: argument 0"}
!2843 = distinct !{!2843, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_17RunEndEncodedTypeE"}
!2844 = !{!2842, !2703}
!2845 = !{!2846, !2846, i64 0}
!2846 = !{!"std::nullptr_t", !5, i64 0}
!2847 = !{!2848, !2703}
!2848 = distinct !{!2848, !2849, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_8DataTypeE: argument 0"}
!2849 = distinct !{!2849, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_8DataTypeE"}
!2850 = !{!2848}
!2851 = distinct !{null, null}
!2852 = !{!2853, !2855, !2848, !2703}
!2853 = distinct !{!2853, !2854, !"_ZN5arrow6Status8FromArgsIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2854 = distinct !{!2854, !"_ZN5arrow6Status8FromArgsIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_"}
!2855 = distinct !{!2855, !2856, !"_ZN5arrow6Status14NotImplementedIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_: argument 0"}
!2856 = distinct !{!2856, !"_ZN5arrow6Status14NotImplementedIJRA29_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_"}
end_hunk_4
