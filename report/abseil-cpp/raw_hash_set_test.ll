inline.NumInlined: 72231
inline.NumDeleted: 15384
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_145Util_OptimalMemcpySizeForSooSlotTransfer_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  %i.ae = load ptr, ptr %5, align 8, !tbaa !120   ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i117, label %_ZN7testing7MessageD2Ev.exit119, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.p
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit119

_ZN7testing7MessageD2Ev.exit119:                  ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit122

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit116
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #43
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn73 = phi { ptr, i32 } [ %i.ak, %bb.s ], [ %i.aj, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  %i.al = load ptr, ptr %5, align 8, !tbaa !120   ; 3 uses
  %.not.i.i120 = icmp eq ptr %i.al, null
  br i1 %.not.i.i120, label %_ZN7testing7MessageD2Ev.exit122, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121: ; preds = %bb.t
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit122

_ZN7testing7MessageD2Ev.exit122:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121, %bb.t, %bb.q
  %.pn73.pn = phi { ptr, i32 } [ %i.ai, %bb.q ], [ %.pn73, %bb.t ], [ %.pn73, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  br label %bb.dn

bb.u:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit114, %_ZN7testing7MessageD2Ev.exit119
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i123 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i123, label %_ZN7testing15AssertionResultD2Ev.exit127, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !26 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124: ; preds = %bb.v
  %i.au = load i64, ptr %i.as, align 8, !tbaa !30
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i124
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit127

_ZN7testing15AssertionResultD2Ev.exit127:         ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  br i1 %i.z, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit128, label %.thread270

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit128: ; preds = %_ZN7testing15AssertionResultD2Ev.exit127
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
  %i.aw = load i8, ptr %7, align 8, !tbaa !3822, !range !3831, !noundef !3832
  %i.ax = trunc nuw i8 %i.aw to i1                ; 2 uses
  br i1 %i.ax, label %bb.af, label %bb.w

bb.w:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #43
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !3833 ; 2 uses
  %.not.i.i129 = icmp eq ptr %i.az, null
  br i1 %.not.i.i129, label %_ZNK7testing15AssertionResult15failure_messageEv.exit130, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit130

_ZNK7testing15AssertionResult15failure_messageEv.exit130: ; preds = %bb.y, %bb.x
  %i.bb = phi ptr [ %i.ba, %bb.y ], [ @.str.31, %bb.x ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 236, ptr noundef %i.bb)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit130
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  %i.bc = load ptr, ptr %8, align 8, !tbaa !120   ; 3 uses
  %.not.i.i131 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i131, label %_ZN7testing7MessageD2Ev.exit133, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132: ; preds = %bb.aa
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(128) %i.bc) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit133

_ZN7testing7MessageD2Ev.exit133:                  ; preds = %bb.aa, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  br label %bb.af

bb.ab:                                            ; preds = %bb.w
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit136

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit130
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #43
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn76 = phi { ptr, i32 } [ %i.bi, %bb.ad ], [ %i.bh, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #43
  %i.bj = load ptr, ptr %8, align 8, !tbaa !120   ; 3 uses
  %.not.i.i134 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i134, label %_ZN7testing7MessageD2Ev.exit136, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135: ; preds = %bb.ae
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(128) %i.bj) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit136

_ZN7testing7MessageD2Ev.exit136:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135, %bb.ae, %bb.ab
  %.pn76.pn = phi { ptr, i32 } [ %i.bg, %bb.ab ], [ %.pn76, %bb.ae ], [ %.pn76, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br label %bb.dn

bb.af:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit128, %_ZN7testing7MessageD2Ev.exit133
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i137 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i137, label %_ZN7testing15AssertionResultD2Ev.exit141, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !26 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i138: ; preds = %bb.ag
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !30
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i138
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit141

_ZN7testing15AssertionResultD2Ev.exit141:         ; preds = %bb.af, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  br i1 %i.ax, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142, label %.thread270

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142: ; preds = %_ZN7testing15AssertionResultD2Ev.exit141
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
  %.pre = load i8, ptr %10, align 8, !tbaa !3822, !range !3831
  %i.bv = trunc nuw i8 %.pre to i1
  br i1 %i.bv, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.4, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.3, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.2, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.1, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ai unwind label %bb.an

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #43
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !3833 ; 2 uses
  %.not.i.i143 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i143, label %_ZNK7testing15AssertionResult15failure_messageEv.exit144, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit144

_ZNK7testing15AssertionResult15failure_messageEv.exit144: ; preds = %bb.aj, %bb.ai
  %i.by = phi ptr [ %i.bx, %bb.aj ], [ @.str.31, %bb.ai ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 238, ptr noundef %i.by)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit144
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  %i.bz = load ptr, ptr %11, align 8, !tbaa !120  ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i145, label %_ZN7testing7MessageD2Ev.exit147, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146: ; preds = %bb.al
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(128) %i.bz) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit147

_ZN7testing7MessageD2Ev.exit147:                  ; preds = %bb.al, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #43
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i148 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i148, label %.thread, label %bb.am

bb.am:                                            ; preds = %_ZN7testing7MessageD2Ev.exit147
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !26 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149: ; preds = %bb.am
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !30
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 32) #44
  br label %.thread

