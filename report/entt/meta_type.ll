Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_type?download=true
inline.NumInlined: 12374
inline.NumDeleted: 3212
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN23MetaType_IdAndInfo_Test8TestBodyEv:bb.a

_ZN7testing7MessageD2Ev.exit81:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i80, %bb.ai, %bb.af
  %.pn28.pn = phi { ptr, i32 } [ %i.ch, %bb.af ], [ %.pn28, %bb.ai ], [ %.pn28, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.bc

.critedge38:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIjN4entt19basic_hashed_stringIcEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !113 ; 4 uses
  %.not.i.i82 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i82, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.critedge38
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !116 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i83: ; preds = %bb.aj
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !119
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i83
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 32) #31
  br label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84, %.critedge38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.cv = load ptr, ptr %1, align 8, !tbaa !100   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.al, label %_ZNK4entt9meta_type4infoEv.exit

bb.al:                                            ; preds = %bb.ak
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !99
  %i.cy = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.cx) #29
  br label %_ZNK4entt9meta_type4infoEv.exit

_ZNK4entt9meta_type4infoEv.exit:                  ; preds = %bb.ak, %bb.al
  %i.cz = phi ptr [ %i.cy, %bb.al ], [ %i.cv, %bb.ak ]
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !132 ; 2 uses
  %i.db = load atomic i8, ptr @_ZGVZN4entt7type_idIN8MetaType5clazzEEERKNS_9type_infoEvE8instance acquire, align 8
  %i.dc = icmp eq i8 %i.db, 0
  br i1 %i.dc, label %bb.am, label %_ZN4entt7type_idIN8MetaType5clazzEEERKNS_9type_infoEv.exit, !prof !120

bb.am:                                            ; preds = %_ZNK4entt9meta_type4infoEv.exit
  %i.dd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4entt7type_idIN8MetaType5clazzEEERKNS_9type_infoEvE8instance) #29
  %.not.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i, label %_ZN4entt7type_idIN8MetaType5clazzEEERKNS_9type_infoEv.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN4entt9type_infoC2IN8MetaType5clazzEEESt15in_place_type_tIT_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN8MetaType5clazzEEERKNS_9type_infoEvE8instance) #29
  %i.de = call ptr @llvm.invariant.start.p0(i64 24, ptr nonnull @_ZZN4entt7type_idIN8MetaType5clazzEEERKNS_9type_infoEvE8instance) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4entt7type_idIN8MetaType5clazzEEERKNS_9type_infoEvE8instance) #29
  br label %_ZN4entt7type_idIN8MetaType5clazzEEERKNS_9type_infoEv.exit

_ZN4entt7type_idIN8MetaType5clazzEEERKNS_9type_infoEv.exit: ; preds = %_ZNK4entt9meta_type4infoEv.exit, %bb.am, %bb.an
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !123, !noalias !514
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4entt7type_idIN8MetaType5clazzEEERKNS_9type_infoEvE8instance, i64 4), align 4, !tbaa !123, !noalias !514
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN4entt7type_idIN8MetaType5clazzEEERKNS_9type_infoEv.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
  br label %_ZN7testing8internal8EqHelper7CompareIN4entt9type_infoES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit

bb.ap:                                            ; preds = %_ZN4entt7type_idIN8MetaType5clazzEEERKNS_9type_infoEv.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIN4entt9type_infoES3_EENS_15AssertionResultEPKcS6_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.110, ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4entt7type_idIN8MetaType5clazzEEERKNS_9type_infoEvE8instance)
  br label %_ZN7testing8internal8EqHelper7CompareIN4entt9type_infoES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit

_ZN7testing8internal8EqHelper7CompareIN4entt9type_infoES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit: ; preds = %bb.ao, %bb.ap
  %i.dj = load i8, ptr %10, align 8, !tbaa !110, !range !111, !noundef !112
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %bb.az, label %bb.aq

bb.aq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt9type_infoES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ar unwind label %bb.av

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.dl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i87 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i87, label %_ZNK7testing15AssertionResult15failure_messageEv.exit88, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !116
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit88

_ZNK7testing15AssertionResult15failure_messageEv.exit88: ; preds = %bb.as, %bb.ar
  %i.do = phi ptr [ %i.dn, %bb.as ], [ @.str.93, %bb.ar ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 311, ptr noundef %i.do)
          to label %bb.at unwind label %bb.aw

bb.at:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit88
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.dp = load ptr, ptr %11, align 8, !tbaa !118  ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i89, label %_ZN7testing7MessageD2Ev.exit91, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %bb.au
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !53
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(128) %i.dp) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit91

_ZN7testing7MessageD2Ev.exit91:                   ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.az

