Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/blob_file?download=true
inline.NumInlined: 866
inline.NumDeleted: 431
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb13AlignedBufferD2Ev:bb.a
bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #27
  unreachable

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #27
  unreachable

_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit:  ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZN7rocksdb7blob_db8BlobFile19SetFromFooterLockedERKNS_13BlobLogFooterE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(none) initializes((0, 6), (8, 16)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(314) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %2) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !94
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  store atomic i64 %i.a, ptr %i.b seq_cst, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.e = load <2 x i64>, ptr %i.c, align 8, !tbaa !95
  store <2 x i64> %i.e, ptr %i.d, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  store atomic i8 1, ptr %i.f seq_cst, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !161, !alias.scope !197
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !197
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb7blob_db8BlobFile5FsyncERKNS_12WriteOptionsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(address) initializes((0, 6), (8, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(314) %1, ptr noundef nonnull align 8 dereferenceable(25) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Status", align 8   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN7rocksdb13BlobLogWriter4SyncERKNS_12WriteOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(25) %2)
  %.not.i = icmp eq ptr %0, %3
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %bb.b
  %i.d = load <4 x i8>, ptr %3, align 8, !tbaa !27
  store <4 x i8> %i.d, ptr %0, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = load i8, ptr %i.e, align 4, !tbaa !152, !range !81, !noundef !82
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.f, ptr %i.g, align 4, !tbaa !153
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.i = load i8, ptr %i.h, align 1, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.i, ptr %i.j, align 1, !tbaa !154
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !85
  store ptr %i.l, ptr %i.a, align 8, !tbaa !85
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !85 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre) #23
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZN7rocksdb6StatusD2Ev.exit
  ret void
}

declare void @_ZN7rocksdb13BlobLogWriter4SyncERKNS_12WriteOptionsE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7rocksdb7blob_db8BlobFile23CloseRandomAccessLockedEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(314) initializes((232, 240)) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr null, ptr %i.a, align 8, !tbaa !162
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !86
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN7rocksdb22RandomAccessFileReaderELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !89
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !198
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !inline_history !198
  br label %_ZNSt12__shared_ptrIN7rocksdb22RandomAccessFileReaderELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !90
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN7rocksdb22RandomAccessFileReaderELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, !prof !61

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26
  br label %_ZNSt12__shared_ptrIN7rocksdb22RandomAccessFileReaderELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

_ZNSt12__shared_ptrIN7rocksdb22RandomAccessFileReaderELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 304
  store atomic i64 -1, ptr %i.s seq_cst, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb7blob_db8BlobFile9GetReaderEPNS_3EnvERKNS_11FileOptionsEPSt10shared_ptrINS_22RandomAccessFileReaderEEPb(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(314) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.rocksdb::Status", align 8   ; 5 uses
  %7 = alloca %"class.std::unique_ptr.42", align 8 ; 8 uses
  %8 = alloca %"class.rocksdb::IOStatus", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.rocksdb::Status", align 8  ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  store i8 0, ptr %5, align 1, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 0, ptr %i.a, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.b = load ptr, ptr %2, align 8, !tbaa !84
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull %i.a)
  %i.e = load i8, ptr %6, align 8, !tbaa !106
  %i.f = icmp eq i8 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !85   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.h) #23
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.j = load i64, ptr %i.a, align 8, !tbaa !95
  store atomic i64 %i.j, ptr %i.i seq_cst, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN7rocksdb6StatusD2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.k, align 8, !tbaa !161
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 6 uses
  invoke void @_ZN7rocksdb4port7RWMutex8ReadLockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %_ZN7rocksdb8ReadLockC2EPNS_4port7RWMutexE.exit unwind label %16