.thread:                                          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150, %_ZN7testing7MessageD2Ev.exit147
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  br label %.thread270

bb.an:                                            ; preds = %bb.ah
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit155

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit144
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #43
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn79 = phi { ptr, i32 } [ %i.cl, %bb.ap ], [ %i.ck, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #43
  %i.cm = load ptr, ptr %11, align 8, !tbaa !120  ; 3 uses
  %.not.i.i153 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i153, label %_ZN7testing7MessageD2Ev.exit155, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154: ; preds = %bb.aq
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(128) %i.cm) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit155

_ZN7testing7MessageD2Ev.exit155:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154, %bb.aq, %bb.an
  %.pn79.pn = phi { ptr, i32 } [ %i.cj, %bb.an ], [ %.pn79, %bb.aq ], [ %.pn79, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  br label %bb.dn

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142
  %i.cq = load ptr, ptr %i.bu, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i156 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i156, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.1, label %bb.ar

bb.ar:                                            ; preds = %.critedge
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !26 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157: ; preds = %bb.ar
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !30
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.1

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.1: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
  %.pre295 = load i8, ptr %10, align 8, !tbaa !3822, !range !3831
  %i.cw = trunc nuw i8 %.pre295 to i1
  br i1 %i.cw, label %.critedge.1, label %bb.ah

.critedge.1:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.1
  %i.cx = load ptr, ptr %i.bu, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i156.1 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i156.1, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.2, label %bb.as

bb.as:                                            ; preds = %.critedge.1
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !26 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157.1: ; preds = %bb.as
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !30
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158.1

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158.1: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157.1
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.2

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.2: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158.1, %.critedge.1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
  %.pre296 = load i8, ptr %10, align 8, !tbaa !3822, !range !3831
  %i.dd = trunc nuw i8 %.pre296 to i1
  br i1 %i.dd, label %.critedge.2, label %bb.ah

.critedge.2:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.2
  %i.de = load ptr, ptr %i.bu, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i156.2 = icmp eq ptr %i.de, null
  br i1 %.not.i.i156.2, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.3, label %bb.at

bb.at:                                            ; preds = %.critedge.2
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !26 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157.2: ; preds = %bb.at
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !30
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158.2

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158.2: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157.2
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.3

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.3: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158.2, %.critedge.2
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
  %.pre297 = load i8, ptr %10, align 8, !tbaa !3822, !range !3831
  %i.dk = trunc nuw i8 %.pre297 to i1
  br i1 %i.dk, label %.critedge.3, label %bb.ah

.critedge.3:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.3
  %i.dl = load ptr, ptr %i.bu, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i156.3 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i156.3, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.4, label %bb.au

bb.au:                                            ; preds = %.critedge.3
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !26 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157.3: ; preds = %bb.au
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !30
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158.3

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158.3: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157.3
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.4

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.4: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158.3, %.critedge.3
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
  %.pre298 = load i8, ptr %10, align 8, !tbaa !3822, !range !3831
  %i.dr = trunc nuw i8 %.pre298 to i1
  br i1 %i.dr, label %.critedge.4, label %bb.ah

.critedge.4:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit142.4
  %i.ds = load ptr, ptr %i.bu, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i156.4 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i156.4, label %.preheader281, label %bb.av

bb.av:                                            ; preds = %.critedge.4
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !26 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157.4: ; preds = %bb.av
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !30
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158.4

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158.4: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i157.4
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef 32) #44
  br label %.preheader281

