Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/queue?download=true
inline.NumInlined: 4059
inline.NumDeleted: 2113
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4node12_GLOBAL__N_113DataQueueImpl10get_readerEv:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.r, ptr %i.ab, align 8, !noalias !263
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !noalias !263
  %.not.i.i3.i.i.i.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i3.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i: ; preds = %bb.g
  store i32 2, ptr %i.q, align 4, !noalias !263
  br label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_113DataQueueImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ad = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4, !noalias !263 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.t, align 8, !noalias !263 ; 4 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i, null
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_113DataQueueImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 12 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !noalias !263
  %.not.i7.i.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i7.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.ae, align 4, !noalias !263 ; 2 uses
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.ae, align 4, !noalias !263
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ai = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4, !noalias !263
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.k, label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_113DataQueueImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  %i.ak = load ptr, ptr %.pre.i.i.i, align 8, !noalias !263
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !noalias !263
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i) #29, !noalias !263, !inline_history !253
  br label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_113DataQueueImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node12_GLOBAL__N_113DataQueueImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.k
  store ptr %i.o, ptr %i.t, align 8, !noalias !263
  store ptr %i.r, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.an, align 8
  br label %bb.x

bb.l:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !range !46, !noundef !47
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.x

bb.n:                                             ; preds = %bb.l
  store i8 1, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !noalias !264 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i10, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.aw = load atomic i32, ptr %i.av monotonic, align 8, !noalias !264
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.06.i.i.i.i.i8 = phi i32 [ %i.aw, %bb.o ], [ %i.ba, %bb.q ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i9 = icmp eq i32 %.06.i.i.i.i.i8, 0
  br i1 %.not.not.not.i.not.i.i.i.i9, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i10, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = add nsw i32 %.06.i.i.i.i.i8, 1
  %i.ay = cmpxchg weak ptr %i.av, i32 %.06.i.i.i.i.i8, i32 %i.ax acq_rel monotonic, align 8, !noalias !264 ; 2 uses
  %i.az = extractvalue { i32, i1 } %i.ay, 1
  %i.ba = extractvalue { i32, i1 } %i.ay, 0
  br i1 %i.az, label %_ZNSt23enable_shared_from_thisIN4node12_GLOBAL__N_113DataQueueImplEE16shared_from_thisEv.exit11, label %bb.p, !llvm.loop !26

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i10: ; preds = %bb.p, %bb.n
  tail call void @abort() #30, !noalias !264
  unreachable

_ZNSt23enable_shared_from_thisIN4node12_GLOBAL__N_113DataQueueImplEE16shared_from_thisEv.exit11: ; preds = %bb.q
  %i.bb = load ptr, ptr %i.ar, align 8, !noalias !264 ; 2 uses
  %i.bc = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #31, !noalias !265 ; 12 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 1, ptr %i.bd, align 8, !noalias !266
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 12 ; 3 uses
  store i32 1, ptr %i.be, align 4, !noalias !266
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN4node12_GLOBAL__N_128NonIdempotentDataQueueReaderESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bc, align 8, !noalias !266
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 3 uses
  store i64 0, ptr %i.bh, align 8, !noalias !266
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4node12_GLOBAL__N_128NonIdempotentDataQueueReaderE, i64 16), ptr %i.bf, align 8, !noalias !266
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4node12_GLOBAL__N_128NonIdempotentDataQueueReaderE, i64 112), ptr %i.bg, align 8, !noalias !266
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  store ptr %i.bb, ptr %i.bi, align 8, !noalias !266
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  store ptr %i.at, ptr %i.bj, align 8, !noalias !266
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.bk, i8 0, i64 18, i1 false), !noalias !266
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bm = load i8, ptr %i.bl, align 8, !range !46, !noalias !266, !noundef !47
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.r, label %bb.s, !prof !44

bb.r:                                             ; preds = %_ZNSt23enable_shared_from_thisIN4node12_GLOBAL__N_113DataQueueImplEE16shared_from_thisEv.exit11
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node12_GLOBAL__N_128NonIdempotentDataQueueReaderC1ESt10shared_ptrINS0_13DataQueueImplEEE20error_and_abort_args) #29, !noalias !266
  tail call void @abort() #30, !noalias !266
  unreachable