_ZN7rocksdb8ReadLockC2EPNS_4port7RWMutexE.exit:   ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !92   ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZN7rocksdb8ReadLockC2EPNS_4port7RWMutexE.exit
  store ptr %i.n, ptr %4, align 8, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !86   ; 4 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !86   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN7rocksdb22RandomAccessFileReaderEEaSERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not7.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.s, align 4, !tbaa !90
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.s, align 4, !tbaa !90
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !86
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.x = phi ptr [ %i.r, %bb.e ], [ %i.r, %bb.g ], [ %.pr.pre.i.i.i, %bb.h ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.y, align 8, !tbaa !88
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !89
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !84
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #26, !inline_history !199
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !84
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #26, !inline_history !199
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i9.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i9.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !90
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.ab, %bb.l ], [ %i.al, %bb.m ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.am, label %bb.n, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !61

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.q, ptr %i.o, align 8, !tbaa !86
  br label %_ZNSt10shared_ptrIN7rocksdb22RandomAccessFileReaderEEaSERKS2_.exit

_ZNSt10shared_ptrIN7rocksdb22RandomAccessFileReaderEEaSERKS2_.exit: ; preds = %bb.d, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  invoke void @_ZN7rocksdb4port7RWMutex10ReadUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %_ZN7rocksdb8ReadLockD2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZNSt10shared_ptrIN7rocksdb22RandomAccessFileReaderEEaSERKS2_.exit
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #27
  unreachable

16:                                               ; preds = %bb.c
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb9WriteLockD2Ev.exit

.critedge:                                        ; preds = %_ZN7rocksdb8ReadLockC2EPNS_4port7RWMutexE.exit
  invoke void @_ZN7rocksdb4port7RWMutex10ReadUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %_ZN7rocksdb8ReadLockD2Ev.exit47 unwind label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #27
  unreachable

_ZN7rocksdb8ReadLockD2Ev.exit47:                  ; preds = %.critedge
  invoke void @_ZN7rocksdb4port7RWMutex9WriteLockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %_ZN7rocksdb9WriteLockC2EPNS_4port7RWMutexE.exit unwind label %bb.ab

_ZN7rocksdb9WriteLockC2EPNS_4port7RWMutexE.exit:  ; preds = %_ZN7rocksdb8ReadLockD2Ev.exit47
  %i.ar = load ptr, ptr %i.m, align 8, !tbaa !92  ; 2 uses
  %.not132 = icmp eq ptr %i.ar, null
  br i1 %.not132, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %_ZN7rocksdb9WriteLockC2EPNS_4port7RWMutexE.exit
  store ptr %i.ar, ptr %4, align 8, !tbaa !92
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !86 ; 4 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i48 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i.i48, label %_ZNSt10shared_ptrIN7rocksdb22RandomAccessFileReaderEEaSERKS2_.exit58, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not7.i.i.i49 = icmp eq ptr %i.au, null
  br i1 %.not7.i.i.i49, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i51, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  %i.ax = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i50 = icmp eq i8 %i.ax, 0
  br i1 %.not.i.i.i.i50, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !90
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !90
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i51

bb.u:                                             ; preds = %bb.s
  %i.ba = atomicrmw volatile add ptr %i.aw, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i57 = load ptr, ptr %i.as, align 8, !tbaa !86
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i51

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i51: ; preds = %bb.u, %bb.t, %bb.r
  %i.bb = phi ptr [ %i.av, %bb.r ], [ %i.av, %bb.t ], [ %.pr.pre.i.i.i57, %bb.u ] ; 8 uses
  %.not8.i.i.i52 = icmp eq ptr %i.bb, null
  br i1 %.not8.i.i.i52, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i56, label %bb.v

bb.v:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i51
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.bd = load atomic i64, ptr %i.bc acquire, align 8 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 4294967297
  %i.bf = trunc i64 %i.bd to i32                  ; 2 uses
  br i1 %i.be, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bc, align 8, !tbaa !88
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 0, ptr %i.bg, align 4, !tbaa !89
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !84
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #26, !inline_history !199
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !84
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #26, !inline_history !199
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i56

bb.x:                                             ; preds = %bb.v
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i9.i.i.i53 = icmp eq i8 %i.bn, 0
  br i1 %.not.i9.i.i.i53, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = add nsw i32 %i.bf, -1
  store i32 %i.bo, ptr %i.bc, align 8, !tbaa !90
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i54

bb.z:                                             ; preds = %bb.x
  %i.bp = atomicrmw volatile add ptr %i.bc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i54: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i55 = phi i32 [ %i.bf, %bb.y ], [ %i.bp, %bb.z ]
  %i.bq = icmp eq i32 %.0.i.i.i.i.i55, 1
  br i1 %i.bq, label %bb.aa, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i56, !prof !61

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i56

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i56: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i54, %bb.w, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i51
  store ptr %i.au, ptr %i.as, align 8, !tbaa !86
  br label %_ZNSt10shared_ptrIN7rocksdb22RandomAccessFileReaderEEaSERKS2_.exit58

bb.ab:                                            ; preds = %_ZN7rocksdb8ReadLockD2Ev.exit47
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb9WriteLockD2Ev.exit

bb.ac:                                            ; preds = %_ZN7rocksdb9WriteLockC2EPNS_4port7RWMutexE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr null, ptr %7, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.bs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK7rocksdb3Env13GetFileSystemEv(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %bb.ad unwind label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !166 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !62, !noalias !211
  invoke void @_ZN7rocksdb12BlobFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 noundef %i.bw)
          to label %_ZNK7rocksdb7blob_db8BlobFile8PathNameB5cxx11Ev.exit unwind label %bb.am

_ZNK7rocksdb7blob_db8BlobFile8PathNameB5cxx11Ev.exit: ; preds = %bb.ad
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !84
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 192
  %i.bz = load ptr, ptr %i.by, align 8
  invoke void %i.bz(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull %7, ptr noundef null)
          to label %bb.ae unwind label %bb.an

bb.ae:                                            ; preds = %_ZNK7rocksdb7blob_db8BlobFile8PathNameB5cxx11Ev.exit
  %.not.i = icmp eq ptr %0, %8
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ca = load <4 x i8>, ptr %8, align 8, !tbaa !27
  store <4 x i8> %i.ca, ptr %0, align 8, !tbaa !27
  store <4 x i8> zeroinitializer, ptr %8, align 8, !tbaa !27
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !152, !range !81, !noundef !82
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.cc, ptr %i.cd, align 4, !tbaa !153
  store i8 0, ptr %i.cb, align 4, !tbaa !153
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 5 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !27
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !154
  store i8 0, ptr %i.ce, align 1, !tbaa !154
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !85
  store ptr null, ptr %i.ch, align 8, !tbaa !85
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !85  ; 2 uses
  store ptr %i.ci, ptr %i.k, align 8, !tbaa !85
  %.not.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.af
  call void @_ZdaPv(ptr noundef nonnull %i.cj) #23
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.ae, %bb.af, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !85 ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i59, label %_ZN7rocksdb6StatusD2Ev.exit61, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i60

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i60: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.cl) #23
  br label %_ZN7rocksdb6StatusD2Ev.exit61