bb.av:                                            ; preds = %bb.aq
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit94

bb.aw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit88
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #29
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn31 = phi { ptr, i32 } [ %i.dv, %bb.ax ], [ %i.du, %bb.aw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.dw = load ptr, ptr %11, align 8, !tbaa !118  ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i92, label %_ZN7testing7MessageD2Ev.exit94, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %bb.ay
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !53
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(128) %i.dw) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit94

_ZN7testing7MessageD2Ev.exit94:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %bb.ay, %bb.av
  %.pn31.pn = phi { ptr, i32 } [ %i.dt, %bb.av ], [ %.pn31, %bb.ay ], [ %.pn31, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.bc

bb.az:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt9type_infoES4_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSE_RKS6_RKS7_.exit, %_ZN7testing7MessageD2Ev.exit91
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !113 ; 4 uses
  %.not.i.i95 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i95, label %_ZN7testing15AssertionResultD2Ev.exit99, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !116 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96: ; preds = %bb.ba
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !119
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit99

_ZN7testing15AssertionResultD2Ev.exit99:          ; preds = %bb.az, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit78, %_ZN7testing15AssertionResultD2Ev.exit60, %_ZN7testing15AssertionResultD2Ev.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret void

bb.bc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit94, %_ZN7testing7MessageD2Ev.exit81, %_ZN7testing7MessageD2Ev.exit63
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %_ZN7testing7MessageD2Ev.exit94 ], [ %.pn28.pn, %_ZN7testing7MessageD2Ev.exit81 ], [ %.pn25.pn, %_ZN7testing7MessageD2Ev.exit63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn31.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN18MetaType_Name_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 8 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69 ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #30
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i:         ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.a, %bb.a ], [ %i.b, %bb.b ]
  %i.f = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType4baseEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.e) #29
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !229  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK4entt9meta_type4nameEv.exit.thread, label %_ZNK4entt9meta_type4nameEv.exit

_ZNK4entt9meta_type4nameEv.exit.thread:           ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i

_ZNK4entt9meta_type4nameEv.exit:                  ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #29 ; 2 uses
  store i64 %i.j, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.h, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i, label %bb.d

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i: ; preds = %_ZNK4entt9meta_type4nameEv.exit.thread, %_ZNK4entt9meta_type4nameEv.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  br label %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit

bb.d:                                             ; preds = %_ZNK4entt9meta_type4nameEv.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureISt17basic_string_viewIcSt11char_traitsIcEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit

_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.m = load i8, ptr %1, align 8, !tbaa !110, !range !111, !noundef !112
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  br i1 %i.n, label %bb.n, label %bb.e

bb.e:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !113  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !116
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.g, %bb.f
  %i.r = phi ptr [ %i.q, %bb.g ], [ @.str.93, %bb.f ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 317, ptr noundef %i.r)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.s = load ptr, ptr %4, align 8, !tbaa !118    ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.s, null
  br i1 %.not.i.i28, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(128) %i.s) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit31

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #29
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.y, %bb.l ], [ %i.x, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.z = load ptr, ptr %4, align 8, !tbaa !118    ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.z, null
  br i1 %.not.i.i29, label %_ZN7testing7MessageD2Ev.exit31, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i30

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i30: ; preds = %bb.m
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(128) %i.z) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit31

_ZN7testing7MessageD2Ev.exit31:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i30, %bb.m, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.j ], [ %.pn, %bb.m ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.bj

bb.n:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !113 ; 4 uses
  %.not.i.i32 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i32, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !116 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !119
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %i.n, label %bb.p, label %bb.bi

bb.p:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.ak = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i33, label %bb.q, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i36

bb.q:                                             ; preds = %bb.p
  %i.al = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i36 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #30
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i36:       ; preds = %bb.q, %bb.p
  %i.ao = phi ptr [ %i.ak, %bb.p ], [ %i.al, %bb.q ]
  %i.ap = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEN8MetaType7derivedEEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.ao) #29
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !229 ; 5 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZNK4entt9meta_type4nameEv.exit42.thread, label %_ZNK4entt9meta_type4nameEv.exit42

_ZNK4entt9meta_type4nameEv.exit42.thread:         ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i64 7, ptr %8, align 8, !tbaa !515
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.117, ptr %i.at, align 8, !tbaa !516
  br label %bb.s

