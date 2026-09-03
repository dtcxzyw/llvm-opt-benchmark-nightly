Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/texturesource?download=true
inline.NumInlined: 2115
inline.NumDeleted: 995
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN13TextureSource14processRequestERK14TextureRequest:bb.a
  %i.as = call noundef signext i8 %i.ar(ptr noundef nonnull align 8 dereferenceable(570) %i.ak, i8 noundef signext 10), !inline_history !7
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi i8 [ %i.ao, %bb.l ], [ %i.as, %bb.m ]
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i8 noundef signext %.0.i.i.i)
  %i.au = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW11errorstream.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZN11StreamProxylsIiEERS_OT_.exit, %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %_ZN11StreamProxylsIiEERS_OT_.exit ], [ 0, %_ZTW11errorstream.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK14TextureRequest5printERSo(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp eq i64 %i.g, 32
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.43, i64 noundef 7) ; 0 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !117
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !112
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.k, i64 noundef %i.m)
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.17, i64 noundef 1) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.44, i64 noundef 8) ; 0 uses
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !126  ; 2 uses
  %.not11 = icmp eq ptr %i.q, %i.r
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.46, i64 noundef 1) ; 0 uses
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.sroa.08.012 = phi ptr [ %i.z, %.lr.ph ], [ %i.q, %bb.c ] ; 3 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.17, i64 noundef 1) ; 0 uses
  %i.u = load ptr, ptr %.sroa.08.012, align 8, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !112
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.u, i64 noundef %i.w)
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull @.str.45, i64 noundef 2) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.z, %i.r
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11ResultQueueI14TextureRequestjNSt6thread2idEcEC2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseI9GetResultI14TextureRequestjNSt6thread2idEcESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_ZN9SemaphoreC1Ei(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i32 noundef 0)
          to label %_ZN12MutexedQueueI9GetResultI14TextureRequestjNSt6thread2idEcEEC2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt5dequeI9GetResultI14TextureRequestjNSt6thread2idEcESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(152) %0) #13
  resume { ptr, i32 } %i.c

_ZN12MutexedQueueI9GetResultI14TextureRequestjNSt6thread2idEcEEC2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12MutexedQueueI9GetResultI14TextureRequestjNSt6thread2idEcEED2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @_ZN9SemaphoreD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.a) #13
  tail call void @_ZNSt5dequeI9GetResultI14TextureRequestjNSt6thread2idEcESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #13
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_thread_atexit(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12RequestQueueI14TextureRequestjNSt6thread2idEcE3addERKS0_S2_cP11ResultQueueIS0_jS2_cE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i8 noundef signext %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.GetRequest, align 8          ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #13 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #30
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201, !noalias !311 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !201, !noalias !312 ; 2 uses
  %.not102 = icmp eq ptr %i.d, %i.f
  br i1 %.not102, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !202, !noalias !311
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !203, !noalias !311
  %i.k = load i32, ptr %1, align 8, !tbaa !200
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorI10GetRequestI14TextureRequestjNSt6thread2idEcERS4_PS4_EppEv.exit
  %.sroa.082.0105 = phi ptr [ %i.d, %.lr.ph ], [ %.sroa.082.1, %_ZNSt15_Deque_iteratorI10GetRequestI14TextureRequestjNSt6thread2idEcERS4_PS4_EppEv.exit ] ; 7 uses
  %.sroa.11.0104 = phi ptr [ %i.j, %.lr.ph ], [ %.sroa.11.1, %_ZNSt15_Deque_iteratorI10GetRequestI14TextureRequestjNSt6thread2idEcERS4_PS4_EppEv.exit ] ; 2 uses
  %.sroa.14.0103 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.14.1, %_ZNSt15_Deque_iteratorI10GetRequestI14TextureRequestjNSt6thread2idEcERS4_PS4_EppEv.exit ] ; 2 uses
  %i.n = load i32, ptr %.sroa.082.0105, align 8, !tbaa !200
  %i.o = icmp eq i32 %i.n, %i.k
  br i1 %i.o, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.082.0105, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.082.0105, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !116  ; 3 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !115  ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !116
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !115  ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp eq i64 %i.v, %i.aa
  br i1 %i.ab, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNK14TextureRequestneERKS_.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.am, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i ], [ %i.x, %bb.e ] ; 3 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.al, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i ], [ %i.s, %bb.e ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !112 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !112
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ah = icmp eq i64 %i.ad, 0
  br i1 %i.ah, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.ai = load ptr, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !117
  %i.aj = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !117
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.aj, ptr %i.ai, i64 %i.ad)
  %i.ak = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i, label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.al, %i.r
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK14TextureRequestneERKS_.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !303

