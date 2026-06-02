inline.NumInlined: 442
inline.NumDeleted: 194
begin_hunk_0

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_512CDLTransform6CreateEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #22 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(280) %i.b, i8 0, i64 280, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN16OpenColorIO_v2_516CDLTransformImplE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !9
  store i8 0, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  invoke void @_ZN16OpenColorIO_v2_59CDLOpDataC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.e)
          to label %_ZN16OpenColorIO_v2_516CDLTransformImplC2Ev.exit unwind label %bb.b, !inline_history !14

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.d, align 8, !tbaa !13
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #23, !inline_history !14
  br label %.body

_ZN16OpenColorIO_v2_516CDLTransformImplC2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !23
  %i.l = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_16CDLTransformImplEPFvPS1_EvEEPT_T0_.exit unwind label %bb.c ; 6 uses

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_516CDLTransformImplC2Ev.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #24 ; 0 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(296) %i.a) #24, !inline_history !24
  invoke void @__cxa_rethrow() #25
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.e

common.resume:                                    ; preds = %bb.d, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.f, %.body ], [ %i.s, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #26
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_16CDLTransformImplEPFvPS1_EvEEPT_T0_.exit: ; preds = %_ZN16OpenColorIO_v2_516CDLTransformImplC2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 1, ptr %i.w, align 4, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_516CDLTransformImplEPFvPNS0_12CDLTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.l, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr @_ZN16OpenColorIO_v2_516CDLTransformImpl7deleterEPNS_12CDLTransformE, ptr %i.x, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.a, ptr %i.y, align 8, !tbaa !30
  store ptr %i.l, ptr %i.k, align 8, !tbaa !23
  ret void

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 296) #23
  br label %common.resume
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN16OpenColorIO_v2_516CDLTransformImpl7deleterEPNS_12CDLTransformE(ptr noundef %0) #4 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(296) %0) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_516CDLTransformImpl6CreateEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.8") align 8 captures(none) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #22 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(280) %i.b, i8 0, i64 280, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN16OpenColorIO_v2_516CDLTransformImplE, i64 16), ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !9
  store i8 0, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  invoke void @_ZN16OpenColorIO_v2_59CDLOpDataC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %i.e)
          to label %_ZN16OpenColorIO_v2_516CDLTransformImplC2Ev.exit unwind label %bb.b, !inline_history !14

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.d, align 8, !tbaa !13
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #23, !inline_history !14
  br label %.body

_ZN16OpenColorIO_v2_516CDLTransformImplC2Ev.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !23
  %i.l = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22
          to label %_ZNSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEC2IS1_PFvPNS0_12CDLTransformEEvEEPT_T0_.exit unwind label %bb.c ; 6 uses

bb.c:                                             ; preds = %_ZN16OpenColorIO_v2_516CDLTransformImplC2Ev.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #24 ; 0 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(296) %i.a) #24, !inline_history !24
  invoke void @__cxa_rethrow() #25
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.e

common.resume:                                    ; preds = %bb.d, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.f, %.body ], [ %i.s, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #26
  unreachable

bb.f:                                             ; preds = %bb.c
  unreachable

_ZNSt10shared_ptrIN16OpenColorIO_v2_516CDLTransformImplEEC2IS1_PFvPNS0_12CDLTransformEEvEEPT_T0_.exit: ; preds = %_ZN16OpenColorIO_v2_516CDLTransformImplC2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 1, ptr %i.w, align 4, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_516CDLTransformImplEPFvPNS0_12CDLTransformEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.l, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr @_ZN16OpenColorIO_v2_516CDLTransformImpl7deleterEPNS_12CDLTransformE, ptr %i.x, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.a, ptr %i.y, align 8, !tbaa !30
  store ptr %i.l, ptr %i.k, align 8, !tbaa !23
  ret void

.body:                                            ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 296) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_56GetCDLERSt10shared_ptrINS_14GroupTransformEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !35
  %i.d = icmp eq i64 %i.c, 0
  %i.e = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #24
  %i.j = icmp sgt i32 %i.i, 0                     ; 2 uses
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  br i1 %i.j, label %.lr.ph, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.l

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef 0) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42, !noalias !39 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_9TransformEEERKS_IT_EPS1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call ptr @__dynamic_cast(ptr nonnull %i.q, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_512CDLTransformE, i64 0) #24, !noalias !39 ; 2 uses
  %.not.not.i = icmp eq ptr %i.s, null
  br i1 %.not.not.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_9TransformEEERKS_IT_EPS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.s, ptr %0, align 8, !tbaa !18, !alias.scope !39
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23, !noalias !39 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !23, !alias.scope !39
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13, !noalias !39
  %.not.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3, !noalias !39
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3, !noalias !39
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4, !noalias !39 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_9TransformEEERKS_IT_EPS1_.exit.i: ; preds = %bb.d, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !39
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.i:                                             ; preds = %bb.b
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull @.str)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ab) #24
  br label %bb.ax