.preheader281:                                    ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i158.4, %.critedge.4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #43
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit163

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit163: ; preds = %bb.bs, %.preheader281
  %.036284 = phi i64 [ 9, %.preheader281 ], [ %i.gc, %bb.bs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
  %.pre300 = load i8, ptr %13, align 8, !tbaa !3822, !range !3831
  %i.ea = trunc nuw i8 %.pre300 to i1
  br i1 %i.ea, label %.critedge100, label %bb.aw

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit163
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ax unwind label %bb.bc

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #43
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !3833 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i164, label %_ZNK7testing15AssertionResult15failure_messageEv.exit165, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit165

_ZNK7testing15AssertionResult15failure_messageEv.exit165: ; preds = %bb.ay, %bb.ax
  %i.ed = phi ptr [ %i.ec, %bb.ay ], [ @.str.31, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 244, ptr noundef %i.ed)
          to label %bb.az unwind label %bb.bd

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit165
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ba unwind label %bb.be

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  %i.ee = load ptr, ptr %14, align 8, !tbaa !120  ; 3 uses
  %.not.i.i166 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i166, label %_ZN7testing7MessageD2Ev.exit168, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i167

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i167: ; preds = %bb.ba
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !9
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(128) %i.ee) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit168

_ZN7testing7MessageD2Ev.exit168:                  ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  %i.ei = load ptr, ptr %i.dy, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i169 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i169, label %_ZN7testing15AssertionResultD2Ev.exit173, label %bb.bb

bb.bb:                                            ; preds = %_ZN7testing7MessageD2Ev.exit168
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !26 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i170: ; preds = %bb.bb
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !30
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i170
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit173

_ZN7testing15AssertionResultD2Ev.exit173:         ; preds = %_ZN7testing7MessageD2Ev.exit168, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #43
  br label %.thread270

bb.bc:                                            ; preds = %bb.aw
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit176

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit165
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.az
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #43
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn82 = phi { ptr, i32 } [ %i.eq, %bb.be ], [ %i.ep, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #43
  %i.er = load ptr, ptr %14, align 8, !tbaa !120  ; 3 uses
  %.not.i.i174 = icmp eq ptr %i.er, null
  br i1 %.not.i.i174, label %_ZN7testing7MessageD2Ev.exit176, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175: ; preds = %bb.bf
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !9
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(128) %i.er) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit176

_ZN7testing7MessageD2Ev.exit176:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175, %bb.bf, %bb.bc
  %.pn82.pn = phi { ptr, i32 } [ %i.eo, %bb.bc ], [ %.pn82, %bb.bf ], [ %.pn82, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #43
  br label %bb.dn

.critedge100:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit163
  %i.ev = load ptr, ptr %i.dy, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i177 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i177, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit184, label %bb.bg

bb.bg:                                            ; preds = %.critedge100
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !26 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178: ; preds = %bb.bg
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !30
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i178
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit184

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit184: ; preds = %.critedge100, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  %.pre303 = load i8, ptr %16, align 8, !tbaa !3822, !range !3831
  %i.fb = trunc nuw i8 %.pre303 to i1
  br i1 %i.fb, label %.critedge102, label %bb.bh

bb.bh:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit184
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #43
  %i.fc = load ptr, ptr %i.dz, align 8, !tbaa !3833 ; 2 uses
  %.not.i.i185 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i185, label %_ZNK7testing15AssertionResult15failure_messageEv.exit186, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit186

_ZNK7testing15AssertionResult15failure_messageEv.exit186: ; preds = %bb.bj, %bb.bi
  %i.fe = phi ptr [ %i.fd, %bb.bj ], [ @.str.31, %bb.bi ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 247, ptr noundef %i.fe)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit186
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  %i.ff = load ptr, ptr %17, align 8, !tbaa !120  ; 3 uses
  %.not.i.i187 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i187, label %_ZN7testing7MessageD2Ev.exit189, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188: ; preds = %bb.bl
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !9
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(128) %i.ff) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit189

_ZN7testing7MessageD2Ev.exit189:                  ; preds = %bb.bl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  %i.fj = load ptr, ptr %i.dz, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i190 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i190, label %_ZN7testing15AssertionResultD2Ev.exit194, label %bb.bm

bb.bm:                                            ; preds = %_ZN7testing7MessageD2Ev.exit189
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !26 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191: ; preds = %bb.bm
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !30
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i191
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit194

_ZN7testing15AssertionResultD2Ev.exit194:         ; preds = %_ZN7testing7MessageD2Ev.exit189, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  br label %.thread270

bb.bn:                                            ; preds = %bb.bh
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit197

bb.bo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit186
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bk
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #43
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn85 = phi { ptr, i32 } [ %i.fr, %bb.bp ], [ %i.fq, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #43
  %i.fs = load ptr, ptr %17, align 8, !tbaa !120  ; 3 uses
  %.not.i.i195 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i195, label %_ZN7testing7MessageD2Ev.exit197, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196: ; preds = %bb.bq
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !9
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(128) %i.fs) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit197

