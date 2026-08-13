inline.NumInlined: 1757
inline.NumDeleted: 604
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !32
  %i.g = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.g, ptr %i.b, align 8, !tbaa !35
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !35
  store i8 %i.i, ptr %i.h, align 1, !tbaa !35
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !33
  %i.l = load ptr, ptr %0, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi5seekgElSt12_Ios_Seekdir(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_59CDLParser4Impl5parseERSi(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN16OpenColorIO_v2_59CDLParser4Impl5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i, label %_ZN16OpenColorIO_v2_59CDLParser4Impl5resetEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !46
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #29, !inline_history !49
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #29, !inline_history !49
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !50
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i.i.i.i, !prof !51

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #29
  br label %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !52

_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEEvPT_.exit.i.i.i.i.i
  store ptr %i.c, ptr %i.d, align 8, !tbaa !42
  br label %_ZN16OpenColorIO_v2_59CDLParser4Impl5resetEv.exit

_ZN16OpenColorIO_v2_59CDLParser4Impl5resetEv.exit: ; preds = %bb.a, %bb.b, %_ZSt8_DestroyIPSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN16OpenColorIO_v2_521XmlReaderElementStack5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i32 0, ptr %i.y, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.z, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 0, ptr %i.aa, align 1, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN16OpenColorIO_v2_59CDLParser4Impl10loadHeaderB5cxx11ERSi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.ab = load ptr, ptr %2, align 8, !tbaa !32
  invoke void @_ZN16OpenColorIO_v2_59CDLParser4Impl18initializeHandlersEPKc(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef %i.ab)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %_ZN16OpenColorIO_v2_59CDLParser4Impl5resetEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.ac, ptr %3, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !33
  store i8 0, ptr %i.ac, align 8, !tbaa !35
  store i32 0, ptr %i.y, align 8, !tbaa !54
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.p
  %i.ae = load ptr, ptr %1, align 8, !tbaa !47
  %i.af = getelementptr i8, ptr %i.ae, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %1, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !57
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 240
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !66 ; 6 uses
  %.not.i.i.i8 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i8, label %bb.l, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt16__throw_bad_castv() #32
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !73
  %.not.i1.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i1.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 67
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !35
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.am)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %bb.n
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef signext i8 %i.at(ptr noundef nonnull align 8 dereferenceable(570) %i.am, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit, !inline_history !83

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc9, %bb.m
  %.0.i.i.i = phi i8 [ %i.aq, %bb.m ], [ %i.au, %.noexc9 ]
  %i.av = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EES4_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %.0.i.i.i)
          to label %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %.loopexit ; 0 uses

_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.aw = load i64, ptr %i.ad, align 8, !tbaa !33 ; 4 uses
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  %i.ay = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ac
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ba = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ba)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.bb = load i64, ptr %i.ac, align 8, !tbaa !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bc = phi i64 [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.bd = icmp ugt i64 %i.ax, %i.bc
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aw, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %bb.o
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %.noexc12
  %i.be = phi ptr [ %.pre.i, %.noexc12 ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  store i8 10, ptr %i.bf, align 1, !tbaa !35
  store i64 %i.ax, ptr %i.ad, align 8, !tbaa !33
  %i.bg = load ptr, ptr %3, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ax
  store i8 0, ptr %i.bh, align 1, !tbaa !35
  %i.bi = load i32, ptr %i.y, align 8, !tbaa !54
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr %i.y, align 8, !tbaa !54
  %i.bk = load ptr, ptr %1, align 8, !tbaa !47
  %i.bl = getelementptr i8, ptr %i.bk, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !57
  %i.bq = icmp ne i32 %i.bp, 0
  invoke void @_ZN16OpenColorIO_v2_59CDLParser4Impl5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %i.bq)
          to label %bb.j unwind label %.loopexit, !llvm.loop !84

bb.q:                                             ; preds = %_ZN16OpenColorIO_v2_59CDLParser4Impl5resetEv.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit:                                        ; preds = %bb.p, %bb.n, %.noexc9, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.s, %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.bs = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ac
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.r
  %i.bu = load i64, ptr %i.ac, align 8, !tbaa !35
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.u

bb.s:                                             ; preds = %bb.j
  invoke void @_ZNK16OpenColorIO_v2_59CDLParser4Impl15validateParsingEv(ptr noundef nonnull align 8 dereferenceable(98) %0)
          to label %bb.t unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.bw = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.ac
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.t
  %i.by = load i64, ptr %i.ac, align 8, !tbaa !35
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %i.ca = load ptr, ptr %2, align 8, !tbaa !32    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !35
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.q
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.br, %bb.q ]
  %i.cf = load ptr, ptr %2, align 8, !tbaa !32    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.u
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !35
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_59CDLParser4Impl18initializeHandlersEPKc(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !12
  tail call void @XML_SetUserData(ptr noundef %i.f, ptr noundef nonnull %0)
  %i.g = load ptr, ptr %0, align 8, !tbaa !12
  tail call void @XML_SetCharacterDataHandler(ptr noundef %i.g, ptr noundef nonnull @_ZN16OpenColorIO_v2_59CDLParser4Impl20CharacterDataHandlerEPvPKci)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !31
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.43) #32
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  store i64 %i.j, ptr %i.e, align 8, !tbaa !34
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc24 unwind label %bb.h   ; 2 uses

