inline.NumInlined: 10874
inline.NumDeleted: 3955
begin_hunk_0_@_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl8metadataEv:bb.a
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !75
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEC2ERKS3_.exit

_ZNSt10shared_ptrIKN5arrow16KeyValueMetadataEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl15ReadRecordBatchEi(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(513) %1, i32 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.13", align 8  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.a = load ptr, ptr %1, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.13") align 8 %3, ptr noundef nonnull align 8 dereferenceable(513) %1, i32 noundef %2)
  %i.d = load ptr, ptr %3, align 8, !tbaa !52
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b, !prof !55

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #36
  br label %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !69, !noalias !2562 ; 9 uses
  %i.l = load <2 x ptr>, ptr %i.f, align 8, !tbaa !75, !noalias !2562
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !69, !noalias !2562 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr null, ptr %0, align 8, !tbaa !52
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !75
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2IRS3_vEEOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2IRS3_vEEOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2IRS3_vEEOT_.exit

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2IRS3_vEEOT_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2IRS3_vEEOT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.s, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !79
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #36, !inline_history !82
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #36, !inline_history !82
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.v, %bb.j ], [ %i.af, %bb.k ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.l, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !83

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #36
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2IRS3_vEEOT_.exit
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ah, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !79
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #36, !inline_history !84
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !80
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #36, !inline_history !84
  br label %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i2.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i2.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.q:                                             ; preds = %bb.o
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i4.i = phi i32 [ %i.ak, %bb.p ], [ %i.au, %bb.q ]
  %i.av = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.av, label %bb.r, label %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit, !prof !83

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #36
  br label %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit

_ZN5arrow23RecordBatchWithMetadataD2Ev.exit:      ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.n, %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.b
  %i.aw = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit.i, label %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit.thread.i, !prof !55

_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit.i: ; preds = %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN5arrow8internal14AlignedStorageINS_23RecordBatchWithMetadataEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ay) #36
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !52   ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEED2Ev.exit, label %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit.thread.i, !prof !85

_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit.i, %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit
  %i.az = phi ptr [ %.pr.i, %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit.i ], [ %i.aw, %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !56, !range !67, !noundef !68
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #36
  br label %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEED2Ev.exit

_ZN5arrow6ResultINS_23RecordBatchWithMetadataEED2Ev.exit: ; preds = %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit.thread.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl33ReadRecordBatchWithCustomMetadataEi(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(513) %1, i32 noundef %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::function.855", align 16 ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Result", align 8     ; 16 uses
  %7 = alloca %"class.arrow::Future.843", align 8 ; 8 uses
  %8 = alloca %"class.arrow::Future.835", align 16 ; 4 uses
  %9 = alloca %"class.std::shared_ptr.23", align 16 ; 8 uses
  %10 = alloca %"class.std::shared_ptr.848", align 8 ; 7 uses
  %11 = alloca %"class.arrow::Result.851", align 8 ; 11 uses
  %12 = alloca %"class.std::shared_ptr.26", align 16 ; 8 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %17 = alloca %"class.std::function.855", align 16 ; 15 uses
  %18 = alloca %class.anon.858, align 16          ; 21 uses
  %19 = alloca %"class.arrow::Result.859", align 8 ; 11 uses
  %20 = alloca %"struct.arrow::ipc::internal::FileBlock", align 8 ; 5 uses
  %21 = alloca %"class.arrow::Result.177", align 8 ; 12 uses
  %22 = alloca %"class.std::unique_ptr", align 8  ; 9 uses
  %23 = alloca %"class.std::shared_ptr.17", align 8 ; 6 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.arrow::Result.42", align 8 ; 13 uses
  %27 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %28 = alloca %"class.std::shared_ptr.46", align 16 ; 6 uses
  %29 = alloca %"struct.arrow::ipc::(anonymous namespace)::IpcReadContext", align 8 ; 9 uses
  %30 = alloca %"class.arrow::Result.13", align 8 ; 11 uses
  %31 = alloca %"class.std::shared_ptr.17", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.b = load i64, ptr %i.a, align 8, !tbaa !2567
  %.not.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 416
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.c, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !2556 ; 4 uses
  %i.d = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.d, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %i.g = icmp eq i32 %2, %i.f
  br i1 %i.g, label %_ZNSt13unordered_mapIiN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEE4findERSC_.exit, label %bb.c, !llvm.loop !2568

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.i = sext i32 %2 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.k = load i64, ptr %i.j, align 8, !tbaa !393  ; 2 uses
  %i.l = urem i64 %i.i, %i.k                      ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !392
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2569 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2556 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = icmp eq i32 %2, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapIiN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEE4findERSC_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.t = icmp eq i32 %2, %i.w
  br i1 %i.t, label %_ZNSt13unordered_mapIiN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEE4findERSC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2570

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %i.p, %bb.f ]
  %i.u = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !2556 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = urem i64 %i.x, %i.k
  %.not19.i.i.i.i = icmp eq i64 %i.y, %i.l
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !2570

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !2570

_ZNSt13unordered_mapIiN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEE4findERSC_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.p, %bb.f ], [ %i.u, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !69 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.z, align 8, !tbaa !75
  store <2 x ptr> %i.ad, ptr %8, align 16, !tbaa !75
  %.not.i.i.i.i84 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i84, label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt13unordered_mapIiN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEE4findERSC_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !3
  br label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit

bb.k:                                             ; preds = %bb.i
  %i.ai = atomicrmw volatile add ptr %i.ae, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit

_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit: ; preds = %_ZNSt13unordered_mapIiN5arrow6FutureISt10shared_ptrINS0_3ipc7MessageEEEESt4hashIiESt8equal_toIiESaISt4pairIKiS6_EEE4findERSC_.exit, %bb.j, %bb.k
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl21ReadCachedRecordBatchEiNS_6FutureISt10shared_ptrINS0_7MessageEEEE(ptr dead_on_unwind noalias nonnull writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(513) %1, i32 noundef %2, ptr noundef %8)
          to label %bb.l unwind label %bb.af

bb.l:                                             ; preds = %_ZN5arrow6FutureISt10shared_ptrINS_3ipc7MessageEEEC2ERKS5_.exit
  %i.aj = load ptr, ptr %7, align 8, !tbaa !414
  invoke void @_ZN5arrow10FutureImpl4WaitEv(ptr noundef nonnull align 8 dereferenceable(72) %i.aj)
          to label %bb.m unwind label %bb.ag

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %7, align 8, !tbaa !414
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !75 ; 3 uses
  store ptr null, ptr %6, align 8, !tbaa !52
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.r

_ZN5arrow6StatusC2ERKS0_.exit.i:                  ; preds = %bb.m
  %i.an = load ptr, ptr %6, align 8, !tbaa !52
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.n, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKS4_.exit, !prof !55

bb.n:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !69 ; 2 uses
  %i.at = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !75
  store <2 x ptr> %i.at, ptr %i.aq, align 8, !tbaa !75
  %.not.i.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKS4_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !3
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !3
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKS4_.exit

bb.q:                                             ; preds = %bb.o
  %i.ay = atomicrmw volatile add ptr %i.au, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKS4_.exit

bb.r:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #40
  unreachable

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKS4_.exit: ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i, %bb.n, %bb.p, %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !69 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZN5arrow6FutureISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKS4_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4294967297
  %i.bg = trunc i64 %i.be to i32                  ; 2 uses
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bd, align 8, !tbaa !77
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !79
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #36, !inline_history !2571
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bc) #36, !inline_history !2571
  br label %_ZN5arrow6FutureISt10shared_ptrINS_11RecordBatchEEED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i85 = icmp eq i8 %i.bo, 0
  br i1 %.not.i.i.i.i85, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = add nsw i32 %i.bg, -1
  store i32 %i.bp, ptr %i.bd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bq = atomicrmw volatile add ptr %i.bd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl33ReadRecordBatchWithCustomMetadataEi:bb.a
bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.ga, align 8, !tbaa !77
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !79
  %i.gf = load ptr, ptr %i.fz, align 8, !tbaa !80
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #36, !inline_history !258
  %i.gi = load ptr, ptr %i.fz, align 8, !tbaa !80
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #36, !inline_history !258
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bu:                                            ; preds = %bb.bs
  %i.gl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i115 = icmp eq i8 %i.gl, 0
  br i1 %.not.i.i.i115, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gm = add nsw i32 %i.gd, -1
  store i32 %i.gm, ptr %i.ga, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116

bb.bw:                                            ; preds = %bb.bu
  %i.gn = atomicrmw volatile add ptr %i.ga, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i117 = phi i32 [ %i.gd, %bb.bv ], [ %i.gn, %bb.bw ]
  %i.go = icmp eq i32 %.0.i.i.i.i117, 1
  br i1 %i.go, label %bb.bx, label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fz) #36
  br label %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.br, %bb.bt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i116, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.bz

bb.by:                                            ; preds = %bb.bq, %bb.al
  %.pn71.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn.pn, %bb.bq ], [ %i.cx, %bb.al ]
  call void @_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #36
  br label %bb.ci

bb.bz:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow11RecordBatchELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ae
  %i.gp = load ptr, ptr %6, align 8, !tbaa !52    ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.ca, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, !prof !55

bb.ca:                                            ; preds = %bb.bz
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !69 ; 8 uses
  %.not.i.i.i.i.i118 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i.i.i118, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 4 uses
  %i.gu = load atomic i64, ptr %i.gt acquire, align 8 ; 2 uses
  %i.gv = icmp eq i64 %i.gu, 4294967297
  %i.gw = trunc i64 %i.gu to i32                  ; 2 uses
  br i1 %i.gv, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.gt, align 8, !tbaa !77
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store i32 0, ptr %i.gx, align 4, !tbaa !79
  %i.gy = load ptr, ptr %i.gs, align 8, !tbaa !80
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gs) #36, !inline_history !259
  %i.hb = load ptr, ptr %i.gs, align 8, !tbaa !80
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(16) %i.gs) #36, !inline_history !259
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i

bb.cd:                                            ; preds = %bb.cb
  %i.he = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i.i119 = icmp eq i8 %i.he, 0
  br i1 %.not.i.i.i.i.i.i119, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.hf = add nsw i32 %i.gw, -1
  store i32 %i.hf, ptr %i.gt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.hg = atomicrmw volatile add ptr %i.gt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.cf, %bb.ce
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.gw, %bb.ce ], [ %i.hg, %bb.cf ]
  %i.hh = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.hh, label %bb.cg, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, !prof !83

bb.cg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gs) #36
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i: ; preds = %bb.cg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.cc, %bb.ca
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !52   ; 2 uses
  %.not.i.i120 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i120, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, !prof !85

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, %bb.bz
  %i.hi = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i ], [ %i.gp, %bb.bz ]
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !56, !range !67, !noundef !68
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #36
  br label %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEE7DestroyEv.exit.thread.i, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.gn

bb.ci:                                            ; preds = %bb.by, %bb.ah
  %.pn71.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn.pn.pn, %bb.by ], [ %.pn69, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.go

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2585)
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.hn = load i8, ptr %i.hm, align 8, !tbaa !2588, !range !67, !noalias !2585, !noundef !68
  %i.ho = trunc nuw i8 %i.hn to i1
  br i1 %i.ho, label %bb.ck, label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36, !noalias !2585
  call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl16ReadDictionariesEv(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(513) %1), !noalias !2585
  %i.hp = load ptr, ptr %5, align 8, !tbaa !52, !noalias !2585 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !2585
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.cj, label %_ZN5arrow6StatusD2Ev.exit122.thread219

_ZN5arrow6StatusD2Ev.exit122.thread219:           ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.hp, ptr %15, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %bb.cl

bb.cj:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store i8 1, ptr %i.hm, align 8, !tbaa !2588, !noalias !2585
  br label %_ZN5arrow6StatusD2Ev.exit122.thread

bb.ck:                                            ; preds = %.loopexit
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !414, !noalias !2585 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.not.i, label %_ZN5arrow6StatusD2Ev.exit122.thread, label %_ZN5arrow6StatusD2Ev.exit122

_ZN5arrow6StatusD2Ev.exit122.thread:              ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  br label %_ZN5arrow6StatusD2Ev.exit128

