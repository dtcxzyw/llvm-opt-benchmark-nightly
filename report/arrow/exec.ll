inline.NumInlined: 3475
inline.NumDeleted: 1689
begin_hunk_0_@_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutorD2Ev:bb.a

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutorD0Ev(ptr noundef nonnull align 8 dereferenceable(200) initializes((0, 8)) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutorD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 200) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEE4InitEPNS0_13KernelContextENS0_14KernelInitArgsE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(80) initializes((8, 24)) %1, ptr noundef %2, ptr nofree noundef readonly byval(%"struct.arrow::compute::KernelInitArgs") align 8 captures(none) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Result.319", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !616
  %i.b = load ptr, ptr %3, align 8, !tbaa !626    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.b, ptr %i.c, align 8, !tbaa !631
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !632
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !635, !nonnull !133, !align !595
  call void @_ZNK5arrow7compute10OutputType7ResolveEPNS0_13KernelContextERKSt6vectorINS_10TypeHolderESaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.319") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.h = load ptr, ptr %4, align 8, !tbaa !121
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.b, !prof !124

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !121
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultINS_10TypeHolderEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.j

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70, !noalias !636
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load <2 x ptr>, ptr %i.k, align 8, !tbaa !399, !noalias !636
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.p, ptr %i.o, align 8, !tbaa !399
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70   ; 8 uses
  store ptr %i.n, ptr %i.q, align 8, !tbaa !70
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !84
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !641
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27, !inline_history !641
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !69

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #27
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.f, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !642
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.b, %_ZN5arrow10TypeHolderD2Ev.exit
  %i.ah = load ptr, ptr %4, align 8, !tbaa !121   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i, !prof !124

bb.k:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i8, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.al, align 8, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !84
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27, !inline_history !645
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27, !inline_history !645
  br label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i

bb.n:                                             ; preds = %bb.l
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.o ], [ %i.ay, %bb.p ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.az, label %bb.q, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, !prof !69

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #27
  br label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i

_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.m, %bb.k
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !121  ; 2 uses
  %.not.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_10TypeHolderEED2Ev.exit, label %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i, !prof !195

_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ba = phi ptr [ %.pr.i, %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i ], [ %i.ah, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !126, !range !132, !noundef !133
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN5arrow6ResultINS_10TypeHolderEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #27
  br label %_ZN5arrow6ResultINS_10TypeHolderEED2Ev.exit

_ZN5arrow6ResultINS_10TypeHolderEED2Ev.exit:      ; preds = %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_10TypeHolderEE7DestroyEv.exit.thread.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor7ExecuteERKNS0_9ExecBatchEPNS1_12ExecListenerE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %4 = alloca %"struct.arrow::compute::ExecSpan", align 8 ; 14 uses
  %5 = alloca %"struct.arrow::compute::ExecResult", align 16 ; 14 uses
  %6 = alloca %"class.arrow::Result.368", align 8 ; 21 uses
  %7 = alloca %"class.std::shared_ptr.35", align 16 ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %11 = alloca %"class.std::shared_ptr.35", align 16 ; 6 uses
  %12 = alloca %"class.std::shared_ptr.35", align 16 ; 13 uses
  %13 = alloca %"struct.arrow::compute::ExecSpan", align 8 ; 14 uses
  %14 = alloca %"struct.arrow::compute::ExecResult", align 8 ; 17 uses
  %15 = alloca %"class.arrow::Result.368", align 8 ; 13 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %17 = alloca %"class.std::shared_ptr.35", align 8 ; 6 uses
  %18 = alloca %"class.arrow::Result.368", align 8 ; 19 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %21 = alloca %"class.std::shared_ptr.35", align 8 ; 6 uses
  %22 = alloca %"struct.arrow::compute::ExecValue", align 8 ; 15 uses
  %23 = alloca %"struct.arrow::DataTypeLayout", align 8 ; 6 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %25 = alloca %"class.arrow::Result.109", align 8 ; 13 uses
  %26 = alloca %"class.std::shared_ptr.57", align 8 ; 9 uses
  %27 = alloca %"class.std::shared_ptr.60", align 16 ; 6 uses
  %28 = alloca %"class.std::shared_ptr.35", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %.val29 = load ptr, ptr %i.b, align 8, !tbaa !616
  %.val29.val = load ptr, ptr %.val29, align 8, !tbaa !646
  %i.c = getelementptr inbounds nuw i8, ptr %.val29.val, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !423
  call void @_ZN5arrow7compute6detail16ExecSpanIterator4InitERKNS0_9ExecBatchElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %24, ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %i.d, i1 noundef zeroext true)
  %i.e = load ptr, ptr %24, align 8, !tbaa !121   ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.a, label %bb.iv

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !653, !noalias !650 ; 3 uses
  %.not.i35 = icmp eq ptr %i.k, null
  br i1 %.not.i35, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.l = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !660, !noalias !661 ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !70, !alias.scope !661
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.q = load atomic i32, ptr %i.p monotonic, align 8, !noalias !661
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.d ], [ %i.u, %bb.f ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.s = cmpxchg weak ptr %i.p, i32 %.06.i.i.i.i.i.i.i, i32 %i.r acq_rel monotonic, align 8, !noalias !661 ; 2 uses
  %i.t = extractvalue { i32, i1 } %i.s, 1
  %i.u = extractvalue { i32, i1 } %i.s, 0
  br i1 %i.t, label %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i, label %bb.e, !llvm.loop !662

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.c
  %i.v = call ptr @__cxa_allocate_exception(i64 8) #27, !noalias !661 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.v, align 8, !tbaa !63, !noalias !661
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #28, !noalias !661
  unreachable

_ZNK5arrow8DataType12GetSharedPtrEv.exit.i:       ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !663, !noalias !661
  store ptr %i.x, ptr %26, align 8, !tbaa !289, !alias.scope !661
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false), !alias.scope !650
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK5arrow8DataType12GetSharedPtrEv.exit.i
  %.val = load ptr, ptr %i.b, align 8, !tbaa !616
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !646
  %i.y = load ptr, ptr %.val.val, align 8, !tbaa !417
  invoke void @_ZN5arrow15MakeArrayOfNullERKSt10shared_ptrINS_8DataTypeEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.109") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %26, i64 noundef 0, ptr noundef %i.y)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !70  ; 8 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ab, align 8, !tbaa !82
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !84
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #27, !inline_history !581
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #27, !inline_history !581
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ae, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #27
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  %i.aq = load ptr, ptr %25, align 8, !tbaa !121
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.s, label %bb.p, !prof !124

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !121
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %common.resume

