inline.NumInlined: 3991
inline.NumDeleted: 1270
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNSt12__shared_ptrIN7rocksdb11RateLimiterELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_:bb.a
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #26, !inline_history !252
  br label %_ZNSt12__shared_ptrIN7rocksdb11RateLimiterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !160
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.l ], [ %i.ad, %bb.m ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.n, label %_ZNSt12__shared_ptrIN7rocksdb11RateLimiterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #26
  br label %_ZNSt12__shared_ptrIN7rocksdb11RateLimiterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb11RateLimiterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7rocksdb11RateLimiterELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void
}

declare noundef ptr @_ZN7rocksdb21NewGenericRateLimiterElliNS_11RateLimiter4ModeEbl(i64 noundef, i64 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #7

declare noundef i64 @_ZN7rocksdb11ParseUint64ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7rocksdb11RateLimiterELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7rocksdb11RateLimiterELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !653  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !85
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt15_Sp_counted_ptrIPN7rocksdb11RateLimiterELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt15_Sp_counted_ptrIPN7rocksdb11RateLimiterELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFN7rocksdb6StatusERKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_PvENS0_3$_4EE9_M_invokeERKSt9_Any_dataS4_SC_SC_OSD_"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(address) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.rocksdb::ConfigOptions", align 8 ; 13 uses
  %7 = alloca %"class.std::vector.110", align 8   ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %11 = alloca %"class.std::shared_ptr.195", align 8 ; 9 uses
  %12 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %.val = load ptr, ptr %5, align 8, !tbaa !53
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !665
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull readonly align 8 dereferenceable(80) %2, i64 5, i1 false), !noalias !665
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !39, !noalias !665
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20, !noalias !665 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40, !noalias !665 ; 8 uses
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %bb.b, label %._crit_edge.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %.noexc.i.i.i.i.i, label %bb.c

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.247) #29, !noalias !665
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %.noexc6.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !57

.noexc6.i.i.i.i.i:                                ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #29, !noalias !665
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.l = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #27, !noalias !665 ; 2 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !20, !noalias !665
  store i64 %i.g, ptr %i.d, align 8, !tbaa !24, !noalias !665
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, %bb.a
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.n = load i8, ptr %i.e, align 1, !tbaa !24, !noalias !665
  store i8 %i.n, ptr %i.m, align 1, !tbaa !24, !noalias !665
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.e, i64 %i.g, i1 false), !noalias !665
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.g, ptr %i.o, align 8, !tbaa !40, !noalias !665
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !24, !noalias !665
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !665
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !159, !noalias !665 ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.t, align 8, !tbaa !53, !noalias !665
  store <2 x ptr> %i.x, ptr %i.s, align 8, !tbaa !53, !noalias !665
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7rocksdb13ConfigOptionsC2ERKS0_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24, !noalias !665
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !160, !noalias !665
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !160, !noalias !665
  br label %_ZN7rocksdb13ConfigOptionsC2ERKS0_.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4, !noalias !665 ; 0 uses
  br label %_ZN7rocksdb13ConfigOptionsC2ERKS0_.exit.i.i.i

_ZN7rocksdb13ConfigOptionsC2ERKS0_.exit.i.i.i:    ; preds = %bb.h, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 1, ptr %i.ad, align 1, !tbaa !666, !noalias !665
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26, !noalias !665
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !665
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !475, !alias.scope !665
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !665
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !665
  invoke void @_ZN7rocksdb14OptionTypeInfo16StripOuterBracesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread.i.i.i, !noalias !665