_ZN5arrow6StatusD2Ev.exit122:                     ; preds = %bb.ck
  tail call void @_ZN5arrow10FutureImpl4WaitEv(ptr noundef nonnull align 8 dereferenceable(72) %i.hs), !noalias !2585
  %i.ht = load ptr, ptr %i.hr, align 8, !tbaa !414, !noalias !2585
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !75, !noalias !2585
  store ptr null, ptr %16, align 8, !tbaa !52, !alias.scope !2585
  call void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.hv)
  %.pr = load ptr, ptr %16, align 8, !tbaa !52    ; 2 uses
  store ptr %.pr, ptr %15, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  %i.hw = icmp eq ptr %.pr, null
  br i1 %i.hw, label %_ZN5arrow6StatusD2Ev.exit128, label %bb.cl, !prof !85

bb.cl:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit122.thread219, %_ZN5arrow6StatusD2Ev.exit122
  call void @_ZN5arrow6ResultINS_23RecordBatchWithMetadataEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %15) #36
  %i.hx = load ptr, ptr %15, align 8, !tbaa !52   ; 2 uses
  %.not.i123 = icmp eq ptr %i.hx, null
  br i1 %.not.i123, label %_ZN5arrow6StatusD2Ev.exit124, label %bb.cm, !prof !55

bb.cm:                                            ; preds = %bb.cl
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 1
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !56, !range !67, !noundef !68
  %i.ia = trunc nuw i8 %i.hz to i1
  br i1 %i.ia, label %_ZN5arrow6StatusD2Ev.exit124, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #36
  br label %_ZN5arrow6StatusD2Ev.exit124

_ZN5arrow6StatusD2Ev.exit124:                     ; preds = %bb.cl, %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  br label %bb.gn

_ZN5arrow6StatusD2Ev.exit128:                     ; preds = %_ZN5arrow6StatusD2Ev.exit122, %_ZN5arrow6StatusD2Ev.exit122.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !33 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !33 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !37
  %i.ih = icmp eq ptr %i.ic, %i.ie
  %i.ii = icmp eq i32 %i.ig, 0
  %i.ij = select i1 %i.ih, i1 %i.ii, i1 false
  br i1 %i.ij, label %bb.dj, label %bb.co

bb.co:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit128
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  %i.il = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !69 ; 2 uses
  %i.io = load <2 x ptr>, ptr %i.ik, align 8, !tbaa !75
  store <2 x ptr> %i.io, ptr %18, align 16, !tbaa !75
  %.not.i.i.i129 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i129, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ip = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 3 uses
  %i.iq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i130 = icmp eq i8 %i.iq, 0
  br i1 %.not.i.i.i.i130, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ir = load i32, ptr %i.ip, align 4, !tbaa !3
  %i.is = add nsw i32 %i.ir, 1
  store i32 %i.is, ptr %i.ip, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.cr:                                            ; preds = %bb.cp
  %i.it = atomicrmw volatile add ptr %i.ip, i32 1 acq_rel, align 4 ; 0 uses
  %.pre235 = load ptr, ptr %i.ib, align 8, !tbaa !33
  %.pre236 = load ptr, ptr %i.id, align 8, !tbaa !33
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %bb.co, %bb.cq, %bb.cr
  %i.iu = phi ptr [ %i.ie, %bb.co ], [ %i.ie, %bb.cq ], [ %.pre236, %bb.cr ] ; 2 uses
  %i.iv = phi ptr [ %i.ic, %bb.co ], [ %i.ic, %bb.cq ], [ %.pre235, %bb.cr ] ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr null, ptr %i.iw, align 16, !tbaa !33
  %i.ix = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 3 uses
  store i32 0, ptr %i.ix, align 8, !tbaa !37
  %i.iy = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  store ptr null, ptr %i.iy, align 16, !tbaa !33
  %i.iz = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 3 uses
  store i32 0, ptr %i.iz, align 8, !tbaa !37
  %i.ja = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 3 uses
  store ptr null, ptr %i.ja, align 16, !tbaa !38
  %i.jb = load i32, ptr %i.if, align 8, !tbaa !37 ; 2 uses
  %i.jc = ptrtoint ptr %i.iu to i64
  %i.jd = ptrtoint ptr %i.iv to i64
  %i.je = sub i64 %i.jc, %i.jd                    ; 5 uses
  %i.jf = shl nsw i64 %i.je, 3
  %i.jg = zext i32 %i.jb to i64                   ; 2 uses
  %i.jh = add nsw i64 %i.jf, %i.jg                ; 5 uses
  %.not.i.i131 = icmp eq i64 %i.jh, 0
  br i1 %.not.i.i131, label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i, label %.noexc.i

.noexc.i:                                         ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %i.ji = add i64 %i.jh, 63                       ; 2 uses
  %i.jj = lshr i64 %i.ji, 3
  %i.jk = and i64 %i.jj, 2305843009213693944
  %i.jl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jk) #39
          to label %.noexc unwind label %bb.de    ; 4 uses

.noexc:                                           ; preds = %.noexc.i
  %i.jm = lshr i64 %i.ji, 6
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jm ; 2 uses
  store ptr %i.jn, ptr %i.ja, align 16, !tbaa !38
  store ptr %i.jl, ptr %i.iw, align 16
  store i32 0, ptr %i.ix, align 8
  %i.jo = sdiv i64 %i.jh, 64
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.jl, i64 %i.jo
  %i.jq = and i64 %i.jh, -9223372036854775745
  %i.jr = icmp ugt i64 %i.jq, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.jr, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.jp, i64 %storemerge.idx.i.i.i.i.i
  %i.js = trunc i64 %i.jh to i32
  %i.jt = and i32 %i.js, 63
  store ptr %storemerge.i.i.i.i.i, ptr %i.iy, align 16
  store i32 %i.jt, ptr %i.iz, align 8
  br label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i

_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i:     ; preds = %.noexc, %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %i.ju = phi ptr [ %i.jn, %.noexc ], [ null, %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit ] ; 2 uses
  %i.jv = phi ptr [ %i.jl, %.noexc ], [ null, %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit ] ; 5 uses
  %i.jw = icmp sgt i64 %i.je, 8
  br i1 %i.jw, label %bb.cs, label %bb.ct, !prof !55

bb.cs:                                            ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.jv, ptr align 8 %i.iv, i64 %i.je, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

