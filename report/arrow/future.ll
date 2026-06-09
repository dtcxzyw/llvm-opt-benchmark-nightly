inline.NumInlined: 1185
inline.NumDeleted: 671
begin_hunk_0_@_ZN5arrow18ConcreteFutureImpl14TryAddCallbackERKSt8functionIFNS_8internal6FnOnceIFvRKNS_10FutureImplEEEEvEENS_15CallbackOptionsE:bb.a
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %.sroa.220.0..sroa_idx, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62
  %.not.i.i8 = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i8, label %bb.f, label %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE9push_backEOS2_.exit.thread

_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE9push_backEOS2_.exit.thread: ; preds = %_ZNKSt8functionIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEEclEv.exit
  %i.n = load i64, ptr %4, align 8, !tbaa !33
  store i64 %i.n, ptr %i.k, align 8, !tbaa !33
  store ptr null, ptr %4, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !63
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !59
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.q, ptr %i.j, align 8, !tbaa !59
  br label %_ZN5arrow10FutureImpl14CallbackRecordD2Ev.exit

bb.f:                                             ; preds = %_ZNKSt8functionIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEEclEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr %i.k, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE9push_backEOS2_.exit unwind label %bb.h

_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.f
  %.pre = load ptr, ptr %4, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i10, label %_ZN5arrow10FutureImpl14CallbackRecordD2Ev.exit, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i: ; preds = %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE9push_backEOS2_.exit
  %i.s = load ptr, ptr %.pre, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pre) #24, !inline_history !64
  br label %_ZN5arrow10FutureImpl14CallbackRecordD2Ev.exit

_ZN5arrow10FutureImpl14CallbackRecordD2Ev.exit:   ; preds = %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE9push_backEOS2_.exit.thread, %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE9push_backEOS2_.exit, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit16

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = load ptr, ptr %4, align 8, !tbaa !33     ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i11, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i12

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i12: ; preds = %bb.h
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #24, !inline_history !64
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.g, %bb.h, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i12
  %.pn = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.w, %bb.h ], [ %i.w, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ab = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 0 uses
  resume { ptr, i32 } %.pn

_ZNSt11unique_lockISt5mutexED2Ev.exit16:          ; preds = %_ZN5arrow10FutureImpl14CallbackRecordD2Ev.exit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.ac = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 0 uses
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Future") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::internal::FnOnce", align 8 ; 6 uses
  %3 = alloca %"struct.arrow::Future<>::WrapStatusyOnComplete::Callback", align 8 ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %class.anon, align 8                ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !73     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %4, align 8, !tbaa !75, !alias.scope !78
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE12MakeFinishedIS2_vEES3_NS_6StatusE(ptr dead_on_unwind writable sret(%"class.arrow::Future") align 8 %0, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %4, align 8, !tbaa !75     ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d, !prof !81

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !82, !range !26, !noundef !27
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZN5arrow6StatusD2Ev.exit

bb.f:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !75     ; 2 uses
  %.not.i18 = icmp eq ptr %i.j, null
  br i1 %.not.i18, label %_ZN5arrow6StatusD2Ev.exit19, label %bb.g, !prof !81

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !82, !range !26, !noundef !27
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN5arrow6StatusD2Ev.exit19, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZN5arrow6StatusD2Ev.exit19

bb.i:                                             ; preds = %bb.a
  %i.n = ptrtoint ptr %i.c to i64
  %i.o = ptrtoint ptr %i.a to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23, !noalias !91 ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 8 uses
  store i32 1, ptr %i.s, align 8, !tbaa !53, !noalias !96
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 2 uses
  store i32 1, ptr %i.t, align 4, !tbaa !55, !noalias !96
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.r, align 8, !tbaa !10, !noalias !96
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, i8 0, i64 40, i1 false), !noalias !96
  store i64 %i.q, ptr %i.v, align 8, !tbaa !97, !noalias !96
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv(ptr dead_on_unwind writable sret(%"class.arrow::Future") align 8 %0)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %1, align 8, !tbaa !73     ; 2 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !73   ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.q

._crit_edge:                                      ; preds = %"_ZZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEEN3$_0D2Ev.exit", %bb.j
  %i.ad = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.s, align 8, !tbaa !53
  store i32 0, ptr %i.t, align 4, !tbaa !55
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #24, !inline_history !99
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #24, !inline_history !99
  br label %_ZN5arrow6StatusD2Ev.exit

bb.l:                                             ; preds = %._crit_edge
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = add nsw i32 %i.af, -1
  store i32 %i.an, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.af, %bb.m ], [ %i.ao, %bb.n ]
  %i.ap = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ap, label %bb.o, label %_ZN5arrow6StatusD2Ev.exit, !prof !58

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #24
  br label %_ZN5arrow6StatusD2Ev.exit

bb.p:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.q:                                             ; preds = %.lr.ph, %"_ZZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEEN3$_0D2Ev.exit"
  %.sroa.026.030 = phi ptr [ %i.w, %.lr.ph ], [ %i.bs, %"_ZZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEEN3$_0D2Ev.exit" ] ; 2 uses
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = load i32, ptr %i.s, align 8, !tbaa !3
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.s, align 8, !tbaa !3
  br label %_ZNSt10shared_ptrIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateEC2ERKSB_.exit

bb.s:                                             ; preds = %bb.q
  %i.au = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateEC2ERKSB_.exit

_ZNSt10shared_ptrIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateEC2ERKSB_.exit: ; preds = %bb.r, %bb.s
  %i.av = load ptr, ptr %0, align 8, !tbaa !51    ; 2 uses
  %i.aw = load ptr, ptr %i.z, align 8, !tbaa !46  ; 4 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i21, label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt10shared_ptrIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateEC2ERKSB_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !3
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit

bb.v:                                             ; preds = %bb.t
  %i.bb = atomicrmw volatile add ptr %i.ax, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit

_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit: ; preds = %_ZNSt10shared_ptrIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateEC2ERKSB_.exit, %bb.u, %bb.v
  %.val17 = load ptr, ptr %.sroa.026.030, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.u, ptr %3, align 8, !tbaa !100
  store ptr %i.r, ptr %i.aa, align 8, !tbaa !46
  store ptr %i.av, ptr %i.ab, align 8, !tbaa !51
  store ptr %i.aw, ptr %i.ac, align 8, !tbaa !46
  %i.bc = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %bb.w unwind label %bb.z       ; 6 uses

bb.w:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorISA_SaISA_EEE3$_0EEEE", i64 16), ptr %i.bc, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.u, ptr %i.bd, align 8, !tbaa !100
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.r, ptr %i.be, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.av, ptr %i.bf, align 8, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store ptr %i.aw, ptr %i.bg, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.bh = ptrtoint ptr %i.bc to i64
  store i64 %i.bh, ptr %2, align 8, !tbaa !33
  invoke void @_ZN5arrow18ConcreteFutureImpl11AddCallbackENS_8internal6FnOnceIFvRKNS_10FutureImplEEEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(160) %.val17, ptr noundef nonnull %2, i32 0, ptr null)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bi = load ptr, ptr %2, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i22, label %"_ZZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEEN3$_0D2Ev.exit", label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i: ; preds = %bb.x
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bi) #24, !inline_history !103
  br label %"_ZZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEEN3$_0D2Ev.exit"

bb.y:                                             ; preds = %bb.w
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.bn = load ptr, ptr %2, align 8, !tbaa !33    ; 3 uses
  %.not.i.i5.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i5.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i6.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i6.i.i: ; preds = %bb.y
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bn) #24, !inline_history !103
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i

bb.z:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i: ; preds = %bb.z, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i6.i.i, %bb.y
  %.pn.i = phi { ptr, i32 } [ %i.br, %bb.z ], [ %i.bm, %bb.y ], [ %i.bm, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i6.i.i ]
  call fastcc void @"_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorIS3_SaIS3_EEE3$_0ED2Ev"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #24
  call fastcc void @"_ZZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEEN3$_0D2Ev"(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #24
  call void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  br label %bb.aa

"_ZZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEEN3$_0D2Ev.exit": ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.026.030, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.x
  br i1 %i.bt, label %._crit_edge, label %bb.q

bb.aa:                                            ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i, %bb.p
  %.pn = phi { ptr, i32 } [ %.pn.i, %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i ], [ %i.aq, %bb.p ]
  call fastcc void @_ZNSt12__shared_ptrIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr nonnull %i.r) #24
  br label %_ZN5arrow6StatusD2Ev.exit19

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k, %bb.e, %bb.d, %bb.c
  ret void

_ZN5arrow6StatusD2Ev.exit19:                      ; preds = %bb.h, %bb.g, %bb.f, %bb.aa
  %.pn11 = phi { ptr, i32 } [ %.pn, %bb.aa ], [ %i.i, %bb.f ], [ %i.i, %bb.g ], [ %i.i, %bb.h ]
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6FutureINS_8internal5EmptyEE12MakeFinishedIS2_vEES3_NS_6StatusE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Future") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Result", align 8     ; 7 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !75     ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !75
  store ptr null, ptr %1, align 8, !tbaa !75
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !81

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !75, !alias.scope !104
  br label %_ZN5arrow8internal5Empty8ToResultENS_6StatusE.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_8internal5EmptyEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZN5arrow8internal5Empty8ToResultENS_6StatusE.exit

_ZN5arrow8internal5Empty8ToResultENS_6StatusE.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE12MakeFinishedENS_6ResultIS2_EE(ptr dead_on_unwind writable sret(%"class.arrow::Future") align 8 %0, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN5arrow8internal5Empty8ToResultENS_6StatusE.exit
  %i.c = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !82, !range !26, !noundef !27
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %2) #24
  br label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit

_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit:   ; preds = %bb.d, %bb.e, %bb.f
  %i.g = load ptr, ptr %3, align 8, !tbaa !75     ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g, !prof !81

bb.g:                                             ; preds = %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !82, !range !26, !noundef !27
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %_ZN5arrow8internal5Empty8ToResultENS_6StatusE.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit2, label %bb.j, !prof !81

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !82, !range !26, !noundef !27
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit2, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %2) #24
  br label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit2

_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit2:  ; preds = %bb.i, %bb.j, %bb.k
  %i.p = load ptr, ptr %3, align 8, !tbaa !75     ; 2 uses
  %.not.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i3, label %_ZN5arrow6StatusD2Ev.exit4, label %bb.l, !prof !81