_ZN7rocksdb6StatusD2Ev.exit61:                    ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i60
  %i.cm = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit61
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !27
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.cr = load i8, ptr %0, align 8, !tbaa !106
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.av, label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.cv = load i64, ptr %i.bv, align 8, !tbaa !62, !noalias !212
  invoke void @_ZN7rocksdb12BlobFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 noundef %i.cv)
          to label %_ZNK7rocksdb7blob_db8BlobFile8PathNameB5cxx11Ev.exit62 unwind label %bb.ap

_ZNK7rocksdb7blob_db8BlobFile8PathNameB5cxx11Ev.exit62: ; preds = %bb.ag
  %i.cw = load ptr, ptr %10, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.ah unwind label %bb.aq

bb.ah:                                            ; preds = %_ZNK7rocksdb7blob_db8BlobFile8PathNameB5cxx11Ev.exit62
  %i.cx = load ptr, ptr %11, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.cy = load i64, ptr %i.bv, align 8, !tbaa !62, !noalias !213
  invoke void @_ZN7rocksdb12BlobFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 noundef %i.cy)
          to label %_ZNK7rocksdb7blob_db8BlobFile8PathNameB5cxx11Ev.exit63 unwind label %bb.ar

_ZNK7rocksdb7blob_db8BlobFile8PathNameB5cxx11Ev.exit63: ; preds = %bb.ah
  %i.cz = load ptr, ptr %2, align 8, !tbaa !84
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 232
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %13, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ai unwind label %bb.as