bb.l:                                             ; preds = %.lr.ph, %bb.y
  %.03882 = phi i32 [ 0, %.lr.ph ], [ %i.bv, %bb.y ] ; 2 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef nonnull align 8 dereferenceable(16) ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, i32 noundef %.03882) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42, !noalias !45, !nonnull !48, !noundef !48
  %i.aj = tail call ptr @__dynamic_cast(ptr nonnull %i.ai, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_512CDLTransformE, i64 0) #24, !noalias !45 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aj) ]
  store ptr %i.aj, ptr %0, align 8, !tbaa !18, !alias.scope !45
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !23, !noalias !45 ; 3 uses
  store ptr %i.al, ptr %i.k, align 8, !tbaa !23, !alias.scope !45
  %.not.i.i.i.i52 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i52, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit55, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13, !noalias !45
  %.not.i.i.i.i.i53 = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i53, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !3, !noalias !45
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !3, !noalias !45
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit55

bb.o:                                             ; preds = %bb.m
  %i.aq = atomicrmw volatile add ptr %i.am, i32 1 acq_rel, align 4, !noalias !45 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit55

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit55: ; preds = %bb.l, %bb.n, %bb.o
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #24 ; 4 uses
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68, label %bb.p

bb.p:                                             ; preds = %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit55
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !13
  %.not41 = icmp eq i8 %i.az, 0
  br i1 %.not41, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = load i64, ptr %i.b, align 8, !tbaa !35  ; 3 uses
  %i.bb = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #24
  %i.bc = icmp eq i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68

bb.r:                                             ; preds = %bb.q
  %i.bd = icmp eq i64 %i.ba, 0
  br i1 %i.bd, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.r
  %i.be = load ptr, ptr %2, align 8, !tbaa !15
  %bcmp.i = tail call i32 @bcmp(ptr %i.be, ptr nonnull %i.ay, i64 %i.ba)
  %i.bf = icmp eq i32 %bcmp.i, 0
  br i1 %i.bf, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68: ; preds = %bb.q, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.p, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit55
  %7 = load ptr, ptr %i.k, align 8, !tbaa !23     ; 8 uses
  %.not.i.i = icmp eq ptr %7, null
  br i1 %.not.i.i, label %bb.y, label %bb.s

bb.s:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bg, align 8, !tbaa !25
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !27
  %i.bl = load ptr, ptr %7, align 8, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %7) #24, !inline_history !49
  %i.bo = load ptr, ptr %7, align 8, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %7) #24, !inline_history !49
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i = phi i32 [ %i.bj, %bb.v ], [ %i.bt, %bb.w ]
  %i.bu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bu, label %bb.x, label %bb.y, !prof !50

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #24
  br label %bb.y

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.x
  %i.bv = add nuw nsw i32 %.03882, 1              ; 2 uses
  %i.bw = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 88
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef i32 %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) #24
  %i.cb = icmp slt i32 %i.bv, %i.ca
  br i1 %i.cb, label %bb.l, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !llvm.loop !51

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.y, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.cc = load ptr, ptr %2, align 8, !tbaa !15
  %i.cd = call noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef nonnull %i.a, ptr noundef %i.cc, i1 noundef zeroext true)
  br i1 %i.cd, label %bb.z, label %bb.ap

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ce = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call noundef i32 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.ce) #24 ; 2 uses
  %i.cj = add nsw i32 %i.ci, -1
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !3   ; 3 uses
  %i.cl = icmp sgt i32 %i.ck, -1
  %.not44 = icmp slt i32 %i.ck, %i.ci
  %or.cond = and i1 %i.cl, %.not44
  br i1 %or.cond, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.1, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.aa
  %i.cn = load i32, ptr %i.a, align 4, !tbaa !3
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.cn)
          to label %bb.ab unwind label %bb.af     ; 0 uses

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.2, i64 noundef 45)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56: ; preds = %bb.ab
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %i.cj)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull @.str.3, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57 unwind label %bb.af ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57: ; preds = %bb.ac
  %i.cs = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.ad unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ad:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.ct = load ptr, ptr %4, align 8, !tbaa !15
  invoke void @_ZN16OpenColorIO_v2_520ExceptionMissingFileC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef %i.ct)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  invoke void @__cxa_throw(ptr nonnull %i.cs, ptr nonnull @_ZTIN16OpenColorIO_v2_520ExceptionMissingFileE, ptr nonnull @_ZN16OpenColorIO_v2_520ExceptionMissingFileD1Ev) #25
          to label %bb.ay unwind label %bb.ag