end_hunk_0
begin_hunk_1_@"_ZZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEEN3$_0D2Ev":bb.a
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.s, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !55
  %i.x = load ptr, ptr %.val, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %.val) #24, !inline_history !99
  %i.aa = load ptr, ptr %.val, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.val) #24, !inline_history !99
  br label %_ZNSt12__shared_ptrIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i1 = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.v, %bb.k ], [ %i.af, %bb.l ]
  %i.ag = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ag, label %bb.m, label %_ZNSt12__shared_ptrIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #24
  br label %_ZNSt12__shared_ptrIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !55
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !56
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !56
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt12__shared_ptrIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.8.val) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
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
  store i32 0, ptr %i.a, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !55
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #24, !inline_history !117
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #24, !inline_history !117
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Future") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::internal::FnOnce", align 8 ; 6 uses
  %3 = alloca %"class.arrow::Future.34", align 8  ; 7 uses
  %4 = alloca %"class.std::vector.26", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !120    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %i.h, ptr %i.i, align 8, !tbaa !121
  br label %_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EEC2ERKS6_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.j, label %.noexc.i.i, label %bb.c, !prof !58

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23 ; 4 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !120
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !121
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZSt10_ConstructIN5arrow6FutureINS0_8internal5EmptyEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.x, %_ZSt10_ConstructIN5arrow6FutureINS0_8internal5EmptyEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructIN5arrow6FutureINS0_8internal5EmptyEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 2 uses
  %i.q = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i, align 8, !tbaa !113
  store <2 x ptr> %i.q, ptr %.08.i.i.i.i.i, align 8, !tbaa !113
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5arrow6FutureINS0_8internal5EmptyEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZSt10_ConstructIN5arrow6FutureINS0_8internal5EmptyEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN5arrow6FutureINS0_8internal5EmptyEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN5arrow6FutureINS0_8internal5EmptyEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.b
  br i1 %i.y, label %_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EEC2ERKS6_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !122

_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EEC2ERKS6_.exit: ; preds = %_ZSt10_ConstructIN5arrow6FutureINS0_8internal5EmptyEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i, %.thread
  %i.z = phi ptr [ %i.i, %.thread ], [ %i.n, %_ZSt10_ConstructIN5arrow6FutureINS0_8internal5EmptyEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.aa = phi ptr [ %i.g, %.thread ], [ %i.l, %_ZSt10_ConstructIN5arrow6FutureINS0_8internal5EmptyEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %.thread ], [ %i.x, %_ZSt10_ConstructIN5arrow6FutureINS0_8internal5EmptyEEEJRKS4_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.aa, align 8, !tbaa !118
  invoke void @_ZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Future.34") align 8 %3, ptr noundef nonnull %4)
          to label %bb.g unwind label %bb.ac

bb.g:                                             ; preds = %_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EEC2ERKS6_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE4MakeEv(ptr dead_on_unwind writable sret(%"class.arrow::Future") align 8 %0)
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !46, !alias.scope !123 ; 3 uses
  %i.ad = load <2 x ptr>, ptr %0, align 8, !tbaa !113, !alias.scope !123
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i, label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57, !noalias !123
  %.not.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !3
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !3
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ai = atomicrmw volatile add ptr %i.ae, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i

_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i: ; preds = %bb.j, %bb.i, %.noexc
  %.val7.i = load ptr, ptr %3, align 8, !tbaa !51, !noalias !123
  %i.aj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23
          to label %bb.k unwind label %bb.n       ; 3 uses

bb.k:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt6vectorINS_6ResultINS0_5EmptyEEESaISC_EEE20WrapResultOnComplete8CallbackINSF_14ThenOnCompleteIZNS_11AllFinishedERKS9_INS8_ISB_EESaISJ_EEE3$_0NSF_17PassthruOnFailureISO_EEEEEEEE", i64 16), ptr %i.aj, align 8, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x ptr> %i.ad, ptr %i.ak, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !123
  %i.al = ptrtoint ptr %i.aj to i64
  store i64 %i.al, ptr %2, align 8, !tbaa !33, !noalias !123
  invoke void @_ZN5arrow18ConcreteFutureImpl11AddCallbackENS_8internal6FnOnceIFvRKNS_10FutureImplEEEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(160) %.val7.i, ptr noundef nonnull %2, i32 0, ptr null)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %2, align 8, !tbaa !33, !noalias !123 ; 3 uses
  %.not.i.i.i.i8.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i8.i, label %bb.o, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i: ; preds = %bb.l
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #24, !inline_history !126
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %2, align 8, !tbaa !33, !noalias !123 ; 3 uses
  %.not.i.i5.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i5.i.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i6.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i6.i.i.i: ; preds = %bb.m
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ar) #24, !inline_history !126
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i.i

bb.n:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEC2ERKS3_.exit.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i.i

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i.i: ; preds = %bb.n, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i6.i.i.i, %bb.m
  %.sroa.3.0.i.i = phi ptr [ %i.ac, %bb.n ], [ null, %bb.m ], [ null, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i6.i.i.i ]
  %.pn.i.i = phi { ptr, i32 } [ %i.av, %bb.n ], [ %i.aq, %bb.m ], [ %i.aq, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i6.i.i.i ]
  call fastcc void @"_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE20WrapResultOnComplete8CallbackINS8_14ThenOnCompleteIZNS_11AllFinishedERKS1_INS0_IS4_EESaISC_EEE3$_0NS8_17PassthruOnFailureISH_EEEEED2Ev"(ptr %.sroa.3.0.i.i) #24
  call void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  br label %.body

bb.o:                                             ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !123
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ay, align 8, !tbaa !53
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !55
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !127
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24, !inline_history !127
  br label %_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i4 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i4, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.bb, %bb.s ], [ %i.bl, %bb.t ]
  %i.bm = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bm, label %bb.u, label %_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev.exit, !prof !58

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #24
  br label %_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev.exit

_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev.exit: ; preds = %bb.o, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u
  %i.bn = load ptr, ptr %4, align 8, !tbaa !120   ; 3 uses
  %i.bo = load ptr, ptr %i.aa, align 8, !tbaa !118 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bn, %i.bo
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow6FutureINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev.exit, %_ZSt8_DestroyIN5arrow6FutureINS0_8internal5EmptyEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cg, %_ZSt8_DestroyIN5arrow6FutureINS0_8internal5EmptyEEEEvPT_.exit.i.i.i ], [ %i.bn, %_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev.exit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow6FutureINS0_8internal5EmptyEEEEvPT_.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.br, align 8, !tbaa !53
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !55
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #24, !inline_history !128
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
end_hunk_1
begin_hunk_2_@_ZN5arrow11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EE:bb.a
bb.ac:                                            ; preds = %_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EEC2ERKS6_.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.g
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i.i, %bb.ad
  %eh.lpad-body = phi { ptr, i32 } [ %i.cn, %bb.ad ], [ %.pn.i.i, %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit10.i.i ]
  call void @_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  br label %bb.ae

bb.ae:                                            ; preds = %.body, %bb.ac
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cm, %bb.ac ]
  call void @_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Future.34") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::internal::FnOnce", align 8 ; 6 uses
  %3 = alloca %"struct.arrow::Future<>::WrapResultOnComplete::Callback", align 8 ; 8 uses
  %4 = alloca %"class.std::vector.96", align 8    ; 7 uses
  %5 = alloca %"class.std::shared_ptr.101", align 16 ; 7 uses
  %6 = alloca %class.anon.106, align 16           ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !120    ; 3 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEEC2ES7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %4, align 8, !tbaa !130    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i, label %bb.d, !prof !81

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !82, !range !26, !noundef !27
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %.05.i.i.i) #24
  br label %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i: ; preds = %bb.e, %bb.d, %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !134

_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !130
  br label %_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.c
  %i.m = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.e, %bb.c ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !135
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #26
  br label %_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EED2Ev.exit

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #24
  br label %bb.ab

bb.h:                                             ; preds = %bb.a
  %i.t = ptrtoint ptr %i.c to i64
  %i.u = ptrtoint ptr %i.b to i64
  %i.v = sub i64 %i.u, %i.t
  %i.w = ashr exact i64 %i.v, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.y = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23, !noalias !139 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 1, ptr %i.z, align 8, !tbaa !53, !noalias !136
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 1, ptr %i.aa, align 4, !tbaa !55, !noalias !136
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.y, align 8, !tbaa !10, !noalias !136
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !121, !noalias !136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !noalias !136
  store ptr %i.c, ptr %i.ab, align 8, !tbaa !120, !noalias !136
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store ptr %i.b, ptr %i.ae, align 8, !tbaa !118, !noalias !136
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !121, !noalias !136
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i64 %i.w, ptr %i.ag, align 8, !tbaa !97, !noalias !136
  store ptr %i.y, ptr %i.x, align 8, !tbaa !46, !alias.scope !136
  store ptr %i.ab, ptr %5, align 16, !tbaa !142, !alias.scope !136
  invoke void @_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE4MakeEv(ptr dead_on_unwind writable sret(%"class.arrow::Future.34") align 8 %0)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !73 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !73 ; 2 uses
  %i.ak = icmp eq ptr %i.ah, %i.aj
  br i1 %i.ak, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.p

._crit_edge:                                      ; preds = %_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_D2Ev.exit
  %.pre22 = load ptr, ptr %i.x, align 8, !tbaa !46 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre22, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.i, %._crit_edge
  %i.as = phi ptr [ %.pre22, %._crit_edge ], [ %i.y, %bb.i ] ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.thread
  store i32 0, ptr %i.at, align 8, !tbaa !53
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !55
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #24, !inline_history !144
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #24, !inline_history !144
  br label %_ZNSt12__shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %._crit_edge.thread
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i10 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i10, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.aw, %bb.l ], [ %i.bg, %bb.m ]
  %i.bh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bh, label %bb.n, label %_ZNSt12__shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #24
  br label %_ZNSt12__shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EED2Ev.exit

bb.o:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.p:                                             ; preds = %.lr.ph, %_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_D2Ev.exit
  %.sroa.017.020 = phi ptr [ %i.ah, %.lr.ph ], [ %i.cs, %_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_D2Ev.exit ] ; 2 uses
  %i.bj = load ptr, ptr %i.x, align 8, !tbaa !46  ; 2 uses
  %i.bk = load <2 x ptr>, ptr %5, align 16, !tbaa !113
  store <2 x ptr> %i.bk, ptr %6, align 16, !tbaa !113
  %.not.i.i.i11 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i11, label %_ZNSt10shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateEC2ERKSG_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 3 uses
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateEC2ERKSG_.exit

bb.s:                                             ; preds = %bb.q
  %i.bp = atomicrmw volatile add ptr %i.bl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateEC2ERKSG_.exit

_ZNSt10shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateEC2ERKSG_.exit: ; preds = %bb.p, %bb.r, %bb.s
  %i.bq = load ptr, ptr %0, align 8, !tbaa !51    ; 3 uses
  store ptr %i.bq, ptr %i.am, align 16, !tbaa !51
  %i.br = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 4 uses
  store ptr %i.br, ptr %i.an, align 8, !tbaa !46
  %.not.i.i.i.i12 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i12, label %_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEEC2ERKS8_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt10shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateEC2ERKSG_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !3
  br label %_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEEC2ERKS8_.exit

