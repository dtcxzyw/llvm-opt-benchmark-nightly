Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/unordered_map_test?download=true
inline.NumInlined: 15540
inline.NumDeleted: 2622
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15CopyConstructorISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8TestBodyEv:bb.a
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67: ; preds = %bb.ax
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !79
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit70

_ZN7testing15AssertionResultD2Ev.exit70:          ; preds = %bb.aw, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  %i.dj = load i64, ptr %i.g, align 16, !tbaa !113, !noalias !1743 ; 2 uses
  store i64 %i.dj, ptr %17, align 8, !tbaa !231, !alias.scope !1743
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  %i.dk = load i64, ptr %i.as, align 16, !tbaa !113, !noalias !1746 ; 2 uses
  store i64 %i.dk, ptr %18, align 8, !tbaa !231, !alias.scope !1746
  %i.dl = icmp eq i64 %i.dj, %i.dk
  br i1 %i.dl, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit70
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit unwind label %bb.bb

bb.az:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit70
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.186, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit unwind label %bb.bb

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.dm = load i8, ptr %16, align 8, !tbaa !139, !range !70, !noundef !71
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.bl, label %bb.bc

bb.ba:                                            ; preds = %_ZN7testing7MessageD2Ev.exit65, %bb.am
  %.pn33.pn.pn = phi { ptr, i32 } [ %.pn33.pn, %_ZN7testing7MessageD2Ev.exit65 ], [ %i.cm, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.ck

bb.bb:                                            ; preds = %bb.az, %bb.ay
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.bt

bb.bc:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.dp = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !140 ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i73, label %_ZNK7testing15AssertionResult15failure_messageEv.exit74, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit74

_ZNK7testing15AssertionResult15failure_messageEv.exit74: ; preds = %bb.be, %bb.bd
  %i.ds = phi ptr [ %i.dr, %bb.be ], [ @.str.134, %bb.bd ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 203, ptr noundef %i.ds)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit74
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.dt = load ptr, ptr %19, align 8, !tbaa !142  ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i75, label %_ZN7testing7MessageD2Ev.exit77, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76: ; preds = %bb.bg
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !97
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(128) %i.dt) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit77

_ZN7testing7MessageD2Ev.exit77:                   ; preds = %bb.bg, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bc
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit80

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit74
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bf
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn37 = phi { ptr, i32 } [ %i.dz, %bb.bj ], [ %i.dy, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.ea = load ptr, ptr %19, align 8, !tbaa !142  ; 3 uses
  %.not.i.i78 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i78, label %_ZN7testing7MessageD2Ev.exit80, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79: ; preds = %bb.bk
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !97
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(128) %i.ea) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit80

_ZN7testing7MessageD2Ev.exit80:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79, %bb.bk, %bb.bh
  %.pn37.pn = phi { ptr, i32 } [ %i.dx, %bb.bh ], [ %.pn37, %bb.bk ], [ %.pn37, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #26
  br label %bb.bt

bb.bl:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit77
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !140 ; 4 uses
  %.not.i.i81 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i81, label %_ZN7testing15AssertionResultD2Ev.exit85, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !76 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %i.ei = icmp eq ptr %i.eg, %i.eh
  br i1 %i.ei, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i82: ; preds = %bb.bm
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !79
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ek) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i82
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit85

_ZN7testing15AssertionResultD2Ev.exit85:          ; preds = %bb.bl, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.el = load i64, ptr %i.az, align 16, !tbaa !224, !noalias !1747
  %i.em = load i64, ptr %i.ay, align 16, !tbaa !224, !noalias !1747
  %.not.i.i.i.i = icmp eq i64 %i.el, %i.em
  br i1 %.not.i.i.i.i, label %bb.bn, label %.loopexit.i.i

bb.bn:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit85
  %.sroa.031.037.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !144, !noalias !1747 ; 2 uses
  %.not3538.i.i.i.i = icmp eq ptr %.sroa.031.037.i.i.i.i, null
  br i1 %.not3538.i.i.i.i, label %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bn
  %i.en = load i64, ptr %i.av, align 16, !tbaa !130, !noalias !1747 ; 2 uses
  %i.eo = load ptr, ptr %i.au, align 8, !tbaa !129, !noalias !1747
  br label %bb.bo

.critedge30.loopexit.i.i.i.i:                     ; preds = %bb.bq
  %.sroa.031.0.i.i.i.i = load ptr, ptr %.sroa.031.039.i.i.i.i, align 8, !tbaa !144, !noalias !1747 ; 2 uses
  %.not35.i.i.i.i = icmp eq ptr %.sroa.031.0.i.i.i.i, null
  br i1 %.not35.i.i.i.i, label %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, label %bb.bo, !llvm.loop !33

bb.bo:                                            ; preds = %.critedge30.loopexit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.031.039.i.i.i.i = phi ptr [ %.sroa.031.037.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.031.0.i.i.i.i, %.critedge30.loopexit.i.i.i.i ] ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i.i.i, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !270, !noalias !1747
  %i.er = urem i64 %i.eq, %i.en                   ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !268, !noalias !1747 ; 2 uses
  %.not26.not.i.not.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not26.not.i.not.i.i.i, label %.loopexit.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i.i.i, i64 8
  %i.ev = load ptr, ptr %i.et, align 8, !tbaa !144, !noalias !1747
  %i.ew = load <2 x i32>, ptr %i.eu, align 8, !noalias !1747
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bs, %bb.bp
  %.0.i.i.i.i = phi ptr [ %i.ev, %bb.bp ], [ %i.fa, %bb.bs ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.ey = load <2 x i32>, ptr %i.ex, align 4, !noalias !1747
  %i.ez = icmp eq <2 x i32> %i.ey, %i.ew          ; 2 uses
  %24 = extractelement <2 x i1> %i.ez, i64 0
  %25 = extractelement <2 x i1> %i.ez, i64 1
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %.critedge30.loopexit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fa = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !144, !noalias !1747 ; 3 uses
  %.not27.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not27.i.i.i.i, label %.loopexit.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !270, !noalias !1747
  %i.fd = urem i64 %i.fc, %i.en
  %.not28.i.i.i.i = icmp eq i64 %i.fd, %i.er
  br i1 %.not28.i.i.i.i, label %bb.bq, label %.loopexit.i.i, !llvm.loop !34

_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i: ; preds = %.critedge30.loopexit.i.i.i.i, %bb.bn
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21)
          to label %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.bu

.loopexit.i.i:                                    ; preds = %bb.bo, %bb.bs, %bb.br, %_ZN7testing15AssertionResultD2Ev.exit85
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.187, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.bu

_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit: ; preds = %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, %.loopexit.i.i
  %i.fe = load i8, ptr %21, align 8, !tbaa !139, !range !70, !noundef !71
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.ce, label %bb.bv

bb.bt:                                            ; preds = %_ZN7testing7MessageD2Ev.exit80, %bb.bb
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %_ZN7testing7MessageD2Ev.exit80 ], [ %i.do, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.ck

bb.bu:                                            ; preds = %.loopexit.i.i, %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bv:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.bw unwind label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.fh = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !140 ; 2 uses
  %.not.i.i88 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i88, label %_ZNK7testing15AssertionResult15failure_messageEv.exit89, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit89

_ZNK7testing15AssertionResult15failure_messageEv.exit89: ; preds = %bb.bx, %bb.bw
  %i.fk = phi ptr [ %i.fj, %bb.bx ], [ @.str.134, %bb.bw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 204, ptr noundef %i.fk)
          to label %bb.by unwind label %bb.cb

bb.by:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit89
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.bz unwind label %bb.cc

bb.bz:                                            ; preds = %bb.by
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.fl = load ptr, ptr %22, align 8, !tbaa !142  ; 3 uses
  %.not.i.i90 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i90, label %_ZN7testing7MessageD2Ev.exit92, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %bb.bz
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !97
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(128) %i.fl) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit92

_ZN7testing7MessageD2Ev.exit92:                   ; preds = %bb.bz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bv
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit95

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit89
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.by
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #26
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn41 = phi { ptr, i32 } [ %i.fr, %bb.cc ], [ %i.fq, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.fs = load ptr, ptr %22, align 8, !tbaa !142  ; 3 uses
  %.not.i.i93 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i93, label %_ZN7testing7MessageD2Ev.exit95, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94: ; preds = %bb.cd
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !97
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(128) %i.fs) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit95

_ZN7testing7MessageD2Ev.exit95:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94, %bb.cd, %bb.ca
  %.pn41.pn = phi { ptr, i32 } [ %i.fp, %bb.ca ], [ %.pn41, %bb.cd ], [ %.pn41, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #26
  br label %bb.cj

bb.ce:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit, %_ZN7testing7MessageD2Ev.exit92
  %i.fw = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !140 ; 4 uses
  %.not.i.i96 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i96, label %_ZN7testing15AssertionResultD2Ev.exit100, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !76 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i97: ; preds = %bb.cf
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !79
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i97
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit100

_ZN7testing15AssertionResultD2Ev.exit100:         ; preds = %bb.ce, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.gd = load ptr, ptr %i.ax, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i101

.lr.ph.i.i.i.i101:                                ; preds = %_ZN7testing15AssertionResultD2Ev.exit100, %.lr.ph.i.i.i.i101
  %.06.i.i.i.i = phi ptr [ %i.ge, %.lr.ph.i.i.i.i101 ], [ %i.gd, %_ZN7testing15AssertionResultD2Ev.exit100 ] ; 2 uses
  %i.ge = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i102 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i.i.i102, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i101, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i101, %_ZN7testing15AssertionResultD2Ev.exit100
  %i.gf = load ptr, ptr %i.au, align 8, !tbaa !129
  %i.gg = load i64, ptr %i.av, align 16, !tbaa !130
  %i.gh = shl i64 %i.gg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gf, i8 0, i64 %i.gh, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false)
  %i.gi = load ptr, ptr %i.au, align 8, !tbaa !129 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.bc
  br i1 %i.gj, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.gk = load i64, ptr %i.av, align 16, !tbaa !130
  %i.gl = shl i64 %i.gk, 3
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.gm = load ptr, ptr %i.k, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i103 = icmp eq ptr %i.gm, null
  br i1 %.not5.i.i.i.i103, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i107, label %.lr.ph.i.i.i.i104

.lr.ph.i.i.i.i104:                                ; preds = %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, %.lr.ph.i.i.i.i104
  %.06.i.i.i.i105 = phi ptr [ %i.gn, %.lr.ph.i.i.i.i104 ], [ %i.gm, %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit ] ; 2 uses
  %i.gn = load ptr, ptr %.06.i.i.i.i105, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i105, i64 noundef 24) #29
  %.not.i.i.i.i106 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i106, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i107, label %.lr.ph.i.i.i.i104, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i107: ; preds = %.lr.ph.i.i.i.i104, %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit
  %i.go = load ptr, ptr %i.h, align 8, !tbaa !129
  %i.gp = load i64, ptr %i.j, align 16, !tbaa !130
  %i.gq = shl i64 %i.gp, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.go, i8 0, i64 %i.gq, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.gr = load ptr, ptr %i.h, align 8, !tbaa !129 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.i
  br i1 %i.gs, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit108, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i107
  %i.gt = load i64, ptr %i.j, align 16, !tbaa !130
  %i.gu = shl i64 %i.gt, 3
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit108

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit108: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i107, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.gv = load ptr, ptr %i.e, align 8, !tbaa !236 ; 3 uses
  %.not.i.i.i.i109 = icmp eq ptr %i.gv, null
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal24CopyConstructorAllocTestISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEEvv:bb.a
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67: ; preds = %bb.ax
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !79
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i67
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit70

_ZN7testing15AssertionResultD2Ev.exit70:          ; preds = %bb.aw, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  %i.di = load i64, ptr %i.g, align 16, !tbaa !113, !noalias !1895 ; 2 uses
  store i64 %i.di, ptr %16, align 8, !tbaa !231, !alias.scope !1895
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  call void @llvm.experimental.noalias.scope.decl(metadata !1897)
  %i.dj = load i64, ptr %i.as, align 16, !tbaa !113, !noalias !1898 ; 2 uses
  store i64 %i.dj, ptr %17, align 8, !tbaa !231, !alias.scope !1898
  %.not.i = icmp eq i64 %i.di, %i.dj
  br i1 %.not.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit70
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
          to label %_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit unwind label %bb.bb

bb.az:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit70
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_SC_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.186, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull @.str.188)
          to label %_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit unwind label %bb.bb

_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit: ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.dk = load i8, ptr %15, align 8, !tbaa !139, !range !70, !noundef !71
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.bl, label %bb.bc

bb.ba:                                            ; preds = %_ZN7testing7MessageD2Ev.exit65, %bb.am
  %.pn33.pn.pn = phi { ptr, i32 } [ %.pn33.pn, %_ZN7testing7MessageD2Ev.exit65 ], [ %i.cl, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ck

bb.bb:                                            ; preds = %bb.az, %bb.ay
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.bt

bb.bc:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  %i.dn = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !140 ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.do, null
  br i1 %.not.i.i73, label %_ZNK7testing15AssertionResult15failure_messageEv.exit74, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit74

_ZNK7testing15AssertionResult15failure_messageEv.exit74: ; preds = %bb.be, %bb.bd
  %i.dq = phi ptr [ %i.dp, %bb.be ], [ @.str.134, %bb.bd ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 222, ptr noundef %i.dq)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit74
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.dr = load ptr, ptr %18, align 8, !tbaa !142  ; 3 uses
  %.not.i.i75 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i75, label %_ZN7testing7MessageD2Ev.exit77, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76: ; preds = %bb.bg
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !97
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(128) %i.dr) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit77

_ZN7testing7MessageD2Ev.exit77:                   ; preds = %bb.bg, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bc
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit80

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit74
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bf
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #26
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn37 = phi { ptr, i32 } [ %i.dx, %bb.bj ], [ %i.dw, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  %i.dy = load ptr, ptr %18, align 8, !tbaa !142  ; 3 uses
  %.not.i.i78 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i78, label %_ZN7testing7MessageD2Ev.exit80, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79: ; preds = %bb.bk
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !97
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(128) %i.dy) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit80

_ZN7testing7MessageD2Ev.exit80:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79, %bb.bk, %bb.bh
  %.pn37.pn = phi { ptr, i32 } [ %i.dv, %bb.bh ], [ %.pn37, %bb.bk ], [ %.pn37, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #26
  br label %bb.bt

bb.bl:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit77
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !140 ; 4 uses
  %.not.i.i81 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i81, label %_ZN7testing15AssertionResultD2Ev.exit85, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !76 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i82: ; preds = %bb.bm
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !79
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i82
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit85

_ZN7testing15AssertionResultD2Ev.exit85:          ; preds = %bb.bl, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.ej = load i64, ptr %i.ay, align 16, !tbaa !224, !noalias !1899
  %i.ek = load i64, ptr %i.ax, align 16, !tbaa !224, !noalias !1899
  %.not.i.i.i.i = icmp eq i64 %i.ej, %i.ek
  br i1 %.not.i.i.i.i, label %bb.bn, label %.loopexit.i.i

bb.bn:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit85
  %.sroa.031.037.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !144, !noalias !1899 ; 2 uses
  %.not3538.i.i.i.i = icmp eq ptr %.sroa.031.037.i.i.i.i, null
  br i1 %.not3538.i.i.i.i, label %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bn
  %i.el = load i64, ptr %i.au, align 16, !tbaa !130, !noalias !1899 ; 2 uses
  %i.em = load ptr, ptr %i.at, align 8, !tbaa !129, !noalias !1899
  br label %bb.bo

.critedge30.loopexit.i.i.i.i:                     ; preds = %bb.bq
  %.sroa.031.0.i.i.i.i = load ptr, ptr %.sroa.031.039.i.i.i.i, align 8, !tbaa !144, !noalias !1899 ; 2 uses
  %.not35.i.i.i.i = icmp eq ptr %.sroa.031.0.i.i.i.i, null
  br i1 %.not35.i.i.i.i, label %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, label %bb.bo, !llvm.loop !33

bb.bo:                                            ; preds = %.critedge30.loopexit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.031.039.i.i.i.i = phi ptr [ %.sroa.031.037.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.031.0.i.i.i.i, %.critedge30.loopexit.i.i.i.i ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i.i.i, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !270, !noalias !1899
  %i.ep = urem i64 %i.eo, %i.el                   ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !268, !noalias !1899 ; 2 uses
  %.not26.not.i.not.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not26.not.i.not.i.i.i, label %.loopexit.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i.i.i, i64 8
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !144, !noalias !1899
  %i.eu = load <2 x i32>, ptr %i.es, align 8, !noalias !1899
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bs, %bb.bp
  %.0.i.i.i.i = phi ptr [ %i.et, %bb.bp ], [ %i.ey, %bb.bs ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.ew = load <2 x i32>, ptr %i.ev, align 4, !noalias !1899
  %i.ex = icmp eq <2 x i32> %i.ew, %i.eu          ; 2 uses
  %23 = extractelement <2 x i1> %i.ex, i64 0
  %24 = extractelement <2 x i1> %i.ex, i64 1
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %.critedge30.loopexit.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ey = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !144, !noalias !1899 ; 3 uses
  %.not27.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not27.i.i.i.i, label %.loopexit.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !270, !noalias !1899
  %i.fb = urem i64 %i.fa, %i.el
  %.not28.i.i.i.i = icmp eq i64 %i.fb, %i.ep
  br i1 %.not28.i.i.i.i, label %bb.bq, label %.loopexit.i.i, !llvm.loop !34

_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i: ; preds = %.critedge30.loopexit.i.i.i.i, %bb.bn
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %20)
          to label %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.bu

.loopexit.i.i:                                    ; preds = %bb.bo, %bb.bs, %bb.br, %_ZN7testing15AssertionResultD2Ev.exit85
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %20, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.187, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.bu

_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit: ; preds = %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, %.loopexit.i.i
  %i.fc = load i8, ptr %20, align 8, !tbaa !139, !range !70, !noundef !71
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.ce, label %bb.bv

bb.bt:                                            ; preds = %_ZN7testing7MessageD2Ev.exit80, %bb.bb
  %.pn37.pn.pn = phi { ptr, i32 } [ %.pn37.pn, %_ZN7testing7MessageD2Ev.exit80 ], [ %i.dm, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.ck

bb.bu:                                            ; preds = %.loopexit.i.i, %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.bv:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bw unwind label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.ff = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !140 ; 2 uses
  %.not.i.i88 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i88, label %_ZNK7testing15AssertionResult15failure_messageEv.exit89, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit89

_ZNK7testing15AssertionResult15failure_messageEv.exit89: ; preds = %bb.bx, %bb.bw
  %i.fi = phi ptr [ %i.fh, %bb.bx ], [ @.str.134, %bb.bw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 223, ptr noundef %i.fi)
          to label %bb.by unwind label %bb.cb

bb.by:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit89
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %bb.bz unwind label %bb.cc

bb.bz:                                            ; preds = %bb.by
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.fj = load ptr, ptr %21, align 8, !tbaa !142  ; 3 uses
  %.not.i.i90 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i90, label %_ZN7testing7MessageD2Ev.exit92, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %bb.bz
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !97
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(128) %i.fj) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit92

_ZN7testing7MessageD2Ev.exit92:                   ; preds = %bb.bz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bv
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit95

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit89
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.by
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #26
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn41 = phi { ptr, i32 } [ %i.fp, %bb.cc ], [ %i.fo, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.fq = load ptr, ptr %21, align 8, !tbaa !142  ; 3 uses
  %.not.i.i93 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i93, label %_ZN7testing7MessageD2Ev.exit95, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94: ; preds = %bb.cd
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !97
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(128) %i.fq) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit95

_ZN7testing7MessageD2Ev.exit95:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94, %bb.cd, %bb.ca
  %.pn41.pn = phi { ptr, i32 } [ %i.fn, %bb.ca ], [ %.pn41, %bb.cd ], [ %.pn41, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #26
  br label %bb.cj

bb.ce:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit, %_ZN7testing7MessageD2Ev.exit92
  %i.fu = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !140 ; 4 uses
  %.not.i.i96 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i96, label %_ZN7testing15AssertionResultD2Ev.exit100, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !76 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i97: ; preds = %bb.cf
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !79
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i97
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit100

_ZN7testing15AssertionResultD2Ev.exit100:         ; preds = %bb.ce, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.gb = load ptr, ptr %i.aw, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i101

.lr.ph.i.i.i.i101:                                ; preds = %_ZN7testing15AssertionResultD2Ev.exit100, %.lr.ph.i.i.i.i101
  %.06.i.i.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i101 ], [ %i.gb, %_ZN7testing15AssertionResultD2Ev.exit100 ] ; 2 uses
  %i.gc = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i102 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i102, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i101, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i101, %_ZN7testing15AssertionResultD2Ev.exit100
  %i.gd = load ptr, ptr %i.at, align 8, !tbaa !129
  %i.ge = load i64, ptr %i.au, align 16, !tbaa !130
  %i.gf = shl i64 %i.ge, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gd, i8 0, i64 %i.gf, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.gg = load ptr, ptr %i.at, align 8, !tbaa !129 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.bb
  br i1 %i.gh, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.gi = load i64, ptr %i.au, align 16, !tbaa !130
  %i.gj = shl i64 %i.gi, 3
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.gk = load ptr, ptr %i.k, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i103 = icmp eq ptr %i.gk, null
  br i1 %.not5.i.i.i.i103, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i107, label %.lr.ph.i.i.i.i104

.lr.ph.i.i.i.i104:                                ; preds = %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, %.lr.ph.i.i.i.i104
  %.06.i.i.i.i105 = phi ptr [ %i.gl, %.lr.ph.i.i.i.i104 ], [ %i.gk, %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit ] ; 2 uses
  %i.gl = load ptr, ptr %.06.i.i.i.i105, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i105, i64 noundef 24) #29
  %.not.i.i.i.i106 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i106, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i107, label %.lr.ph.i.i.i.i104, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i107: ; preds = %.lr.ph.i.i.i.i104, %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit
  %i.gm = load ptr, ptr %i.h, align 8, !tbaa !129
  %i.gn = load i64, ptr %i.j, align 16, !tbaa !130
  %i.go = shl i64 %i.gn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gm, i8 0, i64 %i.go, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.gp = load ptr, ptr %i.h, align 8, !tbaa !129 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, %i.i
  br i1 %i.gq, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit108, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i107
  %i.gr = load i64, ptr %i.j, align 16, !tbaa !130
  %i.gs = shl i64 %i.gr, 3
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gs) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit108

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit108: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i107, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.gt = load ptr, ptr %i.e, align 8, !tbaa !236 ; 3 uses
  %.not.i.i.i.i109 = icmp eq ptr %i.gt, null
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_15MoveConstructorISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8TestBodyEv:bb.a
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i70: ; preds = %bb.bb
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !79
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i70
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit73

_ZN7testing15AssertionResultD2Ev.exit73:          ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  %i.ee = load i64, ptr %i.g, align 16, !tbaa !113, !noalias !2025 ; 2 uses
  store i64 %i.ee, ptr %18, align 8, !tbaa !231, !alias.scope !2025
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !2026)
  call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  %i.ef = load i64, ptr %i.bg, align 16, !tbaa !113, !noalias !2028 ; 2 uses
  store i64 %i.ef, ptr %19, align 8, !tbaa !231, !alias.scope !2028
  %i.eg = icmp eq i64 %i.ee, %i.ef
  br i1 %i.eg, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit73
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit unwind label %bb.bf

bb.bd:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit73
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.186, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit unwind label %bb.bf

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit: ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.eh = load i8, ptr %17, align 8, !tbaa !139, !range !70, !noundef !71
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.bp, label %bb.bg

bb.be:                                            ; preds = %_ZN7testing7MessageD2Ev.exit68, %bb.aq
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %_ZN7testing7MessageD2Ev.exit68 ], [ %i.dh, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.cp

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.bx

bb.bg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.ek = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !140 ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.el, null
  br i1 %.not.i.i76, label %_ZNK7testing15AssertionResult15failure_messageEv.exit77, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit77

_ZNK7testing15AssertionResult15failure_messageEv.exit77: ; preds = %bb.bi, %bb.bh
  %i.en = phi ptr [ %i.em, %bb.bi ], [ @.str.134, %bb.bh ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 247, ptr noundef %i.en)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit77
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.eo = load ptr, ptr %20, align 8, !tbaa !142  ; 3 uses
  %.not.i.i78 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i78, label %_ZN7testing7MessageD2Ev.exit80, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79: ; preds = %bb.bk
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !97
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(128) %i.eo) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit80

