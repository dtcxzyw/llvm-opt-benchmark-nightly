inline.NumInlined: 461
inline.NumDeleted: 300
begin_hunk_0_@_ZN8facebook5velox5cache11ScanTracker15recordReferenceENS1_10TrackingIdEmmm:bb.a
bb.a:
  %5 = alloca %"struct.std::pair.10", align 8     ; 4 uses
  %6 = alloca %"class.std::tuple", align 8        ; 4 uses
  %7 = alloca %"class.std::tuple.13", align 1     ; 3 uses
  %8 = alloca %"class.facebook::velox::cache::TrackingId", align 4 ; 3 uses
  store i32 %1, ptr %8, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #25
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !7
  store ptr %8, ptr %6, align 8, !tbaa !10, !alias.scope !13, !noalias !7
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !7
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.d) ; 2 uses
  %i.f = lshr i64 %i.e, 24
  %i.g = or i64 %i.f, 128
  %i.h = add nsw i64 %i.e, %i.d
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache10TrackingIdENS6_12TrackingDataEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKSt21piecewise_construct_tSt5tupleIJRKS7_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.10") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 %i.h, i64 %i.g, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !7
  %i.i = load ptr, ptr %5, align 8, !tbaa !16, !noalias !7, !nonnull !20, !noundef !20
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !21, !noalias !7, !nonnull !20, !noundef !20
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3, !noalias !7
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.l ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = uitofp i64 %2 to double                  ; 3 uses
  %i.p = load double, ptr %i.n, align 8, !tbaa !24
  %i.q = fadd double %i.p, %i.o
  store double %i.q, ptr %i.n, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store double %i.o, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !28
  %i.u = fadd double %i.t, %i.o
  store double %i.u, ptr %i.s, align 8, !tbaa !28
  %i.v = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 0 uses
  ret void

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 0 uses
  resume { ptr, i32 } %i.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache11ScanTracker10recordReadENS1_10TrackingIdEmmm(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::pair.10", align 8     ; 4 uses
  %6 = alloca %"class.std::tuple", align 8        ; 4 uses
  %7 = alloca %"class.std::tuple.13", align 1     ; 3 uses
  %8 = alloca %"class.facebook::velox::cache::TrackingId", align 4 ; 3 uses
  store i32 %1, ptr %8, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #25
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24, !noalias !45
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !45
  store ptr %8, ptr %6, align 8, !tbaa !10, !alias.scope !48, !noalias !45
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !45
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.d) ; 2 uses
  %i.f = lshr i64 %i.e, 24
  %i.g = or i64 %i.f, 128
  %i.h = add nsw i64 %i.e, %i.d
  invoke void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache10TrackingIdENS6_12TrackingDataEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKSt21piecewise_construct_tSt5tupleIJRKS7_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.10") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 %i.h, i64 %i.g, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !45
  %i.i = load ptr, ptr %5, align 8, !tbaa !16, !noalias !45, !nonnull !20, !noundef !20
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !21, !noalias !45, !nonnull !20, !noundef !20
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3, !noalias !45
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24, !noalias !45
  %i.n = uitofp i64 %2 to double                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.p = load double, ptr %i.o, align 8, !tbaa !51
  %i.q = fadd double %i.p, %i.n
  store double %i.q, ptr %i.o, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !52
  %i.t = fadd double %i.s, %i.n
  store double %i.t, ptr %i.r, align 8, !tbaa !52
  %i.u = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 0 uses
  ret void

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24 ; 0 uses
  resume { ptr, i32 } %i.v
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox5cache11ScanTracker8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(160) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull @.str, i64 noundef 16)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.c, i64 noundef %i.e)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !57   ; 6 uses
  %.not.i.i.i19 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i19, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i8, ptr %i.m, align 8, !tbaa !73
  %.not.i1.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 67
  %i.p = load i8, ptr %i.o, align 1, !tbaa !78
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.l)
          to label %.noexc20 unwind label %bb.i