bb.v:                                             ; preds = %bb.t
  %i.bw = atomicrmw volatile add ptr %i.bs, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.am, align 16, !tbaa !51
  %.pre21 = load ptr, ptr %i.an, align 8, !tbaa !46
  br label %_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEEC2ERKS8_.exit

_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEEC2ERKS8_.exit: ; preds = %_ZNSt10shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateEC2ERKSG_.exit, %bb.u, %bb.v
  %i.bx = phi ptr [ null, %_ZNSt10shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateEC2ERKSG_.exit ], [ %i.br, %bb.u ], [ %.pre21, %bb.v ] ; 2 uses
  %i.by = phi ptr [ %i.bq, %_ZNSt10shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateEC2ERKSG_.exit ], [ %i.bq, %bb.u ], [ %.pre, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bz = load ptr, ptr %.sroa.017.020, align 8, !tbaa !51
  %i.ca = load ptr, ptr %6, align 16, !tbaa !145  ; 2 uses
  store ptr %i.ca, ptr %3, align 8, !tbaa !145
  %i.cb = load ptr, ptr %i.al, align 8, !tbaa !46 ; 2 uses
  store ptr %i.cb, ptr %i.ap, align 8, !tbaa !46
  store ptr %i.by, ptr %i.aq, align 8, !tbaa !51
  store ptr %i.bx, ptr %i.ar, align 8, !tbaa !46
  store <4 x ptr> splat (ptr null), ptr %6, align 16, !tbaa !113
  %i.cc = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #23
          to label %bb.w unwind label %bb.z       ; 6 uses

bb.w:                                             ; preds = %_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEEC2ERKS8_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackIZNS_3AllIS9_EENS8_ISt6vectorINS_6ResultIT_EESaISH_EEEESE_INS8_ISG_EESaISL_EEEUlRKNSF_IS9_EEE_EEEE, i64 16), ptr %i.cc, align 8, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !145
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %i.cb, ptr %i.ce, align 8, !tbaa !46
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.by, ptr %i.cf, align 8, !tbaa !51
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store ptr %i.bx, ptr %i.cg, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ch = ptrtoint ptr %i.cc to i64
  store i64 %i.ch, ptr %2, align 8, !tbaa !33
  invoke void @_ZN5arrow18ConcreteFutureImpl11AddCallbackENS_8internal6FnOnceIFvRKNS_10FutureImplEEEENS_15CallbackOptionsE(ptr noundef nonnull align 8 dereferenceable(160) %i.bz, ptr noundef nonnull %2, i32 0, ptr null)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ci = load ptr, ptr %2, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i13, label %_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_D2Ev.exit, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i: ; preds = %bb.x
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ci) #24, !inline_history !147
  br label %_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_D2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = load ptr, ptr %2, align 8, !tbaa !33    ; 3 uses
  %.not.i.i5.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i5.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i6.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i6.i.i: ; preds = %bb.y
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cn) #24, !inline_history !147
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i

bb.z:                                             ; preds = %_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEEC2ERKS8_.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i: ; preds = %bb.z, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i6.i.i, %bb.y
  %.pn.i = phi { ptr, i32 } [ %i.cr, %bb.z ], [ %i.cm, %bb.y ], [ %i.cm, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i6.i.i ]
  call void @_ZN5arrow6FutureINS_8internal5EmptyEE20WrapResultOnComplete8CallbackIZNS_3AllIS2_EENS0_ISt6vectorINS_6ResultIT_EESaISA_EEEES7_INS0_IS9_EESaISE_EEEUlRKNS8_IS2_EEE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %3) #24
  call void @_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_D2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #24
  call void @_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  br label %bb.aa

_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_D2Ev.exit: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.017.020, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.aj
  br i1 %i.ct, label %._crit_edge, label %bb.p

bb.aa:                                            ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i, %bb.o
  %.pn = phi { ptr, i32 } [ %.pn.i, %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit9.i ], [ %i.bi, %bb.o ]
  call void @_ZNSt12__shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ab

_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EED2Ev.exit: ; preds = %bb.f, %_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exit.i, %_ZNSt12__shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void

bb.ab:                                            ; preds = %bb.aa, %bb.g
  %.pn8 = phi { ptr, i32 } [ %i.s, %bb.g ], [ %.pn, %bb.aa ]
  resume { ptr, i32 } %.pn8
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !55
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !56
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !56
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !120    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev:bb.a
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #24, !inline_history !154
  br label %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i

_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !151

_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !149
  br label %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26
  br label %_ZNSt12_Vector_baseIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

declare void @_ZNSt18condition_variable4waitERSt11unique_lockISt5mutexE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #8

declare i32 @pthread_cond_clockwait(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow18ConcreteFutureImpl22DoMarkFinishedOrFailedENS_11FutureStateE(ptr noundef nonnull align 8 dereferenceable(160) %0, i8 noundef signext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 12 uses
  %3 = alloca %"class.std::shared_ptr", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.b) #25
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !155  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !155  ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZNSt11unique_lockISt5mutexED2Ev.exit16, label %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EEaSEOS4_.exit

_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EEaSEOS4_.exit: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.e, ptr %2, align 8, !tbaa !149
  store ptr %i.g, ptr %i.i, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  store ptr %i.l, ptr %i.j, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !43, !noalias !156 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = icmp eq ptr %.pre, null
  br i1 %i.n, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EEaSEOS4_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 2 uses
  %i.p = load atomic i32, ptr %i.o monotonic, align 8, !noalias !156
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.06.i.i.i.i.i = phi i32 [ %i.p, %bb.d ], [ %i.t, %bb.f ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %.06.i.i.i.i.i, 1
  %i.r = cmpxchg weak ptr %i.o, i32 %.06.i.i.i.i.i, i32 %i.q acq_rel monotonic, align 8, !noalias !156 ; 2 uses
  %i.s = extractvalue { i32, i1 } %i.r, 1
  %i.t = extractvalue { i32, i1 } %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.e, !llvm.loop !48

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.e, %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EEaSEOS4_.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #24, !noalias !156 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12bad_weak_ptr, i64 16), ptr %i.u, align 8, !tbaa !10, !noalias !156
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt12bad_weak_ptr, ptr nonnull @_ZNSt12bad_weak_ptrD1Ev) #25
          to label %.noexc11 unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit

.noexc11:                                         ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !49, !noalias !156
  store ptr %i.v, ptr %3, align 8, !tbaa !114
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !46   ; 8 uses
  store ptr %.pre, ptr %i.w, align 8, !tbaa !46
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit16, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !55
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !159
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !159
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit16

bb.j:                                             ; preds = %bb.h
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i.i12 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i12, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.k ], [ %i.al, %bb.l ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.m, label %_ZNSt11unique_lockISt5mutexED2Ev.exit16, !prof !58

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit16

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 0 uses
  br label %bb.w

_ZNSt11unique_lockISt5mutexED2Ev.exit16:          ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic i8 %1, ptr %i.ap seq_cst, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.aq) #24
  %i.ar = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 0 uses
  %i.as = load ptr, ptr %2, align 8, !tbaa !155   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !155 ; 2 uses
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit16, %bb.n
  %.sroa.023.032 = phi ptr [ %i.aw, %bb.n ], [ %i.as, %_ZNSt11unique_lockISt5mutexED2Ev.exit16 ] ; 2 uses
  invoke void @_ZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEb(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.023.032, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.023.032, i64 24 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.au
  br i1 %i.ax, label %.loopexit, label %.preheader

bb.o:                                             ; preds = %.preheader
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit:                                        ; preds = %bb.n, %_ZNSt11unique_lockISt5mutexED2Ev.exit16
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !46 ; 8 uses
  %.not.i.i17 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i17, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bb, align 8, !tbaa !53
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !55
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #24, !inline_history !56
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #24, !inline_history !56
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21

bb.r:                                             ; preds = %bb.p
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i18 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i18, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

bb.t:                                             ; preds = %bb.r
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i20 = phi i32 [ %i.be, %bb.s ], [ %i.bo, %bb.t ]
  %i.bp = icmp eq i32 %.0.i.i.i.i20, 1
  br i1 %i.bp, label %bb.u, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21, !prof !58

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #24
  br label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21

_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21: ; preds = %.loopexit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i19, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bq = load ptr, ptr %2, align 8, !tbaa !149   ; 5 uses
  %i.br = load ptr, ptr %i.at, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21, %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bw, %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i.i ], [ %i.bq, %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21 ] ; 2 uses
  %i.bs = load ptr, ptr %.05.i.i.i, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bs) #24, !inline_history !150
  br label %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.bw, %i.br
  br i1 %.not.i.i.i22, label %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !151