bb.af:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit57
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %.025 = phi i1 [ false, %bb.ae ], [ true, %bb.ad ] ; 2 uses
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cx = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ag
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !13
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.025, label %bb.ah, label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.025, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn4578 = phi { ptr, i32 } [ %i.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.cs) #24
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ah, %bb.af
  %.pn45.pn = phi { ptr, i32 } [ %.pn4578, %bb.ah ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cu, %bb.af ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.aw

bb.aj:                                            ; preds = %bb.z
  %i.dc = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !7
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 80
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call noundef nonnull align 8 dereferenceable(16) ptr %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, i32 noundef %i.ck) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !53)
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !42, !noalias !53 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_9TransformEEERKS_IT_EPS1_.exit.i61, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dj = call ptr @__dynamic_cast(ptr nonnull %i.dh, ptr nonnull @_ZTIN16OpenColorIO_v2_59TransformE, ptr nonnull @_ZTIN16OpenColorIO_v2_512CDLTransformE, i64 0) #24, !noalias !53 ; 2 uses
  %.not.not.i58 = icmp eq ptr %i.dj, null
  br i1 %.not.not.i58, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_9TransformEEERKS_IT_EPS1_.exit.i61, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store ptr %i.dj, ptr %0, align 8, !tbaa !18, !alias.scope !53
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !23, !noalias !53 ; 3 uses
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !23, !alias.scope !53
  %.not.i.i.i.i59 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i59, label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit62, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 3 uses
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13, !noalias !53
  %.not.i.i.i.i.i60 = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i.i60, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !3, !noalias !53
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !3, !noalias !53
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit62

bb.ao:                                            ; preds = %bb.am
  %i.dr = atomicrmw volatile add ptr %i.dn, i32 1 acq_rel, align 4, !noalias !53 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit62

_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_9TransformEEERKS_IT_EPS1_.exit.i61: ; preds = %bb.ak, %bb.aj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !53
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit62

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit62: ; preds = %bb.al, %bb.an, %bb.ao, %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_9TransformEEERKS_IT_EPS1_.exit.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.ap:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512CDLTransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.4, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %bb.as ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %bb.ap
  %i.dt = load ptr, ptr %2, align 8, !tbaa !15
  %i.du = load i64, ptr %i.b, align 8, !tbaa !35
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.dt, i64 noundef %i.du)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.as ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.5, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64 unwind label %bb.as ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.dx = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.aq unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread

bb.aq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %i.dy = load ptr, ptr %6, align 8, !tbaa !15
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, ptr noundef %i.dy)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_throw(ptr nonnull %i.dx, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
          to label %bb.ay unwind label %bb.at

bb.as:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63, %bb.ap
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit64
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.au

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.0 = phi i1 [ false, %bb.ar ], [ true, %bb.aq ] ; 2 uses
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ec = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.at
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !13
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0, label %bb.au, label %bb.av

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.0, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %.pn81 = phi { ptr, i32 } [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67.thread ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ]
  call void @__cxa_free_exception(ptr %i.dx) #24
  br label %bb.av

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.au, %bb.as
  %.pn.pn = phi { ptr, i32 } [ %.pn81, %bb.au ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %i.dz, %bb.as ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ai
  %.pn45.pn.pn = phi { ptr, i32 } [ %.pn45.pn, %bb.ai ], [ %.pn.pn, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.ax

_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %bb.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt10shared_ptrIN16OpenColorIO_v2_512CDLTransformEEC2INS0_9TransformEEERKS_IT_EPS1_.exit.i, %bb.h, %bb.g, %bb.e, %_ZSt20dynamic_pointer_castIN16OpenColorIO_v2_512CDLTransformENS0_9TransformEESt10shared_ptrIT_ERKS3_IT0_E.exit62
  ret void

bb.ax:                                            ; preds = %bb.aw, %bb.k
  %.pn49 = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn45.pn.pn, %bb.aw ]
  resume { ptr, i32 } %.pn49

bb.ay:                                            ; preds = %bb.ar, %bb.ae
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_59ExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare noundef zeroext i1 @_ZN16OpenColorIO_v2_511StringToIntEPiPKcb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

declare void @_ZN16OpenColorIO_v2_520ExceptionMissingFileC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN16OpenColorIO_v2_520ExceptionMissingFileD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4 align 2

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_512CDLTransform14CreateFromFileEPKcS2_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::shared_ptr.18", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::shared_ptr.21", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.11", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1, !tbaa !13
  %.not13 = icmp eq i8 %i.d, 0
  br i1 %.not13, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #25
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #24
  br label %bb.ar

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !9
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.h, ptr %i.b, align 8, !tbaa !58
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc22 unwind label %bb.ai  ; 2 uses

.noexc22:                                         ; preds = %.noexc.i
  store ptr %i.j, ptr %4, align 8, !tbaa !15
  %i.k = load i64, ptr %i.b, align 8, !tbaa !58
  store i64 %i.k, ptr %i.g, align 8, !tbaa !13
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc22, %bb.f
  %i.l = phi ptr [ %i.j, %.noexc22 ], [ %i.g, %bb.f ] ; 2 uses
  switch i64 %i.h, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %1, align 1, !tbaa !13
  store i8 %i.m, ptr %i.l, align 1, !tbaa !13
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr nonnull align 1 %1, i64 %i.h, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.n = load i64, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !35
  %i.p = load ptr, ptr %4, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZN16OpenColorIO_v2_56Config6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.21") align 8 %5)
          to label %bb.j unwind label %bb.aj

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr %5, align 8, !tbaa !59
  invoke void @_ZN16OpenColorIO_v2_522GetCachedFileAndFormatERPNS_10FileFormatERSt10shared_ptrINS_10CachedFileEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationERKNS_6ConfigE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 254, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.k unwind label %bb.ak

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !23   ; 8 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.u, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !27
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #24, !inline_history !62
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #24, !inline_history !62
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.x, %bb.o ], [ %i.ah, %bb.p ]
  %i.ai = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ai, label %bb.q, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !50

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #24
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.aj = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.g
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.al = load i64, ptr %i.g, align 8, !tbaa !13
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.an = load ptr, ptr %3, align 8, !tbaa !63    ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.11") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.r unwind label %bb.am

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %.not16 = icmp eq ptr %2, null
  %i.ar = select i1 %.not16, ptr @.str.7, ptr %2  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.as, ptr %7, align 8, !tbaa !9
  %i.at = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ar) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.at, ptr %i.a, align 8, !tbaa !58
  %i.au = icmp ugt i64 %i.at, 15
  br i1 %i.au, label %.noexc.i24, label %._crit_edge.i.i23

.noexc.i24:                                       ; preds = %bb.r
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc25 unwind label %bb.an  ; 2 uses

.noexc25:                                         ; preds = %.noexc.i24
  store ptr %i.av, ptr %7, align 8, !tbaa !15
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !58
  store i64 %i.aw, ptr %i.as, align 8, !tbaa !13
  br label %._crit_edge.i.i23

._crit_edge.i.i23:                                ; preds = %.noexc25, %bb.r
  %i.ax = phi ptr [ %i.av, %.noexc25 ], [ %i.as, %bb.r ] ; 2 uses
  switch i64 %i.at, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i23
  %i.ay = load i8, ptr %i.ar, align 1, !tbaa !13
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !13
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr nonnull align 1 %i.ar, i64 %i.at, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i23
end_hunk_0