bb.i:                                             ; preds = %_ZN7rocksdb13ConfigOptionsC2ERKS0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !665
  store i64 0, ptr %i.a, align 8, !tbaa !169, !noalias !665
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %0, %10
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %.not.i18.i.i.i = icmp eq ptr %0, %12
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 1
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 5 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.i
  %.pre15.i.i.i45 = phi ptr [ null, %bb.i ], [ %.pre15.i.i.i46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ] ; 7 uses
  %i.ay = phi i8 [ 0, %bb.i ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ] ; 3 uses
  %i.az = phi i64 [ 0, %bb.i ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ]
  %.012.i.i.i = phi i64 [ 0, %bb.i ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ] ; 2 uses
  %i.ba = phi <4 x i8> [ zeroinitializer, %bb.i ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ] ; 7 uses
  %i.bb = load i64, ptr %i.af, align 8, !tbaa !40, !noalias !665
  %i.bc = icmp ult i64 %.012.i.i.i, %i.bb
  %i.bd = icmp ne i64 %i.az, -1
  %or.cond.i.i.i = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond.i.i.i, label %bb.k, label %bb.aj

.critedge.i.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  store i8 %.pr.i.i.i9, ptr %0, align 8
  store <4 x i8> %i.dr, ptr %i.aj, align 1
  store i8 %i.dq, ptr %i.ap, align 1
  store ptr %.pre15.i.i.i46, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !665
  br label %bb.al

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread.i.i.i: ; preds = %_ZN7rocksdb13ConfigOptionsC2ERKS0_.exit.i.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !665
  br label %_ZN7rocksdb6StatusD2Ev.exit43.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !665
  store ptr %i.ag, ptr %9, align 8, !tbaa !39, !noalias !665
  store i64 0, ptr %i.ah, align 8, !tbaa !40, !noalias !665
  store i8 0, ptr %i.ag, align 8, !tbaa !24, !noalias !665
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !665
  invoke void @_ZN7rocksdb14OptionTypeInfo9NextTokenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcmPmPS6_(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %8, i8 noundef signext 58, i64 noundef %.012.i.i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %9)
          to label %bb.l unwind label %bb.x, !noalias !665

bb.l:                                             ; preds = %bb.k
  %.pre13.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !317, !noalias !665 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i8, ptr %10, align 8, !tbaa !673, !noalias !665 ; 2 uses
  %i.bg = load <4 x i8>, ptr %i.ai, align 1, !tbaa !24, !noalias !665 ; 2 uses
  store <4 x i8> zeroinitializer, ptr %10, align 8, !tbaa !24, !noalias !665
  store i8 0, ptr %i.am, align 4, !tbaa !392, !noalias !665
  %i.bh = load i8, ptr %i.ao, align 1, !tbaa !24, !noalias !665 ; 2 uses
  store i8 0, ptr %i.ao, align 1, !tbaa !393, !noalias !665
  store ptr null, ptr %i.aq, align 8, !tbaa !317, !noalias !665
  %.not.i.i.i.i.i17.i.i.i = icmp eq ptr %.pre15.i.i.i45, null
  br i1 %.not.i.i.i.i.i17.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %.pre15.i.i.i45) #25, !noalias !665
  %.pre.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !317, !noalias !665
  br label %_ZN7rocksdb6StatusaSEOS0_.exit.i.i.i