bb.ai:                                            ; preds = %_ZNK7rocksdb7blob_db8BlobFile8PathNameB5cxx11Ev.exit63
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.aj unwind label %bb.at

bb.aj:                                            ; preds = %bb.ai
  %i.dc = load ptr, ptr %12, align 8, !tbaa !26
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 3, ptr noundef %i.cu, ptr noundef nonnull @.str.42, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), ptr noundef %i.cw, ptr noundef %i.cx, ptr noundef %i.dc)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %bb.aj
  %i.dd = load ptr, ptr %12, align 8, !tbaa !26   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.ak
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !27
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %i.di = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !85 ; 2 uses
  %.not.i.i67 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i67, label %_ZN7rocksdb6StatusD2Ev.exit69, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i68

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  call void @_ZdaPv(ptr noundef nonnull %i.dj) #23
  br label %_ZN7rocksdb6StatusD2Ev.exit69

_ZN7rocksdb6StatusD2Ev.exit69:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i68
  %i.dk = load ptr, ptr %14, align 8, !tbaa !26   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %_ZN7rocksdb6StatusD2Ev.exit69
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !27
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %_ZN7rocksdb6StatusD2Ev.exit69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.dp = load ptr, ptr %11, align 8, !tbaa !26   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !27
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.du = load ptr, ptr %10, align 8, !tbaa !26   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !27
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.bo

bb.al:                                            ; preds = %bb.ac
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.am:                                            ; preds = %bb.ad
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
end_hunk_0
begin_hunk_1_@_ZN7rocksdb7blob_db8BlobFile9GetReaderEPNS_3EnvERKNS_11FileOptionsEPSt10shared_ptrINS_22RandomAccessFileReaderEEPb:bb.a
  store i32 %i.gd, ptr %i.fr, align 8, !tbaa !90
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.ge = atomicrmw volatile add ptr %i.fr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i.i.i = phi i32 [ %i.fu, %bb.az ], [ %i.ge, %bb.ba ]
  %i.gf = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.gf, label %bb.bb, label %_ZNSt12__shared_ptrIN7rocksdb22RandomAccessFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !61

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #26
  br label %_ZNSt12__shared_ptrIN7rocksdb22RandomAccessFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb22RandomAccessFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ax, %_ZSt11make_sharedIN7rocksdb22RandomAccessFileReaderEJSt10unique_ptrINS0_18FSRandomAccessFileESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt10shared_ptrIT_EDpOT0_.exit
  %i.gg = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %_ZNSt12__shared_ptrIN7rocksdb22RandomAccessFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !27
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %_ZNSt12__shared_ptrIN7rocksdb22RandomAccessFileReaderELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.gl = load ptr, ptr %i.m, align 8, !tbaa !92
  store ptr %i.gl, ptr %4, align 8, !tbaa !92
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.gn = load ptr, ptr %i.fp, align 8, !tbaa !86 ; 4 uses
  %i.go = load ptr, ptr %i.gm, align 8, !tbaa !86 ; 3 uses
  %.not.i.i.i105 = icmp eq ptr %i.gn, %i.go
  br i1 %.not.i.i.i105, label %_ZNSt10shared_ptrIN7rocksdb22RandomAccessFileReaderEEaSERKS2_.exit115, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
  %.not7.i.i.i106 = icmp eq ptr %i.gn, null
  br i1 %.not7.i.i.i106, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i108, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 3 uses
  %i.gq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i.i.i.i107 = icmp eq i8 %i.gq, 0
  br i1 %.not.i.i.i.i107, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gr = load i32, ptr %i.gp, align 4, !tbaa !90
  %i.gs = add nsw i32 %i.gr, 1
  store i32 %i.gs, ptr %i.gp, align 4, !tbaa !90
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i108