bb.r:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.au = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ax = load <2 x ptr>, ptr %i.au, align 8, !tbaa !71, !noalias !670
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !118, !noalias !670 ; 2 uses
  store ptr null, ptr %i.aw, align 8, !tbaa !70, !noalias !670
  store <2 x ptr> %i.ax, ptr %27, align 16, !tbaa !71, !alias.scope !670
  store ptr null, ptr %i.au, align 8, !tbaa !118, !noalias !670
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !70 ; 2 uses
  %i.bd = load <2 x ptr>, ptr %i.az, align 8, !tbaa !71
  store <2 x ptr> %i.bd, ptr %28, align 16, !tbaa !71
  %.not.i.i.i36 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i36, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !3
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.be, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

bb.v:                                             ; preds = %bb.t
  %i.bi = atomicrmw volatile add ptr %i.be, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit: ; preds = %bb.s, %bb.u, %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 90
  %.val30 = load i8, ptr %i.bj, align 2, !tbaa !251, !range !132, !noundef !133
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor10EmitResultESt10shared_ptrINS_9ArrayDataEEPNS1_12ExecListenerE(ptr dead_on_unwind noalias nonnull writable align 8 %0, i8 %.val30, ptr noundef %28, ptr noundef %3)
          to label %bb.w unwind label %bb.aj
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor7ExecuteERKNS0_9ExecBatchEPNS1_12ExecListenerE:_ZN5arrow6StatusD2Ev.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !84
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !63
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #27, !inline_history !134
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !63
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #27, !inline_history !134
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.af:                                            ; preds = %bb.ad
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i42 = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i42, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43

bb.ah:                                            ; preds = %bb.af
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43: ; preds = %bb.ah, %bb.ag
  %.0.i.i.i.i44 = phi i32 [ %i.ce, %bb.ag ], [ %i.co, %bb.ah ]
  %i.cp = icmp eq i32 %.0.i.i.i.i44, 1
  br i1 %i.cp, label %bb.ai, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.ai:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #27
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i43, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.aj:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #27
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %27) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.as

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.p, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cr = load ptr, ptr %25, align 8, !tbaa !121  ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.ak, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !124