bb.ct:                                            ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit.i
  %i.jx = icmp eq i64 %i.je, 8
  br i1 %i.jx, label %bb.cu, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.jy = load i64, ptr %i.iv, align 8, !tbaa !105
  store i64 %i.jy, ptr %i.jv, align 8, !tbaa !105
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i:             ; preds = %bb.cu, %bb.ct, %bb.cs
  %.not.i28.i = icmp eq i32 %i.jb, 0
  br i1 %.not.i28.i, label %_ZNSt6vectorIbSaIbEEC2ERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i
  %i.jz = getelementptr inbounds i8, ptr %i.jv, i64 %i.je
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i.i = phi i64 [ %i.kp, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i ], [ %i.jg, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.512.019.i.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.018.i.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i ], [ %i.iu, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.017.i.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i ], [ %i.jz, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.016.i.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.ka = zext nneg i32 %.sroa.512.019.i.i.i.i.i.i.i to i64
  %i.kb = shl nuw i64 1, %i.ka
  %i.kc = load i64, ptr %.sroa.09.018.i.i.i.i.i.i.i, align 8, !tbaa !105
  %i.kd = and i64 %i.kc, %i.kb
  %.not.i.i.i.i.i.i.i132 = icmp eq i64 %i.kd, 0
  %i.ke = zext nneg i32 %.sroa.55.016.i.i.i.i.i.i.i to i64
  %i.kf = shl nuw i64 1, %i.ke                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i132, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.kg = load i64, ptr %.sroa.03.017.i.i.i.i.i.i.i, align 8, !tbaa !105
  %i.kh = or i64 %i.kg, %i.kf
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i

bb.cw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ki = xor i64 %i.kf, -1
  %i.kj = load i64, ptr %.sroa.03.017.i.i.i.i.i.i.i, align 8, !tbaa !105
  %i.kk = and i64 %i.kj, %i.ki
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i:     ; preds = %bb.cw, %bb.cv
  %storemerge.i.i.i.i.i.i.i = phi i64 [ %i.kk, %bb.cw ], [ %i.kh, %bb.cv ]
  store i64 %storemerge.i.i.i.i.i.i.i, ptr %.sroa.03.017.i.i.i.i.i.i.i, align 8, !tbaa !105
  %i.kl = add i32 %.sroa.512.019.i.i.i.i.i.i.i, 1
  %i.km = icmp eq i32 %.sroa.512.019.i.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i.i = select i1 %i.km, i64 8, i64 0
  %spec.select.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.018.i.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i.i = select i1 %i.km, i32 0, i32 %i.kl
  %i.kn = add i32 %.sroa.55.016.i.i.i.i.i.i.i, 1
  %i.ko = icmp eq i32 %.sroa.55.016.i.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i.i = select i1 %i.ko, i32 0, i32 %i.kn
  %.sroa.03.1.idx.i.i.i.i.i.i.i = select i1 %i.ko, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.017.i.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i.i
  %i.kp = add nsw i64 %.020.i.i.i.i.i.i.i, -1
  %i.kq = icmp sgt i64 %.020.i.i.i.i.i.i.i, 1
  br i1 %i.kq, label %.lr.ph.i.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEEC2ERKS1_.exit, !llvm.loop !1061

_ZNSt6vectorIbSaIbEEC2ERKS1_.exit:                ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %18, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ks, ptr noundef nonnull align 8 dereferenceable(88) %i.kr, i64 16, i1 false)
  %i.kt = getelementptr inbounds nuw i8, ptr %18, i64 72 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.kv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !96 ; 2 uses
  %i.kx = load ptr, ptr %i.ku, align 8, !tbaa !98 ; 4 uses
  %i.ky = ptrtoint ptr %i.kw to i64
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = sub i64 %i.ky, %i.kz                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kt, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i133 = icmp eq ptr %i.kw, %i.kx
  br i1 %.not.i.i.i.i.i133, label %.thread, label %bb.cx

.thread:                                          ; preds = %_ZNSt6vectorIbSaIbEEC2ERKS1_.exit
  %i.lb = getelementptr inbounds nuw i8, ptr %18, i64 80
  %i.lc = getelementptr inbounds i8, ptr null, i64 %i.la ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %18, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, i8 0, i64 16, i1 false)
  store ptr %i.lc, ptr %i.ld, align 8, !tbaa !388
  br label %bb.db

bb.cx:                                            ; preds = %_ZNSt6vectorIbSaIbEEC2ERKS1_.exit
  %i.le = icmp ugt i64 %i.la, 9223372036854775804
  br i1 %i.le, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !83

.noexc.i.i.i:                                     ; preds = %bb.cx
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc134 unwind label %bb.df

.noexc134:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.cx
  %i.lf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.la) #39
          to label %.noexc135 unwind label %bb.df ; 8 uses

.noexc135:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.lf, ptr %i.kt, align 8, !tbaa !98
  %i.lg = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 4 uses
  store ptr %i.lf, ptr %i.lg, align 16, !tbaa !96
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.la ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %18, i64 88
  store ptr %i.lh, ptr %i.li, align 8, !tbaa !388
  %i.lj = icmp samesign ugt i64 %i.la, 4
  br i1 %i.lj, label %bb.cy, label %bb.cz, !prof !85

bb.cy:                                            ; preds = %.noexc135
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.lf, ptr align 4 %i.kx, i64 %i.la, i1 false)
  br label %bb.db

bb.cz:                                            ; preds = %.noexc135
  %i.lk = icmp eq i64 %i.la, 4
  br i1 %i.lk, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.ll = load i32, ptr %i.kx, align 4, !tbaa !3
  store i32 %i.ll, ptr %i.lf, align 4, !tbaa !3
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy, %.thread
  %i.lm = phi ptr [ %i.lf, %bb.cy ], [ %i.lf, %bb.cz ], [ %i.lf, %bb.da ], [ null, %.thread ]
  %i.ln = phi ptr [ %i.lh, %bb.cy ], [ %i.lh, %bb.cz ], [ %i.lh, %bb.da ], [ %i.lc, %.thread ] ; 3 uses
  %i.lo = phi ptr [ %i.lg, %bb.cy ], [ %i.lg, %bb.cz ], [ %i.lg, %bb.da ], [ %i.lb, %.thread ]
  store ptr %i.ln, ptr %i.lo, align 8, !tbaa !96
  %i.lp = getelementptr inbounds nuw i8, ptr %18, i64 96
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.lp, ptr noundef nonnull align 8 dereferenceable(48) %i.lq, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.lr = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.lr, align 8
  %i.ls = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #39
          to label %.noexc137 unwind label %bb.dh ; 8 uses