_ZN7testing7MessageD2Ev.exit80:                   ; preds = %bb.bk, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bg
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit83

bb.bm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit77
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bj
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #26
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn39 = phi { ptr, i32 } [ %i.eu, %bb.bn ], [ %i.et, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.ev = load ptr, ptr %20, align 8, !tbaa !142  ; 3 uses
  %.not.i.i81 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i81, label %_ZN7testing7MessageD2Ev.exit83, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82: ; preds = %bb.bo
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !97
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(128) %i.ev) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit83

_ZN7testing7MessageD2Ev.exit83:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82, %bb.bo, %bb.bl
  %.pn39.pn = phi { ptr, i32 } [ %i.es, %bb.bl ], [ %.pn39, %bb.bo ], [ %.pn39, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #26
  br label %bb.bx

bb.bp:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEESA_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit, %_ZN7testing7MessageD2Ev.exit80
  %i.ez = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !140 ; 4 uses
  %.not.i.i84 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i84, label %_ZN7testing15AssertionResultD2Ev.exit88, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !76 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85: ; preds = %bb.bq
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !79
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit88

_ZN7testing15AssertionResultD2Ev.exit88:          ; preds = %bb.bp, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.fg = load i64, ptr %i.ay, align 16, !tbaa !224, !noalias !2029
  %i.fh = load i64, ptr %i.bo, align 16, !tbaa !224, !noalias !2029
  %.not.i.i.i.i89 = icmp eq i64 %i.fg, %i.fh
  br i1 %.not.i.i.i.i89, label %bb.br, label %.loopexit.i.i

bb.br:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit88
  %.sroa.031.037.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !144, !noalias !2029 ; 2 uses
  %.not3538.i.i.i.i = icmp eq ptr %.sroa.031.037.i.i.i.i, null
  br i1 %.not3538.i.i.i.i, label %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.br
  %i.fi = load i64, ptr %i.bk, align 16, !tbaa !130, !noalias !2029 ; 2 uses
  %i.fj = load ptr, ptr %i.bi, align 8, !tbaa !129, !noalias !2029
  br label %bb.bs

.critedge30.loopexit.i.i.i.i:                     ; preds = %bb.bu
  %.sroa.031.0.i.i.i.i = load ptr, ptr %.sroa.031.039.i.i.i.i, align 8, !tbaa !144, !noalias !2029 ; 2 uses
  %.not35.i.i.i.i = icmp eq ptr %.sroa.031.0.i.i.i.i, null
  br i1 %.not35.i.i.i.i, label %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, label %bb.bs, !llvm.loop !33

bb.bs:                                            ; preds = %.critedge30.loopexit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.031.039.i.i.i.i = phi ptr [ %.sroa.031.037.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.031.0.i.i.i.i, %.critedge30.loopexit.i.i.i.i ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i.i.i, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !270, !noalias !2029
  %i.fm = urem i64 %i.fl, %i.fi                   ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !268, !noalias !2029 ; 2 uses
  %.not26.not.i.not.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not26.not.i.not.i.i.i, label %.loopexit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i.i.i, i64 8
  %i.fq = load ptr, ptr %i.fo, align 8, !tbaa !144, !noalias !2029
  %i.fr = load <2 x i32>, ptr %i.fp, align 8, !noalias !2029
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bw, %bb.bt
  %.0.i.i.i.i = phi ptr [ %i.fq, %bb.bt ], [ %i.fv, %bb.bw ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.ft = load <2 x i32>, ptr %i.fs, align 4, !noalias !2029
  %i.fu = icmp eq <2 x i32> %i.ft, %i.fr          ; 2 uses
  %25 = extractelement <2 x i1> %i.fu, i64 0
  %26 = extractelement <2 x i1> %i.fu, i64 1
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %.critedge30.loopexit.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fv = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !144, !noalias !2029 ; 3 uses
  %.not27.i.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not27.i.i.i.i, label %.loopexit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !270, !noalias !2029
  %i.fy = urem i64 %i.fx, %i.fi
  %.not28.i.i.i.i = icmp eq i64 %i.fy, %i.fm
  br i1 %.not28.i.i.i.i, label %bb.bu, label %.loopexit.i.i, !llvm.loop !34

_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i: ; preds = %.critedge30.loopexit.i.i.i.i, %bb.br
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
          to label %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.by

.loopexit.i.i:                                    ; preds = %bb.bs, %bb.bw, %bb.bv, %_ZN7testing15AssertionResultD2Ev.exit88
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.187, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.by

_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit: ; preds = %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, %.loopexit.i.i
  %i.fz = load i8, ptr %22, align 8, !tbaa !139, !range !70, !noundef !71
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.ci, label %bb.bz

bb.bx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit83, %bb.bf
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %_ZN7testing7MessageD2Ev.exit83 ], [ %i.ej, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.cp

bb.by:                                            ; preds = %.loopexit.i.i, %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.bz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.ca unwind label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  %i.gc = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !140 ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i92, label %_ZNK7testing15AssertionResult15failure_messageEv.exit93, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit93

_ZNK7testing15AssertionResult15failure_messageEv.exit93: ; preds = %bb.cb, %bb.ca
  %i.gf = phi ptr [ %i.ge, %bb.cb ], [ @.str.134, %bb.ca ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 248, ptr noundef %i.gf)
          to label %bb.cc unwind label %bb.cf

bb.cc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit93
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %i.gg = load ptr, ptr %23, align 8, !tbaa !142  ; 3 uses
  %.not.i.i94 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i94, label %_ZN7testing7MessageD2Ev.exit96, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95: ; preds = %bb.cd
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !97
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(128) %i.gg) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit96

_ZN7testing7MessageD2Ev.exit96:                   ; preds = %bb.cd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.ci

bb.ce:                                            ; preds = %bb.bz
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit99

bb.cf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit93
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cc
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #26
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn43 = phi { ptr, i32 } [ %i.gm, %bb.cg ], [ %i.gl, %bb.cf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %i.gn = load ptr, ptr %23, align 8, !tbaa !142  ; 3 uses
  %.not.i.i97 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i97, label %_ZN7testing7MessageD2Ev.exit99, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98: ; preds = %bb.ch
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !97
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(128) %i.gn) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit99

_ZN7testing7MessageD2Ev.exit99:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98, %bb.ch, %bb.ce
  %.pn43.pn = phi { ptr, i32 } [ %i.gk, %bb.ce ], [ %.pn43, %bb.ch ], [ %.pn43, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #26
  br label %bb.co

bb.ci:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit, %_ZN7testing7MessageD2Ev.exit96
  %i.gr = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !140 ; 4 uses
  %.not.i.i100 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i100, label %_ZN7testing15AssertionResultD2Ev.exit104, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !76 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101: ; preds = %bb.cj
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !79
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit104

_ZN7testing15AssertionResultD2Ev.exit104:         ; preds = %bb.ci, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %i.gy = load ptr, ptr %i.bm, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i105

.lr.ph.i.i.i.i105:                                ; preds = %_ZN7testing15AssertionResultD2Ev.exit104, %.lr.ph.i.i.i.i105
  %.06.i.i.i.i = phi ptr [ %i.gz, %.lr.ph.i.i.i.i105 ], [ %i.gy, %_ZN7testing15AssertionResultD2Ev.exit104 ] ; 2 uses
  %i.gz = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i106 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i106, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i105, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i105, %_ZN7testing15AssertionResultD2Ev.exit104
  %i.ha = load ptr, ptr %i.bi, align 8, !tbaa !129
  %i.hb = load i64, ptr %i.bk, align 16, !tbaa !130
  %i.hc = shl i64 %i.hb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ha, i8 0, i64 %i.hc, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  %i.hd = load ptr, ptr %i.bi, align 8, !tbaa !129 ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.br
  br i1 %i.he, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.hf = load i64, ptr %i.bk, align 16, !tbaa !130
  %i.hg = shl i64 %i.hf, 3
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.hh = load ptr, ptr %i.aw, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i107 = icmp eq ptr %i.hh, null
  br i1 %.not5.i.i.i.i107, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i111, label %.lr.ph.i.i.i.i108

.lr.ph.i.i.i.i108:                                ; preds = %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, %.lr.ph.i.i.i.i108
  %.06.i.i.i.i109 = phi ptr [ %i.hi, %.lr.ph.i.i.i.i108 ], [ %i.hh, %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit ] ; 2 uses
  %i.hi = load ptr, ptr %.06.i.i.i.i109, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i109, i64 noundef 24) #29
  %.not.i.i.i.i110 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i110, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i111, label %.lr.ph.i.i.i.i108, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i111: ; preds = %.lr.ph.i.i.i.i108, %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit
  %i.hj = load ptr, ptr %i.at, align 8, !tbaa !129
  %i.hk = load i64, ptr %i.au, align 16, !tbaa !130
  %i.hl = shl i64 %i.hk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hj, i8 0, i64 %i.hl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.hm = load ptr, ptr %i.at, align 8, !tbaa !129 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.bb
  br i1 %i.hn, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit112, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i111
  %i.ho = load i64, ptr %i.au, align 16, !tbaa !130
  %i.hp = shl i64 %i.ho, 3
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit112

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit112: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i111, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.hq = load ptr, ptr %i.k, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i113 = icmp eq ptr %i.hq, null
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal24MoveConstructorAllocTestISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEEvv:bb.a
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i70: ; preds = %bb.bb
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !79
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i70
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit73

_ZN7testing15AssertionResultD2Ev.exit73:          ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  %i.ed = load i64, ptr %i.g, align 16, !tbaa !113, !noalias !2158 ; 2 uses
  store i64 %i.ed, ptr %17, align 8, !tbaa !231, !alias.scope !2158
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !2159)
  call void @llvm.experimental.noalias.scope.decl(metadata !2160)
  %i.ee = load i64, ptr %i.bg, align 16, !tbaa !113, !noalias !2161 ; 2 uses
  store i64 %i.ee, ptr %18, align 8, !tbaa !231, !alias.scope !2161
  %.not.i = icmp eq i64 %i.ed, %i.ee
  br i1 %.not.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit73
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit unwind label %bb.bf

bb.bd:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit73
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_SC_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.186, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.188)
          to label %_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit unwind label %bb.bf

_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit: ; preds = %bb.bc, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.ef = load i8, ptr %16, align 8, !tbaa !139, !range !70, !noundef !71
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.bp, label %bb.bg

bb.be:                                            ; preds = %_ZN7testing7MessageD2Ev.exit68, %bb.aq
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %_ZN7testing7MessageD2Ev.exit68 ], [ %i.dg, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.cp

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.bx

bb.bg:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.ei = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !140 ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i76, label %_ZNK7testing15AssertionResult15failure_messageEv.exit77, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit77

_ZNK7testing15AssertionResult15failure_messageEv.exit77: ; preds = %bb.bi, %bb.bh
  %i.el = phi ptr [ %i.ek, %bb.bi ], [ @.str.134, %bb.bh ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 267, ptr noundef %i.el)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit77
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.em = load ptr, ptr %19, align 8, !tbaa !142  ; 3 uses
  %.not.i.i78 = icmp eq ptr %i.em, null
  br i1 %.not.i.i78, label %_ZN7testing7MessageD2Ev.exit80, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79: ; preds = %bb.bk
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !97
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(128) %i.em) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit80

_ZN7testing7MessageD2Ev.exit80:                   ; preds = %bb.bk, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i79
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bg
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit83

bb.bm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit77
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bj
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn39 = phi { ptr, i32 } [ %i.es, %bb.bn ], [ %i.er, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.et = load ptr, ptr %19, align 8, !tbaa !142  ; 3 uses
  %.not.i.i81 = icmp eq ptr %i.et, null
  br i1 %.not.i.i81, label %_ZN7testing7MessageD2Ev.exit83, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82: ; preds = %bb.bo
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !97
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(128) %i.et) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit83

_ZN7testing7MessageD2Ev.exit83:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82, %bb.bo, %bb.bl
  %.pn39.pn = phi { ptr, i32 } [ %i.eq, %bb.bl ], [ %.pn39, %bb.bo ], [ %.pn39, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #26
  br label %bb.bx

bb.bp:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal5AllocISt4pairIKiiEEES9_EENS_15AssertionResultEPKcSC_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit80
  %i.ex = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !140 ; 4 uses
  %.not.i.i84 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i84, label %_ZN7testing15AssertionResultD2Ev.exit88, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !76 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85: ; preds = %bb.bq
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !79
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i85
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit88

_ZN7testing15AssertionResultD2Ev.exit88:          ; preds = %bb.bp, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.fe = load i64, ptr %i.ay, align 16, !tbaa !224, !noalias !2162
  %i.ff = load i64, ptr %i.bn, align 16, !tbaa !224, !noalias !2162
  %.not.i.i.i.i89 = icmp eq i64 %i.fe, %i.ff
  br i1 %.not.i.i.i.i89, label %bb.br, label %.loopexit.i.i

bb.br:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit88
  %.sroa.031.037.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !144, !noalias !2162 ; 2 uses
  %.not3538.i.i.i.i = icmp eq ptr %.sroa.031.037.i.i.i.i, null
  br i1 %.not3538.i.i.i.i, label %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.br
  %i.fg = load i64, ptr %i.bj, align 16, !tbaa !130, !noalias !2162 ; 2 uses
  %i.fh = load ptr, ptr %i.bh, align 8, !tbaa !129, !noalias !2162
  br label %bb.bs

.critedge30.loopexit.i.i.i.i:                     ; preds = %bb.bu
  %.sroa.031.0.i.i.i.i = load ptr, ptr %.sroa.031.039.i.i.i.i, align 8, !tbaa !144, !noalias !2162 ; 2 uses
  %.not35.i.i.i.i = icmp eq ptr %.sroa.031.0.i.i.i.i, null
  br i1 %.not35.i.i.i.i, label %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, label %bb.bs, !llvm.loop !33

bb.bs:                                            ; preds = %.critedge30.loopexit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.031.039.i.i.i.i = phi ptr [ %.sroa.031.037.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.031.0.i.i.i.i, %.critedge30.loopexit.i.i.i.i ] ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i.i.i, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !270, !noalias !2162
  %i.fk = urem i64 %i.fj, %i.fg                   ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !268, !noalias !2162 ; 2 uses
  %.not26.not.i.not.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not26.not.i.not.i.i.i, label %.loopexit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i.i.i, i64 8
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !144, !noalias !2162
  %i.fp = load <2 x i32>, ptr %i.fn, align 8, !noalias !2162
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bw, %bb.bt
  %.0.i.i.i.i = phi ptr [ %i.fo, %bb.bt ], [ %i.ft, %bb.bw ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.fr = load <2 x i32>, ptr %i.fq, align 4, !noalias !2162
  %i.fs = icmp eq <2 x i32> %i.fr, %i.fp          ; 2 uses
  %24 = extractelement <2 x i1> %i.fs, i64 0
  %25 = extractelement <2 x i1> %i.fs, i64 1
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %.critedge30.loopexit.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ft = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !144, !noalias !2162 ; 3 uses
  %.not27.i.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not27.i.i.i.i, label %.loopexit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !270, !noalias !2162
  %i.fw = urem i64 %i.fv, %i.fg
  %.not28.i.i.i.i = icmp eq i64 %i.fw, %i.fk
  br i1 %.not28.i.i.i.i, label %bb.bu, label %.loopexit.i.i, !llvm.loop !34

_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i: ; preds = %.critedge30.loopexit.i.i.i.i, %bb.br
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21)
          to label %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.by

.loopexit.i.i:                                    ; preds = %bb.bs, %bb.bw, %bb.bv, %_ZN7testing15AssertionResultD2Ev.exit88
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.187, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.by

_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit: ; preds = %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, %.loopexit.i.i
  %i.fx = load i8, ptr %21, align 8, !tbaa !139, !range !70, !noundef !71
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.ci, label %bb.bz

bb.bx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit83, %bb.bf
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %_ZN7testing7MessageD2Ev.exit83 ], [ %i.eh, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.cp

bb.by:                                            ; preds = %.loopexit.i.i, %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.bz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.ca unwind label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  %i.ga = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !140 ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i92, label %_ZNK7testing15AssertionResult15failure_messageEv.exit93, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit93

_ZNK7testing15AssertionResult15failure_messageEv.exit93: ; preds = %bb.cb, %bb.ca
  %i.gd = phi ptr [ %i.gc, %bb.cb ], [ @.str.134, %bb.ca ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 268, ptr noundef %i.gd)
          to label %bb.cc unwind label %bb.cf

bb.cc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit93
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.ge = load ptr, ptr %22, align 8, !tbaa !142  ; 3 uses
  %.not.i.i94 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i94, label %_ZN7testing7MessageD2Ev.exit96, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95: ; preds = %bb.cd
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !97
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(128) %i.ge) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit96

_ZN7testing7MessageD2Ev.exit96:                   ; preds = %bb.cd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.ci

bb.ce:                                            ; preds = %bb.bz
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit99

bb.cf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit93
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cc
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #26
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.pn43 = phi { ptr, i32 } [ %i.gk, %bb.cg ], [ %i.gj, %bb.cf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.gl = load ptr, ptr %22, align 8, !tbaa !142  ; 3 uses
  %.not.i.i97 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i97, label %_ZN7testing7MessageD2Ev.exit99, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98: ; preds = %bb.ch
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !97
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(128) %i.gl) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit99

_ZN7testing7MessageD2Ev.exit99:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98, %bb.ch, %bb.ce
  %.pn43.pn = phi { ptr, i32 } [ %i.gi, %bb.ce ], [ %.pn43, %bb.ch ], [ %.pn43, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #26
  br label %bb.co

bb.ci:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit, %_ZN7testing7MessageD2Ev.exit96
  %i.gp = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !140 ; 4 uses
  %.not.i.i100 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i100, label %_ZN7testing15AssertionResultD2Ev.exit104, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !76 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101: ; preds = %bb.cj
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !79
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gv) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i101
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit104

_ZN7testing15AssertionResultD2Ev.exit104:         ; preds = %bb.ci, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i102
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.gw = load ptr, ptr %i.bl, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.gw, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i105

.lr.ph.i.i.i.i105:                                ; preds = %_ZN7testing15AssertionResultD2Ev.exit104, %.lr.ph.i.i.i.i105
  %.06.i.i.i.i = phi ptr [ %i.gx, %.lr.ph.i.i.i.i105 ], [ %i.gw, %_ZN7testing15AssertionResultD2Ev.exit104 ] ; 2 uses
  %i.gx = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i106 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i.i106, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i105, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i105, %_ZN7testing15AssertionResultD2Ev.exit104
  %i.gy = load ptr, ptr %i.bh, align 8, !tbaa !129
  %i.gz = load i64, ptr %i.bj, align 16, !tbaa !130
  %i.ha = shl i64 %i.gz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gy, i8 0, i64 %i.ha, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false)
  %i.hb = load ptr, ptr %i.bh, align 8, !tbaa !129 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.bq
  br i1 %i.hc, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.hd = load i64, ptr %i.bj, align 16, !tbaa !130
  %i.he = shl i64 %i.hd, 3
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.hf = load ptr, ptr %i.aw, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i107 = icmp eq ptr %i.hf, null
  br i1 %.not5.i.i.i.i107, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i111, label %.lr.ph.i.i.i.i108

.lr.ph.i.i.i.i108:                                ; preds = %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, %.lr.ph.i.i.i.i108
  %.06.i.i.i.i109 = phi ptr [ %i.hg, %.lr.ph.i.i.i.i108 ], [ %i.hf, %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit ] ; 2 uses
  %i.hg = load ptr, ptr %.06.i.i.i.i109, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i109, i64 noundef 24) #29
  %.not.i.i.i.i110 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i110, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i111, label %.lr.ph.i.i.i.i108, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i111: ; preds = %.lr.ph.i.i.i.i108, %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit
  %i.hh = load ptr, ptr %i.at, align 8, !tbaa !129
  %i.hi = load i64, ptr %i.au, align 16, !tbaa !130
  %i.hj = shl i64 %i.hi, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hh, i8 0, i64 %i.hj, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false)
  %i.hk = load ptr, ptr %i.at, align 8, !tbaa !129 ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.bb
  br i1 %i.hl, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit112, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i111
  %i.hm = load i64, ptr %i.au, align 16, !tbaa !130
  %i.hn = shl i64 %i.hm, 3
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit112

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit112: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i111, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ho = load ptr, ptr %i.k, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i113 = icmp eq ptr %i.ho, null
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_10AssignmentISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8TestBodyEv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ab
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !79
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef 32) #29
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  %i.bv = load i64, ptr %i.k, align 8, !tbaa !111, !noalias !2604 ; 2 uses
  store i64 %i.bv, ptr %12, align 8, !tbaa !111, !alias.scope !2604
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  call void @llvm.experimental.noalias.scope.decl(metadata !2606)
  %i.bw = load i64, ptr %i.ag, align 8, !tbaa !111, !noalias !2607 ; 2 uses
  store i64 %i.bw, ptr %13, align 8, !tbaa !111, !alias.scope !2607
  %i.bx = icmp eq i64 %i.bv, %i.bw
  br i1 %i.bx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal20StatefulTestingEqualES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal20StatefulTestingEqualES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.185, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal20StatefulTestingEqualES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.ag

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal20StatefulTestingEqualES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.by = load i8, ptr %11, align 8, !tbaa !139, !range !70, !noundef !71
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.aq, label %bb.ah

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit41, %bb.q
  %.pn18.pn.pn = phi { ptr, i32 } [ %.pn18.pn, %_ZN7testing7MessageD2Ev.exit41 ], [ %i.ay, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.bp

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.ay

bb.ah:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal20StatefulTestingEqualES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !140 ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i45, label %_ZNK7testing15AssertionResult15failure_messageEv.exit46, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit46

_ZNK7testing15AssertionResult15failure_messageEv.exit46: ; preds = %bb.aj, %bb.ai
  %i.ce = phi ptr [ %i.cd, %bb.aj ], [ @.str.134, %bb.ai ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 345, ptr noundef %i.ce)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit46
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.cf = load ptr, ptr %14, align 8, !tbaa !142  ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i47, label %_ZN7testing7MessageD2Ev.exit49, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48: ; preds = %bb.al
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !97
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(128) %i.cf) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit49

_ZN7testing7MessageD2Ev.exit49:                   ; preds = %bb.al, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.aq

bb.am:                                            ; preds = %bb.ah
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit52

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit46
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #26
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn24 = phi { ptr, i32 } [ %i.cl, %bb.ao ], [ %i.ck, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.cm = load ptr, ptr %14, align 8, !tbaa !142  ; 3 uses
  %.not.i.i50 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i50, label %_ZN7testing7MessageD2Ev.exit52, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51: ; preds = %bb.ap
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !97
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(128) %i.cm) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit52