.noexc24:                                         ; preds = %.noexc.i
  store ptr %i.l, ptr %2, align 8, !tbaa !32
  %i.m = load i64, ptr %i.e, align 8, !tbaa !34
  store i64 %i.m, ptr %i.h, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc24, %bb.c
  %i.n = phi ptr [ %i.l, %.noexc24 ], [ %i.h, %bb.c ] ; 2 uses
  switch i64 %i.j, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %.noexc.i26
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %1, align 1, !tbaa !35
  store i8 %i.o, ptr %i.n, align 1, !tbaa !35
  br label %.noexc.i26

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %1, i64 %i.j, i1 false)
  br label %.noexc.i26

.noexc.i26:                                       ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.p = load i64, ptr %i.e, align 8, !tbaa !34   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !33
  %i.r = load ptr, ptr %2, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  store i64 17, ptr %i.d, align 8, !tbaa !34
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc27 unwind label %bb.i   ; 2 uses

.noexc27:                                         ; preds = %.noexc.i26
  store ptr %i.u, ptr %3, align 8, !tbaa !32
  %i.v = load i64, ptr %i.d, align 8, !tbaa !34   ; 3 uses
  store i64 %i.v, ptr %i.t, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.u, ptr noundef nonnull align 16 dereferenceable(17) @_ZN16OpenColorIO_v2_5L27CDL_TAG_COLOR_DECISION_LISTE, i64 17, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !33
  %i.x = load ptr, ptr %3, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  %i.z = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_515FindRootElementERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %.noexc27
  %i.aa = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.t
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.ac = load i64, ptr %i.t, align 8, !tbaa !35
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_523XmlReaderSOPNodeBaseElt14appendMetadataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_:._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @_ZN16OpenColorIO_v2_5L24METADATA_SOP_DESCRIPTIONE, i64 14, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 14, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 30
  store i8 0, ptr %i.c, align 2, !tbaa !35
  invoke void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %4, align 8, !tbaa !32     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !35
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.h = load ptr, ptr %0, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(99) %0)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !370
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImpl19getChildrenElementsEv(ptr noundef nonnull align 8 dereferenceable(120) %i.m) #29 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !373  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !376
  %.not.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.p, ptr noundef nonnull align 8 dereferenceable(120) %3)
          to label %.noexc8 unwind label %bb.f

.noexc8:                                          ; preds = %bb.c
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !373
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  store ptr %i.t, ptr %i.o, align 8, !tbaa !373
  br label %_ZNSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  invoke void @_ZNSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(120) %3)
          to label %_ZNSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE9push_backERKS1_.exit unwind label %bb.f

_ZNSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc8, %bb.d
  call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %4, align 8, !tbaa !32     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.a
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.e
  %i.x = load i64, ptr %i.a, align 8, !tbaa !35
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN16OpenColorIO_v2_518FormatMetadataImplD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %3) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %.pn6 = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNK16OpenColorIO_v2_521CDLReaderSOPNodeCCElt6getCDLEv(ptr noundef nonnull align 8 dereferenceable(99) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_523XmlReaderSOPNodeBaseEltD0Ev(ptr noundef nonnull align 8 dereferenceable(99) %0) unnamed_addr #21 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #31
  unreachable
}

declare void @_ZNK16OpenColorIO_v2_516XmlReaderElement12throwMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN16OpenColorIO_v2_518FormatMetadataImpl19getChildrenElementsEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(120) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !373  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !377    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 120                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 76861433640456465)
  %i.l = select i1 %i.j, i64 76861433640456465, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 120                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.q, ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_518FormatMetadataImplEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_518FormatMetadataImplEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_518FormatMetadataImplEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt10_ConstructIN16OpenColorIO_v2_518FormatMetadataImplEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN16OpenColorIO_v2_518FormatMetadataImplEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_518FormatMetadataImplEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN16OpenColorIO_v2_518FormatMetadataImplEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_518FormatMetadataImplEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN16OpenColorIO_v2_518FormatMetadataImplEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN16OpenColorIO_v2_518FormatMetadataImplEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 120 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 120 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !378

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #29 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.w = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.05.i.i.i.i.i.i.i) #29, !inline_history !379
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 120 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !380

