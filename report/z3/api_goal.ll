Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/api_goal?download=true
inline.NumInlined: 498
inline.NumDeleted: 173
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Z3_goal_translate:bb.a
  %.pn28.pn.pn41 = phi { ptr, i32 } [ %i.c, %.thread37 ], [ %.pn28.pn, %bb.v ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit33

_ZN10z3_log_ctxD2Ev.exit33:                       ; preds = %bb.v, %bb.w
  %.342 = phi i32 [ %.3, %bb.v ], [ %.343, %bb.w ]
  %.pn28.pn.pn40 = phi { ptr, i32 } [ %.pn28.pn, %bb.v ], [ %.pn28.pn.pn41, %bb.w ] ; 2 uses
  %i.ah = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #17
  %i.ai = icmp eq i32 %.342, %i.ah
  br i1 %i.ai, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit33
  %.324 = extractvalue { ptr, i32 } %.pn28.pn.pn40, 0
  %i.aj = call ptr @__cxa_begin_catch(ptr %.324) #17
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.aa unwind label %bb.ab

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.t, %bb.s, %bb.y
  %.026 = phi ptr [ null, %bb.y ], [ %i.i, %bb.s ], [ %i.i, %bb.t ]
  ret ptr %.026

bb.aa:                                            ; preds = %bb.z, %_ZN10z3_log_ctxD2Ev.exit33
  %.merged = phi { ptr, i32 } [ %.pn28.pn.pn40, %_ZN10z3_log_ctxD2Ev.exit33 ], [ %i.ak, %bb.z ]
  resume { ptr, i32 } %.merged

bb.ab:                                            ; preds = %bb.z
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #18
  unreachable
}

declare void @_Z21log_Z3_goal_translateP11_Z3_contextP8_Z3_goalS0_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN15ast_translationC2ER11ast_managerS1_b(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull align 8 dereferenceable(952) %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !322
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !322
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store i32 8, ptr %i.d, align 8, !tbaa !323
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.e, align 4, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.f, align 8, !tbaa !325
  %i.g = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 128)
          to label %.lr.ph.i.i.i.i.i.i.i.preheader unwind label %bb.d ; 9 uses

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.a
  store ptr null, ptr %i.g, align 8, !tbaa !328
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %i.h, align 8, !tbaa !328
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.i, align 8, !tbaa !328
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr null, ptr %i.j, align 8, !tbaa !328
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr null, ptr %i.k, align 8, !tbaa !328
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store ptr null, ptr %i.l, align 8, !tbaa !328
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store ptr null, ptr %i.m, align 8, !tbaa !328
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr null, ptr %i.n, align 8, !tbaa !328
  store ptr %i.g, ptr %i.c, align 8, !tbaa !210
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.not = icmp eq ptr %1, %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.o, i8 0, i64 20, i1 false)
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  br i1 %3, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !332, !nonnull !187, !align !193
  %i.q = load ptr, ptr %0, align 8, !tbaa !333, !nonnull !187, !align !193
  invoke void @_ZN11ast_manager21copy_families_pluginsERKS_(ptr noundef nonnull align 8 dereferenceable(952) %i.p, ptr noundef nonnull align 8 dereferenceable(952) %i.q)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %bb.f, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7obj_mapI3astPS0_ED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.c) #17
  br label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !332, !nonnull !187, !align !193
  %i.u = load ptr, ptr %0, align 8, !tbaa !333, !nonnull !187, !align !193
  invoke void @_ZN11ast_manager15update_fresh_idERKS_(ptr noundef nonnull align 8 dereferenceable(952) %i.t, ptr noundef nonnull align 8 dereferenceable(952) %i.u)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.preheader
  ret void