bb.ak:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !70 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
  br i1 %i.cx, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.cv, align 8, !tbaa !82
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !84
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !63
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #27, !inline_history !194
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !63
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #27, !inline_history !194
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.an:                                            ; preds = %bb.al
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !72
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dh = add nsw i32 %i.cy, -1
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.di = atomicrmw volatile add ptr %i.cv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cy, %bb.ao ], [ %i.di, %bb.ap ]
  %i.dj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dj, label %bb.aq, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !69

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.aq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.am, %bb.ak
  %.pr.i = load ptr, ptr %25, align 8, !tbaa !121 ; 2 uses
  %.not.i.i45 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i45, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !195

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6StatusC2ERKS0_.exit
  %i.dk = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.cr, %_ZN5arrow6StatusC2ERKS0_.exit ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !126, !range !132, !noundef !133
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %25) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  br label %bb.iv

bb.as:                                            ; preds = %bb.aj, %bb.r
  %.pn24 = phi { ptr, i32 } [ %i.at, %bb.r ], [ %i.cq, %bb.aj ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  br label %common.resume

bb.at:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27, !noalias !671
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !674, !noalias !671 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !63, !noalias !671
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !671
  call void %i.ds(ptr dead_on_unwind nonnull writable sret(%"struct.arrow::DataTypeLayout") align 8 %23, ptr noundef nonnull align 8 dereferenceable(72) %i.dp), !noalias !671, !inline_history !675
  %i.dt = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !676, !noalias !671
  %i.dv = load ptr, ptr %23, align 8, !tbaa !679, !noalias !671 ; 3 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64               ; 2 uses
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = lshr exact i64 %i.dy, 4
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i32 %i.ea, ptr %i.eb, align 8, !tbaa !680, !noalias !671
  %.not.i.i.i.i.i46 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i46, label %_ZN5arrow14DataTypeLayoutD2Ev.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ec = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !681, !noalias !671
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = sub i64 %i.ee, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ef) #31, !noalias !671
  br label %_ZN5arrow14DataTypeLayoutD2Ev.exit.i

_ZN5arrow14DataTypeLayoutD2Ev.exit.i:             ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27, !noalias !671
  %i.eg = load ptr, ptr %i.do, align 8, !tbaa !674, !noalias !671
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !295, !noalias !671 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  store i8 0, ptr %i.ej, align 4, !tbaa !682, !noalias !671
  %.not.i47 = icmp eq i32 %i.ei, 0
  br i1 %.not.i47, label %bb.be, label %bb.av

bb.av:                                            ; preds = %_ZN5arrow14DataTypeLayoutD2Ev.exit.i
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !631, !noalias !671
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 84
  %i.en = load i32, ptr %i.em, align 4, !tbaa !683, !noalias !671
  switch i32 %i.en, label %bb.be [
    i32 1, label %bb.aw
    i32 0, label %bb.ax
    i32 3, label %bb.bd
  ]

bb.aw:                                            ; preds = %bb.av
  store i8 1, ptr %i.ej, align 4, !tbaa !682, !noalias !671
  br label %bb.be

bb.ax:                                            ; preds = %bb.av
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store i8 1, ptr %i.eo, align 8, !tbaa !694, !noalias !671
  %i.ep = load ptr, ptr %2, align 8, !tbaa !75, !noalias !671 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !75, !noalias !671 ; 2 uses
  %i.es = icmp eq ptr %i.ep, %i.er
  br i1 %i.es, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ax
  %i.et = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.ev = getelementptr inbounds nuw i8, ptr %22, i64 128 ; 2 uses
  %.phi.trans.insert.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %22, i64 104 ; 2 uses
  %.phi.trans.insert1.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %22, i64 112
  %i.ew = getelementptr inbounds nuw i8, ptr %22, i64 120
  br label %bb.ay

._crit_edge.loopexit.i:                           ; preds = %29
  %i.ex = xor i8 %30, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ax
  %i.ey = phi i8 [ %i.ex, %._crit_edge.loopexit.i ], [ 0, %bb.ax ] ; 2 uses
  store i8 %i.ey, ptr %i.ej, align 4, !tbaa !682, !noalias !671
  br label %bb.be

bb.ay:                                            ; preds = %29, %.lr.ph.i
  %.sroa.014.018.i = phi ptr [ %i.ep, %.lr.ph.i ], [ %31, %29 ] ; 3 uses
  %.val10.i = load ptr, ptr %.sroa.014.018.i, align 8, !noalias !671 ; 2 uses
  %i.ez = getelementptr i8, ptr %.sroa.014.018.i, i64 16
  %.val11.i = load i8, ptr %i.ez, align 8, !tbaa !76, !noalias !671
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27, !noalias !671
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %22, i8 0, i64 16, i1 false), !noalias !671
  store i64 -1, ptr %i.et, align 8, !tbaa !311, !noalias !671
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.eu, i8 0, i64 112, i1 false), !noalias !671
  switch i8 %.val11.i, label %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.thread.i [
    i8 2, label %_ZNK5arrow5Datum5arrayEv.exit.i.i
    i8 1, label %.thread12.i.i
  ]

