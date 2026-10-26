Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/lock_request?download=true
inline.NumInlined: 360
inline.NumDeleted: 196
begin_hunk_0_@_ZN4toku12lock_request22add_conflicts_to_waitsEPNS_9txnid_setEPSt6vectorINS_14lock_wait_infoESaIS4_EE:bb.a

_ZN4toku14lock_wait_infoD2Ev.exit:                ; preds = %_ZNSt6vectorIN4toku14lock_wait_infoESaIS1_EE9push_backEOS1_.exit.thread, %_ZNSt6vectorIN4toku14lock_wait_infoESaIS1_EE9push_backEOS1_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.u = call noundef i32 @_ZNK4toku9txnid_set4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %_ZN4toku14lock_wait_infoD2Ev.exit
  ret void

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i10, label %_ZN4toku14lock_wait_infoD2Ev.exit11, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !82
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #23
  br label %_ZN4toku14lock_wait_infoD2Ev.exit11

_ZN4toku14lock_wait_infoD2Ev.exit11:              ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.v

.lr.ph:                                           ; preds = %_ZN4toku14lock_wait_infoD2Ev.exit, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.015 = phi i32 [ %i.bd, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ 0, %_ZN4toku14lock_wait_infoD2Ev.exit ] ; 2 uses
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !139 ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -24 ; 2 uses
  %i.ae = call noundef i64 @_ZNK4toku9txnid_set3getEj(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %.015) ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !140 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !82
  %.not.i.i12 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !50
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !140
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !81 ; 4 uses
  %i.al = ptrtoint ptr %i.ag to i64
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 5 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.h, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #24
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i.i13 = icmp ne i64 %i.at, 0
  call void @llvm.assume(i1 %.not.i.i.i.i13)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #25 ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.an ; 2 uses
  store i64 %i.ae, ptr %i.aw, align 8, !tbaa !50
  %i.ax = icmp sgt i64 %i.an, 0
  br i1 %i.ax, label %bb.i, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.az = load ptr, ptr %i.ah, align 8, !tbaa !82
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.bb) #23
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.av, ptr %i.ad, align 8, !tbaa !81
  store ptr %i.ay, ptr %i.af, align 8, !tbaa !140
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.bc, ptr %i.ah, align 8, !tbaa !82
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %bb.f, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %i.bd = add nuw i32 %.015, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !131
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toku12lock_request23retry_all_lock_requestsEPNS_8locktreeEPFvPvPSt6vectorINS_14lock_wait_infoESaIS5_EEES3_PFvvE(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4toku8locktree21get_lock_request_infoEv(ptr noundef nonnull align 8 dereferenceable(400) %0) ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load atomic i8, ptr %i.b seq_cst, align 1, !range !53, !noundef !54
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 seq_cst, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 5 uses
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.g) #21 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !142
  %i.k = icmp eq i64 %i.f, %i.j
  br i1 %i.k, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 4 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !143, !range !53, !noundef !54
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %.preheader
  store i8 1, ptr %i.l, align 8, !tbaa !143
  %i.p = load atomic i64, ptr %i.e seq_cst, align 8
  store i64 %i.p, ptr %i.i, align 8, !tbaa !142
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #21 ; 0 uses
  tail call void @_ZN4toku12lock_request28retry_all_lock_requests_infoEPNS_20lt_lock_request_infoEPFvPvPSt6vectorINS_14lock_wait_infoESaIS5_EEES3_(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %2)
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void %3()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.r = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.g) #21 ; 0 uses
  store i8 0, ptr %i.l, align 8, !tbaa !143
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.t = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.s) #21 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.u = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.o, ptr noundef nonnull %i.g) ; 0 uses
  %i.v = load i8, ptr %i.l, align 8, !tbaa !143, !range !53, !noundef !54
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.e, label %._crit_edge, !llvm.loop !141

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.x = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.g) #21 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toku12lock_request28retry_all_lock_requests_infoEPNS_20lt_lock_request_infoEPFvPvPSt6vectorINS_14lock_wait_infoESaIS5_EEES3_(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Status", align 8   ; 4 uses
  %4 = alloca %"class.std::vector", align 8       ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !2
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_Z24toku_external_mutex_lockPSt10shared_ptrIN7rocksdb18TransactionDBMutexEE.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i: ; preds = %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.g) #23
  br label %_Z24toku_external_mutex_lockPSt10shared_ptrIN7rocksdb18TransactionDBMutexEE.exit