bb.h:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.r, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN6vectorIP3astLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #17
  tail call void @_ZN6vectorIP3astLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #17
  tail call void @_ZN6vectorIN15ast_translation5frameELb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #17
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZNK4goal9translateER15ast_translation(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(84)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN15ast_translationD1Ev(ptr noundef nonnull align 8 dead_on_return(84) dereferenceable(84)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_goal_to_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 21 uses
  %3 = alloca %class.ref.60, align 8              ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21log_Z3_goal_to_stringP11_Z3_contextP8_Z3_goal(ptr noundef %0, ptr noundef %1)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.436 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.q

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %_Z11to_goal_refP8_Z3_goal.exit unwind label %bb.l

_Z11to_goal_refP8_Z3_goal.exit:                   ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !173, !noalias !340, !nonnull !187, !noundef !187 ; 6 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !173, !alias.scope !340
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !185, !noalias !340
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !185, !noalias !340
  invoke void @_ZNK4goal7displayERSo(ptr noundef nonnull align 8 dereferenceable(124) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %_Z11to_goal_refP8_Z3_goal.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !185
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 8, !tbaa !185
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZN3refI4goalED2Ev.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4goalD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %i.f) #17
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(124) %i.f)
          to label %_ZN3refI4goalED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #18
  unreachable

_ZN3refI4goalED2Ev.exit:                          ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !216, !noalias !343 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %_ZN3refI4goalED2Ev.exit
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %6 = load ptr, ptr %5, align 8, !tbaa !217, !noalias !343 ; 2 uses
  %7 = icmp ugt ptr %i.r, %6
  %.08.i9.i.i = select i1 %7, ptr %i.r, ptr %6    ; 2 uses
  %.not.i.i24 = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i24, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !218, !noalias !343
  %i.v = ptrtoint ptr %.08.i9.i.i to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i64 %i.x, ptr %i.y, align 8, !tbaa !219, !noalias !343
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !220, !noalias !343
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !191, !noalias !343
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %_ZN3refI4goalED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.ac, ptr %4, align 8, !tbaa !221, !alias.scope !343
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !220, !noalias !343 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 7 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !219, !noalias !343 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.ad, ptr %4, align 8, !tbaa !220, !alias.scope !343
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !191, !noalias !343
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !191, !alias.scope !343
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !219, !noalias !343
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.al = phi i64 [ %i.ah, %bb.g ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.al, ptr %i.an, align 8, !tbaa !219, !alias.scope !343
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !220, !noalias !343
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.am, i8 0, i64 9, i1 false), !noalias !343
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.p, ptr noundef nonnull %i.ae, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !220, !alias.scope !343 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ac
  br i1 %i.aq, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ar = load i64, ptr %i.an, align 8, !tbaa !219 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.i, label %.sink.split.i.i

bb.i:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.i
  unreachable

.sink.split.i.i:                                  ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.at = add i64 %i.ar, -1                       ; 2 uses
  store i64 %i.at, ptr %i.an, align 8, !tbaa !219
  %i.au = load ptr, ptr %4, align 8, !tbaa !220
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i8 0, ptr %i.av, align 1, !tbaa !191
  %i.aw = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.n       ; 2 uses

bb.j:                                             ; preds = %.sink.split.i.i
  %i.ax = load ptr, ptr %4, align 8, !tbaa !220   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ac
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.az = load i64, ptr %i.ac, align 8, !tbaa !191
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bb, ptr %2, align 8, !tbaa !170
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !170
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8, !tbaa !170
  %i.bg = load ptr, ptr %i.ab, align 8, !tbaa !220 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.ae
  br i1 %i.bh, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load i64, ptr %i.ae, align 8, !tbaa !191
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8, !tbaa !170
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bk) #17
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bl) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %i.b, label %bb.k, label %_ZN10z3_log_ctxD2Ev.exit, !prof !168

bb.k:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.l:                                             ; preds = %bb.c
  %i.bm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.p

bb.m:                                             ; preds = %_Z11to_goal_refP8_Z3_goal.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @_ZN3refI4goalED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.o