_ZN7testing7MessageD2Ev.exit52:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51, %bb.ap, %bb.am
  %.pn24.pn = phi { ptr, i32 } [ %i.cj, %bb.am ], [ %.pn24, %bb.ap ], [ %.pn24, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #26
  br label %bb.ay

bb.aq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal20StatefulTestingEqualES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit, %_ZN7testing7MessageD2Ev.exit49
  %i.cq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !140 ; 4 uses
  %.not.i.i53 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i53, label %_ZN7testing15AssertionResultD2Ev.exit57, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !76 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i54: ; preds = %bb.ar
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !79
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i54
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit57

_ZN7testing15AssertionResultD2Ev.exit57:          ; preds = %bb.aq, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !224, !noalias !2608
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !224, !noalias !2608
  %.not.i.i.i.i = icmp eq i64 %i.cy, %i.da
  br i1 %.not.i.i.i.i, label %bb.as, label %.loopexit.i.i

bb.as:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit57
  %.sroa.031.037.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !144, !noalias !2608 ; 2 uses
  %.not3538.i.i.i.i = icmp eq ptr %.sroa.031.037.i.i.i.i, null
  br i1 %.not3538.i.i.i.i, label %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.as
  %i.db = load i64, ptr %i.am, align 8, !tbaa !130, !noalias !2608 ; 2 uses
  %i.dc = load ptr, ptr %i.ak, align 8, !tbaa !129, !noalias !2608
  br label %bb.at

.critedge30.loopexit.i.i.i.i:                     ; preds = %bb.av
  %.sroa.031.0.i.i.i.i = load ptr, ptr %.sroa.031.039.i.i.i.i, align 8, !tbaa !144, !noalias !2608 ; 2 uses
  %.not35.i.i.i.i = icmp eq ptr %.sroa.031.0.i.i.i.i, null
  br i1 %.not35.i.i.i.i, label %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, label %bb.at, !llvm.loop !33

bb.at:                                            ; preds = %.critedge30.loopexit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.031.039.i.i.i.i = phi ptr [ %.sroa.031.037.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.031.0.i.i.i.i, %.critedge30.loopexit.i.i.i.i ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i.i.i, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !270, !noalias !2608
  %i.df = urem i64 %i.de, %i.db                   ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !268, !noalias !2608 ; 2 uses
  %.not26.not.i.not.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not26.not.i.not.i.i.i, label %.loopexit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i.i.i, i64 8
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !144, !noalias !2608
  %i.dk = load <2 x i32>, ptr %i.di, align 8, !noalias !2608
  br label %bb.av

bb.av:                                            ; preds = %bb.ax, %bb.au
  %.0.i.i.i.i = phi ptr [ %i.dj, %bb.au ], [ %i.do, %bb.ax ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.dm = load <2 x i32>, ptr %i.dl, align 4, !noalias !2608
  %i.dn = icmp eq <2 x i32> %i.dm, %i.dk          ; 2 uses
  %19 = extractelement <2 x i1> %i.dn, i64 0
  %20 = extractelement <2 x i1> %i.dn, i64 1
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %.critedge30.loopexit.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.do = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !144, !noalias !2608 ; 3 uses
  %.not27.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not27.i.i.i.i, label %.loopexit.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !270, !noalias !2608
  %i.dr = urem i64 %i.dq, %i.db
  %.not28.i.i.i.i = icmp eq i64 %i.dr, %i.df
  br i1 %.not28.i.i.i.i, label %bb.av, label %.loopexit.i.i, !llvm.loop !34

_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i: ; preds = %.critedge30.loopexit.i.i.i.i, %bb.as
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
          to label %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.az

.loopexit.i.i:                                    ; preds = %bb.at, %bb.ax, %bb.aw, %_ZN7testing15AssertionResultD2Ev.exit57
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.187, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.az

_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit: ; preds = %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, %.loopexit.i.i
  %i.ds = load i8, ptr %16, align 8, !tbaa !139, !range !70, !noundef !71
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.bj, label %bb.ba

bb.ay:                                            ; preds = %_ZN7testing7MessageD2Ev.exit52, %bb.ag
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %_ZN7testing7MessageD2Ev.exit52 ], [ %i.ca, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.bp

bb.az:                                            ; preds = %.loopexit.i.i, %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.ba:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.dv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !140 ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i60, label %_ZNK7testing15AssertionResult15failure_messageEv.exit61, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit61

_ZNK7testing15AssertionResult15failure_messageEv.exit61: ; preds = %bb.bc, %bb.bb
  %i.dy = phi ptr [ %i.dx, %bb.bc ], [ @.str.134, %bb.bb ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 346, ptr noundef %i.dy)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit61
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.dz = load ptr, ptr %17, align 8, !tbaa !142  ; 3 uses
  %.not.i.i62 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i62, label %_ZN7testing7MessageD2Ev.exit64, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63: ; preds = %bb.be
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !97
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(128) %i.dz) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit64

_ZN7testing7MessageD2Ev.exit64:                   ; preds = %bb.be, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %bb.bj

bb.bf:                                            ; preds = %bb.ba
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit67

bb.bg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit61
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #26
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn28 = phi { ptr, i32 } [ %i.ef, %bb.bh ], [ %i.ee, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.eg = load ptr, ptr %17, align 8, !tbaa !142  ; 3 uses
  %.not.i.i65 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i65, label %_ZN7testing7MessageD2Ev.exit67, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66: ; preds = %bb.bi
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !97
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(128) %i.eg) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit67

_ZN7testing7MessageD2Ev.exit67:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66, %bb.bi, %bb.bf
  %.pn28.pn = phi { ptr, i32 } [ %i.ed, %bb.bf ], [ %.pn28, %bb.bi ], [ %.pn28, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #26
  br label %bb.bo

bb.bj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit, %_ZN7testing7MessageD2Ev.exit64
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !140 ; 4 uses
  %.not.i.i68 = icmp eq ptr %i.el, null
  br i1 %.not.i.i68, label %_ZN7testing15AssertionResultD2Ev.exit72, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !76 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i69: ; preds = %bb.bk
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !79
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eq) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i69
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit72

_ZN7testing15AssertionResultD2Ev.exit72:          ; preds = %bb.bj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.er = load ptr, ptr %i.an, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i73

.lr.ph.i.i.i.i73:                                 ; preds = %_ZN7testing15AssertionResultD2Ev.exit72, %.lr.ph.i.i.i.i73
  %.06.i.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i73 ], [ %i.er, %_ZN7testing15AssertionResultD2Ev.exit72 ] ; 2 uses
  %i.es = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i74 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i.i74, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i73, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i73, %_ZN7testing15AssertionResultD2Ev.exit72
  %i.et = load ptr, ptr %i.ak, align 8, !tbaa !129
  %i.eu = load i64, ptr %i.am, align 8, !tbaa !130
  %i.ev = shl i64 %i.eu, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.et, i8 0, i64 %i.ev, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  %i.ew = load ptr, ptr %i.ak, align 8, !tbaa !129 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.al
  br i1 %i.ex, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ey = load i64, ptr %i.am, align 8, !tbaa !130
  %i.ez = shl i64 %i.ey, 3
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.fa = load ptr, ptr %i.p, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i75 = icmp eq ptr %i.fa, null
  br i1 %.not5.i.i.i.i75, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i79, label %.lr.ph.i.i.i.i76

.lr.ph.i.i.i.i76:                                 ; preds = %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, %.lr.ph.i.i.i.i76
  %.06.i.i.i.i77 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i76 ], [ %i.fa, %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit ] ; 2 uses
  %i.fb = load ptr, ptr %.06.i.i.i.i77, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i77, i64 noundef 24) #29
  %.not.i.i.i.i78 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i78, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i79, label %.lr.ph.i.i.i.i76, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i79: ; preds = %.lr.ph.i.i.i.i76, %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit
  %i.fc = load ptr, ptr %i.m, align 8, !tbaa !129
  %i.fd = load i64, ptr %i.o, align 8, !tbaa !130
  %i.fe = shl i64 %i.fd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fc, i8 0, i64 %i.fe, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.ff = load ptr, ptr %i.m, align 8, !tbaa !129 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.n
  br i1 %i.fg, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit80, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i79
  %i.fh = load i64, ptr %i.o, align 8, !tbaa !130
  %i.fi = shl i64 %i.fh, 3
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit80

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit80: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i79, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.fj = load ptr, ptr %i.e, align 8, !tbaa !236 ; 3 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.fj, null
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_14MoveAssignmentISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8TestBodyEv:bb.a
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ae
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !79
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef 32) #29
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !2706)
  call void @llvm.experimental.noalias.scope.decl(metadata !2707)
  %i.cv = load i64, ptr %i.k, align 8, !tbaa !111, !noalias !2708 ; 2 uses
  store i64 %i.cv, ptr %14, align 8, !tbaa !111, !alias.scope !2708
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !2709)
  call void @llvm.experimental.noalias.scope.decl(metadata !2710)
  %i.cw = load i64, ptr %i.au, align 8, !tbaa !111, !noalias !2711 ; 2 uses
  store i64 %i.cw, ptr %15, align 8, !tbaa !111, !alias.scope !2711
  %i.cx = icmp eq i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal20StatefulTestingEqualES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.aj

bb.ah:                                            ; preds = %bb.af
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052618container_internal20StatefulTestingEqualES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.185, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal20StatefulTestingEqualES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.aj

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal20StatefulTestingEqualES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.cy = load i8, ptr %13, align 8, !tbaa !139, !range !70, !noundef !71
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.at, label %bb.ak

bb.ai:                                            ; preds = %_ZN7testing7MessageD2Ev.exit45, %bb.t
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %_ZN7testing7MessageD2Ev.exit45 ], [ %i.by, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.bt

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %bb.bb

bb.ak:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal20StatefulTestingEqualES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.db = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !140 ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i49, label %_ZNK7testing15AssertionResult15failure_messageEv.exit50, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit50

_ZNK7testing15AssertionResult15failure_messageEv.exit50: ; preds = %bb.am, %bb.al
  %i.de = phi ptr [ %i.dd, %bb.am ], [ @.str.134, %bb.al ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 366, ptr noundef %i.de)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit50
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.df = load ptr, ptr %16, align 8, !tbaa !142  ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.df, null
  br i1 %.not.i.i51, label %_ZN7testing7MessageD2Ev.exit53, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52: ; preds = %bb.ao
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !97
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(128) %i.df) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit53

_ZN7testing7MessageD2Ev.exit53:                   ; preds = %bb.ao, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.at

bb.ap:                                            ; preds = %bb.ak
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit56

bb.aq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit50
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.an
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #26
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn26 = phi { ptr, i32 } [ %i.dl, %bb.ar ], [ %i.dk, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.dm = load ptr, ptr %16, align 8, !tbaa !142  ; 3 uses
  %.not.i.i54 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i54, label %_ZN7testing7MessageD2Ev.exit56, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55: ; preds = %bb.as
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !97
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(128) %i.dm) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit56

_ZN7testing7MessageD2Ev.exit56:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55, %bb.as, %bb.ap
  %.pn26.pn = phi { ptr, i32 } [ %i.dj, %bb.ap ], [ %.pn26, %bb.as ], [ %.pn26, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #26
  br label %bb.bb

bb.at:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal20StatefulTestingEqualES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit, %_ZN7testing7MessageD2Ev.exit53
  %i.dq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !140 ; 4 uses
  %.not.i.i57 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i57, label %_ZN7testing15AssertionResultD2Ev.exit61, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !76 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58: ; preds = %bb.au
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !79
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit61

_ZN7testing15AssertionResultD2Ev.exit61:          ; preds = %bb.at, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.dx = load i64, ptr %i.am, align 16, !tbaa !224, !noalias !2712
  %i.dy = load i64, ptr %i.bl, align 16, !tbaa !224, !noalias !2712
  %.not.i.i.i.i = icmp eq i64 %i.dx, %i.dy
  br i1 %.not.i.i.i.i, label %bb.av, label %.loopexit.i.i

bb.av:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit61
  %.sroa.031.037.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !144, !noalias !2712 ; 2 uses
  %.not3538.i.i.i.i = icmp eq ptr %.sroa.031.037.i.i.i.i, null
  br i1 %.not3538.i.i.i.i, label %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.av
  %i.dz = load i64, ptr %i.ba, align 16, !tbaa !130, !noalias !2712 ; 2 uses
  %i.ea = load ptr, ptr %i.ay, align 8, !tbaa !129, !noalias !2712
  br label %bb.aw

.critedge30.loopexit.i.i.i.i:                     ; preds = %bb.ay
  %.sroa.031.0.i.i.i.i = load ptr, ptr %.sroa.031.039.i.i.i.i, align 8, !tbaa !144, !noalias !2712 ; 2 uses
  %.not35.i.i.i.i = icmp eq ptr %.sroa.031.0.i.i.i.i, null
  br i1 %.not35.i.i.i.i, label %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, label %bb.aw, !llvm.loop !33

bb.aw:                                            ; preds = %.critedge30.loopexit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.031.039.i.i.i.i = phi ptr [ %.sroa.031.037.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.031.0.i.i.i.i, %.critedge30.loopexit.i.i.i.i ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i.i.i, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !270, !noalias !2712
  %i.ed = urem i64 %i.ec, %i.dz                   ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !268, !noalias !2712 ; 2 uses
  %.not26.not.i.not.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not26.not.i.not.i.i.i, label %.loopexit.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i.i.i, i64 8
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !144, !noalias !2712
  %i.ei = load <2 x i32>, ptr %i.eg, align 8, !noalias !2712
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %.0.i.i.i.i = phi ptr [ %i.eh, %bb.ax ], [ %i.em, %bb.ba ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.ek = load <2 x i32>, ptr %i.ej, align 4, !noalias !2712
  %i.el = icmp eq <2 x i32> %i.ek, %i.ei          ; 2 uses
  %21 = extractelement <2 x i1> %i.el, i64 0
  %22 = extractelement <2 x i1> %i.el, i64 1
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %.critedge30.loopexit.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.em = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !144, !noalias !2712 ; 3 uses
  %.not27.i.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not27.i.i.i.i, label %.loopexit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !270, !noalias !2712
  %i.ep = urem i64 %i.eo, %i.dz
  %.not28.i.i.i.i = icmp eq i64 %i.ep, %i.ed
  br i1 %.not28.i.i.i.i, label %bb.ay, label %.loopexit.i.i, !llvm.loop !34

_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i: ; preds = %.critedge30.loopexit.i.i.i.i, %bb.av
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18)
          to label %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.bc

.loopexit.i.i:                                    ; preds = %bb.aw, %bb.ba, %bb.az, %_ZN7testing15AssertionResultD2Ev.exit61
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.187, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(80) %7)
          to label %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.bc

_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit: ; preds = %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, %.loopexit.i.i
  %i.eq = load i8, ptr %18, align 8, !tbaa !139, !range !70, !noundef !71
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.bm, label %bb.bd

bb.bb:                                            ; preds = %_ZN7testing7MessageD2Ev.exit56, %bb.aj
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %_ZN7testing7MessageD2Ev.exit56 ], [ %i.da, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bt

bb.bc:                                            ; preds = %.loopexit.i.i, %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bd:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.be unwind label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.et = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !140 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i64, label %_ZNK7testing15AssertionResult15failure_messageEv.exit65, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit65

_ZNK7testing15AssertionResult15failure_messageEv.exit65: ; preds = %bb.bf, %bb.be
  %i.ew = phi ptr [ %i.ev, %bb.bf ], [ @.str.134, %bb.be ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 367, ptr noundef %i.ew)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit65
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.ex = load ptr, ptr %19, align 8, !tbaa !142  ; 3 uses
  %.not.i.i66 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i66, label %_ZN7testing7MessageD2Ev.exit68, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67: ; preds = %bb.bh
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !97
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(128) %i.ex) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit68

_ZN7testing7MessageD2Ev.exit68:                   ; preds = %bb.bh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bd
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit71

bb.bj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit65
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bg
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn30 = phi { ptr, i32 } [ %i.fd, %bb.bk ], [ %i.fc, %bb.bj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.fe = load ptr, ptr %19, align 8, !tbaa !142  ; 3 uses
  %.not.i.i69 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i69, label %_ZN7testing7MessageD2Ev.exit71, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70: ; preds = %bb.bl
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !97
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(128) %i.fe) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit71

_ZN7testing7MessageD2Ev.exit71:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70, %bb.bl, %bb.bi
  %.pn30.pn = phi { ptr, i32 } [ %i.fb, %bb.bi ], [ %.pn30, %bb.bl ], [ %.pn30, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #26
  br label %bb.bs

bb.bm:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit, %_ZN7testing7MessageD2Ev.exit68
  %i.fi = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !140 ; 4 uses
  %.not.i.i72 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i72, label %_ZN7testing15AssertionResultD2Ev.exit76, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !76 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i73: ; preds = %bb.bn
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !79
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i73
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit76

_ZN7testing15AssertionResultD2Ev.exit76:          ; preds = %bb.bm, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.fp = load ptr, ptr %i.bb, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i77

.lr.ph.i.i.i.i77:                                 ; preds = %_ZN7testing15AssertionResultD2Ev.exit76, %.lr.ph.i.i.i.i77
  %.06.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i77 ], [ %i.fp, %_ZN7testing15AssertionResultD2Ev.exit76 ] ; 2 uses
  %i.fq = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i78 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i78, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i77, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i77, %_ZN7testing15AssertionResultD2Ev.exit76
  %i.fr = load ptr, ptr %i.ay, align 8, !tbaa !129
  %i.fs = load i64, ptr %i.ba, align 16, !tbaa !130
  %i.ft = shl i64 %i.fs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fr, i8 0, i64 %i.ft, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  %i.fu = load ptr, ptr %i.ay, align 8, !tbaa !129 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.az
  br i1 %i.fv, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.fw = load i64, ptr %i.ba, align 16, !tbaa !130
  %i.fx = shl i64 %i.fw, 3
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.fy = load ptr, ptr %i.ak, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i79 = icmp eq ptr %i.fy, null
  br i1 %.not5.i.i.i.i79, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i83, label %.lr.ph.i.i.i.i80

.lr.ph.i.i.i.i80:                                 ; preds = %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, %.lr.ph.i.i.i.i80
  %.06.i.i.i.i81 = phi ptr [ %i.fz, %.lr.ph.i.i.i.i80 ], [ %i.fy, %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit ] ; 2 uses
  %i.fz = load ptr, ptr %.06.i.i.i.i81, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i81, i64 noundef 24) #29
  %.not.i.i.i.i82 = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i82, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i83, label %.lr.ph.i.i.i.i80, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i83: ; preds = %.lr.ph.i.i.i.i80, %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit
  %i.ga = load ptr, ptr %i.ah, align 8, !tbaa !129
  %i.gb = load i64, ptr %i.ai, align 16, !tbaa !130
  %i.gc = shl i64 %i.gb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ga, i8 0, i64 %i.gc, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  %i.gd = load ptr, ptr %i.ah, align 8, !tbaa !129 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.ap
  br i1 %i.ge, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit84, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i83
  %i.gf = load i64, ptr %i.ai, align 16, !tbaa !130
  %i.gg = shl i64 %i.gf, 3
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit84

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit84: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i83, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.gh = load ptr, ptr %i.p, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i85 = icmp eq ptr %i.gh, null
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_28AssignmentOverwritesExistingISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8TestBodyEv:bb.a
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc9.i unwind label %bb.j

.noexc9.i:                                        ; preds = %.noexc7.i.i.i
  unreachable

_ZNSt8__detail16_Hashtable_allocIN4absl12lts_2026052618container_internal5AllocINS_10_Hash_nodeISt4pairIKiiELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %bb.h
  %i.y = shl nuw nsw i64 %i.s, 3                  ; 2 uses
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #31
          to label %.noexc10.i unwind label %bb.j ; 2 uses

.noexc10.i:                                       ; preds = %_ZNSt8__detail16_Hashtable_allocIN4absl12lts_2026052618container_internal5AllocINS_10_Hash_nodeISt4pairIKiiELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.z, i8 0, i64 %i.y, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i: ; preds = %.noexc10.i, %bb.g
  %.0.i.i = phi ptr [ %i.n, %bb.g ], [ %i.z, %.noexc10.i ]
  store ptr %.0.i.i, ptr %i.m, align 8, !tbaa !129
  store i64 %i.s, ptr %i.o, align 8, !tbaa !130
  br label %.noexc

bb.j:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocIN4absl12lts_2026052618container_internal5AllocINS_10_Hash_nodeISt4pairIKiiELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i, %.noexc7.i.i.i, %.noexc.i.i.i56, %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #26
  br label %.body

.noexc:                                           ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.l, ptr %2, align 8, !tbaa !239
  %i.ab = invoke { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_insert_uniqueIRS1_RKS2_NS8_10_AllocNodeINS6_INS8_10_Hash_nodeIS2_Lb1EEEEEEEEES0_INS8_14_Node_iteratorIS2_Lb0ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.i.i unwind label %bb.k ; 0 uses

.noexc.i.i.i:                                     ; preds = %.noexc
  %i.ac = invoke { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_insert_uniqueIRS1_RKS2_NS8_10_AllocNodeINS6_INS8_10_Hash_nodeIS2_Lb1EEEEEEEEES0_INS8_14_Node_iteratorIS2_Lb0ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.i.i.1 unwind label %bb.k ; 0 uses

.noexc.i.i.i.1:                                   ; preds = %.noexc.i.i.i
  %i.ad = invoke { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_insert_uniqueIRS1_RKS2_NS8_10_AllocNodeINS6_INS8_10_Hash_nodeIS2_Lb1EEEEEEEEES0_INS8_14_Node_iteratorIS2_Lb0ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.f, ptr noundef nonnull align 4 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc.i.i.i.2 unwind label %bb.k ; 0 uses

.noexc.i.i.i.2:                                   ; preds = %.noexc.i.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.ae = invoke i64 @_ZN4absl12lts_2026052618container_internal15UniqueGeneratorISt4pairIKiiELm64EvEclEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.l unwind label %bb.aa

bb.k:                                             ; preds = %.noexc.i.i.i.1, %.noexc.i.i.i, %.noexc
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %4) #26
  br label %.body

bb.l:                                             ; preds = %.noexc.i.i.i.2
  store i64 %i.ae, ptr %7, align 8
  %i.ag = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78 ; 2 uses
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78
  %i.ai = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78 ; 2 uses
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78
  store i64 %i.ag, ptr %6, align 8, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ai, ptr %i.ak, align 8, !tbaa !111
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i64 0, ptr %i.al, align 8, !tbaa !113
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 4 uses
  store ptr %i.an, ptr %i.am, align 8, !tbaa !129
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  store i64 1, ptr %i.ao, align 8, !tbaa !130
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.aq, align 8, !tbaa !131
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.as = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 noundef 0)
          to label %bb.m unwind label %bb.r       ; 6 uses

bb.m:                                             ; preds = %bb.l
  %i.at = load i64, ptr %i.ao, align 8, !tbaa !130
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %bb.n, label %.noexc33

bb.n:                                             ; preds = %bb.m
  %i.av = icmp eq i64 %i.as, 1
  br i1 %i.av, label %bb.o, label %bb.p, !prof !222

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %i.an, align 8, !tbaa !223
  br label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i61

bb.p:                                             ; preds = %bb.n
  %i.aw = icmp ugt i64 %i.as, 1152921504606846975
  br i1 %i.aw, label %bb.q, label %_ZNSt8__detail16_Hashtable_allocIN4absl12lts_2026052618container_internal5AllocINS_10_Hash_nodeISt4pairIKiiELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i59, !prof !222

bb.q:                                             ; preds = %bb.p
  %i.ax = icmp ugt i64 %i.as, 2305843009213693951
  br i1 %i.ax, label %.noexc.i.i.i65, label %.noexc7.i.i.i63

.noexc.i.i.i65:                                   ; preds = %bb.q
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc.i66 unwind label %bb.r

.noexc.i66:                                       ; preds = %.noexc.i.i.i65
  unreachable

.noexc7.i.i.i63:                                  ; preds = %bb.q
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc9.i64 unwind label %bb.r

.noexc9.i64:                                      ; preds = %.noexc7.i.i.i63
  unreachable

_ZNSt8__detail16_Hashtable_allocIN4absl12lts_2026052618container_internal5AllocINS_10_Hash_nodeISt4pairIKiiELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i59: ; preds = %bb.p
  %i.ay = shl nuw nsw i64 %i.as, 3                ; 2 uses
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #31
          to label %.noexc10.i60 unwind label %bb.r ; 2 uses

.noexc10.i60:                                     ; preds = %_ZNSt8__detail16_Hashtable_allocIN4absl12lts_2026052618container_internal5AllocINS_10_Hash_nodeISt4pairIKiiELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i59
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.az, i8 0, i64 %i.ay, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i61

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i61: ; preds = %.noexc10.i60, %bb.o
  %.0.i.i62 = phi ptr [ %i.an, %bb.o ], [ %i.az, %.noexc10.i60 ]
  store ptr %.0.i.i62, ptr %i.am, align 8, !tbaa !129
  store i64 %i.as, ptr %i.ao, align 8, !tbaa !130
  br label %.noexc33

bb.r:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocIN4absl12lts_2026052618container_internal5AllocINS_10_Hash_nodeISt4pairIKiiELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i59, %.noexc7.i.i.i63, %.noexc.i.i.i65, %bb.l
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %6) #26
  br label %.body34

