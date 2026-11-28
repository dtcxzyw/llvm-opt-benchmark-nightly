Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_eventmanager?download=true
inline.NumInlined: 597
inline.NumDeleted: 312
begin_hunk_0_@_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci:bb.a
.noexc.i:                                         ; preds = %bb.e
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc6 unwind label %bb.i    ; 2 uses

.noexc6:                                          ; preds = %.noexc.i
  store ptr %i.t, ptr %i.o, align 8, !tbaa !20
  %i.u = load i64, ptr %i.a, align 8, !tbaa !65
  store i64 %i.u, ptr %i.p, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc6, %bb.e
  %i.v = phi ptr [ %i.t, %.noexc6 ], [ %i.p, %bb.e ] ; 2 uses
  switch i64 %i.r, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %i.n, align 1, !tbaa !21
  store i8 %i.w, ptr %i.v, align 1, !tbaa !21
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %i.n, i64 %i.r, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.x, ptr %i.y, align 8, !tbaa !66
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %3, ptr %i.ab, align 8, !tbaa !89
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %.noexc.i, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %0, align 8, !tbaa !20    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.b
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.af = load i64, ptr %i.b, align 8, !tbaa !21
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ac
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19TestFailedExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !21
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16TestEventManager23testRealEventAfterDeregEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.EventManager, align 8        ; 13 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV12EventManager, i64 16), ptr %1, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.b, ptr %i.d, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.e, align 8, !tbaa !30
  %i.f = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23
          to label %bb.b unwind label %bb.h, !noalias !92 ; 13 uses

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.f, i8 0, i64 32, i1 false), !noalias !92
  store ptr %i.g, ptr %i.h, align 16, !tbaa !28, !noalias !92
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.g, ptr %i.i, align 8, !tbaa !29, !noalias !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 0, ptr %i.j, align 16, !tbaa !30, !noalias !92
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16EventManagerTest, i64 16), ptr %i.f, align 16, !tbaa !14, !noalias !92
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 4 uses
  store i64 0, ptr %i.k, align 8, !tbaa !59, !noalias !92
  invoke void @_ZN12EventManager3regEN7MtEvent4TypeEPFvPS0_PvES3_(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 noundef zeroext 7, ptr noundef nonnull @_ZN16EventManagerTest9eventTestEP7MtEventPv, ptr noundef nonnull %i.f)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.l = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc:                                           ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV18SimpleTriggerEvent, i64 16), ptr %i.l, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i8 7, ptr %i.m, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not10.i.i.i.i, label %.loopexit66, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %.noexc ] ; 5 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %.noexc ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.q = load i8, ptr %i.p, align 1, !tbaa !34
  %i.r = icmp ult i8 %i.q, 7                      ; 4 uses
  %.19.i.i.i.i = select i1 %i.r, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.r, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = icmp eq ptr %.19.i.i.i.i, %i.b
  br i1 %i.s, label %.loopexit66, label %_ZNSt3mapIN7MtEvent4TypeEN12EventManager4DestESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i

_ZNSt3mapIN7MtEvent4TypeEN12EventManager4DestESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i: ; preds = %_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.r, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.t = load i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !34
  %i.u = icmp ugt i8 %i.t, 7
  br i1 %i.u, label %.loopexit66, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIN7MtEvent4TypeEN12EventManager4DestESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i
  %.19.i.i.i.i.sroa.sel52.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.r, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel52.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel52.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40 ; 3 uses
  %.sroa.09.016.i = load ptr, ptr %.19.i.i.i.i.sroa.sel52.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !47 ; 2 uses
  %.not17.i = icmp eq ptr %.sroa.09.016.i, %.19.i.i.i.i.sroa.sel52.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel
  br i1 %.not17.i, label %.loopexit66, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.noexc16
  %.sroa.09.018.i = phi ptr [ %.sroa.09.0.i, %.noexc16 ], [ %.sroa.09.016.i, %bb.d ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.09.018.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !38
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.09.018.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39
  invoke void %i.w(ptr noundef nonnull %i.l, ptr noundef %i.y)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !63

.noexc16:                                         ; preds = %.lr.ph.i
  %.sroa.09.0.i = load ptr, ptr %.sroa.09.018.i, align 8, !tbaa !47 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.09.0.i, %.19.i.i.i.i.sroa.sel52.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel
  br i1 %.not.i, label %.loopexit66.loopexit, label %.lr.ph.i

.loopexit66.loopexit:                             ; preds = %.noexc16
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !14
  br label %.loopexit66

.loopexit66:                                      ; preds = %.loopexit66.loopexit, %bb.d, %_ZNSt3mapIN7MtEvent4TypeEN12EventManager4DestESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i, %_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %.noexc
  %i.z = phi ptr [ %.pre, %.loopexit66.loopexit ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV18SimpleTriggerEvent, i64 16), %bb.d ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV18SimpleTriggerEvent, i64 16), %_ZNSt3mapIN7MtEvent4TypeEN12EventManager4DestESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV18SimpleTriggerEvent, i64 16), %_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV18SimpleTriggerEvent, i64 16), %.noexc ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #21, !inline_history !63
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !59
  %i.ad = icmp eq i64 %i.ac, 7
  br i1 %i.ad, label %bb.j, label %bb.e