_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN5arrow10FutureImpl14CallbackRecordEEvPT_.exit.i.i.i, %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit21
  %.not.i.i1.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !62
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bq to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.cb) #26
  br label %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow10FutureImpl14CallbackRecordES2_EvT_S4_RSaIT0_E.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.w:                                             ; preds = %bb.c, %_ZNSt11unique_lockISt5mutexED2Ev.exit, %bb.o
  %.pn9 = phi { ptr, i32 } [ %i.ay, %bb.o ], [ %i.an, %_ZNSt11unique_lockISt5mutexED2Ev.exit ], [ %i.c, %bb.c ]
  call void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !55
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !117
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !117
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEb(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.44, align 16            ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !160
  switch i32 %i.b, label %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread11 [
    i32 3, label %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit
    i32 2, label %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread11, label %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread

_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !171
  br i1 %i.h, label %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread11, label %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread

_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread: ; preds = %bb.a, %bb.b, %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !46   ; 2 uses
  %i.l = load <2 x ptr>, ptr %0, align 8, !tbaa !113
  store <2 x ptr> %i.l, ptr %3, align 16, !tbaa !113
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow10FutureImplEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow10FutureImplEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow10FutureImplEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow10FutureImplEEC2ERKS2_.exit: ; preds = %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread, %bb.d, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = load i64, ptr %1, align 8, !tbaa !33
  store i64 %i.s, ptr %i.r, align 16, !tbaa !33
  store ptr null, ptr %1, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !170
  invoke void @_ZN5arrow8internal8Executor5SpawnIZNS_18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS5_14CallbackRecordEbEUlvE_EENS_6StatusEOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN5arrow10FutureImplEEC2ERKS2_.exit
  %i.v = load ptr, ptr %4, align 8, !tbaa !75     ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g, !prof !81

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !82, !range !26, !noundef !27
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.f, %bb.g, %bb.h
  %i.z = load ptr, ptr %i.r, align 16, !tbaa !33  ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i8, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #24, !inline_history !172
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !46  ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i, label %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_D2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ae, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !55
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #24, !inline_history !173
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #24, !inline_history !173
  br label %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_D2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i9 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i9, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.ah, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.as, label %bb.n, label %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_D2Ev.exit, !prof !58

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #24
  br label %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_D2Ev.exit

_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_D2Ev.exit: ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.p

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplESt14default_deleteIS8_EED2Ev.exit5.i, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.at, %bb.o ], [ %i.ba, %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplESt14default_deleteIS8_EED2Ev.exit5.i ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %_ZNSt10shared_ptrIN5arrow10FutureImplEEC2ERKS2_.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_D2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume

_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread11: ; preds = %bb.a, %bb.b, %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit
  %i.au = load ptr, ptr %0, align 8, !tbaa !51
  %i.av = load i64, ptr %1, align 8, !tbaa !33
  %i.aw = inttoptr i64 %i.av to ptr               ; 6 uses
  store ptr null, ptr %1, align 8, !tbaa !33
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(72) %i.au)
          to label %_ZNO5arrow8internal6FnOnceIFvRKNS_10FutureImplEEEclES4_.exit unwind label %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplESt14default_deleteIS8_EED2Ev.exit5.i

_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplESt14default_deleteIS8_EED2Ev.exit5.i: ; preds = %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread11
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #24, !inline_history !174
  br label %common.resume

_ZNO5arrow8internal6FnOnceIFvRKNS_10FutureImplEEEclES4_.exit: ; preds = %_ZN5arrow18ConcreteFutureImpl22ShouldScheduleCallbackERKNS_10FutureImpl14CallbackRecordEb.exit.thread11
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #24, !inline_history !174
  br label %bb.p

bb.p:                                             ; preds = %_ZNO5arrow8internal6FnOnceIFvRKNS_10FutureImplEEEclES4_.exit, %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_D2Ev.exit
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12bad_weak_ptrD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !46     ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !55
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #24, !inline_history !175
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #24, !inline_history !175
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #24
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !176
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #24, !inline_history !176
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal8Executor5SpawnIZNS_18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS5_14CallbackRecordEbEUlvE_EENS_6StatusEOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::internal::TaskHints", align 8 ; 3 uses
  %4 = alloca %"class.arrow::internal::FnOnce.45", align 8 ; 4 uses
  %5 = alloca %class.anon.44, align 16            ; 5 uses
  %6 = alloca %"class.arrow::StopToken", align 8  ; 4 uses
  %7 = alloca %"class.arrow::internal::FnOnce.57", align 8 ; 7 uses
  store i32 0, ptr %3, align 8, !tbaa !177
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 -1, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = load <2 x ptr>, ptr %2, align 8, !tbaa !113
  store <2 x ptr> %i.e, ptr %5, align 16, !tbaa !113
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_C2EOS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_C2EOS8_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_C2EOS8_.exit

_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_C2EOS8_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !33
  store i64 %i.m, ptr %i.k, align 16, !tbaa !33
  store ptr null, ptr %i.l, align 8, !tbaa !33
  invoke void @_ZN5arrow8internal6FnOnceIFvvEEC2IZNS_18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS7_14CallbackRecordEbEUlvE_vEET_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %5)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_C2EOS8_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !alias.scope !179
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr null, ptr %7, align 8, !tbaa !182
  %i.n = load ptr, ptr %1, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull byval(%"struct.arrow::internal::TaskHints") align 8 %3, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %7, align 8, !tbaa !185    ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i: ; preds = %bb.f
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #24, !inline_history !186
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit

_ZN5arrow8internal6FnOnceIFvRKNS_6StatusEEED2Ev.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_6StatusEEE4ImplEEclEPS8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !46   ; 8 uses
end_hunk_3
begin_hunk_4_@_ZN5arrow9StopTokenD2Ev:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !55
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !191
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !191
  br label %_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow14StopSourceImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8internal6FnOnceIFvvEE6FnImplIZNS_18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS7_14CallbackRecordEbEUlvE_ED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplIZNS_18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS7_14CallbackRecordEbEUlvE_EE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #24, !inline_history !172
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46   ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_D2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !55
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !173
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !173
  br label %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_D2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_D2Ev.exit, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24
  br label %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_D2Ev.exit

_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_D2Ev.exit: ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8internal6FnOnceIFvvEE6FnImplIZNS_18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS7_14CallbackRecordEbEUlvE_ED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow8internal6FnOnceIFvvEE6FnImplIZNS_18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS7_14CallbackRecordEbEUlvE_EE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #24, !inline_history !192
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i.i

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplEEclEPS8_.exit.i.i.i.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46   ; 8 uses
  %.not.i.i1.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow8internal6FnOnceIFvvEE6FnImplIZNS_18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS7_14CallbackRecordEbEUlvE_ED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !55
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !193
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !193
  br label %_ZN5arrow8internal6FnOnceIFvvEE6FnImplIZNS_18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS7_14CallbackRecordEbEUlvE_ED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZN5arrow8internal6FnOnceIFvvEE6FnImplIZNS_18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS7_14CallbackRecordEbEUlvE_ED2Ev.exit, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #24, !inline_history !194
  br label %_ZN5arrow8internal6FnOnceIFvvEE6FnImplIZNS_18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS7_14CallbackRecordEbEUlvE_ED2Ev.exit

_ZN5arrow8internal6FnOnceIFvvEE6FnImplIZNS_18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS7_14CallbackRecordEbEUlvE_ED2Ev.exit: ; preds = %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEED2Ev.exit.i.i, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal6FnOnceIFvvEE6FnImplIZNS_18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS7_14CallbackRecordEbEUlvE_E6invokeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.d = load i64, ptr %i.b, align 8, !tbaa !33
  %i.e = inttoptr i64 %i.d to ptr                 ; 6 uses
  store ptr null, ptr %i.b, align 8, !tbaa !33
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_clEv.exit unwind label %_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplESt14default_deleteIS8_EED2Ev.exit5.i.i

_ZNSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplESt14default_deleteIS8_EED2Ev.exit5.i.i: ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #24, !inline_history !195
  resume { ptr, i32 } %i.i

_ZZN5arrow18ConcreteFutureImpl21RunOrScheduleCallbackERKSt10shared_ptrINS_10FutureImplEEONS2_14CallbackRecordEbENUlvE_clEv.exit: ; preds = %bb.a
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #24, !inline_history !195
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !149    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
  unreachable

_ZNKSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !33
  store i64 %i.r, ptr %i.q, align 8, !tbaa !33
  store ptr null, ptr %2, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !63
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.u = load i64, ptr %.0911.i.i.i, align 8, !tbaa !33, !alias.scope !199, !noalias !196
  store i64 %i.u, ptr %.012.i.i.i, align 8, !tbaa !33, !alias.scope !196, !noalias !199
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !33, !alias.scope !199, !noalias !196
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !63, !alias.scope !201
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !202

_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.y, %.lr.ph.i.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ae, %.lr.ph.i.i.i17 ], [ %i.z, %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 3 uses
  %.0911.i.i.i19 = phi ptr [ %i.ad, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.aa = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !33, !alias.scope !206, !noalias !203
  store i64 %i.aa, ptr %.012.i.i.i18, align 8, !tbaa !33, !alias.scope !203, !noalias !206
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !33, !alias.scope !206, !noalias !203
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !63, !alias.scope !208
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !202

_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.z, %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ae, %.lr.ph.i.i.i17 ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN5arrow10FutureImpl14CallbackRecordESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !62
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ai) #26
  br label %_ZNSt12_Vector_baseIN5arrow10FutureImpl14CallbackRecordESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5arrow10FutureImpl14CallbackRecordESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !149
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !59
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !62
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !55
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !209
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24, !inline_history !209
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !58

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #24
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !210  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

end_hunk_4
begin_hunk_5_@"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorISA_SaISA_EEE3$_0EEED2Ev":bb.a
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !229
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !229
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.r, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i.i, label %"_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorIS3_SaIS3_EEE3$_0ED2Ev.exit", label %bb.h

bb.h:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.s, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !55
  %i.x = load ptr, ptr %.val.i.i, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #24, !inline_history !230
  %i.aa = load ptr, ptr %.val.i.i, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #24, !inline_history !230
  br label %"_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorIS3_SaIS3_EEE3$_0ED2Ev.exit"

bb.j:                                             ; preds = %bb.h
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i1.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i1.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %bb.k ], [ %i.af, %bb.l ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.m, label %"_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorIS3_SaIS3_EEE3$_0ED2Ev.exit", !prof !58

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i) #24
  br label %"_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorIS3_SaIS3_EEE3$_0ED2Ev.exit"

"_ZN5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorIS3_SaIS3_EEE3$_0ED2Ev.exit": ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorISA_SaISA_EEE3$_0EEED0Ev"(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorISA_SaISA_EEE3$_0EEEE", i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !55
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !231
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !231
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !232
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorISA_SaISA_EEE3$_0EEED2Ev.exit", label %bb.h

bb.h:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8 ; 4 uses
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  %i.u = icmp eq i64 %i.t, 4294967297
  %i.v = trunc i64 %i.t to i32                    ; 2 uses
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.s, align 8, !tbaa !53
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 12
  store i32 0, ptr %i.w, align 4, !tbaa !55
  %i.x = load ptr, ptr %.val.i.i.i, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i) #24, !inline_history !233
  %i.aa = load ptr, ptr %.val.i.i.i, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i) #24, !inline_history !233
  br label %"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorISA_SaISA_EEE3$_0EEED2Ev.exit"

bb.j:                                             ; preds = %bb.h
  %i.ad = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i1.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i1.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.v, %bb.k ], [ %i.af, %bb.l ]
  %i.ag = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ag, label %bb.m, label %"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorISA_SaISA_EEE3$_0EEED2Ev.exit", !prof !58

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i) #24, !inline_history !232
  br label %"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorISA_SaISA_EEE3$_0EEED2Ev.exit"

"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorISA_SaISA_EEE3$_0EEED2Ev.exit": ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit.i.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorISA_SaISA_EEE3$_0EEE6invokeES4_"(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 9 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !113 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.c = load ptr, ptr %.val, align 8, !tbaa !75
  %i.d = icmp eq ptr %i.c, null
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !100 ; 4 uses
  br i1 %i.d, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %.val.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load atomic i8, ptr %i.h seq_cst, align 1
  %.not20.i.i = icmp eq i8 %i.i, 0
  br i1 %.not20.i.i, label %bb.e, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %2, align 8, !tbaa !75
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %.val)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i.i unwind label %bb.i

_ZN5arrow6StatusC2ERKS0_.exit.i.i:                ; preds = %bb.e
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE12MarkFinishedIS2_vEEvNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i
  %i.j = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i, label %bb.g, !prof !81

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !82, !range !26, !noundef !27
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #24
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i