.noexc33:                                         ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i61, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.al, ptr %1, align 8, !tbaa !239
  %i.bb = invoke { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_insert_uniqueIRS1_RKS2_NS8_10_AllocNodeINS6_INS8_10_Hash_nodeIS2_Lb1EEEEEEEEES0_INS8_14_Node_iteratorIS2_Lb0ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc.i.i.i31 unwind label %bb.s ; 0 uses

.noexc.i.i.i31:                                   ; preds = %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  invoke void @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSH_EEvOT_(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEaSERKSA_.exit unwind label %bb.ab

bb.s:                                             ; preds = %.noexc33
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %6) #26
  br label %.body34

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEaSERKSA_.exit: ; preds = %.noexc.i.i.i31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !224, !noalias !2854
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !224, !noalias !2854
  %.not.i.i.i.i = icmp eq i64 %i.be, %i.bg
  br i1 %.not.i.i.i.i, label %bb.t, label %.loopexit.i.i

bb.t:                                             ; preds = %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEaSERKSA_.exit
  %.sroa.031.037.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !144, !noalias !2854 ; 2 uses
  %.not3538.i.i.i.i = icmp eq ptr %.sroa.031.037.i.i.i.i, null
  br i1 %.not3538.i.i.i.i, label %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t
  %i.bh = load i64, ptr %i.ao, align 8, !tbaa !130, !noalias !2854 ; 2 uses
  %i.bi = load ptr, ptr %i.am, align 8, !tbaa !129, !noalias !2854
  br label %bb.u

.critedge30.loopexit.i.i.i.i:                     ; preds = %bb.w
  %.sroa.031.0.i.i.i.i = load ptr, ptr %.sroa.031.039.i.i.i.i, align 8, !tbaa !144, !noalias !2854 ; 2 uses
  %.not35.i.i.i.i = icmp eq ptr %.sroa.031.0.i.i.i.i, null
  br i1 %.not35.i.i.i.i, label %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, label %bb.u, !llvm.loop !33

bb.u:                                             ; preds = %.critedge30.loopexit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.031.039.i.i.i.i = phi ptr [ %.sroa.031.037.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.031.0.i.i.i.i, %.critedge30.loopexit.i.i.i.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i.i.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !270, !noalias !2854
  %i.bl = urem i64 %i.bk, %i.bh                   ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !268, !noalias !2854 ; 2 uses
  %.not26.not.i.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not26.not.i.not.i.i.i, label %.loopexit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i.i.i, i64 8
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !144, !noalias !2854
  %i.bq = load <2 x i32>, ptr %i.bo, align 8, !noalias !2854
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v
  %.0.i.i.i.i = phi ptr [ %i.bp, %bb.v ], [ %i.bu, %bb.y ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.bs = load <2 x i32>, ptr %i.br, align 4, !noalias !2854
  %i.bt = icmp eq <2 x i32> %i.bs, %i.bq          ; 2 uses
  %11 = extractelement <2 x i1> %i.bt, i64 0
  %12 = extractelement <2 x i1> %i.bt, i64 1
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %.critedge30.loopexit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !144, !noalias !2854 ; 3 uses
  %.not27.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not27.i.i.i.i, label %.loopexit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !270, !noalias !2854
  %i.bx = urem i64 %i.bw, %i.bh
  %.not28.i.i.i.i = icmp eq i64 %i.bx, %i.bl
  br i1 %.not28.i.i.i.i, label %bb.w, label %.loopexit.i.i, !llvm.loop !34

_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i: ; preds = %.critedge30.loopexit.i.i.i.i, %bb.t
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.ac

.loopexit.i.i:                                    ; preds = %bb.u, %bb.y, %bb.x, %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEaSERKSA_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.187, ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.ac

_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit: ; preds = %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, %.loopexit.i.i
  %i.by = load i8, ptr %8, align 8, !tbaa !139, !range !70, !noundef !71
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.am, label %bb.ad

bb.z:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.j, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.z ], [ %i.aa, %bb.j ], [ %i.af, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.au

bb.aa:                                            ; preds = %.noexc.i.i.i.2
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.body34:                                          ; preds = %bb.s, %bb.r, %bb.aa
  %.pn18.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.aa ], [ %i.ba, %bb.r ], [ %i.bc, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.at

bb.ab:                                            ; preds = %.noexc.i.i.i31
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ac:                                            ; preds = %.loopexit.i.i, %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ad:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.af, %bb.ae
  %i.ch = phi ptr [ %i.cg, %bb.af ], [ @.str.134, %bb.ae ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 385, ptr noundef %i.ch)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.ci = load ptr, ptr %9, align 8, !tbaa !142   ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i40, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ah
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !97
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(128) %i.ci) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.am

bb.ai:                                            ; preds = %bb.ad
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit43

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn22 = phi { ptr, i32 } [ %i.co, %bb.ak ], [ %i.cn, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.cp = load ptr, ptr %9, align 8, !tbaa !142   ; 3 uses
  %.not.i.i41 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i41, label %_ZN7testing7MessageD2Ev.exit43, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42: ; preds = %bb.al
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !97
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %i.cp) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit43

_ZN7testing7MessageD2Ev.exit43:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42, %bb.al, %bb.ai
  %.pn22.pn = phi { ptr, i32 } [ %i.cm, %bb.ai ], [ %.pn22, %bb.al ], [ %.pn22, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.ar

bb.am:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !140 ; 4 uses
  %.not.i.i44 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i44, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !76 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.an
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !79
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.am, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.da = load ptr, ptr %i.ap, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i45

.lr.ph.i.i.i.i45:                                 ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %.lr.ph.i.i.i.i45
  %.06.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i45 ], [ %i.da, %_ZN7testing15AssertionResultD2Ev.exit ] ; 2 uses
  %i.db = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i46 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i46, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i45, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i45, %_ZN7testing15AssertionResultD2Ev.exit
  %i.dc = load ptr, ptr %i.am, align 8, !tbaa !129
  %i.dd = load i64, ptr %i.ao, align 8, !tbaa !130
  %i.de = shl i64 %i.dd, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dc, i8 0, i64 %i.de, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.df = load ptr, ptr %i.am, align 8, !tbaa !129 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.an
  br i1 %i.dg, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.dh = load i64, ptr %i.ao, align 8, !tbaa !130
  %i.di = shl i64 %i.dh, 3
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.dj = load ptr, ptr %i.p, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i47 = icmp eq ptr %i.dj, null
  br i1 %.not5.i.i.i.i47, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i51, label %.lr.ph.i.i.i.i48

.lr.ph.i.i.i.i48:                                 ; preds = %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, %.lr.ph.i.i.i.i48
  %.06.i.i.i.i49 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i48 ], [ %i.dj, %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit ] ; 2 uses
  %i.dk = load ptr, ptr %.06.i.i.i.i49, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i49, i64 noundef 24) #29
  %.not.i.i.i.i50 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i50, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i51, label %.lr.ph.i.i.i.i48, !llvm.loop !5

end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2026052618container_internal28gtest_suite_ConstructorTest_32MoveAssignmentOverwritesExistingISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8TestBodyEv:bb.a
bb.m:                                             ; preds = %bb.l
  store i64 %i.as, ptr %9, align 8
  %i.at = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78 ; 2 uses
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78
  %i.av = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78 ; 2 uses
  %i.aw = add i64 %i.av, 1
  store i64 %i.aw, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78
  store i64 %i.at, ptr %8, align 16, !tbaa !109
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !111
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store i64 0, ptr %i.ay, align 16, !tbaa !113
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 7 uses
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !129
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 7 uses
  store i64 1, ptr %i.bb, align 16, !tbaa !130
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bd, align 8, !tbaa !131
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bf = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 noundef 0)
          to label %bb.n unwind label %bb.s       ; 6 uses

bb.n:                                             ; preds = %bb.m
  %i.bg = load i64, ptr %i.bb, align 16, !tbaa !130
  %i.bh = icmp ugt i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.o, label %.noexc36

bb.o:                                             ; preds = %bb.n
  %i.bi = icmp eq i64 %i.bf, 1
  br i1 %i.bi, label %bb.p, label %bb.q, !prof !222

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.ba, align 8, !tbaa !223
  br label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i70

bb.q:                                             ; preds = %bb.o
  %i.bj = icmp ugt i64 %i.bf, 1152921504606846975
  br i1 %i.bj, label %bb.r, label %_ZNSt8__detail16_Hashtable_allocIN4absl12lts_2026052618container_internal5AllocINS_10_Hash_nodeISt4pairIKiiELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i68, !prof !222

bb.r:                                             ; preds = %bb.q
  %i.bk = icmp ugt i64 %i.bf, 2305843009213693951
  br i1 %i.bk, label %.noexc.i.i.i74, label %.noexc7.i.i.i72

.noexc.i.i.i74:                                   ; preds = %bb.r
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc.i75 unwind label %bb.s

.noexc.i75:                                       ; preds = %.noexc.i.i.i74
  unreachable

.noexc7.i.i.i72:                                  ; preds = %bb.r
  invoke void @_ZSt17__throw_bad_allocv() #28
          to label %.noexc9.i73 unwind label %bb.s

.noexc9.i73:                                      ; preds = %.noexc7.i.i.i72
  unreachable

_ZNSt8__detail16_Hashtable_allocIN4absl12lts_2026052618container_internal5AllocINS_10_Hash_nodeISt4pairIKiiELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i68: ; preds = %bb.q
  %i.bl = shl nuw nsw i64 %i.bf, 3                ; 2 uses
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #31
          to label %.noexc10.i69 unwind label %bb.s ; 2 uses

.noexc10.i69:                                     ; preds = %_ZNSt8__detail16_Hashtable_allocIN4absl12lts_2026052618container_internal5AllocINS_10_Hash_nodeISt4pairIKiiELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i68
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bm, i8 0, i64 %i.bl, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i70

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i70: ; preds = %.noexc10.i69, %bb.p
  %.0.i.i71 = phi ptr [ %i.ba, %bb.p ], [ %i.bm, %.noexc10.i69 ]
  store ptr %.0.i.i71, ptr %i.az, align 8, !tbaa !129
  store i64 %i.bf, ptr %i.bb, align 16, !tbaa !130
  br label %.noexc36

bb.s:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocIN4absl12lts_2026052618container_internal5AllocINS_10_Hash_nodeISt4pairIKiiELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i68, %.noexc7.i.i.i72, %.noexc.i.i.i74, %bb.m
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #26
  br label %.body37

.noexc36:                                         ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i70, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.ay, ptr %1, align 8, !tbaa !239
  %i.bo = invoke { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_insert_uniqueIRS1_RKS2_NS8_10_AllocNodeINS6_INS8_10_Hash_nodeIS2_Lb1EEEEEEEEES0_INS8_14_Node_iteratorIS2_Lb0ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc.i.i.i34 unwind label %bb.t ; 0 uses

.noexc.i.i.i34:                                   ; preds = %.noexc36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.bp = load ptr, ptr %i.bc, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.bp, null
  br i1 %.not5.i.i, label %_ZNSt8__detail16_Hashtable_allocIN4absl12lts_2026052618container_internal5AllocINS_10_Hash_nodeISt4pairIKiiELb1EEEEEE19_M_deallocate_nodesEPS9_.exit.i, label %.lr.ph.i.i

bb.t:                                             ; preds = %.noexc36
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #26
  br label %.body37

.lr.ph.i.i:                                       ; preds = %.noexc.i.i.i34, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %i.bp, %.noexc.i.i.i34 ] ; 2 uses
  %i.br = load ptr, ptr %.06.i.i, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 24) #29
  %.not.i.i79 = icmp eq ptr %i.br, null
  br i1 %.not.i.i79, label %_ZNSt8__detail16_Hashtable_allocIN4absl12lts_2026052618container_internal5AllocINS_10_Hash_nodeISt4pairIKiiELb1EEEEEE19_M_deallocate_nodesEPS9_.exit.i, label %.lr.ph.i.i, !llvm.loop !5

_ZNSt8__detail16_Hashtable_allocIN4absl12lts_2026052618container_internal5AllocINS_10_Hash_nodeISt4pairIKiiELb1EEEEEE19_M_deallocate_nodesEPS9_.exit.i: ; preds = %.lr.ph.i.i, %.noexc.i.i.i34
  %i.bs = load ptr, ptr %i.az, align 8, !tbaa !129 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ba
  br i1 %i.bt, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocIN4absl12lts_2026052618container_internal5AllocINS_10_Hash_nodeISt4pairIKiiELb1EEEEEE19_M_deallocate_nodesEPS9_.exit.i
  %i.bu = load i64, ptr %i.bb, align 16, !tbaa !130
  %i.bv = shl i64 %i.bu, 3
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #29
  br label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i: ; preds = %bb.u, %_ZNSt8__detail16_Hashtable_allocIN4absl12lts_2026052618container_internal5AllocINS_10_Hash_nodeISt4pairIKiiELb1EEEEEE19_M_deallocate_nodesEPS9_.exit.i
  %i.bw = load <2 x i64>, ptr %7, align 16, !tbaa !78
  store i64 0, ptr %7, align 16, !tbaa !109
  store <2 x i64> %i.bw, ptr %8, align 16, !tbaa !78
  store i64 0, ptr %i.ae, align 8, !tbaa !111
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !336
  %i.bx = load ptr, ptr %i.ai, align 8, !tbaa !129 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.aq
  br i1 %i.by, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i
  %i.bz = load ptr, ptr %i.aq, align 8, !tbaa !223
  store ptr %i.bz, ptr %i.ba, align 8, !tbaa !223
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i
  %i.ca = phi ptr [ %i.ba, %bb.v ], [ %i.bx, %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit.i ] ; 3 uses
  store ptr %i.ca, ptr %i.az, align 8, !tbaa !129
  %i.cb = load i64, ptr %i.aj, align 16, !tbaa !130 ; 4 uses
  store i64 %i.cb, ptr %i.bb, align 16, !tbaa !130
  %i.cc = load ptr, ptr %i.al, align 8, !tbaa !143 ; 3 uses
  store ptr %i.cc, ptr %i.bc, align 8, !tbaa !143
  %i.cd = load i64, ptr %i.am, align 16, !tbaa !224 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 %i.cd, ptr %i.ce, align 16, !tbaa !224
  %i.cf = load i64, ptr %i.ag, align 16
  store i64 %i.cf, ptr %i.ay, align 16
  %.not.i13.i = icmp eq ptr %i.cc, null
  br i1 %.not.i13.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !270
  %i.ci = urem i64 %i.ch, %i.cb
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ci
  store ptr %i.bc, ptr %i.cj, align 8, !tbaa !268
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i64 0, ptr %i.ck, align 16, !tbaa !272
  store i64 1, ptr %i.aj, align 16, !tbaa !130
  store ptr null, ptr %i.aq, align 8, !tbaa !223
  store ptr %i.aq, ptr %i.ai, align 8, !tbaa !129
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.cl = load i64, ptr %i.an, align 16, !tbaa !224, !noalias !2902
  %.not.i.i.i.i = icmp eq i64 %i.cl, %i.cd
  br i1 %.not.i.i.i.i, label %bb.z, label %.loopexit.i.i

bb.z:                                             ; preds = %bb.y
  %.sroa.031.037.i.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !144, !noalias !2902 ; 2 uses
  %.not3538.i.i.i.i = icmp eq ptr %.sroa.031.037.i.i.i.i, null
  br i1 %.not3538.i.i.i.i, label %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, label %.lr.ph.i.i.i.i

.critedge30.loopexit.i.i.i.i:                     ; preds = %bb.ab
  %.sroa.031.0.i.i.i.i = load ptr, ptr %.sroa.031.039.i.i.i.i, align 8, !tbaa !144, !noalias !2902 ; 2 uses
  %.not35.i.i.i.i = icmp eq ptr %.sroa.031.0.i.i.i.i, null
  br i1 %.not35.i.i.i.i, label %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !33

.lr.ph.i.i.i.i:                                   ; preds = %bb.z, %.critedge30.loopexit.i.i.i.i
  %.sroa.031.039.i.i.i.i = phi ptr [ %.sroa.031.0.i.i.i.i, %.critedge30.loopexit.i.i.i.i ], [ %.sroa.031.037.i.i.i.i, %bb.z ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i.i.i, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !270, !noalias !2902
  %i.co = urem i64 %i.cn, %i.cb                   ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !268, !noalias !2902 ; 2 uses
  %.not26.not.i.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not26.not.i.not.i.i.i, label %.loopexit.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.031.039.i.i.i.i, i64 8
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !144, !noalias !2902
  %i.ct = load <2 x i32>, ptr %i.cr, align 8, !noalias !2902
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %.0.i.i.i.i = phi ptr [ %i.cs, %bb.aa ], [ %i.cx, %bb.ad ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.cv = load <2 x i32>, ptr %i.cu, align 4, !noalias !2902
  %i.cw = icmp eq <2 x i32> %i.cv, %i.ct          ; 2 uses
  %13 = extractelement <2 x i1> %i.cw, i64 0
  %14 = extractelement <2 x i1> %i.cw, i64 1
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %.critedge30.loopexit.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !144, !noalias !2902 ; 3 uses
  %.not27.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not27.i.i.i.i, label %.loopexit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !270, !noalias !2902
  %i.da = urem i64 %i.cz, %i.cb
  %.not28.i.i.i.i = icmp eq i64 %i.da, %i.co
  br i1 %.not28.i.i.i.i, label %bb.ab, label %.loopexit.i.i, !llvm.loop !34

_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i: ; preds = %.critedge30.loopexit.i.i.i.i, %bb.z
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
          to label %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.ah

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %bb.ad, %bb.ac, %bb.y
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS5_20StatefulTestingEqualENS5_5AllocISt4pairIKiiEEEESD_EENS_15AssertionResultEPKcSG_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.187, ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(80) %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit unwind label %bb.ah

_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit: ; preds = %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i, %.loopexit.i.i
  %i.db = load i8, ptr %10, align 8, !tbaa !139, !range !70, !noundef !71
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.ar, label %bb.ai

bb.ae:                                            ; preds = %bb.c, %bb.b, %bb.a
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.j, %bb.ae
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dd, %bb.ae ], [ %i.aa, %bb.j ], [ %i.ar, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ba

bb.af:                                            ; preds = %.noexc.i.i.i.2
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ag:                                            ; preds = %bb.l
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body37

.body37:                                          ; preds = %bb.t, %bb.s, %bb.ag
  %.pn19.pn.pn = phi { ptr, i32 } [ %i.df, %bb.ag ], [ %i.bn, %bb.s ], [ %i.bq, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ay

bb.ah:                                            ; preds = %.loopexit.i.i, %_ZSteqIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEEbRKSt13unordered_mapIT_T0_T1_T2_T3_ESI_.exit.i.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ak, %bb.aj
  %i.dk = phi ptr [ %i.dj, %bb.ak ], [ @.str.134, %bb.aj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 1, ptr noundef nonnull @.str, i32 noundef 395, ptr noundef %i.dk)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.dl = load ptr, ptr %11, align 8, !tbaa !142  ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i43, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.am
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !97
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(128) %i.dl) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.am, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %bb.ar

bb.an:                                            ; preds = %bb.ai
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit46

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn23 = phi { ptr, i32 } [ %i.dr, %bb.ap ], [ %i.dq, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.ds = load ptr, ptr %11, align 8, !tbaa !142  ; 3 uses
  %.not.i.i44 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i44, label %_ZN7testing7MessageD2Ev.exit46, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45: ; preds = %bb.aq
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !97
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(128) %i.ds) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit46

_ZN7testing7MessageD2Ev.exit46:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45, %bb.aq, %bb.an
  %.pn23.pn = phi { ptr, i32 } [ %i.dp, %bb.an ], [ %.pn23, %bb.aq ], [ %.pn23, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #26
  br label %bb.ax

bb.ar:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS6_20StatefulTestingEqualENS6_5AllocISt4pairIKiiEEEESE_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSO_RKSG_RKSH_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !140 ; 4 uses
  %.not.i.i47 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i47, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !76 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.as
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !79
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.ed = load ptr, ptr %i.bc, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i48

.lr.ph.i.i.i.i48:                                 ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %.lr.ph.i.i.i.i48
  %.06.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i48 ], [ %i.ed, %_ZN7testing15AssertionResultD2Ev.exit ] ; 2 uses
  %i.ee = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i49 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i49, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i48, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i48, %_ZN7testing15AssertionResultD2Ev.exit
  %i.ef = load ptr, ptr %i.az, align 8, !tbaa !129
  %i.eg = load i64, ptr %i.bb, align 16, !tbaa !130
  %i.eh = shl i64 %i.eg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ef, i8 0, i64 %i.eh, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  %i.ei = load ptr, ptr %i.az, align 8, !tbaa !129 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.ba
  br i1 %i.ej, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.ek = load i64, ptr %i.bb, align 16, !tbaa !130
  %i.el = shl i64 %i.ek, 3
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.em = load ptr, ptr %i.al, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i50 = icmp eq ptr %i.em, null
  br i1 %.not5.i.i.i.i50, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i54, label %.lr.ph.i.i.i.i51

.lr.ph.i.i.i.i51:                                 ; preds = %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, %.lr.ph.i.i.i.i51
  %.06.i.i.i.i52 = phi ptr [ %i.en, %.lr.ph.i.i.i.i51 ], [ %i.em, %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit ] ; 2 uses
  %i.en = load ptr, ptr %.06.i.i.i.i52, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i52, i64 noundef 24) #29
  %.not.i.i.i.i53 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i53, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i54, label %.lr.ph.i.i.i.i51, !llvm.loop !5

end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_6InsertISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8TestBodyEv:bb.a
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"struct.std::pair.59", align 4    ; 6 uses
  %13 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = call i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  store i64 %i.b, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.c = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78
  store i64 %i.c, ptr %3, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78 ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78
  store i64 %i.f, ptr %i.e, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i64 1, ptr %i.k, align 8, !tbaa !130
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !131
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = invoke { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS2_EEES0_INS8_14_Node_iteratorIS2_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract1 = extractvalue { ptr, i8 } %i.o, 0
  %.fca.1.extract2 = extractvalue { ptr, i8 } %i.o, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i8 %.fca.1.extract2, ptr %4, align 8, !tbaa !139
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !225
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.q, align 8, !tbaa !227
  %i.r = icmp eq i8 %.fca.1.extract2, 1
  br i1 %i.r, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.148)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %8, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !80
  store i64 %i.v, ptr %7, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.t, ptr %i.w, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 51, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %7)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  %i.x = load ptr, ptr %8, align 8, !tbaa !76     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !79
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ac = load ptr, ptr %5, align 8, !tbaa !142   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.n, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(128) %i.ac) #26, !inline_history !4
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit45

bb.j:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.k:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ai, %bb.k ] ; 2 uses
  %i.ak = load ptr, ptr %8, align 8, !tbaa !76    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.m
  %i.an = load i64, ptr %i.al, align 8, !tbaa !79
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %.pn, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ap = load ptr, ptr %5, align 8, !tbaa !142   ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i43, label %_ZN7testing7MessageD2Ev.exit45, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !97
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit45

_ZN7testing7MessageD2Ev.exit45:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.bk

bb.n:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.pr = load ptr, ptr %i.p, align 8, !tbaa !140  ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr %.pr, align 8, !tbaa !76  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !79
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #29
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %bb.b, %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %.fca.0.extract1, i64 8 ; 2 uses
  %i.az = load <2 x i32>, ptr %1, align 8, !noalias !3633
  %i.ba = load <2 x i32>, ptr %i.ay, align 4, !noalias !3633
  %i.bb = icmp eq <2 x i32> %i.az, %i.ba          ; 2 uses
  %21 = extractelement <2 x i1> %i.bb, i64 0
  %22 = extractelement <2 x i1> %i.bb, i64 1
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

bb.q:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.218, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.ay)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.p, %bb.q
  %i.bc = load i8, ptr %9, align 8, !tbaa !139, !range !70, !noundef !71
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.ab, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !140 ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i47, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.u, %bb.t
  %i.bi = phi ptr [ %i.bh, %bb.u ], [ @.str.134, %bb.t ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 52, ptr noundef %i.bi)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.bj = load ptr, ptr %10, align 8, !tbaa !142  ; 3 uses
  %.not.i.i48 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i48, label %_ZN7testing7MessageD2Ev.exit50, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49: ; preds = %bb.w
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !97
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(128) %i.bj) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit50

_ZN7testing7MessageD2Ev.exit50:                   ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit53

bb.y:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn25 = phi { ptr, i32 } [ %i.bp, %bb.z ], [ %i.bo, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.bq = load ptr, ptr %10, align 8, !tbaa !142  ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i51, label %_ZN7testing7MessageD2Ev.exit53, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52: ; preds = %bb.aa
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !97
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(128) %i.bq) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit53