_ZNK14TextureRequestneERKS_.exit:                 ; preds = %bb.e, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.082.0105, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !205 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.082.0105, i64 40 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !205 ; 8 uses
  %.not95107 = icmp eq ptr %i.ao, %i.aq           ; 2 uses
  br i1 %.not95107, label %._crit_edge110, label %.lr.ph109

.lr.ph109:                                        ; preds = %_ZNK14TextureRequestneERKS_.exit, %.critedge
  %.sroa.077.0108 = phi ptr [ %i.at, %.critedge ], [ %i.ao, %_ZNK14TextureRequestneERKS_.exit ] ; 3 uses
  %.sroa.04.0.copyload = load i64, ptr %.sroa.077.0108, align 8, !tbaa !95
  %i.ar = icmp eq i64 %.sroa.04.0.copyload, %2
  br i1 %i.ar, label %.thread, label %.critedge

.thread:                                          ; preds = %.lr.ph109
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.077.0108, i64 8
  store i8 %3, ptr %i.as, align 8, !tbaa !208
  br label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE9push_backEOS4_.exit

.critedge:                                        ; preds = %.lr.ph109
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.077.0108, i64 24 ; 2 uses
  %.not95 = icmp eq ptr %i.at, %i.aq
  br i1 %.not95, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.critedge, %_ZNK14TextureRequestneERKS_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.082.0105, i64 48 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !210
  %.not.i.i39 = icmp eq ptr %i.aq, %i.av
  br i1 %.not.i.i39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge110
  store i64 %2, ptr %i.aq, align 8, !tbaa !95
  %.sroa.768.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i8 %3, ptr %.sroa.768.0..sroa_idx, align 8, !tbaa !113
  %.sroa.873.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %4, ptr %.sroa.873.0..sroa_idx, align 8, !tbaa !211
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !212
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store ptr %i.ax, ptr %i.ap, align 8, !tbaa !212
  br label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE9push_backEOS4_.exit

bb.h:                                             ; preds = %._crit_edge110
  %i.ay = ptrtoint ptr %i.aq to i64
  %i.az = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ba = sub i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bb, label %bb.i, label %_ZNKSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #30
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bc = sdiv exact i64 %i.ba, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %i.bd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bc ; 2 uses
  %i.be = icmp ult i64 %i.bd, %i.bc
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 384307168202282325)
  %i.bg = select i1 %i.be, i64 384307168202282325, i64 %i.bf ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bh = mul nuw nsw i64 %i.bg, 24
  %i.bi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bh) #26
          to label %.noexc40 unwind label %bb.k   ; 5 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba ; 3 uses
  store i64 %2, ptr %i.bj, align 8, !tbaa !95
  %.sroa.768.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i8 %3, ptr %.sroa.768.0..sroa_idx69, align 8, !tbaa !113
  %.sroa.873.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %4, ptr %.sroa.873.0..sroa_idx74, align 8, !tbaa !211
  br i1 %.not95107, label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc40, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %i.bi, %.noexc40 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %i.ao, %.noexc40 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !213, !alias.scope !313
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.aq
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !307

_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc40
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bi, %.noexc40 ], [ %i.bl, %.lr.ph.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !210
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.bp) #27
  br label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.bi, ptr %i.an, align 8, !tbaa !214
  store ptr %i.bm, ptr %i.ap, align 8, !tbaa !212
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.bg
  store ptr %i.bq, ptr %i.au, align 8, !tbaa !210
  br label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE9push_backEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #13 ; 0 uses
  br label %bb.x

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i, %bb.d, %bb.c
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.082.0105, i64 56 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %.sroa.11.0104
  br i1 %i.bu, label %bb.l, label %_ZNSt15_Deque_iteratorI10GetRequestI14TextureRequestjNSt6thread2idEcERS4_PS4_EppEv.exit

bb.l:                                             ; preds = %.loopexit
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.14.0103, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !215 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 504
  br label %_ZNSt15_Deque_iteratorI10GetRequestI14TextureRequestjNSt6thread2idEcERS4_PS4_EppEv.exit