bb.bf:                                            ; preds = %bb.bd
  %i.gt = atomicrmw volatile add ptr %i.gp, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i114 = load ptr, ptr %i.gm, align 8, !tbaa !86
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i108

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i108: ; preds = %bb.bf, %bb.be, %bb.bc
  %i.gu = phi ptr [ %i.go, %bb.bc ], [ %i.go, %bb.be ], [ %.pr.pre.i.i.i114, %bb.bf ] ; 8 uses
  %.not8.i.i.i109 = icmp eq ptr %i.gu, null
  br i1 %.not8.i.i.i109, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i113, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i108
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 4 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 4294967297
  %i.gy = trunc i64 %i.gw to i32                  ; 2 uses
  br i1 %i.gx, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.gv, align 8, !tbaa !88
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gz, align 4, !tbaa !89
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !84
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #26, !inline_history !199
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !84
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #26, !inline_history !199
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i113

bb.bi:                                            ; preds = %bb.bg
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !27
  %.not.i9.i.i.i110 = icmp eq i8 %i.hg, 0
  br i1 %.not.i9.i.i.i110, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hh = add nsw i32 %i.gy, -1
  store i32 %i.hh, ptr %i.gv, align 8, !tbaa !90
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i111

bb.bk:                                            ; preds = %bb.bi
  %i.hi = atomicrmw volatile add ptr %i.gv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i111

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i111: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i112 = phi i32 [ %i.gy, %bb.bj ], [ %i.hi, %bb.bk ]
  %i.hj = icmp eq i32 %.0.i.i.i.i.i112, 1
  br i1 %i.hj, label %bb.bl, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i113, !prof !61

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i111
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i113

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i113: ; preds = %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i111, %bb.bh, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i108
  store ptr %i.gn, ptr %i.gm, align 8, !tbaa !86
  br label %_ZNSt10shared_ptrIN7rocksdb22RandomAccessFileReaderEEaSERKS2_.exit115

_ZNSt10shared_ptrIN7rocksdb22RandomAccessFileReaderEEaSERKS2_.exit115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i113
  store i8 1, ptr %5, align 1, !tbaa !152
  br label %bb.bo

bb.bm:                                            ; preds = %bb.av
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

bb.bn:                                            ; preds = %_ZNK7rocksdb7blob_db8BlobFile8PathNameB5cxx11Ev.exit97
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb22RandomAccessFileReaderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.bn
  %eh.lpad-body = phi { ptr, i32 } [ %i.hl, %bb.bn ], [ %i.fo, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb22RandomAccessFileReaderESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ] ; 2 uses
  %i.hm = load ptr, ptr %15, align 8, !tbaa !26   ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116: ; preds = %.body
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !27
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116, %bb.bm
  %.pn38 = phi { ptr, i32 } [ %i.hk, %bb.bm ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.bp

bb.bo:                                            ; preds = %_ZNSt10shared_ptrIN7rocksdb22RandomAccessFileReaderEEaSERKS2_.exit115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78
  %i.hr = load ptr, ptr %7, align 8, !tbaa !167   ; 3 uses
  %.not.i119 = icmp eq ptr %i.hr, null
  br i1 %.not.i119, label %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb18FSRandomAccessFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb18FSRandomAccessFileEEclEPS1_.exit.i: ; preds = %bb.bo
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !84
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(8) %i.hr) #26, !inline_history !4
  br label %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.bo, %_ZNKSt14default_deleteIN7rocksdb18FSRandomAccessFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %_ZNSt10shared_ptrIN7rocksdb22RandomAccessFileReaderEEaSERKS2_.exit58

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %bb.ao
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118 ], [ %.pn32.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn.pn, %bb.ao ]
  %i.hv = load ptr, ptr %7, align 8, !tbaa !167   ; 3 uses
  %.not.i120 = icmp eq ptr %i.hv, null
  br i1 %.not.i120, label %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EED2Ev.exit122, label %_ZNKSt14default_deleteIN7rocksdb18FSRandomAccessFileEEclEPS1_.exit.i121