.noexc137:                                        ; preds = %bb.db
  %i.lt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.lu = load <2 x ptr>, ptr %18, align 16, !tbaa !75
  store ptr null, ptr %i.il, align 8, !tbaa !69
  store <2 x ptr> %i.lu, ptr %i.ls, align 8, !tbaa !75
  store ptr null, ptr %18, align 16, !tbaa !89
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.lv, ptr noundef nonnull align 16 dereferenceable(40) %i.iw, i64 40, i1 false)
  store ptr null, ptr %i.iw, align 16
  store i32 0, ptr %i.ix, align 8
  store ptr null, ptr %i.iy, align 16
  store i32 0, ptr %i.iz, align 8
  store ptr null, ptr %i.ja, align 16
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lw, ptr noundef nonnull align 8 dereferenceable(16) %i.kr, i64 16, i1 false)
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 72
  store ptr %i.lm, ptr %i.lx, align 8, !tbaa !98
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 80
  store ptr %i.ln, ptr %i.ly, align 8, !tbaa !96
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ls, i64 88
  store ptr %i.ln, ptr %i.lz, align 8, !tbaa !388
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ls, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ma, ptr noundef nonnull align 8 dereferenceable(48) %i.lq, i64 48, i1 false)
  store ptr %i.ls, ptr %4, align 16, !tbaa !75
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 16 dereferenceable(32) %17, i64 16, i1 false), !tbaa.struct !2589
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %17, align 16, !tbaa !76
  %i.mb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.md = load <2 x ptr>, ptr %i.mb, align 16, !tbaa !75
  %i.me = load ptr, ptr %i.mb, align 16, !tbaa !75 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPKvPNS0_2io16RandomAccessFileEEZNS0_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl33ReadRecordBatchWithCustomMetadataEiEUlS3_S6_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.mb, align 16, !tbaa !75
  store <2 x ptr> %i.md, ptr %i.lt, align 16, !tbaa !75
  store ptr @_ZNSt17_Function_handlerIFN5arrow6StatusEPKvPNS0_2io16RandomAccessFileEEZNS0_3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl33ReadRecordBatchWithCustomMetadataEiEUlS3_S6_E_E9_M_invokeERKSt9_Any_dataOS3_OS6_, ptr %i.mc, align 8, !tbaa !75
  %.not.i.i136 = icmp eq ptr %i.me, null
  br i1 %.not.i.i136, label %_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl33ReadRecordBatchWithCustomMetadataEiENUlPKvPNS_2io16RandomAccessFileEE_D2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %.noexc137
  %i.mf = invoke noundef zeroext i1 %i.me(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl33ReadRecordBatchWithCustomMetadataEiENUlPKvPNS_2io16RandomAccessFileEE_D2Ev.exit unwind label %bb.dd ; 0 uses

bb.dd:                                            ; preds = %bb.dc
  %i.mg = landingpad { ptr, i32 }
          catch ptr null
  %i.mh = extractvalue { ptr, i32 } %i.mg, 0
  call void @__clang_call_terminate(ptr %i.mh) #40
  unreachable

_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl33ReadRecordBatchWithCustomMetadataEiENUlPKvPNS_2io16RandomAccessFileEE_D2Ev.exit: ; preds = %.noexc137, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br label %bb.dj

bb.de:                                            ; preds = %.noexc.i
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.df:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.mj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i144 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i144, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.mk = ptrtoint ptr %i.ju to i64
  %i.ml = ptrtoint ptr %i.jv to i64
  %i.mm = sub i64 %i.mk, %i.ml                    ; 2 uses
  %i.mn = ashr exact i64 %i.mm, 3
  %i.mo = sub nsw i64 0, %i.mn
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.ju, i64 %i.mo
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.mm) #37
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.dg, %bb.df, %bb.de
  %.pn = phi { ptr, i32 } [ %i.mi, %bb.de ], [ %i.mj, %bb.df ], [ %i.mj, %bb.dg ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #36
  br label %bb.di

bb.dh:                                            ; preds = %bb.db
  %i.mq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl33ReadRecordBatchWithCustomMetadataEiENUlPKvPNS_2io16RandomAccessFileEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %18) #36
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %.pn55 = phi { ptr, i32 } [ %i.mq, %bb.dh ], [ %.pn, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #36
  br label %bb.gk

bb.dj:                                            ; preds = %_ZZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl33ReadRecordBatchWithCustomMetadataEiENUlPKvPNS_2io16RandomAccessFileEE_D2Ev.exit, %_ZN5arrow6StatusD2Ev.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  %i.mr = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val = load i64, ptr %i.mr, align 8
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val82 = load ptr, ptr %i.ms, align 8, !tbaa !416 ; 3 uses
  %i.mt = load i32, ptr %.val82, align 4, !tbaa !3, !noalias !2590
  %i.mu = sext i32 %i.mt to i64
  %i.mv = sub nsw i64 0, %i.mu
  %i.mw = getelementptr inbounds i8, ptr %.val82, i64 %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 10
  %i.my = load i16, ptr %i.mx, align 2, !tbaa !140, !noalias !2590 ; 2 uses
  %.not.i.i.i.i145 = icmp ne i16 %i.my, 0
  call void @llvm.assume(i1 %.not.i.i.i.i145)
  %i.mz = zext i16 %i.my to i64
  %i.na = getelementptr inbounds nuw i8, ptr %.val82, i64 %i.mz ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !3, !noalias !2590
  %i.nc = zext i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 %i.nc
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.nf = zext i32 %2 to i64
  %i.ng = mul nuw nsw i64 %i.nf, 24
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.ng
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_123FileBlockFromFlatbufferEPKN3org6apache5arrow7flatbuf5BlockEl(ptr dead_on_unwind noalias nonnull writable align 8 %19, ptr noundef nonnull readonly %i.nh, i64 noundef %.val)
          to label %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl19GetRecordBatchBlockEi.exit unwind label %bb.dl

_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl19GetRecordBatchBlockEi.exit: ; preds = %bb.dj
  %i.ni = load ptr, ptr %19, align 8, !tbaa !52
  %i.nj = icmp eq ptr %i.ni, null
  br i1 %i.nj, label %bb.dm, label %bb.dk, !prof !55

bb.dk:                                            ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl19GetRecordBatchBlockEi.exit
  call void @_ZN5arrow6ResultINS_23RecordBatchWithMetadataEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %19) #36
  br label %bb.gf