_ZN7testing7MessageD2Ev.exit197:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196, %bb.bq, %bb.bn
  %.pn85.pn = phi { ptr, i32 } [ %i.fp, %bb.bn ], [ %.pn85, %bb.bq ], [ %.pn85, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  br label %bb.dn

.critedge102:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit184
  %i.fw = load ptr, ptr %i.dz, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i198 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i198, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.critedge102
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !26 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199: ; preds = %bb.br
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !30
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.gb) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i199
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef 32) #44
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200, %.critedge102
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #43
  %i.gc = add nuw nsw i64 %.036284, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.gc, 17
  br i1 %exitcond.not, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit163, !llvm.loop !3855

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205: ; preds = %bb.bs
  %28 = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19)
  %.pre305 = load i8, ptr %19, align 8, !tbaa !3822, !range !3831
  %29 = trunc nuw i8 %.pre305 to i1
  br i1 %29, label %.critedge104, label %bb.bt

bb.bt:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205.3, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205.2, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205.1, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bu unwind label %bb.bz

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #43
  %i.gd = load ptr, ptr %28, align 8, !tbaa !3833 ; 2 uses
  %.not.i.i206 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i206, label %_ZNK7testing15AssertionResult15failure_messageEv.exit207, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit207

_ZNK7testing15AssertionResult15failure_messageEv.exit207: ; preds = %bb.bv, %bb.bu
  %i.gf = phi ptr [ %i.ge, %bb.bv ], [ @.str.31, %bb.bu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 252, ptr noundef %i.gf)
          to label %bb.bw unwind label %bb.ca

bb.bw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit207
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #43
  %i.gg = load ptr, ptr %20, align 8, !tbaa !120  ; 3 uses
  %.not.i.i208 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i208, label %_ZN7testing7MessageD2Ev.exit210, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209: ; preds = %bb.bx
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !9
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(128) %i.gg) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit210

_ZN7testing7MessageD2Ev.exit210:                  ; preds = %bb.bx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  %i.gk = load ptr, ptr %28, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i211 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i211, label %.thread273, label %bb.by

bb.by:                                            ; preds = %_ZN7testing7MessageD2Ev.exit210
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !26 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i212: ; preds = %bb.by
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !30
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i212
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef 32) #44
  br label %.thread273

.thread273:                                       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213, %_ZN7testing7MessageD2Ev.exit210
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  br label %.thread270

bb.bz:                                            ; preds = %bb.bt
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit218

bb.ca:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit207
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bw
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #43
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pn89 = phi { ptr, i32 } [ %i.gs, %bb.cb ], [ %i.gr, %bb.ca ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #43
  %i.gt = load ptr, ptr %20, align 8, !tbaa !120  ; 3 uses
  %.not.i.i216 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i216, label %_ZN7testing7MessageD2Ev.exit218, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i217

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i217: ; preds = %bb.cc
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !9
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(128) %i.gt) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit218

_ZN7testing7MessageD2Ev.exit218:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i217, %bb.cc, %bb.bz
  %.pn89.pn = phi { ptr, i32 } [ %i.gq, %bb.bz ], [ %.pn89, %bb.cc ], [ %.pn89, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i217 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  br label %bb.dn

.critedge104:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205
  %i.gx = load ptr, ptr %28, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i219 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i219, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205.1, label %bb.cd

bb.cd:                                            ; preds = %.critedge104
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !26 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i220

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i220: ; preds = %bb.cd
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !30
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i221

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i221: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i220
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205.1

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205.1: ; preds = %.critedge104, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19)
  %.pre308 = load i8, ptr %19, align 8, !tbaa !3822, !range !3831
  %i.hd = trunc nuw i8 %.pre308 to i1
  br i1 %i.hd, label %.critedge104.1, label %bb.bt

.critedge104.1:                                   ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205.1
  %i.he = load ptr, ptr %28, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i219.1 = icmp eq ptr %i.he, null
  br i1 %.not.i.i219.1, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205.2, label %bb.ce

bb.ce:                                            ; preds = %.critedge104.1
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !26 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 2 uses
  %i.hh = icmp eq ptr %i.hf, %i.hg
  br i1 %i.hh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i221.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i220.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i220.1: ; preds = %bb.ce
  %i.hi = load i64, ptr %i.hg, align 8, !tbaa !30
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hj) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i221.1

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i221.1: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i220.1
  call void @_ZdlPvm(ptr noundef nonnull %i.he, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205.2

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205.2: ; preds = %.critedge104.1, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i221.1
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19)
  %.pre311 = load i8, ptr %19, align 8, !tbaa !3822, !range !3831
  %i.hk = trunc nuw i8 %.pre311 to i1
  br i1 %i.hk, label %.critedge104.2, label %bb.bt