bb.s:                                             ; preds = %_ZNSt23enable_shared_from_thisIN4node12_GLOBAL__N_113DataQueueImplEE16shared_from_thisEv.exit11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr %i.bf, ptr %i.bo, align 8, !noalias !266
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !noalias !266
  %.not.i.i3.i.i.i.i.i.i12 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i3.i.i.i.i.i.i12, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i14, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i13

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i13: ; preds = %bb.s
  store i32 2, ptr %i.be, align 4, !noalias !266
  br label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_113DataQueueImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit28

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i14: ; preds = %bb.s
  %i.bq = atomicrmw volatile add ptr %i.be, i32 1 acq_rel, align 4, !noalias !266 ; 0 uses
  %.pre.i.i.i15 = load ptr, ptr %i.bh, align 8, !noalias !266 ; 4 uses
  %.not6.i.i.i.i.i.i.i16 = icmp eq ptr %.pre.i.i.i15, null
  br i1 %.not6.i.i.i.i.i.i.i16, label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_113DataQueueImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit28, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i14
  %i.br = getelementptr inbounds nuw i8, ptr %.pre.i.i.i15, i64 12 ; 3 uses
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !noalias !266
  %.not.i7.i.i.i.i.i.i.i17 = icmp eq i8 %i.bs, 0
  br i1 %.not.i7.i.i.i.i.i.i.i17, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = load i32, ptr %i.br, align 4, !noalias !266 ; 2 uses
  %i.bu = add nsw i32 %i.bt, -1
  store i32 %i.bu, ptr %i.br, align 4, !noalias !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18

bb.v:                                             ; preds = %bb.t
  %i.bv = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4, !noalias !266
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i.i.i19 = phi i32 [ %i.bt, %bb.u ], [ %i.bv, %bb.v ]
  %i.bw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i19, 1
  br i1 %i.bw, label %bb.w, label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_113DataQueueImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit28

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18
  %i.bx = load ptr, ptr %.pre.i.i.i15, align 8, !noalias !266
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !266
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i15) #29, !noalias !266, !inline_history !260
  br label %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_113DataQueueImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit28

_ZNSt12__shared_ptrIN4node12_GLOBAL__N_113DataQueueImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit28: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i13, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i14, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i18, %bb.w
  store ptr %i.bc, ptr %i.bh, align 8, !noalias !266
  store ptr %i.bf, ptr %0, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.ca, align 8
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_113DataQueueImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit28, %bb.m, %_ZNSt12__shared_ptrIN4node12_GLOBAL__N_113DataQueueImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i16 0, 258) i16 @_ZN4node12_GLOBAL__N_113DataQueueImpl6appendESt10unique_ptrINS_9DataQueue5EntryESt14default_deleteIS4_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !46, !noundef !47
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call { i64, i8 } %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #29
  %i.i = extractvalue { i64, i8 } %i.h, 1
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !46, !noundef !47
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %1, align 8                ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call { i64, i8 } %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #29 ; 2 uses
  %i.t = extractvalue { i64, i8 } %i.s, 0         ; 2 uses
  %i.u = extractvalue { i64, i8 } %i.s, 1
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZNOSt8optionalImE5valueEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #34
  unreachable

_ZNOSt8optionalImE5valueEv.exit:                  ; preds = %bb.e
  %i.w = load i8, ptr %i.l, align 8, !range !46, !noundef !47
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZNRSt8optionalImE5valueEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNOSt8optionalImE5valueEv.exit
  tail call void @_ZSt27__throw_bad_optional_accessv() #34
  unreachable

_ZNRSt8optionalImE5valueEv.exit:                  ; preds = %_ZNOSt8optionalImE5valueEv.exit
  %i.y = load i64, ptr %i.k, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load i8, ptr %i.z, align 8, !range !46, !noundef !47
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZNRSt8optionalImE5valueEv.exit5, label %_ZNRSt8optionalImE5valueEv.exit..thread_crit_edge

_ZNRSt8optionalImE5valueEv.exit..thread_crit_edge: ; preds = %_ZNRSt8optionalImE5valueEv.exit
  %.pre = add i64 %i.y, %i.t
  br label %.thread