_ZNSt15_Deque_iteratorI10GetRequestI14TextureRequestjNSt6thread2idEcERS4_PS4_EppEv.exit: ; preds = %.loopexit, %bb.l
  %.sroa.14.1 = phi ptr [ %i.bv, %bb.l ], [ %.sroa.14.0103, %.loopexit ]
  %.sroa.11.1 = phi ptr [ %i.bx, %bb.l ], [ %.sroa.11.0104, %.loopexit ]
  %.sroa.082.1 = phi ptr [ %i.bw, %bb.l ], [ %i.bt, %.loopexit ] ; 2 uses
  %.not = icmp eq ptr %.sroa.082.1, %i.f
  br i1 %.not, label %._crit_edge, label %bb.c

_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.g, %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %.thread
  %6 = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #13 ; 0 uses
  br label %bb.t

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorI10GetRequestI14TextureRequestjNSt6thread2idEcERS4_PS4_EppEv.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.by = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, i8 0, i64 48, i1 false)
  %i.ca = load i32, ptr %1, align 8, !tbaa !200
  store i32 %i.ca, ptr %5, align 8, !tbaa !200
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.cb)
          to label %_ZN14TextureRequestaSERKS_.exit unwind label %bb.u ; 0 uses

_ZN14TextureRequestaSERKS_.exit:                  ; preds = %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !212 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !210
  %.not.i.i42 = icmp eq ptr %i.cf, %i.ch
  br i1 %.not.i.i42, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN14TextureRequestaSERKS_.exit
  store i64 %2, ptr %i.cf, align 8, !tbaa !95
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %3, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !113
  %.sroa.863.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store ptr %4, ptr %.sroa.863.0..sroa_idx, align 8, !tbaa !211
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !212
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !212
  br label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE9push_backEOS4_.exit57

bb.n:                                             ; preds = %_ZN14TextureRequestaSERKS_.exit
  %i.ck = load ptr, ptr %i.cd, align 8, !tbaa !214 ; 5 uses
  %i.cl = ptrtoint ptr %i.cf to i64
  %i.cm = ptrtoint ptr %i.ck to i64               ; 2 uses
  %i.cn = sub i64 %i.cl, %i.cm                    ; 3 uses
  %i.co = icmp eq i64 %i.cn, 9223372036854775800
  br i1 %i.co, label %bb.o, label %_ZNKSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i43

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #30
          to label %.noexc55 unwind label %bb.v

.noexc55:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i43: ; preds = %bb.n
  %i.cp = sdiv exact i64 %i.cn, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i44 = call i64 @llvm.umax.i64(i64 %i.cp, i64 1)
  %i.cq = add nsw i64 %.sroa.speculated.i.i.i.i44, %i.cp ; 2 uses
  %i.cr = icmp ult i64 %i.cq, %i.cp
  %i.cs = call i64 @llvm.umin.i64(i64 %i.cq, i64 384307168202282325)
  %i.ct = select i1 %i.cr, i64 384307168202282325, i64 %i.cs ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.ct, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.cu = mul nuw nsw i64 %i.ct, 24
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #26
          to label %.noexc56 unwind label %bb.v   ; 5 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i43
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cn ; 3 uses
  store i64 %2, ptr %i.cw, align 8, !tbaa !95
  %.sroa.7.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i8 %3, ptr %.sroa.7.0..sroa_idx60, align 8, !tbaa !113
  %.sroa.863.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr %4, ptr %.sroa.863.0..sroa_idx64, align 8, !tbaa !211
  %.not10.i.i.i.i.i.i46 = icmp eq ptr %i.ck, %i.cf
  br i1 %.not10.i.i.i.i.i.i46, label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i51, label %.lr.ph.i.i.i.i.i.i47

.lr.ph.i.i.i.i.i.i47:                             ; preds = %.noexc56, %.lr.ph.i.i.i.i.i.i47
  %.012.i.i.i.i.i.i48 = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.i47 ], [ %i.cv, %.noexc56 ] ; 2 uses
  %.0911.i.i.i.i.i.i49 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.i47 ], [ %i.ck, %.noexc56 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i48, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i49, i64 24, i1 false), !tbaa.struct !213, !alias.scope !314
  %i.cx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i49, i64 24 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i48, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i50 = icmp eq ptr %i.cx, %i.cf
  br i1 %.not.i.i.i.i.i.i50, label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i51, label %.lr.ph.i.i.i.i.i.i47, !llvm.loop !307

_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i51: ; preds = %.lr.ph.i.i.i.i.i.i47, %.noexc56
  %.0.lcssa.i.i.i.i.i.i52 = phi ptr [ %i.cv, %.noexc56 ], [ %i.cy, %.lr.ph.i.i.i.i.i.i47 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i52, i64 24
  %.not.i23.i.i.i53 = icmp eq ptr %i.ck, null
  br i1 %.not.i23.i.i.i53, label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i54, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i51
  %i.da = load ptr, ptr %i.cg, align 8, !tbaa !210
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.dc) #27
  br label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i54