_ZNK4entt9meta_type4nameEv.exit42:                ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i36
  %i.au = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ar) #29 ; 2 uses
  store i64 %i.au, ptr %7, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ar, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i64 7, ptr %8, align 8, !tbaa !515
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.117, ptr %i.aw, align 8, !tbaa !516
  %i.ax = icmp eq i64 %i.au, 7
  br i1 %i.ax, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i49, label %bb.s

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i49: ; preds = %_ZNK4entt9meta_type4nameEv.exit42
  %i.ay = load i32, ptr %i.ar, align 1
  %i.az = xor i32 %i.ay, 1769104740
  %i.ba = getelementptr i8, ptr %i.ar, i64 3
  %i.bb = load i32, ptr %i.ba, align 1
  %i.bc = xor i32 %i.bb, 1684371049
  %i.bd = or i32 %i.az, %i.bc
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i51, label %bb.s

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i51: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i49
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
  br label %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit52

bb.s:                                             ; preds = %_ZNK4entt9meta_type4nameEv.exit42.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i49, %_ZNK4entt9meta_type4nameEv.exit42
  call void @_ZN7testing8internal18CmpHelperEQFailureISt17basic_string_viewIcSt11char_traitsIcEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit52

_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit52: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i51, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.bh = load i8, ptr %6, align 8, !tbaa !110, !range !111, !noundef !112
  %i.bi = trunc nuw i8 %i.bh to i1                ; 2 uses
  br i1 %i.bi, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i53, label %_ZNK7testing15AssertionResult15failure_messageEv.exit54, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !116
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit54

_ZNK7testing15AssertionResult15failure_messageEv.exit54: ; preds = %bb.v, %bb.u
  %i.bm = phi ptr [ %i.bl, %bb.v ], [ @.str.93, %bb.u ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 318, ptr noundef %i.bm)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit54
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.bn = load ptr, ptr %9, align 8, !tbaa !118   ; 3 uses
  %.not.i.i55 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i55, label %_ZN7testing7MessageD2Ev.exit57, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56: ; preds = %bb.x
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(128) %i.bn) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit57

_ZN7testing7MessageD2Ev.exit57:                   ; preds = %bb.x, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.ac

bb.y:                                             ; preds = %bb.t
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit60

bb.z:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit54
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #29
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn18 = phi { ptr, i32 } [ %i.bt, %bb.aa ], [ %i.bs, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.bu = load ptr, ptr %9, align 8, !tbaa !118   ; 3 uses
  %.not.i.i58 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i58, label %_ZN7testing7MessageD2Ev.exit60, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59: ; preds = %bb.ab
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !53
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(128) %i.bu) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit60

_ZN7testing7MessageD2Ev.exit60:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59, %bb.ab, %bb.y
  %.pn18.pn = phi { ptr, i32 } [ %i.br, %bb.y ], [ %.pn18, %bb.ab ], [ %.pn18, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.bj

bb.ac:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit52, %_ZN7testing7MessageD2Ev.exit57
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !113 ; 4 uses
  %.not.i.i61 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i61, label %_ZN7testing15AssertionResultD2Ev.exit65, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !116 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62: ; preds = %bb.ad
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !119
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i62
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit65

_ZN7testing15AssertionResultD2Ev.exit65:          ; preds = %bb.ac, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br i1 %i.bi, label %bb.ae, label %bb.bi

bb.ae:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.cf = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69 ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i66, label %bb.af, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i69

bb.af:                                            ; preds = %bb.ae
  %i.cg = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i69 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #30
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i69:       ; preds = %bb.af, %bb.ae
  %i.cj = phi ptr [ %i.cf, %bb.ae ], [ %i.cg, %bb.af ]
  %i.ck = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEjEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.cj) #29
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !229 ; 4 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZNK4entt9meta_type4nameEv.exit75.thread, label %_ZNK4entt9meta_type4nameEv.exit75

_ZNK4entt9meta_type4nameEv.exit75.thread:         ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  store i64 4, ptr %13, align 8, !tbaa !515
  %i.co = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.120, ptr %i.co, align 8, !tbaa !516
  br label %bb.ah

_ZNK4entt9meta_type4nameEv.exit75:                ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i69
  %i.cp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cm) #29 ; 2 uses
  store i64 %i.cp, ptr %12, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.cm, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  store i64 4, ptr %13, align 8, !tbaa !515
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.120, ptr %i.cr, align 8, !tbaa !516
  %i.cs = icmp eq i64 %i.cp, 4
  br i1 %i.cs, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i82, label %bb.ah

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i82: ; preds = %_ZNK4entt9meta_type4nameEv.exit75
  %i.ct = load i32, ptr %i.cm, align 1
  %i.cu = icmp ne i32 %i.ct, 1953393013
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i84, label %bb.ah

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i84: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i82
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
  br label %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit85

bb.ah:                                            ; preds = %_ZNK4entt9meta_type4nameEv.exit75.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i82, %_ZNK4entt9meta_type4nameEv.exit75
  call void @_ZN7testing8internal18CmpHelperEQFailureISt17basic_string_viewIcSt11char_traitsIcEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %13)
  br label %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit85