bb.e:                                             ; preds = %.loopexit66
  %i.ae = call ptr @__cxa_allocate_exception(i64 72) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.ae, ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.5, i32 noundef 87)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #24
          to label %bb.u unwind label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i30, %.lr.ph.i, %_ZN12EventManager5deregEN7MtEvent4TypeEPFvPS0_PvES3_.exit, %bb.c, %bb.b
  %lpad.loopexit.split-lp162 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43.sink.split

bb.i:                                             ; preds = %bb.g, %bb.f
  %.03 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !21
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.03, label %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43.sink.split, label %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.03, label %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43.sink.split, label %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43

bb.j:                                             ; preds = %.loopexit66
  store i64 0, ptr %i.k, align 8, !tbaa !59
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !31  ; 2 uses
  %.not10.i.i.i.i91 = icmp eq ptr %i.an, null
  br i1 %.not10.i.i.i.i91, label %_ZN12EventManager5deregEN7MtEvent4TypeEPFvPS0_PvES3_.exit, label %.lr.ph.i.i.i.i92

.lr.ph.i.i.i.i92:                                 ; preds = %bb.j, %.lr.ph.i.i.i.i92
  %.012.i.i.i.i93 = phi ptr [ %.1.i.i.i.i98, %.lr.ph.i.i.i.i92 ], [ %i.an, %bb.j ] ; 6 uses
  %.0811.i.i.i.i94 = phi ptr [ %.19.i.i.i.i95, %.lr.ph.i.i.i.i92 ], [ %i.b, %bb.j ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i93, i64 32
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !34
  %i.aq = icmp ult i8 %i.ap, 7                    ; 5 uses
  %.19.i.i.i.i95 = select i1 %i.aq, ptr %.0811.i.i.i.i94, ptr %.012.i.i.i.i93 ; 2 uses
  %.1.in.v.i.i.i.i96 = select i1 %i.aq, i64 24, i64 16
  %.1.in.i.i.i.i97 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i93, i64 %.1.in.v.i.i.i.i96
  %.1.i.i.i.i98 = load ptr, ptr %.1.in.i.i.i.i97, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i.i99 = icmp eq ptr %.1.i.i.i.i98, null
  br i1 %.not.i.i.i.i99, label %_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i100, label %.lr.ph.i.i.i.i92, !llvm.loop !0

_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i100: ; preds = %.lr.ph.i.i.i.i92
  %i.ar = icmp eq ptr %.19.i.i.i.i95, %i.b
  br i1 %i.ar, label %_ZN12EventManager5deregEN7MtEvent4TypeEPFvPS0_PvES3_.exit, label %_ZNSt3mapIN7MtEvent4TypeEN12EventManager4DestESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i101

_ZNSt3mapIN7MtEvent4TypeEN12EventManager4DestESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i101: ; preds = %_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i100
  %.19.i.i.i.i95.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aq, ptr %.0811.i.i.i.i94, ptr %.012.i.i.i.i93
  %.19.i.i.i.i95.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i95.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.as = load i8, ptr %.19.i.i.i.i95.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !34
  %i.at = icmp ugt i8 %i.as, 7
  br i1 %i.at, label %_ZN12EventManager5deregEN7MtEvent4TypeEPFvPS0_PvES3_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapIN7MtEvent4TypeEN12EventManager4DestESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i101
  %.19.i.i.i.i95.sroa.sel110.v.sroa.sel.v.sroa.sel.v = select i1 %i.aq, ptr %.0811.i.i.i.i94, ptr %.012.i.i.i.i93
  %.19.i.i.i.i95.sroa.sel110.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i95.sroa.sel110.v.sroa.sel.v.sroa.sel.v, i64 40 ; 3 uses
  %i.au = load ptr, ptr %.19.i.i.i.i95.sroa.sel110.v.sroa.sel.v.sroa.sel, align 8, !tbaa !47 ; 2 uses
  %.not2021.i = icmp eq ptr %i.au, %.19.i.i.i.i95.sroa.sel110.v.sroa.sel.v.sroa.sel
  br i1 %.not2021.i, label %_ZN12EventManager5deregEN7MtEvent4TypeEPFvPS0_PvES3_.exit, label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %bb.k
  %.19.i.i.i.i95.sroa.sel113.v.sroa.sel.v.sroa.sel.v = select i1 %i.aq, ptr %.0811.i.i.i.i94, ptr %.012.i.i.i.i93
  %.19.i.i.i.i95.sroa.sel113.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i95.sroa.sel113.v.sroa.sel.v.sroa.sel.v, i64 56 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i102, %bb.m
  %.sroa.010.022.i = phi ptr [ %.sroa.010.1.i, %bb.m ], [ %i.au, %.lr.ph.i102 ] ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.010.022.i, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38
  %i.ax = icmp eq ptr %i.aw, @_ZN16EventManagerTest9eventTestEP7MtEventPv
  br i1 %i.ax, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %.lr.ph.split.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.010.022.i, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !39
  %i.ba = icmp eq ptr %i.az, %i.f
  br i1 %i.ba, label %.critedge8.i, label %.critedge.i

.critedge8.i:                                     ; preds = %bb.l
  %i.bb = load ptr, ptr %.sroa.010.022.i, align 8, !tbaa !47
  %i.bc = load i64, ptr %.19.i.i.i.i95.sroa.sel113.v.sroa.sel.v.sroa.sel, align 8, !tbaa !45
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %.19.i.i.i.i95.sroa.sel113.v.sroa.sel.v.sroa.sel, align 8, !tbaa !45
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.022.i) #21
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.010.022.i, i64 noundef 32) #20
  br label %bb.m