_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.thread.i: ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27, !noalias !671
  br label %29

_ZNK5arrow5Datum5arrayEv.exit.i.i:                ; preds = %bb.ay
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(136) %22, ptr noundef nonnull align 8 dereferenceable(120) %.val10.i)
          to label %bb.ba unwind label %bb.az, !noalias !671

common.resume:                                    ; preds = %bb.as, %bb.q, %_ZN5arrow7compute8ExecSpanD2Ev.exit, %bb.fe, %bb.az
  %common.resume.op = phi { ptr, i32 } [ %i.fa, %bb.az ], [ %.pn51.pn.pn.i, %bb.fe ], [ %.pn44.pn.pn.i, %_ZN5arrow7compute8ExecSpanD2Ev.exit ], [ %i.as, %bb.q ], [ %.pn24, %bb.as ]
  resume { ptr, i32 } %common.resume.op

bb.az:                                            ; preds = %_ZNK5arrow5Datum5arrayEv.exit.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute9ExecValueD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %22) #27, !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27, !noalias !671
  br label %common.resume

.thread12.i.i:                                    ; preds = %bb.ay
  store ptr %.val10.i, ptr %i.ev, align 8, !tbaa !264, !noalias !671
  %i.fb = call fastcc noundef i32 @_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS0_9ExecValueE(ptr noundef nonnull align 8 dereferenceable(136) %22), !noalias !671
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i

bb.ba:                                            ; preds = %_ZNK5arrow5Datum5arrayEv.exit.i.i
  store ptr null, ptr %i.ev, align 8, !tbaa !264, !noalias !671
  %.pre.pre.i.i = load ptr, ptr %.phi.trans.insert.phi.trans.insert.i.i, align 8, !tbaa !281, !noalias !671 ; 3 uses
  %.pre2.pre.i.i = load ptr, ptr %.phi.trans.insert1.phi.trans.insert.i.i, align 8, !tbaa !282, !noalias !671 ; 2 uses
  %i.fc = call fastcc noundef i32 @_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS0_9ExecValueE(ptr noundef nonnull align 8 dereferenceable(136) %22), !noalias !671 ; 2 uses
  %.not.i.i12.i.i.i.i = icmp eq ptr %.pre.pre.i.i, %.pre2.pre.i.i
  br i1 %.not.i.i12.i.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ba, %.noexc.i.i.i.i
  %.0.i.i3.i.i.i.i = phi ptr [ %i.fd, %.noexc.i.i.i.i ], [ %.pre.pre.i.i, %bb.ba ] ; 2 uses
  invoke void @_ZSt8_DestroyIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i.i3.i.i.i.i)
          to label %.noexc.i.i.i.i unwind label %bb.bb, !noalias !671, !inline_history !283

.noexc.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.fd, %.pre2.pre.i.i
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !284

bb.bb:                                            ; preds = %.lr.ph.i.i.i.i
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #30, !noalias !671, !inline_history !285
  unreachable

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.phi.trans.insert.i.i, align 8, !tbaa !281, !noalias !671
  br label %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i, %bb.ba
  %i.fg = phi ptr [ %.pre.i.i.i.i, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.loopexit.i.i.i.i ], [ %.pre.pre.i.i, %bb.ba ] ; 3 uses
  %.not.i.i.i.i.i.i49 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i.i.i49, label %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i
  %i.fh = load ptr, ptr %i.ew, align 8, !tbaa !286, !noalias !671
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.fg to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fk) #31, !noalias !671, !inline_history !287
  br label %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i

