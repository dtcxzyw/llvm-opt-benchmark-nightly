Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/delegate?download=true
inline.NumInlined: 2377
inline.NumDeleted: 765
begin_hunk_0_@_ZN24Delegate_Comparison_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
_ZN7testing15AssertionResultD2Ev.exit735:         ; preds = %_ZN7testing7MessageD2Ev.exit730, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i733
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.xc

bb.ad:                                            ; preds = %bb.x
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit738

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit727
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.aa
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #28
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn349 = phi { ptr, i32 } [ %i.cu, %bb.af ], [ %i.ct, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.cv = load ptr, ptr %13, align 8, !tbaa !50   ; 3 uses
  %.not.i.i736 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i736, label %_ZN7testing7MessageD2Ev.exit738, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i737

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i737: ; preds = %bb.ag
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !20
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(128) %i.cv) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit738

_ZN7testing7MessageD2Ev.exit738:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i737, %bb.ag, %bb.ad
  %.pn349.pn = phi { ptr, i32 } [ %i.cs, %bb.ad ], [ %.pn349, %bb.ag ], [ %.pn349, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i737 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.xd

.critedge558:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit725
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !44 ; 4 uses
  %.not.i.i739 = icmp eq ptr %i.da, null
  br i1 %.not.i.i739, label %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit744, label %bb.ah

bb.ah:                                            ; preds = %.critedge558
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !48 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i741, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i740

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i740: ; preds = %bb.ah
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !51
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i741

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i741: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i740
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef 32) #29
  br label %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit744

_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit744: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i741, %.critedge558
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  store ptr null, ptr %1, align 16, !tbaa !53
  store ptr @_ZZN4entt8delegateIFiiEE7connectITnDaXadL_Z12power_of_twoRKiEEEEvvENUlPKviE_8__invokeES7_i, ptr %i.n, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
  %i.dg = load i8, ptr %15, align 8, !tbaa !42, !range !43, !noundef !55
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %.critedge560, label %bb.ai

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit744
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.aj unwind label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.di = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i745 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i745, label %_ZNK7testing15AssertionResult15failure_messageEv.exit746, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit746

_ZNK7testing15AssertionResult15failure_messageEv.exit746: ; preds = %bb.ak, %bb.aj
  %i.dl = phi ptr [ %i.dk, %bb.ak ], [ @.str.20, %bb.aj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 144, ptr noundef %i.dl)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit746
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.am unwind label %bb.aq

bb.am:                                            ; preds = %bb.al
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.dm = load ptr, ptr %16, align 8, !tbaa !50   ; 3 uses
  %.not.i.i747 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i747, label %_ZN7testing7MessageD2Ev.exit749, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i748

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i748: ; preds = %bb.am
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(128) %i.dm) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit749

_ZN7testing7MessageD2Ev.exit749:                  ; preds = %bb.am, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i748
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.dq = load ptr, ptr %i.di, align 8, !tbaa !44 ; 4 uses
  %.not.i.i750 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i750, label %_ZN7testing15AssertionResultD2Ev.exit754, label %bb.an

bb.an:                                            ; preds = %_ZN7testing7MessageD2Ev.exit749
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !48 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i752, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i751

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i751: ; preds = %bb.an
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !51
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i752

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i752: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i751
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit754

_ZN7testing15AssertionResultD2Ev.exit754:         ; preds = %_ZN7testing7MessageD2Ev.exit749, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i752
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.xc

bb.ao:                                            ; preds = %bb.ai
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit757

bb.ap:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit746
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.al
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #28
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn352 = phi { ptr, i32 } [ %i.dy, %bb.aq ], [ %i.dx, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.dz = load ptr, ptr %16, align 8, !tbaa !50   ; 3 uses
  %.not.i.i755 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i755, label %_ZN7testing7MessageD2Ev.exit757, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i756

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i756: ; preds = %bb.ar
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !20
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(128) %i.dz) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit757

_ZN7testing7MessageD2Ev.exit757:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i756, %bb.ar, %bb.ao
  %.pn352.pn = phi { ptr, i32 } [ %i.dw, %bb.ao ], [ %.pn352, %bb.ar ], [ %.pn352, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i756 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.xd

.critedge560:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit744
  %i.ed = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !44 ; 4 uses
  %.not.i.i758 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i758, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.critedge560
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !48 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i760, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i759

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i759: ; preds = %bb.as
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !51
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i760

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i760: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i759
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef 32) #29
  br label %bb.at