_ZN7rocksdb6StatusaSEOS0_.exit.i.i.i:             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i, %bb.l
  %.pre15.i.i.i42 = phi ptr [ %.pre15.i.i.i45, %bb.l ], [ %.pre13.i.i.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bi = phi i8 [ %i.ay, %bb.l ], [ %i.bh, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.pr.i.i.i5 = phi i8 [ 0, %bb.l ], [ %i.bf, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bj = phi ptr [ %.pre13.i.i.i, %bb.l ], [ %.pre.i.i.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bk = phi <4 x i8> [ %i.ba, %bb.l ], [ %i.bg, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #25, !noalias !665
  br label %_ZN7rocksdb6StatusD2Ev.exit.i.i.i

_ZN7rocksdb6StatusD2Ev.exit.i.i.i:                ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit.i.i.i, %bb.m
  %.pre15.i.i.i47 = phi ptr [ %.pre15.i.i.i42, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ], [ %.pre15.i.i.i42, %_ZN7rocksdb6StatusaSEOS0_.exit.i.i.i ], [ %.pre13.i.i.i, %bb.m ] ; 6 uses
  %i.bl = phi i8 [ %i.bi, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ], [ %i.bi, %_ZN7rocksdb6StatusaSEOS0_.exit.i.i.i ], [ %i.bh, %bb.m ] ; 3 uses
  %.pr.i.i.i10 = phi i8 [ %.pr.i.i.i5, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ], [ %.pr.i.i.i5, %_ZN7rocksdb6StatusaSEOS0_.exit.i.i.i ], [ %i.bf, %bb.m ] ; 2 uses
  %i.bm = phi <4 x i8> [ %i.bk, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ], [ %i.bk, %_ZN7rocksdb6StatusaSEOS0_.exit.i.i.i ], [ %i.bg, %bb.m ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !665
  %i.bn = icmp ne i8 %.pr.i.i.i10, 0
  %i.bo = load i64, ptr %i.ah, align 8, !noalias !665
  %i.bp = icmp eq i64 %i.bo, 0
  %or.cond6.i.i.i = select i1 %i.bn, i1 true, i1 %i.bp
  br i1 %or.cond6.i.i.i, label %bb.ah, label %bb.n

bb.n:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26, !noalias !665
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false), !noalias !665
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26, !noalias !665
  invoke void @_ZN7rocksdb13EventListener16CreateFromStringERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt10shared_ptrIS0_E(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %11)
          to label %bb.o unwind label %bb.y, !noalias !665

bb.o:                                             ; preds = %bb.n
  %.pre15.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !317, !noalias !665 ; 3 uses
  br i1 %.not.i18.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit21.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = load i8, ptr %12, align 8, !tbaa !673, !noalias !665 ; 2 uses
  %i.br = load <4 x i8>, ptr %i.ar, align 1, !tbaa !24, !noalias !665 ; 2 uses
  store <4 x i8> zeroinitializer, ptr %12, align 8, !tbaa !24, !noalias !665
  store i8 0, ptr %i.as, align 4, !tbaa !392, !noalias !665
  %i.bs = load i8, ptr %i.at, align 1, !tbaa !24, !noalias !665 ; 2 uses
  store i8 0, ptr %i.at, align 1, !tbaa !393, !noalias !665
  store ptr null, ptr %i.au, align 8, !tbaa !317, !noalias !665
  %.not.i.i.i.i.i19.i.i.i = icmp eq ptr %.pre15.i.i.i47, null
  br i1 %.not.i.i.i.i.i19.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit24.i.i.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i20.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i20.i.i.i: ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %.pre15.i.i.i47) #25, !noalias !665
  %.pre14.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !317, !noalias !665
  br label %_ZN7rocksdb6StatusaSEOS0_.exit21.i.i.i

_ZN7rocksdb6StatusaSEOS0_.exit21.i.i.i:           ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i20.i.i.i, %bb.o
  %.pre15.i.i.i44 = phi ptr [ %.pre15.i.i.i47, %bb.o ], [ %.pre15.i.i.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i20.i.i.i ] ; 2 uses
  %i.bt = phi i8 [ %i.bl, %bb.o ], [ %i.bs, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i20.i.i.i ] ; 2 uses
  %.pr.i.i.i7 = phi i8 [ 0, %bb.o ], [ %i.bq, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i20.i.i.i ] ; 2 uses
  %i.bu = phi ptr [ %.pre15.i.i.i, %bb.o ], [ %.pre14.i.i.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i20.i.i.i ] ; 2 uses
  %i.bv = phi <4 x i8> [ %i.bm, %bb.o ], [ %i.br, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i20.i.i.i ] ; 2 uses
  %.not.i.i22.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i22.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit24.i.i.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i23.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i23.i.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit21.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #25, !noalias !665
  br label %_ZN7rocksdb6StatusD2Ev.exit24.i.i.i

_ZN7rocksdb6StatusD2Ev.exit24.i.i.i:              ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i23.i.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit21.i.i.i, %bb.p
  %.pre15.i.i.i43 = phi ptr [ %.pre15.i.i.i44, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i23.i.i.i ], [ %.pre15.i.i.i44, %_ZN7rocksdb6StatusaSEOS0_.exit21.i.i.i ], [ %.pre15.i.i.i, %bb.p ] ; 3 uses
  %i.bw = phi i8 [ %i.bt, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i23.i.i.i ], [ %i.bt, %_ZN7rocksdb6StatusaSEOS0_.exit21.i.i.i ], [ %i.bs, %bb.p ] ; 2 uses
  %.pr.i.i.i6 = phi i8 [ %.pr.i.i.i7, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i23.i.i.i ], [ %.pr.i.i.i7, %_ZN7rocksdb6StatusaSEOS0_.exit21.i.i.i ], [ %i.bq, %bb.p ] ; 2 uses
  %i.bx = phi <4 x i8> [ %i.bv, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i23.i.i.i ], [ %i.bv, %_ZN7rocksdb6StatusaSEOS0_.exit21.i.i.i ], [ %i.br, %bb.p ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !665
  %i.by = icmp eq i8 %.pr.i.i.i6, 0
  br i1 %i.by, label %bb.q, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE9push_backERKS3_.exit.i.i.i

bb.q:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit24.i.i.i
  %i.bz = load ptr, ptr %11, align 8, !tbaa !674, !noalias !665 ; 2 uses
  %.not.i25.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i25.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE9push_backERKS3_.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = load ptr, ptr %i.av, align 8, !tbaa !180, !noalias !665 ; 6 uses
  %i.cb = load ptr, ptr %i.aw, align 8, !tbaa !182, !noalias !665
  %.not.i26.i.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not.i26.i.i.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !674, !noalias !665
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load ptr, ptr %i.ax, align 8, !tbaa !159, !noalias !665 ; 3 uses
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !159, !noalias !665
  %.not.i.i.i.i.i27.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i.i27.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24, !noalias !665
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !160, !noalias !665
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !160, !noalias !665
  br label %_ZSt12construct_atISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ci = atomicrmw volatile add ptr %i.ce, i32 1 acq_rel, align 4, !noalias !665 ; 0 uses
  %.pre.i.i.i.i = load ptr, ptr %i.av, align 8, !tbaa !180, !noalias !665
  br label %_ZSt12construct_atISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i.i.i

_ZSt12construct_atISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i.i.i: ; preds = %bb.v, %bb.u, %bb.s
  %i.cj = phi ptr [ %i.ca, %bb.s ], [ %i.ca, %bb.u ], [ %.pre.i.i.i.i, %bb.v ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %i.ck, ptr %i.av, align 8, !tbaa !180, !noalias !665
  br label %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE9push_backERKS3_.exit.i.i.i

bb.w:                                             ; preds = %bb.r
  invoke void @_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE9push_backERKS3_.exit.i.i.i unwind label %bb.z, !noalias !665

bb.x:                                             ; preds = %bb.k
  %i.cl = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %0, align 8
  %i.cm = extractelement <4 x i8> %i.ba, i64 0
  store i8 %i.cm, ptr %i.aj, align 1
  %i.cn = extractelement <4 x i8> %i.ba, i64 1
  store i8 %i.cn, ptr %i.ak, align 2
  %i.co = extractelement <4 x i8> %i.ba, i64 2
  store i8 %i.co, ptr %i.al, align 1
  %i.cp = extractelement <4 x i8> %i.ba, i64 3
  store i8 %i.cp, ptr %i.an, align 4
  store i8 %i.ay, ptr %i.ap, align 1
  store ptr %.pre15.i.i.i45, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !665
  br label %bb.ai

bb.y:                                             ; preds = %bb.n
  %i.cq = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %0, align 8
  %i.cr = extractelement <4 x i8> %i.bm, i64 0
  store i8 %i.cr, ptr %i.aj, align 1
  %i.cs = extractelement <4 x i8> %i.bm, i64 1
  store i8 %i.cs, ptr %i.ak, align 2
  %i.ct = extractelement <4 x i8> %i.bm, i64 2
  store i8 %i.ct, ptr %i.al, align 1
  %i.cu = extractelement <4 x i8> %i.bm, i64 3
  store i8 %i.cu, ptr %i.an, align 4
  store i8 %i.bl, ptr %i.ap, align 1
  store ptr %.pre15.i.i.i47, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26, !noalias !665
  br label %bb.ag

bb.z:                                             ; preds = %bb.w
  %i.cv = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %0, align 8
  %i.cw = extractelement <4 x i8> %i.bx, i64 0
  store i8 %i.cw, ptr %i.aj, align 1
  %i.cx = extractelement <4 x i8> %i.bx, i64 1
  store i8 %i.cx, ptr %i.ak, align 2
  %i.cy = extractelement <4 x i8> %i.bx, i64 2
  store i8 %i.cy, ptr %i.al, align 1
  %i.cz = extractelement <4 x i8> %i.bx, i64 3
  store i8 %i.cz, ptr %i.an, align 4
  store i8 %i.bw, ptr %i.ap, align 1
  store ptr %.pre15.i.i.i43, ptr %i.ae, align 8
  br label %bb.ag

_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE9push_backERKS3_.exit.i.i.i: ; preds = %bb.w, %_ZSt12construct_atISt10shared_ptrIN7rocksdb13EventListenerEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i.i.i.i, %bb.q, %_ZN7rocksdb6StatusD2Ev.exit24.i.i.i
  %i.da = load ptr, ptr %i.ax, align 8, !tbaa !159, !noalias !665 ; 8 uses
  %.not.i.i28.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i28.i.i.i, label %_ZNSt12__shared_ptrIN7rocksdb13EventListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE9push_backERKS3_.exit.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8, !noalias !665 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.db, align 8, !tbaa !231, !noalias !665
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  store i32 0, ptr %i.df, align 4, !tbaa !233, !noalias !665
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !85, !noalias !665
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !665
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #26, !noalias !665, !inline_history !677
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !85, !noalias !665
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !665
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #26, !noalias !665, !inline_history !677
  br label %_ZNSt12__shared_ptrIN7rocksdb13EventListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24, !noalias !665
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 8, !tbaa !160, !noalias !665
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4, !noalias !665
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.de, %bb.ad ], [ %i.do, %bb.ae ]
  %i.dp = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dp, label %bb.af, label %_ZNSt12__shared_ptrIN7rocksdb13EventListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, !prof !57

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da) #26, !noalias !665
  br label %_ZNSt12__shared_ptrIN7rocksdb13EventListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i

_ZNSt12__shared_ptrIN7rocksdb13EventListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ab, %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE9push_backERKS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !665
  br label %bb.ah

bb.ag:                                            ; preds = %bb.z, %bb.y
  %.pr1.i.i.i112 = phi ptr [ %.pre15.i.i.i43, %bb.z ], [ %.pre15.i.i.i47, %bb.y ]
  %.pn.i.i.i = phi { ptr, i32 } [ %i.cv, %bb.z ], [ %i.cq, %bb.y ]
  call void @_ZNSt12__shared_ptrIN7rocksdb13EventListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #26, !noalias !665
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26, !noalias !665
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNSt12__shared_ptrIN7rocksdb13EventListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %_ZN7rocksdb6StatusD2Ev.exit.i.i.i
  %.pre15.i.i.i46 = phi ptr [ %.pre15.i.i.i43, %_ZNSt12__shared_ptrIN7rocksdb13EventListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i ], [ %.pre15.i.i.i47, %_ZN7rocksdb6StatusD2Ev.exit.i.i.i ] ; 2 uses
  %i.dq = phi i8 [ %i.bw, %_ZNSt12__shared_ptrIN7rocksdb13EventListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i ], [ %i.bl, %_ZN7rocksdb6StatusD2Ev.exit.i.i.i ] ; 2 uses
  %.pr.i.i.i9 = phi i8 [ %.pr.i.i.i6, %_ZNSt12__shared_ptrIN7rocksdb13EventListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i ], [ %.pr.i.i.i10, %_ZN7rocksdb6StatusD2Ev.exit.i.i.i ] ; 2 uses
  %i.dr = phi <4 x i8> [ %i.bx, %_ZNSt12__shared_ptrIN7rocksdb13EventListenerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i ], [ %i.bm, %_ZN7rocksdb6StatusD2Ev.exit.i.i.i ] ; 2 uses
  %i.ds = load ptr, ptr %9, align 8, !tbaa !20, !noalias !665 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ag
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ah
  %i.du = load i64, ptr %i.ag, align 8, !tbaa !24, !noalias !665
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #25, !noalias !665
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !665
  %i.dw = load i64, ptr %i.a, align 8, !tbaa !169, !noalias !665 ; 2 uses
  %i.dx = add i64 %i.dw, 1
  %i.dy = icmp eq i8 %.pr.i.i.i9, 0
  br i1 %i.dy, label %bb.j, label %.critedge.i.i.i, !llvm.loop !678

bb.ai:                                            ; preds = %bb.ag, %bb.x
  %.pr1.i.i.i111 = phi ptr [ %.pr1.i.i.i112, %bb.ag ], [ %.pre15.i.i.i45, %bb.x ]
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.ag ], [ %i.cl, %bb.x ]
  %i.dz = load ptr, ptr %9, align 8, !tbaa !20, !noalias !665 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.ag
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i.i.i: ; preds = %bb.ai
  %i.eb = load i64, ptr %i.ag, align 8, !tbaa !24, !noalias !665
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #25, !noalias !665
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !665
  br label %bb.az

bb.aj:                                            ; preds = %bb.j
  %13 = shufflevector <4 x i8> %i.ba, <4 x i8> <i8 0, i8 poison, i8 poison, i8 poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  store <4 x i8> %13, ptr %0, align 8
  %14 = extractelement <4 x i8> %i.ba, i64 3
  store i8 %14, ptr %i.an, align 4
  store i8 %i.ay, ptr %i.ap, align 1
  store ptr %.pre15.i.i.i45, ptr %i.ae, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !665
  %i.ed = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %.val, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.al unwind label %bb.ak, !noalias !665 ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.al:                                            ; preds = %bb.aj, %.critedge.i.i.i
  %i.ef = load ptr, ptr %8, align 8, !tbaa !20, !noalias !665 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i.i: ; preds = %bb.al
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !24, !noalias !665
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #25, !noalias !665
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !665
  %i.ek = load ptr, ptr %7, align 8, !tbaa !181, !noalias !665 ; 3 uses
  %i.el = load ptr, ptr %i.av, align 8, !tbaa !180, !noalias !665 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ek, %i.el
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i, %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.fd, %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i.i.i.i.i ], [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !159, !noalias !665 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 4 uses
  %i.ep = load atomic i64, ptr %i.eo acquire, align 8, !noalias !665 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 4294967297
  %i.er = trunc i64 %i.ep to i32                  ; 2 uses
  br i1 %i.eq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.eo, align 8, !tbaa !231, !noalias !665
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 0, ptr %i.es, align 4, !tbaa !233, !noalias !665
  %i.et = load ptr, ptr %i.en, align 8, !tbaa !85, !noalias !665
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !665
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #26, !noalias !665, !inline_history !679
  %i.ew = load ptr, ptr %i.en, align 8, !tbaa !85, !noalias !665
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !665
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #26, !noalias !665, !inline_history !679
  br label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.ez = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24, !noalias !665
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fa = add nsw i32 %i.er, -1
  store i32 %i.fa, ptr %i.eo, align 8, !tbaa !160, !noalias !665
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.fb = atomicrmw volatile add ptr %i.eo, i32 -1 acq_rel, align 4, !noalias !665
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.er, %bb.ap ], [ %i.fb, %bb.aq ]
  %i.fc = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.fc, label %bb.ar, label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i.i.i.i.i, !prof !57

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.en) #26, !noalias !665
  br label %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.an, %.lr.ph.i.i.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i35.i.i.i = icmp eq ptr %i.fd, %i.el
  br i1 %.not.i.i.i35.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !246

_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN7rocksdb13EventListenerEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %7, align 8, !tbaa !181, !noalias !665
  br label %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i
  %i.fe = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EED2Ev.exit.i.i.i, label %bb.as

bb.as:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  %i.ff = load ptr, ptr %i.aw, align 8, !tbaa !182, !noalias !665
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %i.fe to i64
  %i.fi = sub i64 %i.fg, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fi) #25, !noalias !665
  br label %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EED2Ev.exit.i.i.i