_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit85: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i84, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.cx = load i8, ptr %11, align 8, !tbaa !110, !range !111, !noundef !112
  %i.cy = trunc nuw i8 %i.cx to i1                ; 2 uses
  br i1 %i.cy, label %bb.ar, label %bb.ai

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i86 = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i86, label %_ZNK7testing15AssertionResult15failure_messageEv.exit87, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !116
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit87

_ZNK7testing15AssertionResult15failure_messageEv.exit87: ; preds = %bb.ak, %bb.aj
  %i.dc = phi ptr [ %i.db, %bb.ak ], [ @.str.93, %bb.aj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 319, ptr noundef %i.dc)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit87
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  %i.dd = load ptr, ptr %14, align 8, !tbaa !118  ; 3 uses
  %.not.i.i88 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i88, label %_ZN7testing7MessageD2Ev.exit90, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89: ; preds = %bb.am
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !53
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(128) %i.dd) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit90

_ZN7testing7MessageD2Ev.exit90:                   ; preds = %bb.am, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  br label %bb.ar

bb.an:                                            ; preds = %bb.ai
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit93

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit87
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #29
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn21 = phi { ptr, i32 } [ %i.dj, %bb.ap ], [ %i.di, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  %i.dk = load ptr, ptr %14, align 8, !tbaa !118  ; 3 uses
  %.not.i.i91 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i91, label %_ZN7testing7MessageD2Ev.exit93, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92: ; preds = %bb.aq
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !53
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(128) %i.dk) #29, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit93

_ZN7testing7MessageD2Ev.exit93:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92, %bb.aq, %bb.an
  %.pn21.pn = phi { ptr, i32 } [ %i.dh, %bb.an ], [ %.pn21, %bb.aq ], [ %.pn21, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.bj

bb.ar:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit85, %_ZN7testing7MessageD2Ev.exit90
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !113 ; 4 uses
  %.not.i.i94 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i94, label %_ZN7testing15AssertionResultD2Ev.exit98, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !116 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i95: ; preds = %bb.as
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !119
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i95
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit98

_ZN7testing15AssertionResultD2Ev.exit98:          ; preds = %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br i1 %i.cy, label %bb.at, label %bb.bi

bb.at:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit98
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.dv = load ptr, ptr @_ZN4entt7locatorINS_8meta_ctxEE7serviceE, align 8, !tbaa !69 ; 2 uses
  %.not.i.i99 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i99, label %bb.au, label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i102

bb.au:                                            ; preds = %bb.at
  %i.dw = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN4entt7locatorINS_8meta_ctxEE7emplaceITkSt12derived_fromIT_ES1_JEQsr3stlE18constructible_fromITL0__DpTL0_0_EEERS1_DpOT0_()
          to label %_ZNK4entt9meta_type10fetch_nodeEv.exit.i102 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #30
  unreachable

_ZNK4entt9meta_type10fetch_nodeEv.exit.i102:      ; preds = %bb.au, %bb.at
  %i.dz = phi ptr [ %i.dv, %bb.at ], [ %i.dw, %bb.au ]
  %i.ea = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN4entt8internal7resolveITkNS_17cvref_unqualifiedEvEERKNS0_14meta_type_nodeERKNS0_12meta_contextE(ptr noundef nonnull align 8 dereferenceable(56) %i.dz) #29
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !229 ; 3 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %_ZNK4entt9meta_type4nameEv.exit108.thread, label %_ZNK4entt9meta_type4nameEv.exit108

_ZNK4entt9meta_type4nameEv.exit108.thread:        ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i102
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i117

_ZNK4entt9meta_type4nameEv.exit108:               ; preds = %_ZNK4entt9meta_type10fetch_nodeEv.exit.i102
  %i.ee = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ec) #29 ; 2 uses
  store i64 %i.ee, ptr %17, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.ec, ptr %i.ef, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.eg = icmp eq i64 %i.ee, 0
  br i1 %i.eg, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i117, label %bb.aw

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i117: ; preds = %_ZNK4entt9meta_type4nameEv.exit108.thread, %_ZNK4entt9meta_type4nameEv.exit108
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  br label %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit118

bb.aw:                                            ; preds = %_ZNK4entt9meta_type4nameEv.exit108
  call void @_ZN7testing8internal18CmpHelperEQFailureISt17basic_string_viewIcSt11char_traitsIcEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.114, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18)
  br label %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit118

_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit118: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i117, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  %i.eh = load i8, ptr %16, align 8, !tbaa !110, !range !111, !noundef !112
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.bg, label %bb.ax
end_hunk_0