_ZNKSt14default_deleteIN7rocksdb18FSRandomAccessFileEEclEPS1_.exit.i121: ; preds = %bb.bp
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !84
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(8) %i.hv) #26, !inline_history !4
  br label %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EED2Ev.exit122

_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EED2Ev.exit122: ; preds = %bb.bp, %_ZNKSt14default_deleteIN7rocksdb18FSRandomAccessFileEEclEPS1_.exit.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  invoke void @_ZN7rocksdb4port7RWMutex11WriteUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %_ZN7rocksdb9WriteLockD2Ev.exit unwind label %bb.bq

bb.bq:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EED2Ev.exit122
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #27
  unreachable

_ZNSt10shared_ptrIN7rocksdb22RandomAccessFileReaderEEaSERKS2_.exit58: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i56, %bb.q, %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN7rocksdb4port7RWMutex11WriteUnlockEv(ptr noundef nonnull align 8 dereferenceable(56) %i.l)
          to label %_ZN7rocksdb8ReadLockD2Ev.exit unwind label %bb.br

bb.br:                                            ; preds = %_ZNSt10shared_ptrIN7rocksdb22RandomAccessFileReaderEEaSERKS2_.exit58
  %i.ib = landingpad { ptr, i32 }
          catch ptr null
  %i.ic = extractvalue { ptr, i32 } %i.ib, 0
  call void @__clang_call_terminate(ptr %i.ic) #27
  unreachable

_ZN7rocksdb8ReadLockD2Ev.exit:                    ; preds = %_ZNSt10shared_ptrIN7rocksdb22RandomAccessFileReaderEEaSERKS2_.exit58, %_ZNSt10shared_ptrIN7rocksdb22RandomAccessFileReaderEEaSERKS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void

_ZN7rocksdb9WriteLockD2Ev.exit:                   ; preds = %bb.ab, %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EED2Ev.exit122, %16
  %.pn38.pn.pn.pn = phi { ptr, i32 } [ %17, %16 ], [ %i.br, %bb.ab ], [ %.pn38.pn, %_ZNSt10unique_ptrIN7rocksdb18FSRandomAccessFileESt14default_deleteIS1_EED2Ev.exit122 ]
  %i.id = load ptr, ptr %i.k, align 8, !tbaa !85  ; 2 uses
  %.not.i.i124 = icmp eq ptr %i.id, null
  br i1 %.not.i.i124, label %_ZN7rocksdb6StatusD2Ev.exit126, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i125

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i125: ; preds = %_ZN7rocksdb9WriteLockD2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.id) #23
  br label %_ZN7rocksdb6StatusD2Ev.exit126