_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EED2Ev.exit.i.i.i: ; preds = %bb.as, %_ZSt8_DestroyIPSt10shared_ptrIN7rocksdb13EventListenerEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !665
  %i.fj = load ptr, ptr %i.u, align 8, !tbaa !159, !noalias !665 ; 8 uses
  %.not.i.i.i36.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i36.i.i.i, label %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EED2Ev.exit.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 4 uses
  %i.fl = load atomic i64, ptr %i.fk acquire, align 8, !noalias !665 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 4294967297
  %i.fn = trunc i64 %i.fl to i32                  ; 2 uses
  br i1 %i.fm, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.fk, align 8, !tbaa !231, !noalias !665
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !233, !noalias !665
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !85, !noalias !665
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !665
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #26, !noalias !665, !inline_history !680
  %i.fs = load ptr, ptr %i.fj, align 8, !tbaa !85, !noalias !665
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !665
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #26, !noalias !665, !inline_history !680
  br label %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24, !noalias !665
  %.not.i.i.i.i37.i.i.i = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i.i37.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fw = add nsw i32 %i.fn, -1
  store i32 %i.fw, ptr %i.fk, align 8, !tbaa !160, !noalias !665
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.fx = atomicrmw volatile add ptr %i.fk, i32 -1 acq_rel, align 4, !noalias !665
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fn, %bb.aw ], [ %i.fx, %bb.ax ]
  %i.fy = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fy, label %bb.ay, label %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, !prof !57

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #26, !noalias !665
  br label %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i