.noexc20:                                         ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef signext i8 %i.s(ptr noundef nonnull align 8 dereferenceable(570) %i.l, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.i, !inline_history !79

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc20, %bb.c
  %.0.i.i.i = phi i8 [ %i.p, %bb.c ], [ %i.t, %.noexc20 ]
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef signext %.0.i.i.i)
          to label %.noexc22 unwind label %bb.i

.noexc22:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %.noexc22
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.y = load i64, ptr %i.x, align 8, !tbaa !80
  %i.z = lshr i64 %i.y, 8                         ; 2 uses
  %.not.i.i.i.not = icmp eq i64 %i.z, 0
  %i.aa = load ptr, ptr %i.w, align 8             ; 2 uses
  br i1 %.not.i.i.i.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.z
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSolsEPFRSoS_E.exit18, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !87, !alias.scope !88
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !54, !alias.scope !88
  store i8 0, ptr %i.ac, align 8, !tbaa !78, !alias.scope !88
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !89, !noalias !88 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.af, null
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !88 ; 2 uses
  %i.ai = icmp ugt ptr %i.af, %i.ah
  %.08.i.i.i = select i1 %i.ai, ptr %i.af, ptr %i.ah ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !91, !noalias !88 ; 2 uses
  %i.al = ptrtoint ptr %.08.i.i.i to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ak, i64 noundef %i.an)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !53, !alias.scope !88 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ac
  br i1 %i.ar, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.as = load i64, ptr %i.ac, align 8, !tbaa !78, !alias.scope !88
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #26
  br label %.body

bb.h:                                             ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.g

bb.i:                                             ; preds = %.noexc22, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc20, %bb.d, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.a
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZNSolsEPFRSoS_E.exit18, %.lr.ph.preheader
  %.pn = phi ptr [ %i.ab, %.lr.ph.preheader ], [ %.sroa.035.038, %_ZNSolsEPFRSoS_E.exit18 ] ; 3 uses
  %.sroa.035.038 = getelementptr inbounds i8, ptr %.pn, i64 -32 ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.pn, i64 -24
  %i.ax = load i32, ptr %.sroa.035.038, align 4, !tbaa !92
  %i.ay = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.ax)
          to label %bb.j unwind label %.loopexit  ; 2 uses

bb.j:                                             ; preds = %.lr.ph
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.1, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %bb.j
  %i.ba = getelementptr inbounds i8, ptr %.pn, i64 -8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !51
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, double noundef %i.bb)
          to label %_ZNSolsEd.exit unwind label %.loopexit ; 2 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16 unwind label %.loopexit ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16: ; preds = %_ZNSolsEd.exit
  %i.be = load double, ptr %i.aw, align 8, !tbaa !24
  %i.bf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, double noundef %i.be)
          to label %_ZNSolsEd.exit17 unwind label %.loopexit ; 3 uses

_ZNSolsEd.exit17:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !55
  %i.bh = getelementptr i8, ptr %i.bg, i64 -24
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 240
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !57 ; 6 uses
  %.not.i.i.i24 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i24, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i25

bb.k:                                             ; preds = %_ZNSolsEd.exit17
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.k
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i25: ; preds = %_ZNSolsEd.exit17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !73
  %.not.i1.i.i26 = icmp eq i8 %i.bn, 0
  br i1 %.not.i1.i.i26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i25
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 67
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !78
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i27

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i25
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bl)
          to label %.noexc30 unwind label %.loopexit

.noexc30:                                         ; preds = %bb.m
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !55
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef signext i8 %i.bs(ptr noundef nonnull align 8 dereferenceable(570) %i.bl, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i27 unwind label %.loopexit, !inline_history !79

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i27: ; preds = %.noexc30, %bb.l
  %.0.i.i.i28 = phi i8 [ %i.bp, %bb.l ], [ %i.bt, %.noexc30 ]
  %i.bu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i8 noundef signext %.0.i.i.i28)
          to label %.noexc32 unwind label %.loopexit

.noexc32:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i27
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %_ZNSolsEPFRSoS_E.exit18 unwind label %.loopexit ; 0 uses

