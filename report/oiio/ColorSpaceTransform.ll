inline.NumInlined: 539
inline.NumDeleted: 199
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_114ThrowMissingCSEPKc:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !78 ; 2 uses
  %i.s = icmp ugt ptr %i.p, %i.r
  %.08.i.i.i = select i1 %i.s, ptr %i.p, ptr %i.r ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81, !noalias !78 ; 2 uses
  %i.v = ptrtoint ptr %.08.i.i.i to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.u, i64 noundef %i.x)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %2, align 8, !tbaa !47, !alias.scope !78 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.m
  br i1 %i.ab, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !34, !alias.scope !78
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #27
  br label %.body.thread

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.af = load ptr, ptr %2, align 8, !tbaa !47
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef %i.af)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.l unwind label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10, %bb.c, %bb.b, %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.i:                                             ; preds = %bb.g, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.0 = phi i1 [ false, %bb.g ], [ true, %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 2 uses
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !47    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.m
  br i1 %i.aj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ak = load i64, ptr %i.m, align 8, !tbaa !34
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.j, label %bb.k

.body.thread:                                     ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.j

.body:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body.thread, %.body
  %.pn15 = phi { ptr, i32 } [ %i.z, %.body.thread ], [ %i.ah, %.body ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.l) #24
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %.body, %bb.j, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn15, %bb.j ], [ %i.ah, %.body ], [ %i.ag, %bb.h ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.am = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.am, ptr %1, align 8, !tbaa !14
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ao = getelementptr i8, ptr %i.am, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %i.ap
  store ptr %i.an, ptr %i.aq, align 8, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ar, align 8, !tbaa !14
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !47 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !34
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ar, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ay) #24
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.az) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn.pn

bb.l:                                             ; preds = %bb.g
  unreachable
}

declare void @_ZN16OpenColorIO_v2_512GetTransformERKSt10shared_ptrIKNS_14NamedTransformEES5_(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.13") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

declare void @_ZN16OpenColorIO_v2_58BuildOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEERKS5_IKNS_9TransformEENS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !19
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !45
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !45
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_518BuildColorSpaceOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEERKS5_IKNS_10ColorSpaceEESF_b(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, i1 noundef zeroext %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !61     ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.11)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.f) #24
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %4, align 8, !tbaa !61
  %.not26 = icmp eq ptr %i.h, null
  br i1 %.not26, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.12)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #24
  br label %common.resume

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.k = tail call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #24 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.l, ptr %6, align 8, !tbaa !32
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #25
          to label %.noexc.i unwind label %bb.u

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 %i.n, ptr %i.d, align 8, !tbaa !48
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.k
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc17.i unwind label %bb.u ; 2 uses

.noexc17.i:                                       ; preds = %.noexc.i.i
  store ptr %i.p, ptr %6, align 8, !tbaa !47
  %i.q = load i64, ptr %i.d, align 8, !tbaa !48
  store i64 %i.q, ptr %i.l, align 8, !tbaa !34
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc17.i, %bb.k
  %i.r = phi ptr [ %i.p, %.noexc17.i ], [ %i.l, %bb.k ] ; 2 uses
  switch i64 %i.n, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.k, align 1, !tbaa !34
  store i8 %i.s, ptr %i.r, align 1, !tbaa !34
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.k, i64 %i.n, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i
  %i.t = load i64, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !33
  %i.v = load ptr, ptr %6, align 8, !tbaa !47
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 0, ptr %i.w, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.x = load ptr, ptr %4, align 8, !tbaa !61
  %i.y = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #24 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.z, ptr %7, align 8, !tbaa !32
  %i.aa = icmp eq ptr %i.y, null
  br i1 %i.aa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #25
          to label %.noexc20.i unwind label %bb.v

.noexc20.i:                                       ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ab = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.y) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %i.ab, ptr %i.c, align 8, !tbaa !48
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %.noexc.i19.i, label %._crit_edge.i.i18.i

.noexc.i19.i:                                     ; preds = %bb.p
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc21.i unwind label %bb.v ; 2 uses

.noexc21.i:                                       ; preds = %.noexc.i19.i
  store ptr %i.ad, ptr %7, align 8, !tbaa !47
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !48
  store i64 %i.ae, ptr %i.z, align 8, !tbaa !34
  br label %._crit_edge.i.i18.i