bb.i:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit13.i.i

bb.j:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.p = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i10.i.i, label %_ZNSt11unique_lockISt5mutexED2Ev.exit13.i.i, label %bb.k, !prof !81

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !82, !range !26, !noundef !27
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZNSt11unique_lockISt5mutexED2Ev.exit13.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #24
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit13.i.i

_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i:        ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %i.t = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.val.i.i) #24 ; 0 uses
  br label %"_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorIS3_SaIS3_EEE3$_0EclERKNS_10FutureImplE.exit"

_ZNSt11unique_lockISt5mutexED2Ev.exit13.i.i:      ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.o, %bb.j ], [ %i.o, %bb.k ], [ %i.o, %bb.l ]
  %i.u = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %.val.i.i) #24 ; 0 uses
  br label %_ZN5arrow6StatusD2Ev.exit17.i.i

bb.m:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 40
  %i.w = atomicrmw sub ptr %i.v, i64 1 seq_cst, align 8
  %.not.i.i = icmp eq i64 %i.w, 1
  br i1 %.not.i.i, label %bb.n, label %"_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorIS3_SaIS3_EEE3$_0EclERKNS_10FutureImplE.exit"

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %3, align 8, !tbaa !75, !alias.scope !234
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE12MarkFinishedIS2_vEEvNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull %3)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.y = load ptr, ptr %3, align 8, !tbaa !75     ; 2 uses
  %.not.i14.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i14.i.i, label %"_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorIS3_SaIS3_EEE3$_0EclERKNS_10FutureImplE.exit", label %bb.p, !prof !81

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !82, !range !26, !noundef !27
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %"_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorIS3_SaIS3_EEE3$_0EclERKNS_10FutureImplE.exit", label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %"_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorIS3_SaIS3_EEE3$_0EclERKNS_10FutureImplE.exit"

bb.r:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ad = load ptr, ptr %3, align 8, !tbaa !75    ; 2 uses
  %.not.i16.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i16.i.i, label %_ZN5arrow6StatusD2Ev.exit17.i.i, label %bb.s, !prof !81

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !82, !range !26, !noundef !27
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN5arrow6StatusD2Ev.exit17.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZN5arrow6StatusD2Ev.exit17.i.i

_ZN5arrow6StatusD2Ev.exit17.i.i:                  ; preds = %bb.t, %bb.s, %bb.r, %_ZNSt11unique_lockISt5mutexED2Ev.exit13.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %.pn.i.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit13.i.i ], [ %i.ac, %bb.r ], [ %i.ac, %bb.s ], [ %i.ac, %bb.t ]
  resume { ptr, i32 } %.pn7.i.i

"_ZNO5arrow6FutureINS_8internal5EmptyEE21WrapStatusyOnComplete8CallbackIZNS_11AllCompleteERKSt6vectorIS3_SaIS3_EEE3$_0EclERKNS_10FutureImplE.exit": ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i, %bb.m, %bb.o, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6FutureINS_8internal5EmptyEE12MarkFinishedIS2_vEEvNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Result", align 8     ; 7 uses
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !75     ; 2 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !75
  store ptr null, ptr %1, align 8, !tbaa !75
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !81

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !75, !alias.scope !237
  br label %_ZN5arrow8internal5Empty8ToResultENS_6StatusE.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultINS_8internal5EmptyEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZN5arrow8internal5Empty8ToResultENS_6StatusE.exit

_ZN5arrow8internal5Empty8ToResultENS_6StatusE.exit: ; preds = %bb.b, %bb.c
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE14DoMarkFinishedENS_6ResultIS2_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN5arrow8internal5Empty8ToResultENS_6StatusE.exit
  %i.c = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !82, !range !26, !noundef !27
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %2) #24
  br label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit

_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit:   ; preds = %bb.d, %bb.e, %bb.f
  %i.g = load ptr, ptr %3, align 8, !tbaa !75     ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g, !prof !81

bb.g:                                             ; preds = %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !82, !range !26, !noundef !27
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit, %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %_ZN5arrow8internal5Empty8ToResultENS_6StatusE.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.l, null
  br i1 %.not.i.i2, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit3, label %bb.j, !prof !81

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !82, !range !26, !noundef !27
  %i.o = trunc nuw i8 %i.n to i1
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackIZNS_3AllIS9_EENS8_ISt6vectorINS_6ResultIT_EESaISH_EEEESE_INS8_ISG_EESaISL_EEEUlRKNSF_IS9_EEE_EEED0Ev:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !55
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !259
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !259
  br label %_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev.exit.i.i.i, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !260
  br label %_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev.exit.i.i.i

_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !46   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackIZNS_3AllIS9_EENS8_ISt6vectorINS_6ResultIT_EESaISH_EEEESE_INS8_ISG_EESaISL_EEEUlRKNSF_IS9_EEE_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !53
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !55
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !261
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !261
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackIZNS_3AllIS9_EENS8_ISt6vectorINS_6ResultIT_EESaISH_EEEESE_INS8_ISG_EESaISL_EEEUlRKNSF_IS9_EEE_EEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i1.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i1.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackIZNS_3AllIS9_EENS8_ISt6vectorINS_6ResultIT_EESaISH_EEEESE_INS8_ISG_EESaISL_EEEUlRKNSF_IS9_EEE_EEED2Ev.exit, !prof !58

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #24, !inline_history !260
  br label %_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackIZNS_3AllIS9_EENS8_ISt6vectorINS_6ResultIT_EESaISH_EEEESE_INS8_ISG_EESaISL_EEEUlRKNSF_IS9_EEE_EEED2Ev.exit

_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackIZNS_3AllIS9_EENS8_ISt6vectorINS_6ResultIT_EESaISH_EEEESE_INS8_ISG_EESaISL_EEEUlRKNSF_IS9_EEE_EEED2Ev.exit: ; preds = %_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev.exit.i.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureINS0_5EmptyEE20WrapResultOnComplete8CallbackIZNS_3AllIS9_EENS8_ISt6vectorINS_6ResultIT_EESaISH_EEEESE_INS8_ISG_EESaISL_EEEUlRKNSF_IS9_EEE_EEE6invokeES4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !113
  tail call void @_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_clESG_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(9) %i.c)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEENUlRKNS5_IS2_EEE_clESG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.96", align 8    ; 11 uses
  %3 = alloca %"class.arrow::Result.107", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !145
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = atomicrmw sub ptr %i.b, i64 1 seq_cst, align 8
  %.not = icmp eq i64 %i.c, 1
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.d = load ptr, ptr %0, align 8, !tbaa !145    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !120  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  %i.l = icmp ugt i64 %i.k, 576460752303423487
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #25
  unreachable

_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %._crit_edge, label %_ZNSt12_Vector_baseIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EEC2EmRKS5_.exit.i

_ZNSt12_Vector_baseIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EEC2EmRKS5_.exit.i: ; preds = %_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #23 ; 4 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !130
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !135
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt10_ConstructIN5arrow6ResultINS0_8internal5EmptyEEEJEEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt12_Vector_baseIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EEC2EmRKS5_.exit.i
  %.09.i.i.i.i.i = phi ptr [ %i.t, %_ZSt10_ConstructIN5arrow6ResultINS0_8internal5EmptyEEEJEEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EEC2EmRKS5_.exit.i ] ; 2 uses
  %.058.i.i.i.i.i = phi i64 [ %i.s, %_ZSt10_ConstructIN5arrow6ResultINS0_8internal5EmptyEEEJEEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EEC2EmRKS5_.exit.i ]
  invoke void @_ZN5arrow8internal19UninitializedResultEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 dereferenceable(9) %.09.i.i.i.i.i)
          to label %_ZSt10_ConstructIN5arrow6ResultINS0_8internal5EmptyEEEJEEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #27
  unreachable

_ZSt10_ConstructIN5arrow6ResultINS0_8internal5EmptyEEEJEEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.s = add nsw i64 %.058.i.i.i.i.i, -1          ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.i, !llvm.loop !262

.lr.ph.preheader:                                 ; preds = %_ZSt10_ConstructIN5arrow6ResultINS0_8internal5EmptyEEEJEEvPT_DpOT0_.exit.i.i.i.i.i
  store ptr %i.t, ptr %i.n, align 8, !tbaa !133
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre31 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !135
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i, %._crit_edge.loopexit
  %i.v = phi ptr [ %.pre31, %._crit_edge.loopexit ], [ null, %_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %.lcssa17 = phi ptr [ %i.aq, %._crit_edge.loopexit ], [ null, %_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %.lcssa = phi ptr [ %i.ap, %._crit_edge.loopexit ], [ null, %_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %3, align 8, !tbaa !75
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %.lcssa, ptr %i.x, align 8, !tbaa !130
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %.lcssa17, ptr %i.y, align 8, !tbaa !133
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.v, ptr %i.z, align 8, !tbaa !135
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE12MarkFinishedENS2_IS7_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %3)
          to label %bb.i unwind label %bb.p

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit
  %i.aa = phi ptr [ %i.ap, %_ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit ], [ %i.m, %.lr.ph.preheader ] ; 3 uses
  %i.ab = phi ptr [ %i.aq, %_ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit ], [ %i.t, %.lr.ph.preheader ] ; 2 uses
  %.024 = phi i64 [ %i.ar, %_ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !145
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !120
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.024 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !51
  invoke void @_ZN5arrow18ConcreteFutureImpl6DoWaitEv(ptr noundef nonnull align 8 dereferenceable(160) %i.af)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !113 ; 3 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.024 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, %i.ai
  br i1 %i.ak, label %_ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit, label %bb.e, !prof !58

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !75
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !75
  %.not.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(9) %i.aj, ptr noundef nonnull align 8 dereferenceable(9) %i.ai)
          to label %._ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit_crit_edge unwind label %bb.g

._ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit_crit_edge: ; preds = %bb.f
  %.pre = load ptr, ptr %i.u, align 8, !tbaa !133
  %.pre30 = load ptr, ptr %2, align 8, !tbaa !130
  br label %_ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  tail call void @__clang_call_terminate(ptr %i.ao) #27
  unreachable

_ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit: ; preds = %._ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit_crit_edge, %bb.d, %bb.e
  %i.ap = phi ptr [ %.pre30, %._ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit_crit_edge ], [ %i.aa, %bb.d ], [ %i.aa, %bb.e ] ; 3 uses
  %i.aq = phi ptr [ %.pre, %._ZN5arrow6ResultINS_8internal5EmptyEEaSERKS3_.exit_crit_edge ], [ %i.ab, %bb.d ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ar = add nuw i64 %.024, 1                    ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 4
  %i.aw = icmp ult i64 %i.ar, %i.av
  br i1 %i.aw, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !263

bb.h:                                             ; preds = %.lr.ph
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.i:                                             ; preds = %._crit_edge
  %i.ay = load ptr, ptr %3, align 8, !tbaa !75    ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.j, label %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE7DestroyEv.exit.thread.i, !prof !81

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !130 ; 3 uses
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !133 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.j, %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.bg, %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.ba, %bb.j ] ; 3 uses
  %i.bc = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i.i.i.i, label %bb.k, !prof !81

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !82, !range !26, !noundef !27
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %.05.i.i.i.i.i.i) #24
  br label %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k, %.lr.ph.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.bb
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !134

_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !130
  br label %_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.j
  %i.bh = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.ba, %bb.j ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE7DestroyEv.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.bi = load ptr, ptr %i.z, align 8, !tbaa !135
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #26
  br label %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE7DestroyEv.exit.i: ; preds = %bb.m, %_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !75   ; 2 uses
  %.not.i.i13 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i13, label %_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EED2Ev.exit, label %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE7DestroyEv.exit.thread.i, !prof !247

_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE7DestroyEv.exit.i, %bb.i
  %i.bm = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE7DestroyEv.exit.i ], [ %i.ay, %bb.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !82, !range !26, !noundef !27
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  br label %_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EED2Ev.exit: ; preds = %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE7DestroyEv.exit.thread.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EED2Ev.exit
  ret void

bb.p:                                             ; preds = %._crit_edge
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.h ], [ %i.bq, %bb.p ]
  call void @_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE12MarkFinishedENS2_IS7_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Result.107", align 8 ; 12 uses
  store ptr null, ptr %2, align 8, !tbaa !75
  %i.a = load ptr, ptr %1, align 8, !tbaa !75
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EED2Ev.exit.i, label %bb.b, !prof !81