bb.dl:                                            ; preds = %bb.dj
  %i.nk = landingpad { ptr, i32 }
          cleanup
  br label %bb.gk

bb.dm:                                            ; preds = %_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl19GetRecordBatchBlockEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  %i.nl = getelementptr inbounds nuw i8, ptr %19, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %i.nl, i64 24, i1 false), !tbaa.struct !2593
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #36
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl20ReadMessageFromBlockERKNS0_8internal9FileBlockERKSt8functionIFNS_6StatusEPKvPNS_2io16RandomAccessFileEEE(ptr dead_on_unwind noalias writable align 8 %21, ptr noundef nonnull align 8 dereferenceable(513) %1, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.dn unwind label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  %i.nm = load ptr, ptr %21, align 8, !tbaa !52
  %i.nn = icmp eq ptr %i.nm, null
  br i1 %i.nn, label %bb.dq, label %bb.do, !prof !55

bb.do:                                            ; preds = %bb.dn
  call void @_ZN5arrow6ResultINS_23RecordBatchWithMetadataEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %21) #36
  br label %bb.fz

bb.dp:                                            ; preds = %bb.dm
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.dq:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !2594)
  call void @llvm.experimental.noalias.scope.decl(metadata !2597)
  %i.np = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !265, !noalias !2600 ; 2 uses
  store i64 %i.nq, ptr %22, align 8, !tbaa !265, !alias.scope !2600
  store ptr null, ptr %i.np, align 8, !tbaa !265, !noalias !2600
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #36
  %.cast = inttoptr i64 %i.nq to ptr
  invoke void @_ZNK5arrow3ipc7Message4bodyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.17") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %.cast)
          to label %bb.dr unwind label %bb.ef

bb.dr:                                            ; preds = %bb.dq
  %i.nr = load ptr, ptr %23, align 8, !tbaa !266
  %.not.i147 = icmp eq ptr %i.nr, null
  %i.ns = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !69 ; 8 uses
  %.not.i.i148 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i148, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 4 uses
  %i.nv = load atomic i64, ptr %i.nu acquire, align 8 ; 2 uses
  %i.nw = icmp eq i64 %i.nv, 4294967297
  %i.nx = trunc i64 %i.nv to i32                  ; 2 uses
  br i1 %i.nw, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  store i32 0, ptr %i.nu, align 8, !tbaa !77
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 12
  store i32 0, ptr %i.ny, align 4, !tbaa !79
  %i.nz = load ptr, ptr %i.nt, align 8, !tbaa !80
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8
  call void %i.ob(ptr noundef nonnull align 8 dereferenceable(16) %i.nt) #36, !inline_history !267
  %i.oc = load ptr, ptr %i.nt, align 8, !tbaa !80
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oe(ptr noundef nonnull align 8 dereferenceable(16) %i.nt) #36, !inline_history !267
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.du:                                            ; preds = %bb.ds
  %i.of = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i149 = icmp eq i8 %i.of, 0
  br i1 %.not.i.i.i149, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.og = add nsw i32 %i.nx, -1
  store i32 %i.og, ptr %i.nu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150

bb.dw:                                            ; preds = %bb.du
  %i.oh = atomicrmw volatile add ptr %i.nu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150: ; preds = %bb.dw, %bb.dv
  %.0.i.i.i.i151 = phi i32 [ %i.nx, %bb.dv ], [ %i.oh, %bb.dw ]
  %i.oi = icmp eq i32 %.0.i.i.i.i151, 1
  br i1 %i.oi, label %bb.dx, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.dx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nt) #36
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.dr, %bb.dt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36
  br i1 %.not.i147, label %bb.dy, label %bb.ei

bb.dy:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #36
  %i.oj = load ptr, ptr %22, align 8, !tbaa !265  ; 2 uses
  %i.ok = invoke noundef i32 @_ZNK5arrow3ipc7Message4typeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.oj)
          to label %bb.dz unwind label %bb.eg

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN5arrow3ipc17FormatMessageTypeB5cxx11ENS0_11MessageTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, i32 noundef %i.ok)
          to label %bb.ea unwind label %bb.eg

bb.ea:                                            ; preds = %bb.dz
end_hunk_1
begin_hunk_2_@_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl33ReadRecordBatchWithCustomMetadataEi:bb.a
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 24
  %i.st = load ptr, ptr %i.ss, align 8
  call void %i.st(ptr noundef nonnull align 8 dereferenceable(16) %i.si) #36, !inline_history !282
  br label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fk:                                            ; preds = %bb.fi
  %i.su = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i182 = icmp eq i8 %i.su, 0
  br i1 %.not.i.i.i182, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.sv = add nsw i32 %i.sm, -1
  store i32 %i.sv, ptr %i.sj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i183

bb.fm:                                            ; preds = %bb.fk
  %i.sw = atomicrmw volatile add ptr %i.sj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i183

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i183: ; preds = %bb.fm, %bb.fl
  %.0.i.i.i.i184 = phi i32 [ %i.sm, %bb.fl ], [ %i.sw, %bb.fm ]
  %i.sx = icmp eq i32 %.0.i.i.i.i184, 1
  br i1 %i.sx, label %bb.fn, label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !83

bb.fn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i183
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.si) #36
  br label %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEED2Ev.exit, %bb.fj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i183, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  br label %bb.fo

bb.fo:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow2io16RandomAccessFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.er
  %i.sy = load ptr, ptr %26, align 8, !tbaa !52   ; 2 uses
  %i.sz = icmp eq ptr %i.sy, null
  br i1 %i.sz, label %bb.fp, label %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.thread.i, !prof !55