bb.n:                                             ; preds = %bb.i, %.sink.split.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bp = load ptr, ptr %4, align 8, !tbaa !220   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.ac
  br i1 %i.bq, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.h
  %.sink = phi ptr [ %i.ap, %bb.h ], [ %i.bp, %bb.n ]
  %.pn19.ph = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.bo, %bb.n ]
  %i.br = load i64, ptr %i.ac, align 8, !tbaa !191
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bs) #20
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.h
  %.pn19 = phi { ptr, i32 } [ %i.ao, %bb.h ], [ %i.bo, %bb.n ], [ %.pn19.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %.body ], [ %i.bn, %bb.m ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %bb.o ], [ %i.bm, %bb.l ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %.4 = extractvalue { ptr, i32 } %.pn19.pn.pn, 1 ; 2 uses
  br i1 %i.b, label %bb.q, label %_ZN10z3_log_ctxD2Ev.exit32, !prof !186

bb.q:                                             ; preds = %.thread, %bb.p
  %.440 = phi i32 [ %.436, %.thread ], [ %.4, %bb.p ]
  %.pn19.pn.pn.pn38 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn19.pn.pn, %bb.p ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit32

_ZN10z3_log_ctxD2Ev.exit32:                       ; preds = %bb.p, %bb.q
  %.439 = phi i32 [ %.4, %bb.p ], [ %.440, %bb.q ]
  %.pn19.pn.pn.pn37 = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.p ], [ %.pn19.pn.pn.pn38, %bb.q ] ; 2 uses
  %i.bt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #17
  %i.bu = icmp eq i32 %.439, %i.bt
  br i1 %i.bu, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZN10z3_log_ctxD2Ev.exit32
  %.415 = extractvalue { ptr, i32 } %.pn19.pn.pn.pn37, 0
  %i.bv = call ptr @__cxa_begin_catch(ptr %.415) #17
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.u unwind label %bb.v

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.k, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.s
  %.017 = phi ptr [ @.str.3, %bb.s ], [ %i.aw, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.aw, %bb.k ]
  ret ptr %.017

bb.u:                                             ; preds = %bb.t, %_ZN10z3_log_ctxD2Ev.exit32
  %.merged = phi { ptr, i32 } [ %.pn19.pn.pn.pn37, %_ZN10z3_log_ctxD2Ev.exit32 ], [ %i.bw, %bb.t ]
  resume { ptr, i32 } %.merged

bb.v:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #18
  unreachable
}

declare void @_Z21log_Z3_goal_to_stringP11_Z3_contextP8_Z3_goal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

declare void @_ZNK4goal7displayERSo(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

; Function Attrs: mustprogress uwtable
define noundef ptr @Z3_goal_to_dimacs_string(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 24 uses
  %4 = alloca %class.ref.60, align 8              ; 5 uses
  %5 = alloca %class.ref.60, align 8              ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = atomicrmw xchg ptr @g_z3_log_enabled, i8 0 seq_cst, align 1
  %i.b = trunc i8 %i.a to i1                      ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z28log_Z3_goal_to_dimacs_stringP11_Z3_contextP8_Z3_goalb(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2)
          to label %bb.c unwind label %.thread

.thread:                                          ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %.550 = extractvalue { ptr, i32 } %i.c, 1
  br label %bb.z

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1600
  store i32 0, ptr %i.d, align 8, !tbaa !161
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %_Z11to_goal_refP8_Z3_goal.exit unwind label %bb.j

_Z11to_goal_refP8_Z3_goal.exit:                   ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !352)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !173, !noalias !352, !nonnull !187, !noundef !187 ; 6 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !173, !alias.scope !352
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !185, !noalias !352
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !185, !noalias !352
  %i.j = invoke noundef zeroext i1 @_ZNK4goal6is_cnfEv(ptr noundef nonnull align 8 dereferenceable(124) %i.f)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %_Z11to_goal_refP8_Z3_goal.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !185
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !185
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %_ZN3refI4goalED2Ev.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN4goalD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %i.f) #17
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(124) %i.f)
          to label %_ZN3refI4goalED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #18
  unreachable

_ZN3refI4goalED2Ev.exit:                          ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %i.j, label %_Z11to_goal_refP8_Z3_goal.exit34, label %bb.g

bb.g:                                             ; preds = %_ZN3refI4goalED2Ev.exit
  invoke void @_ZN3api7context14set_error_codeE13Z3_error_codePKc(ptr noundef nonnull align 8 dereferenceable(3088) %0, i32 noundef 3, ptr noundef nonnull @.str.4)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  br i1 %i.b, label %bb.i, label %bb.v, !prof !168