_ZN7testing7MessageD2Ev.exit53:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52, %bb.aa, %bb.x
  %.pn25.pn = phi { ptr, i32 } [ %i.bn, %bb.x ], [ %.pn25, %bb.aa ], [ %.pn25, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  br label %bb.af

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit50
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !140 ; 4 uses
  %.not.i.i54 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i54, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !76 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !79
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.cb = load i32, ptr %i.a, align 16, !tbaa !107
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !107
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl nuw i64 %i.ce, 32
  %i.cg = zext i32 %i.cb to i128
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !107
  %i.cj = zext i32 %i.ci to i64
  %i.ck = or disjoint i64 %i.cf, %i.cj
  %i.cl = zext i64 %i.ck to i128
  %i.cm = shl nuw i128 %i.cg, 96
  %i.cn = shl nuw nsw i128 %i.cl, 32              ; 2 uses
  %i.co = trunc i128 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !107
  %i.cr = zext i32 %i.cq to i64
  %i.cs = or disjoint i64 %i.co, %i.cr
  %.masked.i.i.i.i.i.i.i = and i128 %i.cn, 79228162495817593519834398720
  %i.ct = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.cm
  %i.cu = zext i64 %i.cs to i128
  %i.cv = add nuw nsw i128 %i.cu, 1442695040888963407 ; 2 uses
  %i.cw = add i128 %i.ct, %i.cv
  %i.cx = lshr i128 %i.cw, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.cx to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.cy = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.cz = shl nuw i128 %i.cy, 64
  %i.da = and i128 %i.cv, 18446744073709551615
  %i.db = or disjoint i128 %i.cz, %i.da
  %i.dc = mul i128 %i.db, 47026247687942121848144207491837523525
  %i.dd = add i128 %i.dc, 1442695040888963407     ; 2 uses
  %i.de = lshr i128 %i.dd, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.de to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.df = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.dg = shl nuw i128 %i.df, 64
  %i.dh = and i128 %i.dd, 18446744073709551615
  %i.di = or disjoint i128 %i.dg, %i.dh
  %i.dj = mul i128 %i.di, 47026247687942121848144207491837523525
  %i.dk = add i128 %i.dj, 1442695040888963407     ; 2 uses
  %i.dl = trunc i128 %i.dk to i64
  %i.dm = lshr i128 %i.dk, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.dm to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.dn = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.do = xor i64 %.narrow.i.i.i.i.i.i, %i.dl     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.do, i64 %i.do, i64 %i.dn)
  %i.dp = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = load i32, ptr %1, align 8, !tbaa !107
  store i32 %i.dr, ptr %12, align 4, !tbaa !267
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %i.dq, ptr %i.ds, align 4, !tbaa !271
  %i.dt = invoke { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS2_EEES0_INS8_14_Node_iteratorIS2_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 4 dereferenceable(8) %12)
          to label %bb.ae unwind label %bb.ag     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %.fca.0.extract = extractvalue { ptr, i8 } %i.dt, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.dt, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store i8 %.fca.1.extract, ptr %13, align 8, !tbaa !139
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr null, ptr %i.du, align 8, !tbaa !225
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 0, ptr %i.dv, align 8, !tbaa !227
  %i.dw = icmp eq i8 %.fca.1.extract, 0
  br i1 %i.dw, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77, label %bb.ah

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit53, %bb.r
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %_ZN7testing7MessageD2Ev.exit53 ], [ %i.be, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bk

bb.ag:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.ad
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.147)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.dy = load ptr, ptr %17, align 8, !tbaa !76
  %i.dz = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !80
  store i64 %i.ea, ptr %16, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.dy, ptr %i.eb, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 55, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %16)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #26
  %i.ec = load ptr, ptr %17, align 8, !tbaa !76   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.al
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !79
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.eh = load ptr, ptr %14, align 8, !tbaa !142  ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i64, label %bb.ar, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !97
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(128) %i.eh) #26, !inline_history !4
  br label %bb.ar

bb.am:                                            ; preds = %bb.ah
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit72

bb.an:                                            ; preds = %bb.ai
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.ao:                                            ; preds = %bb.aj
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn29 = phi { ptr, i32 } [ %i.eo, %bb.ap ], [ %i.en, %bb.ao ] ; 2 uses
  %i.ep = load ptr, ptr %17, align 8, !tbaa !76   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.aq
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !79
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.an
  %.pn29.pn = phi { ptr, i32 } [ %i.em, %bb.an ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %.pn29, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.eu = load ptr, ptr %14, align 8, !tbaa !142  ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i70, label %_ZN7testing7MessageD2Ev.exit72, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !97
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(128) %i.eu) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit72

_ZN7testing7MessageD2Ev.exit72:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.am
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.el, %bb.am ], [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn29.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bj

bb.ar:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %.pr105 = load ptr, ptr %i.du, align 8, !tbaa !140 ; 4 uses
  %.not.i.i.i73 = icmp eq ptr %.pr105, null
  br i1 %.not.i.i.i73, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ey = load ptr, ptr %.pr105, align 8, !tbaa !76 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.pr105, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74: ; preds = %bb.as
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !79
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i75

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i75: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74
  call void @_ZdlPvm(ptr noundef nonnull %.pr105, i64 noundef 32) #29
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77: ; preds = %bb.ae, %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.fd = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 8 ; 2 uses
  %i.fe = load <2 x i32>, ptr %1, align 8, !noalias !3634
  %i.ff = load <2 x i32>, ptr %i.fd, align 4, !noalias !3634
  %i.fg = icmp eq <2 x i32> %i.fe, %i.ff          ; 2 uses
  %24 = extractelement <2 x i1> %i.fg, i64 0
  %25 = extractelement <2 x i1> %i.fg, i64 1
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit80 unwind label %bb.av

bb.au:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.218, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.fd)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit80 unwind label %bb.av

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit80: ; preds = %bb.at, %bb.au
  %i.fh = load i8, ptr %18, align 8, !tbaa !139, !range !70, !noundef !71
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.bf, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit80
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.fk = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !140 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i81, label %_ZNK7testing15AssertionResult15failure_messageEv.exit82, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit82

_ZNK7testing15AssertionResult15failure_messageEv.exit82: ; preds = %bb.ay, %bb.ax
  %i.fn = phi ptr [ %i.fm, %bb.ay ], [ @.str.134, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 56, ptr noundef %i.fn)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit82
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.fo = load ptr, ptr %19, align 8, !tbaa !142  ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i83, label %_ZN7testing7MessageD2Ev.exit85, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84: ; preds = %bb.ba
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !97
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(128) %i.fo) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit85

_ZN7testing7MessageD2Ev.exit85:                   ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit88

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit82
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn34 = phi { ptr, i32 } [ %i.fu, %bb.bd ], [ %i.ft, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.fv = load ptr, ptr %19, align 8, !tbaa !142  ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i86, label %_ZN7testing7MessageD2Ev.exit88, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %bb.be
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !97
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(128) %i.fv) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit88

_ZN7testing7MessageD2Ev.exit88:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87, %bb.be, %bb.bb
  %.pn34.pn = phi { ptr, i32 } [ %i.fs, %bb.bb ], [ %.pn34, %bb.be ], [ %.pn34, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #26
  br label %bb.bi

bb.bf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit80, %_ZN7testing7MessageD2Ev.exit85
  %i.fz = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !140 ; 4 uses
  %.not.i.i89 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i89, label %_ZN7testing15AssertionResultD2Ev.exit93, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !76 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90: ; preds = %bb.bg
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !79
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit93

_ZN7testing15AssertionResultD2Ev.exit93:          ; preds = %bb.bf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.gg = load ptr, ptr %i.l, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7testing15AssertionResultD2Ev.exit93, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.gh, %.lr.ph.i.i.i.i ], [ %i.gg, %_ZN7testing15AssertionResultD2Ev.exit93 ] ; 2 uses
  %i.gh = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit93
  %i.gi = load ptr, ptr %i.i, align 8, !tbaa !129
  %i.gj = load i64, ptr %i.k, align 8, !tbaa !130
  %i.gk = shl i64 %i.gj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gi, i8 0, i64 %i.gk, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.gl = load ptr, ptr %i.i, align 8, !tbaa !129 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.j
  br i1 %i.gm, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.gn = load i64, ptr %i.k, align 8, !tbaa !130
  %i.go = shl i64 %i.gn, 3
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.bi:                                            ; preds = %_ZN7testing7MessageD2Ev.exit88, %bb.av
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %_ZN7testing7MessageD2Ev.exit88 ], [ %i.fj, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZN7testing7MessageD2Ev.exit72, %bb.ag
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %bb.bi ], [ %.pn29.pn.pn, %_ZN7testing7MessageD2Ev.exit72 ], [ %i.dx, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.af, %_ZN7testing7MessageD2Ev.exit45, %bb.c
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn, %bb.bj ], [ %.pn25.pn.pn, %bb.af ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit45 ], [ %i.s, %bb.c ]
  call void @_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS2_EEES0_INS8_14_Node_iteratorIS2_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !144
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %1, align 4                ; 3 uses
  store i64 %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !224
  %.not.not = icmp eq i64 %i.e, 0                 ; 2 uses
  %i.f = trunc i64 %i.c to i32                    ; 3 uses
  br i1 %.not.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.034.0.in = phi ptr [ %i.g, %bb.b ], [ %.sroa.034.0, %bb.d ]
  %.sroa.034.0 = load ptr, ptr %.sroa.034.0.in, align 8, !tbaa !144 ; 4 uses
  %.not = icmp eq ptr %.sroa.034.0, null
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_10InsertHintISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8TestBodyEv:bb.a
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"struct.std::pair.59", align 4    ; 6 uses
  %13 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = call i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  store i64 %i.b, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.c = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78
  store i64 %i.c, ptr %3, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78 ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78
  store i64 %i.f, ptr %i.e, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i64 1, ptr %i.k, align 8, !tbaa !130
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !131
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = invoke { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS2_EEES0_INS8_14_Node_iteratorIS2_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.o, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.p = icmp ne ptr %.fca.0.extract.i.i.i, null  ; 2 uses
  %i.q = zext i1 %i.p to i8
  store i8 %i.q, ptr %4, align 8, !tbaa !139
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !225
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.s, align 8, !tbaa !227
  br i1 %i.p, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.148)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %8, align 8, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !80
  store i64 %i.w, ptr %7, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.u, ptr %i.x, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 65, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %7)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  %i.y = load ptr, ptr %8, align 8, !tbaa !76     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !79
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ad = load ptr, ptr %5, align 8, !tbaa !142   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.n, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !97
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(128) %i.ad) #26, !inline_history !4
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit45

bb.j:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.k:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.l ], [ %i.aj, %bb.k ] ; 2 uses
  %i.al = load ptr, ptr %8, align 8, !tbaa !76    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.m
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !79
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %.pn, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.aq = load ptr, ptr %5, align 8, !tbaa !142   ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i43, label %_ZN7testing7MessageD2Ev.exit45, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !97
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(128) %i.aq) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit45

_ZN7testing7MessageD2Ev.exit45:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.bk

bb.n:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.pr = load ptr, ptr %i.r, align 8, !tbaa !140  ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %.pr, align 8, !tbaa !76  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !79
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #29
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %bb.b, %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.az = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8 ; 2 uses
  %i.ba = load <2 x i32>, ptr %1, align 8, !noalias !3691
  %i.bb = load <2 x i32>, ptr %i.az, align 4, !noalias !3691
  %i.bc = icmp eq <2 x i32> %i.ba, %i.bb          ; 2 uses
  %21 = extractelement <2 x i1> %i.bc, i64 0
  %22 = extractelement <2 x i1> %i.bc, i64 1
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

bb.q:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.220, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.az)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.p, %bb.q
  %i.bd = load i8, ptr %9, align 8, !tbaa !139, !range !70, !noundef !71
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.ab, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !140 ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i47, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.u, %bb.t
  %i.bj = phi ptr [ %i.bi, %bb.u ], [ @.str.134, %bb.t ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 66, ptr noundef %i.bj)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.bk = load ptr, ptr %10, align 8, !tbaa !142  ; 3 uses
  %.not.i.i48 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i48, label %_ZN7testing7MessageD2Ev.exit50, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49: ; preds = %bb.w
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !97
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(128) %i.bk) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit50

_ZN7testing7MessageD2Ev.exit50:                   ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit53

bb.y:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn25 = phi { ptr, i32 } [ %i.bq, %bb.z ], [ %i.bp, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.br = load ptr, ptr %10, align 8, !tbaa !142  ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.br, null
  br i1 %.not.i.i51, label %_ZN7testing7MessageD2Ev.exit53, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52: ; preds = %bb.aa
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !97
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(128) %i.br) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit53

_ZN7testing7MessageD2Ev.exit53:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52, %bb.aa, %bb.x
  %.pn25.pn = phi { ptr, i32 } [ %i.bo, %bb.x ], [ %.pn25, %bb.aa ], [ %.pn25, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  br label %bb.af

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit50
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !140 ; 4 uses
  %.not.i.i54 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i54, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !76 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !79
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.cc = load i32, ptr %i.a, align 16, !tbaa !107
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !107
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw i64 %i.cf, 32
  %i.ch = zext i32 %i.cc to i128
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !107
  %i.ck = zext i32 %i.cj to i64
  %i.cl = or disjoint i64 %i.cg, %i.ck
  %i.cm = zext i64 %i.cl to i128
  %i.cn = shl nuw i128 %i.ch, 96
  %i.co = shl nuw nsw i128 %i.cm, 32              ; 2 uses
  %i.cp = trunc i128 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !107
  %i.cs = zext i32 %i.cr to i64
  %i.ct = or disjoint i64 %i.cp, %i.cs
  %.masked.i.i.i.i.i.i.i = and i128 %i.co, 79228162495817593519834398720
  %i.cu = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.cn
  %i.cv = zext i64 %i.ct to i128
  %i.cw = add nuw nsw i128 %i.cv, 1442695040888963407 ; 2 uses
  %i.cx = add i128 %i.cu, %i.cw
  %i.cy = lshr i128 %i.cx, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.cy to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.cz = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.da = shl nuw i128 %i.cz, 64
  %i.db = and i128 %i.cw, 18446744073709551615
  %i.dc = or disjoint i128 %i.da, %i.db
  %i.dd = mul i128 %i.dc, 47026247687942121848144207491837523525
  %i.de = add i128 %i.dd, 1442695040888963407     ; 2 uses
  %i.df = lshr i128 %i.de, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.df to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.dg = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.dh = shl nuw i128 %i.dg, 64
  %i.di = and i128 %i.de, 18446744073709551615
  %i.dj = or disjoint i128 %i.dh, %i.di
  %i.dk = mul i128 %i.dj, 47026247687942121848144207491837523525
  %i.dl = add i128 %i.dk, 1442695040888963407     ; 2 uses
  %i.dm = trunc i128 %i.dl to i64
  %i.dn = lshr i128 %i.dl, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.dn to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.do = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.dp = xor i64 %.narrow.i.i.i.i.i.i, %i.dm     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.dp, i64 %i.dp, i64 %i.do)
  %i.dq = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = load i32, ptr %1, align 8, !tbaa !107
  store i32 %i.ds, ptr %12, align 4, !tbaa !267
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %i.dr, ptr %i.dt, align 4, !tbaa !271
  %i.du = invoke { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS2_EEES0_INS8_14_Node_iteratorIS2_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 4 dereferenceable(8) %12)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %.fca.0.extract.i.i.i57 = extractvalue { ptr, i8 } %i.du, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  %i.dv = icmp ne ptr %.fca.0.extract.i.i.i57, null ; 2 uses
  %i.dw = zext i1 %i.dv to i8
  store i8 %i.dw, ptr %13, align 8, !tbaa !139
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr null, ptr %i.dx, align 8, !tbaa !225
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 1, ptr %i.dy, align 8, !tbaa !227
  br i1 %i.dv, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit78, label %bb.ah

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit53, %bb.r
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %_ZN7testing7MessageD2Ev.exit53 ], [ %i.bf, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bk

bb.ag:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.ad
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.148)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.ea = load ptr, ptr %17, align 8, !tbaa !76
  %i.eb = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !80
  store i64 %i.ec, ptr %16, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.ea, ptr %i.ed, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 69, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %16)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #26
  %i.ee = load ptr, ptr %17, align 8, !tbaa !76   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.al
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !79
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ej = load ptr, ptr %14, align 8, !tbaa !142  ; 3 uses
  %.not.i.i65 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i65, label %bb.ar, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !97
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(128) %i.ej) #26, !inline_history !4
  br label %bb.ar

bb.am:                                            ; preds = %bb.ah
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit73

bb.an:                                            ; preds = %bb.ai
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.ao:                                            ; preds = %bb.aj
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn29 = phi { ptr, i32 } [ %i.eq, %bb.ap ], [ %i.ep, %bb.ao ] ; 2 uses
  %i.er = load ptr, ptr %17, align 8, !tbaa !76   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.aq
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !79
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.an
  %.pn29.pn = phi { ptr, i32 } [ %i.eo, %bb.an ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %.pn29, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ew = load ptr, ptr %14, align 8, !tbaa !142  ; 3 uses
  %.not.i.i71 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i71, label %_ZN7testing7MessageD2Ev.exit73, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !97
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(128) %i.ew) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit73

_ZN7testing7MessageD2Ev.exit73:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %bb.am
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.en, %bb.am ], [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.pn29.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bj

bb.ar:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %.pr113 = load ptr, ptr %i.dx, align 8, !tbaa !140 ; 4 uses
  %.not.i.i.i74 = icmp eq ptr %.pr113, null
  br i1 %.not.i.i.i74, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit78, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fa = load ptr, ptr %.pr113, align 8, !tbaa !76 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.pr113, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i75: ; preds = %bb.as
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !79
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i76

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i76: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i75
  call void @_ZdlPvm(ptr noundef nonnull %.pr113, i64 noundef 32) #29
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit78

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit78: ; preds = %bb.ae, %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.ff = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i57, i64 8 ; 2 uses
  %i.fg = load <2 x i32>, ptr %1, align 8, !noalias !3692
  %i.fh = load <2 x i32>, ptr %i.ff, align 4, !noalias !3692
  %i.fi = icmp eq <2 x i32> %i.fg, %i.fh          ; 2 uses
  %24 = extractelement <2 x i1> %i.fi, i64 0
  %25 = extractelement <2 x i1> %i.fi, i64 1
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit78
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit81 unwind label %bb.av

bb.au:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit78
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.220, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.ff)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit81 unwind label %bb.av

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit81: ; preds = %bb.at, %bb.au
  %i.fj = load i8, ptr %18, align 8, !tbaa !139, !range !70, !noundef !71
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.bf, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit81
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.fm = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !140 ; 2 uses
  %.not.i.i82 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i82, label %_ZNK7testing15AssertionResult15failure_messageEv.exit83, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit83

_ZNK7testing15AssertionResult15failure_messageEv.exit83: ; preds = %bb.ay, %bb.ax
  %i.fp = phi ptr [ %i.fo, %bb.ay ], [ @.str.134, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 70, ptr noundef %i.fp)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit83
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.fq = load ptr, ptr %19, align 8, !tbaa !142  ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i84, label %_ZN7testing7MessageD2Ev.exit86, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85: ; preds = %bb.ba
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !97
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(128) %i.fq) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit86

_ZN7testing7MessageD2Ev.exit86:                   ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit89

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit83
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn34 = phi { ptr, i32 } [ %i.fw, %bb.bd ], [ %i.fv, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.fx = load ptr, ptr %19, align 8, !tbaa !142  ; 3 uses
  %.not.i.i87 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i87, label %_ZN7testing7MessageD2Ev.exit89, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88: ; preds = %bb.be
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !97
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(128) %i.fx) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit89

_ZN7testing7MessageD2Ev.exit89:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88, %bb.be, %bb.bb
  %.pn34.pn = phi { ptr, i32 } [ %i.fu, %bb.bb ], [ %.pn34, %bb.be ], [ %.pn34, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #26
  br label %bb.bi

bb.bf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit81, %_ZN7testing7MessageD2Ev.exit86
  %i.gb = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !140 ; 4 uses
  %.not.i.i90 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i90, label %_ZN7testing15AssertionResultD2Ev.exit94, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !76 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  %i.gf = icmp eq ptr %i.gd, %i.ge
  br i1 %i.gf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i91: ; preds = %bb.bg
  %i.gg = load i64, ptr %i.ge, align 8, !tbaa !79
  %i.gh = add i64 %i.gg, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gh) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i91
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit94

_ZN7testing15AssertionResultD2Ev.exit94:          ; preds = %bb.bf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.gi = load ptr, ptr %i.l, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7testing15AssertionResultD2Ev.exit94, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.gj, %.lr.ph.i.i.i.i ], [ %i.gi, %_ZN7testing15AssertionResultD2Ev.exit94 ] ; 2 uses
  %i.gj = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit94
  %i.gk = load ptr, ptr %i.i, align 8, !tbaa !129
  %i.gl = load i64, ptr %i.k, align 8, !tbaa !130
  %i.gm = shl i64 %i.gl, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gk, i8 0, i64 %i.gm, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.gn = load ptr, ptr %i.i, align 8, !tbaa !129 ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.j
  br i1 %i.go, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.gp = load i64, ptr %i.k, align 8, !tbaa !130
  %i.gq = shl i64 %i.gp, 3
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.bi:                                            ; preds = %_ZN7testing7MessageD2Ev.exit89, %bb.av
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %_ZN7testing7MessageD2Ev.exit89 ], [ %i.fl, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZN7testing7MessageD2Ev.exit73, %bb.ag
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %bb.bi ], [ %.pn29.pn.pn, %_ZN7testing7MessageD2Ev.exit73 ], [ %i.dz, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.af, %_ZN7testing7MessageD2Ev.exit45, %bb.c
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn, %bb.bj ], [ %.pn25.pn.pn, %bb.af ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit45 ], [ %i.t, %bb.c ]
  call void @_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_10InsertHintISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.132, i32 noundef 512)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.142, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.143, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !97
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_7EmplaceISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8TestBodyEv:bb.a
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"struct.std::pair.59", align 4    ; 6 uses
  %13 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = call i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  store i64 %i.b, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.c = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78
  store i64 %i.c, ptr %3, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78 ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78
  store i64 %i.f, ptr %i.e, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i64 1, ptr %i.k, align 8, !tbaa !130
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !131
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = invoke { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS2_EEES0_INS8_14_Node_iteratorIS2_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract1 = extractvalue { ptr, i8 } %i.o, 0
  %.fca.1.extract2 = extractvalue { ptr, i8 } %i.o, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i8 %.fca.1.extract2, ptr %4, align 8, !tbaa !139
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !225
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.q, align 8, !tbaa !227
  %i.r = icmp eq i8 %.fca.1.extract2, 1
  br i1 %i.r, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.148)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %8, align 8, !tbaa !76
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !80
  store i64 %i.v, ptr %7, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.t, ptr %i.w, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 156, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %7)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  %i.x = load ptr, ptr %8, align 8, !tbaa !76     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !79
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ac = load ptr, ptr %5, align 8, !tbaa !142   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.n, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(128) %i.ac) #26, !inline_history !4
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit45

bb.j:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.k:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ai, %bb.k ] ; 2 uses
  %i.ak = load ptr, ptr %8, align 8, !tbaa !76    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.m
  %i.an = load i64, ptr %i.al, align 8, !tbaa !79
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %.pn, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ap = load ptr, ptr %5, align 8, !tbaa !142   ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i43, label %_ZN7testing7MessageD2Ev.exit45, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !97
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(128) %i.ap) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit45

_ZN7testing7MessageD2Ev.exit45:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.bk

bb.n:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.pr = load ptr, ptr %i.p, align 8, !tbaa !140  ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr %.pr, align 8, !tbaa !76  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !79
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #29
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %bb.b, %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.ay = getelementptr inbounds nuw i8, ptr %.fca.0.extract1, i64 8 ; 2 uses
  %i.az = load <2 x i32>, ptr %1, align 8, !noalias !4057
  %i.ba = load <2 x i32>, ptr %i.ay, align 4, !noalias !4057
  %i.bb = icmp eq <2 x i32> %i.az, %i.ba          ; 2 uses
  %21 = extractelement <2 x i1> %i.bb, i64 0
  %22 = extractelement <2 x i1> %i.bb, i64 1
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

bb.q:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.218, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.ay)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.p, %bb.q
  %i.bc = load i8, ptr %9, align 8, !tbaa !139, !range !70, !noundef !71
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.ab, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !140 ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i47, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.u, %bb.t
  %i.bi = phi ptr [ %i.bh, %bb.u ], [ @.str.134, %bb.t ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 157, ptr noundef %i.bi)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.bj = load ptr, ptr %10, align 8, !tbaa !142  ; 3 uses
  %.not.i.i48 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i48, label %_ZN7testing7MessageD2Ev.exit50, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49: ; preds = %bb.w
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !97
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(128) %i.bj) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit50