._crit_edge.i.i18.i:                              ; preds = %.noexc21.i, %bb.p
  %i.af = phi ptr [ %i.ad, %.noexc21.i ], [ %i.z, %bb.p ] ; 2 uses
  switch i64 %i.ab, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i18.i
  %i.ag = load i8, ptr %i.y, align 1, !tbaa !34
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !34
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i18.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.y, i64 %i.ab, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i18.i
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !48  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !33
  %i.aj = load ptr, ptr %7, align 8, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.al = invoke noundef zeroext i1 @_ZN11StringUtils7CompareERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.z
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  %i.ao = load i64, ptr %i.z, align 8, !tbaa !34
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.aq = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.l
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.as = load i64, ptr %i.l, align 8, !tbaa !34
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %i.al, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_133AreColorSpacesInSameEqualityGroupERKSt10shared_ptrIKNS_10ColorSpaceEES6_.exit.thread, label %bb.x

bb.u:                                             ; preds = %.noexc.i.i, %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i

bb.v:                                             ; preds = %.noexc.i19.i, %bb.o
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i

bb.w:                                             ; preds = %bb.s
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.z
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i: ; preds = %bb.w
  %i.az = load i64, ptr %i.z, align 8, !tbaa !34
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i, %bb.v
  %.pn.i = phi { ptr, i32 } [ %i.av, %bb.v ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26.i ], [ %i.aw, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.bb = load ptr, ptr %6, align 8, !tbaa !47    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.l
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !34
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i, %bb.u
  %.pn.pn.i = phi { ptr, i32 } [ %i.au, %bb.u ], [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %common.resume

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.bf = load ptr, ptr %3, align 8, !tbaa !61
  %i.bg = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace16getEqualityGroupEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #24 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.bh, ptr %8, align 8, !tbaa !32
  %i.bi = icmp eq ptr %i.bg, null
  br i1 %i.bi, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #25
          to label %.noexc34.i unwind label %bb.aj

.noexc34.i:                                       ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.bj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bg) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.bj, ptr %i.b, align 8, !tbaa !48
  %i.bk = icmp ugt i64 %i.bj, 15
  br i1 %i.bk, label %.noexc.i33.i, label %._crit_edge.i.i32.i

.noexc.i33.i:                                     ; preds = %bb.z
  %i.bl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc35.i unwind label %bb.aj ; 2 uses

.noexc35.i:                                       ; preds = %.noexc.i33.i
  store ptr %i.bl, ptr %8, align 8, !tbaa !47
  %i.bm = load i64, ptr %i.b, align 8, !tbaa !48
  store i64 %i.bm, ptr %i.bh, align 8, !tbaa !34
  br label %._crit_edge.i.i32.i

._crit_edge.i.i32.i:                              ; preds = %.noexc35.i, %bb.z
  %i.bn = phi ptr [ %i.bl, %.noexc35.i ], [ %i.bh, %bb.z ] ; 2 uses
  switch i64 %i.bj, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i32.i
  %i.bo = load i8, ptr %i.bg, align 1, !tbaa !34
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !34
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i32.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr nonnull align 1 %i.bg, i64 %i.bj, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i32.i
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !48  ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !33
  %i.br = load ptr, ptr %8, align 8, !tbaa !47
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.bt = load ptr, ptr %4, align 8, !tbaa !61
  %i.bu = call noundef ptr @_ZNK16OpenColorIO_v2_510ColorSpace16getEqualityGroupEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #24 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.bv, ptr %9, align 8, !tbaa !32
  %i.bw = icmp eq ptr %i.bu, null
  br i1 %i.bw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #25
          to label %.noexc39.i unwind label %bb.ak

.noexc39.i:                                       ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.bx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bu) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.bx, ptr %i.a, align 8, !tbaa !48
  %i.by = icmp ugt i64 %i.bx, 15
  br i1 %i.by, label %.noexc.i38.i, label %._crit_edge.i.i37.i

.noexc.i38.i:                                     ; preds = %bb.ae
  %i.bz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc40.i unwind label %bb.ak ; 2 uses

.noexc40.i:                                       ; preds = %.noexc.i38.i
  store ptr %i.bz, ptr %9, align 8, !tbaa !47
  %i.ca = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.ca, ptr %i.bv, align 8, !tbaa !34
  br label %._crit_edge.i.i37.i