_Z24toku_external_mutex_lockPSt10shared_ptrIN7rocksdb18TransactionDBMutexEE.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %_Z24toku_external_mutex_lockPSt10shared_ptrIN7rocksdb18TransactionDBMutexEE.exit
  %.015 = phi i32 [ 0, %_Z24toku_external_mutex_lockPSt10shared_ptrIN7rocksdb18TransactionDBMutexEE.exit ], [ %spec.select, %bb.f ] ; 5 uses
  %i.k = load i8, ptr %0, align 8, !tbaa !52, !range !53, !noundef !54
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.h, align 8, !tbaa !73   ; 3 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %.critedge, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit: ; preds = %bb.c
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !34   ; 3 uses
  %i.p = zext i32 %i.m to i64
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !99
  %i.t = icmp ult i32 %.015, %i.s
  br i1 %i.t, label %tailrecurse.outer.i.i, label %.critedge

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread: ; preds = %bb.b
  %i.u = load i32, ptr %i.j, align 4, !tbaa !34
  %i.v = icmp ult i32 %.015, %i.u
  br i1 %i.v, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.i, label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit
  %.lcssa42 = phi i8 [ 0, %bb.c ], [ 1, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread ], [ 0, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit ]
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  invoke void %1(ptr noundef %2, ptr noundef nonnull %4)
          to label %._ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !74

._ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_.exit_crit_edge: ; preds = %bb.d
  %.pre = load i8, ptr %0, align 8, !tbaa !52, !range !53
  br label %_ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_.exit

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.i: ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.x = load i32, ptr %i.h, align 8, !tbaa !34
  %i.y = add i32 %i.x, %.015
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.z
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE20fetch_internal_arrayEjPS2_.exit.sink.split.i

tailrecurse.outer.i.i:                            ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit, %bb.e
  %.pre.i = phi i32 [ %.pre.pre.i, %bb.e ], [ %i.m, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit ]
  %.tr21.ph.i.i = phi i32 [ %i.ap, %bb.e ], [ %.015, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit ] ; 3 uses
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i, %tailrecurse.outer.i.i
  %i.ab = phi i32 [ %i.af, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i ], [ %.pre.i, %tailrecurse.outer.i.i ]
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.ac ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !73 ; 3 uses
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i: ; preds = %tailrecurse.i.i
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !99 ; 2 uses
  %i.al = icmp ult i32 %.tr21.ph.i.i, %i.ak
  br i1 %i.al, label %tailrecurse.i.i, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i: ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i, %tailrecurse.i.i
  %.0.i19.i.i = phi i32 [ %i.ak, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i.i ], [ 0, %tailrecurse.i.i ] ; 2 uses
  %i.am = icmp eq i32 %.tr21.ph.i.i, %.0.i19.i.i
  br i1 %i.am, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE20fetch_internal_arrayEjPS2_.exit.sink.split.i, label %bb.e

bb.e:                                             ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ao = xor i32 %.0.i19.i.i, -1
  %i.ap = add i32 %.tr21.ph.i.i, %i.ao
  %.pre.pre.i = load i32, ptr %i.an, align 4, !tbaa !73
  br label %tailrecurse.outer.i.i

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE20fetch_internal_arrayEjPS2_.exit.sink.split.i: ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.i
  %.sink.in.i = phi ptr [ %i.aa, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.i ], [ %i.ad, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread.i.i ]
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !56
  %i.aq = invoke noundef i32 @_ZN4toku12lock_request5retryEPSt6vectorINS_14lock_wait_infoESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(224) %.sink.i, ptr noundef nonnull %4)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE20fetch_internal_arrayEjPS2_.exit.sink.split.i
  %.not = icmp ne i32 %i.aq, 0
  %i.ar = zext i1 %.not to i32
  %spec.select = add i32 %.015, %i.ar
  br label %bb.b, !llvm.loop !144

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE20fetch_internal_arrayEjPS2_.exit.sink.split.i, %bb.d, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit22
  %lpad.loopexit.split-lp41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4toku14lock_wait_infoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %lpad.loopexit.split-lp41

_ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_.exit: ; preds = %._ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_.exit_crit_edge, %.critedge
  %i.as = phi i8 [ %.pre, %._ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_.exit_crit_edge ], [ %.lcssa42, %.critedge ]
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_.exit
  %i.au = load i32, ptr %i.j, align 4, !tbaa !34
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit22

bb.h:                                             ; preds = %_ZN4toku12lock_request12report_waitsEPSt6vectorINS_14lock_wait_infoESaIS2_EEPFvPvS5_ES6_.exit
  %i.av = load i32, ptr %i.h, align 8, !tbaa !73  ; 2 uses
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit22, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.ay = zext i32 %i.av to i64
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !99
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit22

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit22: ; preds = %bb.i, %bb.h, %bb.g
  %.0.i21 = phi i32 [ %i.au, %bb.g ], [ %i.bb, %bb.i ], [ 0, %bb.h ]
  %i.bc = icmp ne i32 %.0.i21, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = zext i1 %i.bc to i8
  store i8 %i.be, ptr %i.bd, align 8, !tbaa !145
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
          to label %_Z26toku_external_mutex_unlockPSt10shared_ptrIN7rocksdb18TransactionDBMutexEE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

_Z26toku_external_mutex_unlockPSt10shared_ptrIN7rocksdb18TransactionDBMutexEE.exit: ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit22
  %i.bj = load ptr, ptr %4, align 8, !tbaa !77    ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !78 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bj, %i.bl
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_Z26toku_external_mutex_unlockPSt10shared_ptrIN7rocksdb18TransactionDBMutexEE.exit, %_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i.i ], [ %i.bj, %_Z26toku_external_mutex_unlockPSt10shared_ptrIN7rocksdb18TransactionDBMutexEE.exit ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !81 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !82
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #23
  br label %_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bt, %i.bl
  br i1 %.not.i.i.i24, label %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4toku14lock_wait_infoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_Z26toku_external_mutex_unlockPSt10shared_ptrIN7rocksdb18TransactionDBMutexEE.exit
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.bj, %_Z26toku_external_mutex_unlockPSt10shared_ptrIN7rocksdb18TransactionDBMutexEE.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4toku14lock_wait_infoESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !83
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #23
  br label %_ZNSt6vectorIN4toku14lock_wait_infoESaIS1_EED2Ev.exit

_ZNSt6vectorIN4toku14lock_wait_infoESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4toku14lock_wait_infoES1_EvT_S3_RSaIT0_E.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK4toku12lock_request9get_extraEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE9insert_atERKS2_j(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !52, !range !53, !noundef !54
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !73   ; 3 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread23

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit: ; preds = %bb.b
  %.not29 = icmp eq i32 %2, 0
  br i1 %.not29, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit15, label %bb.m

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread23: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = zext i32 %i.e to i64
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !99
  %i.m = icmp ugt i32 %2, %i.l
  br i1 %i.m, label %bb.m, label %bb.c

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !34   ; 2 uses
  %i.p = icmp ugt i32 %2, %i.o
  br i1 %i.p, label %bb.m, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit15

bb.c:                                             ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.s = zext i32 %i.e to i64
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !99
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit15

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit15: ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread, %bb.c
  %.0.i14 = phi i32 [ %i.o, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.thread ], [ %i.v, %bb.c ], [ 0, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit ]
  %i.w = add i32 %.0.i14, 1
  tail call void @_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE23maybe_resize_or_convertEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %i.w)
  %i.x = load i8, ptr %0, align 8, !tbaa !52, !range !53, !noundef !54
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %.thread27

bb.d:                                             ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !34 ; 3 uses
  %.not = icmp eq i32 %2, %i.ab
  br i1 %.not, label %.thread26, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not12 = icmp eq i32 %2, 0
  br i1 %.not12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.z, align 8, !tbaa !34
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %.thread26

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ae = shl i32 %i.ab, 1
  %i.af = tail call i32 @llvm.umax.i32(i32 %i.ae, i32 4) ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %i.ah = mul nuw nsw i64 %i.ag, 24
  %i.ai = tail call noundef ptr @_Z12toku_xmallocm(i64 noundef %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 2 uses
  %i.al = load i32, ptr %i.z, align 8, !tbaa !34
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.am
  store i8 0, ptr %0, align 8, !tbaa !52
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !34
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.af, ptr %i.ao, align 4, !tbaa !100
  store i32 0, ptr %i.aa, align 4, !tbaa !34
  store i32 -1, ptr %i.z, align 8, !tbaa !73
  tail call void @_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE25rebuild_from_sorted_arrayEPNS_12omt_internal17subtree_templatedILb0EEEPKS2_j(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.z, ptr noundef %i.an, i32 noundef %i.ab)
  tail call void @_Z9toku_freePv(ptr noundef %i.ak)
  %.pre = load i8, ptr %0, align 8, !tbaa !52, !range !53
  %i.ap = trunc nuw i8 %.pre to i1
  br i1 %i.ap, label %.thread26, label %.thread27

.thread26:                                        ; preds = %bb.d, %bb.f, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !34
  %i.at = icmp eq i32 %2, %i.as
  %i.au = load ptr, ptr %1, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !34
  %i.ax = load i32, ptr %i.aq, align 8, !tbaa !34 ; 2 uses
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread26
  %i.ay = add i32 %i.ax, %2
  br label %bb.j

end_hunk_0
begin_hunk_1_@_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE23maybe_resize_or_convertEj:bb.a
  tail call void @_Z9toku_freePv(ptr noundef %i.bb)
  store i8 1, ptr %0, align 8, !tbaa !52
  store i32 %i.aw, ptr %i.ai, align 4, !tbaa !100
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0.i.i, ptr %i.bc, align 4, !tbaa !34
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !34
  store i32 0, ptr %i.z, align 8, !tbaa !34
  br label %_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE18maybe_resize_arrayEj.exit

_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE18maybe_resize_arrayEj.exit: ; preds = %bb.h, %bb.e, %bb.b, %_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE16convert_to_arrayEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE15insert_internalEPNS_12omt_internal17subtree_templatedILb0EEERKS2_jPS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %3, ptr noundef nonnull %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !73     ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %tailrecurse.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39
  %i.d = phi i32 [ %i.a, %.lr.ph.lr.ph ], [ %i.co, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39 ]
  %.tr42.ph52 = phi i32 [ %3, %.lr.ph.lr.ph ], [ %i.cm, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39 ] ; 2 uses
  %.tr40.ph51 = phi ptr [ %1, %.lr.ph.lr.ph ], [ %i.cn, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39 ]
  br label %bb.b

tailrecurse.outer._crit_edge:                     ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39, %tailrecurse, %bb.a
  %.tr40.lcssa = phi ptr [ %i.w, %tailrecurse ], [ %1, %bb.a ], [ %i.cn, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39 ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34   ; 3 uses
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.j = zext i32 %i.f to i64
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.j ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !99
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 -1, ptr %i.m, align 4, !tbaa !73
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 -1, ptr %i.n, align 8, !tbaa !73
  %i.o = load ptr, ptr %2, align 8, !tbaa !56
  store ptr %i.o, ptr %i.k, align 8, !tbaa !103
  store i32 %i.f, ptr %.tr40.lcssa, align 4, !tbaa !73
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %i.p = phi i32 [ %i.d, %.lr.ph ], [ %i.x, %tailrecurse ]
  %.tr4049 = phi ptr [ %.tr40.ph51, %.lr.ph ], [ %i.w, %tailrecurse ] ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.r = zext i32 %i.p to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !99
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 8, !tbaa !99
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !73   ; 4 uses
  %i.y = icmp eq i32 %i.x, -1                     ; 3 uses
  br i1 %i.y, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.aa = zext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !99
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.ad, %bb.c ], [ 0, %bb.b ]
  %.not = icmp ugt i32 %.tr42.ph52, %.0.i
  %i.ae = load ptr, ptr %4, align 8, !tbaa !102
  %i.af = icmp eq ptr %i.ae, null                 ; 2 uses
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit
  br i1 %i.af, label %bb.e, label %tailrecurse

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !34  ; 3 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.r ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !73 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, -1
  br i1 %i.ak, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = zext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !99
  %i.ap = add i32 %i.ao, 1
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.ap, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !73 ; 2 uses
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i
  %i.at = zext i32 %i.ar to i64
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !99
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit: ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i, %bb.g
  %.0.i11.i = phi i32 [ %i.aw, %bb.g ], [ 0, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i ] ; 2 uses
  %i.ax = add i32 %.0.i.i, 1
  %i.ay = add i32 %.0.i11.i, 2
  %i.az = lshr i32 %i.ay, 1
  %i.ba = icmp ult i32 %i.ax, %i.az
  %i.bb = add i32 %.0.i11.i, 1
  %i.bc = add i32 %.0.i.i, 2
  %i.bd = lshr i32 %i.bc, 1
  %i.be = icmp ult i32 %i.bb, %i.bd
  %i.bf = select i1 %i.ba, i1 true, i1 %i.be
  br i1 %i.bf, label %bb.h, label %tailrecurse

bb.h:                                             ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit
  store ptr %.tr4049, ptr %4, align 8, !tbaa !102
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.h, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit, %bb.d
  br i1 %i.y, label %tailrecurse.outer._crit_edge, label %bb.b

bb.i:                                             ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !34  ; 3 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.r ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !73 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, -1
  br i1 %i.bk, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = zext i32 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !99
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32: ; preds = %bb.k, %bb.j
  %.0.i.i33 = phi i32 [ %i.bo, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !73 ; 2 uses
  %i.br = icmp eq i32 %i.bq, -1
  br i1 %i.br, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37, label %bb.l

bb.l:                                             ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32
  %i.bs = zext i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !99
  %i.bw = add i32 %i.bv, 1
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37: ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32, %bb.l
  %.0.i11.i35 = phi i32 [ %i.bw, %bb.l ], [ 1, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.i32 ] ; 2 uses
  %i.bx = add i32 %.0.i.i33, 1
  %i.by = add i32 %.0.i11.i35, 2
  %i.bz = lshr i32 %i.by, 1
  %i.ca = icmp ult i32 %i.bx, %i.bz
  %i.cb = add i32 %.0.i11.i35, 1
  %i.cc = add i32 %.0.i.i33, 2
  %i.cd = lshr i32 %i.cc, 1
  %i.ce = icmp ult i32 %i.cb, %i.cd
  %i.cf = select i1 %i.ca, i1 true, i1 %i.ce
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37
  store ptr %.tr4049, ptr %4, align 8, !tbaa !102
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE19will_need_rebalanceERKNS_12omt_internal17subtree_templatedILb0EEEii.exit37, %bb.i
  br i1 %i.y, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.ch = zext i32 %i.x to i64
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !99
  %i.cl = xor i32 %i.ck, -1
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit39: ; preds = %bb.n, %bb.o
  %.0.i38 = phi i32 [ %i.cl, %bb.o ], [ -1, %bb.n ]
  %i.cm = add i32 %.0.i38, %.tr42.ph52
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !73 ; 2 uses
  %i.cp = icmp eq i32 %i.co, -1
  br i1 %i.cp, label %tailrecurse.outer._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE9rebalanceEPNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !73     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !73
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 8, !tbaa !52, !range !53, !noundef !54
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE16convert_to_arrayEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.a, -1
  br i1 %i.g, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.j = zext i32 %i.a to i64
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !99
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.i

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i = phi i32 [ 0, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.n = shl i32 %.0.i.i, 1
  %i.o = tail call i32 @llvm.umax.i32(i32 %i.n, i32 4) ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noundef ptr @_Z12toku_xmallocm(i64 noundef %i.q) ; 2 uses
  tail call void @_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE30fill_array_with_subtree_valuesEPS2_RKNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !34
  tail call void @_Z9toku_freePv(ptr noundef %i.t)
  store i8 1, ptr %0, align 8, !tbaa !52
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.o, ptr %i.u, align 4, !tbaa !100
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0.i.i, ptr %i.v, align 4, !tbaa !34
  store ptr %i.r, ptr %i.s, align 8, !tbaa !34
  store i32 0, ptr %i.b, align 8, !tbaa !34
  br label %_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE16convert_to_arrayEv.exit

bb.e:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !34   ; 2 uses
  %i.y = zext i32 %i.a to i64
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !99
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !100
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !34 ; 2 uses
  %i.ai = sub i32 %i.af, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.aj, 24
  %.not = icmp samesign ugt i64 %i.ad, %i.ak      ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = zext i32 %i.ah to i64
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.al
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.an = tail call noundef ptr @_Z12toku_xmallocm(i64 noundef %i.ad)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.014 = phi ptr [ %i.am, %bb.f ], [ %i.an, %bb.g ] ; 3 uses
  tail call void @_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE28fill_array_with_subtree_idxsEPjRKNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %.014, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.ao = load i32, ptr %i.aa, align 8, !tbaa !99
  tail call void @_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE25rebuild_subtree_from_idxsEPNS_12omt_internal17subtree_templatedILb0EEEPKjj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %.014, i32 noundef %i.ao)
  br i1 %.not, label %bb.i, label %_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE16convert_to_arrayEv.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Z9toku_freePv(ptr noundef nonnull %.014)
  br label %_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE16convert_to_arrayEv.exit

_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE16convert_to_arrayEv.exit: ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE4sizeEv.exit.i, %bb.b, %bb.h, %bb.i
  ret void
}

declare noundef ptr @_Z12toku_xmallocm(i64 noundef) local_unnamed_addr #1

declare void @_Z9toku_freePv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE30fill_array_with_subtree_valuesEPS2_RKNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !73     ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12
  %i.d = phi i32 [ %i.a, %.lr.ph ], [ %i.aa, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12 ]
  %.tr1416 = phi ptr [ %1, %.lr.ph ], [ %i.y, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12 ] ; 4 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.f = zext i32 %i.d to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  tail call void @_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE30fill_array_with_subtree_valuesEPS2_RKNS_12omt_internal17subtree_templatedILb0EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %.tr1416, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !103  ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !73   ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread, label %bb.c

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread: ; preds = %bb.b
  store ptr %i.i, ptr %.tr1416, align 8, !tbaa !56
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.m = zext i32 %i.j to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !99
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.tr1416, i64 %i.q
  store ptr %i.i, ptr %i.r, align 8, !tbaa !56
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.m
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !99
  %i.w = add i32 %i.v, 1
  %i.x = zext i32 %i.w to i64
  br label %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12

_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12: ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread, %bb.c
  %.0.i11 = phi i64 [ %i.x, %bb.c ], [ 1, %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit.thread ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.tr1416, i64 %.0.i11
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !73  ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %tailrecurse._crit_edge, label %bb.b

tailrecurse._crit_edge:                           ; preds = %_ZNK4toku3omtIPNS_12lock_requestES2_Lb0EE7nweightERKNS_12omt_internal17subtree_templatedILb0EEE.exit12, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE25rebuild_from_sorted_arrayEPNS_12omt_internal17subtree_templatedILb0EEEPKS2_j(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr19.lcssa = phi ptr [ %1, %bb.a ], [ %i.o, %tailrecurse ]
  store i32 -1, ptr %.tr19.lcssa, align 4, !tbaa !73
  ret void

tailrecurse:                                      ; preds = %.lr.ph, %tailrecurse
  %.tr2124 = phi i32 [ %3, %.lr.ph ], [ %i.s, %tailrecurse ] ; 3 uses
  %.tr2023 = phi ptr [ %2, %.lr.ph ], [ %i.r, %tailrecurse ] ; 3 uses
  %.tr1922 = phi ptr [ %1, %.lr.ph ], [ %i.o, %tailrecurse ]
  %i.d = lshr i32 %.tr2124, 1                     ; 3 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !34   ; 3 uses
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !34
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.h = zext i32 %i.e to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.h ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %.tr2124, ptr %i.j, align 8, !tbaa !99
  %i.k = zext nneg i32 %i.d to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.tr2023, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56
  store ptr %i.m, ptr %i.i, align 8, !tbaa !103
  store i32 %i.e, ptr %.tr1922, align 4, !tbaa !73
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  tail call void @_ZN4toku3omtIPNS_12lock_requestES2_Lb0EE25rebuild_from_sorted_arrayEPNS_12omt_internal17subtree_templatedILb0EEEPKS2_j(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.n, ptr noundef %.tr2023, i32 noundef %i.d)
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.p = add nuw i32 %i.d, 1                      ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.tr2023, i64 %i.q
  %i.s = sub i32 %.tr2124, %i.p                   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %tailrecurse._crit_edge, label %tailrecurse
}

end_hunk_1