_ZN7testing7MessageD2Ev.exit50:                   ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit53

bb.y:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn25 = phi { ptr, i32 } [ %i.bp, %bb.z ], [ %i.bo, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.bq = load ptr, ptr %10, align 8, !tbaa !142  ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i51, label %_ZN7testing7MessageD2Ev.exit53, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52: ; preds = %bb.aa
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !97
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(128) %i.bq) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit53

_ZN7testing7MessageD2Ev.exit53:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52, %bb.aa, %bb.x
  %.pn25.pn = phi { ptr, i32 } [ %i.bn, %bb.x ], [ %.pn25, %bb.aa ], [ %.pn25, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  br label %bb.af

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit50
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !140 ; 4 uses
  %.not.i.i54 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i54, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !76 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !79
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.cb = load i32, ptr %i.a, align 16, !tbaa !107
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !107
  %i.ce = zext i32 %i.cd to i64
  %i.cf = shl nuw i64 %i.ce, 32
  %i.cg = zext i32 %i.cb to i128
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !107
  %i.cj = zext i32 %i.ci to i64
  %i.ck = or disjoint i64 %i.cf, %i.cj
  %i.cl = zext i64 %i.ck to i128
  %i.cm = shl nuw i128 %i.cg, 96
  %i.cn = shl nuw nsw i128 %i.cl, 32              ; 2 uses
  %i.co = trunc i128 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !107
  %i.cr = zext i32 %i.cq to i64
  %i.cs = or disjoint i64 %i.co, %i.cr
  %.masked.i.i.i.i.i.i.i = and i128 %i.cn, 79228162495817593519834398720
  %i.ct = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.cm
  %i.cu = zext i64 %i.cs to i128
  %i.cv = add nuw nsw i128 %i.cu, 1442695040888963407 ; 2 uses
  %i.cw = add i128 %i.ct, %i.cv
  %i.cx = lshr i128 %i.cw, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.cx to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.cy = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.cz = shl nuw i128 %i.cy, 64
  %i.da = and i128 %i.cv, 18446744073709551615
  %i.db = or disjoint i128 %i.cz, %i.da
  %i.dc = mul i128 %i.db, 47026247687942121848144207491837523525
  %i.dd = add i128 %i.dc, 1442695040888963407     ; 2 uses
  %i.de = lshr i128 %i.dd, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.de to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.df = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.dg = shl nuw i128 %i.df, 64
  %i.dh = and i128 %i.dd, 18446744073709551615
  %i.di = or disjoint i128 %i.dg, %i.dh
  %i.dj = mul i128 %i.di, 47026247687942121848144207491837523525
  %i.dk = add i128 %i.dj, 1442695040888963407     ; 2 uses
  %i.dl = trunc i128 %i.dk to i64
  %i.dm = lshr i128 %i.dk, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.dm to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.dn = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.do = xor i64 %.narrow.i.i.i.i.i.i, %i.dl     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.do, i64 %i.do, i64 %i.dn)
  %i.dp = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = load i32, ptr %1, align 8, !tbaa !107
  store i32 %i.dr, ptr %12, align 4, !tbaa !267
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 %i.dq, ptr %i.ds, align 4, !tbaa !271
  %i.dt = invoke { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS2_EEES0_INS8_14_Node_iteratorIS2_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 4 dereferenceable(8) %12)
          to label %bb.ae unwind label %bb.ag     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %.fca.0.extract = extractvalue { ptr, i8 } %i.dt, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.dt, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store i8 %.fca.1.extract, ptr %13, align 8, !tbaa !139
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr null, ptr %i.du, align 8, !tbaa !225
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 0, ptr %i.dv, align 8, !tbaa !227
  %i.dw = icmp eq i8 %.fca.1.extract, 0
  br i1 %i.dw, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77, label %bb.ah

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit53, %bb.r
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %_ZN7testing7MessageD2Ev.exit53 ], [ %i.be, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bk

bb.ag:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.ad
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.147)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.dy = load ptr, ptr %17, align 8, !tbaa !76
  %i.dz = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !80
  store i64 %i.ea, ptr %16, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.dy, ptr %i.eb, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 160, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %16)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #26
  %i.ec = load ptr, ptr %17, align 8, !tbaa !76   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.al
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !79
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.eh = load ptr, ptr %14, align 8, !tbaa !142  ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i64, label %bb.ar, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !97
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(128) %i.eh) #26, !inline_history !4
  br label %bb.ar

bb.am:                                            ; preds = %bb.ah
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit72

bb.an:                                            ; preds = %bb.ai
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.ao:                                            ; preds = %bb.aj
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn29 = phi { ptr, i32 } [ %i.eo, %bb.ap ], [ %i.en, %bb.ao ] ; 2 uses
  %i.ep = load ptr, ptr %17, align 8, !tbaa !76   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.aq
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !79
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.an
  %.pn29.pn = phi { ptr, i32 } [ %i.em, %bb.an ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %.pn29, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.eu = load ptr, ptr %14, align 8, !tbaa !142  ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i70, label %_ZN7testing7MessageD2Ev.exit72, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !97
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(128) %i.eu) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit72

_ZN7testing7MessageD2Ev.exit72:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.am
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.el, %bb.am ], [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn29.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bj

bb.ar:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %.pr105 = load ptr, ptr %i.du, align 8, !tbaa !140 ; 4 uses
  %.not.i.i.i73 = icmp eq ptr %.pr105, null
  br i1 %.not.i.i.i73, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ey = load ptr, ptr %.pr105, align 8, !tbaa !76 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.pr105, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74: ; preds = %bb.as
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !79
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i75

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i75: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74
  call void @_ZdlPvm(ptr noundef nonnull %.pr105, i64 noundef 32) #29
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77: ; preds = %bb.ae, %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.fd = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 8 ; 2 uses
  %i.fe = load <2 x i32>, ptr %1, align 8, !noalias !4058
  %i.ff = load <2 x i32>, ptr %i.fd, align 4, !noalias !4058
  %i.fg = icmp eq <2 x i32> %i.fe, %i.ff          ; 2 uses
  %24 = extractelement <2 x i1> %i.fg, i64 0
  %25 = extractelement <2 x i1> %i.fg, i64 1
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit80 unwind label %bb.av

bb.au:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.218, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.fd)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit80 unwind label %bb.av

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit80: ; preds = %bb.at, %bb.au
  %i.fh = load i8, ptr %18, align 8, !tbaa !139, !range !70, !noundef !71
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.bf, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit80
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.fk = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !140 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i81, label %_ZNK7testing15AssertionResult15failure_messageEv.exit82, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit82

_ZNK7testing15AssertionResult15failure_messageEv.exit82: ; preds = %bb.ay, %bb.ax
  %i.fn = phi ptr [ %i.fm, %bb.ay ], [ @.str.134, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 161, ptr noundef %i.fn)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit82
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.fo = load ptr, ptr %19, align 8, !tbaa !142  ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i83, label %_ZN7testing7MessageD2Ev.exit85, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84: ; preds = %bb.ba
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !97
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(128) %i.fo) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit85

_ZN7testing7MessageD2Ev.exit85:                   ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit88

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit82
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn34 = phi { ptr, i32 } [ %i.fu, %bb.bd ], [ %i.ft, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.fv = load ptr, ptr %19, align 8, !tbaa !142  ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i86, label %_ZN7testing7MessageD2Ev.exit88, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %bb.be
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !97
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(128) %i.fv) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit88

_ZN7testing7MessageD2Ev.exit88:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87, %bb.be, %bb.bb
  %.pn34.pn = phi { ptr, i32 } [ %i.fs, %bb.bb ], [ %.pn34, %bb.be ], [ %.pn34, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #26
  br label %bb.bi

bb.bf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit80, %_ZN7testing7MessageD2Ev.exit85
  %i.fz = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !140 ; 4 uses
  %.not.i.i89 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i89, label %_ZN7testing15AssertionResultD2Ev.exit93, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !76 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90: ; preds = %bb.bg
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !79
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90
  call void @_ZdlPvm(ptr noundef nonnull %i.ga, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit93

_ZN7testing15AssertionResultD2Ev.exit93:          ; preds = %bb.bf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.gg = load ptr, ptr %i.l, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.gg, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7testing15AssertionResultD2Ev.exit93, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.gh, %.lr.ph.i.i.i.i ], [ %i.gg, %_ZN7testing15AssertionResultD2Ev.exit93 ] ; 2 uses
  %i.gh = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit93
  %i.gi = load ptr, ptr %i.i, align 8, !tbaa !129
  %i.gj = load i64, ptr %i.k, align 8, !tbaa !130
  %i.gk = shl i64 %i.gj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gi, i8 0, i64 %i.gk, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.gl = load ptr, ptr %i.i, align 8, !tbaa !129 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.j
  br i1 %i.gm, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.gn = load i64, ptr %i.k, align 8, !tbaa !130
  %i.go = shl i64 %i.gn, 3
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.bi:                                            ; preds = %_ZN7testing7MessageD2Ev.exit88, %bb.av
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %_ZN7testing7MessageD2Ev.exit88 ], [ %i.fj, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZN7testing7MessageD2Ev.exit72, %bb.ag
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %bb.bi ], [ %.pn29.pn.pn, %_ZN7testing7MessageD2Ev.exit72 ], [ %i.dx, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.af, %_ZN7testing7MessageD2Ev.exit45, %bb.c
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn, %bb.bj ], [ %.pn25.pn.pn, %bb.af ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit45 ], [ %i.s, %bb.c ]
  call void @_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_7EmplaceISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.132, i32 noundef 512)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.142, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.143, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !97
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN7testing8internal21TypeParameterizedTestIN4absl12lts_2026052618container_internal13ModifiersTestENS0_11TemplateSelINS4_26gtest_suite_ModifiersTest_11EmplaceHintEEENS0_5TypesISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESH_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSH_SH_EEEEJEEEE8RegisterEPKcNS0_12CodeLocationEST_ST_iRKSt6vectorISH_SaISH_EE:bb.a
  br i1 %i.gs, label %_ZN7testing8internal12CodeLocationD2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83: ; preds = %bb.al
  %i.gt = load i64, ptr %i.dj, align 8, !tbaa !79
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #29
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit85

_ZN7testing8internal12CodeLocationD2Ev.exit85:    ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.gp, %bb.ak ], [ %i.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83 ], [ %i.gq, %bb.al ] ; 2 uses
  %i.gv = load ptr, ptr %13, align 8, !tbaa !76   ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit85
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !79
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.aj
  %.pn.pn = phi { ptr, i32 } [ %i.go, %bb.aj ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn, %_ZN7testing8internal12CodeLocationD2Ev.exit85 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.ha = load ptr, ptr %11, align 8, !tbaa !76   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.cy
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.hc = load i64, ptr %i.cy, align 8, !tbaa !79
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.ai
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.ai ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ] ; 2 uses
  %i.he = load ptr, ptr %12, align 8, !tbaa !76   ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !79
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.ah
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.ah ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.hj = load ptr, ptr %6, align 8, !tbaa !76    ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.by
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.hl = load i64, ptr %i.by, align 8, !tbaa !79
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ag
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.ag ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 2 uses
  %i.hn = load ptr, ptr %7, align 8, !tbaa !76    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.bc
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.hp = load i64, ptr %i.bc, align 8, !tbaa !79
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.af
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.af ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 2 uses
  %i.hr = load ptr, ptr %8, align 8, !tbaa !76    ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.an
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.ht = load i64, ptr %i.an, align 8, !tbaa !79
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ae
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.ae ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 2 uses
  %i.hv = load ptr, ptr %9, align 8, !tbaa !76    ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.w
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.hx = load i64, ptr %i.w, align 8, !tbaa !79
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ad
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gi, %bb.ad ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ]
  %i.hz = load ptr, ptr %10, align 8, !tbaa !76   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.c
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.ib = load i64, ptr %i.c, align 8, !tbaa !79
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintISt13unordered_mapIiiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintISt13unordered_mapIiiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !97
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %1 = alloca %"struct.std::pair.59", align 8     ; 10 uses
  %2 = alloca %"struct.absl::lts_20260526::container_internal::Generator", align 1 ; 3 uses
  %3 = alloca %"class.std::unordered_map", align 8 ; 15 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"struct.std::pair.59", align 4     ; 6 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = call i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  store i64 %i.b, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.c = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78
  store i64 %i.c, ptr %3, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78 ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78
  store i64 %i.f, ptr %i.e, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i64 1, ptr %i.k, align 8, !tbaa !130
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !131
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = invoke { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS2_EEES0_INS8_14_Node_iteratorIS2_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 4 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.o, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.p = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8 ; 2 uses
  %i.q = load <2 x i32>, ptr %1, align 8, !noalias !4113
  %i.r = load <2 x i32>, ptr %i.p, align 4, !noalias !4113
  %i.s = icmp eq <2 x i32> %i.q, %i.r             ; 2 uses
  %11 = extractelement <2 x i1> %i.s, i64 0
  %12 = extractelement <2 x i1> %i.s, i64 1
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.220, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.p)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.f

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.c, %bb.d
  %i.t = load i8, ptr %4, align 8, !tbaa !139, !range !70, !noundef !71
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.p, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.g:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !140  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.i, %bb.h
  %i.aa = phi ptr [ %i.z, %bb.i ], [ @.str.134, %bb.h ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 172, ptr noundef %i.aa)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ab = load ptr, ptr %5, align 8, !tbaa !142   ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i19, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !97
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(128) %i.ab) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.p

bb.l:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit22

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %i.ag, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ai = load ptr, ptr %5, align 8, !tbaa !142   ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i20, label %_ZN7testing7MessageD2Ev.exit22, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21: ; preds = %bb.o
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !97
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(128) %i.ai) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit22

_ZN7testing7MessageD2Ev.exit22:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21, %bb.o, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.af, %bb.l ], [ %.pn, %bb.o ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.v

bb.p:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !140 ; 4 uses
  %.not.i.i23 = icmp eq ptr %i.an, null
  br i1 %.not.i.i23, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !76 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !79
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.at = load i32, ptr %i.a, align 16, !tbaa !107
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !107
  %i.aw = zext i32 %i.av to i64
  %i.ax = shl nuw i64 %i.aw, 32
  %i.ay = zext i32 %i.at to i128
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !107
  %i.bb = zext i32 %i.ba to i64
  %i.bc = or disjoint i64 %i.ax, %i.bb
  %i.bd = zext i64 %i.bc to i128
  %i.be = shl nuw i128 %i.ay, 96
  %i.bf = shl nuw nsw i128 %i.bd, 32              ; 2 uses
  %i.bg = trunc i128 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !107
  %i.bj = zext i32 %i.bi to i64
  %i.bk = or disjoint i64 %i.bg, %i.bj
  %.masked.i.i.i.i.i.i.i = and i128 %i.bf, 79228162495817593519834398720
  %i.bl = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.be
  %i.bm = zext i64 %i.bk to i128
  %i.bn = add nuw nsw i128 %i.bm, 1442695040888963407 ; 2 uses
  %i.bo = add i128 %i.bl, %i.bn
  %i.bp = lshr i128 %i.bo, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.bp to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.bq = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.br = shl nuw i128 %i.bq, 64
  %i.bs = and i128 %i.bn, 18446744073709551615
  %i.bt = or disjoint i128 %i.br, %i.bs
  %i.bu = mul i128 %i.bt, 47026247687942121848144207491837523525
  %i.bv = add i128 %i.bu, 1442695040888963407     ; 2 uses
  %i.bw = lshr i128 %i.bv, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.bw to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.bx = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.by = shl nuw i128 %i.bx, 64
  %i.bz = and i128 %i.bv, 18446744073709551615
  %i.ca = or disjoint i128 %i.by, %i.bz
  %i.cb = mul i128 %i.ca, 47026247687942121848144207491837523525
  %i.cc = add i128 %i.cb, 1442695040888963407     ; 2 uses
  %i.cd = trunc i128 %i.cc to i64
  %i.ce = lshr i128 %i.cc, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.ce to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.cf = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.cg = xor i64 %.narrow.i.i.i.i.i.i, %i.cd     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.cg, i64 %i.cg, i64 %i.cf)
  %i.ch = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = load i32, ptr %1, align 8, !tbaa !107
  store i32 %i.cj, ptr %7, align 4, !tbaa !267
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.ci, ptr %i.ck, align 4, !tbaa !271
  %i.cl = invoke { ptr, i8 } @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS2_EEES0_INS8_14_Node_iteratorIS2_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %.fca.0.extract.i.i.i26 = extractvalue { ptr, i8 } %i.cl, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.cm = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i26, i64 8 ; 2 uses
  %i.cn = load <2 x i32>, ptr %1, align 8, !noalias !4114
  %i.co = load <2 x i32>, ptr %i.cm, align 4, !noalias !4114
  %i.cp = icmp eq <2 x i32> %i.cn, %i.co          ; 2 uses
  %14 = extractelement <2 x i1> %i.cp, i64 0
  %15 = extractelement <2 x i1> %i.cp, i64 1
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit31 unwind label %bb.x

bb.u:                                             ; preds = %bb.s
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.220, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.cm)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit31 unwind label %bb.x

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit31: ; preds = %bb.t, %bb.u
  %i.cq = load i8, ptr %8, align 8, !tbaa !139, !range !70, !noundef !71
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.ah, label %bb.y

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit22, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit22 ], [ %i.w, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.am

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.r
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.y:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !140 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i32, label %_ZNK7testing15AssertionResult15failure_messageEv.exit33, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit33

_ZNK7testing15AssertionResult15failure_messageEv.exit33: ; preds = %bb.aa, %bb.z
  %i.cx = phi ptr [ %i.cw, %bb.aa ], [ @.str.134, %bb.z ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 175, ptr noundef %i.cx)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit33
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.cy = load ptr, ptr %9, align 8, !tbaa !142   ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i34, label %_ZN7testing7MessageD2Ev.exit36, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35: ; preds = %bb.ac
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !97
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(128) %i.cy) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit36

_ZN7testing7MessageD2Ev.exit36:                   ; preds = %bb.ac, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit39

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit33
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn12 = phi { ptr, i32 } [ %i.de, %bb.af ], [ %i.dd, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.df = load ptr, ptr %9, align 8, !tbaa !142   ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.df, null
  br i1 %.not.i.i37, label %_ZN7testing7MessageD2Ev.exit39, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38: ; preds = %bb.ag
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !97
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(128) %i.df) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit39

_ZN7testing7MessageD2Ev.exit39:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38, %bb.ag, %bb.ad
  %.pn12.pn = phi { ptr, i32 } [ %i.dc, %bb.ad ], [ %.pn12, %bb.ag ], [ %.pn12, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.ak

bb.ah:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit31, %_ZN7testing7MessageD2Ev.exit36
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !140 ; 4 uses
  %.not.i.i40 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i40, label %_ZN7testing15AssertionResultD2Ev.exit44, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !76 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i41: ; preds = %bb.ai
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !79
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i41
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit44

_ZN7testing15AssertionResultD2Ev.exit44:          ; preds = %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.dq = load ptr, ptr %i.l, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.dq, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7testing15AssertionResultD2Ev.exit44, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i ], [ %i.dq, %_ZN7testing15AssertionResultD2Ev.exit44 ] ; 2 uses
  %i.dr = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit44
  %i.ds = load ptr, ptr %i.i, align 8, !tbaa !129
  %i.dt = load i64, ptr %i.k, align 8, !tbaa !130
  %i.du = shl i64 %i.dt, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ds, i8 0, i64 %i.du, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.dv = load ptr, ptr %i.i, align 8, !tbaa !129 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.j
  br i1 %i.dw, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.dx = load i64, ptr %i.k, align 8, !tbaa !130
  %i.dy = shl i64 %i.dx, 3
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.ak:                                            ; preds = %_ZN7testing7MessageD2Ev.exit39, %bb.x
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn12.pn, %_ZN7testing7MessageD2Ev.exit39 ], [ %i.ct, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.w
  %.pn12.pn.pn.pn = phi { ptr, i32 } [ %.pn12.pn.pn, %bb.ak ], [ %i.cs, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.v, %bb.e
  %.pn12.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn12.pn.pn.pn, %bb.al ], [ %.pn.pn.pn, %bb.v ], [ %i.v, %bb.e ]
  call void @_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn12.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_11EmplaceHintISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.132, i32 noundef 512)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.142, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.143, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_10TryEmplaceISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8TestBodyEv:bb.a
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"struct.std::pair.59", align 4    ; 6 uses
  %13 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = call i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  store i64 %i.b, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.c = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78
  store i64 %i.c, ptr %3, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78 ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78
  store i64 %i.f, ptr %i.e, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i64 1, ptr %i.k, align 8, !tbaa !130
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !131
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = invoke { ptr, i8 } @_ZNSt8__detail12_Insert_baseIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EENS_10_Select1stENS6_20StatefulTestingEqualENS6_19StatefulTestingHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEEE11try_emplaceIRS2_JRiEEES1_INS_14_Node_iteratorIS3_Lb0ELb1EEEbENS_20_Node_const_iteratorIS3_Lb0ELb1EEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr null, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract1 = extractvalue { ptr, i8 } %i.p, 0
  %.fca.1.extract2 = extractvalue { ptr, i8 } %i.p, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store i8 %.fca.1.extract2, ptr %4, align 8, !tbaa !139
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !225
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.r, align 8, !tbaa !227
  %i.s = icmp eq i8 %.fca.1.extract2, 1
  br i1 %i.s, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.148)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %8, align 8, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !80
  store i64 %i.w, ptr %7, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.u, ptr %i.x, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 186, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %7)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  %i.y = load ptr, ptr %8, align 8, !tbaa !76     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !79
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ad = load ptr, ptr %5, align 8, !tbaa !142   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.n, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !97
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(128) %i.ad) #26, !inline_history !4
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit45

bb.j:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.k:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.l ], [ %i.aj, %bb.k ] ; 2 uses
  %i.al = load ptr, ptr %8, align 8, !tbaa !76    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.m
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !79
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %.pn, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.aq = load ptr, ptr %5, align 8, !tbaa !142   ; 3 uses
  %.not.i.i43 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i43, label %_ZN7testing7MessageD2Ev.exit45, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !97
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(128) %i.aq) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit45

_ZN7testing7MessageD2Ev.exit45:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.bk

bb.n:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.pr = load ptr, ptr %i.q, align 8, !tbaa !140  ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %.pr, align 8, !tbaa !76  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !79
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #29
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %bb.b, %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.az = getelementptr inbounds nuw i8, ptr %.fca.0.extract1, i64 8 ; 2 uses
  %i.ba = load <2 x i32>, ptr %1, align 8, !noalias !4169
  %i.bb = load <2 x i32>, ptr %i.az, align 4, !noalias !4169
  %i.bc = icmp eq <2 x i32> %i.ba, %i.bb          ; 2 uses
  %21 = extractelement <2 x i1> %i.bc, i64 0
  %22 = extractelement <2 x i1> %i.bc, i64 1
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

bb.q:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.218, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.az)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.r

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.p, %bb.q
  %i.bd = load i8, ptr %9, align 8, !tbaa !139, !range !70, !noundef !71
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.ab, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !140 ; 2 uses
  %.not.i.i47 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i47, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.u, %bb.t
  %i.bj = phi ptr [ %i.bi, %bb.u ], [ @.str.134, %bb.t ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 187, ptr noundef %i.bj)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.bk = load ptr, ptr %10, align 8, !tbaa !142  ; 3 uses
  %.not.i.i48 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i48, label %_ZN7testing7MessageD2Ev.exit50, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49: ; preds = %bb.w
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !97
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(128) %i.bk) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit50

_ZN7testing7MessageD2Ev.exit50:                   ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit53

bb.y:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn25 = phi { ptr, i32 } [ %i.bq, %bb.z ], [ %i.bp, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.br = load ptr, ptr %10, align 8, !tbaa !142  ; 3 uses
  %.not.i.i51 = icmp eq ptr %i.br, null
  br i1 %.not.i.i51, label %_ZN7testing7MessageD2Ev.exit53, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52: ; preds = %bb.aa
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !97
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(128) %i.br) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit53