_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EED2Ev.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !135, !noalias !264
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load <2 x ptr>, ptr %i.c, align 8, !tbaa !267, !noalias !264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !noalias !264
  store <2 x ptr> %i.g, ptr %i.f, align 8, !tbaa !267
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.e, ptr %i.h, align 8, !tbaa !135
  br label %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEEC2IS6_vEEONS0_IT_EE.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEEC2IS6_vEEONS0_IT_EE.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #27
  unreachable

_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEEC2IS6_vEEONS0_IT_EE.exit: ; preds = %_ZNSt6vectorIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EED2Ev.exit.i, %bb.b
  invoke void @_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE14DoMarkFinishedENS2_IS7_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEEC2IS6_vEEONS0_IT_EE.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %_ZN5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE7DestroyEv.exit.thread.i, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !130  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !133  ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN5arrow6ResultINS0_8internal5EmptyEEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.n, %bb.e ] ; 3 uses
  %i.q = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !75 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i.i.i.i, label %bb.f, !prof !81

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !82, !range !26, !noundef !27
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %.05.i.i.i.i.i.i) #24
  br label %_ZSt8_DestroyIN5arrow6ResultINS0_8internal5EmptyEEEEvPT_.exit.i.i.i.i.i.i
end_hunk_6
begin_hunk_7_@"_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE20WrapResultOnComplete8CallbackINS8_14ThenOnCompleteIZNS_11AllFinishedERKS1_INS0_IS4_EESaISC_EEE3$_0NS8_17PassthruOnFailureISH_EEEEED2Ev"
define internal fastcc void @"_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE20WrapResultOnComplete8CallbackINS8_14ThenOnCompleteIZNS_11AllFinishedERKS1_INS0_IS4_EESaISC_EEE3$_0NS8_17PassthruOnFailureISH_EEEEED2Ev"(ptr %.16.val) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i.i.i = icmp eq ptr %.16.val, null
  br i1 %.not.i.i.i.i, label %"_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE14ThenOnCompleteIZNS_11AllFinishedERKS1_INS0_IS4_EESaISA_EEE3$_0NS8_17PassthruOnFailureISF_EEED2Ev.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.16.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %.16.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !55
  %i.f = load ptr, ptr %.16.val, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.16.val) #24, !inline_history !274
  %i.i = load ptr, ptr %.16.val, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.16.val) #24, !inline_history !274
  br label %"_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE14ThenOnCompleteIZNS_11AllFinishedERKS1_INS0_IS4_EESaISA_EEE3$_0NS8_17PassthruOnFailureISF_EEED2Ev.exit"

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.o, label %bb.g, label %"_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE14ThenOnCompleteIZNS_11AllFinishedERKS1_INS0_IS4_EESaISA_EEE3$_0NS8_17PassthruOnFailureISF_EEED2Ev.exit", !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.16.val) #24
  br label %"_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE14ThenOnCompleteIZNS_11AllFinishedERKS1_INS0_IS4_EESaISA_EEE3$_0NS8_17PassthruOnFailureISF_EEED2Ev.exit"

"_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE14ThenOnCompleteIZNS_11AllFinishedERKS1_INS0_IS4_EESaISA_EEE3$_0NS8_17PassthruOnFailureISF_EEED2Ev.exit": ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt6vectorINS_6ResultINS0_5EmptyEEESaISC_EEE20WrapResultOnComplete8CallbackINSF_14ThenOnCompleteIZNS_11AllFinishedERKS9_INS8_ISB_EESaISJ_EEE3$_0NSF_17PassthruOnFailureISO_EEEEEEED2Ev"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt6vectorINS_6ResultINS0_5EmptyEEESaISC_EEE20WrapResultOnComplete8CallbackINSF_14ThenOnCompleteIZNS_11AllFinishedERKS9_INS8_ISB_EESaISJ_EEE3$_0NSF_17PassthruOnFailureISO_EEEEEEEE", i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !tbaa !46  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i.i, label %"_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE20WrapResultOnComplete8CallbackINS8_14ThenOnCompleteIZNS_11AllFinishedERKS1_INS0_IS4_EESaISC_EEE3$_0NS8_17PassthruOnFailureISH_EEEEED2Ev.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !55
  %i.g = load ptr, ptr %.val, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val) #24, !inline_history !275
  %i.j = load ptr, ptr %.val, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val) #24, !inline_history !275
  br label %"_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE20WrapResultOnComplete8CallbackINS8_14ThenOnCompleteIZNS_11AllFinishedERKS1_INS0_IS4_EESaISC_EEE3$_0NS8_17PassthruOnFailureISH_EEEEED2Ev.exit"

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %"_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE20WrapResultOnComplete8CallbackINS8_14ThenOnCompleteIZNS_11AllFinishedERKS1_INS0_IS4_EESaISC_EEE3$_0NS8_17PassthruOnFailureISH_EEEEED2Ev.exit", !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #24
  br label %"_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE20WrapResultOnComplete8CallbackINS8_14ThenOnCompleteIZNS_11AllFinishedERKS1_INS0_IS4_EESaISC_EEE3$_0NS8_17PassthruOnFailureISH_EEEEED2Ev.exit"

"_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE20WrapResultOnComplete8CallbackINS8_14ThenOnCompleteIZNS_11AllFinishedERKS1_INS0_IS4_EESaISC_EEE3$_0NS8_17PassthruOnFailureISH_EEEEED2Ev.exit": ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt6vectorINS_6ResultINS0_5EmptyEEESaISC_EEE20WrapResultOnComplete8CallbackINSF_14ThenOnCompleteIZNS_11AllFinishedERKS9_INS8_ISB_EESaISJ_EEE3$_0NSF_17PassthruOnFailureISO_EEEEEEED0Ev"(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt6vectorINS_6ResultINS0_5EmptyEEESaISC_EEE20WrapResultOnComplete8CallbackINSF_14ThenOnCompleteIZNS_11AllFinishedERKS9_INS8_ISB_EESaISJ_EEE3$_0NSF_17PassthruOnFailureISO_EEEEEEEE", i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !46 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt6vectorINS_6ResultINS0_5EmptyEEESaISC_EEE20WrapResultOnComplete8CallbackINSF_14ThenOnCompleteIZNS_11AllFinishedERKS9_INS8_ISB_EESaISJ_EEE3$_0NSF_17PassthruOnFailureISO_EEEEEEED2Ev.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !55
  %i.g = load ptr, ptr %.val.i, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #24, !inline_history !276
  %i.j = load ptr, ptr %.val.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #24, !inline_history !276
  br label %"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt6vectorINS_6ResultINS0_5EmptyEEESaISC_EEE20WrapResultOnComplete8CallbackINSF_14ThenOnCompleteIZNS_11AllFinishedERKS9_INS8_ISB_EESaISJ_EEE3$_0NSF_17PassthruOnFailureISO_EEEEEEED2Ev.exit"

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt6vectorINS_6ResultINS0_5EmptyEEESaISC_EEE20WrapResultOnComplete8CallbackINSF_14ThenOnCompleteIZNS_11AllFinishedERKS9_INS8_ISB_EESaISJ_EEE3$_0NSF_17PassthruOnFailureISO_EEEEEEED2Ev.exit", !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #24, !inline_history !277
  br label %"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt6vectorINS_6ResultINS0_5EmptyEEESaISC_EEE20WrapResultOnComplete8CallbackINSF_14ThenOnCompleteIZNS_11AllFinishedERKS9_INS8_ISB_EESaISJ_EEE3$_0NSF_17PassthruOnFailureISO_EEEEEEED2Ev.exit"

"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt6vectorINS_6ResultINS0_5EmptyEEESaISC_EEE20WrapResultOnComplete8CallbackINSF_14ThenOnCompleteIZNS_11AllFinishedERKS9_INS8_ISB_EESaISJ_EEE3$_0NSF_17PassthruOnFailureISO_EEEEEEED2Ev.exit": ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE6FnImplINS_6FutureISt6vectorINS_6ResultINS0_5EmptyEEESaISC_EEE20WrapResultOnComplete8CallbackINSF_14ThenOnCompleteIZNS_11AllFinishedERKS9_INS8_ISB_EESaISJ_EEE3$_0NSF_17PassthruOnFailureISO_EEEEEEE6invokeES4_"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 10 uses
  %3 = alloca %"class.arrow::Future", align 16    ; 9 uses
  %4 = alloca %"class.arrow::Future", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.a, align 8, !tbaa !113 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.b = load ptr, ptr %.val, align 8, !tbaa !75
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %i.c, label %_ZNKR5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE10ValueOrDieEv.exit.i.i, label %bb.q, !prof !81

