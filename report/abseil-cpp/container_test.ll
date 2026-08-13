inline.NumInlined: 1820
inline.NumDeleted: 618
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_138ContainerLoggingTest_LogContainer_Test8TestBodyEv:bb.a

_ZN4absl12lts_2026052612log_internal6detaillsERSoRKNS2_11RangeLoggerISt23_Rb_tree_const_iteratorIiENS1_15LogShortUpTo100EEE.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke fastcc void @_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_120ContainerLoggingTest6loggedB5cxx11Ev(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %_ZN4absl12lts_2026052612log_internal6detaillsERSoRKNS2_11RangeLoggerISt23_Rb_tree_const_iteratorIiENS1_15LogShortUpTo100EEE.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !19, !noalias !354
  %i.bs = icmp eq i64 %i.br, 9
  br i1 %i.bs, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i53, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i52

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i53: ; preds = %bb.s
  %i.bt = load ptr, ptr %11, align 8, !tbaa !28, !noalias !354 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 1
  %i.bv = xor i64 %i.bu, 3683993088988819803
  %i.bw = getelementptr i8, ptr %i.bt, i64 8
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i64
  %i.bz = xor i64 %i.by, 93
  %i.ca = or i64 %i.bv, %i.bz
  %i.cb = icmp ne i64 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i55, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i52

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i55: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i53
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit58 unwind label %bb.w

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i52: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i53, %bb.s
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(10) @.str.70, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit58 unwind label %bb.w

_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit58: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i55, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i52
  %i.ce = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit58
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !22
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.cj = load i8, ptr %10, align 8, !tbaa !36, !range !45, !noundef !46
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.ag, label %bb.x

bb.t:                                             ; preds = %_ZN7testing7MessageD2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %_ZN7testing7MessageD2Ev.exit49 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.be

bb.u:                                             ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.be

bb.v:                                             ; preds = %_ZN4absl12lts_2026052612log_internal6detaillsERSoRKNS2_11RangeLoggerISt23_Rb_tree_const_iteratorIiENS1_15LogShortUpTo100EEE.exit
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.w:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i52, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i55
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.w
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !22
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62, %bb.v
  %.pn24 = phi { ptr, i32 } [ %i.cm, %bb.v ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62 ], [ %i.cn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.am

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !47 ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i65, label %_ZNK7testing15AssertionResult15failure_messageEv.exit66, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !28
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit66

_ZNK7testing15AssertionResult15failure_messageEv.exit66: ; preds = %bb.z, %bb.y
  %i.cw = phi ptr [ %i.cv, %bb.z ], [ @.str.41, %bb.y ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 157, ptr noundef %i.cw)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit66
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.cx = load ptr, ptr %12, align 8, !tbaa !11   ; 3 uses
  %.not.i.i67 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i67, label %_ZN7testing7MessageD2Ev.exit69, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68: ; preds = %bb.ab
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !9
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(128) %i.cx) #22, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit69

_ZN7testing7MessageD2Ev.exit69:                   ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.ag

bb.ac:                                            ; preds = %bb.x
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit72

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit66
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #22
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn26 = phi { ptr, i32 } [ %i.dd, %bb.ae ], [ %i.dc, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.de = load ptr, ptr %12, align 8, !tbaa !11   ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.de, null
  br i1 %.not.i.i70, label %_ZN7testing7MessageD2Ev.exit72, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71: ; preds = %bb.af
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !9
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(128) %i.de) #22, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit72

_ZN7testing7MessageD2Ev.exit72:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71, %bb.af, %bb.ac
  %.pn26.pn = phi { ptr, i32 } [ %i.db, %bb.ac ], [ %.pn26, %bb.af ], [ %.pn26, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #22
  br label %bb.am

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZN7testing7MessageD2Ev.exit69
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !47 ; 4 uses
  %.not.i.i73 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i73, label %_ZN7testing15AssertionResultD2Ev.exit77, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !28 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74: ; preds = %bb.ah
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !22
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #24
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i75

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i75: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i74
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 32) #24
  br label %_ZN7testing15AssertionResultD2Ev.exit77

_ZN7testing15AssertionResultD2Ev.exit77:          ; preds = %bb.ag, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %.val = load ptr, ptr %i.d, align 8, !tbaa !11
  %i.dp = getelementptr inbounds nuw i8, ptr %.val, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !330 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.dq, %i.h
  br i1 %.not4.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit77, %.lr.ph.i.i.i
  %.06.i.i.i = phi i64 [ %i.ds, %.lr.ph.i.i.i ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit77 ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i ], [ %i.dq, %_ZN7testing15AssertionResultD2Ev.exit77 ]
  %i.dr = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i.i) #27 ; 2 uses
  %i.ds = add nuw nsw i64 %.06.i.i.i, 1           ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dr, %i.h
  br i1 %.not.i.i.i, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !359

_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.dt = icmp samesign ugt i64 %.06.i.i.i, 2305843009213693950
  br i1 %i.dt, label %bb.ai, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i