_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i54: ; preds = %bb.p, %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i51
  store ptr %i.cv, ptr %i.cd, align 8, !tbaa !214
  store ptr %i.cz, ptr %i.ce, align 8, !tbaa !212
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.ct
  store ptr %i.dd, ptr %i.cg, align 8, !tbaa !210
  br label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE9push_backEOS4_.exit57

_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE9push_backEOS4_.exit57: ; preds = %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i54, %bb.m
  invoke void @_ZN12MutexedQueueI10GetRequestI14TextureRequestjNSt6thread2idEcEE9push_backEOS4_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE9push_backEOS4_.exit57
  %i.de = load ptr, ptr %i.cd, align 8, !tbaa !214 ; 3 uses
  %.not.i.i.i.i58 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i58, label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load ptr, ptr %i.cg, align 8, !tbaa !210
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.di) #27
  br label %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EED2Ev.exit.i

_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EED2Ev.exit.i: ; preds = %bb.r, %bb.q
  %i.dj = load ptr, ptr %i.bz, align 8, !tbaa !115 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !116 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.dj, %i.dl
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.dr, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.dj, %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EED2Ev.exit.i ] ; 3 uses
  %i.dm = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !117 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !113
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dr, %i.dl
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bz, align 8, !tbaa !115
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EED2Ev.exit.i
  %i.ds = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.dj, %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i1.i.i.i, label %_ZN10GetRequestI14TextureRequestjNSt6thread2idEcED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !119
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #27
  br label %_ZN10GetRequestI14TextureRequestjNSt6thread2idEcED2Ev.exit

_ZN10GetRequestI14TextureRequestjNSt6thread2idEcED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE9push_backEOS4_.exit, %_ZN10GetRequestI14TextureRequestjNSt6thread2idEcED2Ev.exit
  ret void

bb.u:                                             ; preds = %._crit_edge
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %_ZNKSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i43, %bb.o, %_ZNSt6vectorI10CallerInfoINSt6thread2idEc14TextureRequestjESaIS4_EE9push_backEOS4_.exit57
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn36 = phi { ptr, i32 } [ %i.dz, %bb.v ], [ %i.dy, %bb.u ]
  call void @_ZN10GetRequestI14TextureRequestjNSt6thread2idEcED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.k
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %bb.w ], [ %i.br, %bb.k ]
  resume { ptr, i32 } %.pn36.pn
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12MutexedQueueI9GetResultI14TextureRequestjNSt6thread2idEcEE9pop_frontEj(ptr dead_on_unwind noalias writable sret(%class.GetResult) align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::allocator.58", align 1 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.b = tail call noundef zeroext i1 @_ZN9Semaphore4waitEj(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef %2)
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.d = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #30
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !219, !noalias !317 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !200
  store i32 %i.g, ptr %0, align 8, !tbaa !200
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !126
  store <2 x ptr> %i.j, ptr %i.h, align 8, !tbaa !126
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !119
  store ptr %i.m, ptr %i.k, align 8, !tbaa !119
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.n, ptr noundef nonnull align 8 dereferenceable(17) %i.o, i64 17, i1 false)
  tail call void @_ZNSt5dequeI9GetResultI14TextureRequestjNSt6thread2idEcESaIS4_EE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #13
  %i.p = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #13 ; 0 uses
  ret void

bb.d:                                             ; preds = %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 40) #13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @_ZN21ItemNotFoundExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %3)
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTI21ItemNotFoundException, ptr nonnull @_ZN13BaseExceptionD2Ev) #30
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %3, align 8, !tbaa !117    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.v = load i64, ptr %i.t, align 8, !tbaa !113
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @__cxa_free_exception(ptr %i.q) #13
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.g
  %.pn10 = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.x, %bb.g ]
  resume { ptr, i32 } %.pn10

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9GetResultI14TextureRequestjNSt6thread2idEcED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !116  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !117 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !113
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !115
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN14TextureRequestD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !119
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #27
  br label %_ZN14TextureRequestD2Ev.exit

_ZN14TextureRequestD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #15

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN13TextureSource12getTextureIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.TextureRequest, align 8     ; 9 uses
  %3 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #13 ; 2 uses
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #30
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.e = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit unwind label %bb.c ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #13 ; 0 uses
  br label %bb.q

bb.d:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
end_hunk_0