bb.at:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i760, %.critedge560
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  %i.ek = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.el = load ptr, ptr %i.ar, align 8, !tbaa !54
  %i.em = icmp ne ptr %i.ek, %i.el                ; 2 uses
  %i.en = load ptr, ptr %1, align 16
  %i.eo = load ptr, ptr %2, align 16
  %i.ep = icmp ne ptr %i.en, %i.eo                ; 2 uses
  %.not1428 = select i1 %i.em, i1 true, i1 %i.ep  ; 2 uses
  %i.eq = zext i1 %.not1428 to i8
  store i8 %i.eq, ptr %18, align 8, !tbaa !42
  %i.er = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store ptr null, ptr %i.er, align 8, !tbaa !56
  br i1 %.not1428, label %bb.bf, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.es = load ptr, ptr %21, align 8, !tbaa !48
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 145, ptr noundef %i.es)
          to label %bb.ax unwind label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ay unwind label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #28
  %i.et = load ptr, ptr %21, align 8, !tbaa !48   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i763

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i763: ; preds = %bb.ay
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !51
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i763
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %i.ey = load ptr, ptr %19, align 8, !tbaa !50   ; 3 uses
  %.not.i.i766 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i766, label %_ZN7testing7MessageD2Ev.exit768, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i767

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i767: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !20
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(128) %i.ey) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit768

_ZN7testing7MessageD2Ev.exit768:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit765, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i767
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.fc = load ptr, ptr %i.er, align 8, !tbaa !44 ; 4 uses
  %.not.i.i769 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i769, label %_ZN7testing15AssertionResultD2Ev.exit773, label %bb.az

bb.az:                                            ; preds = %_ZN7testing7MessageD2Ev.exit768
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !48 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i771, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i770

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i770: ; preds = %bb.az
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !51
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i771

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i771: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i770
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit773

_ZN7testing15AssertionResultD2Ev.exit773:         ; preds = %_ZN7testing7MessageD2Ev.exit768, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i771
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.xc

bb.ba:                                            ; preds = %bb.au
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit779

bb.bb:                                            ; preds = %bb.av
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776

bb.bc:                                            ; preds = %bb.aw
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.ax
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #28
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn355 = phi { ptr, i32 } [ %i.fl, %bb.bd ], [ %i.fk, %bb.bc ] ; 2 uses
  %i.fm = load ptr, ptr %21, align 8, !tbaa !48   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i774

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i774: ; preds = %bb.be
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !51
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i774, %bb.bb
  %.pn355.pn = phi { ptr, i32 } [ %i.fj, %bb.bb ], [ %.pn355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i774 ], [ %.pn355, %bb.be ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %i.fr = load ptr, ptr %19, align 8, !tbaa !50   ; 3 uses
  %.not.i.i777 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i777, label %_ZN7testing7MessageD2Ev.exit779, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i778

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i778: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !20
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(128) %i.fr) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit779

_ZN7testing7MessageD2Ev.exit779:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i778, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776, %bb.ba
  %.pn355.pn.pn = phi { ptr, i32 } [ %i.fi, %bb.ba ], [ %.pn355.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776 ], [ %.pn355.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i778 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.xd

bb.bf:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.fv = select i1 %i.em, i1 true, i1 %i.ep
  br i1 %i.fv, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
  br label %_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit

bb.bh:                                            ; preds = %bb.bf
  call void @_ZN7testing8internal18CmpHelperOpFailureIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_S8_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.132)
  br label %_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit: ; preds = %bb.bg, %bb.bh
  %i.fw = load i8, ptr %22, align 8, !tbaa !42, !range !43, !noundef !55
  %i.fx = trunc nuw i8 %i.fw to i1
  br i1 %i.fx, label %.critedge566, label %bb.bi

bb.bi:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  %i.fy = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i807 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i807, label %_ZNK7testing15AssertionResult15failure_messageEv.exit808, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit808