.critedge.i:                                      ; preds = %bb.l, %.lr.ph.split.i
  %i.be = load ptr, ptr %.sroa.010.022.i, align 8, !tbaa !47
  br label %bb.m

bb.m:                                             ; preds = %.critedge.i, %.critedge8.i
  %.sroa.010.1.i = phi ptr [ %i.bb, %.critedge8.i ], [ %i.be, %.critedge.i ] ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.010.1.i, %.19.i.i.i.i95.sroa.sel110.v.sroa.sel.v.sroa.sel
  br i1 %.not20.i, label %_ZN12EventManager5deregEN7MtEvent4TypeEPFvPS0_PvES3_.exit, label %.lr.ph.split.i, !llvm.loop !2

_ZN12EventManager5deregEN7MtEvent4TypeEPFvPS0_PvES3_.exit: ; preds = %bb.m, %bb.k, %_ZNSt3mapIN7MtEvent4TypeEN12EventManager4DestESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i101, %_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i100, %bb.j
  %i.bf = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #23
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc34:                                         ; preds = %_ZN12EventManager5deregEN7MtEvent4TypeEPFvPS0_PvES3_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV18SimpleTriggerEvent, i64 16), ptr %i.bf, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i8 7, ptr %i.bg, align 8, !tbaa !62
  %i.bh = load ptr, ptr %i.n, align 8, !tbaa !31  ; 2 uses
  %.not10.i.i.i.i17 = icmp eq ptr %i.bh, null
  br i1 %.not10.i.i.i.i17, label %.loopexit62, label %.lr.ph.i.i.i.i18