_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i: ; preds = %bb.bc, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i, %.thread12.i.i
  %.01118.i.i = phi i32 [ %i.fc, %bb.bc ], [ %i.fc, %_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev.exit.i.i.i.i ], [ %i.fb, %.thread12.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27, !noalias !671
  %i.fl = icmp eq i32 %.01118.i.i, 1
  %i.fm = load i8, ptr %i.eo, align 8, !tbaa !694, !range !132, !noalias !671, !noundef !133
  %spec.select19.i = select i1 %i.fl, i8 %i.fm, i8 0
  br label %29

29:                                               ; preds = %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i, %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.thread.i
  %30 = phi i8 [ 0, %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.thread.i ], [ %spec.select19.i, %_ZN5arrow7compute6detail12_GLOBAL__N_118NullGeneralization3GetERKNS_5DatumE.exit.i ] ; 2 uses
  store i8 %30, ptr %i.eo, align 8, !tbaa !694, !noalias !671
  %31 = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i, i64 24 ; 2 uses
  %32 = icmp eq ptr %31, %i.er
  br i1 %32, label %._crit_edge.loopexit.i, label %bb.ay

bb.bd:                                            ; preds = %bb.av
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i8 1, ptr %i.fn, align 8, !tbaa !694, !noalias !671
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %._crit_edge.i, %bb.aw, %bb.av, %_ZN5arrow14DataTypeLayoutD2Ev.exit.i
  %i.fo = phi i8 [ 0, %bb.av ], [ 1, %bb.aw ], [ 0, %bb.bd ], [ %i.ey, %._crit_edge.i ], [ 0, %_ZN5arrow14DataTypeLayoutD2Ev.exit.i ]
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !631, !noalias !671
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 88
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !696, !noalias !671
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !697, !noalias !671 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !698, !noalias !671
  %.not.i.i.i48 = icmp eq ptr %i.fx, %i.fv
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %bb.bf
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !698, !noalias !671
  br label %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit.i

_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12_GLOBAL__N_119BufferPreallocationES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.bf
  %i.fy = load ptr, ptr %i.do, align 8, !tbaa !674, !noalias !671
  call fastcc void @_ZN5arrow7compute12_GLOBAL__N_122ComputeDataPreallocateERKNS_8DataTypeEPSt6vectorINS1_19BufferPreallocationESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(72) %i.fy, ptr noundef %i.fu), !noalias !671
  %.pre.i = load i8, ptr %i.ej, align 4, !tbaa !682, !range !132, !noalias !671
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit.i, %bb.be
  %i.fz = phi i8 [ %.pre.i, %_ZNSt6vectorIN5arrow7compute12_GLOBAL__N_119BufferPreallocationESaIS3_EE5clearEv.exit.i ], [ %i.fo, %bb.be ]
  %i.ga = trunc nuw i8 %i.fz to i1
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gc = load i8, ptr %i.gb, align 8, !range !132, !noalias !671
  %i.gd = trunc nuw i8 %i.gc to i1
  %or.cond.i = select i1 %i.ga, i1 true, i1 %i.gd
  br i1 %or.cond.i, label %bb.bh, label %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val12.i = load ptr, ptr %i.ge, align 8, !tbaa !697, !noalias !671
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val13.i = load ptr, ptr %i.gf, align 8, !tbaa !698, !noalias !671
  %i.gg = ptrtoint ptr %.val13.i to i64
  %i.gh = ptrtoint ptr %.val12.i to i64
  %i.gi = sub i64 %i.gg, %i.gh
  %i.gj = ashr exact i64 %i.gi, 3
  %i.gk = load i32, ptr %i.eb, align 8, !tbaa !680, !noalias !671
  %i.gl = add nsw i32 %i.gk, -1
  %i.gm = sext i32 %i.gl to i64
  %i.gn = icmp eq i64 %i.gj, %i.gm
  br i1 %i.gn, label %bb.bi, label %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i

bb.bi:                                            ; preds = %bb.bh
  %switch.tableidx = add i32 %i.ei, -25           ; 2 uses
  %i.go = icmp ult i32 %switch.tableidx, 18
  %switch.shifted = lshr i32 207023, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond = select i1 %i.go, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i, label %_ZN5arrow9is_nestedENS_4Type4typeE.exit.i

_ZN5arrow9is_nestedENS_4Type4typeE.exit.i:        ; preds = %bb.bi
  %i.gp = icmp ne i32 %i.ei, 29
  %i.gq = zext i1 %i.gp to i8
  br label %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i