bb.ai:                                            ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #26
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.ai
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIiEENSt15iterator_traitsIT_E15difference_typeES3_S3_St18input_iterator_tag.exit.i.i
  %i.du = shl nuw nsw i64 %i.ds, 2
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #25
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.i unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i ; 3 uses

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.dv, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.dq, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !93
  store i32 %i.dx, ptr %.08.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !93
  %i.dy = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.dz = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.03.07.i.i.i.i.i.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dz, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !360

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i:           ; preds = %bb.ai, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ds
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN7testing15AssertionResultD2Ev.exit77
  %.sroa.11.0 = phi i64 [ 0, %_ZN7testing15AssertionResultD2Ev.exit77 ], [ %i.ed, %.loopexit.loopexit ] ; 2 uses
  %.sroa.0109.0 = phi ptr [ null, %_ZN7testing15AssertionResultD2Ev.exit77 ], [ %i.dv, %.loopexit.loopexit ] ; 5 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN7testing15AssertionResultD2Ev.exit77 ], [ %i.ec, %.loopexit.loopexit ]
  %i.ee = ptrtoint ptr %.sroa.0109.0 to i64       ; 3 uses
  store i64 %i.ee, ptr %14, align 8, !tbaa !107, !alias.scope !361
  %i.ef = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.ef, align 8, !tbaa !107, !alias.scope !361
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052612log_internal6detaillsERSoRKNS2_11RangeLoggerIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_16LogLegacyUpTo100EEE(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull align 8 dereferenceable(17) %14)
          to label %bb.aj unwind label %bb.an     ; 0 uses

bb.aj:                                            ; preds = %.loopexit
  %.not.i.i.i78 = icmp eq ptr %.sroa.0109.0, null
  br i1 %.not.i.i.i78, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eh = sub i64 %.sroa.11.0, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.0, i64 noundef %i.eh) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke fastcc void @_ZN4absl12lts_2026052612log_internal12_GLOBAL__N_120ContainerLoggingTest6loggedB5cxx11Ev(ptr dead_on_unwind noalias writable align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !19, !noalias !366
  %i.ek = icmp eq i64 %i.ej, 5
  br i1 %i.ek, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i81, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i80

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i81: ; preds = %bb.al
  %i.el = load ptr, ptr %16, align 8, !tbaa !28, !noalias !366 ; 2 uses
  %i.em = load i32, ptr %i.el, align 1
  %i.en = xor i32 %i.em, 540155953
  %i.eo = getelementptr i8, ptr %i.el, i64 4
  %i.ep = load i8, ptr %i.eo, align 1
  %i.eq = zext i8 %i.ep to i32
  %i.er = xor i32 %i.eq, 51
  %i.es = or i32 %i.en, %i.er
  %i.et = icmp ne i32 %i.es, 0
  %i.eu = zext i1 %i.et to i32
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i83, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i80

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i83: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i81
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
          to label %_ZN7testing8internal8EqHelper7CompareIA6_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.aq

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i80: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i81, %bb.al
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA6_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(6) @.str.72, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %_ZN7testing8internal8EqHelper7CompareIA6_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.aq

_ZN7testing8internal8EqHelper7CompareIA6_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i83, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i80
  %i.ew = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZN7testing8internal8EqHelper7CompareIA6_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !22
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZN7testing8internal8EqHelper7CompareIA6_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.fb = load i8, ptr %15, align 8, !tbaa !36, !range !45, !noundef !46
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.ba, label %bb.ar

bb.am:                                            ; preds = %_ZN7testing7MessageD2Ev.exit72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %_ZN7testing7MessageD2Ev.exit72 ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.be

bb.an:                                            ; preds = %.loopexit
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i89 = icmp eq ptr %.sroa.0109.0, null
  br i1 %.not.i.i.i89, label %.body, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fe = sub i64 %.sroa.11.0, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.0, i64 noundef %i.fe) #24
  br label %.body

.body:                                            ; preds = %bb.ao, %bb.an, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i
  %.pn30 = phi { ptr, i32 } [ %i.ea, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i ], [ %i.fd, %bb.ao ], [ %i.fd, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.be

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

bb.aq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i80, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i83
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %bb.aq
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !22
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.ap
  %.pn32 = phi { ptr, i32 } [ %i.ff, %bb.ap ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %i.fg, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.bd

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.fm = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !47 ; 2 uses
  %.not.i.i95 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i95, label %_ZNK7testing15AssertionResult15failure_messageEv.exit96, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !28
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit96

_ZNK7testing15AssertionResult15failure_messageEv.exit96: ; preds = %bb.at, %bb.as
  %i.fp = phi ptr [ %i.fo, %bb.at ], [ @.str.41, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 161, ptr noundef %i.fp)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit96
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.fq = load ptr, ptr %17, align 8, !tbaa !11   ; 3 uses
  %.not.i.i97 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i97, label %_ZN7testing7MessageD2Ev.exit99, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98: ; preds = %bb.av
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !9
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(128) %i.fq) #22, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit99

_ZN7testing7MessageD2Ev.exit99:                   ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.ba

bb.aw:                                            ; preds = %bb.ar
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit102

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit96
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #22
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn34 = phi { ptr, i32 } [ %i.fw, %bb.ay ], [ %i.fv, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.fx = load ptr, ptr %17, align 8, !tbaa !11   ; 3 uses
  %.not.i.i100 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i100, label %_ZN7testing7MessageD2Ev.exit102, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101: ; preds = %bb.az
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !9
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(128) %i.fx) #22, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit102

_ZN7testing7MessageD2Ev.exit102:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101, %bb.az, %bb.aw
  %.pn34.pn = phi { ptr, i32 } [ %i.fu, %bb.aw ], [ %.pn34, %bb.az ], [ %.pn34, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #22
  br label %bb.bd

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZN7testing7MessageD2Ev.exit99
end_hunk_0