.critedge104.2:                                   ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205.2
  %i.hl = load ptr, ptr %28, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i219.2 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i219.2, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205.3, label %bb.cf

bb.cf:                                            ; preds = %.critedge104.2
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !26 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 2 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i221.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i220.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i220.2: ; preds = %bb.cf
  %i.hp = load i64, ptr %i.hn, align 8, !tbaa !30
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hq) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i221.2

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i221.2: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i220.2
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205.3

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205.3: ; preds = %.critedge104.2, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i221.2
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19)
  %.pre314 = load i8, ptr %19, align 8, !tbaa !3822, !range !3831
  %i.hr = trunc nuw i8 %.pre314 to i1
  br i1 %i.hr, label %.critedge104.3, label %bb.bt

.critedge104.3:                                   ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit205.3
  %i.hs = load ptr, ptr %28, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i219.3 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i219.3, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226, label %bb.cg

bb.cg:                                            ; preds = %.critedge104.3
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !26 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i221.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i220.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i220.3: ; preds = %bb.cg
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !30
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i221.3

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i221.3: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i220.3
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i221.3, %.critedge104.3
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  %i.hy = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
  %.pre317 = load i8, ptr %22, align 8, !tbaa !3822, !range !3831
  %i.hz = trunc nuw i8 %.pre317 to i1
  br i1 %i.hz, label %.critedge106, label %bb.ch

bb.ch:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.7, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.6, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.5, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.4, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.3, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.2, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.1, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.ci unwind label %bb.cn

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #43
  %i.ia = load ptr, ptr %i.hy, align 8, !tbaa !3833 ; 2 uses
  %.not.i.i227 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i227, label %_ZNK7testing15AssertionResult15failure_messageEv.exit228, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit228

_ZNK7testing15AssertionResult15failure_messageEv.exit228: ; preds = %bb.cj, %bb.ci
  %i.ic = phi ptr [ %i.ib, %bb.cj ], [ @.str.31, %bb.ci ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 257, ptr noundef %i.ic)
          to label %bb.ck unwind label %bb.co

bb.ck:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit228
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.cl unwind label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  %i.id = load ptr, ptr %23, align 8, !tbaa !120  ; 3 uses
  %.not.i.i229 = icmp eq ptr %i.id, null
  br i1 %.not.i.i229, label %_ZN7testing7MessageD2Ev.exit231, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i230

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i230: ; preds = %bb.cl
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !9
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dereferenceable(128) %i.id) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit231

_ZN7testing7MessageD2Ev.exit231:                  ; preds = %bb.cl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #43
  %i.ih = load ptr, ptr %i.hy, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i232 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i232, label %.thread276, label %bb.cm

bb.cm:                                            ; preds = %_ZN7testing7MessageD2Ev.exit231
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !26 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i233: ; preds = %bb.cm
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !30
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i233
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef 32) #44
  br label %.thread276

.thread276:                                       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i234, %_ZN7testing7MessageD2Ev.exit231
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  br label %.thread270

bb.cn:                                            ; preds = %bb.ch
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit239

bb.co:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit228
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cp:                                            ; preds = %bb.ck
  %i.ip = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #43
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.pn92 = phi { ptr, i32 } [ %i.ip, %bb.cp ], [ %i.io, %bb.co ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  %i.iq = load ptr, ptr %23, align 8, !tbaa !120  ; 3 uses
  %.not.i.i237 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i237, label %_ZN7testing7MessageD2Ev.exit239, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238: ; preds = %bb.cq
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !9
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(128) %i.iq) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit239

_ZN7testing7MessageD2Ev.exit239:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238, %bb.cq, %bb.cn
  %.pn92.pn = phi { ptr, i32 } [ %i.in, %bb.cn ], [ %.pn92, %bb.cq ], [ %.pn92, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i238 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  br label %bb.dn

.critedge106:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226
  %i.iu = load ptr, ptr %i.hy, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i240 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i240, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.1, label %bb.cr

bb.cr:                                            ; preds = %.critedge106
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !26 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 16 ; 2 uses
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241: ; preds = %bb.cr
  %i.iy = load i64, ptr %i.iw, align 8, !tbaa !30
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iz) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.1

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.1: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242, %.critedge106
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
  %.pre321 = load i8, ptr %22, align 8, !tbaa !3822, !range !3831
  %i.ja = trunc nuw i8 %.pre321 to i1
  br i1 %i.ja, label %.critedge106.1, label %bb.ch

.critedge106.1:                                   ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.1
  %i.jb = load ptr, ptr %i.hy, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i240.1 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i240.1, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.2, label %bb.cs