_ZN7testing7MessageD2Ev.exit53:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52, %bb.aa, %bb.x
  %.pn25.pn = phi { ptr, i32 } [ %i.bo, %bb.x ], [ %.pn25, %bb.aa ], [ %.pn25, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i52 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  br label %bb.af

bb.ab:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit50
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !140 ; 4 uses
  %.not.i.i54 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i54, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !76 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !79
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.cc = load i32, ptr %i.a, align 16, !tbaa !107
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !107
  %i.cf = zext i32 %i.ce to i64
  %i.cg = shl nuw i64 %i.cf, 32
  %i.ch = zext i32 %i.cc to i128
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !107
  %i.ck = zext i32 %i.cj to i64
  %i.cl = or disjoint i64 %i.cg, %i.ck
  %i.cm = zext i64 %i.cl to i128
  %i.cn = shl nuw i128 %i.ch, 96
  %i.co = shl nuw nsw i128 %i.cm, 32              ; 2 uses
  %i.cp = trunc i128 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !107
  %i.cs = zext i32 %i.cr to i64
  %i.ct = or disjoint i64 %i.cp, %i.cs
  %.masked.i.i.i.i.i.i.i = and i128 %i.co, 79228162495817593519834398720
  %i.cu = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.cn
  %i.cv = zext i64 %i.ct to i128
  %i.cw = add nuw nsw i128 %i.cv, 1442695040888963407 ; 2 uses
  %i.cx = add i128 %i.cu, %i.cw
  %i.cy = lshr i128 %i.cx, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.cy to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.cz = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.da = shl nuw i128 %i.cz, 64
  %i.db = and i128 %i.cw, 18446744073709551615
  %i.dc = or disjoint i128 %i.da, %i.db
  %i.dd = mul i128 %i.dc, 47026247687942121848144207491837523525
  %i.de = add i128 %i.dd, 1442695040888963407     ; 2 uses
  %i.df = lshr i128 %i.de, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.df to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.dg = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.dh = shl nuw i128 %i.dg, 64
  %i.di = and i128 %i.de, 18446744073709551615
  %i.dj = or disjoint i128 %i.dh, %i.di
  %i.dk = mul i128 %i.dj, 47026247687942121848144207491837523525
  %i.dl = add i128 %i.dk, 1442695040888963407     ; 2 uses
  %i.dm = trunc i128 %i.dl to i64
  %i.dn = lshr i128 %i.dl, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.dn to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.do = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.dp = xor i64 %.narrow.i.i.i.i.i.i, %i.dm     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.dp, i64 %i.dp, i64 %i.do)
  %i.dq = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = load i32, ptr %1, align 8, !tbaa !107
  store i32 %i.ds, ptr %12, align 4, !tbaa !267
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  store i32 %i.dr, ptr %i.dt, align 4, !tbaa !271
  %i.du = invoke { ptr, i8 } @_ZNSt8__detail12_Insert_baseIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EENS_10_Select1stENS6_20StatefulTestingEqualENS6_19StatefulTestingHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEEE11try_emplaceIRS2_JRiEEES1_INS_14_Node_iteratorIS3_Lb0ELb1EEEbENS_20_Node_const_iteratorIS3_Lb0ELb1EEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr null, ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 4 dereferenceable(4) %i.dt)
          to label %bb.ae unwind label %bb.ag     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %.fca.0.extract = extractvalue { ptr, i8 } %i.du, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.du, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store i8 %.fca.1.extract, ptr %13, align 8, !tbaa !139
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr null, ptr %i.dv, align 8, !tbaa !225
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i8 0, ptr %i.dw, align 8, !tbaa !227
  %i.dx = icmp eq i8 %.fca.1.extract, 0
  br i1 %i.dx, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77, label %bb.ah

bb.af:                                            ; preds = %_ZN7testing7MessageD2Ev.exit53, %bb.r
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %_ZN7testing7MessageD2Ev.exit53 ], [ %i.bf, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.bk

bb.ag:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.ad
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.147)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.dz = load ptr, ptr %17, align 8, !tbaa !76
  %i.ea = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !80
  store i64 %i.eb, ptr %16, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.dz, ptr %i.ec, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, i64 92, ptr nonnull @.str.82, i32 noundef 190, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %16)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #26
  %i.ed = load ptr, ptr %17, align 8, !tbaa !76   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.al
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !79
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ei = load ptr, ptr %14, align 8, !tbaa !142  ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i64, label %bb.ar, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !97
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(128) %i.ei) #26, !inline_history !4
  br label %bb.ar

bb.am:                                            ; preds = %bb.ah
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit72

bb.an:                                            ; preds = %bb.ai
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.ao:                                            ; preds = %bb.aj
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ak
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #26
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn29 = phi { ptr, i32 } [ %i.ep, %bb.ap ], [ %i.eo, %bb.ao ] ; 2 uses
  %i.eq = load ptr, ptr %17, align 8, !tbaa !76   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.aq
  %i.et = load i64, ptr %i.er, align 8, !tbaa !79
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.an
  %.pn29.pn = phi { ptr, i32 } [ %i.en, %bb.an ], [ %.pn29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %.pn29, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.ev = load ptr, ptr %14, align 8, !tbaa !142  ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i70, label %_ZN7testing7MessageD2Ev.exit72, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !97
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(128) %i.ev) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit72

_ZN7testing7MessageD2Ev.exit72:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %bb.am
  %.pn29.pn.pn = phi { ptr, i32 } [ %i.em, %bb.am ], [ %.pn29.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn29.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i71 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bj

bb.ar:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %.pr105 = load ptr, ptr %i.dv, align 8, !tbaa !140 ; 4 uses
  %.not.i.i.i73 = icmp eq ptr %.pr105, null
  br i1 %.not.i.i.i73, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ez = load ptr, ptr %.pr105, align 8, !tbaa !76 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.pr105, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74: ; preds = %bb.as
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !79
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i75

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i75: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i74
  call void @_ZdlPvm(ptr noundef nonnull %.pr105, i64 noundef 32) #29
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77: ; preds = %bb.ae, %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.fe = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 8 ; 2 uses
  %i.ff = load <2 x i32>, ptr %1, align 8, !noalias !4170
  %i.fg = load <2 x i32>, ptr %i.fe, align 4, !noalias !4170
  %i.fh = icmp eq <2 x i32> %i.ff, %i.fg          ; 2 uses
  %24 = extractelement <2 x i1> %i.fh, i64 0
  %25 = extractelement <2 x i1> %i.fh, i64 1
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %bb.at, label %bb.au

bb.at:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit80 unwind label %bb.av

bb.au:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit77
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.218, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.fe)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit80 unwind label %bb.av

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit80: ; preds = %bb.at, %bb.au
  %i.fi = load i8, ptr %18, align 8, !tbaa !139, !range !70, !noundef !71
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.bf, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit80
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  %i.fl = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !140 ; 2 uses
  %.not.i.i81 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i81, label %_ZNK7testing15AssertionResult15failure_messageEv.exit82, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit82

_ZNK7testing15AssertionResult15failure_messageEv.exit82: ; preds = %bb.ay, %bb.ax
  %i.fo = phi ptr [ %i.fn, %bb.ay ], [ @.str.134, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 191, ptr noundef %i.fo)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit82
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.fp = load ptr, ptr %19, align 8, !tbaa !142  ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i83, label %_ZN7testing7MessageD2Ev.exit85, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84: ; preds = %bb.ba
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !97
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(128) %i.fp) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit85

_ZN7testing7MessageD2Ev.exit85:                   ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit88

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit82
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #26
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn34 = phi { ptr, i32 } [ %i.fv, %bb.bd ], [ %i.fu, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.fw = load ptr, ptr %19, align 8, !tbaa !142  ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i86, label %_ZN7testing7MessageD2Ev.exit88, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %bb.be
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !97
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(128) %i.fw) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit88

_ZN7testing7MessageD2Ev.exit88:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87, %bb.be, %bb.bb
  %.pn34.pn = phi { ptr, i32 } [ %i.ft, %bb.bb ], [ %.pn34, %bb.be ], [ %.pn34, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #26
  br label %bb.bi

bb.bf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit80, %_ZN7testing7MessageD2Ev.exit85
  %i.ga = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !140 ; 4 uses
  %.not.i.i89 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i89, label %_ZN7testing15AssertionResultD2Ev.exit93, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !76 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90: ; preds = %bb.bg
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !79
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gg) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i90
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit93

_ZN7testing15AssertionResultD2Ev.exit93:          ; preds = %bb.bf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.gh = load ptr, ptr %i.l, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7testing15AssertionResultD2Ev.exit93, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.gi, %.lr.ph.i.i.i.i ], [ %i.gh, %_ZN7testing15AssertionResultD2Ev.exit93 ] ; 2 uses
  %i.gi = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit93
  %i.gj = load ptr, ptr %i.i, align 8, !tbaa !129
  %i.gk = load i64, ptr %i.k, align 8, !tbaa !130
  %i.gl = shl i64 %i.gk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.gj, i8 0, i64 %i.gl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.gm = load ptr, ptr %i.i, align 8, !tbaa !129 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.j
  br i1 %i.gn, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.go = load i64, ptr %i.k, align 8, !tbaa !130
  %i.gp = shl i64 %i.go, 3
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.bi:                                            ; preds = %_ZN7testing7MessageD2Ev.exit88, %bb.av
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %_ZN7testing7MessageD2Ev.exit88 ], [ %i.fk, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %_ZN7testing7MessageD2Ev.exit72, %bb.ag
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %bb.bi ], [ %.pn29.pn.pn, %_ZN7testing7MessageD2Ev.exit72 ], [ %i.dy, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.af, %_ZN7testing7MessageD2Ev.exit45, %bb.c
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn, %bb.bj ], [ %.pn25.pn.pn, %bb.af ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit45 ], [ %i.t, %bb.c ]
  call void @_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn34.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_10TryEmplaceISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.132, i32 noundef 512)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.142, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.143, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !97
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN7testing8internal21TypeParameterizedTestIN4absl12lts_2026052618container_internal13ModifiersTestENS0_11TemplateSelINS4_26gtest_suite_ModifiersTest_14TryEmplaceHintEEENS0_5TypesISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESH_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSH_SH_EEEEJEEEE8RegisterEPKcNS0_12CodeLocationEST_ST_iRKSt6vectorISH_SaISH_EE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83: ; preds = %bb.al
  %i.gt = load i64, ptr %i.dj, align 8, !tbaa !79
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #29
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit85

_ZN7testing8internal12CodeLocationD2Ev.exit85:    ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.gp, %bb.ak ], [ %i.gq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83 ], [ %i.gq, %bb.al ] ; 2 uses
  %i.gv = load ptr, ptr %13, align 8, !tbaa !76   ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit85
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !79
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit85, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.aj
  %.pn.pn = phi { ptr, i32 } [ %i.go, %bb.aj ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %.pn, %_ZN7testing8internal12CodeLocationD2Ev.exit85 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.ha = load ptr, ptr %11, align 8, !tbaa !76   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.cy
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88
  %i.hc = load i64, ptr %i.cy, align 8, !tbaa !79
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.ai
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.ai ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ] ; 2 uses
  %i.he = load ptr, ptr %12, align 8, !tbaa !76   ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !79
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92, %bb.ah
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gm, %bb.ah ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.hj = load ptr, ptr %6, align 8, !tbaa !76    ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.by
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.hl = load i64, ptr %i.by, align 8, !tbaa !79
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.ag
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gl, %bb.ag ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 2 uses
  %i.hn = load ptr, ptr %7, align 8, !tbaa !76    ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.bc
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.hp = load i64, ptr %i.bc, align 8, !tbaa !79
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.af
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gk, %bb.af ], [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 2 uses
  %i.hr = load ptr, ptr %8, align 8, !tbaa !76    ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.an
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.ht = load i64, ptr %i.an, align 8, !tbaa !79
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hu) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.ae
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gj, %bb.ae ], [ %.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101 ], [ %.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ] ; 2 uses
  %i.hv = load ptr, ptr %9, align 8, !tbaa !76    ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.w
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.hx = load i64, ptr %i.w, align 8, !tbaa !79
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104, %bb.ad
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gi, %bb.ad ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104 ], [ %.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ]
  %i.hz = load ptr, ptr %10, align 8, !tbaa !76   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.c
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.ib = load i64, ptr %i.c, align 8, !tbaa !79
  %i.ic = add i64 %i.ib, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.ic) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintISt13unordered_mapIiiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintISt13unordered_mapIiiNS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKiiEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !97
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #29
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8TestBodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %1 = alloca %"struct.std::pair.59", align 8     ; 11 uses
  %2 = alloca %"struct.absl::lts_20260526::container_internal::Generator", align 1 ; 3 uses
  %3 = alloca %"class.std::unordered_map", align 8 ; 15 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"struct.std::pair.59", align 4     ; 6 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = call i64 @_ZNK4absl12lts_2026052618container_internal9GeneratorISt4pairIKiiEvEclEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
  store i64 %i.b, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.c = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78 ; 2 uses
  %i.d = add i64 %i.c, 1
  store i64 %i.d, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_19StatefulTestingHashEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78
  store i64 %i.c, ptr %3, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78 ; 2 uses
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr @_ZZN4absl12lts_2026052618container_internal21hash_testing_internal6WithIdINS1_20StatefulTestingEqualEE7next_idIS4_EEmvE3gId, align 8, !tbaa !78
  store i64 %i.f, ptr %i.e, align 8, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i64 1, ptr %i.k, align 8, !tbaa !130
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.m, align 8, !tbaa !131
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = invoke { ptr, i8 } @_ZNSt8__detail12_Insert_baseIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EENS_10_Select1stENS6_20StatefulTestingEqualENS6_19StatefulTestingHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEEE11try_emplaceIRS2_JRiEEES1_INS_14_Node_iteratorIS3_Lb0ELb1EEEbENS_20_Node_const_iteratorIS3_Lb0ELb1EEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr null, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.p, 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.q = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.r = load <2 x i32>, ptr %1, align 8, !noalias !4225
  %i.s = load <2 x i32>, ptr %i.q, align 4, !noalias !4225
  %i.t = icmp eq <2 x i32> %i.r, %i.s             ; 2 uses
  %11 = extractelement <2 x i1> %i.t, i64 0
  %12 = extractelement <2 x i1> %i.t, i64 1
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.220, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.q)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.f

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %bb.c, %bb.d
  %i.u = load i8, ptr %4, align 8, !tbaa !139, !range !70, !noundef !71
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.p, label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.g:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !140  ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.i, %bb.h
  %i.ab = phi ptr [ %i.aa, %bb.i ], [ @.str.134, %bb.h ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 202, ptr noundef %i.ab)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.ac = load ptr, ptr %5, align 8, !tbaa !142   ; 3 uses
  %.not.i.i19 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i19, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !97
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(128) %i.ac) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.p

bb.l:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit22

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.ah, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.aj = load ptr, ptr %5, align 8, !tbaa !142   ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i20, label %_ZN7testing7MessageD2Ev.exit22, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21: ; preds = %bb.o
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !97
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(128) %i.aj) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit22

_ZN7testing7MessageD2Ev.exit22:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21, %bb.o, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %.pn, %bb.o ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i21 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.v

bb.p:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !140 ; 4 uses
  %.not.i.i23 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i23, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !76 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.q
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !79
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  invoke void @_ZN4absl12lts_2026052615random_internal24GetEntropyFromRandenPoolEPvm(ptr noundef nonnull %i.a, i64 noundef 16)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.au = load i32, ptr %i.a, align 16, !tbaa !107
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !107
  %i.ax = zext i32 %i.aw to i64
  %i.ay = shl nuw i64 %i.ax, 32
  %i.az = zext i32 %i.au to i128
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !107
  %i.bc = zext i32 %i.bb to i64
  %i.bd = or disjoint i64 %i.ay, %i.bc
  %i.be = zext i64 %i.bd to i128
  %i.bf = shl nuw i128 %i.az, 96
  %i.bg = shl nuw nsw i128 %i.be, 32              ; 2 uses
  %i.bh = trunc i128 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !107
  %i.bk = zext i32 %i.bj to i64
  %i.bl = or disjoint i64 %i.bh, %i.bk
  %.masked.i.i.i.i.i.i.i = and i128 %i.bg, 79228162495817593519834398720
  %i.bm = or disjoint i128 %.masked.i.i.i.i.i.i.i, %i.bf
  %i.bn = zext i64 %i.bl to i128
  %i.bo = add nuw nsw i128 %i.bn, 1442695040888963407 ; 2 uses
  %i.bp = add i128 %i.bm, %i.bo
  %i.bq = lshr i128 %i.bp, 64
  %.tr.i.i.i.i.i.i.i.i = trunc nuw i128 %i.bq to i64
  %.narrow.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i, 6364136223846793005
  %i.br = zext i64 %.narrow.i.i.i.i.i.i.i.i to i128
  %i.bs = shl nuw i128 %i.br, 64
  %i.bt = and i128 %i.bo, 18446744073709551615
  %i.bu = or disjoint i128 %i.bs, %i.bt
  %i.bv = mul i128 %i.bu, 47026247687942121848144207491837523525
  %i.bw = add i128 %i.bv, 1442695040888963407     ; 2 uses
  %i.bx = lshr i128 %i.bw, 64
  %.tr.i.i.i.i.i.i.i.i.i = trunc nuw i128 %i.bx to i64
  %.narrow.i.i.i.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i.i.i.i, 6364136223846793005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.by = zext i64 %.narrow.i.i.i.i.i.i.i.i.i to i128
  %i.bz = shl nuw i128 %i.by, 64
  %i.ca = and i128 %i.bw, 18446744073709551615
  %i.cb = or disjoint i128 %i.bz, %i.ca
  %i.cc = mul i128 %i.cb, 47026247687942121848144207491837523525
  %i.cd = add i128 %i.cc, 1442695040888963407     ; 2 uses
  %i.ce = trunc i128 %i.cd to i64
  %i.cf = lshr i128 %i.cd, 64
  %.tr.i.i.i.i.i.i = trunc nuw i128 %i.cf to i64
  %.narrow.i.i.i.i.i.i = add i64 %.tr.i.i.i.i.i.i, 6364136223846793005 ; 2 uses
  %i.cg = lshr i64 %.narrow.i.i.i.i.i.i, 58
  %i.ch = xor i64 %.narrow.i.i.i.i.i.i, %i.ce     ; 2 uses
  %.0.i.i.i.i.i.i.i = call noundef i64 @llvm.fshr.i64(i64 %i.ch, i64 %i.ch, i64 %i.cg)
  %i.ci = lshr i64 %.0.i.i.i.i.i.i.i, 33
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = load i32, ptr %1, align 8, !tbaa !107
  store i32 %i.ck, ptr %7, align 4, !tbaa !267
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  store i32 %i.cj, ptr %i.cl, align 4, !tbaa !271
  %i.cm = invoke { ptr, i8 } @_ZNSt8__detail12_Insert_baseIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS3_EENS_10_Select1stENS6_20StatefulTestingEqualENS6_19StatefulTestingHashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEEE11try_emplaceIRS2_JRiEEES1_INS_14_Node_iteratorIS3_Lb0ELb1EEEbENS_20_Node_const_iteratorIS3_Lb0ELb1EEEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr nonnull %.fca.0.extract.i, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.cl)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %.fca.0.extract.i26 = extractvalue { ptr, i8 } %i.cm, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.cn = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i26, i64 8 ; 2 uses
  %i.co = load <2 x i32>, ptr %1, align 8, !noalias !4226
  %i.cp = load <2 x i32>, ptr %i.cn, align 4, !noalias !4226
  %i.cq = icmp eq <2 x i32> %i.co, %i.cp          ; 2 uses
  %14 = extractelement <2 x i1> %i.cq, i64 0
  %15 = extractelement <2 x i1> %i.cq, i64 1
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit31 unwind label %bb.x

bb.u:                                             ; preds = %bb.s
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt4pairIKiiES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %8, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.220, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %i.cn)
          to label %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit31 unwind label %bb.x

_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit31: ; preds = %bb.t, %bb.u
  %i.cr = load i8, ptr %8, align 8, !tbaa !139, !range !70, !noundef !71
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.ah, label %bb.y

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit22, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit22 ], [ %i.x, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.am

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.r
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.y:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !140 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i32, label %_ZNK7testing15AssertionResult15failure_messageEv.exit33, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit33

_ZNK7testing15AssertionResult15failure_messageEv.exit33: ; preds = %bb.aa, %bb.z
  %i.cy = phi ptr [ %i.cx, %bb.aa ], [ @.str.134, %bb.z ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 205, ptr noundef %i.cy)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit33
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.cz = load ptr, ptr %9, align 8, !tbaa !142   ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i34, label %_ZN7testing7MessageD2Ev.exit36, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35: ; preds = %bb.ac
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !97
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(128) %i.cz) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit36

_ZN7testing7MessageD2Ev.exit36:                   ; preds = %bb.ac, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit39

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit33
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn12 = phi { ptr, i32 } [ %i.df, %bb.af ], [ %i.de, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.dg = load ptr, ptr %9, align 8, !tbaa !142   ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i37, label %_ZN7testing7MessageD2Ev.exit39, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38: ; preds = %bb.ag
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !97
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(128) %i.dg) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit39

_ZN7testing7MessageD2Ev.exit39:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38, %bb.ag, %bb.ad
  %.pn12.pn = phi { ptr, i32 } [ %i.dd, %bb.ad ], [ %.pn12, %bb.ag ], [ %.pn12, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i38 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #26
  br label %bb.ak

bb.ah:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt4pairIKiiES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit31, %_ZN7testing7MessageD2Ev.exit36
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !140 ; 4 uses
  %.not.i.i40 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i40, label %_ZN7testing15AssertionResultD2Ev.exit44, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !76 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i41: ; preds = %bb.ai
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !79
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i41
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit44

_ZN7testing15AssertionResultD2Ev.exit44:          ; preds = %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.dr = load ptr, ptr %i.l, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7testing15AssertionResultD2Ev.exit44, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i.i ], [ %i.dr, %_ZN7testing15AssertionResultD2Ev.exit44 ] ; 2 uses
  %i.ds = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !144 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit44
  %i.dt = load ptr, ptr %i.i, align 8, !tbaa !129
  %i.du = load i64, ptr %i.k, align 8, !tbaa !130
  %i.dv = shl i64 %i.du, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dt, i8 0, i64 %i.dv, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.dw = load ptr, ptr %i.i, align 8, !tbaa !129 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.j
  br i1 %i.dx, label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.dy = load i64, ptr %i.k, align 8, !tbaa !130
  %i.dz = shl i64 %i.dy, 3
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #29
  br label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void

bb.ak:                                            ; preds = %_ZN7testing7MessageD2Ev.exit39, %bb.x
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn12.pn, %_ZN7testing7MessageD2Ev.exit39 ], [ %i.cu, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.w
  %.pn12.pn.pn.pn = phi { ptr, i32 } [ %.pn12.pn.pn, %bb.ak ], [ %i.ct, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.v, %bb.e
  %.pn12.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn12.pn.pn.pn, %bb.al ], [ %.pn.pn.pn, %bb.v ], [ %i.w, %bb.e ]
  call void @_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn12.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_14TryEmplaceHintISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_NS4_19StatefulTestingHashENS4_20StatefulTestingEqualENS4_5AllocISt4pairIKSD_SD_EEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.132, i32 noundef 512)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.142, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.143, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_5EraseISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8TestBodyEv:bb.a
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.148)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.iu = load ptr, ptr %13, align 8, !tbaa !76
  %i.iv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !80
  store i64 %i.iw, ptr %12, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.iu, ptr %i.ix, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 2, i64 92, ptr nonnull @.str.82, i32 noundef 239, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %12)
          to label %bb.bk unwind label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.bl unwind label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  %i.iy = load ptr, ptr %13, align 8, !tbaa !76   ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bl
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !79
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.jd = load ptr, ptr %10, align 8, !tbaa !142  ; 3 uses
  %.not.i.i115 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i115, label %_ZN7testing7MessageD2Ev.exit117, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !97
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(128) %i.jd) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit117

_ZN7testing7MessageD2Ev.exit117:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  %i.jh = load ptr, ptr %i.is, align 8, !tbaa !140 ; 4 uses
  %.not.i.i.i118 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i118, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN7testing7MessageD2Ev.exit117
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !76 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 16 ; 2 uses
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.bm
  %i.jl = load i64, ptr %i.jj, align 8, !tbaa !79
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jm) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef 32) #29
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %_ZN7testing7MessageD2Ev.exit117, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.dj

bb.bn:                                            ; preds = %bb.bh
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit124

bb.bo:                                            ; preds = %bb.bi
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