_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i: ; preds = %bb.bi, %_ZN5arrow9is_nestedENS_4Type4typeE.exit.i, %bb.bh, %bb.bg
  %i.gr = phi i8 [ %i.gq, %_ZN5arrow9is_nestedENS_4Type4typeE.exit.i ], [ 0, %bb.bh ], [ 0, %bb.bg ], [ 0, %bb.bi ] ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 81
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !699, !noalias !671
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !616, !noalias !671
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !646, !noalias !671
  %i.gt = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 32
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !424, !range !132, !noalias !671, !noundef !133
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i
  %i.gw = load ptr, ptr %i.fp, align 8, !tbaa !631, !noalias !671
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 80
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !700, !range !132, !noalias !671, !noundef !133
  %i.gz = trunc nuw i8 %i.gy to i1
  %spec.select.i = select i1 %i.gz, i8 %i.gr, i8 0
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i, %bb.bj
  %i.ha = phi i8 [ %spec.select.i, %bb.bj ], [ 0, %_ZN5arrow9is_nestedENS_4Type4typeE.exit.thread.i ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 82
  store i8 %i.ha, ptr %i.hb, align 2, !tbaa !701, !noalias !671
  store ptr null, ptr %0, align 8, !tbaa !121
  %i.hc = trunc nuw i8 %i.gr to i1
  br i1 %i.hc, label %bb.bl, label %bb.ff

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27, !noalias !702
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, i8 0, i64 16, i1 false), !noalias !702
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27, !noalias !702
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, i8 0, i64 32, i1 false), !noalias !702
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27, !noalias !702
  %i.hd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %14, i8 0, i64 16, i1 false), !noalias !702
  store i64 -1, ptr %i.hd, align 8, !tbaa !311, !noalias !702
  %i.he = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %i.he, i8 0, i64 105, i1 false), !noalias !702
  %i.hf = getelementptr inbounds nuw i8, ptr %14, i64 128
  %i.hg = trunc nuw i8 %i.ha to i1
  br i1 %i.hg, label %bb.bm, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bl
  %i.hh = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 90
  br label %bb.cp

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27, !noalias !702
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !254, !noalias !702
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_118KernelExecutorImplINS0_12ScalarKernelEE13PrepareOutputEl(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef nonnull align 8 dereferenceable(200) %1, i64 noundef %i.hn)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  %i.ho = load ptr, ptr %15, align 8, !tbaa !121, !noalias !702
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.bo, !prof !124

bb.bo:                                            ; preds = %bb.bn
  store ptr null, ptr %0, align 8, !tbaa !121, !alias.scope !702
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.critedge.i unwind label %bb.br

bb.bp:                                            ; preds = %bb.cp
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.bq:                                            ; preds = %bb.bm
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.br:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.bo
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bn
  %i.ht = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !153, !noalias !705 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !70, !noalias !705 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, i8 0, i64 16, i1 false), !noalias !702
  store ptr %i.hu, ptr %12, align 16, !tbaa !710, !noalias !702
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !70, !noalias !702
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %14, ptr noundef nonnull align 8 dereferenceable(120) %i.hu)
          to label %bb.bs unwind label %bb.br

bb.bs:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  store i64 0, ptr %i.he, align 8, !tbaa !292, !noalias !702
  %i.hy = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hz = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 176
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit66.i, %bb.bs
  %.028.i = phi i64 [ 0, %bb.bs ], [ %i.im, %_ZN5arrow6StatusD2Ev.exit66.i ]
  %i.ib = invoke noundef zeroext i1 @_ZN5arrow7compute6detail16ExecSpanIterator4NextEPNS0_8ExecSpanE(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull %13)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.ib, label %_ZN5arrow9ArraySpan8SetSliceEll.exit.i, label %bb.bx

_ZN5arrow9ArraySpan8SetSliceEll.exit.i:           ; preds = %bb.bu
  %i.ic = load i64, ptr %13, align 8, !tbaa !275, !noalias !702 ; 2 uses
  store i64 %.028.i, ptr %i.he, align 8, !tbaa !292, !noalias !702
  store i64 %i.ic, ptr %i.hy, align 8, !tbaa !293, !noalias !702
  %i.id = load ptr, ptr %14, align 8, !tbaa !294, !noalias !702
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 40
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !295
  %i.ig = icmp eq i32 %i.if, 0
  %i.ih = load ptr, ptr %i.hz, align 8, !noalias !702
  %.not.i.i58 = icmp ne ptr %i.ih, null
  %..i = sext i1 %.not.i.i58 to i64
  %.sink.i = select i1 %i.ig, i64 %i.ic, i64 %..i
  store i64 %.sink.i, ptr %i.hd, align 8, !tbaa !311, !noalias !702
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27, !noalias !702
  invoke fastcc void @_ZN5arrow7compute6detail12_GLOBAL__N_114ScalarExecutor17ExecuteSingleSpanERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable align 8 %16, ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %14)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.bw

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %_ZN5arrow9ArraySpan8SetSliceEll.exit.i
end_hunk_1