_ZNRSt8optionalImE5valueEv.exit5:                 ; preds = %_ZNRSt8optionalImE5valueEv.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.y, %i.t                      ; 2 uses
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit, label %.thread

.thread:                                          ; preds = %_ZNRSt8optionalImE5valueEv.exit..thread_crit_edge, %_ZNRSt8optionalImE5valueEv.exit5
  %.pre-phi = phi i64 [ %.pre, %_ZNRSt8optionalImE5valueEv.exit..thread_crit_edge ], [ %i.ae, %_ZNRSt8optionalImE5valueEv.exit5 ]
  store i64 %.pre-phi, ptr %i.k, align 8
  br label %bb.h

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ag, align 8
  br label %bb.h

bb.h:                                             ; preds = %.thread, %.critedge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = load i64, ptr %1, align 8
  store i64 %i.al, ptr %i.ai, align 8
  store ptr null, ptr %1, align 8
  %i.am = load ptr, ptr %i.ah, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.ah, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

bb.j:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE9push_backEOS6_.exit: ; preds = %bb.j, %bb.i, %_ZNRSt8optionalImE5valueEv.exit5, %bb.b, %bb.a
  %.sroa.415.1 = phi i16 [ 0, %bb.a ], [ 256, %_ZNRSt8optionalImE5valueEv.exit5 ], [ 256, %bb.b ], [ 257, %bb.i ], [ 257, %bb.j ]
  ret i16 %.sroa.415.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4node12_GLOBAL__N_113DataQueueImpl3capEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) %0, i64 noundef %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !46, !noundef !47
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !46, !noundef !47
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZNRSt8optionalImE5valueEv.exit, label %3

_ZNRSt8optionalImE5valueEv.exit:                  ; preds = %.sink.split
  %2 = load i64, ptr %i.d, align 8
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %1)
  store i64 %.sroa.speculated, ptr %i.d, align 8
  br label %bb.b

3:                                                ; preds = %.sink.split
  store i64 %1, ptr %i.d, align 8
  store i8 1, ptr %i.e, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %3, %_ZNRSt8optionalImE5valueEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node12_GLOBAL__N_113DataQueueImpl5sliceEmSt8optionalImE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1, i64 noundef %2, i64 %3, i8 %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !46, !noundef !47
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load i8, ptr %i.d, align 8, !range !46
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %_ZNRSt8optionalImE5valueEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.o

_ZNRSt8optionalImE5valueEv.exit:                  ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %.sroa.speculated59 = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %2) ; 2 uses
  %i.i = trunc nuw i8 %4 to i1
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %3)
  %i.k = select i1 %i.i, i64 %i.j, i64 %i.h       ; 2 uses
  %i.l = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %.sroa.speculated59) ; 2 uses
  %.not.not = icmp ult i64 %2, %i.k
  br i1 %.not.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %_ZNRSt8optionalImE5valueEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.097 = phi i64 [ %.168.ph, %bb.j ], [ %.sroa.speculated59, %bb.c ] ; 5 uses
  %.06996 = phi i64 [ %.170.ph, %bb.j ], [ %i.l, %bb.c ] ; 4 uses
  %.sroa.035.095 = phi ptr [ %.sroa.035.1.ph, %bb.j ], [ null, %bb.c ] ; 12 uses
  %.sroa.032.094 = phi ptr [ %i.bv, %bb.j ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.17.093 = phi ptr [ %.sroa.17.1.ph, %bb.j ], [ null, %bb.c ] ; 6 uses
  %.sroa.9.092 = phi ptr [ %.sroa.9.1.ph, %bb.j ], [ null, %bb.c ] ; 4 uses
  %i.r = load ptr, ptr %.sroa.032.094, align 8    ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call { i64, i8 } %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #29 ; 2 uses
  %i.w = extractvalue { i64, i8 } %i.v, 0         ; 3 uses
  %i.x = extractvalue { i64, i8 } %i.v, 1
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZNOSt8optionalImE5valueEv.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  call void @_ZSt27__throw_bad_optional_accessv() #34
  unreachable

_ZNOSt8optionalImE5valueEv.exit:                  ; preds = %.lr.ph
  %i.z = icmp ugt i64 %.097, %i.w
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNOSt8optionalImE5valueEv.exit
  %i.aa = sub nuw i64 %.097, %i.w
  br label %bb.j

bb.f:                                             ; preds = %_ZNOSt8optionalImE5valueEv.exit
  %i.ab = sub nuw i64 %i.w, %.097                 ; 2 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.ab, i64 %.06996) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.ac = load ptr, ptr %.sroa.032.094, align 8   ; 2 uses
  %i.ad = add i64 %.sroa.speculated, %.097
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef %.097, i64 %i.ad, i8 1) #29
  %.not.i = icmp eq ptr %.sroa.9.092, %.sroa.17.093
  br i1 %.not.i, label %bb.g, label %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread

_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread: ; preds = %bb.f
  %i.ah = load i64, ptr %5, align 8
  store i64 %i.ah, ptr %.sroa.9.092, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.9.092, i64 8
  br label %_ZNSt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.aj = ptrtoint ptr %.sroa.17.093 to i64       ; 2 uses
  %i.ak = ptrtoint ptr %.sroa.035.095 to i64      ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 4 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775800
  br i1 %i.am, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #30
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.an = ashr exact i64 %i.al, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ao, i64 1152921504606846975)
  %i.ar = select i1 %i.ap, i64 1152921504606846975, i64 %i.aq ; 3 uses
  %.not.i.i26 = icmp ne i64 %i.ar, 0
  call void @llvm.assume(i1 %.not.i.i26)
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #31 ; 11 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al
  %i.av = load i64, ptr %5, align 8
  store i64 %i.av, ptr %i.au, align 8
  store ptr null, ptr %5, align 8
  %.not10.i.i.i.i = icmp eq ptr %.sroa.035.095, %.sroa.17.093
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.aw = add i64 %i.aj, -8
  %i.ax = sub i64 %i.aw, %i.ak                    ; 3 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader113, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ba = and i64 %i.ax, -8
  %i.bb = add i64 %i.ba, 8                        ; 2 uses
  %i.bc = getelementptr i8, ptr %i.at, i64 %i.bb
  %i.bd = getelementptr i8, ptr %.sroa.035.095, i64 %i.bb
  %bound0 = icmp ult ptr %i.at, %i.bd
  %bound1 = icmp ult ptr %.sroa.035.095, %i.bc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader113, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.az, 4611686018427387900     ; 3 uses
  %i.be = shl i64 %n.vec, 3                       ; 2 uses
  %i.bf = getelementptr i8, ptr %i.at, i64 %i.be  ; 2 uses
  %i.bg = getelementptr i8, ptr %.sroa.035.095, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.at, i64 %i.bh ; 2 uses
  %next.gep110 = getelementptr i8, ptr %.sroa.035.095, i64 %i.bh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.bi = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep110, align 8, !alias.scope !282
  %wide.load111 = load <2 x i64>, ptr %i.bi, align 8, !alias.scope !282
  %i.bj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !283, !noalias !284
  store <2 x i64> %wide.load111, ptr %i.bj, align 8, !alias.scope !283, !noalias !284
  %i.bk = getelementptr i8, ptr %next.gep110, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep110, align 8, !alias.scope !282
  store <2 x ptr> splat (ptr null), ptr %i.bk, align 8, !alias.scope !282
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !273

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader113

.lr.ph.i.i.i.i.preheader113:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i.i.i.i.preheader ], [ %i.bf, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %.sroa.035.095, %vector.memcheck ], [ %.sroa.035.095, %.lr.ph.i.i.i.i.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader113, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader113 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader113 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.bm = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !281
  store i64 %i.bm, ptr %.012.i.i.i.i, align 8, !alias.scope !280
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !281
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bn, %.sroa.17.093
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !274

_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.at, %_ZNKSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.bf, %middle.block ], [ %i.bo, %.lr.ph.i.i.i.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %.sroa.035.095, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.035.095, i64 noundef %i.al) #32
  br label %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ar ; 2 uses
  %.pr = load ptr, ptr %5, align 8                ; 3 uses
  %.not.i24 = icmp eq ptr %.pr, null
  br i1 %.not.i24, label %_ZNSt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4node9DataQueue5EntryEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4node9DataQueue5EntryEEclEPS2_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit
end_hunk_0