_ZN7rocksdb6StatusD2Ev.exit126:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i125, %_ZN7rocksdb9WriteLockD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  resume { ptr, i32 } %.pn38.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK7rocksdb3Env13GetFileSystemEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb7blob_db8BlobFile12ReadMetadataERKSt10shared_ptrINS_10FileSystemEERKNS_11FileOptionsE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(314) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(216) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %4 = alloca %"class.rocksdb::Status", align 8   ; 37 uses
  %5 = alloca %"class.rocksdb::IOStatus", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %10 = alloca %"class.std::unique_ptr.74", align 8 ; 13 uses
  %11 = alloca %"class.rocksdb::IOStatus", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.rocksdb::AlignedBuffer", align 8 ; 12 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 8 uses
  %17 = alloca %"struct.rocksdb::AlignedBufferAllocationContext", align 8 ; 6 uses
  %18 = alloca %"class.rocksdb::IOStatus", align 8 ; 9 uses
  %19 = alloca %"struct.rocksdb::IOOptions", align 8 ; 15 uses
  %20 = alloca %"class.rocksdb::IOStatus", align 8 ; 9 uses
  %21 = alloca %"struct.rocksdb::IOOptions", align 8 ; 15 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"struct.rocksdb::BlobLogHeader", align 8 ; 9 uses
  %24 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.rocksdb::Slice", align 8   ; 8 uses
  %28 = alloca %"struct.rocksdb::AlignedBufferAllocationContext", align 8 ; 6 uses
  %29 = alloca %"class.rocksdb::IOStatus", align 8 ; 6 uses
  %30 = alloca %"struct.rocksdb::IOOptions", align 8 ; 15 uses
  %31 = alloca %"class.rocksdb::IOStatus", align 8 ; 6 uses
  %32 = alloca %"struct.rocksdb::IOOptions", align 8 ; 15 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"struct.rocksdb::BlobLogFooter", align 8 ; 7 uses
  %35 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 0, ptr %i.b, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.c = load ptr, ptr %2, align 8, !tbaa !166    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !62, !noalias !222
  call void @_ZN7rocksdb12BlobFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(84) %i.g, ptr noundef nonnull %i.b, ptr noundef null)
          to label %_ZN7rocksdb6StatusC2EOS0_.exit unwind label %bb.c

_ZN7rocksdb6StatusC2EOS0_.exit:                   ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 18 uses
  %i.l = load <4 x i8>, ptr %5, align 8, !tbaa !27
  %i.m = load i8, ptr %5, align 8, !tbaa !223
  store <4 x i8> %i.l, ptr %4, align 8, !tbaa !27
  store <4 x i8> zeroinitializer, ptr %5, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !tbaa !152, !range !81, !noundef !82
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 12 uses
  store i8 %i.o, ptr %i.p, align 4, !tbaa !153
  store i8 0, ptr %i.n, align 4, !tbaa !153
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 5 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 12 uses
  store i8 %i.r, ptr %i.s, align 1, !tbaa !154
  store i8 0, ptr %i.q, align 1, !tbaa !154
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85
  store ptr null, ptr %i.t, align 8, !tbaa !85
  store ptr %i.u, ptr %i.k, align 8, !tbaa !85
  %i.v = load ptr, ptr %6, align 8, !tbaa !26     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  %i.y = load i64, ptr %i.w, align 8, !tbaa !27
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #23
  %.pre = load i8, ptr %4, align 8, !tbaa !106
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i8 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %_ZN7rocksdb6StatusC2EOS0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !95  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  store atomic i64 %i.ac, ptr %i.ad seq_cst, align 8
  %i.ae = icmp ult i64 %i.ac, 30
  br i1 %i.ae, label %bb.j, label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.c
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !27
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN7rocksdb6StatusD2Ev.exit180

bb.d:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !66
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %7, align 8, !tbaa !26
  invoke void (i8, ptr, ptr, ...) @_ZN7rocksdb3LogENS_12InfoLogLevelEPNS_6LoggerEPKcz(i8 noundef zeroext 3, ptr noundef %i.an, ptr noundef nonnull @.str.44, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), i64 noundef %i.ao, ptr noundef %i.ap)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.g
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !27
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.av, align 8, !tbaa !161
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i60 = icmp eq ptr %0, %4
  br i1 %.not.i.i60, label %_ZN7rocksdb6StatusC2EOS0_.exit63, label %_ZN7rocksdb6StatusC2EOS0_.exit63.thread

_ZN7rocksdb6StatusC2EOS0_.exit63.thread:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.aw = load <4 x i8>, ptr %4, align 8, !tbaa !27
  store <4 x i8> %i.aw, ptr %0, align 8, !tbaa !27
  %i.ax = load i8, ptr %i.p, align 4, !tbaa !152, !range !81, !noundef !82
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ax, ptr %i.ay, align 4, !tbaa !153
  %i.az = load i8, ptr %i.s, align 1, !tbaa !27
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !154
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !85
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !85
  br label %_ZN7rocksdb6StatusD2Ev.exit177

bb.h:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.i:                                             ; preds = %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
end_hunk_1