_ZNK7testing15AssertionResult15failure_messageEv.exit808: ; preds = %bb.bk, %bb.bj
  %i.gb = phi ptr [ %i.ga, %bb.bk ], [ @.str.20, %bb.bj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 147, ptr noundef %i.gb)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit808
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  %i.gc = load ptr, ptr %23, align 8, !tbaa !50   ; 3 uses
  %.not.i.i809 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i809, label %_ZN7testing7MessageD2Ev.exit811, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i810

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i810: ; preds = %bb.bm
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !20
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(128) %i.gc) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit811

_ZN7testing7MessageD2Ev.exit811:                  ; preds = %bb.bm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i810
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  %i.gg = load ptr, ptr %i.fy, align 8, !tbaa !44 ; 4 uses
  %.not.i.i812 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i812, label %_ZN7testing15AssertionResultD2Ev.exit816, label %bb.bn

bb.bn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit811
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !48 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 16 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i814, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i813

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i813: ; preds = %bb.bn
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !51
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i814

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i814: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i813
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit816

_ZN7testing15AssertionResultD2Ev.exit816:         ; preds = %_ZN7testing7MessageD2Ev.exit811, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i814
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.xc

bb.bo:                                            ; preds = %bb.bi
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit819

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit808
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bl
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #28
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn363 = phi { ptr, i32 } [ %i.go, %bb.bq ], [ %i.gn, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  %i.gp = load ptr, ptr %23, align 8, !tbaa !50   ; 3 uses
  %.not.i.i817 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i817, label %_ZN7testing7MessageD2Ev.exit819, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i818

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i818: ; preds = %bb.br
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !20
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(128) %i.gp) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit819

_ZN7testing7MessageD2Ev.exit819:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i818, %bb.br, %bb.bo
  %.pn363.pn = phi { ptr, i32 } [ %i.gm, %bb.bo ], [ %.pn363, %bb.br ], [ %.pn363, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i818 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.xd

.critedge566:                                     ; preds = %_ZN7testing8internal11CmpHelperNEIN4entt8delegateIFiiEEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_.exit
  %i.gt = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !44 ; 4 uses
  %.not.i.i820 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i820, label %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit825, label %bb.bs

bb.bs:                                            ; preds = %.critedge566
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !48 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i822, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i821

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i821: ; preds = %bb.bs
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !51
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i822

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i822: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i821
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef 32) #29
  br label %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit825

_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit825: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i822, %.critedge566
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  store ptr null, ptr %2, align 16, !tbaa !53
  store ptr @_ZZN4entt8delegateIFiiEE7connectITnDaXadL_Z12power_of_twoRKiEEEEvvENUlPKviE_8__invokeES7_i, ptr %i.ar, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25)
  %i.ha = load i8, ptr %25, align 8, !tbaa !42, !range !43, !noundef !55
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.hb, label %.critedge568, label %bb.bt

bb.bt:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4entt8delegateIFiiEEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit825
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.bu unwind label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  %i.hc = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i826 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i826, label %_ZNK7testing15AssertionResult15failure_messageEv.exit827, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !48
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit827

_ZNK7testing15AssertionResult15failure_messageEv.exit827: ; preds = %bb.bv, %bb.bu
  %i.hf = phi ptr [ %i.he, %bb.bv ], [ @.str.20, %bb.bu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 151, ptr noundef %i.hf)
          to label %bb.bw unwind label %bb.ca

bb.bw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit827
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  %i.hg = load ptr, ptr %26, align 8, !tbaa !50   ; 3 uses
  %.not.i.i828 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i828, label %_ZN7testing7MessageD2Ev.exit830, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i829

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i829: ; preds = %bb.bx
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !20
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  call void %i.hj(ptr noundef nonnull align 8 dereferenceable(128) %i.hg) #28, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit830

_ZN7testing7MessageD2Ev.exit830:                  ; preds = %bb.bx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i829
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  %i.hk = load ptr, ptr %i.hc, align 8, !tbaa !44 ; 4 uses
  %.not.i.i831 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i831, label %_ZN7testing15AssertionResultD2Ev.exit835, label %bb.by

bb.by:                                            ; preds = %_ZN7testing7MessageD2Ev.exit830
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !48 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i833, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i832

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i832: ; preds = %bb.by
end_hunk_0