bb.i:                                             ; preds = %bb.h
  invoke void @_Z4SetRPKv(ptr noundef null)
          to label %bb.v unwind label %bb.l

bb.j:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.y

bb.k:                                             ; preds = %_Z11to_goal_refP8_Z3_goal.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @_ZN3refI4goalED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.x

bb.l:                                             ; preds = %bb.g, %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  br label %bb.x

_Z11to_goal_refP8_Z3_goal.exit34:                 ; preds = %_ZN3refI4goalED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !173, !noalias !353, !nonnull !187, !noundef !187 ; 6 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !173, !alias.scope !353
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !185, !noalias !353
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !185, !noalias !353
  invoke void @_ZNK4goal14display_dimacsERSob(ptr noundef nonnull align 8 dereferenceable(124) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %2)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %_Z11to_goal_refP8_Z3_goal.exit34
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !185
  %i.aa = add i32 %i.z, -1                        ; 2 uses
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !185
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.n, label %_ZN3refI4goalED2Ev.exit36

bb.n:                                             ; preds = %bb.m
  call void @_ZN4goalD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %i.u) #17
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(124) %i.u)
          to label %_ZN3refI4goalED2Ev.exit36 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #18
  unreachable

_ZN3refI4goalED2Ev.exit36:                        ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !216, !noalias !356 ; 3 uses
  %.not.i4.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i4.not.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i: ; preds = %_ZN3refI4goalED2Ev.exit36
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %8 = load ptr, ptr %7, align 8, !tbaa !217, !noalias !356 ; 2 uses
  %9 = icmp ugt ptr %i.ag, %8
  %.08.i9.i.i = select i1 %9, ptr %i.ag, ptr %8   ; 2 uses
  %.not.i.i37 = icmp eq ptr %.08.i9.i.i, null
  br i1 %.not.i.i37, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i, label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !218, !noalias !356
  %i.ak = ptrtoint ptr %.08.i9.i.i to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i64 %i.am, ptr %i.an, align 8, !tbaa !219, !noalias !356
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !220, !noalias !356
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !191, !noalias !356
  br label %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i

_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit.i.i, %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.i.i, %_ZN3refI4goalED2Ev.exit36
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.ar, ptr %6, align 8, !tbaa !221, !alias.scope !356
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !220, !noalias !356 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.p:                                             ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !219, !noalias !356 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE12_M_high_markEv.exit10.thread.i.i
  store ptr %i.as, ptr %6, align 8, !tbaa !220, !alias.scope !356
  %i.az = load i64, ptr %i.at, align 8, !tbaa !191, !noalias !356
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !191, !alias.scope !356
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !219, !noalias !356
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.p
  %i.ba = phi i64 [ %i.aw, %bb.p ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !219, !alias.scope !356
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !220, !noalias !356
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bb, i8 0, i64 9, i1 false), !noalias !356
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %i.ae, ptr noundef nonnull %i.at, i64 noundef 0, i64 noundef 0)
          to label %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.be = load ptr, ptr %6, align 8, !tbaa !220, !alias.scope !356 ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.ar
  br i1 %i.bf, label %.body, label %.body.sink.split

_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.bg = load i64, ptr %i.bc, align 8, !tbaa !219 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.r, label %.sink.split.i.i

bb.r:                                             ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.r
  unreachable

.sink.split.i.i:                                  ; preds = %_ZNOSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bi = add i64 %i.bg, -1                       ; 2 uses
  store i64 %i.bi, ptr %i.bc, align 8, !tbaa !219
  %i.bj = load ptr, ptr %6, align 8, !tbaa !220
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 0, ptr %i.bk, align 1, !tbaa !191
  %i.bl = invoke noundef ptr @_ZN3api7context18mk_external_stringEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %.sink.split.i.i
  %i.bm = load ptr, ptr %6, align 8, !tbaa !220   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.ar
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.bo = load i64, ptr %i.ar, align 8, !tbaa !191
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.v

bb.t:                                             ; preds = %_Z11to_goal_refP8_Z3_goal.exit34
  %i.bq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception
  call void @_ZN3refI4goalED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.x