_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i: ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.au, %_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EED2Ev.exit.i.i.i
  %i.fz = load ptr, ptr %i.b, align 8, !tbaa !20, !noalias !665 ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.d
  br i1 %i.ga, label %"_ZSt10__invoke_rIN7rocksdb6StatusERNS0_3$_4EJRKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_PvEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i
  %i.gb = load i64, ptr %i.d, align 8, !tbaa !24, !noalias !665
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #25, !noalias !665
  br label %"_ZSt10__invoke_rIN7rocksdb6StatusERNS0_3$_4EJRKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_PvEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit"

bb.az:                                            ; preds = %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i.i.i
  %.pr1.i.i.i = phi ptr [ %.pr1.i.i.i111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i.i.i ], [ %.pre15.i.i.i45, %bb.ak ] ; 2 uses
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i.i.i ], [ %i.ee, %bb.ak ] ; 2 uses
  %i.gd = load ptr, ptr %8, align 8, !tbaa !20, !noalias !665 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i.i.i: ; preds = %bb.az
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !24, !noalias !665
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #25, !noalias !665
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !665
  %.not.i.i41.i.i.i = icmp eq ptr %.pr1.i.i.i, null
  br i1 %.not.i.i41.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit43.i.i.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i42.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i42.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pr1.i.i.i) #25, !noalias !665
  br label %_ZN7rocksdb6StatusD2Ev.exit43.i.i.i

_ZN7rocksdb6StatusD2Ev.exit43.i.i.i:              ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i42.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread.i.i.i
  %.pn.pn.pn.pn4.i.i.i = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.thread.i.i.i ], [ %.pn.pn.pn.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40.i.i.i ], [ %.pn.pn.pn.i.i.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i42.i.i.i ]
  call void @_ZNSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #26, !noalias !665
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26, !noalias !665
  call void @_ZN7rocksdb13ConfigOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %6) #26, !noalias !665
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !665
  resume { ptr, i32 } %.pn.pn.pn.pn4.i.i.i

"_ZSt10__invoke_rIN7rocksdb6StatusERNS0_3$_4EJRKNS0_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_PvEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESH_E4typeEOSI_DpOSJ_.exit": ; preds = %_ZNSt12__shared_ptrIN7rocksdb14ObjectRegistryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !665
  ret void
}

end_hunk_0