_ZNKR5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE10ValueOrDieEv.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val.i.i = load ptr, ptr %i.e, align 8, !tbaa !267 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val5.i.i = load ptr, ptr %i.f, align 8, !tbaa !267 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load <2 x ptr>, ptr %i.d, align 8, !tbaa !113
  store ptr null, ptr %i.h, align 8, !tbaa !46
  store <2 x ptr> %i.i, ptr %3, align 16, !tbaa !113
  store ptr null, ptr %i.d, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.j = icmp eq ptr %.val.i.i, %.val5.i.i
  br i1 %i.j, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKR5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE10ValueOrDieEv.exit.i.i, %.critedge.i.i.i.i.i
  %.sroa.01.06.i.i.i.i.i = phi ptr [ %i.m, %.critedge.i.i.i.i.i ], [ %.val.i.i, %_ZNKR5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE10ValueOrDieEv.exit.i.i ] ; 3 uses
  %i.k = load ptr, ptr %.sroa.01.06.i.i.i.i.i, align 8, !tbaa !75, !noalias !278
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.critedge.i.i.i.i.i, label %bb.b

.critedge.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.m, %.val5.i.i
  br i1 %i.n, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  store ptr null, ptr %2, align 8, !tbaa !75, !alias.scope !278
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01.06.i.i.i.i.i)
          to label %"_ZZN5arrow11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEENK3$_0clERKS0_INS_6ResultIS3_EESaISB_EE.exit.i.i.i.i" unwind label %bb.p

._crit_edge.i.i.i.i.i:                            ; preds = %.critedge.i.i.i.i.i, %_ZNKR5arrow6ResultISt6vectorINS0_INS_8internal5EmptyEEESaIS4_EEE10ValueOrDieEv.exit.i.i
  store ptr null, ptr %2, align 8, !tbaa !75, !alias.scope !281
  br label %"_ZZN5arrow11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEENK3$_0clERKS0_INS_6ResultIS3_EESaISB_EE.exit.i.i.i.i"

"_ZZN5arrow11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEENK3$_0clERKS0_INS_6ResultIS3_EESaISB_EE.exit.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i, %bb.b
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE12MarkFinishedIS2_vEEvNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %"_ZZN5arrow11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEENK3$_0clERKS0_INS_6ResultIS3_EESaISB_EE.exit.i.i.i.i"
  %i.o = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.d, !prof !81

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !82, !range !26, !noundef !27
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #24
  br label %bb.i

bb.f:                                             ; preds = %"_ZZN5arrow11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEENK3$_0clERKS0_INS_6ResultIS3_EESaISB_EE.exit.i.i.i.i"
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %.not.i4.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i4.i.i.i.i, label %common.resume.i.i, label %bb.g, !prof !81

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !82, !range !26, !noundef !27
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %common.resume.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #24
  br label %common.resume.i.i

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !46   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZNK5arrow6detail14ContinueFuture14IgnoringArgsIfIZNS_11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS7_EEE3$_0S7_JRKS3_INS_6ResultIS6_EESaISE_EEEEEvSt17integral_constantIbLb0EEOT0_OT_DpOT1_.exit.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.y, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !55
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !284
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24, !inline_history !284
  br label %"_ZNK5arrow6detail14ContinueFuture14IgnoringArgsIfIZNS_11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS7_EEE3$_0S7_JRKS3_INS_6ResultIS6_EESaISE_EEEEEvSt17integral_constantIbLb0EEOT0_OT_DpOT1_.exit.i.i"

bb.l:                                             ; preds = %bb.j
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.m ], [ %i.al, %bb.n ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.o, label %"_ZNK5arrow6detail14ContinueFuture14IgnoringArgsIfIZNS_11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS7_EEE3$_0S7_JRKS3_INS_6ResultIS6_EESaISE_EEEEEvSt17integral_constantIbLb0EEOT0_OT_DpOT1_.exit.i.i", !prof !58

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #24
  br label %"_ZNK5arrow6detail14ContinueFuture14IgnoringArgsIfIZNS_11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS7_EEE3$_0S7_JRKS3_INS_6ResultIS6_EESaISE_EEEEEvSt17integral_constantIbLb0EEOT0_OT_DpOT1_.exit.i.i"

bb.p:                                             ; preds = %bb.b
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

common.resume.i.i:                                ; preds = %bb.s, %bb.p, %bb.h, %bb.g, %bb.f
  %.sink.i.i = phi ptr [ %4, %bb.s ], [ %3, %bb.p ], [ %3, %bb.h ], [ %3, %bb.g ], [ %3, %bb.f ]
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.aq, %bb.s ], [ %i.an, %bb.p ], [ %i.s, %bb.h ], [ %i.s, %bb.g ], [ %i.s, %bb.f ]
  call void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.sink.i.i) #24
  resume { ptr, i32 } %common.resume.op.i.i

"_ZNK5arrow6detail14ContinueFuture14IgnoringArgsIfIZNS_11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS7_EEE3$_0S7_JRKS3_INS_6ResultIS6_EESaISE_EEEEEvSt17integral_constantIbLb0EEOT0_OT_DpOT1_.exit.i.i": ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %"_ZNO5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE20WrapResultOnComplete8CallbackINS8_14ThenOnCompleteIZNS_11AllFinishedERKS1_INS0_IS4_EESaISC_EEE3$_0NS8_17PassthruOnFailureISH_EEEEEclERKNS_10FutureImplE.exit"

bb.q:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load <2 x ptr>, ptr %i.d, align 8, !tbaa !113
  store ptr null, ptr %i.ao, align 8, !tbaa !46
  store <2 x ptr> %i.ap, ptr %4, align 16, !tbaa !113
  store ptr null, ptr %i.d, align 8, !tbaa !51
  invoke fastcc void @"_ZNK5arrow6detail14ContinueFutureclINS_6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS8_EEE17PassthruOnFailureIZNS_11AllFinishedERKS4_INS3_IS7_EESaISD_EEE3$_0EEJRKNS_6StatusEES8_SD_EENSt9enable_ifIXaaaaaantsr3std7is_voidIT1_EE5valuentsr9is_futureISO_EE5valuesrT2_8is_emptyntsr3std7is_sameISO_SK_EE5valueEvE4typeESP_OT_DpOT0_"(ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %.val)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  br label %"_ZNO5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE20WrapResultOnComplete8CallbackINS8_14ThenOnCompleteIZNS_11AllFinishedERKS1_INS0_IS4_EESaISC_EEE3$_0NS8_17PassthruOnFailureISH_EEEEEclERKNS_10FutureImplE.exit"

bb.s:                                             ; preds = %bb.q
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

"_ZNO5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE20WrapResultOnComplete8CallbackINS8_14ThenOnCompleteIZNS_11AllFinishedERKS1_INS0_IS4_EESaISC_EEE3$_0NS8_17PassthruOnFailureISH_EEEEEclERKNS_10FutureImplE.exit": ; preds = %"_ZNK5arrow6detail14ContinueFuture14IgnoringArgsIfIZNS_11AllFinishedERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS7_EEE3$_0S7_JRKS3_INS_6ResultIS6_EESaISE_EEEEEvSt17integral_constantIbLb0EEOT0_OT_DpOT1_.exit.i.i", %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZNK5arrow6detail14ContinueFutureclINS_6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS8_EEE17PassthruOnFailureIZNS_11AllFinishedERKS4_INS3_IS7_EESaISD_EEE3$_0EEJRKNS_6StatusEES8_SD_EENSt9enable_ifIXaaaaaantsr3std7is_voidIT1_EE5valuentsr9is_futureISO_EE5valuesrT2_8is_emptyntsr3std7is_sameISO_SK_EE5valueEvE4typeESP_OT_DpOT0_"(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %3 = alloca %"class.arrow::Result", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN5arrow6ResultINS_8internal5EmptyEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(9) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.a = load ptr, ptr %3, align 8, !tbaa !75, !noalias !285
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !81

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow8internal19UninitializedResultEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  %i.c = load ptr, ptr %3, align 8, !tbaa !75, !noalias !285
  %i.d = load ptr, ptr %2, align 8, !tbaa !75, !alias.scope !285
  store ptr %i.d, ptr %3, align 8, !tbaa !75, !noalias !285
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  %storemerge.i = phi ptr [ %i.c, %.noexc ], [ null, %bb.a ]
  store ptr %storemerge.i, ptr %2, align 8, !tbaa !75, !alias.scope !285
  invoke void @_ZN5arrow6FutureINS_8internal5EmptyEE12MarkFinishedIS2_vEEvNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e, !prof !81

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !82, !range !26, !noundef !27
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #24
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.d, %bb.e, %bb.f
  %i.i = load ptr, ptr %3, align 8, !tbaa !75     ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit, label %bb.g, !prof !81

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !82, !range !26, !noundef !27
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %3) #24
  br label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit

_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit:   ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.i:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit6

bb.j:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !75     ; 2 uses
  %.not.i5 = icmp eq ptr %i.o, null
  br i1 %.not.i5, label %_ZN5arrow6StatusD2Ev.exit6, label %bb.k, !prof !81

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !82, !range !26, !noundef !27
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN5arrow6StatusD2Ev.exit6, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #24
  br label %_ZN5arrow6StatusD2Ev.exit6

_ZN5arrow6StatusD2Ev.exit6:                       ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.n, %bb.j ], [ %i.n, %bb.k ], [ %i.n, %bb.l ]
  %i.s = load ptr, ptr %3, align 8, !tbaa !75     ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.s, null
  br i1 %.not.i.i7, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit8, label %bb.m, !prof !81

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit6
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !82, !range !26, !noundef !27
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit8, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %3) #24
  br label %_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit8