bb.bp:                                            ; preds = %bb.bj
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bk
  %i.jq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn54 = phi { ptr, i32 } [ %i.jq, %bb.bq ], [ %i.jp, %bb.bp ] ; 2 uses
  %i.jr = load ptr, ptr %13, align 8, !tbaa !76   ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.jt = icmp eq ptr %i.jr, %i.js
  br i1 %i.jt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.br
  %i.ju = load i64, ptr %i.js, align 8, !tbaa !79
  %i.jv = add i64 %i.ju, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.jv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, %bb.bo
  %.pn54.pn = phi { ptr, i32 } [ %i.jo, %bb.bo ], [ %.pn54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %.pn54, %bb.br ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.jw = load ptr, ptr %10, align 8, !tbaa !142  ; 3 uses
  %.not.i.i122 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i122, label %_ZN7testing7MessageD2Ev.exit124, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !97
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(128) %i.jw) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit124

_ZN7testing7MessageD2Ev.exit124:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %bb.bn
  %.pn54.pn.pn = phi { ptr, i32 } [ %i.jn, %bb.bn ], [ %.pn54.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %.pn54.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i123 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.do

bb.bs:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 1, ptr %i.a, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %.not5.i.i = icmp eq ptr %.sroa.0246.0.lcssa, %.sroa.10251.0.lcssa ; 2 uses
  br i1 %.not5.i.i, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread, label %.lr.ph.i.i

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread: ; preds = %bb.bs
  store i64 0, ptr %i.b, align 8, !tbaa !78
  br label %bb.bu

.lr.ph.i.i:                                       ; preds = %bb.bs
  %i.ka = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.kb = load <2 x i32>, ptr %i.ka, align 4      ; 3 uses
  %i.kc = add i64 %.sroa.10251.0.lcssa492, -8
  %i.kd = sub i64 %i.kc, %.sroa.0246.0.lcssa491   ; 2 uses
  %i.ke = lshr i64 %i.kd, 3
  %i.kf = add nuw nsw i64 %i.ke, 1                ; 2 uses
  %min.iters.check494 = icmp ult i64 %i.kd, 24
  br i1 %min.iters.check494, label %scalar.ph493.preheader, label %vector.ph495

vector.ph495:                                     ; preds = %.lr.ph.i.i
  %n.vec496 = and i64 %i.kf, 4611686018427387900  ; 3 uses
  %i.kg = shl i64 %n.vec496, 3
  %i.kh = getelementptr i8, ptr %.sroa.0246.0.lcssa, i64 %i.kg
  %broadcast.splat = shufflevector <2 x i32> %i.kb, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splat498 = shufflevector <2 x i32> %i.kb, <2 x i32> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  br label %vector.body499

vector.body499:                                   ; preds = %vector.body499, %vector.ph495
  %index500 = phi i64 [ 0, %vector.ph495 ], [ %index.next508, %vector.body499 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph495 ], [ %i.ks, %vector.body499 ]
  %vec.phi501 = phi <2 x i64> [ zeroinitializer, %vector.ph495 ], [ %i.kt, %vector.body499 ]
  %i.ki = shl i64 %index500, 3                    ; 2 uses
  %next.gep502 = getelementptr i8, ptr %.sroa.0246.0.lcssa, i64 %i.ki
  %i.kj = getelementptr i8, ptr %.sroa.0246.0.lcssa, i64 %i.ki
  %next.gep503 = getelementptr i8, ptr %i.kj, i64 16
  %wide.vec = load <4 x i32>, ptr %next.gep502, align 4 ; 2 uses
  %strided.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec504 = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec505 = load <4 x i32>, ptr %next.gep503, align 4 ; 2 uses
  %strided.vec506 = shufflevector <4 x i32> %wide.vec505, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec507 = shufflevector <4 x i32> %wide.vec505, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.kk = icmp eq <2 x i32> %strided.vec, %broadcast.splat
  %i.kl = icmp eq <2 x i32> %strided.vec506, %broadcast.splat
  %i.km = icmp eq <2 x i32> %strided.vec504, %broadcast.splat498
  %i.kn = icmp eq <2 x i32> %strided.vec507, %broadcast.splat498
  %i.ko = select <2 x i1> %i.kk, <2 x i1> %i.km, <2 x i1> zeroinitializer
  %i.kp = select <2 x i1> %i.kl, <2 x i1> %i.kn, <2 x i1> zeroinitializer
  %i.kq = zext <2 x i1> %i.ko to <2 x i64>
  %i.kr = zext <2 x i1> %i.kp to <2 x i64>
  %i.ks = add <2 x i64> %vec.phi, %i.kq           ; 2 uses
  %i.kt = add <2 x i64> %vec.phi501, %i.kr        ; 2 uses
  %index.next508 = add nuw i64 %index500, 4       ; 2 uses
  %i.ku = icmp eq i64 %index.next508, %n.vec496
  br i1 %i.ku, label %middle.block509, label %vector.body499, !llvm.loop !4296

middle.block509:                                  ; preds = %vector.body499
  %bin.rdx = add <2 x i64> %i.kt, %i.ks
  %i.kv = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n510 = icmp eq i64 %i.kf, %n.vec496
  br i1 %cmp.n510, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit, label %scalar.ph493.preheader

scalar.ph493.preheader:                           ; preds = %.lr.ph.i.i, %middle.block509
  %.07.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %i.kv, %middle.block509 ]
  %.sroa.03.06.i.i.ph = phi ptr [ %.sroa.0246.0.lcssa, %.lr.ph.i.i ], [ %i.kh, %middle.block509 ]
  br label %scalar.ph493

scalar.ph493:                                     ; preds = %scalar.ph493.preheader, %scalar.ph493
  %.07.i.i = phi i64 [ %spec.select.i.i, %scalar.ph493 ], [ %.07.i.i.ph, %scalar.ph493.preheader ]
  %.sroa.03.06.i.i = phi ptr [ %i.kz, %scalar.ph493 ], [ %.sroa.03.06.i.i.ph, %scalar.ph493.preheader ] ; 2 uses
  %i.kw = load <2 x i32>, ptr %.sroa.03.06.i.i, align 4
  %i.kx = icmp eq <2 x i32> %i.kw, %i.kb          ; 2 uses
  %22 = extractelement <2 x i1> %i.kx, i64 0
  %23 = extractelement <2 x i1> %i.kx, i64 1
  %24 = select i1 %22, i1 %23, i1 false
  %i.ky = zext i1 %24 to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.ky ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8 ; 2 uses
  %.not.i.i130 = icmp eq ptr %i.kz, %.sroa.10251.0.lcssa
  br i1 %.not.i.i130, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit, label %scalar.ph493, !llvm.loop !4297

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit: ; preds = %scalar.ph493, %middle.block509
  %spec.select.i.i.lcssa = phi i64 [ %i.kv, %middle.block509 ], [ %spec.select.i.i, %scalar.ph493 ] ; 2 uses
  store i64 %spec.select.i.i.lcssa, ptr %i.b, align 8, !tbaa !78
  %i.la = icmp eq i64 %spec.select.i.i.lcssa, 1
  br i1 %i.la, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bv

bb.bu:                                            ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit.thread, %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPSt4pairIKiiESt6vectorIS4_SaIS4_EEEES4_ENSt15iterator_traitsIT_E15difference_typeESB_SB_RKT0_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.227, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bv

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.lb = load i8, ptr %14, align 8, !tbaa !139, !range !70, !noundef !71
  %i.lc = trunc nuw i8 %i.lb to i1
  br i1 %i.lc, label %bb.cf, label %bb.bw

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.ld = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.cs

bb.bw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.le = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !140 ; 2 uses
  %.not.i.i133 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i133, label %_ZNK7testing15AssertionResult15failure_messageEv.exit134, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit134

_ZNK7testing15AssertionResult15failure_messageEv.exit134: ; preds = %bb.by, %bb.bx
  %i.lh = phi ptr [ %i.lg, %bb.by ], [ @.str.134, %bb.bx ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 240, ptr noundef %i.lh)
          to label %bb.bz unwind label %bb.cc

bb.bz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit134
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.li = load ptr, ptr %15, align 8, !tbaa !142  ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.li, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.ca
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !97
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8
  call void %i.ll(ptr noundef nonnull align 8 dereferenceable(128) %i.li) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %bb.ca, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %bb.cf

bb.cb:                                            ; preds = %bb.bw
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit140

bb.cc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit134
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bz
  %i.lo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #26
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn59 = phi { ptr, i32 } [ %i.lo, %bb.cd ], [ %i.ln, %bb.cc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  %i.lp = load ptr, ptr %15, align 8, !tbaa !142  ; 3 uses
  %.not.i.i138 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i138, label %_ZN7testing7MessageD2Ev.exit140, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139: ; preds = %bb.ce
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !97
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(128) %i.lp) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit140

_ZN7testing7MessageD2Ev.exit140:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139, %bb.ce, %bb.cb
  %.pn59.pn = phi { ptr, i32 } [ %i.lm, %bb.cb ], [ %.pn59, %bb.ce ], [ %.pn59, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #26
  br label %bb.cs

bb.cf:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit137
  %i.lt = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !140 ; 4 uses
  %.not.i.i141 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i141, label %_ZN7testing15AssertionResultD2Ev.exit145, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !76 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 2 uses
  %i.lx = icmp eq ptr %i.lv, %i.lw
  br i1 %i.lx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i142: ; preds = %bb.cg
  %i.ly = load i64, ptr %i.lw, align 8, !tbaa !79
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.lz) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i142
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit145

_ZN7testing15AssertionResultD2Ev.exit145:         ; preds = %bb.cf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  %i.ma = ptrtoint ptr %.sroa.10251.0.lcssa to i64
  %i.mb = ptrtoint ptr %.sroa.0246.0.lcssa to i64
  %i.mc = sub i64 %i.ma, %i.mb                    ; 5 uses
  %i.md = icmp ugt i64 %i.mc, 9223372036854775800
  br i1 %i.md, label %.noexc.i.i.i148, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i

.noexc.i.i.i148:                                  ; preds = %_ZN7testing15AssertionResultD2Ev.exit145
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #28
          to label %.noexc149 unwind label %bb.ct

.noexc149:                                        ; preds = %.noexc.i.i.i148
  unreachable

_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit145
  br i1 %.not5.i.i, label %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i
  %i.me = getelementptr inbounds nuw i8, ptr null, i64 %i.mc
  br label %bb.ch

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i
  %i.mf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mc) #31
          to label %.noexc150 unwind label %bb.ct ; 4 uses

.noexc150:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.mc
  %i.mh = and i64 %i.mc, 9223372036854775800      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mf, ptr align 4 %.sroa.0246.0.lcssa, i64 %i.mh, i1 false), !noalias !4318
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.mf, i64 %i.mh
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i, %.noexc150
  %.sroa.2.0 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %i.mf, %.noexc150 ]
  %.sink.i = phi ptr [ %i.me, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %i.mg, %.noexc150 ]
  %.0.lcssa.i.i.i.i.i.i.i.i147 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %scevgep.i.i.i.i, %.noexc150 ]
  store i32 3, ptr %18, align 8, !tbaa !244, !alias.scope !4319
  %i.mi = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store ptr %.sroa.2.0, ptr %i.mi, align 8, !tbaa !236, !alias.scope !4319
  %i.mj = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i147, ptr %i.mj, align 8, !tbaa !245, !alias.scope !4319
  %i.mk = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 3 uses
  store ptr %.sink.i, ptr %i.mk, align 8, !tbaa !237, !alias.scope !4319
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !4320)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false), !alias.scope !4320
  %i.ml = load i64, ptr %i.bs, align 8, !tbaa !224, !noalias !4320 ; 4 uses
  %i.mm = icmp ugt i64 %i.ml, 1152921504606846975
  br i1 %i.mm, label %.noexc.i162, label %bb.ci

.noexc.i162:                                      ; preds = %bb.ch
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.155) #28
          to label %.noexc163 unwind label %bb.cu

.noexc163:                                        ; preds = %.noexc.i162
  unreachable

bb.ci:                                            ; preds = %bb.ch
  %.not16.i151 = icmp eq i64 %i.ml, 0
  br i1 %.not16.i151, label %_ZNSt6vectorISt4pairIiiESaIS1_EE7reserveEm.exit.i153, label %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.i152

_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i.i152: ; preds = %bb.ci
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2026052618container_internal26gtest_suite_ModifiersTest_8EraseKeyISt13unordered_mapIiiNS1_19StatefulTestingHashENS1_20StatefulTestingEqualENS1_5AllocISt4pairIKiiEEEEE8TestBodyEv:bb.a
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  call void %i.gc(ptr noundef nonnull align 8 dereferenceable(128) %i.fz) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit85

_ZN7testing7MessageD2Ev.exit85:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84, %bb.ao, %bb.al
  %.pn39.pn = phi { ptr, i32 } [ %i.fw, %bb.al ], [ %.pn39, %bb.ao ], [ %.pn39, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i84 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.at

.critedge:                                        ; preds = %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt4pairIKiiEED2Ev.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !140 ; 4 uses
  %.not.i.i86 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i86, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.critedge
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !76 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87: ; preds = %bb.ap
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !79
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i87
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef 32) #29
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i88, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 1, ptr %i.a, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.gk = invoke noundef i64 @_ZNSt10_HashtableIiSt4pairIKiiEN4absl12lts_2026052618container_internal5AllocIS2_EENSt8__detail10_Select1stENS5_20StatefulTestingEqualENS5_19StatefulTestingHashENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.0216.2)
          to label %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEE5eraseERS7_.exit unwind label %bb.au ; 2 uses

_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEE5eraseERS7_.exit: ; preds = %bb.aq
  store i64 %i.gk, ptr %i.b, align 8, !tbaa !78
  %i.gl = load i32, ptr %i.a, align 4, !tbaa !107, !noalias !4507
  %i.gm = sext i32 %i.gl to i64
  %i.gn = icmp eq i64 %i.gk, %i.gm
  br i1 %i.gn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEE5eraseERS7_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.au

bb.as:                                            ; preds = %_ZNSt13unordered_mapIiiN4absl12lts_2026052618container_internal19StatefulTestingHashENS2_20StatefulTestingEqualENS2_5AllocISt4pairIKiiEEEE5eraseERS7_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.229, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.au

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.go = load i8, ptr %9, align 8, !tbaa !139, !range !70, !noundef !71
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.be, label %bb.av

bb.at:                                            ; preds = %_ZN7testing7MessageD2Ev.exit85, %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt4pairIKiiEED2Ev.exit80
  %.pn39.pn.pn = phi { ptr, i32 } [ %.pn39.pn, %_ZN7testing7MessageD2Ev.exit85 ], [ %.pn35.pn.pn, %_ZN7testing8internal32UnorderedElementsAreArrayMatcherISt4pairIKiiEED2Ev.exit80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.dc

bb.au:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.bj

bb.av:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.aw unwind label %bb.ba

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.gr = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !140 ; 2 uses
  %.not.i.i94 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i94, label %_ZNK7testing15AssertionResult15failure_messageEv.exit95, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit95

_ZNK7testing15AssertionResult15failure_messageEv.exit95: ; preds = %bb.ax, %bb.aw
  %i.gu = phi ptr [ %i.gt, %bb.ax ], [ @.str.134, %bb.aw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 262, ptr noundef %i.gu)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.gv = load ptr, ptr %10, align 8, !tbaa !142  ; 3 uses
  %.not.i.i96 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i96, label %_ZN7testing7MessageD2Ev.exit98, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.az
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !97
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8
  call void %i.gy(ptr noundef nonnull align 8 dereferenceable(128) %i.gv) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit98

_ZN7testing7MessageD2Ev.exit98:                   ; preds = %bb.az, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.be

bb.ba:                                            ; preds = %bb.av
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit101

bb.bb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit95
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ay
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #26
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn43 = phi { ptr, i32 } [ %i.hb, %bb.bc ], [ %i.ha, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.hc = load ptr, ptr %10, align 8, !tbaa !142  ; 3 uses
  %.not.i.i99 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i99, label %_ZN7testing7MessageD2Ev.exit101, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100: ; preds = %bb.bd
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !97
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(128) %i.hc) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit101

_ZN7testing7MessageD2Ev.exit101:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100, %bb.bd, %bb.ba
  %.pn43.pn = phi { ptr, i32 } [ %i.gz, %bb.ba ], [ %.pn43, %bb.bd ], [ %.pn43, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  br label %bb.bj

bb.be:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit98
  %i.hg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !140 ; 4 uses
  %.not.i.i102 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i102, label %_ZN7testing15AssertionResultD2Ev.exit106, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !76 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103: ; preds = %bb.bf
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !79
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i103
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit106

_ZN7testing15AssertionResultD2Ev.exit106:         ; preds = %bb.be, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.hn = load ptr, ptr %i.at, align 8, !tbaa !143 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.hn, null
  br i1 %.not5.i.i, label %_ZSt5countINSt8__detail14_Node_iteratorISt4pairIKiiELb0ELb1EEES4_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit.thread, label %.lr.ph.i.i

_ZSt5countINSt8__detail14_Node_iteratorISt4pairIKiiELb0ELb1EEES4_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit.thread: ; preds = %_ZN7testing15AssertionResultD2Ev.exit106
  store i64 0, ptr %i.d, align 8, !tbaa !78
  br label %bb.bh

.lr.ph.i.i:                                       ; preds = %_ZN7testing15AssertionResultD2Ev.exit106
  %i.ho = load <2 x i32>, ptr %.sroa.0216.2, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bg, %.lr.ph.i.i
  %.07.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.bg ]
  %.sroa.03.06.i.i = phi ptr [ %i.hn, %.lr.ph.i.i ], [ %i.ht, %bb.bg ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i, i64 8
  %i.hq = load <2 x i32>, ptr %i.hp, align 4
  %i.hr = icmp eq <2 x i32> %i.hq, %i.ho          ; 2 uses
  %20 = extractelement <2 x i1> %i.hr, i64 0
  %21 = extractelement <2 x i1> %i.hr, i64 1
  %22 = select i1 %20, i1 %21, i1 false
  %i.hs = zext i1 %22 to i64
  %spec.select.i.i = add nuw nsw i64 %.07.i.i, %i.hs ; 3 uses
  %i.ht = load ptr, ptr %.sroa.03.06.i.i, align 8, !tbaa !144 ; 2 uses
  %.not.i.i107 = icmp eq ptr %i.ht, null
  br i1 %.not.i.i107, label %_ZSt5countINSt8__detail14_Node_iteratorISt4pairIKiiELb0ELb1EEES4_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit, label %bb.bg, !llvm.loop !4488

_ZSt5countINSt8__detail14_Node_iteratorISt4pairIKiiELb0ELb1EEES4_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit: ; preds = %bb.bg
  store i64 %spec.select.i.i, ptr %i.d, align 8, !tbaa !78
  %i.hu = icmp eq i64 %spec.select.i.i, 0
  br i1 %i.hu, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZSt5countINSt8__detail14_Node_iteratorISt4pairIKiiELb0ELb1EEES4_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit.thread, %_ZSt5countINSt8__detail14_Node_iteratorISt4pairIKiiELb0ELb1EEES4_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bk

bb.bi:                                            ; preds = %_ZSt5countINSt8__detail14_Node_iteratorISt4pairIKiiELb0ELb1EEES4_ENSt15iterator_traitsIT_E15difference_typeES7_S7_RKT0_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIilEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.230, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bk

_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.bh, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.hv = load i8, ptr %12, align 8, !tbaa !139, !range !70, !noundef !71
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.bu, label %bb.bl

bb.bj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit101, %bb.au
  %.pn43.pn.pn = phi { ptr, i32 } [ %.pn43.pn, %_ZN7testing7MessageD2Ev.exit101 ], [ %i.gq, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.dc

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %bb.ch

bb.bl:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  %i.hy = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !140 ; 2 uses
  %.not.i.i110 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i110, label %_ZNK7testing15AssertionResult15failure_messageEv.exit111, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !76
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit111

_ZNK7testing15AssertionResult15failure_messageEv.exit111: ; preds = %bb.bn, %bb.bm
  %i.ib = phi ptr [ %i.ia, %bb.bn ], [ @.str.134, %bb.bm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.82, i32 noundef 263, ptr noundef %i.ib)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit111
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.bp unwind label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ic = load ptr, ptr %13, align 8, !tbaa !142  ; 3 uses
  %.not.i.i112 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i112, label %_ZN7testing7MessageD2Ev.exit114, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113: ; preds = %bb.bp
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !97
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8
  call void %i.if(ptr noundef nonnull align 8 dereferenceable(128) %i.ic) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit114

_ZN7testing7MessageD2Ev.exit114:                  ; preds = %bb.bp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bl
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit117

bb.br:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit111
  %i.ih = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bo
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #26
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn47 = phi { ptr, i32 } [ %i.ii, %bb.bs ], [ %i.ih, %bb.br ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ij = load ptr, ptr %13, align 8, !tbaa !142  ; 3 uses
  %.not.i.i115 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i115, label %_ZN7testing7MessageD2Ev.exit117, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116: ; preds = %bb.bt
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !97
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(128) %i.ij) #26, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit117

_ZN7testing7MessageD2Ev.exit117:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116, %bb.bt, %bb.bq
  %.pn47.pn = phi { ptr, i32 } [ %i.ig, %bb.bq ], [ %.pn47, %bb.bt ], [ %.pn47, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #26
  br label %bb.ch

bb.bu:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIilTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit114
  %i.in = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !140 ; 4 uses
  %.not.i.i118 = icmp eq ptr %i.io, null
  br i1 %.not.i.i118, label %_ZN7testing15AssertionResultD2Ev.exit122, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !76 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i119: ; preds = %bb.bv
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !79
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.it) #29
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i119
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef 32) #29
  br label %_ZN7testing15AssertionResultD2Ev.exit122

_ZN7testing15AssertionResultD2Ev.exit122:         ; preds = %bb.bu, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0216.2, i64 8 ; 2 uses
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = sub i64 %i.bq, %i.iv                    ; 5 uses
  %i.ix = icmp ugt i64 %i.iw, 9223372036854775800
  br i1 %i.ix, label %.noexc.i.i.i125, label %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i

.noexc.i.i.i125:                                  ; preds = %_ZN7testing15AssertionResultD2Ev.exit122
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.162) #28
          to label %.noexc126 unwind label %bb.ci

.noexc126:                                        ; preds = %.noexc.i.i.i125
  unreachable

_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit122
  %.not.i.i.i.i.i123 = icmp eq ptr %.0.lcssa.i.i.i.i.i.i.i.i.pn, %.sroa.0216.2
  br i1 %.not.i.i.i.i.i123, label %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i, label %.lr.ph.i.i.i.i.preheader.i.i.i.i

_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i: ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr null, i64 %i.iw
  br label %bb.bw

.lr.ph.i.i.i.i.preheader.i.i.i.i:                 ; preds = %_ZNSt6vectorISt4pairIKiiESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i.i.i.i
  %i.iz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iw) #31
          to label %.noexc127 unwind label %bb.ci ; 4 uses

.noexc127:                                        ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.iw
  %i.jb = and i64 %i.iw, 9223372036854775800      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.iz, ptr nonnull align 4 %i.iu, i64 %i.jb, i1 false), !noalias !4508
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.iz, i64 %i.jb
  br label %bb.bw

bb.bw:                                            ; preds = %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i, %.noexc127
  %.sroa.2.0 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %i.iz, %.noexc127 ]
  %.sink.i = phi ptr [ %i.iy, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %i.ja, %.noexc127 ]
  %.0.lcssa.i.i.i.i.i.i.i.i124 = phi ptr [ null, %_ZNSt12_Vector_baseISt4pairIKiiESaIS2_EE11_M_allocateEm.exit.thread.i.i.i.i ], [ %scevgep.i.i.i.i, %.noexc127 ]
  store i32 3, ptr %16, align 8, !tbaa !244, !alias.scope !4509
  %i.jc = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store ptr %.sroa.2.0, ptr %i.jc, align 8, !tbaa !236, !alias.scope !4509
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i124, ptr %i.jd, align 8, !tbaa !245, !alias.scope !4509
  %i.je = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  store ptr %.sink.i, ptr %i.je, align 8, !tbaa !237, !alias.scope !4509
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !4510)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false), !alias.scope !4510
  %i.jf = load i64, ptr %i.bv, align 8, !tbaa !224, !noalias !4510 ; 4 uses
  %i.jg = icmp ugt i64 %i.jf, 1152921504606846975
  br i1 %i.jg, label %.noexc.i139, label %bb.bx

.noexc.i139:                                      ; preds = %bb.bw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.155) #28
          to label %.noexc140 unwind label %bb.cj

.noexc140:                                        ; preds = %.noexc.i139
  unreachable

end_hunk_15