_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplEEvT_S3_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #32
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplEEvT_S3_.exit.i.i.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplES1_EvT_S3_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplEEvT_S3_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt10_ConstructIN16OpenColorIO_v2_518FormatMetadataImplEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_518FormatMetadataImplEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_518FormatMetadataImplEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN16OpenColorIO_v2_518FormatMetadataImplEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 120 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZSt10_ConstructIN16OpenColorIO_v2_518FormatMetadataImplEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN16OpenColorIO_v2_518FormatMetadataImplEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 120, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.ad, %_ZSt10_ConstructIN16OpenColorIO_v2_518FormatMetadataImplEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 2 uses
  invoke void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(120) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN16OpenColorIO_v2_518FormatMetadataImplEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g

_ZSt10_ConstructIN16OpenColorIO_v2_518FormatMetadataImplEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.ad = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 120 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 120 ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.ad, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !378

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.af) #29 ; 0 uses
  %.not4.i.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 120
  br i1 %.not4.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i.i34 = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 3 uses
  %i.ah = load ptr, ptr %.05.i.i.i.i.i.i.i34, align 8, !tbaa !47
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.05.i.i.i.i.i.i.i34) #29, !inline_history !379
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i34, i64 120 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ak, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplEEvT_S3_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !380

_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplEEvT_S3_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #32
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplEEvT_S3_.exit.i.i.i.i.i36
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #31
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplEEvT_S3_.exit.i.i.i.i.i36
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit: ; preds = %_ZSt10_ConstructIN16OpenColorIO_v2_518FormatMetadataImplEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit43.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit43, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ar, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit43 ] ; 3 uses
  %i.ao = load ptr, ptr %.05.i.i, align 8, !tbaa !47
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 152
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.05.i.i) #29, !inline_history !381
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 120 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !380

_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplEEvT_S3_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN16OpenColorIO_v2_518FormatMetadataImplES2_SaIS1_EET0_T_S5_S4_RT1_.exit43
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplEEvT_S3_.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !376
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.av) #30
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplEEvT_S3_.exit, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !377
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !373
  %i.aw = getelementptr inbounds nuw [120 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aw, ptr %i.as, align 8, !tbaa !376
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_518FormatMetadataImplESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  %i.az = tail call ptr @__cxa_begin_catch(ptr %i.ay) #29 ; 0 uses
  br label %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.ba = extractvalue { ptr, i32 } %i.aa, 0
  %i.bb = tail call ptr @__cxa_begin_catch(ptr %i.ba) #29 ; 0 uses
  %i.bc = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 152
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.q) #29, !inline_history !382
  br label %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplES1_EvT_S3_RSaIT0_E.exit

bb.l:                                             ; preds = %bb.h
  %i.bf = extractvalue { ptr, i32 } %i.al, 0
  %i.bg = tail call ptr @__cxa_begin_catch(ptr %i.bf) #29 ; 0 uses
  %.not4.i.i45 = icmp eq ptr %i.p, %.ptr
  br i1 %.not4.i.i45, label %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.l, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.bk, %.lr.ph.i.i46 ], [ %i.p, %bb.l ] ; 4 uses
  %i.bh = load ptr, ptr %.05.i.i47, align 8, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %.05.i.i47) #29, !inline_history !381
  %i.bk = getelementptr inbounds nuw i8, ptr %.05.i.i47, i64 120
  %.not.i.i48 = icmp eq ptr %.05.i.i47, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i48, label %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i46, !llvm.loop !380

bb.m:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplES1_EvT_S3_RSaIT0_E.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplES1_EvT_S3_RSaIT0_E.exit: ; preds = %.lr.ph.i.i46, %.thread, %bb.l, %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplES1_EvT_S3_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #30
  invoke void @__cxa_rethrow() #32
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.bl

bb.o:                                             ; preds = %bb.m
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  tail call void @__clang_call_terminate(ptr %i.bn) #31
  unreachable

bb.p:                                             ; preds = %_ZSt8_DestroyIPN16OpenColorIO_v2_518FormatMetadataImplES1_EvT_S3_RSaIT0_E.exit
  unreachable
}

declare void @_ZN16OpenColorIO_v2_518FormatMetadataImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #3

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_521CDLReaderSatNodeCCEltESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10shared_ptrINS0_21XmlReaderContainerEltEEjSE_EEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.43", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN16OpenColorIO_v2_521CDLReaderSatNodeCCEltESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !47
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.g = load <2 x ptr>, ptr %2, align 8, !tbaa !95
  store <2 x ptr> %i.g, ptr %5, align 16, !tbaa !95
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !50
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !50
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.m = load i32, ptr %3, align 4, !tbaa !50
  invoke void @_ZN16OpenColorIO_v2_521CDLReaderSatNodeCCEltC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_21XmlReaderContainerEltEEjS8_(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 %5, i32 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit.i
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !43   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !46
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #29, !inline_history !383
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #29, !inline_history !383
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !35
  %.not.i.i.i6.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i6.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !50
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !51

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #29
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltEEC2ERKS2_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_521XmlReaderContainerEltELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #29
  resume { ptr, i32 } %i.ad

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_1