._crit_edge.i.i37.i:                              ; preds = %.noexc40.i, %bb.ae
  %i.cb = phi ptr [ %i.bz, %.noexc40.i ], [ %i.bv, %bb.ae ] ; 2 uses
  switch i64 %i.bx, label %bb.ag [
    i64 1, label %bb.af
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %._crit_edge.i.i37.i
  %i.cc = load i8, ptr %i.bu, align 1, !tbaa !34
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !34
  br label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i37.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cb, ptr nonnull align 1 %i.bu, i64 %i.bx, i1 false)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %._crit_edge.i.i37.i
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !33
  %i.cf = load ptr, ptr %9, align 8, !tbaa !47
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cd
  store i8 0, ptr %i.cg, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ch = load i64, ptr %i.bq, align 8, !tbaa !33 ; 3 uses
  %i.ci = icmp ne i64 %i.ch, 0
  %i.cj = load i64, ptr %i.ce, align 8            ; 2 uses
  %i.ck = icmp eq i64 %i.ch, %i.cj
  %or.cond.i = select i1 %i.ci, i1 %i.ck, i1 false
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !47  ; 3 uses
  br i1 %or.cond.i, label %bb.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.cl = load ptr, ptr %8, align 8, !tbaa !47
  %bcmp.i.i = call i32 @bcmp(ptr %i.cl, ptr %.pre.i, i64 %i.ch)
  %i.cm = icmp eq i32 %bcmp.i.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

bb.aj:                                            ; preds = %.noexc.i33.i, %bb.y
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i

bb.ak:                                            ; preds = %.noexc.i38.i, %bb.ad
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.cp = load ptr, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.bh
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i: ; preds = %bb.ak
  %i.cr = load i64, ptr %i.bh, align 8, !tbaa !34
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.ai, %bb.ah
  %.010.i = phi i1 [ false, %bb.ah ], [ %i.cm, %bb.ai ]
  %i.ct = icmp eq ptr %.pre.i, %i.bv
  br i1 %i.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.cu = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.cu)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.cv = load i64, ptr %i.bv, align 8, !tbaa !34
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %.pre.i, i64 noundef %i.cw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %i.cx = load ptr, ptr %8, align 8, !tbaa !47    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.bh
  br i1 %i.cy, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_133AreColorSpacesInSameEqualityGroupERKSt10shared_ptrIKNS_10ColorSpaceEES6_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i
  %i.cz = load i64, ptr %i.bh, align 8, !tbaa !34
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #27
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_133AreColorSpacesInSameEqualityGroupERKSt10shared_ptrIKNS_10ColorSpaceEES6_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i, %bb.aj
  %.pn14.i = phi { ptr, i32 } [ %i.cn, %bb.aj ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42.i ], [ %i.co, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i ], [ %.pn14.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44.i ], [ %i.j, %bb.h ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN16OpenColorIO_v2_512_GLOBAL__N_133AreColorSpacesInSameEqualityGroupERKSt10shared_ptrIKNS_10ColorSpaceEES6_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br i1 %.010.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_133AreColorSpacesInSameEqualityGroupERKSt10shared_ptrIKNS_10ColorSpaceEES6_.exit.thread, label %bb.al

bb.al:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_133AreColorSpacesInSameEqualityGroupERKSt10shared_ptrIKNS_10ColorSpaceEES6_.exit
  br i1 %5, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.db = load ptr, ptr %4, align 8, !tbaa !61
  %i.dc = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_510ColorSpace6isDataEv(ptr noundef nonnull align 8 dereferenceable(8) %i.db) #24
  br i1 %i.dc, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_133AreColorSpacesInSameEqualityGroupERKSt10shared_ptrIKNS_10ColorSpaceEES6_.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dd = load ptr, ptr %3, align 8, !tbaa !61
  %i.de = call noundef zeroext i1 @_ZNK16OpenColorIO_v2_510ColorSpace6isDataEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dd) #24
  br i1 %i.de, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_133AreColorSpacesInSameEqualityGroupERKSt10shared_ptrIKNS_10ColorSpaceEES6_.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al
  call void @_ZN16OpenColorIO_v2_529BuildColorSpaceToReferenceOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEERKS5_IKNS_10ColorSpaceEEb(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i1 noundef zeroext %5)
  %i.df = load ptr, ptr %3, align 8, !tbaa !61
  %i.dg = call noundef i32 @_ZNK16OpenColorIO_v2_510ColorSpace21getReferenceSpaceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df) #24
  %i.dh = load ptr, ptr %4, align 8, !tbaa !61
  %i.di = call noundef i32 @_ZNK16OpenColorIO_v2_510ColorSpace21getReferenceSpaceTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dh) #24
  call void @_ZN16OpenColorIO_v2_527BuildReferenceConversionOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEENS_18ReferenceSpaceTypeESB_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.dg, i32 noundef %i.di)
  call void @_ZN16OpenColorIO_v2_531BuildColorSpaceFromReferenceOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEERKS5_IKNS_10ColorSpaceEEb(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext %5)
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_133AreColorSpacesInSameEqualityGroupERKSt10shared_ptrIKNS_10ColorSpaceEES6_.exit.thread