_ZN5arrow6ResultINS_8internal5EmptyEED2Ev.exit8:  ; preds = %_ZN5arrow6StatusD2Ev.exit6, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZSt11make_uniqueIN5arrow18ConcreteFutureImplEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!9 = distinct !{!9, !"_ZSt11make_uniqueIN5arrow18ConcreteFutureImplEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!10 = !{!11, !11, i64 0}
!11 = !{!"vtable pointer", !6, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSSt10_Head_baseILm0EPN5arrow10FutureImplELb0EE", !14, i64 0}
!14 = !{!"p1 _ZTSN5arrow10FutureImplE", !15, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSSt6atomicIN5arrow11FutureStateEE", !18, i64 0}
!18 = !{!"_ZTSN5arrow11FutureStateE", !5, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSSt11unique_lockISt5mutexE", !21, i64 0, !22, i64 8}
!21 = !{!"p1 _ZTSSt5mutex", !15, i64 0}
!22 = !{!"bool", !5, i64 0}
!23 = !{!20, !22, i64 8}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{i8 0, i8 2}
!27 = !{}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTS8timespec", !30, i64 0, !30, i64 8}
!30 = !{!"long", !5, i64 0}
!31 = !{!29, !30, i64 8}
!32 = distinct !{!32, !25}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTSN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEE4ImplE", !15, i64 0}
!35 = distinct !{null, null, null}
!36 = !{!37, !37, i64 0}
!37 = !{!"_ZTSN5arrow14ShouldScheduleE", !5, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTSN5arrow8internal8ExecutorE", !15, i64 0}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNSt23enable_shared_from_thisIN5arrow10FutureImplEE16shared_from_thisEv: argument 0"}
!42 = distinct !{!42, !"_ZNSt23enable_shared_from_thisIN5arrow10FutureImplEE16shared_from_thisEv"}
!43 = !{!44, !45, i64 0}
!44 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0}
!45 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!46 = !{!47, !45, i64 0}
!47 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0}
!48 = distinct !{!48, !25}
!49 = !{!50, !14, i64 0}
!50 = !{!"_ZTSSt10__weak_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0, !44, i64 8}
!51 = !{!52, !14, i64 0}
!52 = !{!"_ZTSSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0, !47, i64 8}
!53 = !{!54, !4, i64 8}
!54 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!55 = !{!54, !4, i64 12}
!56 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!57 = !{!5, !5, i64 0}
!58 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!59 = !{!60, !61, i64 8}
!60 = !{!"_ZTSNSt12_Vector_baseIN5arrow10FutureImpl14CallbackRecordESaIS2_EE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!61 = !{!"p1 _ZTSN5arrow10FutureImpl14CallbackRecordE", !15, i64 0}
!62 = !{!60, !61, i64 16}
!63 = !{i64 0, i64 4, !36, i64 8, i64 8, !38}
!64 = distinct !{null, null, null, null}
!65 = !{!66, !15, i64 16}
!66 = !{!"_ZTSSt14_Function_base", !5, i64 0, !15, i64 16}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNKSt8functionIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEEclEv: argument 0"}
!69 = distinct !{!69, !"_ZNKSt8functionIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEEclEv"}
!70 = !{!71, !15, i64 24}
!71 = !{!"_ZTSSt8functionIFN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEEEvEE", !66, i64 0, !15, i64 24}
!72 = distinct !{null}
!73 = !{!74, !74, i64 0}
!74 = !{!"p1 _ZTSN5arrow6FutureINS_8internal5EmptyEEE", !15, i64 0}
!75 = !{!76, !77, i64 0}
!76 = !{!"_ZTSN5arrow6StatusE", !77, i64 0}
!77 = !{!"p1 _ZTSN5arrow6Status5StateE", !15, i64 0}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN5arrow6Status2OKEv: argument 0"}
!80 = distinct !{!80, !"_ZN5arrow6Status2OKEv"}
!81 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!82 = !{!83, !22, i64 1}
!83 = !{!"_ZTSN5arrow6Status5StateE", !84, i64 0, !22, i64 1, !85, i64 8, !88, i64 40}
!84 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!85 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !86, i64 0, !30, i64 8, !5, i64 16}
!86 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !87, i64 0}
!87 = !{!"p1 omnipotent char", !15, i64 0}
!88 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !89, i64 0}
!89 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !90, i64 0, !47, i64 8}
!90 = !{!"p1 _ZTSN5arrow12StatusDetailE", !15, i64 0}
!91 = !{!92, !94}
!92 = distinct !{!92, !93, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIZN5arrow11AllCompleteERKSt6vectorINS1_6FutureINS1_8internal5EmptyEEESaIS6_EEE5StateSaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSI_: argument 0"}
!93 = distinct !{!93, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIZN5arrow11AllCompleteERKSt6vectorINS1_6FutureINS1_8internal5EmptyEEESaIS6_EEE5StateSaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSI_"}
!94 = distinct !{!94, !95, !"_ZSt11make_sharedIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateJmEESt10shared_ptrIT_EDpOT0_: argument 0"}
!95 = distinct !{!95, !"_ZSt11make_sharedIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateJmEESt10shared_ptrIT_EDpOT0_"}
!96 = !{!94}
!97 = !{!98, !30, i64 0}
!98 = !{!"_ZTSSt13__atomic_baseImE", !30, i64 0}
!99 = distinct !{ptr @_ZNSt12__shared_ptrIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateLN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!100 = !{!101, !102, i64 0}
!101 = !{!"_ZTSSt12__shared_ptrIZN5arrow11AllCompleteERKSt6vectorINS0_6FutureINS0_8internal5EmptyEEESaIS5_EEE5StateLN9__gnu_cxx12_Lock_policyE2EE", !102, i64 0, !47, i64 8}
!102 = !{!"p1 _ZTSZN5arrow11AllCompleteERKSt6vectorINS_6FutureINS_8internal5EmptyEEESaIS4_EEE5State", !15, i64 0}
!103 = distinct !{null, ptr @_ZN5arrow10FutureImpl11AddCallbackENS_8internal6FnOnceIFvRKS0_EEENS_15CallbackOptionsE, null, null, null}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN5arrow8internal5Empty8ToResultENS_6StatusE: argument 0"}
!106 = distinct !{!106, !"_ZN5arrow8internal5Empty8ToResultENS_6StatusE"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN5arrow10FutureImpl4MakeEv: argument 0"}
!109 = distinct !{!109, !"_ZN5arrow10FutureImpl4MakeEv"}
!110 = !{!111, !108}
!111 = distinct !{!111, !112, !"_ZSt11make_uniqueIN5arrow18ConcreteFutureImplEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!112 = distinct !{!112, !"_ZSt11make_uniqueIN5arrow18ConcreteFutureImplEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!113 = !{!15, !15, i64 0}
!114 = !{!14, !14, i64 0}
!115 = distinct !{null, null}
!116 = distinct !{ptr @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev, ptr @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!117 = distinct !{ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!118 = !{!119, !74, i64 8}
!119 = !{!"_ZTSNSt12_Vector_baseIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!120 = !{!119, !74, i64 0}
!121 = !{!119, !74, i64 16}
!122 = distinct !{!122, !25}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZNK5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE4ThenIZNS_11AllFinishedERKS1_INS0_IS4_EESaISA_EEE3$_0NS8_17PassthruOnFailureISF_EENS8_14ThenOnCompleteISF_SH_EESA_EET2_T_T0_NS_15CallbackOptionsE: argument 0"}
!125 = distinct !{!125, !"_ZNK5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEE4ThenIZNS_11AllFinishedERKS1_INS0_IS4_EESaISA_EEE3$_0NS8_17PassthruOnFailureISF_EENS8_14ThenOnCompleteISF_SH_EESA_EET2_T_T0_NS_15CallbackOptionsE"}
!126 = distinct !{null, null, ptr @_ZN5arrow10FutureImpl11AddCallbackENS_8internal6FnOnceIFvRKS0_EEENS_15CallbackOptionsE, null, null, null}
!127 = distinct !{ptr @_ZN5arrow6FutureISt6vectorINS_6ResultINS_8internal5EmptyEEESaIS5_EEED2Ev, ptr @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!128 = distinct !{ptr @_ZNSt6vectorIN5arrow6FutureINS0_8internal5EmptyEEESaIS4_EED2Ev, null, null, null, null, ptr @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev, ptr @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!129 = distinct !{!129, !25}
!130 = !{!131, !132, i64 0}
!131 = !{!"_ZTSNSt12_Vector_baseIN5arrow6ResultINS0_8internal5EmptyEEESaIS4_EE17_Vector_impl_dataE", !132, i64 0, !132, i64 8, !132, i64 16}
!132 = !{!"p1 _ZTSN5arrow6ResultINS_8internal5EmptyEEE", !15, i64 0}
!133 = !{!131, !132, i64 8}
!134 = distinct !{!134, !25}
!135 = !{!131, !132, i64 16}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZSt11make_sharedIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateJS5_INS4_IS3_EESaISG_EEEESt10shared_ptrIS7_EDpOT0_: argument 0"}
!138 = distinct !{!138, !"_ZSt11make_sharedIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateJS5_INS4_IS3_EESaISG_EEEESt10shared_ptrIS7_EDpOT0_"}
!139 = !{!140, !137}
!140 = distinct !{!140, !141, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIZN5arrow3AllINS1_8internal5EmptyEEENS1_6FutureISt6vectorINS1_6ResultIT_EESaIS9_EEEES6_INS5_IS8_EESaISD_EEE5StateSaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIS8_ERS8_: argument 0"}
!141 = distinct !{!141, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIZN5arrow3AllINS1_8internal5EmptyEEENS1_6FutureISt6vectorINS1_6ResultIT_EESaIS9_EEEES6_INS5_IS8_EESaISD_EEE5StateSaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIS8_ERS8_"}
!142 = !{!143, !143, i64 0}
!143 = !{!"p1 _ZTSZN5arrow3AllINS_8internal5EmptyEEENS_6FutureISt6vectorINS_6ResultIT_EESaIS7_EEEES4_INS3_IS6_EESaISB_EEE5State", !15, i64 0}
!144 = distinct !{ptr @_ZNSt12__shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateLN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!145 = !{!146, !143, i64 0}
!146 = !{!"_ZTSSt12__shared_ptrIZN5arrow3AllINS0_8internal5EmptyEEENS0_6FutureISt6vectorINS0_6ResultIT_EESaIS8_EEEES5_INS4_IS7_EESaISC_EEE5StateLN9__gnu_cxx12_Lock_policyE2EE", !143, i64 0, !47, i64 8}
!147 = distinct !{null, ptr @_ZN5arrow10FutureImpl11AddCallbackENS_8internal6FnOnceIFvRKS0_EEENS_15CallbackOptionsE, null, null, null}
!148 = distinct !{null, null, null, null, ptr @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev, ptr @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!149 = !{!60, !61, i64 0}
!150 = distinct !{ptr @_ZNSt6vectorIN5arrow10FutureImpl14CallbackRecordESaIS2_EED2Ev, null, null, null, null, null, null, null, null}
!151 = distinct !{!151, !25}
!152 = distinct !{null, null, null, null}
!153 = !{ptr @_ZN5arrow18ConcreteFutureImplD2Ev}
!154 = distinct !{null, null, null, null, null, null, null, null}
!155 = !{!61, !61, i64 0}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZNSt23enable_shared_from_thisIN5arrow10FutureImplEE16shared_from_thisEv: argument 0"}
!158 = distinct !{!158, !"_ZNSt23enable_shared_from_thisIN5arrow10FutureImplEE16shared_from_thisEv"}
!159 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!160 = !{!161, !37, i64 8}
!161 = !{!"_ZTSN5arrow10FutureImpl14CallbackRecordE", !162, i64 0, !169, i64 8}
!162 = !{!"_ZTSN5arrow8internal6FnOnceIFvRKNS_10FutureImplEEEE", !163, i64 0}
!163 = !{!"_ZTSSt10unique_ptrIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplESt14default_deleteIS8_EE", !164, i64 0}
!164 = !{!"_ZTSSt15__uniq_ptr_dataIN5arrow8internal6FnOnceIFvRKNS0_10FutureImplEEE4ImplESt14default_deleteIS8_ELb1ELb1EE", !165, i64 0}
end_hunk_7