bb.u:                                             ; preds = %bb.r, %.sink.split.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI12z3_exception           ; 2 uses
  %i.bs = load ptr, ptr %6, align 8, !tbaa !220   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ar
  br i1 %i.bt, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.u, %bb.q
  %.sink = phi ptr [ %i.be, %bb.q ], [ %i.bs, %bb.u ]
  %.pn27.ph = phi { ptr, i32 } [ %i.bd, %bb.q ], [ %i.br, %bb.u ]
  %i.bu = load i64, ptr %i.ar, align 8, !tbaa !191
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bv) #20
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.u, %bb.q
  %.pn27 = phi { ptr, i32 } [ %i.bd, %bb.q ], [ %i.br, %bb.u ], [ %.pn27.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.x

bb.v:                                             ; preds = %bb.h, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.022 = phi ptr [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ null, %bb.i ], [ null, %bb.h ] ; 2 uses
  %i.bw = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bw, ptr %3, align 8, !tbaa !170
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.by = getelementptr i8, ptr %i.bw, i64 -24
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = getelementptr inbounds i8, ptr %3, i64 %i.bz
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !170
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cb, align 8, !tbaa !170
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !220 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43: ; preds = %bb.v
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !191
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i43
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cb, align 8, !tbaa !170
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ci) #17
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.cj) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br i1 %i.b, label %bb.w, label %_ZN10z3_log_ctxD2Ev.exit, !prof !168

bb.w:                                             ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.x:                                             ; preds = %.body, %bb.t, %bb.l, %bb.k
  %.pn29 = phi { ptr, i32 } [ %i.s, %bb.l ], [ %i.r, %bb.k ], [ %.pn27, %.body ], [ %i.bq, %bb.t ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.j, %bb.x
  %.pn29.pn = phi { ptr, i32 } [ %.pn29, %bb.x ], [ %i.q, %bb.j ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.5 = extractvalue { ptr, i32 } %.pn29.pn, 1    ; 2 uses
  br i1 %i.b, label %bb.z, label %_ZN10z3_log_ctxD2Ev.exit45, !prof !186

bb.z:                                             ; preds = %.thread, %bb.y
  %.554 = phi i32 [ %.550, %.thread ], [ %.5, %bb.y ]
  %.pn29.pn.pn52 = phi { ptr, i32 } [ %i.c, %.thread ], [ %.pn29.pn, %bb.y ]
  store atomic i8 1, ptr @g_z3_log_enabled seq_cst, align 1
  br label %_ZN10z3_log_ctxD2Ev.exit45

_ZN10z3_log_ctxD2Ev.exit45:                       ; preds = %bb.y, %bb.z
  %.553 = phi i32 [ %.5, %bb.y ], [ %.554, %bb.z ]
  %.pn29.pn.pn51 = phi { ptr, i32 } [ %.pn29.pn, %bb.y ], [ %.pn29.pn.pn52, %bb.z ] ; 2 uses
  %i.ck = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI12z3_exception) #17
  %i.cl = icmp eq i32 %.553, %i.ck
  br i1 %i.cl, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %_ZN10z3_log_ctxD2Ev.exit45
  %.520 = extractvalue { ptr, i32 } %.pn29.pn.pn51, 0
  %i.cm = call ptr @__cxa_begin_catch(ptr %.520) #17
  invoke void @_ZN3api7context16handle_exceptionER12z3_exception(ptr noundef nonnull align 8 dereferenceable(3088) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @__cxa_end_catch()
  br label %_ZN10z3_log_ctxD2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ad unwind label %bb.ae

_ZN10z3_log_ctxD2Ev.exit:                         ; preds = %bb.w, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.ab
  %.123 = phi ptr [ @.str.3, %bb.ab ], [ %.022, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %.022, %bb.w ]
  ret ptr %.123

bb.ad:                                            ; preds = %bb.ac, %_ZN10z3_log_ctxD2Ev.exit45
  %.merged = phi { ptr, i32 } [ %.pn29.pn.pn51, %_ZN10z3_log_ctxD2Ev.exit45 ], [ %i.cn, %bb.ac ]
  resume { ptr, i32 } %.merged

bb.ae:                                            ; preds = %bb.ac
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #18
  unreachable
}

end_hunk_0