bb.cs:                                            ; preds = %.critedge106.1
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !26 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 16 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.1: ; preds = %bb.cs
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !30
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.1

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.1: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.1
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.2

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.2: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.1, %.critedge106.1
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
  %.pre325 = load i8, ptr %22, align 8, !tbaa !3822, !range !3831
  %i.jh = trunc nuw i8 %.pre325 to i1
  br i1 %i.jh, label %.critedge106.2, label %bb.ch

.critedge106.2:                                   ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.2
  %i.ji = load ptr, ptr %i.hy, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i240.2 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i240.2, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.3, label %bb.ct

bb.ct:                                            ; preds = %.critedge106.2
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !26 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 16 ; 2 uses
  %i.jl = icmp eq ptr %i.jj, %i.jk
  br i1 %i.jl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.2: ; preds = %bb.ct
  %i.jm = load i64, ptr %i.jk, align 8, !tbaa !30
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jn) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.2

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.2: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.2
  call void @_ZdlPvm(ptr noundef nonnull %i.ji, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.3

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.3: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.2, %.critedge106.2
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
  %.pre329 = load i8, ptr %22, align 8, !tbaa !3822, !range !3831
  %i.jo = trunc nuw i8 %.pre329 to i1
  br i1 %i.jo, label %.critedge106.3, label %bb.ch

.critedge106.3:                                   ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.3
  %i.jp = load ptr, ptr %i.hy, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i240.3 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i240.3, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.4, label %bb.cu

bb.cu:                                            ; preds = %.critedge106.3
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !26 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 16 ; 2 uses
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.3: ; preds = %bb.cu
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !30
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.ju) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.3

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.3: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.3
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.4

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.4: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.3, %.critedge106.3
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
  %.pre333 = load i8, ptr %22, align 8, !tbaa !3822, !range !3831
  %i.jv = trunc nuw i8 %.pre333 to i1
  br i1 %i.jv, label %.critedge106.4, label %bb.ch

.critedge106.4:                                   ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.4
  %i.jw = load ptr, ptr %i.hy, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i240.4 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i240.4, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.5, label %bb.cv

bb.cv:                                            ; preds = %.critedge106.4
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !26 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.4: ; preds = %bb.cv
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !30
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.4

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.4: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.4
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.5

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.5: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.4, %.critedge106.4
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
  %.pre337 = load i8, ptr %22, align 8, !tbaa !3822, !range !3831
  %i.kc = trunc nuw i8 %.pre337 to i1
  br i1 %i.kc, label %.critedge106.5, label %bb.ch

.critedge106.5:                                   ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.5
  %i.kd = load ptr, ptr %i.hy, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i240.5 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i240.5, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.6, label %bb.cw

bb.cw:                                            ; preds = %.critedge106.5
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !26 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 16 ; 2 uses
  %i.kg = icmp eq ptr %i.ke, %i.kf
  br i1 %i.kg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.5: ; preds = %bb.cw
  %i.kh = load i64, ptr %i.kf, align 8, !tbaa !30
  %i.ki = add i64 %i.kh, 1
  call void @_ZdlPvm(ptr noundef %i.ke, i64 noundef %i.ki) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.5

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.5: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.5
  call void @_ZdlPvm(ptr noundef nonnull %i.kd, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.6

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.6: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.5, %.critedge106.5
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
  %.pre341 = load i8, ptr %22, align 8, !tbaa !3822, !range !3831
  %i.kj = trunc nuw i8 %.pre341 to i1
  br i1 %i.kj, label %.critedge106.6, label %bb.ch

.critedge106.6:                                   ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.6
  %i.kk = load ptr, ptr %i.hy, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i240.6 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i240.6, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.7, label %bb.cx

bb.cx:                                            ; preds = %.critedge106.6
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !26 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 16 ; 2 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.6: ; preds = %bb.cx
  %i.ko = load i64, ptr %i.km, align 8, !tbaa !30
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kp) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.6

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.6: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.6
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.7

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.7: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.6, %.critedge106.6
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
  %.pre345 = load i8, ptr %22, align 8, !tbaa !3822, !range !3831
  %i.kq = trunc nuw i8 %.pre345 to i1
  br i1 %i.kq, label %.critedge106.7, label %bb.ch

.critedge106.7:                                   ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit226.7
  %i.kr = load ptr, ptr %i.hy, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i240.7 = icmp eq ptr %i.kr, null
  br i1 %.not.i.i240.7, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247, label %bb.cy