.lr.ph.i.i.i.i18:                                 ; preds = %.noexc34, %.lr.ph.i.i.i.i18
  %.012.i.i.i.i19 = phi ptr [ %.1.i.i.i.i24, %.lr.ph.i.i.i.i18 ], [ %i.bh, %.noexc34 ] ; 5 uses
  %.0811.i.i.i.i20 = phi ptr [ %.19.i.i.i.i21, %.lr.ph.i.i.i.i18 ], [ %i.b, %.noexc34 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i19, i64 32
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !34
  %i.bk = icmp ult i8 %i.bj, 7                    ; 4 uses
  %.19.i.i.i.i21 = select i1 %i.bk, ptr %.0811.i.i.i.i20, ptr %.012.i.i.i.i19 ; 2 uses
  %.1.in.v.i.i.i.i22 = select i1 %i.bk, i64 24, i64 16
  %.1.in.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i19, i64 %.1.in.v.i.i.i.i22
  %.1.i.i.i.i24 = load ptr, ptr %.1.in.i.i.i.i23, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i.i25 = icmp eq ptr %.1.i.i.i.i24, null
  br i1 %.not.i.i.i.i25, label %_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i26, label %.lr.ph.i.i.i.i18, !llvm.loop !0

_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i26: ; preds = %.lr.ph.i.i.i.i18
  %i.bl = icmp eq ptr %.19.i.i.i.i21, %i.b
  br i1 %i.bl, label %.loopexit62, label %_ZNSt3mapIN7MtEvent4TypeEN12EventManager4DestESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i27

_ZNSt3mapIN7MtEvent4TypeEN12EventManager4DestESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i27: ; preds = %_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i26
  %.19.i.i.i.i21.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bk, ptr %.0811.i.i.i.i20, ptr %.012.i.i.i.i19
  %.19.i.i.i.i21.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i21.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bm = load i8, ptr %.19.i.i.i.i21.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !tbaa !34
  %i.bn = icmp ugt i8 %i.bm, 7
  br i1 %i.bn, label %.loopexit62, label %bb.n

bb.n:                                             ; preds = %_ZNSt3mapIN7MtEvent4TypeEN12EventManager4DestESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i27
  %.19.i.i.i.i21.sroa.sel55.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bk, ptr %.0811.i.i.i.i20, ptr %.012.i.i.i.i19
  %.19.i.i.i.i21.sroa.sel55.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i21.sroa.sel55.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40 ; 3 uses
  %.sroa.09.016.i28 = load ptr, ptr %.19.i.i.i.i21.sroa.sel55.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !47 ; 2 uses
  %.not17.i29 = icmp eq ptr %.sroa.09.016.i28, %.19.i.i.i.i21.sroa.sel55.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel
  br i1 %.not17.i29, label %.loopexit62, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.n, %.noexc35
  %.sroa.09.018.i31 = phi ptr [ %.sroa.09.0.i32, %.noexc35 ], [ %.sroa.09.016.i28, %bb.n ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.09.018.i31, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !38
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.09.018.i31, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !39
  invoke void %i.bp(ptr noundef nonnull %i.bf, ptr noundef %i.br)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !63

.noexc35:                                         ; preds = %.lr.ph.i30
  %.sroa.09.0.i32 = load ptr, ptr %.sroa.09.018.i31, align 8, !tbaa !47 ; 2 uses
  %.not.i33 = icmp eq ptr %.sroa.09.0.i32, %.19.i.i.i.i21.sroa.sel55.v.sroa.sel.v.sroa.sel.v.sroa.sel.v.sroa.sel
  br i1 %.not.i33, label %.loopexit62.loopexit, label %.lr.ph.i30

.loopexit62.loopexit:                             ; preds = %.noexc35
  %.pre138 = load ptr, ptr %i.bf, align 8, !tbaa !14
  br label %.loopexit62

.loopexit62:                                      ; preds = %.loopexit62.loopexit, %bb.n, %_ZNSt3mapIN7MtEvent4TypeEN12EventManager4DestESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i27, %_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i26, %.noexc34
  %i.bs = phi ptr [ %.pre138, %.loopexit62.loopexit ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV18SimpleTriggerEvent, i64 16), %bb.n ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV18SimpleTriggerEvent, i64 16), %_ZNSt3mapIN7MtEvent4TypeEN12EventManager4DestESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i27 ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV18SimpleTriggerEvent, i64 16), %_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS3_.exit.i.i.i26 ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV18SimpleTriggerEvent, i64 16), %.noexc34 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.bf) #21, !inline_history !63
  %i.bv = load i64, ptr %i.k, align 8, !tbaa !59
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit62
  %i.bx = call ptr @__cxa_allocate_exception(i64 72) #21 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.bx, ptr noundef nonnull align 8 %4, ptr noundef nonnull @.str.5, i32 noundef 97)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bx, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #24
          to label %bb.u unwind label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread: ; preds = %bb.o
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43.sink.split

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi i1 [ false, %bb.q ], [ true, %bb.p ]  ; 2 uses
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ca = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.r
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !21
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %.0, label %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43.sink.split, label %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %.0, label %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43.sink.split, label %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43