_ZN16OpenColorIO_v2_512_GLOBAL__N_133AreColorSpacesInSameEqualityGroupERKSt10shared_ptrIKNS_10ColorSpaceEES6_.exit.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i, %bb.am, %bb.an, %_ZN16OpenColorIO_v2_512_GLOBAL__N_133AreColorSpacesInSameEqualityGroupERKSt10shared_ptrIKNS_10ColorSpaceEES6_.exit, %bb.ao
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIKN16OpenColorIO_v2_510ColorSpaceELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !19
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !45
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !45
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK16OpenColorIO_v2_510ColorSpace6isDataEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_529BuildColorSpaceToReferenceOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEERKS5_IKNS_10ColorSpaceEEb(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, i1 noundef zeroext %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.OpenColorIO_v2_5::AllocationData", align 8 ; 10 uses
  %6 = alloca %"class.std::shared_ptr.13", align 8 ; 5 uses
  %7 = alloca %"class.std::shared_ptr.13", align 8 ; 7 uses
  %8 = alloca %"class.std::shared_ptr.13", align 8 ; 5 uses
  %9 = alloca %"class.std::shared_ptr.13", align 8 ; 7 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !61     ; 3 uses
  %.not43 = icmp eq ptr %i.a, null
  br i1 %.not43, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.13)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #24
  br label %bb.be

bb.e:                                             ; preds = %bb.a
  br i1 %4, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.d = tail call noundef zeroext i1 @_ZNK16OpenColorIO_v2_510ColorSpace6isDataEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #24
  br i1 %i.d, label %bb.bb, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f
  %.pre = load ptr, ptr %3, align 8, !tbaa !61
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e
  %i.e = phi ptr [ %.pre, %._crit_edge ], [ %i.a, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = tail call noundef i32 @_ZNK16OpenColorIO_v2_510ColorSpace13getAllocationEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #24
  store i32 %i.g, ptr %5, align 8, !tbaa !82
  %i.h = load ptr, ptr %3, align 8, !tbaa !61
  %i.i = invoke noundef i32 @_ZNK16OpenColorIO_v2_510ColorSpace20getAllocationNumVarsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.j = sext i32 %i.i to i64                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !90   ; 6 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !91   ; 9 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 7 uses
  %i.r = icmp ult i64 %i.q, %i.j
  br i1 %i.r, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.s = sub nuw nsw i64 %i.j, %i.q               ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !92
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = sub i64 %i.v, %i.n
  %i.x = ashr exact i64 %i.w, 2                   ; 2 uses
  %i.y = icmp ult i64 %i.q, 2305843009213693952
  tail call void @llvm.assume(i1 %i.y)
  %i.z = xor i64 %i.q, 2305843009213693951        ; 2 uses
  %i.aa = icmp ule i64 %i.x, %i.z
  tail call void @llvm.assume(i1 %i.aa)
  %.not28.i = icmp ult i64 %i.x, %i.s
  br i1 %.not28.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store float 0.000000e+00, ptr %i.l, align 4, !tbaa !93
  %i.ab = getelementptr i8, ptr %i.l, i64 4       ; 3 uses
  %i.ac = add nsw i64 %i.s, -1                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.j
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ac, 2    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !93
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit.i: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %bb.j
  %.0.i.i.i.i40 = phi ptr [ %i.ae, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.ab, %bb.j ] ; 2 uses
  store ptr %.0.i.i.i.i40, ptr %i.k, align 8, !tbaa !90
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.k:                                             ; preds = %bb.i
  %i.af = icmp ult i64 %i.z, %i.s
  br i1 %i.af, label %bb.l, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #25
          to label %.noexc41 unwind label %bb.r

.noexc41:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.k
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.s)
  %i.ag = add nuw nsw i64 %.sroa.speculated.i.i, %i.q
end_hunk_0