bb.cy:                                            ; preds = %.critedge106.7
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !26 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 16 ; 2 uses
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.7: ; preds = %bb.cy
  %i.kv = load i64, ptr %i.kt, align 8, !tbaa !30
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kw) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.7

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.7: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i241.7
  call void @_ZdlPvm(ptr noundef nonnull %i.kr, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242.7, %.critedge106.7
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #43
  %i.kx = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25)
  %.pre348 = load i8, ptr %25, align 8, !tbaa !3822, !range !3831
  %i.ky = trunc nuw i8 %.pre348 to i1
  br i1 %i.ky, label %.critedge108, label %bb.cz

bb.cz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247.3, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247.2, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247.1, %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.da unwind label %bb.df

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #43
  %i.kz = load ptr, ptr %i.kx, align 8, !tbaa !3833 ; 2 uses
  %.not.i.i248 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i248, label %_ZNK7testing15AssertionResult15failure_messageEv.exit249, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !26
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit249

_ZNK7testing15AssertionResult15failure_messageEv.exit249: ; preds = %bb.db, %bb.da
  %i.lb = phi ptr [ %i.la, %bb.db ], [ @.str.31, %bb.da ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %27, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 263, ptr noundef %i.lb)
          to label %bb.dc unwind label %bb.dg

bb.dc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit249
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %bb.dd unwind label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #43
  %i.lc = load ptr, ptr %26, align 8, !tbaa !120  ; 3 uses
  %.not.i.i250 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i250, label %_ZN7testing7MessageD2Ev.exit252, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i251

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i251: ; preds = %bb.dd
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !9
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(128) %i.lc) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit252

_ZN7testing7MessageD2Ev.exit252:                  ; preds = %bb.dd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  %i.lg = load ptr, ptr %i.kx, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i253 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i253, label %_ZN7testing15AssertionResultD2Ev.exit257, label %bb.de

bb.de:                                            ; preds = %_ZN7testing7MessageD2Ev.exit252
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !26 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 16 ; 2 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i254: ; preds = %bb.de
  %i.lk = load i64, ptr %i.li, align 8, !tbaa !30
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.ll) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i254
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef 32) #44
  br label %_ZN7testing15AssertionResultD2Ev.exit257

_ZN7testing15AssertionResultD2Ev.exit257:         ; preds = %_ZN7testing7MessageD2Ev.exit252, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  br label %.thread270

bb.df:                                            ; preds = %bb.cz
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit260

bb.dg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit249
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.dh:                                            ; preds = %bb.dc
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #43
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.pn95 = phi { ptr, i32 } [ %i.lo, %bb.dh ], [ %i.ln, %bb.dg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #43
  %i.lp = load ptr, ptr %26, align 8, !tbaa !120  ; 3 uses
  %.not.i.i258 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i258, label %_ZN7testing7MessageD2Ev.exit260, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i259

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i259: ; preds = %bb.di
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !9
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(128) %i.lp) #43, !inline_history !3834
  br label %_ZN7testing7MessageD2Ev.exit260

_ZN7testing7MessageD2Ev.exit260:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i259, %bb.di, %bb.df
  %.pn95.pn = phi { ptr, i32 } [ %i.lm, %bb.df ], [ %.pn95, %bb.di ], [ %.pn95, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i259 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  br label %bb.dn

.critedge108:                                     ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247
  %i.lt = load ptr, ptr %i.kx, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i261 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i261, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247.1, label %bb.dj

bb.dj:                                            ; preds = %.critedge108
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !26 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 16 ; 2 uses
  %i.lw = icmp eq ptr %i.lu, %i.lv
  br i1 %i.lw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i262: ; preds = %bb.dj
  %i.lx = load i64, ptr %i.lv, align 8, !tbaa !30
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.ly) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i262
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247.1

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247.1: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263, %.critedge108
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25)
  %.pre352 = load i8, ptr %25, align 8, !tbaa !3822, !range !3831
  %i.lz = trunc nuw i8 %.pre352 to i1
  br i1 %i.lz, label %.critedge108.1, label %bb.cz

.critedge108.1:                                   ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247.1
  %i.ma = load ptr, ptr %i.kx, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i261.1 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i261.1, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247.2, label %bb.dk

bb.dk:                                            ; preds = %.critedge108.1
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !26 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 16 ; 2 uses
  %i.md = icmp eq ptr %i.mb, %i.mc
  br i1 %i.md, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i262.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i262.1: ; preds = %bb.dk
  %i.me = load i64, ptr %i.mc, align 8, !tbaa !30
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.mf) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263.1

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263.1: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i262.1
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247.2

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247.2: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263.1, %.critedge108.1
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25)
  %.pre356 = load i8, ptr %25, align 8, !tbaa !3822, !range !3831
  %i.mg = trunc nuw i8 %.pre356 to i1
  br i1 %i.mg, label %.critedge108.2, label %bb.cz