_ZNSolsEPFRSoS_E.exit18:                          ; preds = %.noexc32
  %i.bw = icmp eq ptr %i.aa, %.sroa.035.038
  br i1 %i.bw, label %._crit_edge, label %.lr.ph, !prof !94

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %_ZNSolsEd.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16, %bb.m, %.noexc30, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i27, %.noexc32
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.h, %bb.f
  %i.bx = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bx, ptr %2, align 8, !tbaa !55
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bz = getelementptr i8, ptr %i.bx, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %2, i64 %i.ca
  store ptr %i.by, ptr %i.cb, align 8, !tbaa !55
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.cc, ptr %i.a, align 8, !tbaa !55
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cd, align 8, !tbaa !55
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !53 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !78
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #26
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cd, align 8, !tbaa !55
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ck) #24
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.cl, ptr %2, align 8, !tbaa !55
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.cn = getelementptr i8, ptr %i.cl, i64 -24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr %2, i64 %i.co
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !55
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.cq, align 8, !tbaa !95
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.cr) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

.body:                                            ; preds = %bb.g, %.loopexit, %.loopexit.split-lp, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.av, %bb.i ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.loopexit, %.loopexit ], [ %i.ap, %bb.g ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache10TrackingIdENS6_12TrackingDataEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKSt21piecewise_construct_tSt5tupleIJRKS7_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESM_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.10") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80   ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread66_crit_edge, label %bb.b

..thread66_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !97
  %.pre85 = shl nuw i64 1, %i.b
  br label %.thread66

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !97   ; 3 uses
  %i.m = load ptr, ptr %1, align 8
  %i.n = load i32, ptr %4, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.0.i77 = phi i64 [ %2, %bb.b ], [ %i.ak, %bb.f ] ; 2 uses
  %.022.i76 = phi i64 [ %i.j, %bb.b ], [ %i.aj, %bb.f ]
  %i.o = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i77, i64 range(i64 0, 256) %i.i)
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.o ; 3 uses
  %i.q = load <16 x i8>, ptr %i.p, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = and i16 %i.s, 4095
  %i.u = zext nneg i16 %i.t to i32
  %i.v = icmp ne ptr %i.p, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.x = extractelement <16 x i8> %i.q, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.u, %bb.c ], [ %i.aa, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.z = add nsw i32 %.sroa.042.0, -1
  %i.aa = and i32 %i.z, %.sroa.042.0
  %i.ab = zext nneg i32 %i.y to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.v)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !92
  %i.ah = icmp eq i32 %i.n, %i.ag
  br i1 %i.ah, label %bb.g, label %.critedge.i, !prof !98, !llvm.loop !99

bb.e:                                             ; preds = %.critedge.i
  %i.ai = icmp eq i8 %i.x, 0
  br i1 %i.ai, label %.thread66, label %bb.f, !prof !98

bb.f:                                             ; preds = %bb.e
  %i.aj = add i64 %.022.i76, -1                   ; 2 uses
  %i.ak = add i64 %i.e, %.0.i77
  %.not.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !101

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ab
  br label %bb.o

.thread66:                                        ; preds = %bb.f, %bb.e, %..thread66_crit_edge
  %.pre-phi86 = phi i64 [ %.pre85, %..thread66_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread66_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.am = phi ptr [ %.pre, %..thread66_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.0.copyload.i.i = load i16, ptr %i.an, align 1
  %i.ao = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.ap = add i64 %.pre-phi86, -1
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = mul i64 %i.ar, %i.ao                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.as
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache10TrackingIdENS6_12TrackingDataEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread66
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache10TrackingIdENS6_12TrackingDataEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi86, i64 noundef %i.ao, i64 noundef %i.as)
  %.pre82 = load ptr, ptr %i.at, align 8, !tbaa !97
  %.pre83 = load i64, ptr %i.a, align 8, !tbaa !80
  %.pre87 = and i64 %.pre83, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache10TrackingIdENS6_12TrackingDataEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache10TrackingIdENS6_12TrackingDataEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.h
  %.pre-phi88 = phi i64 [ %.pre-phi, %.thread66 ], [ %.pre87, %bb.h ] ; 2 uses
end_hunk_0