bb.fp:                                            ; preds = %bb.fo
  %i.ta = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !69 ; 8 uses
  %.not.i.i.i.i.i186 = icmp eq ptr %i.tb, null
  br i1 %.not.i.i.i.i.i186, label %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.i, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8 ; 4 uses
  %i.td = load atomic i64, ptr %i.tc acquire, align 8 ; 2 uses
  %i.te = icmp eq i64 %i.td, 4294967297
  %i.tf = trunc i64 %i.td to i32                  ; 2 uses
  br i1 %i.te, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  store i32 0, ptr %i.tc, align 8, !tbaa !77
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tb, i64 12
  store i32 0, ptr %i.tg, align 4, !tbaa !79
  %i.th = load ptr, ptr %i.tb, align 8, !tbaa !80
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.tj = load ptr, ptr %i.ti, align 8
  call void %i.tj(ptr noundef nonnull align 8 dereferenceable(16) %i.tb) #36, !inline_history !283
  %i.tk = load ptr, ptr %i.tb, align 8, !tbaa !80
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  %i.tm = load ptr, ptr %i.tl, align 8
  call void %i.tm(ptr noundef nonnull align 8 dereferenceable(16) %i.tb) #36, !inline_history !283
  br label %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.i

bb.fs:                                            ; preds = %bb.fq
  %i.tn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !76
  %.not.i.i.i.i.i.i187 = icmp eq i8 %i.tn, 0
  br i1 %.not.i.i.i.i.i.i187, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.to = add nsw i32 %i.tf, -1
  store i32 %i.to, ptr %i.tc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i188

bb.fu:                                            ; preds = %bb.fs
  %i.tp = atomicrmw volatile add ptr %i.tc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i188

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i188: ; preds = %bb.fu, %bb.ft
  %.0.i.i.i.i.i.i.i189 = phi i32 [ %i.tf, %bb.ft ], [ %i.tp, %bb.fu ]
  %i.tq = icmp eq i32 %.0.i.i.i.i.i.i.i189, 1
  br i1 %i.tq, label %bb.fv, label %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.i, !prof !83

bb.fv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i188
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tb) #36
  br label %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.i: ; preds = %bb.fv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i188, %bb.fr, %bb.fp
  %.pr.i190 = load ptr, ptr %26, align 8, !tbaa !52 ; 2 uses
  %.not.i.i191 = icmp eq ptr %.pr.i190, null
  br i1 %.not.i.i191, label %bb.fx, label %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.thread.i, !prof !85

_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.i, %bb.fo
  %i.tr = phi ptr [ %.pr.i190, %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.i ], [ %i.sy, %bb.fo ]
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 1
  %i.tt = load i8, ptr %i.ts, align 1, !tbaa !56, !range !67, !noundef !68
  %i.tu = trunc nuw i8 %i.tt to i1
  br i1 %i.tu, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %26) #36
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.thread.i, %_ZN5arrow6ResultISt10shared_ptrINS_2io16RandomAccessFileEEE7DestroyEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  %.pre238 = load ptr, ptr %22, align 8, !tbaa !265 ; 2 uses
  %.not.i192 = icmp eq ptr %.pre238, null
  br i1 %.not.i192, label %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i

_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i: ; preds = %.thread291, %bb.fx
  %i.tv = phi ptr [ %i.oj, %.thread291 ], [ %.pre238, %bb.fx ] ; 2 uses
  call void @_ZN5arrow3ipc7MessageD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.tv) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.tv, i64 noundef 8) #37
  br label %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.fx, %_ZNKSt14default_deleteIN5arrow3ipc7MessageEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  br label %bb.fz

bb.fy:                                            ; preds = %bb.es, %bb.et, %bb.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %bb.ef
  %.pn61.pn = phi { ptr, i32 } [ %.pn61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157 ], [ %i.pf, %bb.ef ], [ %.pn57, %bb.ff ], [ %i.qi, %bb.et ], [ %i.qh, %bb.es ]
  call void @_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  call void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  br label %bb.gc

bb.fz:                                            ; preds = %_ZNSt10unique_ptrIN5arrow3ipc7MessageESt14default_deleteIS2_EED2Ev.exit, %bb.do
  %i.tw = load ptr, ptr %21, align 8, !tbaa !52   ; 2 uses
  %i.tx = icmp eq ptr %i.tw, null
  br i1 %i.tx, label %bb.ga, label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.thread.i, !prof !55

bb.ga:                                            ; preds = %bb.fz
  %i.ty = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !265 ; 3 uses
  %.not.i.i.i.i194 = icmp eq ptr %i.tz, null
  br i1 %.not.i.i.i.i194, label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.i: ; preds = %bb.ga
  call void @_ZN5arrow3ipc7MessageD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.tz) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.tz, i64 noundef 8) #37
  %.pr.pre.i = load ptr, ptr %21, align 8, !tbaa !52 ; 2 uses
  %.not.i.i195 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i195, label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.thread.i, !prof !85

_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.i, %bb.fz
  %i.ua = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.i ], [ %i.tw, %bb.fz ]
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 1
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !56, !range !67, !noundef !68
  %i.ud = trunc nuw i8 %i.uc to i1
  br i1 %i.ud, label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev.exit, label %bb.gb

bb.gb:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %21) #36
  br label %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev.exit: ; preds = %bb.ga, %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEE7DestroyEv.exit.thread.i, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  br label %bb.gf

bb.gc:                                            ; preds = %bb.dp, %bb.fy
  %.pn61.pn.pn.pn.pn = phi { ptr, i32 } [ %i.no, %bb.dp ], [ %.pn61.pn, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  %i.ue = load ptr, ptr %19, align 8, !tbaa !52   ; 2 uses
  %.not.i.i196 = icmp eq ptr %i.ue, null
  br i1 %.not.i.i196, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit, label %bb.gd, !prof !55

bb.gd:                                            ; preds = %bb.gc
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 1
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !56, !range !67, !noundef !68
  %i.uh = trunc nuw i8 %i.ug to i1
  br i1 %i.uh, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %19) #36
  br label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit

_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit: ; preds = %bb.gc, %bb.gd, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  br label %bb.gk

bb.gf:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev.exit, %bb.dk
  %i.ui = load ptr, ptr %19, align 8, !tbaa !52   ; 2 uses
  %.not.i.i198 = icmp eq ptr %i.ui, null
  br i1 %.not.i.i198, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit200, label %bb.gg, !prof !55