.critedge108.2:                                   ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247.2
  %i.mh = load ptr, ptr %i.kx, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i261.2 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i261.2, label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247.3, label %bb.dl

bb.dl:                                            ; preds = %.critedge108.2
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !26 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 16 ; 2 uses
  %i.mk = icmp eq ptr %i.mi, %i.mj
  br i1 %i.mk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i262.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i262.2: ; preds = %bb.dl
  %i.ml = load i64, ptr %i.mj, align 8, !tbaa !30
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mi, i64 noundef %i.mm) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263.2

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263.2: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i262.2
  call void @_ZdlPvm(ptr noundef nonnull %i.mh, i64 noundef 32) #44
  br label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247.3

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247.3: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263.2, %.critedge108.2
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %25)
  %.pre360 = load i8, ptr %25, align 8, !tbaa !3822, !range !3831
  %i.mn = trunc nuw i8 %.pre360 to i1
  br i1 %i.mn, label %.critedge108.3, label %bb.cz

.critedge108.3:                                   ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit247.3
  %i.mo = load ptr, ptr %i.kx, align 8, !tbaa !3833 ; 4 uses
  %.not.i.i261.3 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i261.3, label %.thread270.loopexit, label %bb.dm

bb.dm:                                            ; preds = %.critedge108.3
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !26 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 16 ; 2 uses
  %i.mr = icmp eq ptr %i.mp, %i.mq
  br i1 %i.mr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i262.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i262.3: ; preds = %bb.dm
  %i.ms = load i64, ptr %i.mq, align 8, !tbaa !30
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.mt) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263.3

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263.3: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i262.3
  call void @_ZdlPvm(ptr noundef nonnull %i.mo, i64 noundef 32) #44
  br label %.thread270.loopexit

.thread270.loopexit:                              ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i263.3, %.critedge108.3
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  br label %.thread270

.thread270:                                       ; preds = %.thread270.loopexit, %_ZN7testing15AssertionResultD2Ev.exit173, %_ZN7testing15AssertionResultD2Ev.exit194, %_ZN7testing15AssertionResultD2Ev.exit257, %.thread276, %.thread273, %.thread, %_ZN7testing15AssertionResultD2Ev.exit141, %_ZN7testing15AssertionResultD2Ev.exit127
  ret void

bb.dn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit176, %_ZN7testing7MessageD2Ev.exit197, %_ZN7testing7MessageD2Ev.exit260, %_ZN7testing7MessageD2Ev.exit239, %_ZN7testing7MessageD2Ev.exit218, %_ZN7testing7MessageD2Ev.exit155, %_ZN7testing7MessageD2Ev.exit136, %_ZN7testing7MessageD2Ev.exit122, %_ZN7testing7MessageD2Ev.exit112
  %.pn95.pn.pn = phi { ptr, i32 } [ %.pn95.pn, %_ZN7testing7MessageD2Ev.exit260 ], [ %.pn92.pn, %_ZN7testing7MessageD2Ev.exit239 ], [ %.pn89.pn, %_ZN7testing7MessageD2Ev.exit218 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit112 ], [ %.pn79.pn, %_ZN7testing7MessageD2Ev.exit155 ], [ %.pn76.pn, %_ZN7testing7MessageD2Ev.exit136 ], [ %.pn73.pn, %_ZN7testing7MessageD2Ev.exit122 ], [ %.pn85.pn, %_ZN7testing7MessageD2Ev.exit197 ], [ %.pn82.pn, %_ZN7testing7MessageD2Ev.exit176 ]
  resume { ptr, i32 } %.pn95.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  call void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #43
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageImiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

_ZN7testing8internal33FormatForComparisonFailureMessageImiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit: ; preds = %bb.a
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.a = load ptr, ptr %6, align 8, !tbaa !26     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !30
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  %i.f = load ptr, ptr %5, align 8, !tbaa !26     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = load i64, ptr %i.g, align 8, !tbaa !30
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %6, align 8, !tbaa !26     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !30
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.l, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #43
  %i.r = load ptr, ptr %5, align 8, !tbaa !26     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.u = load i64, ptr %i.s, align 8, !tbaa !30
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_127Util_NormalizeCapacity_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_127Util_NormalizeCapacity_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #47 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_127Util_NormalizeCapacity_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #44
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_127Util_NormalizeCapacity_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #43
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_127Util_NormalizeCapacity_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  %i.a = load i8, ptr %1, align 8, !tbaa !3822, !range !3831, !noundef !3832
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.j, label %bb.a

bb.a:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3833 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
end_hunk_0