_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit: ; preds = %.loopexit62
  %i.cf = load ptr, ptr %i.f, align 16, !tbaa !14
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(64) %i.f) #21, !inline_history !3
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV12EventManager, i64 16), ptr %1, align 8, !tbaa !14
  %i.ci = load ptr, ptr %i.n, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.ci)
          to label %_ZN12EventManagerD2Ev.exit unwind label %bb.s, !inline_history !32

bb.s:                                             ; preds = %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #22, !inline_history !32
  unreachable

_ZN12EventManagerD2Ev.exit:                       ; preds = %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43.sink.split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ]
  %.pn12.pn.ph = phi { ptr, i32 } [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ]
  call void @__cxa_free_exception(ptr %.sink) #21
  br label %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43

_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn12.pn = phi { ptr, i32 } [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ], [ %.pn12.pn.ph, %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43.sink.split ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.loopexit.split-lp162, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cl = load ptr, ptr %i.f, align 16, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(64) %i.f) #21, !inline_history !3
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43, %bb.h
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn12.pn, %_ZNSt10unique_ptrI16EventManagerTestSt14default_deleteIS0_EED2Ev.exit43 ], [ %i.af, %bb.h ]
  call void @_ZN12EventManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn12.pn.pn

bb.u:                                             ; preds = %bb.q, %bb.g
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN16TestEventManager7getNameEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr @.str.10
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11TestManager18registerTestModuleEP8TestBase(ptr noundef %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN11TestManager14getTestModulesEvE17m_modules_to_test acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN11TestManager14getTestModulesEv.exit, !prof !93

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN11TestManager14getTestModulesEvE17m_modules_to_test) #21
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN11TestManager14getTestModulesEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i8 0, i64 24, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIP8TestBaseSaIS1_EED2Ev, ptr nonnull @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, ptr nonnull @__dso_handle) #21 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN11TestManager14getTestModulesEvE17m_modules_to_test) #21
  br label %_ZN11TestManager14getTestModulesEv.exit

_ZN11TestManager14getTestModulesEv.exit:          ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 8), align 8, !tbaa !94 ; 4 uses
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 16), align 8, !tbaa !70
  %.not.i1 = icmp eq ptr %i.e, %i.f
  br i1 %.not.i1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN11TestManager14getTestModulesEv.exit
  store ptr %0, ptr %i.e, align 8, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 8), align 8, !tbaa !94
  br label %_ZNSt6vectorIP8TestBaseSaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %_ZN11TestManager14getTestModulesEv.exit
  %i.h = load ptr, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, align 8, !tbaa !71 ; 4 uses
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 5 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.f, label %_ZNKSt6vectorIP8TestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #24
  unreachable

_ZNKSt6vectorIP8TestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #23 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.k ; 2 uses
  store ptr %0, ptr %i.t, align 8, !tbaa !96
  %i.u = icmp sgt i64 %i.k, 0
  br i1 %i.u, label %bb.g, label %_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIP8TestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIP8TestBaseSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP8TestBaseSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 16), align 8, !tbaa !70
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.y) #20
  br label %_ZNSt6vectorIP8TestBaseSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP8TestBaseSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIP8TestBaseSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.s, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, align 8, !tbaa !71
  store ptr %i.v, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 8), align 8, !tbaa !94
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr getelementptr inbounds nuw (i8, ptr @_ZZN11TestManager14getTestModulesEvE17m_modules_to_test, i64 16), align 8, !tbaa !70
  br label %_ZNSt6vectorIP8TestBaseSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP8TestBaseSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %_ZNSt6vectorIP8TestBaseSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP8TestBaseSaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIP8TestBaseSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #20
  br label %_ZNSt12_Vector_baseIP8TestBaseSaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIP8TestBaseSaIS1_EED2Ev.exit:  ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12EventManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV12EventManager, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN12EventManagerD2Ev.exit unwind label %bb.b, !inline_history !32

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #22, !inline_history !32
  unreachable

_ZN12EventManagerD2Ev.exit:                       ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIN7MtEvent4TypeESt4pairIKS1_N12EventManager4DestEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<MtEvent::Type, std::pair<const MtEvent::Type, EventManager::Dest>, std::_Select1st<std::pair<const MtEvent::Type, EventManager::Dest>>, std::less<MtEvent::Type>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %0, ptr %5, align 8, !tbaa !97
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !49
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i8, ptr %i.e, align 1, !tbaa !34
  store i8 %i.f, ptr %i.c, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
end_hunk_0