bb.gg:                                            ; preds = %bb.gf
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 1
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !56, !range !67, !noundef !68
  %i.ul = trunc nuw i8 %i.uk to i1
  br i1 %i.ul, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit200, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %19) #36
  br label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit200

_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit200: ; preds = %bb.gf, %bb.gg, %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  %i.um = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.un = load ptr, ptr %i.um, align 16, !tbaa !2022 ; 2 uses
  %.not.i201 = icmp eq ptr %i.un, null
  br i1 %.not.i201, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.gi

bb.gi:                                            ; preds = %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit200
  %i.uo = invoke noundef zeroext i1 %i.un(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.gj ; 0 uses

bb.gj:                                            ; preds = %bb.gi
  %i.up = landingpad { ptr, i32 }
          catch ptr null
  %i.uq = extractvalue { ptr, i32 } %i.up, 0
  call void @__clang_call_terminate(ptr %i.uq) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit200, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  br label %bb.gn

bb.gk:                                            ; preds = %bb.dl, %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit, %bb.di
  %.pn61.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn55, %bb.di ], [ %.pn61.pn.pn.pn.pn, %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit ], [ %i.nk, %bb.dl ]
  %i.ur = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.us = load ptr, ptr %i.ur, align 16, !tbaa !2022 ; 2 uses
  %.not.i202 = icmp eq ptr %i.us, null
  br i1 %.not.i202, label %_ZNSt14_Function_baseD2Ev.exit203, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.ut = invoke noundef zeroext i1 %i.us(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit203 unwind label %bb.gm ; 0 uses

bb.gm:                                            ; preds = %bb.gl
  %i.uu = landingpad { ptr, i32 }
          catch ptr null
  %i.uv = extractvalue { ptr, i32 } %i.uu, 0
  call void @__clang_call_terminate(ptr %i.uv) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit203:                ; preds = %bb.gk, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  br label %bb.go

bb.gn:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit124, %_ZNSt14_Function_baseD2Ev.exit, %_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEED2Ev.exit
  ret void

bb.go:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit203, %bb.ci
  %.pn71.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn.pn.pn.pn.pn, %bb.ci ], [ %.pn61.pn.pn.pn.pn.pn.pn, %_ZNSt14_Function_baseD2Ev.exit203 ]
  resume { ptr, i32 } %.pn71.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @_ZNK5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl5statsEv(ptr dead_on_unwind noalias writable writeonly sret(%"struct.arrow::ipc::ReadStats") align 8 captures(none) initializes((0, 40)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(513) %1) unnamed_addr #33 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2619)
  %i.b = load atomic i64, ptr %i.a monotonic, align 8, !noalias !2619
  store i64 %i.b, ptr %0, align 8, !tbaa !2622, !alias.scope !2619
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.d = load atomic i64, ptr %i.c monotonic, align 8, !noalias !2619
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !2623, !alias.scope !2619
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.g = load atomic i64, ptr %i.f monotonic, align 8, !noalias !2619
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.h, align 8, !tbaa !2624, !alias.scope !2619
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.j = load atomic i64, ptr %i.i monotonic, align 8, !noalias !2619
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.j, ptr %i.k, align 8, !tbaa !2625, !alias.scope !2619
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.m = load atomic i64, ptr %i.l monotonic, align 8, !noalias !2619
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %i.n, align 8, !tbaa !2626, !alias.scope !2619
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl9CountRowsEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.82") align 8 %0, ptr noundef nonnull align 8 dereferenceable(513) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow_vendored_private::flatbuffers::Verifier", align 8 ; 13 uses
  %3 = alloca %"class.arrow::Result.859", align 8 ; 20 uses
  %4 = alloca %"struct.arrow::ipc::internal::FileBlock", align 8 ; 7 uses
  %5 = alloca %"class.arrow::Result.177", align 8 ; 15 uses
  %6 = alloca %"class.std::function.855", align 8 ; 10 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %8 = alloca %"class.std::shared_ptr.17", align 8 ; 9 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(513) %1)
  %.not92 = icmp sgt i32 %i.d, 0
  br i1 %.not92, label %.lr.ph, label %.critedge44

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 25
  %.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(513) %1)
  %i.r = sext i32 %i.q to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %.not, label %bb.c, label %.critedge44, !llvm.loop !2627

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.08093 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %.val = load i64, ptr %i.e, align 8
  %.val49 = load ptr, ptr %i.f, align 8, !tbaa !416 ; 3 uses
  %i.s = load i32, ptr %.val49, align 4, !tbaa !3, !noalias !2628
  %i.t = sext i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds i8, ptr %.val49, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  %i.x = load i16, ptr %i.w, align 2, !tbaa !140, !noalias !2628 ; 2 uses
  %.not.i.i.i.i = icmp ne i16 %i.x, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = zext i16 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.val49, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3, !noalias !2628
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ae = mul nuw nsw i64 %indvars.iv, 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_123FileBlockFromFlatbufferEPKN3org6apache5arrow7flatbuf5BlockEl(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull readonly %i.af, i64 noundef %.val)
  %i.ag = load ptr, ptr %3, align 8, !tbaa !52
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.f, label %.critedge42, !prof !55

.critedge42:                                      ; preds = %bb.c
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #36
  %i.ai = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit, label %bb.d, !prof !55

bb.d:                                             ; preds = %.critedge42
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !56, !range !67, !noundef !68
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #36
  br label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit

_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit: ; preds = %.critedge42, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !2593
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_125RecordBatchFileReaderImpl20ReadMessageFromBlockERKNS0_8internal9FileBlockERKSt8functionIFNS_6StatusEPKvPNS_2io16RandomAccessFileEEE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(513) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !2022 ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = invoke noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #40
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.aq = load ptr, ptr %5, align 8, !tbaa !52
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.o, label %.critedge46, !prof !55

.critedge46:                                      ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #36
  call void @_ZN5arrow6ResultISt10unique_ptrINS_3ipc7MessageESt14default_deleteIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  %i.as = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.as, null
  br i1 %.not.i.i50, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit51, label %bb.j, !prof !55

bb.j:                                             ; preds = %.critedge46
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !56, !range !67, !noundef !68
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit51, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #36
  br label %_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit51

_ZN5arrow6ResultINS_3ipc8internal9FileBlockEED2Ev.exit51: ; preds = %.critedge46, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.loopexit

end_hunk_2
