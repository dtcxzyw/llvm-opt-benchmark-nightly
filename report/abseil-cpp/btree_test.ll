Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 695
loop-unroll.NumUnrolled: 833
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi100ESt4lessIS6_EEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_:bb.a

bb.be:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit70
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14)
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit71

bb.bf:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit70
  call void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull @.str.537, ptr noundef nonnull @.str.291, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit71

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit71: ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  %i.kw = load i8, ptr %14, align 8, !tbaa !842, !range !843, !noundef !844
  %i.kx = trunc nuw i8 %i.kw to i1
  br i1 %i.kx, label %bb.bp, label %bb.bg

bb.bg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.ky = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !845 ; 2 uses
  %.not.i.i72 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i72, label %_ZNK7testing15AssertionResult15failure_messageEv.exit73, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !810
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit73

_ZNK7testing15AssertionResult15failure_messageEv.exit73: ; preds = %bb.bi, %bb.bh
  %i.lb = phi ptr [ %i.la, %bb.bi ], [ @.str.192, %bb.bh ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1345, ptr noundef %i.lb)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit73
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %i.lc = load ptr, ptr %15, align 8, !tbaa !827  ; 3 uses
  %.not.i.i74 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i74, label %_ZN7testing7MessageD2Ev.exit76, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i75

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i75: ; preds = %bb.bk
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !816
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load ptr, ptr %i.le, align 8
  call void %i.lf(ptr noundef nonnull align 8 dereferenceable(128) %i.lc) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit76

_ZN7testing7MessageD2Ev.exit76:                   ; preds = %bb.bk, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bg
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit79

bb.bm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit73
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bj
  %i.li = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #37
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn29 = phi { ptr, i32 } [ %i.li, %bb.bn ], [ %i.lh, %bb.bm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %i.lj = load ptr, ptr %15, align 8, !tbaa !827  ; 3 uses
  %.not.i.i77 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i77, label %_ZN7testing7MessageD2Ev.exit79, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78: ; preds = %bb.bo
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !816
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(128) %i.lj) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit79

_ZN7testing7MessageD2Ev.exit79:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78, %bb.bo, %bb.bl
  %.pn29.pn = phi { ptr, i32 } [ %i.lg, %bb.bl ], [ %.pn29, %bb.bo ], [ %.pn29, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.br

bb.bp:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit71, %_ZN7testing7MessageD2Ev.exit76
  %i.ln = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !845 ; 4 uses
  %.not.i.i80 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i80, label %_ZN7testing15AssertionResultD2Ev.exit84, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !810 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 16 ; 2 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq
  br i1 %i.lr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i81: ; preds = %bb.bq
  %i.ls = load i64, ptr %i.lq, align 8, !tbaa !813
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.lt) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i81
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit84

_ZN7testing15AssertionResultD2Ev.exit84:          ; preds = %bb.bp, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.lu = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  store i32 %i.lu, ptr %i.p, align 4, !tbaa !1421
  %i.lv = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !802
  store i32 %i.lv, ptr %i.jp, align 4, !tbaa !1422
  %i.lw = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_swaps_E, align 4, !tbaa !802
  store i32 %i.lw, ptr %i.ks, align 4, !tbaa !1423
  %i.lx = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance16num_comparisons_E, align 4, !tbaa !802
  store i32 %i.lx, ptr %i.il, align 4, !tbaa !1424
  ret void

bb.br:                                            ; preds = %_ZN7testing7MessageD2Ev.exit79, %_ZN7testing7MessageD2Ev.exit65, %_ZN7testing7MessageD2Ev.exit51, %_ZN7testing7MessageD2Ev.exit41, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit37
  %.pn32 = phi { ptr, i32 } [ %i.hj, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit37 ], [ %.pn29.pn, %_ZN7testing7MessageD2Ev.exit79 ], [ %.pn26.pn, %_ZN7testing7MessageD2Ev.exit65 ], [ %.pn23.pn, %_ZN7testing7MessageD2Ev.exit51 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit41 ]
  resume { ptr, i32 } %.pn32
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISE_EERKS5_PSJ_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.1374", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1506   ; 20 uses
  %.val110 = load ptr, ptr %i.b, align 8, !tbaa !1506 ; 7 uses
  %.val93 = load ptr, ptr %0, align 8, !tbaa !1490
  %.not = icmp eq ptr %i.b, %.val93
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val117 = load i8, ptr %i.c, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val117, 0
  br i1 %.not84, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val117, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val110, i64 48
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1506 ; 14 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 12 uses
  %.val108 = load i8, ptr %i.i, align 1, !tbaa !813 ; 4 uses
  %i.j = icmp ult i8 %.val108, 4
  br i1 %i.j, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 4, %.val108
  %i.k = load i32, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.l = and i32 %i.k, 252
  %i.m = icmp eq i32 %i.l, 0
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n                    ; 7 uses
  %.sroa.speculated143 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 8 uses
  %i.p = and i32 %i.k, 255
  %i.q = zext nneg i8 %.sroa.speculated143 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.p, %i.q
  %narrow156 = add nuw nsw i8 %.sroa.speculated143, %.val108
  %i.r = icmp samesign ult i8 %narrow156, 4
  %or.cond = select i1 %.not85, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i8 %.val108 to i64
  %i.t = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val54.i = load i8, ptr %i.t, align 1, !tbaa !813
  %i.u = zext i8 %.val54.i to i64
  %.val51.i = load ptr, ptr %i.h, align 8, !tbaa !1506
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val51.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1434
  store i32 %i.z, ptr %i.w, align 4, !tbaa !1434
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ac, ptr %i.aa, align 4, !tbaa !1435
  store i8 0, ptr %i.ab, align 4, !tbaa !1435
  %i.ad = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802 ; 2 uses
  %i.ae = add nsw i32 %i.ad, 1                    ; 2 uses
  store i32 %i.ae, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.af = add nsw i32 %i.q, -1                    ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %i.ag, 3            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.af, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSF_PSB_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %.val47.i = load i8, ptr %i.i, align 2, !tbaa !813
  %i.aj = zext i8 %.val47.i to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.aj ; 3 uses
  %i.al = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.am = and i64 %i.al, 8
  %lcmp.mod.not.not = icmp eq i64 %i.am, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i
  %.03.i.i.prol = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.ah, align 4, !tbaa !1434
  store i32 %i.an, ptr %.03.i.i.prol, align 4, !tbaa !1434
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.aq, ptr %i.ao, align 4, !tbaa !1435
  store i8 0, ptr %i.ap, align 8, !tbaa !1435
  %i.ar = add nsw i32 %i.ad, 2                    ; 2 uses
  store i32 %i.ar, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.unr = phi i32 [ %i.ae, %.lr.ph.preheader.i.i ], [ %i.ar, %.lr.ph.i.i.prol ]
  %.03.i.pn.i.unr = phi ptr [ %i.ak, %.lr.ph.preheader.i.i ], [ %.03.i.i.prol, %.lr.ph.i.i.prol ]
  %.0122.i.i.unr = phi ptr [ %i.ah, %.lr.ph.preheader.i.i ], [ %i.as, %.lr.ph.i.i.prol ]
  %i.at = icmp eq i64 %i.al, 0
  br i1 %i.at, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSF_PSB_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.au = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.03.i.pn.i = phi ptr [ %.03.i.i.1, %.lr.ph.i.i ], [ %.03.i.pn.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.0122.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %.0122.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8
  %i.av = load i32, ptr %.0122.i.i, align 4, !tbaa !1434
  store i32 %i.av, ptr %.03.i.i, align 4, !tbaa !1434
  %i.aw = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 4 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ay, ptr %i.aw, align 4, !tbaa !1435
  store i8 0, ptr %i.ax, align 4, !tbaa !1435
  %i.az = add nsw i32 %i.au, 1
  store i32 %i.az, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.ba = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8
  %.03.i.i.1 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 16 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !1434
  store i32 %i.bb, ptr %.03.i.i.1, align 4, !tbaa !1434
  %i.bc = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 12 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.be, ptr %i.bc, align 4, !tbaa !1435
  store i8 0, ptr %i.bd, align 4, !tbaa !1435
  %i.bf = add nsw i32 %i.au, 2                    ; 2 uses
  store i32 %i.bf, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bg = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 16 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.bg, %i.ai
  br i1 %.not.i.i.1, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSF_PSB_.exit.i, label %.lr.ph.i.i, !llvm.loop !391

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSF_PSB_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  %.val53.i = load i8, ptr %i.t, align 8, !tbaa !813
  %i.bh = zext i8 %.val53.i to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !1434
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !1434
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.bn, ptr %i.bl, align 4, !tbaa !1435
  store i8 0, ptr %i.bm, align 4, !tbaa !1435
  %i.bo = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bq = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val49.i = load i8, ptr %i.bq, align 2, !tbaa !813 ; 2 uses
  %i.br = zext i8 %.val49.i to i32
  %i.bs = sub nsw i32 %i.br, %i.q
  %i.bt = sext i32 %i.bs to i64
  %i.bu = zext nneg i8 %.sroa.speculated143 to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bu ; 2 uses
  %.idx.i55.i = shl nuw nsw i64 %i.bt, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i55.i
  %.not1.i56.i = icmp eq i8 %.val49.i, %.sroa.speculated143
  br i1 %.not1.i56.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSF_PSB_.exit62.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSF_PSB_.exit.i, %.lr.ph.i58.i
  %.03.i59.i = phi ptr [ %i.ce, %.lr.ph.i58.i ], [ %i.ah, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSF_PSB_.exit.i ] ; 3 uses
  %.0122.i60.i = phi ptr [ %i.cd, %.lr.ph.i58.i ], [ %i.bv, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSF_PSB_.exit.i ] ; 3 uses
  %i.bx = load i32, ptr %.0122.i60.i, align 4, !tbaa !1434
  store i32 %i.bx, ptr %.03.i59.i, align 4, !tbaa !1434
  %i.by = getelementptr inbounds nuw i8, ptr %.03.i59.i, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.0122.i60.i, i64 4 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ca, ptr %i.by, align 4, !tbaa !1435
  store i8 0, ptr %i.bz, align 4, !tbaa !1435
  %i.cb = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.cd = getelementptr inbounds nuw i8, ptr %.0122.i60.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.03.i59.i, i64 8
  %.not.i61.i = icmp eq ptr %i.cd, %i.bw
  br i1 %.not.i61.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSF_PSB_.exit62.i, label %.lr.ph.i58.i, !llvm.loop !391

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSF_PSB_.exit62.i: ; preds = %.lr.ph.i58.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSF_PSB_.exit.i
  %i.cf = getelementptr i8, ptr %i.h, i64 11
  %.val52.i = load i8, ptr %i.cf, align 1, !tbaa !813
  %.not.i63.i = icmp eq i8 %.val52.i, 0
  br i1 %.not.i63.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE23rebalance_right_to_leftEhPSF_PSB_.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSF_PSB_.exit62.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 7 uses
  %.val46.i = load i8, ptr %i.i, align 2, !tbaa !813
  %i.ci = add i8 %.val46.i, 1                     ; 2 uses
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !1506 ; 3 uses
  %i.ck = zext i8 %i.ci to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !1506
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ci, ptr %i.cm, align 1, !tbaa !813
  store ptr %i.h, ptr %i.cj, align 8, !tbaa !1506
  %exitcond.not.i = icmp samesign ult i8 %i.o, 2
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %.lr.ph.i
  %.val453.i = load i8, ptr %i.bq, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated143
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE23rebalance_right_to_leftEhPSF_PSB_.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %.lr.ph.i
  %.val46.i.1 = load i8, ptr %i.i, align 2, !tbaa !813
  %i.cn = add i8 %.val46.i.1, 2                   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1506 ; 3 uses
  %i.cq = zext i8 %i.cn to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cq
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !1506
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i8 %i.cn, ptr %i.cs, align 1, !tbaa !813
  store ptr %i.h, ptr %i.cp, align 8, !tbaa !1506
  %exitcond.not.i.1 = icmp eq i8 %i.o, 2
  br i1 %exitcond.not.i.1, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val46.i.2 = load i8, ptr %i.i, align 2, !tbaa !813
  %i.ct = add i8 %.val46.i.2, 3                   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1506 ; 3 uses
  %i.cw = zext i8 %i.ct to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cw
  store ptr %i.cv, ptr %i.cx, align 8, !tbaa !1506
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i8 %i.ct, ptr %i.cy, align 1, !tbaa !813
  store ptr %i.h, ptr %i.cv, align 8, !tbaa !1506
  %exitcond.not.i.2 = icmp eq i8 %i.o, 3
  br i1 %exitcond.not.i.2, label %.preheader.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val46.i.3 = load i8, ptr %i.i, align 2, !tbaa !813
  %i.cz = add i8 %.val46.i.3, 4                   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1506 ; 3 uses
  %i.dc = zext i8 %i.cz to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.dc
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !1506
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i8 %i.cz, ptr %i.de, align 1, !tbaa !813
  store ptr %i.h, ptr %i.db, align 8, !tbaa !1506
  %exitcond.not.i.3 = icmp eq i8 %i.o, 4
  br i1 %exitcond.not.i.3, label %.preheader.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val46.i.4 = load i8, ptr %i.i, align 2, !tbaa !813
  %i.df = add i8 %.val46.i.4, 5                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1506 ; 3 uses
  %i.di = zext i8 %i.df to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.di
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !1506
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i8 %i.df, ptr %i.dk, align 1, !tbaa !813
  store ptr %i.h, ptr %i.dh, align 8, !tbaa !1506
  %exitcond.not.i.4 = icmp eq i8 %i.o, 5
  br i1 %exitcond.not.i.4, label %.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val46.i.5 = load i8, ptr %i.i, align 2, !tbaa !813
  %i.dl = add i8 %.val46.i.5, 6                   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !1506 ; 3 uses
  %i.do = zext i8 %i.dl to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.do
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !1506
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE5splitEiPSF_PSB_:bb.a
  br i1 %.not.i24.i, label %bb.e, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE13emplace_valueIJPS5_EEEvhPSB_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE19transfer_n_backwardEmmmPSF_PSB_.exit.i
  %i.cr = zext i8 %i.cp to i32
  %i.cs = add nuw nsw i32 %i.au, 1                ; 2 uses
  %i.ct = icmp samesign ult i32 %i.cs, %i.cr
  br i1 %i.ct, label %.lr.ph.i41, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE13emplace_valueIJPS5_EEEvhPSB_DpOT_.exit

.lr.ph.i41:                                       ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw i8, ptr %.val36, i64 48 ; 10 uses
  %i.cv = zext i8 %i.cp to i64                    ; 4 uses
  %i.cw = zext nneg i32 %i.cs to i64
  %i.cx = xor i64 %i.ax, -1
  %i.cy = add nsw i64 %i.cx, %i.cv
  %i.cz = add nsw i64 %i.cv, -2
  %i.da = sub nsw i64 %i.cz, %i.ax
  %xtraiter10 = and i64 %i.cy, 3                  ; 2 uses
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i41, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.db, %.prol.preheader ], [ %i.cv, %.lr.ph.i41 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i41 ]
  %i.db = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1506 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.prol
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !1506
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !813
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter10
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !10103

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i41
  %indvars.iv.unr = phi i64 [ %i.cv, %.lr.ph.i41 ], [ %i.db, %.prol.preheader ]
  %i.dh = icmp ult i64 %i.da, 3
  br i1 %i.dh, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE13emplace_valueIJPS5_EEEvhPSB_DpOT_.exit, label %.lr.ph.i41.new

.lr.ph.i41.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i41.new
  %indvars.iv = phi i64 [ %i.ea, %.lr.ph.i41.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.di = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1506 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !1506
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = trunc nuw i64 %indvars.iv to i8
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !813
  %i.do = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1506 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.di
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !1506
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dt = trunc nuw i64 %i.di to i8
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !813
  %i.du = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1506 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.do
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !1506
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = trunc nuw i64 %i.do to i8
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !813
  %i.ea = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1506 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.du
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !1506
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = trunc nuw i64 %i.du to i8
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.ea, %i.cw
  br i1 %.wide.3, label %.lr.ph.i41.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE13emplace_valueIJPS5_EEEvhPSB_DpOT_.exit, !llvm.loop !10104

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE13emplace_valueIJPS5_EEEvhPSB_DpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i41.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE19transfer_n_backwardEmmmPSF_PSB_.exit.i, %bb.e
  %.val28 = load i8, ptr %i.f, align 2, !tbaa !813
  %i.eg = zext i8 %.val28 to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eg
  %i.ei = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !802
  %i.ej = add nsw i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !802
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.el = load i8, ptr %i.ek, align 4, !tbaa !1435, !range !843, !noundef !844
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.f, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE13value_destroyEhPSB_.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE13emplace_valueIJPS5_EEEvhPSB_DpOT_.exit
  %i.en = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !802
  %i.eo = add nsw i32 %i.en, -1
  store i32 %i.eo, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !802
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE13value_destroyEhPSB_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE13value_destroyEhPSB_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE13emplace_valueIJPS5_EEEvhPSB_DpOT_.exit, %bb.f
  %.val35 = load ptr, ptr %0, align 8, !tbaa !1506
  %.val38 = load i8, ptr %i.ar, align 8, !tbaa !813
  %i.ep = add i8 %.val38, 1
  %i.eq = getelementptr inbounds nuw i8, ptr %.val35, i64 48
  %i.er = zext i8 %i.ep to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.er
  store ptr %2, ptr %i.es, align 8, !tbaa !1506
  %i.et = getelementptr i8, ptr %0, i64 11
  %.val37 = load i8, ptr %i.et, align 1, !tbaa !813
  %.not.i42 = icmp eq i8 %.val37, 0
  br i1 %.not.i42, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE13value_destroyEhPSB_.exit
  %.val27 = load i8, ptr %i.f, align 2, !tbaa !813
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.0.in3 = phi i8 [ %.val27, %bb.g ], [ %.0, %bb.h ]
  %.0252 = phi i8 [ 0, %bb.g ], [ %i.fc, %bb.h ]  ; 3 uses
  %.0 = add i8 %.0.in3, 1                         ; 2 uses
  %i.ew = zext i8 %.0 to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1506 ; 3 uses
  %i.ez = zext i8 %.0252 to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ez
  store ptr %i.ey, ptr %i.fa, align 8, !tbaa !1506
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i8 %.0252, ptr %i.fb, align 1, !tbaa !813
  store ptr %2, ptr %i.ey, align 8, !tbaa !1506
  %i.fc = add i8 %.0252, 1                        ; 2 uses
  %.val = load i8, ptr %i.g, align 1, !tbaa !813
  %.not = icmp ugt i8 %i.fc, %.val
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !10105

.loopexit:                                        ; preds = %bb.h, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE13value_destroyEhPSB_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISE_EERKS5_PSJ_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.1386", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1510   ; 14 uses
  %.val110 = load ptr, ptr %i.b, align 8, !tbaa !1510 ; 7 uses
  %.val93 = load ptr, ptr %0, align 8, !tbaa !1497
  %.not = icmp eq ptr %i.b, %.val93
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val117 = load i8, ptr %i.c, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val117, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val117, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val110, i64 504
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1510 ; 10 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 8 uses
  %.val108 = load i8, ptr %i.i, align 1, !tbaa !813 ; 4 uses
  %i.j = icmp ult i8 %.val108, 61
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 61, %.val108
  %i.k = load i32, ptr %i.a, align 8, !tbaa !802
  %i.l = and i32 %i.k, 255                        ; 2 uses
  %i.m = icmp samesign ult i32 %i.l, 61
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n                    ; 2 uses
  %.sroa.speculated143 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 9 uses
  %i.p = zext nneg i8 %.sroa.speculated143 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.l, %i.p
  %narrow156 = add nuw nsw i8 %.sroa.speculated143, %.val108
  %i.q = icmp samesign ult i8 %narrow156, 61
  %or.cond = select i1 %.not85, i1 true, i1 %i.q
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = zext nneg i8 %.val108 to i64
  %i.s = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val54.i = load i8, ptr %i.s, align 1, !tbaa !813
  %i.t = zext i8 %.val54.i to i64
  %.val51.i = load ptr, ptr %i.h, align 8, !tbaa !1510
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val51.i, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.t ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1434
  store i32 %i.y, ptr %i.v, align 4, !tbaa !1434
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ab, ptr %i.z, align 4, !tbaa !1435
  store i8 0, ptr %i.aa, align 4, !tbaa !1435
  %i.ac = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802 ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1                    ; 2 uses
  store i32 %i.ad, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.ae = add nsw i32 %i.p, -1                    ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %i.af, 3            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSF_PSB_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %.val47.i = load i8, ptr %i.i, align 2, !tbaa !813
  %i.ai = zext i8 %.val47.i to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ai ; 3 uses
  %i.ak = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.al = and i64 %i.ak, 8
  %lcmp.mod.not.not = icmp eq i64 %i.al, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i
  %.03.i.i.prol = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.ag, align 4, !tbaa !1434
  store i32 %i.am, ptr %.03.i.i.prol, align 4, !tbaa !1434
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ap, ptr %i.an, align 4, !tbaa !1435
  store i8 0, ptr %i.ao, align 8, !tbaa !1435
  %i.aq = add nsw i32 %i.ac, 2                    ; 2 uses
  store i32 %i.aq, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.unr = phi i32 [ %i.ad, %.lr.ph.preheader.i.i ], [ %i.aq, %.lr.ph.i.i.prol ]
  %.03.i.pn.i.unr = phi ptr [ %i.aj, %.lr.ph.preheader.i.i ], [ %.03.i.i.prol, %.lr.ph.i.i.prol ]
  %.0122.i.i.unr = phi ptr [ %i.ag, %.lr.ph.preheader.i.i ], [ %i.ar, %.lr.ph.i.i.prol ]
  %i.as = icmp eq i64 %i.ak, 0
  br i1 %i.as, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSF_PSB_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.at = phi i32 [ %i.be, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.03.i.pn.i = phi ptr [ %.03.i.i.1, %.lr.ph.i.i ], [ %.03.i.pn.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.0122.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.0122.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8
  %i.au = load i32, ptr %.0122.i.i, align 4, !tbaa !1434
  store i32 %i.au, ptr %.03.i.i, align 4, !tbaa !1434
  %i.av = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 4 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ax, ptr %i.av, align 4, !tbaa !1435
  store i8 0, ptr %i.aw, align 4, !tbaa !1435
  %i.ay = add nsw i32 %i.at, 1
  store i32 %i.ay, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.az = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8
  %.03.i.i.1 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 16 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !1434
  store i32 %i.ba, ptr %.03.i.i.1, align 4, !tbaa !1434
  %i.bb = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 20
  %i.bc = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 12 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.bd, ptr %i.bb, align 4, !tbaa !1435
  store i8 0, ptr %i.bc, align 4, !tbaa !1435
  %i.be = add nsw i32 %i.at, 2                    ; 2 uses
  store i32 %i.be, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bf = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 16 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.bf, %i.ah
  br i1 %.not.i.i.1, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSF_PSB_.exit.i, label %.lr.ph.i.i, !llvm.loop !393

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSF_PSB_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  %.val53.i = load i8, ptr %i.s, align 8, !tbaa !813
  %i.bg = zext i8 %.val53.i to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !1434
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !1434
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.bm, ptr %i.bk, align 4, !tbaa !1435
  store i8 0, ptr %i.bl, align 4, !tbaa !1435
  %i.bn = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bp = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val49.i = load i8, ptr %i.bp, align 2, !tbaa !813 ; 2 uses
  %i.bq = zext i8 %.val49.i to i32
  %i.br = sub nsw i32 %i.bq, %i.p
  %i.bs = sext i32 %i.br to i64
  %i.bt = zext nneg i8 %.sroa.speculated143 to i64 ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bt ; 2 uses
  %.idx.i55.i = shl nuw nsw i64 %i.bs, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx.i55.i
  %.not1.i56.i = icmp eq i8 %.val49.i, %.sroa.speculated143
  br i1 %.not1.i56.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSF_PSB_.exit62.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSF_PSB_.exit.i, %.lr.ph.i58.i
  %.03.i59.i = phi ptr [ %i.cd, %.lr.ph.i58.i ], [ %i.ag, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSF_PSB_.exit.i ] ; 3 uses
  %.0122.i60.i = phi ptr [ %i.cc, %.lr.ph.i58.i ], [ %i.bu, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSF_PSB_.exit.i ] ; 3 uses
  %i.bw = load i32, ptr %.0122.i60.i, align 4, !tbaa !1434
  store i32 %i.bw, ptr %.03.i59.i, align 4, !tbaa !1434
  %i.bx = getelementptr inbounds nuw i8, ptr %.03.i59.i, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %.0122.i60.i, i64 4 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.bz, ptr %i.bx, align 4, !tbaa !1435
  store i8 0, ptr %i.by, align 4, !tbaa !1435
  %i.ca = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.cc = getelementptr inbounds nuw i8, ptr %.0122.i60.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.03.i59.i, i64 8
  %.not.i61.i = icmp eq ptr %i.cc, %i.bv
  br i1 %.not.i61.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSF_PSB_.exit62.i, label %.lr.ph.i58.i, !llvm.loop !393

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSF_PSB_.exit62.i: ; preds = %.lr.ph.i58.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSF_PSB_.exit.i
  %i.ce = getelementptr i8, ptr %i.h, i64 11
  %.val52.i = load i8, ptr %i.ce, align 1, !tbaa !813
  %.not.i63.i = icmp eq i8 %.val52.i, 0
  br i1 %.not.i63.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE23rebalance_right_to_leftEhPSF_PSB_.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSF_PSB_.exit62.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 504 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 504 ; 3 uses
  %xtraiter169 = and i64 %i.bt, 1
  %i.ch = icmp samesign ult i8 %i.o, 2
  br i1 %i.ch, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bt, 62
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod171 = trunc i8 %.sroa.speculated143 to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %.val46.i.epil = load i8, ptr %i.i, align 2, !tbaa !813
  %i.ci = trunc i64 %indvars.iv.i.epil.init to i8
  %i.cj = add i8 %i.ci, 1
  %i.ck = add i8 %.val46.i.epil, %i.cj            ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.epil.init
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1510 ; 3 uses
  %i.cn = zext i8 %i.ck to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cn
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !1510
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i8 %i.ck, ptr %i.cp, align 1, !tbaa !813
  store ptr %i.h, ptr %i.cm, align 8, !tbaa !1510
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.bp, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated143
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE23rebalance_right_to_leftEhPSF_PSB_.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cq = trunc nuw i64 %indvars.iv.next.i to i8
  %i.cr = add i8 %.val46.i, %i.cq                 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1510 ; 3 uses
  %i.cu = zext i8 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cu
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !1510
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i8 %i.cr, ptr %i.cw, align 1, !tbaa !813
  store ptr %i.h, ptr %i.ct, align 8, !tbaa !1510
  %.val46.i.1 = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.cx = trunc nuw i64 %indvars.iv.next.i.1 to i8
  %i.cy = add i8 %.val46.i.1, %i.cx               ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1510 ; 3 uses
  %i.db = zext i8 %i.cy to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.db
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !1510
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i8 %i.cy, ptr %i.dd, align 1, !tbaa !813
  store ptr %i.h, ptr %i.da, align 8, !tbaa !1510
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.f, !llvm.loop !10106

.lr.ph6.i:                                        ; preds = %.preheader.i, %.lr.ph6.i
  %.05.i = phi i8 [ %i.dl, %.lr.ph6.i ], [ 0, %.preheader.i ] ; 4 uses
  %i.de = add i8 %.05.i, %.sroa.speculated143
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1510 ; 3 uses
  %i.di = zext i8 %.05.i to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.di
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !1510
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i8 %.05.i, ptr %i.dk, align 1, !tbaa !813
  store ptr %i.b, ptr %i.dh, align 8, !tbaa !1510
  %i.dl = add i8 %.05.i, 1                        ; 2 uses
  %i.dm = zext i8 %i.dl to i32
  %.val45.i = load i8, ptr %i.bp, align 2, !tbaa !813
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE5splitEiPSF_PSB_:bb.a

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE19transfer_n_backwardEmmmPSF_PSB_.exit.i
  %i.cr = zext i8 %i.cp to i32
  %i.cs = add nuw nsw i32 %i.au, 1                ; 2 uses
  %i.ct = icmp samesign ult i32 %i.cs, %i.cr
  br i1 %i.ct, label %.lr.ph.i41, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE13emplace_valueIJPS5_EEEvhPSB_DpOT_.exit

.lr.ph.i41:                                       ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw i8, ptr %.val36, i64 504 ; 10 uses
  %i.cv = zext i8 %i.cp to i64                    ; 4 uses
  %i.cw = zext nneg i32 %i.cs to i64
  %i.cx = xor i64 %i.ax, -1
  %i.cy = add nsw i64 %i.cx, %i.cv
  %i.cz = add nsw i64 %i.cv, -2
  %i.da = sub nsw i64 %i.cz, %i.ax
  %xtraiter10 = and i64 %i.cy, 3                  ; 2 uses
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i41, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.db, %.prol.preheader ], [ %i.cv, %.lr.ph.i41 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i41 ]
  %i.db = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1510 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.prol
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !1510
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !813
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter10
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !10118

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i41
  %indvars.iv.unr = phi i64 [ %i.cv, %.lr.ph.i41 ], [ %i.db, %.prol.preheader ]
  %i.dh = icmp ult i64 %i.da, 3
  br i1 %i.dh, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE13emplace_valueIJPS5_EEEvhPSB_DpOT_.exit, label %.lr.ph.i41.new

.lr.ph.i41.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i41.new
  %indvars.iv = phi i64 [ %i.ea, %.lr.ph.i41.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.di = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1510 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !1510
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = trunc nuw i64 %indvars.iv to i8
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !813
  %i.do = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1510 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.di
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !1510
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dt = trunc nuw i64 %i.di to i8
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !813
  %i.du = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1510 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.do
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !1510
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = trunc nuw i64 %i.do to i8
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !813
  %i.ea = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1510 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.du
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !1510
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = trunc nuw i64 %i.du to i8
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.ea, %i.cw
  br i1 %.wide.3, label %.lr.ph.i41.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE13emplace_valueIJPS5_EEEvhPSB_DpOT_.exit, !llvm.loop !10119

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE13emplace_valueIJPS5_EEEvhPSB_DpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i41.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE19transfer_n_backwardEmmmPSF_PSB_.exit.i, %bb.e
  %.val28 = load i8, ptr %i.f, align 2, !tbaa !813
  %i.eg = zext i8 %.val28 to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eg
  %i.ei = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !802
  %i.ej = add nsw i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !802
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.el = load i8, ptr %i.ek, align 4, !tbaa !1435, !range !843, !noundef !844
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.f, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE13value_destroyEhPSB_.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE13emplace_valueIJPS5_EEEvhPSB_DpOT_.exit
  %i.en = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !802
  %i.eo = add nsw i32 %i.en, -1
  store i32 %i.eo, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !802
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE13value_destroyEhPSB_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE13value_destroyEhPSB_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE13emplace_valueIJPS5_EEEvhPSB_DpOT_.exit, %bb.f
  %.val35 = load ptr, ptr %0, align 8, !tbaa !1510
  %.val38 = load i8, ptr %i.ar, align 8, !tbaa !813
  %i.ep = add i8 %.val38, 1
  %i.eq = getelementptr inbounds nuw i8, ptr %.val35, i64 504
  %i.er = zext i8 %i.ep to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.er
  store ptr %2, ptr %i.es, align 8, !tbaa !1510
  %i.et = getelementptr i8, ptr %0, i64 11
  %.val37 = load i8, ptr %i.et, align 1, !tbaa !813
  %.not.i42 = icmp eq i8 %.val37, 0
  br i1 %.not.i42, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE13value_destroyEhPSB_.exit
  %.val27 = load i8, ptr %i.f, align 2, !tbaa !813
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 504
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.0.in3 = phi i8 [ %.val27, %bb.g ], [ %.0, %bb.h ]
  %.0252 = phi i8 [ 0, %bb.g ], [ %i.fc, %bb.h ]  ; 3 uses
  %.0 = add i8 %.0.in3, 1                         ; 2 uses
  %i.ew = zext i8 %.0 to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1510 ; 3 uses
  %i.ez = zext i8 %.0252 to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ez
  store ptr %i.ey, ptr %i.fa, align 8, !tbaa !1510
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i8 %.0252, ptr %i.fb, align 1, !tbaa !813
  store ptr %2, ptr %i.ey, align 8, !tbaa !1510
  %i.fc = add i8 %.0252, 1                        ; 2 uses
  %.val = load i8, ptr %i.g, align 1, !tbaa !813
  %.not = icmp ugt i8 %i.fc, %.val
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !10120

.loopexit:                                        ; preds = %bb.h, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE13value_destroyEhPSB_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISE_EERKS5_PSJ_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.1398", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1514   ; 14 uses
  %.val110 = load ptr, ptr %i.b, align 8, !tbaa !1514 ; 7 uses
  %.val93 = load ptr, ptr %0, align 8, !tbaa !1504
  %.not = icmp eq ptr %i.b, %.val93
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val117 = load i8, ptr %i.c, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val117, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val117, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val110, i64 816
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1514 ; 10 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 8 uses
  %.val108 = load i8, ptr %i.i, align 1, !tbaa !813 ; 4 uses
  %i.j = icmp ult i8 %.val108, 100
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 100, %.val108
  %i.k = load i32, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.l = and i32 %i.k, 252
  %i.m = icmp samesign ult i32 %i.l, 100
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n                    ; 2 uses
  %.sroa.speculated143 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 9 uses
  %i.p = and i32 %i.k, 255
  %i.q = zext nneg i8 %.sroa.speculated143 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.p, %i.q
  %narrow156 = add nuw i8 %.sroa.speculated143, %.val108
  %i.r = icmp ult i8 %narrow156, 100
  %or.cond = select i1 %.not85, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i8 %.val108 to i64
  %i.t = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val54.i = load i8, ptr %i.t, align 1, !tbaa !813
  %i.u = zext i8 %.val54.i to i64
  %.val51.i = load ptr, ptr %i.h, align 8, !tbaa !1514
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val51.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1434
  store i32 %i.z, ptr %i.w, align 4, !tbaa !1434
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ac, ptr %i.aa, align 4, !tbaa !1435
  store i8 0, ptr %i.ab, align 4, !tbaa !1435
  %i.ad = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802 ; 2 uses
  %i.ae = add nsw i32 %i.ad, 1                    ; 2 uses
  store i32 %i.ae, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.af = add nsw i32 %i.q, -1                    ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %i.ag, 3            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.af, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSF_PSB_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %.val47.i = load i8, ptr %i.i, align 2, !tbaa !813
  %i.aj = zext i8 %.val47.i to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.aj ; 3 uses
  %i.al = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.am = and i64 %i.al, 8
  %lcmp.mod.not.not = icmp eq i64 %i.am, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i
  %.03.i.i.prol = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.ah, align 4, !tbaa !1434
  store i32 %i.an, ptr %.03.i.i.prol, align 4, !tbaa !1434
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.aq, ptr %i.ao, align 4, !tbaa !1435
  store i8 0, ptr %i.ap, align 8, !tbaa !1435
  %i.ar = add nsw i32 %i.ad, 2                    ; 2 uses
  store i32 %i.ar, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.unr = phi i32 [ %i.ae, %.lr.ph.preheader.i.i ], [ %i.ar, %.lr.ph.i.i.prol ]
  %.03.i.pn.i.unr = phi ptr [ %i.ak, %.lr.ph.preheader.i.i ], [ %.03.i.i.prol, %.lr.ph.i.i.prol ]
  %.0122.i.i.unr = phi ptr [ %i.ah, %.lr.ph.preheader.i.i ], [ %i.as, %.lr.ph.i.i.prol ]
  %i.at = icmp eq i64 %i.al, 0
  br i1 %i.at, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSF_PSB_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.au = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.03.i.pn.i = phi ptr [ %.03.i.i.1, %.lr.ph.i.i ], [ %.03.i.pn.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.0122.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %.0122.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8
  %i.av = load i32, ptr %.0122.i.i, align 4, !tbaa !1434
  store i32 %i.av, ptr %.03.i.i, align 4, !tbaa !1434
  %i.aw = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 4 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ay, ptr %i.aw, align 4, !tbaa !1435
  store i8 0, ptr %i.ax, align 4, !tbaa !1435
  %i.az = add nsw i32 %i.au, 1
  store i32 %i.az, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.ba = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8
  %.03.i.i.1 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 16 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !1434
  store i32 %i.bb, ptr %.03.i.i.1, align 4, !tbaa !1434
  %i.bc = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 12 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.be, ptr %i.bc, align 4, !tbaa !1435
  store i8 0, ptr %i.bd, align 4, !tbaa !1435
  %i.bf = add nsw i32 %i.au, 2                    ; 2 uses
  store i32 %i.bf, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bg = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 16 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.bg, %i.ai
  br i1 %.not.i.i.1, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSF_PSB_.exit.i, label %.lr.ph.i.i, !llvm.loop !395

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSF_PSB_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  %.val53.i = load i8, ptr %i.t, align 8, !tbaa !813
  %i.bh = zext i8 %.val53.i to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !1434
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !1434
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.bn, ptr %i.bl, align 4, !tbaa !1435
  store i8 0, ptr %i.bm, align 4, !tbaa !1435
  %i.bo = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bq = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val49.i = load i8, ptr %i.bq, align 2, !tbaa !813 ; 2 uses
  %i.br = zext i8 %.val49.i to i32
  %i.bs = sub nsw i32 %i.br, %i.q
  %i.bt = sext i32 %i.bs to i64
  %i.bu = zext nneg i8 %.sroa.speculated143 to i64 ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bu ; 2 uses
  %.idx.i55.i = shl nuw nsw i64 %i.bt, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i55.i
  %.not1.i56.i = icmp eq i8 %.val49.i, %.sroa.speculated143
  br i1 %.not1.i56.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSF_PSB_.exit62.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSF_PSB_.exit.i, %.lr.ph.i58.i
  %.03.i59.i = phi ptr [ %i.ce, %.lr.ph.i58.i ], [ %i.ah, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSF_PSB_.exit.i ] ; 3 uses
  %.0122.i60.i = phi ptr [ %i.cd, %.lr.ph.i58.i ], [ %i.bv, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSF_PSB_.exit.i ] ; 3 uses
  %i.bx = load i32, ptr %.0122.i60.i, align 4, !tbaa !1434
  store i32 %i.bx, ptr %.03.i59.i, align 4, !tbaa !1434
  %i.by = getelementptr inbounds nuw i8, ptr %.03.i59.i, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.0122.i60.i, i64 4 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ca, ptr %i.by, align 4, !tbaa !1435
  store i8 0, ptr %i.bz, align 4, !tbaa !1435
  %i.cb = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.cd = getelementptr inbounds nuw i8, ptr %.0122.i60.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.03.i59.i, i64 8
  %.not.i61.i = icmp eq ptr %i.cd, %i.bw
  br i1 %.not.i61.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSF_PSB_.exit62.i, label %.lr.ph.i58.i, !llvm.loop !395

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSF_PSB_.exit62.i: ; preds = %.lr.ph.i58.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSF_PSB_.exit.i
  %i.cf = getelementptr i8, ptr %i.h, i64 11
  %.val52.i = load i8, ptr %i.cf, align 1, !tbaa !813
  %.not.i63.i = icmp eq i8 %.val52.i, 0
  br i1 %.not.i63.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE23rebalance_right_to_leftEhPSF_PSB_.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSF_PSB_.exit62.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 816 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 816 ; 3 uses
  %xtraiter169 = and i64 %i.bu, 1
  %i.ci = icmp samesign ult i8 %i.o, 2
  br i1 %i.ci, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bu, 126
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod171 = trunc i8 %.sroa.speculated143 to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %.val46.i.epil = load i8, ptr %i.i, align 2, !tbaa !813
  %i.cj = trunc i64 %indvars.iv.i.epil.init to i8
  %i.ck = add i8 %i.cj, 1
  %i.cl = add i8 %.val46.i.epil, %i.ck            ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i.epil.init
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1514 ; 3 uses
  %i.co = zext i8 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.co
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !1514
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i8 %i.cl, ptr %i.cq, align 1, !tbaa !813
  store ptr %i.h, ptr %i.cn, align 8, !tbaa !1514
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.bq, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated143
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE23rebalance_right_to_leftEhPSF_PSB_.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cr = trunc nuw i64 %indvars.iv.next.i to i8
  %i.cs = add i8 %.val46.i, %i.cr                 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1514 ; 3 uses
  %i.cv = zext i8 %i.cs to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !1514
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %i.cs, ptr %i.cx, align 1, !tbaa !813
  store ptr %i.h, ptr %i.cu, align 8, !tbaa !1514
  %.val46.i.1 = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.cy = trunc nuw i64 %indvars.iv.next.i.1 to i8
  %i.cz = add i8 %.val46.i.1, %i.cy               ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next.i
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1514 ; 3 uses
  %i.dc = zext i8 %i.cz to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.dc
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !1514
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i8 %i.cz, ptr %i.de, align 1, !tbaa !813
  store ptr %i.h, ptr %i.db, align 8, !tbaa !1514
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.f, !llvm.loop !10121

.lr.ph6.i:                                        ; preds = %.preheader.i, %.lr.ph6.i
  %.05.i = phi i8 [ %i.dm, %.lr.ph6.i ], [ 0, %.preheader.i ] ; 4 uses
  %i.df = add i8 %.05.i, %.sroa.speculated143
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1514 ; 3 uses
  %i.dj = zext i8 %.05.i to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.dj
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !1514
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i8 %.05.i, ptr %i.dl, align 1, !tbaa !813
  store ptr %i.b, ptr %i.di, align 8, !tbaa !1514
  %i.dm = add i8 %.05.i, 1                        ; 2 uses
  %i.dn = zext i8 %i.dm to i32
  %.val45.i = load i8, ptr %i.bq, align 2, !tbaa !813
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi100ENS2_34MovableOnlyInstanceThreeWayCompareEEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_:bb.a

bb.bf:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit70
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14)
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit71

bb.bg:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit70
  call void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull @.str.537, ptr noundef nonnull @.str.291, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit71

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit71: ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #37
  %i.jw = load i8, ptr %14, align 8, !tbaa !842, !range !843, !noundef !844
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %bb.bq, label %bb.bh

bb.bh:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bi unwind label %bb.bm

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.jy = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !845 ; 2 uses
  %.not.i.i72 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i72, label %_ZNK7testing15AssertionResult15failure_messageEv.exit73, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !810
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit73

_ZNK7testing15AssertionResult15failure_messageEv.exit73: ; preds = %bb.bj, %bb.bi
  %i.kb = phi ptr [ %i.ka, %bb.bj ], [ @.str.192, %bb.bi ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1345, ptr noundef %i.kb)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit73
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %i.kc = load ptr, ptr %15, align 8, !tbaa !827  ; 3 uses
  %.not.i.i74 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i74, label %_ZN7testing7MessageD2Ev.exit76, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i75

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i75: ; preds = %bb.bl
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !816
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit76

_ZN7testing7MessageD2Ev.exit76:                   ; preds = %bb.bl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bh
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit79

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit73
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bk
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #37
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn29 = phi { ptr, i32 } [ %i.ki, %bb.bo ], [ %i.kh, %bb.bn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %i.kj = load ptr, ptr %15, align 8, !tbaa !827  ; 3 uses
  %.not.i.i77 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i77, label %_ZN7testing7MessageD2Ev.exit79, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78: ; preds = %bb.bp
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !816
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %i.km = load ptr, ptr %i.kl, align 8
  call void %i.km(ptr noundef nonnull align 8 dereferenceable(128) %i.kj) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit79

_ZN7testing7MessageD2Ev.exit79:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78, %bb.bp, %bb.bm
  %.pn29.pn = phi { ptr, i32 } [ %i.kg, %bb.bm ], [ %.pn29, %bb.bp ], [ %.pn29, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i78 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  br label %bb.bs

bb.bq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit71, %_ZN7testing7MessageD2Ev.exit76
  %i.kn = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !845 ; 4 uses
  %.not.i.i80 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i80, label %_ZN7testing15AssertionResultD2Ev.exit84, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !810 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 16 ; 2 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  br i1 %i.kr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i81: ; preds = %bb.br
  %i.ks = load i64, ptr %i.kq, align 8, !tbaa !813
  %i.kt = add i64 %i.ks, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.kt) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i81
  call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit84

_ZN7testing15AssertionResultD2Ev.exit84:          ; preds = %bb.bq, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %i.ku = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  store i32 %i.ku, ptr %i.p, align 4, !tbaa !1421
  %i.kv = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !802
  store i32 %i.kv, ptr %i.ip, align 4, !tbaa !1422
  %i.kw = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_swaps_E, align 4, !tbaa !802
  store i32 %i.kw, ptr %i.js, align 4, !tbaa !1423
  %i.kx = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance16num_comparisons_E, align 4, !tbaa !802
  store i32 %i.kx, ptr %i.hl, align 4, !tbaa !1424
  ret void

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit79, %_ZN7testing7MessageD2Ev.exit65, %_ZN7testing7MessageD2Ev.exit51, %_ZN7testing7MessageD2Ev.exit41, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit37
  %.pn32 = phi { ptr, i32 } [ %i.gj, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit37 ], [ %.pn29.pn, %_ZN7testing7MessageD2Ev.exit79 ], [ %.pn26.pn, %_ZN7testing7MessageD2Ev.exit65 ], [ %.pn23.pn, %_ZN7testing7MessageD2Ev.exit51 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit41 ]
  resume { ptr, i32 } %.pn32
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISD_EERKS5_PSI_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.1441", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1539   ; 20 uses
  %.val110 = load ptr, ptr %i.b, align 8, !tbaa !1539 ; 7 uses
  %.val93 = load ptr, ptr %0, align 8, !tbaa !1523
  %.not = icmp eq ptr %i.b, %.val93
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val117 = load i8, ptr %i.c, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val117, 0
  br i1 %.not84, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val117, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val110, i64 48
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1539 ; 14 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 12 uses
  %.val108 = load i8, ptr %i.i, align 1, !tbaa !813 ; 4 uses
  %i.j = icmp ult i8 %.val108, 4
  br i1 %i.j, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 4, %.val108
  %i.k = load i32, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.l = and i32 %i.k, 252
  %i.m = icmp eq i32 %i.l, 0
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n                    ; 7 uses
  %.sroa.speculated143 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 8 uses
  %i.p = and i32 %i.k, 255
  %i.q = zext nneg i8 %.sroa.speculated143 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.p, %i.q
  %narrow156 = add nuw nsw i8 %.sroa.speculated143, %.val108
  %i.r = icmp samesign ult i8 %narrow156, 4
  %or.cond = select i1 %.not85, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i8 %.val108 to i64
  %i.t = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val54.i = load i8, ptr %i.t, align 1, !tbaa !813
  %i.u = zext i8 %.val54.i to i64
  %.val51.i = load ptr, ptr %i.h, align 8, !tbaa !1539
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val51.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1434
  store i32 %i.z, ptr %i.w, align 4, !tbaa !1434
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ac, ptr %i.aa, align 4, !tbaa !1435
  store i8 0, ptr %i.ab, align 4, !tbaa !1435
  %i.ad = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802 ; 2 uses
  %i.ae = add nsw i32 %i.ad, 1                    ; 2 uses
  store i32 %i.ae, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.af = add nsw i32 %i.q, -1                    ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %i.ag, 3            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.af, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSE_PSA_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %.val47.i = load i8, ptr %i.i, align 2, !tbaa !813
  %i.aj = zext i8 %.val47.i to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.aj ; 3 uses
  %i.al = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.am = and i64 %i.al, 8
  %lcmp.mod.not.not = icmp eq i64 %i.am, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i
  %.03.i.i.prol = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.ah, align 4, !tbaa !1434
  store i32 %i.an, ptr %.03.i.i.prol, align 4, !tbaa !1434
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.aq, ptr %i.ao, align 4, !tbaa !1435
  store i8 0, ptr %i.ap, align 8, !tbaa !1435
  %i.ar = add nsw i32 %i.ad, 2                    ; 2 uses
  store i32 %i.ar, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.unr = phi i32 [ %i.ae, %.lr.ph.preheader.i.i ], [ %i.ar, %.lr.ph.i.i.prol ]
  %.03.i.pn.i.unr = phi ptr [ %i.ak, %.lr.ph.preheader.i.i ], [ %.03.i.i.prol, %.lr.ph.i.i.prol ]
  %.0122.i.i.unr = phi ptr [ %i.ah, %.lr.ph.preheader.i.i ], [ %i.as, %.lr.ph.i.i.prol ]
  %i.at = icmp eq i64 %i.al, 0
  br i1 %i.at, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSE_PSA_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.au = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.03.i.pn.i = phi ptr [ %.03.i.i.1, %.lr.ph.i.i ], [ %.03.i.pn.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.0122.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %.0122.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8
  %i.av = load i32, ptr %.0122.i.i, align 4, !tbaa !1434
  store i32 %i.av, ptr %.03.i.i, align 4, !tbaa !1434
  %i.aw = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 4 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ay, ptr %i.aw, align 4, !tbaa !1435
  store i8 0, ptr %i.ax, align 4, !tbaa !1435
  %i.az = add nsw i32 %i.au, 1
  store i32 %i.az, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.ba = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8
  %.03.i.i.1 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 16 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !1434
  store i32 %i.bb, ptr %.03.i.i.1, align 4, !tbaa !1434
  %i.bc = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 12 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.be, ptr %i.bc, align 4, !tbaa !1435
  store i8 0, ptr %i.bd, align 4, !tbaa !1435
  %i.bf = add nsw i32 %i.au, 2                    ; 2 uses
  store i32 %i.bf, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bg = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 16 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.bg, %i.ai
  br i1 %.not.i.i.1, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSE_PSA_.exit.i, label %.lr.ph.i.i, !llvm.loop !397

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSE_PSA_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  %.val53.i = load i8, ptr %i.t, align 8, !tbaa !813
  %i.bh = zext i8 %.val53.i to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !1434
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !1434
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.bn, ptr %i.bl, align 4, !tbaa !1435
  store i8 0, ptr %i.bm, align 4, !tbaa !1435
  %i.bo = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bq = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val49.i = load i8, ptr %i.bq, align 2, !tbaa !813 ; 2 uses
  %i.br = zext i8 %.val49.i to i32
  %i.bs = sub nsw i32 %i.br, %i.q
  %i.bt = sext i32 %i.bs to i64
  %i.bu = zext nneg i8 %.sroa.speculated143 to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bu ; 2 uses
  %.idx.i55.i = shl nuw nsw i64 %i.bt, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i55.i
  %.not1.i56.i = icmp eq i8 %.val49.i, %.sroa.speculated143
  br i1 %.not1.i56.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSE_PSA_.exit62.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSE_PSA_.exit.i, %.lr.ph.i58.i
  %.03.i59.i = phi ptr [ %i.ce, %.lr.ph.i58.i ], [ %i.ah, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSE_PSA_.exit.i ] ; 3 uses
  %.0122.i60.i = phi ptr [ %i.cd, %.lr.ph.i58.i ], [ %i.bv, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSE_PSA_.exit.i ] ; 3 uses
  %i.bx = load i32, ptr %.0122.i60.i, align 4, !tbaa !1434
  store i32 %i.bx, ptr %.03.i59.i, align 4, !tbaa !1434
  %i.by = getelementptr inbounds nuw i8, ptr %.03.i59.i, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.0122.i60.i, i64 4 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ca, ptr %i.by, align 4, !tbaa !1435
  store i8 0, ptr %i.bz, align 4, !tbaa !1435
  %i.cb = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.cd = getelementptr inbounds nuw i8, ptr %.0122.i60.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.03.i59.i, i64 8
  %.not.i61.i = icmp eq ptr %i.cd, %i.bw
  br i1 %.not.i61.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSE_PSA_.exit62.i, label %.lr.ph.i58.i, !llvm.loop !397

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSE_PSA_.exit62.i: ; preds = %.lr.ph.i58.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSE_PSA_.exit.i
  %i.cf = getelementptr i8, ptr %i.h, i64 11
  %.val52.i = load i8, ptr %i.cf, align 1, !tbaa !813
  %.not.i63.i = icmp eq i8 %.val52.i, 0
  br i1 %.not.i63.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE23rebalance_right_to_leftEhPSE_PSA_.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE10transfer_nEmmmPSE_PSA_.exit62.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 7 uses
  %.val46.i = load i8, ptr %i.i, align 2, !tbaa !813
  %i.ci = add i8 %.val46.i, 1                     ; 2 uses
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !1539 ; 3 uses
  %i.ck = zext i8 %i.ci to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !1539
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ci, ptr %i.cm, align 1, !tbaa !813
  store ptr %i.h, ptr %i.cj, align 8, !tbaa !1539
  %exitcond.not.i = icmp samesign ult i8 %i.o, 2
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.f

.preheader.i:                                     ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %.lr.ph.i
  %.val453.i = load i8, ptr %i.bq, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated143
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE23rebalance_right_to_leftEhPSE_PSA_.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %.lr.ph.i
  %.val46.i.1 = load i8, ptr %i.i, align 2, !tbaa !813
  %i.cn = add i8 %.val46.i.1, 2                   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1539 ; 3 uses
  %i.cq = zext i8 %i.cn to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cq
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !1539
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store i8 %i.cn, ptr %i.cs, align 1, !tbaa !813
  store ptr %i.h, ptr %i.cp, align 8, !tbaa !1539
  %exitcond.not.i.1 = icmp eq i8 %i.o, 2
  br i1 %exitcond.not.i.1, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val46.i.2 = load i8, ptr %i.i, align 2, !tbaa !813
  %i.ct = add i8 %.val46.i.2, 3                   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1539 ; 3 uses
  %i.cw = zext i8 %i.ct to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cw
  store ptr %i.cv, ptr %i.cx, align 8, !tbaa !1539
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i8 %i.ct, ptr %i.cy, align 1, !tbaa !813
  store ptr %i.h, ptr %i.cv, align 8, !tbaa !1539
  %exitcond.not.i.2 = icmp eq i8 %i.o, 3
  br i1 %exitcond.not.i.2, label %.preheader.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val46.i.3 = load i8, ptr %i.i, align 2, !tbaa !813
  %i.cz = add i8 %.val46.i.3, 4                   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1539 ; 3 uses
  %i.dc = zext i8 %i.cz to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.dc
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !1539
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i8 %i.cz, ptr %i.de, align 1, !tbaa !813
  store ptr %i.h, ptr %i.db, align 8, !tbaa !1539
  %exitcond.not.i.3 = icmp eq i8 %i.o, 4
  br i1 %exitcond.not.i.3, label %.preheader.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val46.i.4 = load i8, ptr %i.i, align 2, !tbaa !813
  %i.df = add i8 %.val46.i.4, 5                   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1539 ; 3 uses
  %i.di = zext i8 %i.df to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.di
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !1539
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i8 %i.df, ptr %i.dk, align 1, !tbaa !813
  store ptr %i.h, ptr %i.dh, align 8, !tbaa !1539
  %exitcond.not.i.4 = icmp eq i8 %i.o, 5
  br i1 %exitcond.not.i.4, label %.preheader.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val46.i.5 = load i8, ptr %i.i, align 2, !tbaa !813
  %i.dl = add i8 %.val46.i.5, 6                   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !1539 ; 3 uses
  %i.do = zext i8 %i.dl to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.do
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !1539
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE5splitEiPSE_PSA_:bb.a
  br i1 %.not.i24.i, label %bb.e, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE13emplace_valueIJPS5_EEEvhPSA_DpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE19transfer_n_backwardEmmmPSE_PSA_.exit.i
  %i.cr = zext i8 %i.cp to i32
  %i.cs = add nuw nsw i32 %i.au, 1                ; 2 uses
  %i.ct = icmp samesign ult i32 %i.cs, %i.cr
  br i1 %i.ct, label %.lr.ph.i41, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE13emplace_valueIJPS5_EEEvhPSA_DpOT_.exit

.lr.ph.i41:                                       ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw i8, ptr %.val36, i64 48 ; 10 uses
  %i.cv = zext i8 %i.cp to i64                    ; 4 uses
  %i.cw = zext nneg i32 %i.cs to i64
  %i.cx = xor i64 %i.ax, -1
  %i.cy = add nsw i64 %i.cx, %i.cv
  %i.cz = add nsw i64 %i.cv, -2
  %i.da = sub nsw i64 %i.cz, %i.ax
  %xtraiter10 = and i64 %i.cy, 3                  ; 2 uses
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i41, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.db, %.prol.preheader ], [ %i.cv, %.lr.ph.i41 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i41 ]
  %i.db = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1539 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.prol
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !1539
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !813
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter10
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !10216

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i41
  %indvars.iv.unr = phi i64 [ %i.cv, %.lr.ph.i41 ], [ %i.db, %.prol.preheader ]
  %i.dh = icmp ult i64 %i.da, 3
  br i1 %i.dh, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE13emplace_valueIJPS5_EEEvhPSA_DpOT_.exit, label %.lr.ph.i41.new

.lr.ph.i41.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i41.new
  %indvars.iv = phi i64 [ %i.ea, %.lr.ph.i41.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.di = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1539 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !1539
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = trunc nuw i64 %indvars.iv to i8
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !813
  %i.do = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1539 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.di
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !1539
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dt = trunc nuw i64 %i.di to i8
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !813
  %i.du = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1539 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.do
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !1539
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = trunc nuw i64 %i.do to i8
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !813
  %i.ea = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1539 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.du
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !1539
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = trunc nuw i64 %i.du to i8
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.ea, %i.cw
  br i1 %.wide.3, label %.lr.ph.i41.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE13emplace_valueIJPS5_EEEvhPSA_DpOT_.exit, !llvm.loop !10217

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE13emplace_valueIJPS5_EEEvhPSA_DpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i41.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE19transfer_n_backwardEmmmPSE_PSA_.exit.i, %bb.e
  %.val28 = load i8, ptr %i.f, align 2, !tbaa !813
  %i.eg = zext i8 %.val28 to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eg
  %i.ei = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !802
  %i.ej = add nsw i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !802
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.el = load i8, ptr %i.ek, align 4, !tbaa !1435, !range !843, !noundef !844
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.f, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE13value_destroyEhPSA_.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE13emplace_valueIJPS5_EEEvhPSA_DpOT_.exit
  %i.en = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !802
  %i.eo = add nsw i32 %i.en, -1
  store i32 %i.eo, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !802
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE13value_destroyEhPSA_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE13value_destroyEhPSA_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE13emplace_valueIJPS5_EEEvhPSA_DpOT_.exit, %bb.f
  %.val35 = load ptr, ptr %0, align 8, !tbaa !1539
  %.val38 = load i8, ptr %i.ar, align 8, !tbaa !813
  %i.ep = add i8 %.val38, 1
  %i.eq = getelementptr inbounds nuw i8, ptr %.val35, i64 48
  %i.er = zext i8 %i.ep to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.er
  store ptr %2, ptr %i.es, align 8, !tbaa !1539
  %i.et = getelementptr i8, ptr %0, i64 11
  %.val37 = load i8, ptr %i.et, align 1, !tbaa !813
  %.not.i42 = icmp eq i8 %.val37, 0
  br i1 %.not.i42, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE13value_destroyEhPSA_.exit
  %.val27 = load i8, ptr %i.f, align 2, !tbaa !813
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.0.in3 = phi i8 [ %.val27, %bb.g ], [ %.0, %bb.h ]
  %.0252 = phi i8 [ 0, %bb.g ], [ %i.fc, %bb.h ]  ; 3 uses
  %.0 = add i8 %.0.in3, 1                         ; 2 uses
  %i.ew = zext i8 %.0 to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1539 ; 3 uses
  %i.ez = zext i8 %.0252 to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ez
  store ptr %i.ey, ptr %i.fa, align 8, !tbaa !1539
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i8 %.0252, ptr %i.fb, align 1, !tbaa !813
  store ptr %2, ptr %i.ey, align 8, !tbaa !1539
  %i.fc = add i8 %.0252, 1                        ; 2 uses
  %.val = load i8, ptr %i.g, align 1, !tbaa !813
  %.not = icmp ugt i8 %i.fc, %.val
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !10218

.loopexit:                                        ; preds = %bb.h, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE13value_destroyEhPSA_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISD_EERKS5_PSI_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.1454", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1543   ; 14 uses
  %.val110 = load ptr, ptr %i.b, align 8, !tbaa !1543 ; 7 uses
  %.val93 = load ptr, ptr %0, align 8, !tbaa !1530
  %.not = icmp eq ptr %i.b, %.val93
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val117 = load i8, ptr %i.c, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val117, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val117, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val110, i64 504
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1543 ; 10 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 8 uses
  %.val108 = load i8, ptr %i.i, align 1, !tbaa !813 ; 4 uses
  %i.j = icmp ult i8 %.val108, 61
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 61, %.val108
  %i.k = load i32, ptr %i.a, align 8, !tbaa !802
  %i.l = and i32 %i.k, 255                        ; 2 uses
  %i.m = icmp samesign ult i32 %i.l, 61
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n                    ; 2 uses
  %.sroa.speculated143 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 9 uses
  %i.p = zext nneg i8 %.sroa.speculated143 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.l, %i.p
  %narrow156 = add nuw nsw i8 %.sroa.speculated143, %.val108
  %i.q = icmp samesign ult i8 %narrow156, 61
  %or.cond = select i1 %.not85, i1 true, i1 %i.q
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = zext nneg i8 %.val108 to i64
  %i.s = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val54.i = load i8, ptr %i.s, align 1, !tbaa !813
  %i.t = zext i8 %.val54.i to i64
  %.val51.i = load ptr, ptr %i.h, align 8, !tbaa !1543
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.r ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val51.i, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.t ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !1434
  store i32 %i.y, ptr %i.v, align 4, !tbaa !1434
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ab, ptr %i.z, align 4, !tbaa !1435
  store i8 0, ptr %i.aa, align 4, !tbaa !1435
  %i.ac = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802 ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1                    ; 2 uses
  store i32 %i.ad, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.ae = add nsw i32 %i.p, -1                    ; 2 uses
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %i.af, 3            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSE_PSA_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %.val47.i = load i8, ptr %i.i, align 2, !tbaa !813
  %i.ai = zext i8 %.val47.i to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ai ; 3 uses
  %i.ak = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.al = and i64 %i.ak, 8
  %lcmp.mod.not.not = icmp eq i64 %i.al, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i
  %.03.i.i.prol = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.ag, align 4, !tbaa !1434
  store i32 %i.am, ptr %.03.i.i.prol, align 4, !tbaa !1434
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ap, ptr %i.an, align 4, !tbaa !1435
  store i8 0, ptr %i.ao, align 8, !tbaa !1435
  %i.aq = add nsw i32 %i.ac, 2                    ; 2 uses
  store i32 %i.aq, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.unr = phi i32 [ %i.ad, %.lr.ph.preheader.i.i ], [ %i.aq, %.lr.ph.i.i.prol ]
  %.03.i.pn.i.unr = phi ptr [ %i.aj, %.lr.ph.preheader.i.i ], [ %.03.i.i.prol, %.lr.ph.i.i.prol ]
  %.0122.i.i.unr = phi ptr [ %i.ag, %.lr.ph.preheader.i.i ], [ %i.ar, %.lr.ph.i.i.prol ]
  %i.as = icmp eq i64 %i.ak, 0
  br i1 %i.as, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSE_PSA_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.at = phi i32 [ %i.be, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.03.i.pn.i = phi ptr [ %.03.i.i.1, %.lr.ph.i.i ], [ %.03.i.pn.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.0122.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.0122.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8
  %i.au = load i32, ptr %.0122.i.i, align 4, !tbaa !1434
  store i32 %i.au, ptr %.03.i.i, align 4, !tbaa !1434
  %i.av = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 4 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ax, ptr %i.av, align 4, !tbaa !1435
  store i8 0, ptr %i.aw, align 4, !tbaa !1435
  %i.ay = add nsw i32 %i.at, 1
  store i32 %i.ay, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.az = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8
  %.03.i.i.1 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 16 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !1434
  store i32 %i.ba, ptr %.03.i.i.1, align 4, !tbaa !1434
  %i.bb = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 20
  %i.bc = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 12 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.bd, ptr %i.bb, align 4, !tbaa !1435
  store i8 0, ptr %i.bc, align 4, !tbaa !1435
  %i.be = add nsw i32 %i.at, 2                    ; 2 uses
  store i32 %i.be, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bf = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 16 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.bf, %i.ah
  br i1 %.not.i.i.1, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSE_PSA_.exit.i, label %.lr.ph.i.i, !llvm.loop !399

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSE_PSA_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  %.val53.i = load i8, ptr %i.s, align 8, !tbaa !813
  %i.bg = zext i8 %.val53.i to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !1434
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !1434
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.bm, ptr %i.bk, align 4, !tbaa !1435
  store i8 0, ptr %i.bl, align 4, !tbaa !1435
  %i.bn = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bp = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val49.i = load i8, ptr %i.bp, align 2, !tbaa !813 ; 2 uses
  %i.bq = zext i8 %.val49.i to i32
  %i.br = sub nsw i32 %i.bq, %i.p
  %i.bs = sext i32 %i.br to i64
  %i.bt = zext nneg i8 %.sroa.speculated143 to i64 ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bt ; 2 uses
  %.idx.i55.i = shl nuw nsw i64 %i.bs, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx.i55.i
  %.not1.i56.i = icmp eq i8 %.val49.i, %.sroa.speculated143
  br i1 %.not1.i56.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSE_PSA_.exit62.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSE_PSA_.exit.i, %.lr.ph.i58.i
  %.03.i59.i = phi ptr [ %i.cd, %.lr.ph.i58.i ], [ %i.ag, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSE_PSA_.exit.i ] ; 3 uses
  %.0122.i60.i = phi ptr [ %i.cc, %.lr.ph.i58.i ], [ %i.bu, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSE_PSA_.exit.i ] ; 3 uses
  %i.bw = load i32, ptr %.0122.i60.i, align 4, !tbaa !1434
  store i32 %i.bw, ptr %.03.i59.i, align 4, !tbaa !1434
  %i.bx = getelementptr inbounds nuw i8, ptr %.03.i59.i, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %.0122.i60.i, i64 4 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.bz, ptr %i.bx, align 4, !tbaa !1435
  store i8 0, ptr %i.by, align 4, !tbaa !1435
  %i.ca = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.cc = getelementptr inbounds nuw i8, ptr %.0122.i60.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.03.i59.i, i64 8
  %.not.i61.i = icmp eq ptr %i.cc, %i.bv
  br i1 %.not.i61.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSE_PSA_.exit62.i, label %.lr.ph.i58.i, !llvm.loop !399

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSE_PSA_.exit62.i: ; preds = %.lr.ph.i58.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSE_PSA_.exit.i
  %i.ce = getelementptr i8, ptr %i.h, i64 11
  %.val52.i = load i8, ptr %i.ce, align 1, !tbaa !813
  %.not.i63.i = icmp eq i8 %.val52.i, 0
  br i1 %.not.i63.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE23rebalance_right_to_leftEhPSE_PSA_.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE10transfer_nEmmmPSE_PSA_.exit62.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 504 ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 504 ; 3 uses
  %xtraiter169 = and i64 %i.bt, 1
  %i.ch = icmp samesign ult i8 %i.o, 2
  br i1 %i.ch, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bt, 62
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod171 = trunc i8 %.sroa.speculated143 to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %.val46.i.epil = load i8, ptr %i.i, align 2, !tbaa !813
  %i.ci = trunc i64 %indvars.iv.i.epil.init to i8
  %i.cj = add i8 %i.ci, 1
  %i.ck = add i8 %.val46.i.epil, %i.cj            ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i.epil.init
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !1543 ; 3 uses
  %i.cn = zext i8 %i.ck to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cn
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !1543
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i8 %i.ck, ptr %i.cp, align 1, !tbaa !813
  store ptr %i.h, ptr %i.cm, align 8, !tbaa !1543
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.bp, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated143
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE23rebalance_right_to_leftEhPSE_PSA_.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cq = trunc nuw i64 %indvars.iv.next.i to i8
  %i.cr = add i8 %.val46.i, %i.cq                 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1543 ; 3 uses
  %i.cu = zext i8 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cu
  store ptr %i.ct, ptr %i.cv, align 8, !tbaa !1543
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i8 %i.cr, ptr %i.cw, align 1, !tbaa !813
  store ptr %i.h, ptr %i.ct, align 8, !tbaa !1543
  %.val46.i.1 = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.cx = trunc nuw i64 %indvars.iv.next.i.1 to i8
  %i.cy = add i8 %.val46.i.1, %i.cx               ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1543 ; 3 uses
  %i.db = zext i8 %i.cy to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.db
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !1543
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i8 %i.cy, ptr %i.dd, align 1, !tbaa !813
  store ptr %i.h, ptr %i.da, align 8, !tbaa !1543
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.f, !llvm.loop !10219

.lr.ph6.i:                                        ; preds = %.preheader.i, %.lr.ph6.i
  %.05.i = phi i8 [ %i.dl, %.lr.ph6.i ], [ 0, %.preheader.i ] ; 4 uses
  %i.de = add i8 %.05.i, %.sroa.speculated143
  %i.df = zext i8 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !1543 ; 3 uses
  %i.di = zext i8 %.05.i to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.di
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !1543
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i8 %.05.i, ptr %i.dk, align 1, !tbaa !813
  store ptr %i.b, ptr %i.dh, align 8, !tbaa !1543
  %i.dl = add i8 %.05.i, 1                        ; 2 uses
  %i.dm = zext i8 %i.dl to i32
  %.val45.i = load i8, ptr %i.bp, align 2, !tbaa !813
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE5splitEiPSE_PSA_:bb.a

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE19transfer_n_backwardEmmmPSE_PSA_.exit.i
  %i.cr = zext i8 %i.cp to i32
  %i.cs = add nuw nsw i32 %i.au, 1                ; 2 uses
  %i.ct = icmp samesign ult i32 %i.cs, %i.cr
  br i1 %i.ct, label %.lr.ph.i41, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE13emplace_valueIJPS5_EEEvhPSA_DpOT_.exit

.lr.ph.i41:                                       ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw i8, ptr %.val36, i64 504 ; 10 uses
  %i.cv = zext i8 %i.cp to i64                    ; 4 uses
  %i.cw = zext nneg i32 %i.cs to i64
  %i.cx = xor i64 %i.ax, -1
  %i.cy = add nsw i64 %i.cx, %i.cv
  %i.cz = add nsw i64 %i.cv, -2
  %i.da = sub nsw i64 %i.cz, %i.ax
  %xtraiter10 = and i64 %i.cy, 3                  ; 2 uses
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i41, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.db, %.prol.preheader ], [ %i.cv, %.lr.ph.i41 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i41 ]
  %i.db = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1543 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.prol
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !1543
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !813
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter10
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !10231

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i41
  %indvars.iv.unr = phi i64 [ %i.cv, %.lr.ph.i41 ], [ %i.db, %.prol.preheader ]
  %i.dh = icmp ult i64 %i.da, 3
  br i1 %i.dh, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE13emplace_valueIJPS5_EEEvhPSA_DpOT_.exit, label %.lr.ph.i41.new

.lr.ph.i41.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i41.new
  %indvars.iv = phi i64 [ %i.ea, %.lr.ph.i41.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.di = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !1543 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !1543
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = trunc nuw i64 %indvars.iv to i8
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !813
  %i.do = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1543 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.di
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !1543
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dt = trunc nuw i64 %i.di to i8
  store i8 %i.dt, ptr %i.ds, align 1, !tbaa !813
  %i.du = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.du
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1543 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.do
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !1543
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = trunc nuw i64 %i.do to i8
  store i8 %i.dz, ptr %i.dy, align 1, !tbaa !813
  %i.ea = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1543 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.du
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !1543
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = trunc nuw i64 %i.du to i8
  store i8 %i.ef, ptr %i.ee, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.ea, %i.cw
  br i1 %.wide.3, label %.lr.ph.i41.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE13emplace_valueIJPS5_EEEvhPSA_DpOT_.exit, !llvm.loop !10232

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE13emplace_valueIJPS5_EEEvhPSA_DpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i41.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE19transfer_n_backwardEmmmPSE_PSA_.exit.i, %bb.e
  %.val28 = load i8, ptr %i.f, align 2, !tbaa !813
  %i.eg = zext i8 %.val28 to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eg
  %i.ei = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !802
  %i.ej = add nsw i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !802
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.el = load i8, ptr %i.ek, align 4, !tbaa !1435, !range !843, !noundef !844
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.f, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE13value_destroyEhPSA_.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE13emplace_valueIJPS5_EEEvhPSA_DpOT_.exit
  %i.en = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !802
  %i.eo = add nsw i32 %i.en, -1
  store i32 %i.eo, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !802
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE13value_destroyEhPSA_.exit

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE13value_destroyEhPSA_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE13emplace_valueIJPS5_EEEvhPSA_DpOT_.exit, %bb.f
  %.val35 = load ptr, ptr %0, align 8, !tbaa !1543
  %.val38 = load i8, ptr %i.ar, align 8, !tbaa !813
  %i.ep = add i8 %.val38, 1
  %i.eq = getelementptr inbounds nuw i8, ptr %.val35, i64 504
  %i.er = zext i8 %i.ep to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.er
  store ptr %2, ptr %i.es, align 8, !tbaa !1543
  %i.et = getelementptr i8, ptr %0, i64 11
  %.val37 = load i8, ptr %i.et, align 1, !tbaa !813
  %.not.i42 = icmp eq i8 %.val37, 0
  br i1 %.not.i42, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE13value_destroyEhPSA_.exit
  %.val27 = load i8, ptr %i.f, align 2, !tbaa !813
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 504
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.0.in3 = phi i8 [ %.val27, %bb.g ], [ %.0, %bb.h ]
  %.0252 = phi i8 [ 0, %bb.g ], [ %i.fc, %bb.h ]  ; 3 uses
  %.0 = add i8 %.0.in3, 1                         ; 2 uses
  %i.ew = zext i8 %.0 to i64
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1543 ; 3 uses
  %i.ez = zext i8 %.0252 to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ez
  store ptr %i.ey, ptr %i.fa, align 8, !tbaa !1543
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i8 %.0252, ptr %i.fb, align 1, !tbaa !813
  store ptr %2, ptr %i.ey, align 8, !tbaa !1543
  %i.fc = add i8 %.0252, 1                        ; 2 uses
  %.val = load i8, ptr %i.g, align 1, !tbaa !813
  %.not = icmp ugt i8 %i.fc, %.val
  br i1 %.not, label %.loopexit, label %bb.h, !llvm.loop !10233

.loopexit:                                        ; preds = %bb.h, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE13value_destroyEhPSA_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISD_EERKS5_PSI_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.1467", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1547   ; 14 uses
  %.val110 = load ptr, ptr %i.b, align 8, !tbaa !1547 ; 7 uses
  %.val93 = load ptr, ptr %0, align 8, !tbaa !1537
  %.not = icmp eq ptr %i.b, %.val93
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val117 = load i8, ptr %i.c, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val117, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val117, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val110, i64 816
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1547 ; 10 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 8 uses
  %.val108 = load i8, ptr %i.i, align 1, !tbaa !813 ; 4 uses
  %i.j = icmp ult i8 %.val108, 100
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 100, %.val108
  %i.k = load i32, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.l = and i32 %i.k, 252
  %i.m = icmp samesign ult i32 %i.l, 100
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n                    ; 2 uses
  %.sroa.speculated143 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 9 uses
  %i.p = and i32 %i.k, 255
  %i.q = zext nneg i8 %.sroa.speculated143 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.p, %i.q
  %narrow156 = add nuw i8 %.sroa.speculated143, %.val108
  %i.r = icmp ult i8 %narrow156, 100
  %or.cond = select i1 %.not85, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i8 %.val108 to i64
  %i.t = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val54.i = load i8, ptr %i.t, align 1, !tbaa !813
  %i.u = zext i8 %.val54.i to i64
  %.val51.i = load ptr, ptr %i.h, align 8, !tbaa !1547
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val51.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1434
  store i32 %i.z, ptr %i.w, align 4, !tbaa !1434
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ac, ptr %i.aa, align 4, !tbaa !1435
  store i8 0, ptr %i.ab, align 4, !tbaa !1435
  %i.ad = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802 ; 2 uses
  %i.ae = add nsw i32 %i.ad, 1                    ; 2 uses
  store i32 %i.ae, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.af = add nsw i32 %i.q, -1                    ; 2 uses
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %i.ag, 3            ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.af, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSE_PSA_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %.val47.i = load i8, ptr %i.i, align 2, !tbaa !813
  %i.aj = zext i8 %.val47.i to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.aj ; 3 uses
  %i.al = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.am = and i64 %i.al, 8
  %lcmp.mod.not.not = icmp eq i64 %i.am, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.prol, label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i
  %.03.i.i.prol = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.ah, align 4, !tbaa !1434
  store i32 %i.an, ptr %.03.i.i.prol, align 4, !tbaa !1434
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.aq, ptr %i.ao, align 4, !tbaa !1435
  store i8 0, ptr %i.ap, align 8, !tbaa !1435
  %i.ar = add nsw i32 %i.ad, 2                    ; 2 uses
  store i32 %i.ar, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.unr = phi i32 [ %i.ae, %.lr.ph.preheader.i.i ], [ %i.ar, %.lr.ph.i.i.prol ]
  %.03.i.pn.i.unr = phi ptr [ %i.ak, %.lr.ph.preheader.i.i ], [ %.03.i.i.prol, %.lr.ph.i.i.prol ]
  %.0122.i.i.unr = phi ptr [ %i.ah, %.lr.ph.preheader.i.i ], [ %i.as, %.lr.ph.i.i.prol ]
  %i.at = icmp eq i64 %i.al, 0
  br i1 %i.at, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSE_PSA_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.au = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.03.i.pn.i = phi ptr [ %.03.i.i.1, %.lr.ph.i.i ], [ %.03.i.pn.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.0122.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %.0122.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8
  %i.av = load i32, ptr %.0122.i.i, align 4, !tbaa !1434
  store i32 %i.av, ptr %.03.i.i, align 4, !tbaa !1434
  %i.aw = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 4 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ay, ptr %i.aw, align 4, !tbaa !1435
  store i8 0, ptr %i.ax, align 4, !tbaa !1435
  %i.az = add nsw i32 %i.au, 1
  store i32 %i.az, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.ba = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8
  %.03.i.i.1 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 16 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !1434
  store i32 %i.bb, ptr %.03.i.i.1, align 4, !tbaa !1434
  %i.bc = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 20
  %i.bd = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 12 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.be, ptr %i.bc, align 4, !tbaa !1435
  store i8 0, ptr %i.bd, align 4, !tbaa !1435
  %i.bf = add nsw i32 %i.au, 2                    ; 2 uses
  store i32 %i.bf, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bg = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 16 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.bg, %i.ai
  br i1 %.not.i.i.1, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSE_PSA_.exit.i, label %.lr.ph.i.i, !llvm.loop !401

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSE_PSA_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  %.val53.i = load i8, ptr %i.t, align 8, !tbaa !813
  %i.bh = zext i8 %.val53.i to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !1434
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !1434
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.bn, ptr %i.bl, align 4, !tbaa !1435
  store i8 0, ptr %i.bm, align 4, !tbaa !1435
  %i.bo = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.bq = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val49.i = load i8, ptr %i.bq, align 2, !tbaa !813 ; 2 uses
  %i.br = zext i8 %.val49.i to i32
  %i.bs = sub nsw i32 %i.br, %i.q
  %i.bt = sext i32 %i.bs to i64
  %i.bu = zext nneg i8 %.sroa.speculated143 to i64 ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bu ; 2 uses
  %.idx.i55.i = shl nuw nsw i64 %i.bt, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i55.i
  %.not1.i56.i = icmp eq i8 %.val49.i, %.sroa.speculated143
  br i1 %.not1.i56.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSE_PSA_.exit62.i, label %.lr.ph.i58.i

.lr.ph.i58.i:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSE_PSA_.exit.i, %.lr.ph.i58.i
  %.03.i59.i = phi ptr [ %i.ce, %.lr.ph.i58.i ], [ %i.ah, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSE_PSA_.exit.i ] ; 3 uses
  %.0122.i60.i = phi ptr [ %i.cd, %.lr.ph.i58.i ], [ %i.bv, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSE_PSA_.exit.i ] ; 3 uses
  %i.bx = load i32, ptr %.0122.i60.i, align 4, !tbaa !1434
  store i32 %i.bx, ptr %.03.i59.i, align 4, !tbaa !1434
  %i.by = getelementptr inbounds nuw i8, ptr %.03.i59.i, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %.0122.i60.i, i64 4 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !1435, !range !843, !noundef !844
  store i8 %i.ca, ptr %i.by, align 4, !tbaa !1435
  store i8 0, ptr %i.bz, align 4, !tbaa !1435
  %i.cb = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !802
  %i.cd = getelementptr inbounds nuw i8, ptr %.0122.i60.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.03.i59.i, i64 8
  %.not.i61.i = icmp eq ptr %i.cd, %i.bw
  br i1 %.not.i61.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSE_PSA_.exit62.i, label %.lr.ph.i58.i, !llvm.loop !401

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSE_PSA_.exit62.i: ; preds = %.lr.ph.i58.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSE_PSA_.exit.i
  %i.cf = getelementptr i8, ptr %i.h, i64 11
  %.val52.i = load i8, ptr %i.cf, align 1, !tbaa !813
  %.not.i63.i = icmp eq i8 %.val52.i, 0
  br i1 %.not.i63.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE23rebalance_right_to_leftEhPSE_PSA_.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE10transfer_nEmmmPSE_PSA_.exit62.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 816 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 816 ; 3 uses
  %xtraiter169 = and i64 %i.bu, 1
  %i.ci = icmp samesign ult i8 %i.o, 2
  br i1 %i.ci, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bu, 126
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod171 = trunc i8 %.sroa.speculated143 to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %.val46.i.epil = load i8, ptr %i.i, align 2, !tbaa !813
  %i.cj = trunc i64 %indvars.iv.i.epil.init to i8
  %i.ck = add i8 %i.cj, 1
  %i.cl = add i8 %.val46.i.epil, %i.ck            ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i.epil.init
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1547 ; 3 uses
  %i.co = zext i8 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.co
  store ptr %i.cn, ptr %i.cp, align 8, !tbaa !1547
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i8 %i.cl, ptr %i.cq, align 1, !tbaa !813
  store ptr %i.h, ptr %i.cn, align 8, !tbaa !1547
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.bq, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated143
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE23rebalance_right_to_leftEhPSE_PSA_.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cr = trunc nuw i64 %indvars.iv.next.i to i8
  %i.cs = add i8 %.val46.i, %i.cr                 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1547 ; 3 uses
  %i.cv = zext i8 %i.cs to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !1547
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %i.cs, ptr %i.cx, align 1, !tbaa !813
  store ptr %i.h, ptr %i.cu, align 8, !tbaa !1547
  %.val46.i.1 = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.cy = trunc nuw i64 %indvars.iv.next.i.1 to i8
  %i.cz = add i8 %.val46.i.1, %i.cy               ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next.i
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1547 ; 3 uses
  %i.dc = zext i8 %i.cz to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.dc
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !1547
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i8 %i.cz, ptr %i.de, align 1, !tbaa !813
  store ptr %i.h, ptr %i.db, align 8, !tbaa !1547
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.f, !llvm.loop !10234

.lr.ph6.i:                                        ; preds = %.preheader.i, %.lr.ph6.i
  %.05.i = phi i8 [ %i.dm, %.lr.ph6.i ], [ 0, %.preheader.i ] ; 4 uses
  %i.df = add i8 %.05.i, %.sroa.speculated143
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1547 ; 3 uses
  %i.dj = zext i8 %.05.i to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.dj
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !1547
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i8 %.05.i, ptr %i.dl, align 1, !tbaa !813
  store ptr %i.b, ptr %i.di, align 8, !tbaa !1547
  %i.dm = add i8 %.05.i, 1                        ; 2 uses
  %i.dn = zext i8 %i.dm to i32
  %.val45.i = load i8, ptr %i.bq, align 2, !tbaa !813
end_hunk_5
begin_hunk_6_@_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implINS4_12_GLOBAL__N_113NoDefaultCtorES9_JEEEEERSt4pairIKS9_S9_EPSE_EESH_EENS_15AssertionResultEPKcSK_RKT_RKT0_:bb.a
  br i1 %.not.i.i3.i86.i, label %_ZN7testing7MessageD2Ev.exit5.i88.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i87.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i87.i: ; preds = %bb.ah
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !816, !noalias !10286
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !10286
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(128) %i.ea) #37, !noalias !10286, !inline_history !10284
  br label %_ZN7testing7MessageD2Ev.exit5.i88.i

_ZN7testing7MessageD2Ev.exit5.i88.i:              ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i87.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37, !noalias !10286
  br label %.body93.i

bb.ai:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i91.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37, !noalias !10286
  invoke void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.ee = load ptr, ptr %16, align 8, !tbaa !810, !noalias !10286 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !813, !noalias !10286
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37, !noalias !10286
  %i.ej = load ptr, ptr %15, align 8, !tbaa !810, !noalias !10286 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !813, !noalias !10286
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37, !noalias !10286
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !845, !noalias !10286 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implINS4_12_GLOBAL__N_113NoDefaultCtorES9_JEEEEERSt4pairIKS9_S9_EPSE_EESH_EENS_15AssertionResultEPKcSK_RKT_RKT0_SK_.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !810 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ak
  %i.et = load i64, ptr %i.er, align 8, !tbaa !813
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 32) #36
  br label %_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implINS4_12_GLOBAL__N_113NoDefaultCtorES9_JEEEEERSt4pairIKS9_S9_EPSE_EESH_EENS_15AssertionResultEPKcSK_RKT_RKT0_SK_.exit

bb.al:                                            ; preds = %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.c
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.am:                                            ; preds = %bb.x
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i

bb.an:                                            ; preds = %bb.ab, %bb.y
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body76.i

bb.ao:                                            ; preds = %bb.ae
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

bb.ap:                                            ; preds = %bb.ai, %bb.af
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body93.i

.body93.i:                                        ; preds = %bb.ap, %_ZN7testing7MessageD2Ev.exit5.i88.i
  %eh.lpad-body94.i = phi { ptr, i32 } [ %i.ez, %bb.ap ], [ %i.dz, %_ZN7testing7MessageD2Ev.exit5.i88.i ] ; 2 uses
  %i.fa = load ptr, ptr %16, align 8, !tbaa !810, !noalias !10286 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i: ; preds = %.body93.i
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !813, !noalias !10286
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i: ; preds = %.body93.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i, %bb.ao
  %.pn.i = phi { ptr, i32 } [ %i.ey, %bb.ao ], [ %eh.lpad-body94.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i ], [ %eh.lpad-body94.i, %.body93.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37, !noalias !10286
  br label %.body76.i

.body76.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, %bb.an, %_ZN7testing7MessageD2Ev.exit5.i80.i, %_ZN7testing7MessageD2Ev.exit5.i72.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i ], [ %i.cy, %_ZN7testing7MessageD2Ev.exit5.i72.i ], [ %i.ex, %bb.an ], [ %i.dk, %_ZN7testing7MessageD2Ev.exit5.i80.i ] ; 2 uses
  %i.ff = load ptr, ptr %15, align 8, !tbaa !810, !noalias !10286 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i: ; preds = %.body76.i
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !813, !noalias !10286
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i: ; preds = %.body76.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i, %bb.am
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.ew, %bb.am ], [ %.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i ], [ %.pn.pn.i, %.body76.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37, !noalias !10286
  br label %.body.i

.body.i:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i, %bb.al, %_ZN7testing7MessageD2Ev.exit5.i62.i, %_ZN7testing7MessageD2Ev.exit6.i52.i, %_ZN7testing7MessageD2Ev.exit5.i40.i, %_ZN7testing7MessageD2Ev.exit6.i30.i, %_ZN7testing7MessageD2Ev.exit5.i20.i, %_ZN7testing7MessageD2Ev.exit6.i.i, %_ZN7testing7MessageD2Ev.exit5.i.i
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i ], [ %i.l, %_ZN7testing7MessageD2Ev.exit5.i.i ], [ %i.ab, %_ZN7testing7MessageD2Ev.exit6.i.i ], [ %i.an, %_ZN7testing7MessageD2Ev.exit5.i20.i ], [ %i.az, %_ZN7testing7MessageD2Ev.exit6.i30.i ], [ %i.bl, %_ZN7testing7MessageD2Ev.exit5.i40.i ], [ %i.bx, %_ZN7testing7MessageD2Ev.exit6.i52.i ], [ %i.ev, %bb.al ], [ %i.cj, %_ZN7testing7MessageD2Ev.exit5.i62.i ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37, !noalias !10286
  resume { ptr, i32 } %.pn.pn.pn.pn.i

_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implINS4_12_GLOBAL__N_113NoDefaultCtorES9_JEEEEERSt4pairIKS9_S9_EPSE_EESH_EENS_15AssertionResultEPKcSK_RKT_RKT0_SK_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37, !noalias !10286
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implINS4_12_GLOBAL__N_113NoDefaultCtorES9_JEEEEERSt4pairIKS9_S9_EPSE_EESH_EENS_15AssertionResultEPKcSK_RKT_RKT0_SK_.exit, %bb.b
  ret void
}

declare void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i32 noundef, ptr noundef align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKS5_S5_EPSD_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.1496", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1560   ; 14 uses
  %.val105 = load ptr, ptr %i.b, align 8, !tbaa !1560 ; 7 uses
  %.val117 = load ptr, ptr %0, align 8, !tbaa !1556
  %.not = icmp eq ptr %i.b, %.val117
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val103 = load i8, ptr %i.c, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val103, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val103, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val105, i64 256
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1560 ; 11 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 7 uses
  %.val115 = load i8, ptr %i.i, align 1, !tbaa !813 ; 4 uses
  %i.j = icmp ult i8 %.val115, 30
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 30, %.val115
  %i.k = load i32, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.l = and i32 %i.k, 254
  %i.m = icmp samesign ult i32 %i.l, 30
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n                    ; 2 uses
  %.sroa.speculated150 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 9 uses
  %i.p = and i32 %i.k, 255
  %i.q = zext nneg i8 %.sroa.speculated150 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.p, %i.q
  %narrow163 = add nuw nsw i8 %.sroa.speculated150, %.val115
  %i.r = icmp samesign ult i8 %narrow163, 30
  %or.cond = select i1 %.not85, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i8 %.val115 to i64
  %i.t = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val50.i = load i8, ptr %i.t, align 1, !tbaa !813
  %i.u = zext i8 %.val50.i to i64                 ; 2 uses
  %.val52.i = load ptr, ptr %i.h, align 8, !tbaa !1560 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val52.i, i64 12
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  %.val.i.i = load i64, ptr %i.y, align 1
  store i64 %.val.i.i, ptr %i.w, align 1
  %i.z = add nsw i32 %i.q, -1                     ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %i.aa, 3            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.z, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ad = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.03.i.pn.i.prol = phi ptr [ %.03.i.i.prol, %.lr.ph.i.i.prol ], [ %i.w, %.lr.ph.i.i.preheader ]
  %.0122.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.prol ], [ %i.ab, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %.03.i.i.prol = getelementptr inbounds nuw i8, ptr %.03.i.pn.i.prol, i64 8 ; 3 uses
  %.012.val.i.i.prol = load i64, ptr %.0122.i.i.prol, align 1
  store i64 %.012.val.i.i.prol, ptr %.03.i.i.prol, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.0122.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !10287

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.03.i.pn.i.unr = phi ptr [ %i.w, %.lr.ph.i.i.preheader ], [ %.03.i.i.prol, %.lr.ph.i.i.prol ]
  %.0122.i.i.unr = phi ptr [ %i.ab, %.lr.ph.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.prol ]
  %i.ah = icmp ult i64 %i.ad, 56
  br i1 %i.ah, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i.7, %.lr.ph.i.i ], [ %.03.i.pn.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0122.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.0122.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8
  %.012.val.i.i = load i64, ptr %.0122.i.i, align 1
  store i64 %.012.val.i.i, ptr %.03.i.i, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8
  %.03.i.i.1 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 16
  %.012.val.i.i.1 = load i64, ptr %i.ai, align 1
  store i64 %.012.val.i.i.1, ptr %.03.i.i.1, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 16
  %.03.i.i.2 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 24
  %.012.val.i.i.2 = load i64, ptr %i.aj, align 1
  store i64 %.012.val.i.i.2, ptr %.03.i.i.2, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 24
  %.03.i.i.3 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 32
  %.012.val.i.i.3 = load i64, ptr %i.ak, align 1
  store i64 %.012.val.i.i.3, ptr %.03.i.i.3, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 32
  %.03.i.i.4 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 40
  %.012.val.i.i.4 = load i64, ptr %i.al, align 1
  store i64 %.012.val.i.i.4, ptr %.03.i.i.4, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 40
  %.03.i.i.5 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 48
  %.012.val.i.i.5 = load i64, ptr %i.am, align 1
  store i64 %.012.val.i.i.5, ptr %.03.i.i.5, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 48
  %.03.i.i.6 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 56
  %.012.val.i.i.6 = load i64, ptr %i.an, align 1
  store i64 %.012.val.i.i.6, ptr %.03.i.i.6, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 56
  %.03.i.i.7 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 64 ; 2 uses
  %.012.val.i.i.7 = load i64, ptr %i.ao, align 1
  store i64 %.012.val.i.i.7, ptr %.03.i.i.7, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 64 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.ap, %i.ac
  br i1 %.not.i.i.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !405

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val51.pre.i = load ptr, ptr %i.h, align 8, !tbaa !1560
  %.val49.pre.i = load i8, ptr %i.t, align 8, !tbaa !813
  %.pre.i = zext i8 %.val49.pre.i to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit.loopexit.i, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit.loopexit.i ], [ %i.u, %bb.e ]
  %.val51.i = phi ptr [ %.val51.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit.loopexit.i ], [ %.val52.i, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.val51.i, i64 12
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.pre-phi.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %.val.i55.i = load i64, ptr %i.as, align 1
  store i64 %.val.i55.i, ptr %i.ar, align 1
  %i.at = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val54.i = load i8, ptr %i.at, align 2, !tbaa !813 ; 2 uses
  %i.au = zext i8 %.val54.i to i32
  %i.av = sub nsw i32 %i.au, %i.q
  %i.aw = sext i32 %i.av to i64
  %i.ax = zext nneg i8 %.sroa.speculated150 to i64 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ax ; 2 uses
  %.idx.i56.i = shl nuw nsw i64 %i.aw, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i56.i
  %.not1.i57.i = icmp eq i8 %.val54.i, %.sroa.speculated150
  br i1 %.not1.i57.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit64.i, label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit.i, %.lr.ph.i59.i
  %.03.i60.i = phi ptr [ %i.bb, %.lr.ph.i59.i ], [ %i.ab, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit.i ] ; 2 uses
  %.0122.i61.i = phi ptr [ %i.ba, %.lr.ph.i59.i ], [ %i.ay, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit.i ] ; 2 uses
  %.012.val.i62.i = load i64, ptr %.0122.i61.i, align 1
  store i64 %.012.val.i62.i, ptr %.03.i60.i, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0122.i61.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03.i60.i, i64 8
  %.not.i63.i = icmp eq ptr %i.ba, %i.az
  br i1 %.not.i63.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit64.i, label %.lr.ph.i59.i, !llvm.loop !405

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit64.i: ; preds = %.lr.ph.i59.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit.i
  %i.bc = getelementptr i8, ptr %i.h, i64 11
  %.val53.i = load i8, ptr %i.bc, align 1, !tbaa !813
  %.not.i65.i = icmp eq i8 %.val53.i, 0
  br i1 %.not.i65.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE23rebalance_right_to_leftEhPS7_PSaISt4pairIKS5_S5_EE.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE10transfer_nEmmmPS7_PSaISt4pairIKS5_S5_EE.exit64.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 3 uses
  %xtraiter177 = and i64 %i.ax, 1
  %i.bf = icmp samesign ult i8 %i.o, 2
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ax, 30
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod179 = trunc i8 %.sroa.speculated150 to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %.val46.i.epil = load i8, ptr %i.i, align 2, !tbaa !813
  %i.bg = trunc i64 %indvars.iv.i.epil.init to i8
  %i.bh = add i8 %i.bg, 1
  %i.bi = add i8 %.val46.i.epil, %i.bh            ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i.epil.init
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1560 ; 3 uses
  %i.bl = zext i8 %i.bi to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bl
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !1560
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i8 %i.bi, ptr %i.bn, align 1, !tbaa !813
  store ptr %i.h, ptr %i.bk, align 8, !tbaa !1560
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.at, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated150
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE23rebalance_right_to_leftEhPS7_PSaISt4pairIKS5_S5_EE.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bo = trunc nuw i64 %indvars.iv.next.i to i8
  %i.bp = add i8 %.val46.i, %i.bo                 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1560 ; 3 uses
  %i.bs = zext i8 %i.bp to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bs
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !1560
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i8 %i.bp, ptr %i.bu, align 1, !tbaa !813
  store ptr %i.h, ptr %i.br, align 8, !tbaa !1560
  %.val46.i.1 = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.bv = trunc nuw i64 %indvars.iv.next.i.1 to i8
  %i.bw = add i8 %.val46.i.1, %i.bv               ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1560 ; 3 uses
  %i.bz = zext i8 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bz
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !1560
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i8 %i.bw, ptr %i.cb, align 1, !tbaa !813
  store ptr %i.h, ptr %i.by, align 8, !tbaa !1560
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.f, !llvm.loop !10288

.lr.ph6.i:                                        ; preds = %.preheader.i, %.lr.ph6.i
  %.05.i = phi i8 [ %i.cj, %.lr.ph6.i ], [ 0, %.preheader.i ] ; 4 uses
  %i.cc = add i8 %.05.i, %.sroa.speculated150
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1560 ; 3 uses
  %i.cg = zext i8 %.05.i to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !1560
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %.05.i, ptr %i.ci, align 1, !tbaa !813
  store ptr %i.b, ptr %i.cf, align 8, !tbaa !1560
  %i.cj = add i8 %.05.i, 1                        ; 2 uses
  %i.ck = zext i8 %i.cj to i32
  %.val45.i = load i8, ptr %i.at, align 2, !tbaa !813
  %i.cl = zext i8 %.val45.i to i32
  %i.cm = sub nsw i32 %i.cl, %i.q
  %.not.i = icmp slt i32 %i.cm, %i.ck
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JEEEE23rebalance_right_to_leftEhPS7_PSaISt4pairIKS5_S5_EE.exit, label %.lr.ph6.i, !llvm.loop !10289
end_hunk_6
begin_hunk_7_@_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implINS4_12_GLOBAL__N_113NoDefaultCtorES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEEERSE_PSE_EESN_EENS_15AssertionResultEPKcSQ_RKT_RKT0_:bb.a
  %i.ea = load ptr, ptr %4, align 8, !tbaa !827, !noalias !10354 ; 3 uses
  %.not.i.i3.i86.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i3.i86.i, label %_ZN7testing7MessageD2Ev.exit5.i88.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i87.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i87.i: ; preds = %bb.ah
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !816, !noalias !10354
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !10354
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(128) %i.ea) #37, !noalias !10354, !inline_history !10352
  br label %_ZN7testing7MessageD2Ev.exit5.i88.i

_ZN7testing7MessageD2Ev.exit5.i88.i:              ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i87.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37, !noalias !10354
  br label %.body93.i

bb.ai:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i91.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37, !noalias !10354
  invoke void @_ZN7testing15AssertionResultC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  %i.ee = load ptr, ptr %16, align 8, !tbaa !810, !noalias !10354 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aj
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !813, !noalias !10354
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37, !noalias !10354
  %i.ej = load ptr, ptr %15, align 8, !tbaa !810, !noalias !10354 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !813, !noalias !10354
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37, !noalias !10354
  %i.eo = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !845, !noalias !10354 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implINS4_12_GLOBAL__N_113NoDefaultCtorES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEEERSE_PSE_EESN_EENS_15AssertionResultEPKcSQ_RKT_RKT0_SQ_.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !810 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ak
  %i.et = load i64, ptr %i.er, align 8, !tbaa !813
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 32) #36
  br label %_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implINS4_12_GLOBAL__N_113NoDefaultCtorES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEEERSE_PSE_EESN_EENS_15AssertionResultEPKcSQ_RKT_RKT0_SQ_.exit

bb.al:                                            ; preds = %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f, %bb.c
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.am:                                            ; preds = %bb.x
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i

bb.an:                                            ; preds = %bb.ab, %bb.y
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body76.i

bb.ao:                                            ; preds = %bb.ae
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

bb.ap:                                            ; preds = %bb.ai, %bb.af
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body93.i

.body93.i:                                        ; preds = %bb.ap, %_ZN7testing7MessageD2Ev.exit5.i88.i
  %eh.lpad-body94.i = phi { ptr, i32 } [ %i.ez, %bb.ap ], [ %i.dz, %_ZN7testing7MessageD2Ev.exit5.i88.i ] ; 2 uses
  %i.fa = load ptr, ptr %16, align 8, !tbaa !810, !noalias !10354 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i: ; preds = %.body93.i
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !813, !noalias !10354
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i: ; preds = %.body93.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i, %bb.ao
  %.pn.i = phi { ptr, i32 } [ %i.ey, %bb.ao ], [ %eh.lpad-body94.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i ], [ %eh.lpad-body94.i, %.body93.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37, !noalias !10354
  br label %.body76.i

.body76.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, %bb.an, %_ZN7testing7MessageD2Ev.exit5.i80.i, %_ZN7testing7MessageD2Ev.exit5.i72.i
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i ], [ %i.cy, %_ZN7testing7MessageD2Ev.exit5.i72.i ], [ %i.ex, %bb.an ], [ %i.dk, %_ZN7testing7MessageD2Ev.exit5.i80.i ] ; 2 uses
  %i.ff = load ptr, ptr %15, align 8, !tbaa !810, !noalias !10354 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i: ; preds = %.body76.i
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !813, !noalias !10354
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i: ; preds = %.body76.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i, %bb.am
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.ew, %bb.am ], [ %.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i ], [ %.pn.pn.i, %.body76.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37, !noalias !10354
  br label %.body.i

.body.i:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i, %bb.al, %_ZN7testing7MessageD2Ev.exit5.i62.i, %_ZN7testing7MessageD2Ev.exit6.i52.i, %_ZN7testing7MessageD2Ev.exit5.i40.i, %_ZN7testing7MessageD2Ev.exit6.i30.i, %_ZN7testing7MessageD2Ev.exit5.i20.i, %_ZN7testing7MessageD2Ev.exit6.i.i, %_ZN7testing7MessageD2Ev.exit5.i.i
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i ], [ %i.l, %_ZN7testing7MessageD2Ev.exit5.i.i ], [ %i.ab, %_ZN7testing7MessageD2Ev.exit6.i.i ], [ %i.an, %_ZN7testing7MessageD2Ev.exit5.i20.i ], [ %i.az, %_ZN7testing7MessageD2Ev.exit6.i30.i ], [ %i.bl, %_ZN7testing7MessageD2Ev.exit5.i40.i ], [ %i.bx, %_ZN7testing7MessageD2Ev.exit6.i52.i ], [ %i.ev, %bb.al ], [ %i.cj, %_ZN7testing7MessageD2Ev.exit5.i62.i ]
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37, !noalias !10354
  resume { ptr, i32 } %.pn.pn.pn.pn.i

_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implINS4_12_GLOBAL__N_113NoDefaultCtorES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEEERSE_PSE_EESN_EENS_15AssertionResultEPKcSQ_RKT_RKT0_SQ_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37, !noalias !10354
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052618container_internal14btree_iteratorINS4_10btree_nodeINS4_15map_params_implINS4_12_GLOBAL__N_113NoDefaultCtorES9_JSt4lessIS9_ESaISt4pairIKS9_S9_EESt17integral_constantIiLi256EESG_IbLb1EEEEEEERSE_PSE_EESN_EENS_15AssertionResultEPKcSQ_RKT_RKT0_SQ_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISF_EERSA_PSA_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.1525", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1570   ; 14 uses
  %.val105 = load ptr, ptr %i.b, align 8, !tbaa !1570 ; 7 uses
  %.val118 = load ptr, ptr %0, align 8, !tbaa !1569
  %.not = icmp eq ptr %i.b, %.val118
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val103 = load i8, ptr %i.c, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val103, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val103, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val105, i64 256
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1570 ; 11 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 7 uses
  %.val116 = load i8, ptr %i.i, align 1, !tbaa !813 ; 4 uses
  %i.j = icmp ult i8 %.val116, 30
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 30, %.val116
  %i.k = load i32, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.l = and i32 %i.k, 254
  %i.m = icmp samesign ult i32 %i.l, 30
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n                    ; 2 uses
  %.sroa.speculated150 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 9 uses
  %i.p = and i32 %i.k, 255
  %i.q = zext nneg i8 %.sroa.speculated150 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.p, %i.q
  %narrow163 = add nuw nsw i8 %.sroa.speculated150, %.val116
  %i.r = icmp samesign ult i8 %narrow163, 30
  %or.cond = select i1 %.not85, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i8 %.val116 to i64
  %i.t = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val50.i = load i8, ptr %i.t, align 1, !tbaa !813
  %i.u = zext i8 %.val50.i to i64                 ; 2 uses
  %.val52.i = load ptr, ptr %i.h, align 8, !tbaa !1570 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val52.i, i64 12
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  %.val.i.i = load i64, ptr %i.y, align 1
  store i64 %.val.i.i, ptr %i.w, align 1
  %i.z = add nsw i32 %i.q, -1                     ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %i.aa, 3            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.z, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ad = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.03.i.pn.i.prol = phi ptr [ %.03.i.i.prol, %.lr.ph.i.i.prol ], [ %i.w, %.lr.ph.i.i.preheader ]
  %.0122.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.prol ], [ %i.ab, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %.03.i.i.prol = getelementptr inbounds nuw i8, ptr %.03.i.pn.i.prol, i64 8 ; 3 uses
  %.012.val.i.i.prol = load i64, ptr %.0122.i.i.prol, align 1
  store i64 %.012.val.i.i.prol, ptr %.03.i.i.prol, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.0122.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !10355

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.03.i.pn.i.unr = phi ptr [ %i.w, %.lr.ph.i.i.preheader ], [ %.03.i.i.prol, %.lr.ph.i.i.prol ]
  %.0122.i.i.unr = phi ptr [ %i.ab, %.lr.ph.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.prol ]
  %i.ah = icmp ult i64 %i.ad, 56
  br i1 %i.ah, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i.7, %.lr.ph.i.i ], [ %.03.i.pn.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0122.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.0122.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8
  %.012.val.i.i = load i64, ptr %.0122.i.i, align 1
  store i64 %.012.val.i.i, ptr %.03.i.i, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8
  %.03.i.i.1 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 16
  %.012.val.i.i.1 = load i64, ptr %i.ai, align 1
  store i64 %.012.val.i.i.1, ptr %.03.i.i.1, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 16
  %.03.i.i.2 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 24
  %.012.val.i.i.2 = load i64, ptr %i.aj, align 1
  store i64 %.012.val.i.i.2, ptr %.03.i.i.2, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 24
  %.03.i.i.3 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 32
  %.012.val.i.i.3 = load i64, ptr %i.ak, align 1
  store i64 %.012.val.i.i.3, ptr %.03.i.i.3, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 32
  %.03.i.i.4 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 40
  %.012.val.i.i.4 = load i64, ptr %i.al, align 1
  store i64 %.012.val.i.i.4, ptr %.03.i.i.4, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 40
  %.03.i.i.5 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 48
  %.012.val.i.i.5 = load i64, ptr %i.am, align 1
  store i64 %.012.val.i.i.5, ptr %.03.i.i.5, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 48
  %.03.i.i.6 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 56
  %.012.val.i.i.6 = load i64, ptr %i.an, align 1
  store i64 %.012.val.i.i.6, ptr %.03.i.i.6, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 56
  %.03.i.i.7 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 64 ; 2 uses
  %.012.val.i.i.7 = load i64, ptr %i.ao, align 1
  store i64 %.012.val.i.i.7, ptr %.03.i.i.7, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 64 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.ap, %i.ac
  br i1 %.not.i.i.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !406

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val51.pre.i = load ptr, ptr %i.h, align 8, !tbaa !1570
  %.val49.pre.i = load i8, ptr %i.t, align 8, !tbaa !813
  %.pre.i = zext i8 %.val49.pre.i to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit.i, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit.i ], [ %i.u, %bb.e ]
  %.val51.i = phi ptr [ %.val51.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.loopexit.i ], [ %.val52.i, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.val51.i, i64 12
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.pre-phi.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %.val.i55.i = load i64, ptr %i.as, align 1
  store i64 %.val.i55.i, ptr %i.ar, align 1
  %i.at = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val54.i = load i8, ptr %i.at, align 2, !tbaa !813 ; 2 uses
  %i.au = zext i8 %.val54.i to i32
  %i.av = sub nsw i32 %i.au, %i.q
  %i.aw = sext i32 %i.av to i64
  %i.ax = zext nneg i8 %.sroa.speculated150 to i64 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ax ; 2 uses
  %.idx.i56.i = shl nuw nsw i64 %i.aw, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i56.i
  %.not1.i57.i = icmp eq i8 %.val54.i, %.sroa.speculated150
  br i1 %.not1.i57.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit64.i, label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i, %.lr.ph.i59.i
  %.03.i60.i = phi ptr [ %i.bb, %.lr.ph.i59.i ], [ %i.ab, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i ] ; 2 uses
  %.0122.i61.i = phi ptr [ %i.ba, %.lr.ph.i59.i ], [ %i.ay, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i ] ; 2 uses
  %.012.val.i62.i = load i64, ptr %.0122.i61.i, align 1
  store i64 %.012.val.i62.i, ptr %.03.i60.i, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0122.i61.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03.i60.i, i64 8
  %.not.i63.i = icmp eq ptr %i.ba, %i.az
  br i1 %.not.i63.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit64.i, label %.lr.ph.i59.i, !llvm.loop !406

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit64.i: ; preds = %.lr.ph.i59.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit.i
  %i.bc = getelementptr i8, ptr %i.h, i64 11
  %.val53.i = load i8, ptr %i.bc, align 1, !tbaa !813
  %.not.i65.i = icmp eq i8 %.val53.i, 0
  br i1 %.not.i65.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE23rebalance_right_to_leftEhPSG_PSB_.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE10transfer_nEmmmPSG_PSB_.exit64.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 3 uses
  %xtraiter177 = and i64 %i.ax, 1
  %i.bf = icmp samesign ult i8 %i.o, 2
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ax, 30
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod179 = trunc i8 %.sroa.speculated150 to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %.val46.i.epil = load i8, ptr %i.i, align 2, !tbaa !813
  %i.bg = trunc i64 %indvars.iv.i.epil.init to i8
  %i.bh = add i8 %i.bg, 1
  %i.bi = add i8 %.val46.i.epil, %i.bh            ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i.epil.init
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1570 ; 3 uses
  %i.bl = zext i8 %i.bi to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bl
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !1570
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i8 %i.bi, ptr %i.bn, align 1, !tbaa !813
  store ptr %i.h, ptr %i.bk, align 8, !tbaa !1570
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.at, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated150
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE23rebalance_right_to_leftEhPSG_PSB_.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bo = trunc nuw i64 %indvars.iv.next.i to i8
  %i.bp = add i8 %.val46.i, %i.bo                 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1570 ; 3 uses
  %i.bs = zext i8 %i.bp to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bs
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !1570
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i8 %i.bp, ptr %i.bu, align 1, !tbaa !813
  store ptr %i.h, ptr %i.br, align 8, !tbaa !1570
  %.val46.i.1 = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.bv = trunc nuw i64 %indvars.iv.next.i.1 to i8
  %i.bw = add i8 %.val46.i.1, %i.bv               ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1570 ; 3 uses
  %i.bz = zext i8 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bz
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !1570
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i8 %i.bw, ptr %i.cb, align 1, !tbaa !813
  store ptr %i.h, ptr %i.by, align 8, !tbaa !1570
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.f, !llvm.loop !10356

.lr.ph6.i:                                        ; preds = %.preheader.i, %.lr.ph6.i
  %.05.i = phi i8 [ %i.cj, %.lr.ph6.i ], [ 0, %.preheader.i ] ; 4 uses
  %i.cc = add i8 %.05.i, %.sroa.speculated150
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1570 ; 3 uses
  %i.cg = zext i8 %.05.i to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !1570
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %.05.i, ptr %i.ci, align 1, !tbaa !813
  store ptr %i.b, ptr %i.cf, align 8, !tbaa !1570
  %i.cj = add i8 %.05.i, 1                        ; 2 uses
  %i.ck = zext i8 %i.cj to i32
  %.val45.i = load i8, ptr %i.at, align 2, !tbaa !813
  %i.cl = zext i8 %.val45.i to i32
  %i.cm = sub nsw i32 %i.cl, %i.q
  %.not.i = icmp slt i32 %i.cm, %i.ck
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_113NoDefaultCtorES5_JSt4lessIS5_ESaISt4pairIKS5_S5_EESt17integral_constantIiLi256EESC_IbLb1EEEEEE23rebalance_right_to_leftEhPSG_PSB_.exit, label %.lr.ph6.i, !llvm.loop !10357
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2026052618container_internal24btree_multiset_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES8_IbLb1EEEEEEEE6insertEOi:bb.a
  %.0122.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i8.i.i.i ], [ %.0122.i.i.i.i.i.i.ph, %.lr.ph.i.i.i8.i.i.i.preheader ] ; 2 uses
  %.012.val.i.i.i.i.i.i = load i32, ptr %.0122.i.i.i.i.i.i, align 4
  store i32 %.012.val.i.i.i.i.i.i, ptr %.03.i.i.i.i.i.i, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 4
  %.not.i.i.i9.i.i.i = icmp eq ptr %i.bt, %i.bf
  br i1 %.not.i.i.i9.i.i.i, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE16internal_emplaceIJiEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERKiPSG_EESJ_DpOT_ENKUlhE_clEh.exit.i.i.i, label %.lr.ph.i.i.i8.i.i.i, !llvm.loop !14232

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE16internal_emplaceIJiEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERKiPSG_EESJ_DpOT_ENKUlhE_clEh.exit.i.i.i: ; preds = %.lr.ph.i.i.i8.i.i.i, %middle.block, %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 10
  store i8 %.val13.i.i.i.i.i, ptr %i.bv, align 2, !tbaa !813
  store i8 0, ptr %i.aq, align 1, !tbaa !813
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE16clear_and_deleteEPSB_PS6_(ptr noundef nonnull %i.ao)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.bw, align 8, !tbaa !1921
  store ptr %i.az, ptr %0, align 8, !tbaa !1921
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKiPSF_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE16internal_emplaceIJiEEENS1_14btree_iteratorINS1_10btree_nodeISA_EERKiPSG_EESJ_DpOT_ENKUlhE_clEh.exit.i.i.i, %bb.j
  %i.bx = load ptr, ptr %2, align 8, !tbaa !1924  ; 5 uses
  %i.by = load i32, ptr %i.aa, align 8, !tbaa !1923 ; 3 uses
  %i.bz = trunc i32 %i.by to i8                   ; 2 uses
  %i.ca = and i32 %i.by, 255                      ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bx, i64 10     ; 3 uses
  %.val21.i.i.i.i = load i8, ptr %i.cb, align 1, !tbaa !813 ; 3 uses
  %i.cc = icmp ugt i8 %.val21.i.i.i.i, %i.bz
  %i.cd = zext nneg i32 %i.ca to i64              ; 2 uses
  br i1 %i.cc, label %.lr.ph.preheader.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.cf = getelementptr [4 x i8], ptr %i.ce, i64 %i.cd ; 2 uses
  %narrow.i.i.i.i = sub nuw i8 %.val21.i.i.i.i, %i.bz
  %i.cg = zext i8 %narrow.i.i.i.i to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.cg, 2
  %i.ch = getelementptr i8, ptr %i.cf, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ch, ptr align 4 %i.cf, i64 %.idx.i.i.i.i.i, i1 false)
  %.val19.pre.i.i.i.i = load i8, ptr %i.cb, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i.i.i.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.n
  %.val19.i.i.i.i = phi i8 [ %.val19.pre.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ %.val21.i.i.i.i, %bb.n ]
  %.val23.i.i.i.i = load i32, ptr %1, align 4, !tbaa !802
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cd
  store i32 %.val23.i.i.i.i, ptr %i.cj, align 4, !tbaa !802
  %i.ck = add i8 %.val19.i.i.i.i, 1               ; 3 uses
  store i8 %i.ck, ptr %i.cb, align 1, !tbaa !813
  %i.cl = getelementptr i8, ptr %i.bx, i64 11
  %.val22.i.i.i.i = load i8, ptr %i.cl, align 1, !tbaa !813
  %.not.i24.i.i.i.i = icmp eq i8 %.val22.i.i.i.i, 0
  br i1 %.not.i24.i.i.i.i, label %bb.o, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE12insert_multiIiEENS1_14btree_iteratorINS1_10btree_nodeISA_EERKiPSG_EEOT_.exit

bb.o:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i.i.i.i
  %i.cm = zext i8 %i.ck to i32
  %i.cn = add nuw nsw i32 %i.ca, 1                ; 2 uses
  %i.co = icmp samesign ult i32 %i.cn, %i.cm
  br i1 %i.co, label %.lr.ph.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE12insert_multiIiEENS1_14btree_iteratorINS1_10btree_nodeISA_EERKiPSG_EEOT_.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 256 ; 10 uses
  %i.cq = zext i8 %i.ck to i64                    ; 4 uses
  %i.cr = zext nneg i32 %i.cn to i64
  %.mask = and i32 %i.by, 255
  %i.cs = zext nneg i32 %.mask to i64             ; 2 uses
  %i.ct = xor i64 %i.cs, -1
  %i.cu = add nsw i64 %i.ct, %i.cq
  %i.cv = add nsw i64 %i.cq, -2
  %i.cw = sub nsw i64 %i.cv, %i.cs
  %xtraiter = and i64 %i.cu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i, %.prol.preheader
  %indvars.iv.i.i.i.prol = phi i64 [ %i.cx, %.prol.preheader ], [ %i.cq, %.lr.ph.i.i.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i ]
  %i.cx = add nsw i64 %indvars.iv.i.i.i.prol, -1  ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1921 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.i.i.i.prol
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !1921
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dc = trunc nuw i64 %indvars.iv.i.i.i.prol to i8
  store i8 %i.dc, ptr %i.db, align 1, !tbaa !813
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !14233

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.unr = phi i64 [ %i.cq, %.lr.ph.i.i.i.i ], [ %i.cx, %.prol.preheader ]
  %i.dd = icmp ult i64 %i.cw, 3
  br i1 %i.dd, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE12insert_multiIiEENS1_14btree_iteratorINS1_10btree_nodeISA_EERKiPSG_EEOT_.exit, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.i.i.i.unr, %.prol.loopexit ] ; 6 uses
  %i.de = add nsw i64 %indvars.iv.i.i.i, -1       ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1921 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.i.i.i
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !1921
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = trunc nuw i64 %indvars.iv.i.i.i to i8
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !813
  %i.dk = add nsw i64 %indvars.iv.i.i.i, -2       ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1921 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.de
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !1921
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = trunc nuw i64 %i.de to i8
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !813
  %i.dq = add nsw i64 %indvars.iv.i.i.i, -3       ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !1921 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dk
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !1921
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dv = trunc nuw i64 %i.dk to i8
  store i8 %i.dv, ptr %i.du, align 1, !tbaa !813
  %i.dw = add nsw i64 %indvars.iv.i.i.i, -4       ; 3 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dw
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1921 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.dq
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !1921
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = trunc nuw i64 %i.dq to i8
  store i8 %i.eb, ptr %i.ea, align 1, !tbaa !813
  %.wide.i.i.i.3 = icmp ugt i64 %i.dw, %i.cr
  br i1 %.wide.i.i.i.3, label %.lr.ph.i.i.i.i.new, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE12insert_multiIiEENS1_14btree_iteratorINS1_10btree_nodeISA_EERKiPSG_EEOT_.exit, !llvm.loop !14234

_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE12insert_multiIiEENS1_14btree_iteratorINS1_10btree_nodeISA_EERKiPSG_EEOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE19transfer_n_backwardEmmmPSB_PS6_.exit.i.i.i.i, %bb.o
  %i.ec = load i64, ptr %i.a, align 8, !tbaa !1910
  %i.ed = add i64 %i.ec, 1
  store i64 %i.ed, ptr %i.a, align 8, !tbaa !1910
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISA_EERKiPSF_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.2448", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1921   ; 15 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.val105 = load ptr, ptr %i.b, align 8, !tbaa !1921 ; 7 uses
  %.val118 = load ptr, ptr %0, align 8, !tbaa !1909
  %.not = icmp eq ptr %i.b, %.val118
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val103 = load i8, ptr %i.d, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val103, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i8 %.val103, -1
  %i.f = getelementptr inbounds nuw i8, ptr %.val105, i64 256
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1921 ; 12 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = getelementptr i8, ptr %i.i, i64 10       ; 7 uses
  %.val116 = load i8, ptr %i.k, align 1, !tbaa !813 ; 4 uses
  %i.l = icmp ult i8 %.val116, 61
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 61, %.val116
  %i.m = load i32, ptr %i.a, align 8, !tbaa !802
  %i.n = and i32 %i.m, 255                        ; 2 uses
  %i.o = icmp samesign ult i32 %i.n, 61
  %i.p = zext i1 %i.o to i8
  %i.q = lshr i8 %narrow, %i.p                    ; 2 uses
  %.sroa.speculated150 = tail call i8 @llvm.umax.i8(i8 %i.q, i8 1) ; 9 uses
  %i.r = zext nneg i8 %.sroa.speculated150 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.n, %i.r
  %narrow163 = add nuw nsw i8 %.sroa.speculated150, %.val116
  %i.s = icmp samesign ult i8 %narrow163, 61
  %or.cond = select i1 %.not85, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = zext nneg i8 %.val116 to i64             ; 2 uses
  %i.u = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %.val50.i = load i8, ptr %i.u, align 1, !tbaa !813
  %i.v = zext i8 %.val50.i to i64                 ; 2 uses
  %.val52.i = load ptr, ptr %i.i, align 8, !tbaa !1921 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.t ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val52.i, i64 12
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.v
  %.val.i.i = load i32, ptr %i.z, align 4
  store i32 %.val.i.i, ptr %i.x, align 1
  %i.aa = add nsw i32 %i.r, -1                    ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 10 uses
  %.idx.i.i = shl nuw nsw i64 %i.ab, 2            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ae = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader229, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ah = shl nuw nsw i64 %i.t, 2
  %i.ai = add i64 %i.ah, %i.j
  %i.aj = sub i64 %i.ai, %i.c
  %i.ak = add i64 %i.aj, 3
  %diff.check = icmp ult i64 %i.ak, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader229, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 3 uses
  %i.al = shl i64 %n.vec, 2                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.x, i64 %i.al
  %i.an = getelementptr i8, ptr %i.ac, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ao ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.ac, i64 %i.ao ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aq = getelementptr i8, ptr %next.gep177, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep177, align 4
  %wide.load178 = load <4 x i32>, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %wide.load, ptr %i.ap, align 1
  store <4 x i32> %wide.load178, ptr %i.ar, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !14235

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.loopexit.i, label %.lr.ph.i.i.preheader229

.lr.ph.i.i.preheader229:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.03.i.pn.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.preheader ], [ %i.am, %middle.block ]
  %.0122.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader229, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i, %.lr.ph.i.i ], [ %.03.i.pn.i.ph, %.lr.ph.i.i.preheader229 ]
  %.0122.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %.0122.i.i.ph, %.lr.ph.i.i.preheader229 ] ; 2 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 4 ; 2 uses
  %.012.val.i.i = load i32, ptr %.0122.i.i, align 4
  store i32 %.012.val.i.i, ptr %.03.i.i, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !14236

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.val51.pre.i = load ptr, ptr %i.i, align 8, !tbaa !1921
  %.val49.pre.i = load i8, ptr %i.u, align 8, !tbaa !813
  %.pre.i = zext i8 %.val49.pre.i to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.loopexit.i, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.loopexit.i ], [ %i.v, %bb.e ]
  %.val51.i = phi ptr [ %.val51.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.loopexit.i ], [ %.val52.i, %bb.e ]
  %i.au = getelementptr inbounds nuw i8, ptr %.val51.i, i64 12
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.pre-phi.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  %.val.i55.i = load i32, ptr %i.aw, align 4
  store i32 %.val.i55.i, ptr %i.av, align 1
  %i.ax = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val54.i = load i8, ptr %i.ax, align 2, !tbaa !813 ; 3 uses
  %i.ay = zext i8 %.val54.i to i32
  %i.az = sub nsw i32 %i.ay, %i.r
  %i.ba = sext i32 %i.az to i64
  %i.bb = zext nneg i8 %.sroa.speculated150 to i64 ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bb ; 4 uses
  %.idx.i56.i = shl nuw nsw i64 %i.ba, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i56.i
  %.not1.i57.i = icmp eq i8 %.val54.i, %.sroa.speculated150
  br i1 %.not1.i57.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit64.i, label %.lr.ph.i59.i.preheader

.lr.ph.i59.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.i
  %i.be = zext i8 %.val54.i to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = shl nuw nsw i64 %i.bb, 2
  %i.bh = add nsw i64 %i.bf, -4
  %i.bi = sub nsw i64 %i.bh, %i.bg                ; 2 uses
  %i.bj = lshr exact i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check181 = icmp ult i64 %i.bi, 28
  br i1 %min.iters.check181, label %.lr.ph.i59.i.preheader228, label %vector.ph182

vector.ph182:                                     ; preds = %.lr.ph.i59.i.preheader
  %n.vec183 = and i64 %i.bk, 9223372036854775800  ; 3 uses
  %i.bl = shl i64 %n.vec183, 2                    ; 2 uses
  %i.bm = getelementptr i8, ptr %i.ac, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bc, i64 %i.bl
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next190, %vector.body184 ] ; 2 uses
  %i.bo = shl i64 %index185, 2                    ; 2 uses
  %next.gep186 = getelementptr i8, ptr %i.ac, i64 %i.bo ; 2 uses
  %next.gep187 = getelementptr i8, ptr %i.bc, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep187, i64 16
  %wide.load188 = load <4 x i32>, ptr %next.gep187, align 4
  %wide.load189 = load <4 x i32>, ptr %i.bp, align 4
  %i.bq = getelementptr i8, ptr %next.gep186, i64 16
  store <4 x i32> %wide.load188, ptr %next.gep186, align 1
  store <4 x i32> %wide.load189, ptr %i.bq, align 1
  %index.next190 = add nuw i64 %index185, 8       ; 2 uses
  %i.br = icmp eq i64 %index.next190, %n.vec183
  br i1 %i.br, label %middle.block191, label %vector.body184, !llvm.loop !14237

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.bk, %n.vec183
  br i1 %cmp.n192, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit64.i, label %.lr.ph.i59.i.preheader228

.lr.ph.i59.i.preheader228:                        ; preds = %.lr.ph.i59.i.preheader, %middle.block191
  %.03.i60.i.ph = phi ptr [ %i.ac, %.lr.ph.i59.i.preheader ], [ %i.bm, %middle.block191 ]
  %.0122.i61.i.ph = phi ptr [ %i.bc, %.lr.ph.i59.i.preheader ], [ %i.bn, %middle.block191 ]
  br label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i.preheader228, %.lr.ph.i59.i
  %.03.i60.i = phi ptr [ %i.bt, %.lr.ph.i59.i ], [ %.03.i60.i.ph, %.lr.ph.i59.i.preheader228 ] ; 2 uses
  %.0122.i61.i = phi ptr [ %i.bs, %.lr.ph.i59.i ], [ %.0122.i61.i.ph, %.lr.ph.i59.i.preheader228 ] ; 2 uses
  %.012.val.i62.i = load i32, ptr %.0122.i61.i, align 4
  store i32 %.012.val.i62.i, ptr %.03.i60.i, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.0122.i61.i, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03.i60.i, i64 4
  %.not.i63.i = icmp eq ptr %i.bs, %i.bd
  br i1 %.not.i63.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit64.i, label %.lr.ph.i59.i, !llvm.loop !14238

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit64.i: ; preds = %.lr.ph.i59.i, %middle.block191, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit.i
  %i.bu = getelementptr i8, ptr %i.i, i64 11
  %.val53.i = load i8, ptr %i.bu, align 1, !tbaa !813
  %.not.i65.i = icmp eq i8 %.val53.i, 0
  br i1 %.not.i65.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE23rebalance_right_to_leftEhPSB_PS6_.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE10transfer_nEmmmPSB_PS6_.exit64.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 3 uses
  %xtraiter = and i64 %i.bb, 1
  %i.bx = icmp samesign ult i8 %i.q, 2
  br i1 %i.bx, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bb, 62
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod230 = trunc i8 %.sroa.speculated150 to i1
  tail call void @llvm.assume(i1 %lcmp.mod230)
  %.val46.i.epil = load i8, ptr %i.k, align 2, !tbaa !813
  %i.by = trunc i64 %indvars.iv.i.epil.init to i8
  %i.bz = add i8 %i.by, 1
  %i.ca = add i8 %.val46.i.epil, %i.bz            ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i.epil.init
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1921 ; 3 uses
  %i.cd = zext i8 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cd
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !1921
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i8 %i.ca, ptr %i.cf, align 1, !tbaa !813
  store ptr %i.i, ptr %i.cc, align 8, !tbaa !1921
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.ax, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated150
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_115IntCompareToCmpESaIiESt17integral_constantIiLi256EES7_IbLb1EEEEEE23rebalance_right_to_leftEhPSB_PS6_.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.k, align 2, !tbaa !813
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next.i to i8
  %i.ch = add i8 %.val46.i, %i.cg                 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1921 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !1921
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !813
  store ptr %i.i, ptr %i.cj, align 8, !tbaa !1921
end_hunk_8
begin_hunk_9_@_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_18ElementsAreMatcherISt5tupleIJNS0_11PairMatcherIiiEES5_S5_S5_S5_S5_S5_EEEEEclIN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEEENS_15AssertionResultEPKcRKT_:bb.a
          cleanup                                 ; 2 uses
  %i.eo = load ptr, ptr %11, align 8, !tbaa !810  ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.aq
  br i1 %i.ep, label %.body43, label %.body43.sink.split

.body43.sink.split:                               ; preds = %bb.ad, %bb.s
  %.sink = phi ptr [ %i.be, %bb.s ], [ %i.eo, %bb.ad ]
  %.pn.ph = phi { ptr, i32 } [ %i.bd, %bb.s ], [ %i.en, %bb.ad ]
  %i.eq = load i64, ptr %i.aq, align 8, !tbaa !813
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.er) #36
  br label %.body43

.body43:                                          ; preds = %.body43.sink.split, %bb.ad, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.s ], [ %i.en, %bb.ad ], [ %.pn.ph, %.body43.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %bb.ah

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %bb.aa
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.body50:                                          ; preds = %_ZN7testing7MessageD2Ev.exit5.i, %bb.af
  %eh.lpad-body51 = phi { ptr, i32 } [ %i.et, %bb.af ], [ %i.co, %_ZN7testing7MessageD2Ev.exit5.i ] ; 2 uses
  %i.eu = load ptr, ptr %13, align 8, !tbaa !810  ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.bo
  br i1 %i.ev, label %.body46, label %.body46.sink.split

.body46.sink.split:                               ; preds = %.body50, %bb.w
  %.sink90 = phi ptr [ %i.cc, %bb.w ], [ %i.eu, %.body50 ]
  %.pn14.ph = phi { ptr, i32 } [ %i.cb, %bb.w ], [ %eh.lpad-body51, %.body50 ]
  %i.ew = load i64, ptr %i.bo, align 8, !tbaa !813
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %.sink90, i64 noundef %i.ex) #36
  br label %.body46

.body46:                                          ; preds = %.body46.sink.split, %.body50, %bb.w
  %.pn14 = phi { ptr, i32 } [ %i.cb, %bb.w ], [ %eh.lpad-body51, %.body50 ], [ %.pn14.ph, %.body46.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #37
  br label %bb.ag

bb.ag:                                            ; preds = %.body46, %bb.ae
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %.body46 ], [ %i.es, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.body43, %bb.q
  %.pn14.pn.pn = phi { ptr, i32 } [ %.pn14.pn, %bb.ag ], [ %.pn, %.body43 ], [ %i.ao, %bb.q ]
  call void @_ZN7testing25StringMatchResultListenerD2Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %10) #37
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.p
  %.pn14.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn, %bb.ah ], [ %i.an, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %.body35

.body35:                                          ; preds = %bb.o, %bb.j, %bb.ai
  %.pn14.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn, %bb.ai ], [ %i.am, %bb.o ], [ %i.ac, %bb.j ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #37
  br label %bb.aj

bb.aj:                                            ; preds = %.body35, %bb.n
  %.pn14.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn, %.body35 ], [ %i.al, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %.body

bb.ak:                                            ; preds = %bb.c, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEEE, i64 16), ptr %8, align 8, !tbaa !816
  %i.ey = load ptr, ptr %i.b, align 8, !tbaa !1818 ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i66, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEED2Ev.exit, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEE8IsSharedEv.exit.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEE8IsSharedEv.exit.i.i: ; preds = %bb.ak
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1823
  %.not.i.i67 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i67, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEE8IsSharedEv.exit.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !813
  %i.fd = atomicrmw sub ptr %i.fc, i32 1 acq_rel, align 4
  %i.fe = icmp eq i32 %i.fd, 1
  br i1 %i.fe, label %bb.am, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.ff = load ptr, ptr %i.b, align 8, !tbaa !1818
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !1823
  %i.fi = load ptr, ptr %i.fb, align 8, !tbaa !813
  invoke void %i.fh(ptr noundef %i.fi)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEED2Ev.exit unwind label %bb.an, !inline_history !492

bb.an:                                            ; preds = %bb.am
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #39, !inline_history !1824
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEED2Ev.exit: ; preds = %bb.ak, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEE8IsSharedEv.exit.i.i, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  ret void

.body:                                            ; preds = %bb.d, %.body.i, %bb.aj
  %.pn21 = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn.pn, %bb.aj ], [ %i.k, %bb.d ], [ %i.g, %.body.i ]
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multimapIiiSt4lessIiESaISt4pairIKiiEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  resume { ptr, i32 } %.pn21
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implIiiJSt7greaterIiESaISt4pairIKiiEESt17integral_constantIiLi256EESB_IbLb1EEEEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1941
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJSt7greaterIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1940
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJSt7greaterIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEE16clear_and_deleteEPSE_PS9_(ptr noundef %i.d, ptr noundef nonnull %i.e)
          to label %_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJSt7greaterIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #39
  unreachable

_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJSt7greaterIiESaISt4pairIKiiEESt17integral_constantIiLi256EESA_IbLb1EEEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS6_EERSt4pairIKiiEPSD_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.2525", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1931   ; 14 uses
  %.val100 = load ptr, ptr %i.b, align 8, !tbaa !1931 ; 7 uses
  %.val98 = load ptr, ptr %0, align 8, !tbaa !1930
  %.not = icmp eq ptr %i.b, %.val98
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val108 = load i8, ptr %i.c, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val108, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val108, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val100, i64 256
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1931 ; 11 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 7 uses
  %.val118 = load i8, ptr %i.i, align 1, !tbaa !813 ; 4 uses
  %i.j = icmp ult i8 %.val118, 30
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 30, %.val118
  %i.k = load i32, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.l = and i32 %i.k, 254
  %i.m = icmp samesign ult i32 %i.l, 30
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n                    ; 2 uses
  %.sroa.speculated151 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 9 uses
  %i.p = and i32 %i.k, 255
  %i.q = zext nneg i8 %.sroa.speculated151 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.p, %i.q
  %narrow164 = add nuw nsw i8 %.sroa.speculated151, %.val118
  %i.r = icmp samesign ult i8 %narrow164, 30
  %or.cond = select i1 %.not85, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i8 %.val118 to i64
  %i.t = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val52.i = load i8, ptr %i.t, align 1, !tbaa !813
  %i.u = zext i8 %.val52.i to i64                 ; 2 uses
  %.val50.i = load ptr, ptr %i.h, align 8, !tbaa !1931 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val50.i, i64 12
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  %.val.i.i = load i64, ptr %i.y, align 1
  store i64 %.val.i.i, ptr %i.w, align 1
  %i.z = add nsw i32 %i.q, -1                     ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %i.aa, 3            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.z, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ad = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.03.i.pn.i.prol = phi ptr [ %.03.i.i.prol, %.lr.ph.i.i.prol ], [ %i.w, %.lr.ph.i.i.preheader ]
  %.0122.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.prol ], [ %i.ab, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %.03.i.i.prol = getelementptr inbounds nuw i8, ptr %.03.i.pn.i.prol, i64 8 ; 3 uses
  %.012.val.i.i.prol = load i64, ptr %.0122.i.i.prol, align 1
  store i64 %.012.val.i.i.prol, ptr %.03.i.i.prol, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.0122.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !14360

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.03.i.pn.i.unr = phi ptr [ %i.w, %.lr.ph.i.i.preheader ], [ %.03.i.i.prol, %.lr.ph.i.i.prol ]
  %.0122.i.i.unr = phi ptr [ %i.ab, %.lr.ph.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.prol ]
  %i.ah = icmp ult i64 %i.ad, 56
  br i1 %i.ah, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i.7, %.lr.ph.i.i ], [ %.03.i.pn.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0122.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.0122.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8
  %.012.val.i.i = load i64, ptr %.0122.i.i, align 1
  store i64 %.012.val.i.i, ptr %.03.i.i, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8
  %.03.i.i.1 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 16
  %.012.val.i.i.1 = load i64, ptr %i.ai, align 1
  store i64 %.012.val.i.i.1, ptr %.03.i.i.1, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 16
  %.03.i.i.2 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 24
  %.012.val.i.i.2 = load i64, ptr %i.aj, align 1
  store i64 %.012.val.i.i.2, ptr %.03.i.i.2, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 24
  %.03.i.i.3 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 32
  %.012.val.i.i.3 = load i64, ptr %i.ak, align 1
  store i64 %.012.val.i.i.3, ptr %.03.i.i.3, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 32
  %.03.i.i.4 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 40
  %.012.val.i.i.4 = load i64, ptr %i.al, align 1
  store i64 %.012.val.i.i.4, ptr %.03.i.i.4, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 40
  %.03.i.i.5 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 48
  %.012.val.i.i.5 = load i64, ptr %i.am, align 1
  store i64 %.012.val.i.i.5, ptr %.03.i.i.5, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 48
  %.03.i.i.6 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 56
  %.012.val.i.i.6 = load i64, ptr %i.an, align 1
  store i64 %.012.val.i.i.6, ptr %.03.i.i.6, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 56
  %.03.i.i.7 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 64 ; 2 uses
  %.012.val.i.i.7 = load i64, ptr %i.ao, align 1
  store i64 %.012.val.i.i.7, ptr %.03.i.i.7, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 64 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.ap, %i.ac
  br i1 %.not.i.i.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !524

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val49.pre.i = load ptr, ptr %i.h, align 8, !tbaa !1931
  %.val51.pre.i = load i8, ptr %i.t, align 8, !tbaa !813
  %.pre.i = zext i8 %.val51.pre.i to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit.loopexit.i, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit.loopexit.i ], [ %i.u, %bb.e ]
  %.val49.i = phi ptr [ %.val49.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit.loopexit.i ], [ %.val50.i, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.val49.i, i64 12
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.pre-phi.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %.val.i55.i = load i64, ptr %i.as, align 1
  store i64 %.val.i55.i, ptr %i.ar, align 1
  %i.at = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val54.i = load i8, ptr %i.at, align 2, !tbaa !813 ; 2 uses
  %i.au = zext i8 %.val54.i to i32
  %i.av = sub nsw i32 %i.au, %i.q
  %i.aw = sext i32 %i.av to i64
  %i.ax = zext nneg i8 %.sroa.speculated151 to i64 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ax ; 2 uses
  %.idx.i56.i = shl nuw nsw i64 %i.aw, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i56.i
  %.not1.i57.i = icmp eq i8 %.val54.i, %.sroa.speculated151
  br i1 %.not1.i57.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit64.i, label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit.i, %.lr.ph.i59.i
  %.03.i60.i = phi ptr [ %i.bb, %.lr.ph.i59.i ], [ %i.ab, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit.i ] ; 2 uses
  %.0122.i61.i = phi ptr [ %i.ba, %.lr.ph.i59.i ], [ %i.ay, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit.i ] ; 2 uses
  %.012.val.i62.i = load i64, ptr %.0122.i61.i, align 1
  store i64 %.012.val.i62.i, ptr %.03.i60.i, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0122.i61.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03.i60.i, i64 8
  %.not.i63.i = icmp eq ptr %i.ba, %i.az
  br i1 %.not.i63.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit64.i, label %.lr.ph.i59.i, !llvm.loop !524

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit64.i: ; preds = %.lr.ph.i59.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit.i
  %i.bc = getelementptr i8, ptr %i.h, i64 11
  %.val53.i = load i8, ptr %i.bc, align 1, !tbaa !813
  %.not.i65.i = icmp eq i8 %.val53.i, 0
  br i1 %.not.i65.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE23rebalance_right_to_leftEhPS7_PSaISt4pairIKiiEE.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE10transfer_nEmmmPS7_PSaISt4pairIKiiEE.exit64.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 3 uses
  %xtraiter178 = and i64 %i.ax, 1
  %i.bf = icmp samesign ult i8 %i.o, 2
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ax, 30
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod179.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod180 = trunc i8 %.sroa.speculated151 to i1
  tail call void @llvm.assume(i1 %lcmp.mod180)
  %.val46.i.epil = load i8, ptr %i.i, align 2, !tbaa !813
  %i.bg = trunc i64 %indvars.iv.i.epil.init to i8
  %i.bh = add i8 %i.bg, 1
  %i.bi = add i8 %.val46.i.epil, %i.bh            ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i.epil.init
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1931 ; 3 uses
  %i.bl = zext i8 %i.bi to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bl
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !1931
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i8 %i.bi, ptr %i.bn, align 1, !tbaa !813
  store ptr %i.h, ptr %i.bk, align 8, !tbaa !1931
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.at, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated151
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE23rebalance_right_to_leftEhPS7_PSaISt4pairIKiiEE.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bo = trunc nuw i64 %indvars.iv.next.i to i8
  %i.bp = add i8 %.val46.i, %i.bo                 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1931 ; 3 uses
  %i.bs = zext i8 %i.bp to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bs
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !1931
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i8 %i.bp, ptr %i.bu, align 1, !tbaa !813
  store ptr %i.h, ptr %i.br, align 8, !tbaa !1931
  %.val46.i.1 = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.bv = trunc nuw i64 %indvars.iv.next.i.1 to i8
  %i.bw = add i8 %.val46.i.1, %i.bv               ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1931 ; 3 uses
  %i.bz = zext i8 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bz
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !1931
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i8 %i.bw, ptr %i.cb, align 1, !tbaa !813
  store ptr %i.h, ptr %i.by, align 8, !tbaa !1931
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.f, !llvm.loop !14361

.lr.ph6.i:                                        ; preds = %.preheader.i, %.lr.ph6.i
  %.05.i = phi i8 [ %i.cj, %.lr.ph6.i ], [ 0, %.preheader.i ] ; 4 uses
  %i.cc = add i8 %.05.i, %.sroa.speculated151
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1931 ; 3 uses
  %i.cg = zext i8 %.05.i to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !1931
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %.05.i, ptr %i.ci, align 1, !tbaa !813
  store ptr %i.b, ptr %i.cf, align 8, !tbaa !1931
  %i.cj = add i8 %.05.i, 1                        ; 2 uses
  %i.ck = zext i8 %i.cj to i32
  %.val45.i = load i8, ptr %i.at, align 2, !tbaa !813
  %i.cl = zext i8 %.val45.i to i32
  %i.cm = sub nsw i32 %i.cl, %i.q
  %.not.i = icmp slt i32 %i.cm, %i.ck
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_115IntCompareToCmpEEEEE23rebalance_right_to_leftEhPS7_PSaISt4pairIKiiEE.exit, label %.lr.ph6.i, !llvm.loop !14362
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_146Btree_UserProvidedKeyCompareToComparators_Test8TestBodyEv:bb.a

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !816
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %i.sj = load ptr, ptr %i.si, align 8
  call void %i.sj(ptr noundef nonnull align 8 dereferenceable(128) %i.sg) #37, !inline_history !4
  br label %bb.dd

bb.cy:                                            ; preds = %bb.ct
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit305

bb.cz:                                            ; preds = %bb.cu
  %i.sl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

bb.da:                                            ; preds = %bb.cv
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.db:                                            ; preds = %bb.cw
  %i.sn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #37
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.pn43 = phi { ptr, i32 } [ %i.sn, %bb.db ], [ %i.sm, %bb.da ] ; 2 uses
  %i.so = load ptr, ptr %24, align 8, !tbaa !810  ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.sq = icmp eq ptr %i.so, %i.sp
  br i1 %i.sq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %bb.dc
  %i.sr = load i64, ptr %i.sp, align 8, !tbaa !813
  %i.ss = add i64 %i.sr, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.ss) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300, %bb.cz
  %.pn43.pn = phi { ptr, i32 } [ %i.sl, %bb.cz ], [ %.pn43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300 ], [ %.pn43, %bb.dc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #37
  %i.st = load ptr, ptr %21, align 8, !tbaa !827  ; 3 uses
  %.not.i.i303 = icmp eq ptr %i.st, null
  br i1 %.not.i.i303, label %_ZN7testing7MessageD2Ev.exit305, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i304

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i304: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !816
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.sw = load ptr, ptr %i.sv, align 8
  call void %i.sw(ptr noundef nonnull align 8 dereferenceable(128) %i.st) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit305

_ZN7testing7MessageD2Ev.exit305:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i304, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %bb.cy
  %.pn43.pn.pn = phi { ptr, i32 } [ %i.sk, %bb.cy ], [ %.pn43.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ], [ %.pn43.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i304 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %20) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  br label %bb.dh

bb.dd:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #37
  %.pr335 = load ptr, ptr %i.rv, align 8, !tbaa !845 ; 4 uses
  %.not.i.i.i306 = icmp eq ptr %.pr335, null
  br i1 %.not.i.i.i306, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit310, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sx = load ptr, ptr %.pr335, align 8, !tbaa !810 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %.pr335, i64 16 ; 2 uses
  %i.sz = icmp eq ptr %i.sx, %i.sy
  br i1 %i.sz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i307: ; preds = %bb.de
  %i.ta = load i64, ptr %i.sy, align 8, !tbaa !813
  %i.tb = add i64 %i.ta, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.tb) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i308

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i308: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i307
  call void @_ZdlPvm(ptr noundef nonnull %.pr335, i64 noundef 32) #36
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit310

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit310: ; preds = %.loopexit.i.i.i.i.i282, %_ZNK4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEEEE8containsIiEEbRKi.exit291, %bb.dd, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #37
  %i.tc = icmp eq i64 %.val64, 0
  br i1 %i.tc, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEEEED2Ev.exit, label %bb.df

bb.df:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit310
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE16clear_and_deleteEPS7_PSaIiE(ptr noundef %.val68)
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEEEED2Ev.exit

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEEEED2Ev.exit: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit310, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %.val54 = load i64, ptr %i.f, align 8, !tbaa !14953
  %i.td = icmp eq i64 %.val54, 0
  br i1 %i.td, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEEEED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEEEED2Ev.exit
  %.val53 = load ptr, ptr %3, align 8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE16clear_and_deleteEPS7_PSaIiE(ptr noundef %.val53)
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEEEED2Ev.exit

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEEEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEEEED2Ev.exit, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void

bb.dh:                                            ; preds = %_ZN7testing7MessageD2Ev.exit305, %_ZN7testing7MessageD2Ev.exit264
  %.pn43.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn, %_ZN7testing7MessageD2Ev.exit305 ], [ %.pn38.pn.pn, %_ZN7testing7MessageD2Ev.exit264 ] ; 2 uses
  %i.te = icmp eq i64 %.val64, 0
  br i1 %i.te, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEEEED2Ev.exit311, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE16clear_and_deleteEPS7_PSaIiE(ptr noundef %.val68)
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEEEED2Ev.exit311

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEEEED2Ev.exit311: ; preds = %bb.di, %bb.dh, %.body229
  %.pn43.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.oz, %.body229 ], [ %.pn43.pn.pn.pn.pn, %bb.dh ], [ %.pn43.pn.pn.pn.pn, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #37
  %.val52.pre = load i64, ptr %i.f, align 8, !tbaa !14953
  br label %bb.dj

bb.dj:                                            ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEEEED2Ev.exit311, %_ZN7testing7MessageD2Ev.exit114, %_ZN7testing7MessageD2Ev.exit78
  %.val52 = phi i64 [ %.val52.pre, %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEEEED2Ev.exit311 ], [ %.val42.i.i.i.pr.i.i.i, %_ZN7testing7MessageD2Ev.exit114 ], [ %.val42.i.i.i.pr.i.i.i, %_ZN7testing7MessageD2Ev.exit78 ]
  %.pn43.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn43.pn.pn.pn.pn.pn, %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEEEED2Ev.exit311 ], [ %.pn33.pn.pn, %_ZN7testing7MessageD2Ev.exit114 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit78 ] ; 2 uses
  %i.tf = icmp eq i64 %.val52, 0
  br i1 %i.tf, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEEEED2Ev.exit312, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %.val = load ptr, ptr %3, align 8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE16clear_and_deleteEPS7_PSaIiE(ptr noundef %.val)
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEEEED2Ev.exit312

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEEEED2Ev.exit312: ; preds = %bb.dk, %bb.dj, %.body
  %.pn43.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ez, %.body ], [ %.pn43.pn.pn.pn.pn.pn.pn, %bb.dj ], [ %.pn43.pn.pn.pn.pn.pn.pn, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %.pn43.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS6_EERKiPSB_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.2644", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1982   ; 15 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.val100 = load ptr, ptr %i.b, align 8, !tbaa !1982 ; 7 uses
  %.val98 = load ptr, ptr %0, align 8, !tbaa !1981
  %.not = icmp eq ptr %i.b, %.val98
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val108 = load i8, ptr %i.d, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val108, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i8 %.val108, -1
  %i.f = getelementptr inbounds nuw i8, ptr %.val100, i64 256
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1982 ; 12 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = getelementptr i8, ptr %i.i, i64 10       ; 7 uses
  %.val118 = load i8, ptr %i.k, align 1, !tbaa !813 ; 4 uses
  %i.l = icmp ult i8 %.val118, 61
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 61, %.val118
  %i.m = load i32, ptr %i.a, align 8, !tbaa !802
  %i.n = and i32 %i.m, 255                        ; 2 uses
  %i.o = icmp samesign ult i32 %i.n, 61
  %i.p = zext i1 %i.o to i8
  %i.q = lshr i8 %narrow, %i.p                    ; 2 uses
  %.sroa.speculated151 = tail call i8 @llvm.umax.i8(i8 %i.q, i8 1) ; 9 uses
  %i.r = zext nneg i8 %.sroa.speculated151 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.n, %i.r
  %narrow164 = add nuw nsw i8 %.sroa.speculated151, %.val118
  %i.s = icmp samesign ult i8 %narrow164, 61
  %or.cond = select i1 %.not85, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = zext nneg i8 %.val118 to i64             ; 2 uses
  %i.u = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %.val52.i = load i8, ptr %i.u, align 1, !tbaa !813
  %i.v = zext i8 %.val52.i to i64                 ; 2 uses
  %.val50.i = load ptr, ptr %i.i, align 8, !tbaa !1982 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.t ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val50.i, i64 12
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.v
  %.val.i.i = load i32, ptr %i.z, align 4
  store i32 %.val.i.i, ptr %i.x, align 1
  %i.aa = add nsw i32 %i.r, -1                    ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 10 uses
  %.idx.i.i = shl nuw nsw i64 %i.ab, 2            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ae = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader230, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ah = shl nuw nsw i64 %i.t, 2
  %i.ai = add i64 %i.ah, %i.j
  %i.aj = sub i64 %i.ai, %i.c
  %i.ak = add i64 %i.aj, 3
  %diff.check = icmp ult i64 %i.ak, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader230, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 3 uses
  %i.al = shl i64 %n.vec, 2                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.x, i64 %i.al
  %i.an = getelementptr i8, ptr %i.ac, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ao ; 2 uses
  %next.gep178 = getelementptr i8, ptr %i.ac, i64 %i.ao ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aq = getelementptr i8, ptr %next.gep178, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep178, align 4
  %wide.load179 = load <4 x i32>, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %wide.load, ptr %i.ap, align 1
  store <4 x i32> %wide.load179, ptr %i.ar, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !14966

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i, label %.lr.ph.i.i.preheader230

.lr.ph.i.i.preheader230:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.03.i.pn.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.preheader ], [ %i.am, %middle.block ]
  %.0122.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader230, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i, %.lr.ph.i.i ], [ %.03.i.pn.i.ph, %.lr.ph.i.i.preheader230 ]
  %.0122.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %.0122.i.i.ph, %.lr.ph.i.i.preheader230 ] ; 2 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 4 ; 2 uses
  %.012.val.i.i = load i32, ptr %.0122.i.i, align 4
  store i32 %.012.val.i.i, ptr %.03.i.i, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !14967

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.val49.pre.i = load ptr, ptr %i.i, align 8, !tbaa !1982
  %.val51.pre.i = load i8, ptr %i.u, align 8, !tbaa !813
  %.pre.i = zext i8 %.val51.pre.i to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i ], [ %i.v, %bb.e ]
  %.val49.i = phi ptr [ %.val49.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i ], [ %.val50.i, %bb.e ]
  %i.au = getelementptr inbounds nuw i8, ptr %.val49.i, i64 12
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.pre-phi.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  %.val.i55.i = load i32, ptr %i.aw, align 4
  store i32 %.val.i55.i, ptr %i.av, align 1
  %i.ax = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val54.i = load i8, ptr %i.ax, align 2, !tbaa !813 ; 3 uses
  %i.ay = zext i8 %.val54.i to i32
  %i.az = sub nsw i32 %i.ay, %i.r
  %i.ba = sext i32 %i.az to i64
  %i.bb = zext nneg i8 %.sroa.speculated151 to i64 ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bb ; 4 uses
  %.idx.i56.i = shl nuw nsw i64 %i.ba, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i56.i
  %.not1.i57.i = icmp eq i8 %.val54.i, %.sroa.speculated151
  br i1 %.not1.i57.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit64.i, label %.lr.ph.i59.i.preheader

.lr.ph.i59.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i
  %i.be = zext i8 %.val54.i to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = shl nuw nsw i64 %i.bb, 2
  %i.bh = add nsw i64 %i.bf, -4
  %i.bi = sub nsw i64 %i.bh, %i.bg                ; 2 uses
  %i.bj = lshr exact i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check182 = icmp ult i64 %i.bi, 28
  br i1 %min.iters.check182, label %.lr.ph.i59.i.preheader229, label %vector.ph183

vector.ph183:                                     ; preds = %.lr.ph.i59.i.preheader
  %n.vec184 = and i64 %i.bk, 9223372036854775800  ; 3 uses
  %i.bl = shl i64 %n.vec184, 2                    ; 2 uses
  %i.bm = getelementptr i8, ptr %i.ac, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bc, i64 %i.bl
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph183
  %index186 = phi i64 [ 0, %vector.ph183 ], [ %index.next191, %vector.body185 ] ; 2 uses
  %i.bo = shl i64 %index186, 2                    ; 2 uses
  %next.gep187 = getelementptr i8, ptr %i.ac, i64 %i.bo ; 2 uses
  %next.gep188 = getelementptr i8, ptr %i.bc, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep188, i64 16
  %wide.load189 = load <4 x i32>, ptr %next.gep188, align 4
  %wide.load190 = load <4 x i32>, ptr %i.bp, align 4
  %i.bq = getelementptr i8, ptr %next.gep187, i64 16
  store <4 x i32> %wide.load189, ptr %next.gep187, align 1
  store <4 x i32> %wide.load190, ptr %i.bq, align 1
  %index.next191 = add nuw i64 %index186, 8       ; 2 uses
  %i.br = icmp eq i64 %index.next191, %n.vec184
  br i1 %i.br, label %middle.block192, label %vector.body185, !llvm.loop !14968

middle.block192:                                  ; preds = %vector.body185
  %cmp.n193 = icmp eq i64 %i.bk, %n.vec184
  br i1 %cmp.n193, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit64.i, label %.lr.ph.i59.i.preheader229

.lr.ph.i59.i.preheader229:                        ; preds = %.lr.ph.i59.i.preheader, %middle.block192
  %.03.i60.i.ph = phi ptr [ %i.ac, %.lr.ph.i59.i.preheader ], [ %i.bm, %middle.block192 ]
  %.0122.i61.i.ph = phi ptr [ %i.bc, %.lr.ph.i59.i.preheader ], [ %i.bn, %middle.block192 ]
  br label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i.preheader229, %.lr.ph.i59.i
  %.03.i60.i = phi ptr [ %i.bt, %.lr.ph.i59.i ], [ %.03.i60.i.ph, %.lr.ph.i59.i.preheader229 ] ; 2 uses
  %.0122.i61.i = phi ptr [ %i.bs, %.lr.ph.i59.i ], [ %.0122.i61.i.ph, %.lr.ph.i59.i.preheader229 ] ; 2 uses
  %.012.val.i62.i = load i32, ptr %.0122.i61.i, align 4
  store i32 %.012.val.i62.i, ptr %.03.i60.i, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.0122.i61.i, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03.i60.i, i64 4
  %.not.i63.i = icmp eq ptr %i.bs, %i.bd
  br i1 %.not.i63.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit64.i, label %.lr.ph.i59.i, !llvm.loop !14969

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit64.i: ; preds = %.lr.ph.i59.i, %middle.block192, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i
  %i.bu = getelementptr i8, ptr %i.i, i64 11
  %.val53.i = load i8, ptr %i.bu, align 1, !tbaa !813
  %.not.i65.i = icmp eq i8 %.val53.i, 0
  br i1 %.not.i65.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE23rebalance_right_to_leftEhPS7_PSaIiE.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit64.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 3 uses
  %xtraiter = and i64 %i.bb, 1
  %i.bx = icmp samesign ult i8 %i.q, 2
  br i1 %i.bx, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bb, 62
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod231 = trunc i8 %.sroa.speculated151 to i1
  tail call void @llvm.assume(i1 %lcmp.mod231)
  %.val46.i.epil = load i8, ptr %i.k, align 2, !tbaa !813
  %i.by = trunc i64 %indvars.iv.i.epil.init to i8
  %i.bz = add i8 %i.by, 1
  %i.ca = add i8 %.val46.i.epil, %i.bz            ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i.epil.init
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1982 ; 3 uses
  %i.cd = zext i8 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cd
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !1982
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i8 %i.ca, ptr %i.cf, align 1, !tbaa !813
  store ptr %i.i, ptr %i.cc, align 8, !tbaa !1982
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.ax, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated151
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE23rebalance_right_to_leftEhPS7_PSaIiE.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.k, align 2, !tbaa !813
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next.i to i8
  %i.ch = add i8 %.val46.i, %i.cg                 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1982 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !1982
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !813
  store ptr %i.i, ptr %i.cj, align 8, !tbaa !1982
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE5splitEiPS7_PSaIiE:bb.a
  br i1 %i.am, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.val33, i64 12
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %i.an ; 2 uses
  %narrow.i = sub nuw i8 %.val21.i, %.val35
  %i.aq = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.aq, 2
  %i.ar = getelementptr i8, ptr %i.ap, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ar, ptr align 4 %i.ap, i64 %.idx.i.i, i1 false)
  %.val19.pre.i = load i8, ptr %i.al, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i: ; preds = %.lr.ph.preheader.i.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit
  %.val19.i = phi i8 [ %.val19.pre.i, %.lr.ph.preheader.i.i ], [ %.val21.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit ]
  %.val23.val.i = load i32, ptr %i.aj, align 4, !tbaa !802
  %i.as = getelementptr inbounds nuw i8, ptr %.val33, i64 12
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.an
  store i32 %.val23.val.i, ptr %i.at, align 4, !tbaa !802
  %i.au = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.au, ptr %i.al, align 1, !tbaa !813
  %i.av = getelementptr i8, ptr %.val33, i64 11
  %.val22.i = load i8, ptr %i.av, align 1, !tbaa !813
  %.not.i24.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i24.i, label %bb.e, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE13emplace_valueIJPiEEEvhPSaIiEDpOT_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i
  %i.aw = zext i8 %i.au to i32
  %i.ax = add nuw nsw i32 %i.ak, 1                ; 2 uses
  %i.ay = icmp samesign ult i32 %i.ax, %i.aw
  br i1 %i.ay, label %.lr.ph.i41, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE13emplace_valueIJPiEEEvhPSaIiEDpOT_.exit

.lr.ph.i41:                                       ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.val33, i64 256 ; 10 uses
  %i.ba = zext i8 %i.au to i64                    ; 4 uses
  %i.bb = zext nneg i32 %i.ax to i64
  %i.bc = xor i64 %i.an, -1
  %i.bd = add nsw i64 %i.bc, %i.ba
  %i.be = add nsw i64 %i.ba, -2
  %i.bf = sub nsw i64 %i.be, %i.an
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i41, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.bg, %.prol.preheader ], [ %i.ba, %.lr.ph.i41 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i41 ]
  %i.bg = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1982 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.prol
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !1982
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !813
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !14983

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i41
  %indvars.iv.unr = phi i64 [ %i.ba, %.lr.ph.i41 ], [ %i.bg, %.prol.preheader ]
  %i.bm = icmp ult i64 %i.bf, 3
  br i1 %i.bm, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE13emplace_valueIJPiEEEvhPSaIiEDpOT_.exit, label %.lr.ph.i41.new

.lr.ph.i41.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i41.new
  %indvars.iv = phi i64 [ %i.cf, %.lr.ph.i41.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.bn = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1982 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !1982
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = trunc nuw i64 %indvars.iv to i8
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !813
  %i.bt = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1982 ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bn
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !1982
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = trunc nuw i64 %i.bn to i8
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !813
  %i.bz = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1982 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bt
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !1982
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = trunc nuw i64 %i.bt to i8
  store i8 %i.ce, ptr %i.cd, align 1, !tbaa !813
  %i.cf = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1982 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bz
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !1982
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = trunc nuw i64 %i.bz to i8
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.cf, %i.bb
  br i1 %.wide.3, label %.lr.ph.i41.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE13emplace_valueIJPiEEEvhPSaIiEDpOT_.exit, !llvm.loop !14984

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE13emplace_valueIJPiEEEvhPSaIiEDpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i41.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE19transfer_n_backwardEmmmPS7_PSaIiE.exit.i, %bb.e
  %.val32 = load ptr, ptr %0, align 8, !tbaa !1982
  %.val34 = load i8, ptr %i.ah, align 8, !tbaa !813
  %i.cl = add i8 %.val34, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.val32, i64 256
  %i.cn = zext i8 %i.cl to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn
  store ptr %2, ptr %i.co, align 8, !tbaa !1982
  %i.cp = getelementptr i8, ptr %0, i64 11
  %.val36 = load i8, ptr %i.cp, align 1, !tbaa !813
  %.not.i42 = icmp eq i8 %.val36, 0
  br i1 %.not.i42, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE13emplace_valueIJPiEEEvhPSaIiEDpOT_.exit
  %.val27 = load i8, ptr %i.h, align 2, !tbaa !813
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 256
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.g
  %.0.in3 = phi i8 [ %.val27, %bb.f ], [ %.0, %bb.g ]
  %.0252 = phi i8 [ 0, %bb.f ], [ %i.cy, %bb.g ]  ; 3 uses
  %.0 = add i8 %.0.in3, 1                         ; 2 uses
  %i.cs = zext i8 %.0 to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1982 ; 3 uses
  %i.cv = zext i8 %.0252 to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cv
  store ptr %i.cu, ptr %i.cw, align 8, !tbaa !1982
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i8 %.0252, ptr %i.cx, align 1, !tbaa !813
  store ptr %2, ptr %i.cu, align 8, !tbaa !1982
  %i.cy = add i8 %.0252, 1                        ; 2 uses
  %.val = load i8, ptr %i.i, align 1, !tbaa !813
  %.not = icmp ugt i8 %i.cy, %.val
  br i1 %.not, label %.loopexit, label %bb.g, !llvm.loop !14985

.loopexit:                                        ; preds = %bb.g, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_124KeyCompareToWeakOrderingEEEEE13emplace_valueIJPiEEEvhPSaIiEDpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS6_EERKiPSB_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.2660", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1992   ; 15 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.val100 = load ptr, ptr %i.b, align 8, !tbaa !1992 ; 7 uses
  %.val98 = load ptr, ptr %0, align 8, !tbaa !1991
  %.not = icmp eq ptr %i.b, %.val98
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val108 = load i8, ptr %i.d, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val108, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i8 %.val108, -1
  %i.f = getelementptr inbounds nuw i8, ptr %.val100, i64 256
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1992 ; 12 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = getelementptr i8, ptr %i.i, i64 10       ; 7 uses
  %.val118 = load i8, ptr %i.k, align 1, !tbaa !813 ; 4 uses
  %i.l = icmp ult i8 %.val118, 61
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 61, %.val118
  %i.m = load i32, ptr %i.a, align 8, !tbaa !802
  %i.n = and i32 %i.m, 255                        ; 2 uses
  %i.o = icmp samesign ult i32 %i.n, 61
  %i.p = zext i1 %i.o to i8
  %i.q = lshr i8 %narrow, %i.p                    ; 2 uses
  %.sroa.speculated151 = tail call i8 @llvm.umax.i8(i8 %i.q, i8 1) ; 9 uses
  %i.r = zext nneg i8 %.sroa.speculated151 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.n, %i.r
  %narrow164 = add nuw nsw i8 %.sroa.speculated151, %.val118
  %i.s = icmp samesign ult i8 %narrow164, 61
  %or.cond = select i1 %.not85, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = zext nneg i8 %.val118 to i64             ; 2 uses
  %i.u = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %.val52.i = load i8, ptr %i.u, align 1, !tbaa !813
  %i.v = zext i8 %.val52.i to i64                 ; 2 uses
  %.val50.i = load ptr, ptr %i.i, align 8, !tbaa !1992 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.t ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val50.i, i64 12
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.v
  %.val.i.i = load i32, ptr %i.z, align 4
  store i32 %.val.i.i, ptr %i.x, align 1
  %i.aa = add nsw i32 %i.r, -1                    ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 10 uses
  %.idx.i.i = shl nuw nsw i64 %i.ab, 2            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ae = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader230, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ah = shl nuw nsw i64 %i.t, 2
  %i.ai = add i64 %i.ah, %i.j
  %i.aj = sub i64 %i.ai, %i.c
  %i.ak = add i64 %i.aj, 3
  %diff.check = icmp ult i64 %i.ak, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader230, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 3 uses
  %i.al = shl i64 %n.vec, 2                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.x, i64 %i.al
  %i.an = getelementptr i8, ptr %i.ac, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ao ; 2 uses
  %next.gep178 = getelementptr i8, ptr %i.ac, i64 %i.ao ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aq = getelementptr i8, ptr %next.gep178, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep178, align 4
  %wide.load179 = load <4 x i32>, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %wide.load, ptr %i.ap, align 1
  store <4 x i32> %wide.load179, ptr %i.ar, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !14986

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i, label %.lr.ph.i.i.preheader230

.lr.ph.i.i.preheader230:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.03.i.pn.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.preheader ], [ %i.am, %middle.block ]
  %.0122.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader230, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i, %.lr.ph.i.i ], [ %.03.i.pn.i.ph, %.lr.ph.i.i.preheader230 ]
  %.0122.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %.0122.i.i.ph, %.lr.ph.i.i.preheader230 ] ; 2 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 4 ; 2 uses
  %.012.val.i.i = load i32, ptr %.0122.i.i, align 4
  store i32 %.012.val.i.i, ptr %.03.i.i, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !14987

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.val49.pre.i = load ptr, ptr %i.i, align 8, !tbaa !1992
  %.val51.pre.i = load i8, ptr %i.u, align 8, !tbaa !813
  %.pre.i = zext i8 %.val51.pre.i to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i ], [ %i.v, %bb.e ]
  %.val49.i = phi ptr [ %.val49.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.loopexit.i ], [ %.val50.i, %bb.e ]
  %i.au = getelementptr inbounds nuw i8, ptr %.val49.i, i64 12
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.pre-phi.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  %.val.i55.i = load i32, ptr %i.aw, align 4
  store i32 %.val.i55.i, ptr %i.av, align 1
  %i.ax = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val54.i = load i8, ptr %i.ax, align 2, !tbaa !813 ; 3 uses
  %i.ay = zext i8 %.val54.i to i32
  %i.az = sub nsw i32 %i.ay, %i.r
  %i.ba = sext i32 %i.az to i64
  %i.bb = zext nneg i8 %.sroa.speculated151 to i64 ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bb ; 4 uses
  %.idx.i56.i = shl nuw nsw i64 %i.ba, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i56.i
  %.not1.i57.i = icmp eq i8 %.val54.i, %.sroa.speculated151
  br i1 %.not1.i57.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit64.i, label %.lr.ph.i59.i.preheader

.lr.ph.i59.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i
  %i.be = zext i8 %.val54.i to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = shl nuw nsw i64 %i.bb, 2
  %i.bh = add nsw i64 %i.bf, -4
  %i.bi = sub nsw i64 %i.bh, %i.bg                ; 2 uses
  %i.bj = lshr exact i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check182 = icmp ult i64 %i.bi, 28
  br i1 %min.iters.check182, label %.lr.ph.i59.i.preheader229, label %vector.ph183

vector.ph183:                                     ; preds = %.lr.ph.i59.i.preheader
  %n.vec184 = and i64 %i.bk, 9223372036854775800  ; 3 uses
  %i.bl = shl i64 %n.vec184, 2                    ; 2 uses
  %i.bm = getelementptr i8, ptr %i.ac, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bc, i64 %i.bl
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph183
  %index186 = phi i64 [ 0, %vector.ph183 ], [ %index.next191, %vector.body185 ] ; 2 uses
  %i.bo = shl i64 %index186, 2                    ; 2 uses
  %next.gep187 = getelementptr i8, ptr %i.ac, i64 %i.bo ; 2 uses
  %next.gep188 = getelementptr i8, ptr %i.bc, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep188, i64 16
  %wide.load189 = load <4 x i32>, ptr %next.gep188, align 4
  %wide.load190 = load <4 x i32>, ptr %i.bp, align 4
  %i.bq = getelementptr i8, ptr %next.gep187, i64 16
  store <4 x i32> %wide.load189, ptr %next.gep187, align 1
  store <4 x i32> %wide.load190, ptr %i.bq, align 1
  %index.next191 = add nuw i64 %index186, 8       ; 2 uses
  %i.br = icmp eq i64 %index.next191, %n.vec184
  br i1 %i.br, label %middle.block192, label %vector.body185, !llvm.loop !14988

middle.block192:                                  ; preds = %vector.body185
  %cmp.n193 = icmp eq i64 %i.bk, %n.vec184
  br i1 %cmp.n193, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit64.i, label %.lr.ph.i59.i.preheader229

.lr.ph.i59.i.preheader229:                        ; preds = %.lr.ph.i59.i.preheader, %middle.block192
  %.03.i60.i.ph = phi ptr [ %i.ac, %.lr.ph.i59.i.preheader ], [ %i.bm, %middle.block192 ]
  %.0122.i61.i.ph = phi ptr [ %i.bc, %.lr.ph.i59.i.preheader ], [ %i.bn, %middle.block192 ]
  br label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i.preheader229, %.lr.ph.i59.i
  %.03.i60.i = phi ptr [ %i.bt, %.lr.ph.i59.i ], [ %.03.i60.i.ph, %.lr.ph.i59.i.preheader229 ] ; 2 uses
  %.0122.i61.i = phi ptr [ %i.bs, %.lr.ph.i59.i ], [ %.0122.i61.i.ph, %.lr.ph.i59.i.preheader229 ] ; 2 uses
  %.012.val.i62.i = load i32, ptr %.0122.i61.i, align 4
  store i32 %.012.val.i62.i, ptr %.03.i60.i, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.0122.i61.i, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03.i60.i, i64 4
  %.not.i63.i = icmp eq ptr %i.bs, %i.bd
  br i1 %.not.i63.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit64.i, label %.lr.ph.i59.i, !llvm.loop !14989

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit64.i: ; preds = %.lr.ph.i59.i, %middle.block192, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit.i
  %i.bu = getelementptr i8, ptr %i.i, i64 11
  %.val53.i = load i8, ptr %i.bu, align 1, !tbaa !813
  %.not.i65.i = icmp eq i8 %.val53.i, 0
  br i1 %.not.i65.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE23rebalance_right_to_leftEhPS7_PSaIiE.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE10transfer_nEmmmPS7_PSaIiE.exit64.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 3 uses
  %xtraiter = and i64 %i.bb, 1
  %i.bx = icmp samesign ult i8 %i.q, 2
  br i1 %i.bx, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bb, 62
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod231 = trunc i8 %.sroa.speculated151 to i1
  tail call void @llvm.assume(i1 %lcmp.mod231)
  %.val46.i.epil = load i8, ptr %i.k, align 2, !tbaa !813
  %i.by = trunc i64 %indvars.iv.i.epil.init to i8
  %i.bz = add i8 %i.by, 1
  %i.ca = add i8 %.val46.i.epil, %i.bz            ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i.epil.init
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1992 ; 3 uses
  %i.cd = zext i8 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cd
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !1992
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i8 %i.ca, ptr %i.cf, align 1, !tbaa !813
  store ptr %i.i, ptr %i.cc, align 8, !tbaa !1992
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.ax, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated151
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJNS1_12_GLOBAL__N_126KeyCompareToStrongOrderingEEEEE23rebalance_right_to_leftEhPS7_PSaIiE.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.k, align 2, !tbaa !813
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next.i to i8
  %i.ch = add i8 %.val46.i, %i.cg                 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1992 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !1992
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !813
  store ptr %i.i, ptr %i.cj, align 8, !tbaa !1992
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE16internal_emplaceIJRKiEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSF_EESI_DpOT_:bb.a
  store i32 %.012.val.i.i.i, ptr %.03.i.i.i, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 4
  %.not.i.i.i10 = icmp eq ptr %i.at, %i.af
  br i1 %.not.i.i.i10, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE16internal_emplaceIJRKiEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSF_EESI_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i9, !llvm.loop !16687

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE16internal_emplaceIJRKiEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSF_EESI_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i9, %middle.block, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  store i8 %.val13.i.i, ptr %i.av, align 2, !tbaa !813
  store i8 0, ptr %i.q, align 1, !tbaa !813
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE16clear_and_deleteEPS8_PSaIS5_E(ptr noundef nonnull %i.o)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aw, align 8, !tbaa !2179
  store ptr %i.z, ptr %0, align 8, !tbaa !2179
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE16internal_emplaceIJRKiEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSF_EESI_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.ax = load ptr, ptr %4, align 8, !tbaa !2190  ; 5 uses
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !2189 ; 3 uses
  %i.az = trunc i32 %i.ay to i8                   ; 2 uses
  %i.ba = and i32 %i.ay, 255                      ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 10     ; 3 uses
  %.val21.i = load i8, ptr %i.bb, align 1, !tbaa !813 ; 2 uses
  %i.bc = icmp ugt i8 %.val21.i, %i.az
  %i.bd = zext nneg i32 %i.ba to i64              ; 2 uses
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd ; 2 uses
  %narrow.i = sub nuw i8 %.val21.i, %i.az
  %i.bg = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.bg, 2
  %i.bh = getelementptr i8, ptr %i.bf, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bh, ptr align 4 %i.bf, i64 %.idx.i.i, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %.val23.i = load i32, ptr %3, align 4, !tbaa !802
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bd
  store i32 %.val23.i, ptr %i.bj, align 4, !tbaa !2183
  %i.bk = load i32, ptr @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCounted17constructor_callsE, align 4, !tbaa !802
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCounted17constructor_callsE, align 4, !tbaa !802
  %.val19.i = load i8, ptr %i.bb, align 1, !tbaa !813
  %i.bm = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.bm, ptr %i.bb, align 1, !tbaa !813
  %i.bn = getelementptr i8, ptr %i.ax, i64 11
  %.val22.i = load i8, ptr %i.bn, align 1, !tbaa !813
  %.not.i24.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i24.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE13emplace_valueIJRKiEEEvhPSaIS5_EDpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i
  %i.bo = zext i8 %i.bm to i32
  %i.bp = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.bq = icmp samesign ult i32 %i.bp, %i.bo
  br i1 %i.bq, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE13emplace_valueIJRKiEEEvhPSaIS5_EDpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 256 ; 10 uses
  %i.bs = zext i8 %i.bm to i64                    ; 4 uses
  %i.bt = zext nneg i32 %i.bp to i64
  %i.bu = and i32 %i.ay, 255
  %i.bv = zext nneg i32 %i.bu to i64              ; 2 uses
  %i.bw = xor i64 %i.bv, -1
  %i.bx = add nsw i64 %i.bw, %i.bs
  %i.by = add nsw i64 %i.bs, -2
  %i.bz = sub nsw i64 %i.by, %i.bv
  %xtraiter = and i64 %i.bx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.ca, %.prol.preheader ], [ %i.bs, %.lr.ph.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.ca = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !2179 ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.prol
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !2179
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.cf, ptr %i.ce, align 1, !tbaa !813
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !16688

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.bs, %.lr.ph.i ], [ %i.ca, %.prol.preheader ]
  %i.cg = icmp ult i64 %i.bz, 3
  br i1 %i.cg, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE13emplace_valueIJRKiEEEvhPSaIS5_EDpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.cz, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.ch = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2179 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !2179
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cm = trunc nuw i64 %indvars.iv to i8
  store i8 %i.cm, ptr %i.cl, align 1, !tbaa !813
  %i.cn = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2179 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ch
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !2179
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = trunc nuw i64 %i.ch to i8
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !813
  %i.ct = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !2179 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.cn
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !2179
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = trunc nuw i64 %i.cn to i8
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !813
  %i.cz = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !2179 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.ct
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !2179
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = trunc nuw i64 %i.ct to i8
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.cz, %i.bt
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE13emplace_valueIJRKiEEEvhPSaIS5_EDpOT_.exit, !llvm.loop !16689

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE13emplace_valueIJRKiEEEvhPSaIS5_EDpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaIS5_E.exit.i, %bb.g
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !2160
  %i.dh = add i64 %i.dg, 1
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !2160
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS7_EERKS5_PSC_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.3138", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !2179   ; 15 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.val100 = load ptr, ptr %i.b, align 8, !tbaa !2179 ; 7 uses
  %.val98 = load ptr, ptr %0, align 8, !tbaa !2159
  %.not = icmp eq ptr %i.b, %.val98
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val108 = load i8, ptr %i.d, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val108, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i8 %.val108, -1
  %i.f = getelementptr inbounds nuw i8, ptr %.val100, i64 256
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2179 ; 12 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = getelementptr i8, ptr %i.i, i64 10       ; 7 uses
  %.val118 = load i8, ptr %i.k, align 1, !tbaa !813 ; 4 uses
  %i.l = icmp ult i8 %.val118, 61
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 61, %.val118
  %i.m = load i32, ptr %i.a, align 8, !tbaa !802
  %i.n = and i32 %i.m, 255                        ; 2 uses
  %i.o = icmp samesign ult i32 %i.n, 61
  %i.p = zext i1 %i.o to i8
  %i.q = lshr i8 %narrow, %i.p                    ; 2 uses
  %.sroa.speculated151 = tail call i8 @llvm.umax.i8(i8 %i.q, i8 1) ; 9 uses
  %i.r = zext nneg i8 %.sroa.speculated151 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.n, %i.r
  %narrow164 = add nuw nsw i8 %.sroa.speculated151, %.val118
  %i.s = icmp samesign ult i8 %narrow164, 61
  %or.cond = select i1 %.not85, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = zext nneg i8 %.val118 to i64             ; 2 uses
  %i.u = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %.val52.i = load i8, ptr %i.u, align 1, !tbaa !813
  %i.v = zext i8 %.val52.i to i64                 ; 2 uses
  %.val50.i = load ptr, ptr %i.i, align 8, !tbaa !2179 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.t ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val50.i, i64 12
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.v
  %.val.i.i = load i32, ptr %i.z, align 4
  store i32 %.val.i.i, ptr %i.x, align 1
  %i.aa = add nsw i32 %i.r, -1                    ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 10 uses
  %.idx.i.i = shl nuw nsw i64 %i.ab, 2            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ae = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader230, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ah = shl nuw nsw i64 %i.t, 2
  %i.ai = add i64 %i.ah, %i.j
  %i.aj = sub i64 %i.ai, %i.c
  %i.ak = add i64 %i.aj, 3
  %diff.check = icmp ult i64 %i.ak, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader230, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 3 uses
  %i.al = shl i64 %n.vec, 2                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.x, i64 %i.al
  %i.an = getelementptr i8, ptr %i.ac, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ao ; 2 uses
  %next.gep178 = getelementptr i8, ptr %i.ac, i64 %i.ao ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aq = getelementptr i8, ptr %next.gep178, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep178, align 4
  %wide.load179 = load <4 x i32>, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %wide.load, ptr %i.ap, align 1
  store <4 x i32> %wide.load179, ptr %i.ar, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !16690

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.loopexit.i, label %.lr.ph.i.i.preheader230

.lr.ph.i.i.preheader230:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.03.i.pn.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.preheader ], [ %i.am, %middle.block ]
  %.0122.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader230, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i, %.lr.ph.i.i ], [ %.03.i.pn.i.ph, %.lr.ph.i.i.preheader230 ]
  %.0122.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %.0122.i.i.ph, %.lr.ph.i.i.preheader230 ] ; 2 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 4 ; 2 uses
  %.012.val.i.i = load i32, ptr %.0122.i.i, align 4
  store i32 %.012.val.i.i, ptr %.03.i.i, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !16691

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.val49.pre.i = load ptr, ptr %i.i, align 8, !tbaa !2179
  %.val51.pre.i = load i8, ptr %i.u, align 8, !tbaa !813
  %.pre.i = zext i8 %.val51.pre.i to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.loopexit.i, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.loopexit.i ], [ %i.v, %bb.e ]
  %.val49.i = phi ptr [ %.val49.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.loopexit.i ], [ %.val50.i, %bb.e ]
  %i.au = getelementptr inbounds nuw i8, ptr %.val49.i, i64 12
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.pre-phi.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  %.val.i55.i = load i32, ptr %i.aw, align 4
  store i32 %.val.i55.i, ptr %i.av, align 1
  %i.ax = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val54.i = load i8, ptr %i.ax, align 2, !tbaa !813 ; 3 uses
  %i.ay = zext i8 %.val54.i to i32
  %i.az = sub nsw i32 %i.ay, %i.r
  %i.ba = sext i32 %i.az to i64
  %i.bb = zext nneg i8 %.sroa.speculated151 to i64 ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bb ; 4 uses
  %.idx.i56.i = shl nuw nsw i64 %i.ba, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i56.i
  %.not1.i57.i = icmp eq i8 %.val54.i, %.sroa.speculated151
  br i1 %.not1.i57.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit64.i, label %.lr.ph.i59.i.preheader

.lr.ph.i59.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i
  %i.be = zext i8 %.val54.i to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = shl nuw nsw i64 %i.bb, 2
  %i.bh = add nsw i64 %i.bf, -4
  %i.bi = sub nsw i64 %i.bh, %i.bg                ; 2 uses
  %i.bj = lshr exact i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check182 = icmp ult i64 %i.bi, 28
  br i1 %min.iters.check182, label %.lr.ph.i59.i.preheader229, label %vector.ph183

vector.ph183:                                     ; preds = %.lr.ph.i59.i.preheader
  %n.vec184 = and i64 %i.bk, 9223372036854775800  ; 3 uses
  %i.bl = shl i64 %n.vec184, 2                    ; 2 uses
  %i.bm = getelementptr i8, ptr %i.ac, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bc, i64 %i.bl
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph183
  %index186 = phi i64 [ 0, %vector.ph183 ], [ %index.next191, %vector.body185 ] ; 2 uses
  %i.bo = shl i64 %index186, 2                    ; 2 uses
  %next.gep187 = getelementptr i8, ptr %i.ac, i64 %i.bo ; 2 uses
  %next.gep188 = getelementptr i8, ptr %i.bc, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep188, i64 16
  %wide.load189 = load <4 x i32>, ptr %next.gep188, align 4
  %wide.load190 = load <4 x i32>, ptr %i.bp, align 4
  %i.bq = getelementptr i8, ptr %next.gep187, i64 16
  store <4 x i32> %wide.load189, ptr %next.gep187, align 1
  store <4 x i32> %wide.load190, ptr %i.bq, align 1
  %index.next191 = add nuw i64 %index186, 8       ; 2 uses
  %i.br = icmp eq i64 %index.next191, %n.vec184
  br i1 %i.br, label %middle.block192, label %vector.body185, !llvm.loop !16692

middle.block192:                                  ; preds = %vector.body185
  %cmp.n193 = icmp eq i64 %i.bk, %n.vec184
  br i1 %cmp.n193, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit64.i, label %.lr.ph.i59.i.preheader229

.lr.ph.i59.i.preheader229:                        ; preds = %.lr.ph.i59.i.preheader, %middle.block192
  %.03.i60.i.ph = phi ptr [ %i.ac, %.lr.ph.i59.i.preheader ], [ %i.bm, %middle.block192 ]
  %.0122.i61.i.ph = phi ptr [ %i.bc, %.lr.ph.i59.i.preheader ], [ %i.bn, %middle.block192 ]
  br label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i.preheader229, %.lr.ph.i59.i
  %.03.i60.i = phi ptr [ %i.bt, %.lr.ph.i59.i ], [ %.03.i60.i.ph, %.lr.ph.i59.i.preheader229 ] ; 2 uses
  %.0122.i61.i = phi ptr [ %i.bs, %.lr.ph.i59.i ], [ %.0122.i61.i.ph, %.lr.ph.i59.i.preheader229 ] ; 2 uses
  %.012.val.i62.i = load i32, ptr %.0122.i61.i, align 4
  store i32 %.012.val.i62.i, ptr %.03.i60.i, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.0122.i61.i, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.03.i60.i, i64 4
  %.not.i63.i = icmp eq ptr %i.bs, %i.bd
  br i1 %.not.i63.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit64.i, label %.lr.ph.i59.i, !llvm.loop !16693

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit64.i: ; preds = %.lr.ph.i59.i, %middle.block192, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit.i
  %i.bu = getelementptr i8, ptr %i.i, i64 11
  %.val53.i = load i8, ptr %i.bu, align 1, !tbaa !813
  %.not.i65.i = icmp eq i8 %.val53.i, 0
  br i1 %.not.i65.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE23rebalance_right_to_leftEhPS8_PSaIS5_E.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaIS5_E.exit64.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 3 uses
  %xtraiter = and i64 %i.bb, 1
  %i.bx = icmp samesign ult i8 %i.q, 2
  br i1 %i.bx, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bb, 62
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod231 = trunc i8 %.sroa.speculated151 to i1
  tail call void @llvm.assume(i1 %lcmp.mod231)
  %.val46.i.epil = load i8, ptr %i.k, align 2, !tbaa !813
  %i.by = trunc i64 %indvars.iv.i.epil.init to i8
  %i.bz = add i8 %i.by, 1
  %i.ca = add i8 %.val46.i.epil, %i.bz            ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i.epil.init
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !2179 ; 3 uses
  %i.cd = zext i8 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cd
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !2179
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i8 %i.ca, ptr %i.cf, align 1, !tbaa !813
  store ptr %i.i, ptr %i.cc, align 8, !tbaa !2179
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.ax, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated151
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_118ConstructorCountedEJNS4_25ConstructorCountedCompareEEEEE23rebalance_right_to_leftEhPS8_PSaIS5_E.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.k, align 2, !tbaa !813
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next.i to i8
  %i.ch = add i8 %.val46.i, %i.cg                 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2179 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !2179
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !813
  store ptr %i.i, ptr %i.cj, align 8, !tbaa !2179
end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE16internal_emplaceIJRKSt4pairIiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EERSA_IKS5_iEPSI_EESL_DpOT_:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 64 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 64
  %.not.i.i.i10.7 = icmp eq ptr %i.az, %i.ad
  br i1 %.not.i.i.i10.7, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE16internal_emplaceIJRKSt4pairIiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EERSA_IKS5_iEPSI_EESL_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i9, !llvm.loop !621

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE16internal_emplaceIJRKSt4pairIiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EERSA_IKS5_iEPSI_EESL_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i9.prol.loopexit, %.lr.ph.i.i.i9, %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  store i8 %.val13.i.i, ptr %i.bb, align 2, !tbaa !813
  store i8 0, ptr %i.p, align 1, !tbaa !813
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE16clear_and_deleteEPS8_PSaISt4pairIKS5_iEE(ptr noundef nonnull %i.o)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.bc, align 8, !tbaa !2316
  store ptr %i.x, ptr %0, align 8, !tbaa !2316
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS7_EERSt4pairIKS5_iEPSE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE16internal_emplaceIJRKSt4pairIiiEEEENS1_14btree_iteratorINS1_10btree_nodeIS7_EERSA_IKS5_iEPSI_EESL_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.bd = load ptr, ptr %4, align 8, !tbaa !2323  ; 5 uses
  %i.be = load i32, ptr %i.a, align 8, !tbaa !2322 ; 2 uses
  %i.bf = trunc i32 %i.be to i8                   ; 2 uses
  %i.bg = and i32 %i.be, 255                      ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bd, i64 10     ; 3 uses
  %.val21.i = load i8, ptr %i.bh, align 1, !tbaa !813 ; 2 uses
  %i.bi = icmp ugt i8 %.val21.i, %i.bf
  %i.bj = zext nneg i32 %i.bg to i64              ; 4 uses
  br i1 %i.bi, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaISt4pairIKS5_iEE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %narrow.i = sub nuw i8 %.val21.i, %i.bf
  %i.bm = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.bm, 3
  %i.bn = getelementptr i8, ptr %i.bl, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bl, i64 %.idx.i.i, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaISt4pairIKS5_iEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaISt4pairIKS5_iEE.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %.val23.i = load i32, ptr %3, align 4, !tbaa !1024
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.val24.i = load i32, ptr %i.bo, align 4, !tbaa !1027
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bj ; 2 uses
  store i32 %.val23.i, ptr %i.bq, align 4, !tbaa !2183
  %i.br = load i32, ptr @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCounted17constructor_callsE, align 4, !tbaa !802
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_118ConstructorCounted17constructor_callsE, align 4, !tbaa !802
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %.val24.i, ptr %i.bt, align 4, !tbaa !17387
  %.val19.i = load i8, ptr %i.bh, align 1, !tbaa !813
  %i.bu = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.bu, ptr %i.bh, align 1, !tbaa !813
  %i.bv = getelementptr i8, ptr %i.bd, i64 11
  %.val22.i = load i8, ptr %i.bv, align 1, !tbaa !813
  %.not.i25.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i25.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE13emplace_valueIJRKSt4pairIiiEEEEvhPSaISA_IKS5_iEEDpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaISt4pairIKS5_iEE.exit.i
  %i.bw = zext i8 %i.bu to i32
  %i.bx = add nuw nsw i32 %i.bg, 1                ; 2 uses
  %i.by = icmp samesign ult i32 %i.bx, %i.bw
  br i1 %i.by, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE13emplace_valueIJRKSt4pairIiiEEEEvhPSaISA_IKS5_iEEDpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 256 ; 10 uses
  %i.ca = zext i8 %i.bu to i64                    ; 4 uses
  %i.cb = zext nneg i32 %i.bx to i64
  %i.cc = xor i64 %i.bj, -1
  %i.cd = add nsw i64 %i.cc, %i.ca
  %i.ce = add nsw i64 %i.ca, -2
  %i.cf = sub nsw i64 %i.ce, %i.bj
  %xtraiter1 = and i64 %i.cd, 3                   ; 2 uses
  %lcmp.mod2.not = icmp eq i64 %xtraiter1, 0
  br i1 %lcmp.mod2.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.cg, %.prol.preheader ], [ %i.ca, %.lr.ph.i ] ; 3 uses
  %prol.iter3 = phi i64 [ %prol.iter3.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.cg = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2316 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.prol
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !2316
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !813
  %prol.iter3.next = add i64 %prol.iter3, 1       ; 2 uses
  %prol.iter3.cmp.not = icmp eq i64 %prol.iter3.next, %xtraiter1
  br i1 %prol.iter3.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !17384

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.ca, %.lr.ph.i ], [ %i.cg, %.prol.preheader ]
  %i.cm = icmp ult i64 %i.cf, 3
  br i1 %i.cm, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE13emplace_valueIJRKSt4pairIiiEEEEvhPSaISA_IKS5_iEEDpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.df, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.cn = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2316 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !2316
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cs = trunc nuw i64 %indvars.iv to i8
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !813
  %i.ct = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !2316 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cn
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !2316
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = trunc nuw i64 %i.cn to i8
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !813
  %i.cz = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !2316 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ct
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !2316
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.de = trunc nuw i64 %i.ct to i8
  store i8 %i.de, ptr %i.dd, align 1, !tbaa !813
  %i.df = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !2316 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.cz
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !2316
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = trunc nuw i64 %i.cz to i8
  store i8 %i.dk, ptr %i.dj, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.df, %i.cb
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE13emplace_valueIJRKSt4pairIiiEEEEvhPSaISA_IKS5_iEEDpOT_.exit, !llvm.loop !17385

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE13emplace_valueIJRKSt4pairIiiEEEEvhPSaISA_IKS5_iEEDpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE19transfer_n_backwardEmmmPS8_PSaISt4pairIKS5_iEE.exit.i, %bb.g
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !2295
  %i.dn = add i64 %i.dm, 1
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !2295
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS7_EERSt4pairIKS5_iEPSE_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.3448", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !2316   ; 14 uses
  %.val100 = load ptr, ptr %i.b, align 8, !tbaa !2316 ; 7 uses
  %.val98 = load ptr, ptr %0, align 8, !tbaa !2294
  %.not = icmp eq ptr %i.b, %.val98
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val108 = load i8, ptr %i.c, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val108, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val108, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val100, i64 256
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2316 ; 11 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 7 uses
  %.val118 = load i8, ptr %i.i, align 1, !tbaa !813 ; 4 uses
  %i.j = icmp ult i8 %.val118, 30
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 30, %.val118
  %i.k = load i32, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.l = and i32 %i.k, 254
  %i.m = icmp samesign ult i32 %i.l, 30
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n                    ; 2 uses
  %.sroa.speculated151 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 9 uses
  %i.p = and i32 %i.k, 255
  %i.q = zext nneg i8 %.sroa.speculated151 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.p, %i.q
  %narrow164 = add nuw nsw i8 %.sroa.speculated151, %.val118
  %i.r = icmp samesign ult i8 %narrow164, 30
  %or.cond = select i1 %.not85, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i8 %.val118 to i64
  %i.t = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val52.i = load i8, ptr %i.t, align 1, !tbaa !813
  %i.u = zext i8 %.val52.i to i64                 ; 2 uses
  %.val50.i = load ptr, ptr %i.h, align 8, !tbaa !2316 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val50.i, i64 12
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  %.val.i.i = load i64, ptr %i.y, align 1
  store i64 %.val.i.i, ptr %i.w, align 1
  %i.z = add nsw i32 %i.q, -1                     ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %i.aa, 3            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.z, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ad = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.03.i.pn.i.prol = phi ptr [ %.03.i.i.prol, %.lr.ph.i.i.prol ], [ %i.w, %.lr.ph.i.i.preheader ]
  %.0122.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.prol ], [ %i.ab, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %.03.i.i.prol = getelementptr inbounds nuw i8, ptr %.03.i.pn.i.prol, i64 8 ; 3 uses
  %.012.val.i.i.prol = load i64, ptr %.0122.i.i.prol, align 1
  store i64 %.012.val.i.i.prol, ptr %.03.i.i.prol, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.0122.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !17388

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.03.i.pn.i.unr = phi ptr [ %i.w, %.lr.ph.i.i.preheader ], [ %.03.i.i.prol, %.lr.ph.i.i.prol ]
  %.0122.i.i.unr = phi ptr [ %i.ab, %.lr.ph.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.prol ]
  %i.ah = icmp ult i64 %i.ad, 56
  br i1 %i.ah, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i.7, %.lr.ph.i.i ], [ %.03.i.pn.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0122.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.0122.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8
  %.012.val.i.i = load i64, ptr %.0122.i.i, align 1
  store i64 %.012.val.i.i, ptr %.03.i.i, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8
  %.03.i.i.1 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 16
  %.012.val.i.i.1 = load i64, ptr %i.ai, align 1
  store i64 %.012.val.i.i.1, ptr %.03.i.i.1, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 16
  %.03.i.i.2 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 24
  %.012.val.i.i.2 = load i64, ptr %i.aj, align 1
  store i64 %.012.val.i.i.2, ptr %.03.i.i.2, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 24
  %.03.i.i.3 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 32
  %.012.val.i.i.3 = load i64, ptr %i.ak, align 1
  store i64 %.012.val.i.i.3, ptr %.03.i.i.3, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 32
  %.03.i.i.4 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 40
  %.012.val.i.i.4 = load i64, ptr %i.al, align 1
  store i64 %.012.val.i.i.4, ptr %.03.i.i.4, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 40
  %.03.i.i.5 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 48
  %.012.val.i.i.5 = load i64, ptr %i.am, align 1
  store i64 %.012.val.i.i.5, ptr %.03.i.i.5, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 48
  %.03.i.i.6 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 56
  %.012.val.i.i.6 = load i64, ptr %i.an, align 1
  store i64 %.012.val.i.i.6, ptr %.03.i.i.6, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 56
  %.03.i.i.7 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 64 ; 2 uses
  %.012.val.i.i.7 = load i64, ptr %i.ao, align 1
  store i64 %.012.val.i.i.7, ptr %.03.i.i.7, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 64 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.ap, %i.ac
  br i1 %.not.i.i.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !621

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val49.pre.i = load ptr, ptr %i.h, align 8, !tbaa !2316
  %.val51.pre.i = load i8, ptr %i.t, align 8, !tbaa !813
  %.pre.i = zext i8 %.val51.pre.i to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.loopexit.i, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.loopexit.i ], [ %i.u, %bb.e ]
  %.val49.i = phi ptr [ %.val49.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.loopexit.i ], [ %.val50.i, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.val49.i, i64 12
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.pre-phi.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %.val.i55.i = load i64, ptr %i.as, align 1
  store i64 %.val.i55.i, ptr %i.ar, align 1
  %i.at = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val54.i = load i8, ptr %i.at, align 2, !tbaa !813 ; 2 uses
  %i.au = zext i8 %.val54.i to i32
  %i.av = sub nsw i32 %i.au, %i.q
  %i.aw = sext i32 %i.av to i64
  %i.ax = zext nneg i8 %.sroa.speculated151 to i64 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ax ; 2 uses
  %.idx.i56.i = shl nuw nsw i64 %i.aw, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i56.i
  %.not1.i57.i = icmp eq i8 %.val54.i, %.sroa.speculated151
  br i1 %.not1.i57.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit64.i, label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.i, %.lr.ph.i59.i
  %.03.i60.i = phi ptr [ %i.bb, %.lr.ph.i59.i ], [ %i.ab, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.i ] ; 2 uses
  %.0122.i61.i = phi ptr [ %i.ba, %.lr.ph.i59.i ], [ %i.ay, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.i ] ; 2 uses
  %.012.val.i62.i = load i64, ptr %.0122.i61.i, align 1
  store i64 %.012.val.i62.i, ptr %.03.i60.i, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0122.i61.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03.i60.i, i64 8
  %.not.i63.i = icmp eq ptr %i.ba, %i.az
  br i1 %.not.i63.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit64.i, label %.lr.ph.i59.i, !llvm.loop !621

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit64.i: ; preds = %.lr.ph.i59.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit.i
  %i.bc = getelementptr i8, ptr %i.h, i64 11
  %.val53.i = load i8, ptr %i.bc, align 1, !tbaa !813
  %.not.i65.i = icmp eq i8 %.val53.i, 0
  br i1 %.not.i65.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE23rebalance_right_to_leftEhPS8_PSaISt4pairIKS5_iEE.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE10transfer_nEmmmPS8_PSaISt4pairIKS5_iEE.exit64.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 3 uses
  %xtraiter178 = and i64 %i.ax, 1
  %i.bf = icmp samesign ult i8 %i.o, 2
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ax, 30
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod179.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod180 = trunc i8 %.sroa.speculated151 to i1
  tail call void @llvm.assume(i1 %lcmp.mod180)
  %.val46.i.epil = load i8, ptr %i.i, align 2, !tbaa !813
  %i.bg = trunc i64 %indvars.iv.i.epil.init to i8
  %i.bh = add i8 %i.bg, 1
  %i.bi = add i8 %.val46.i.epil, %i.bh            ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i.epil.init
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2316 ; 3 uses
  %i.bl = zext i8 %i.bi to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bl
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !2316
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i8 %i.bi, ptr %i.bn, align 1, !tbaa !813
  store ptr %i.h, ptr %i.bk, align 8, !tbaa !2316
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.at, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated151
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE23rebalance_right_to_leftEhPS8_PSaISt4pairIKS5_iEE.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bo = trunc nuw i64 %indvars.iv.next.i to i8
  %i.bp = add i8 %.val46.i, %i.bo                 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2316 ; 3 uses
  %i.bs = zext i8 %i.bp to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bs
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !2316
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i8 %i.bp, ptr %i.bu, align 1, !tbaa !813
  store ptr %i.h, ptr %i.br, align 8, !tbaa !2316
  %.val46.i.1 = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.bv = trunc nuw i64 %indvars.iv.next.i.1 to i8
  %i.bw = add i8 %.val46.i.1, %i.bv               ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2316 ; 3 uses
  %i.bz = zext i8 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bz
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !2316
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i8 %i.bw, ptr %i.cb, align 1, !tbaa !813
  store ptr %i.h, ptr %i.by, align 8, !tbaa !2316
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.f, !llvm.loop !17389

.lr.ph6.i:                                        ; preds = %.preheader.i, %.lr.ph6.i
  %.05.i = phi i8 [ %i.cj, %.lr.ph6.i ], [ 0, %.preheader.i ] ; 4 uses
  %i.cc = add i8 %.05.i, %.sroa.speculated151
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2316 ; 3 uses
  %i.cg = zext i8 %.05.i to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !2316
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %.05.i, ptr %i.ci, align 1, !tbaa !813
  store ptr %i.b, ptr %i.cf, align 8, !tbaa !2316
  %i.cj = add i8 %.05.i, 1                        ; 2 uses
  %i.ck = zext i8 %i.cj to i32
  %.val45.i = load i8, ptr %i.at, align 2, !tbaa !813
  %i.cl = zext i8 %.val45.i to i32
  %i.cm = sub nsw i32 %i.cl, %i.q
  %.not.i = icmp slt i32 %i.cm, %i.ck
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_118ConstructorCountedEiJNS4_25ConstructorCountedCompareEEEEE23rebalance_right_to_leftEhPS8_PSaISt4pairIKS5_iEE.exit, label %.lr.ph6.i, !llvm.loop !17390
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_179Btree_SupportsTransparentComparatorThatDoesNotImplementAllVisibleOperators_Test8TestBodyEv:bb.a
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ff, ptr %i.fi, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 2947, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %6)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #37
  %i.fj = load ptr, ptr %7, align 8, !tbaa !810   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.y
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !813
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.fo = load ptr, ptr %4, align 8, !tbaa !827   ; 3 uses
  %.not.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i, label %bb.ae, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !816
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(128) %i.fo) #37, !inline_history !4
  br label %bb.ae

bb.z:                                             ; preds = %bb.u
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit26

bb.aa:                                            ; preds = %bb.v
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.ab:                                            ; preds = %bb.w
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.x
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #37
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.fv, %bb.ac ], [ %i.fu, %bb.ab ] ; 2 uses
  %i.fw = load ptr, ptr %7, align 8, !tbaa !810   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.ad
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !813
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %i.ft, %bb.aa ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %.pn, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.gb = load ptr, ptr %4, align 8, !tbaa !827   ; 3 uses
  %.not.i.i24 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i24, label %_ZN7testing7MessageD2Ev.exit26, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i25

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !816
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(128) %i.gb) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit26

_ZN7testing7MessageD2Ev.exit26:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %bb.z
  %.pn.pn.pn = phi { ptr, i32 } [ %i.fs, %bb.z ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i25 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.ah

bb.ae:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %.pr = load ptr, ptr %i.fe, align 8, !tbaa !845 ; 4 uses
  %.not.i.i.i27 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i27, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gf = load ptr, ptr %.pr, align 8, !tbaa !810 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.af
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !813
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #36
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %_ZNK4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_26TransparentPassThroughCompINS5_12MultiKeyCompEEEEEEEEE8containsIiEEbRKT_.exit, %bb.ae, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %i.gk = icmp eq i64 %.val17, 0
  br i1 %i.gk, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_26TransparentPassThroughCompINS5_12MultiKeyCompEEEEEEEEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE16clear_and_deleteEPSA_PSaIS5_E(ptr noundef %.val11)
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_26TransparentPassThroughCompINS5_12MultiKeyCompEEEEEEEEED2Ev.exit

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_26TransparentPassThroughCompINS5_12MultiKeyCompEEEEEEEEED2Ev.exit: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.ah:                                            ; preds = %_ZN7testing7MessageD2Ev.exit26, %bb.t
  %.val15 = phi i64 [ %.val17, %_ZN7testing7MessageD2Ev.exit26 ], [ %.val15.pre, %bb.t ]
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit26 ], [ %i.fd, %bb.t ]
  %i.gl = icmp eq i64 %.val15, 0
  br i1 %i.gl, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_26TransparentPassThroughCompINS5_12MultiKeyCompEEEEEEEEED2Ev.exit28, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val14 = load ptr, ptr %2, align 8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE16clear_and_deleteEPSA_PSaIS5_E(ptr noundef %.val14)
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_26TransparentPassThroughCompINS5_12MultiKeyCompEEEEEEEEED2Ev.exit28

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS5_26TransparentPassThroughCompINS5_12MultiKeyCompEEEEEEEEED2Ev.exit28: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSE_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.3812", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !2473   ; 14 uses
  %.val105 = load ptr, ptr %i.b, align 8, !tbaa !2473 ; 7 uses
  %.val117 = load ptr, ptr %0, align 8, !tbaa !2472
  %.not = icmp eq ptr %i.b, %.val117
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val103 = load i8, ptr %i.c, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val103, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val103, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val105, i64 256
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2473 ; 11 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 7 uses
  %.val115 = load i8, ptr %i.i, align 1, !tbaa !813 ; 4 uses
  %i.j = icmp ult i8 %.val115, 30
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 30, %.val115
  %i.k = load i32, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.l = and i32 %i.k, 254
  %i.m = icmp samesign ult i32 %i.l, 30
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n                    ; 2 uses
  %.sroa.speculated150 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 9 uses
  %i.p = and i32 %i.k, 255
  %i.q = zext nneg i8 %.sroa.speculated150 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.p, %i.q
  %narrow163 = add nuw nsw i8 %.sroa.speculated150, %.val115
  %i.r = icmp samesign ult i8 %narrow163, 30
  %or.cond = select i1 %.not85, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i8 %.val115 to i64
  %i.t = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val50.i = load i8, ptr %i.t, align 1, !tbaa !813
  %i.u = zext i8 %.val50.i to i64                 ; 2 uses
  %.val52.i = load ptr, ptr %i.h, align 8, !tbaa !2473 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val52.i, i64 12
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  %.val.i.i = load i64, ptr %i.y, align 4
  store i64 %.val.i.i, ptr %i.w, align 1
  %i.z = add nsw i32 %i.q, -1                     ; 2 uses
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 6 uses
  %.idx.i.i = shl nuw nsw i64 %i.aa, 3            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.z, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ad = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.03.i.pn.i.prol = phi ptr [ %.03.i.i.prol, %.lr.ph.i.i.prol ], [ %i.w, %.lr.ph.i.i.preheader ]
  %.0122.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.prol ], [ %i.ab, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %.03.i.i.prol = getelementptr inbounds nuw i8, ptr %.03.i.pn.i.prol, i64 8 ; 3 uses
  %.012.val.i.i.prol = load i64, ptr %.0122.i.i.prol, align 4
  store i64 %.012.val.i.i.prol, ptr %.03.i.i.prol, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.0122.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !18354

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.03.i.pn.i.unr = phi ptr [ %i.w, %.lr.ph.i.i.preheader ], [ %.03.i.i.prol, %.lr.ph.i.i.prol ]
  %.0122.i.i.unr = phi ptr [ %i.ab, %.lr.ph.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.prol ]
  %i.ah = icmp ult i64 %i.ad, 56
  br i1 %i.ah, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i.7, %.lr.ph.i.i ], [ %.03.i.pn.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0122.i.i = phi ptr [ %i.ap, %.lr.ph.i.i ], [ %.0122.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8
  %.012.val.i.i = load i64, ptr %.0122.i.i, align 4
  store i64 %.012.val.i.i, ptr %.03.i.i, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8
  %.03.i.i.1 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 16
  %.012.val.i.i.1 = load i64, ptr %i.ai, align 4
  store i64 %.012.val.i.i.1, ptr %.03.i.i.1, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 16
  %.03.i.i.2 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 24
  %.012.val.i.i.2 = load i64, ptr %i.aj, align 4
  store i64 %.012.val.i.i.2, ptr %.03.i.i.2, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 24
  %.03.i.i.3 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 32
  %.012.val.i.i.3 = load i64, ptr %i.ak, align 4
  store i64 %.012.val.i.i.3, ptr %.03.i.i.3, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 32
  %.03.i.i.4 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 40
  %.012.val.i.i.4 = load i64, ptr %i.al, align 4
  store i64 %.012.val.i.i.4, ptr %.03.i.i.4, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 40
  %.03.i.i.5 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 48
  %.012.val.i.i.5 = load i64, ptr %i.am, align 4
  store i64 %.012.val.i.i.5, ptr %.03.i.i.5, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 48
  %.03.i.i.6 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 56
  %.012.val.i.i.6 = load i64, ptr %i.an, align 4
  store i64 %.012.val.i.i.6, ptr %.03.i.i.6, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 56
  %.03.i.i.7 = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 64 ; 2 uses
  %.012.val.i.i.7 = load i64, ptr %i.ao, align 4
  store i64 %.012.val.i.i.7, ptr %.03.i.i.7, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 64 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.ap, %i.ac
  br i1 %.not.i.i.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !655

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val51.pre.i = load ptr, ptr %i.h, align 8, !tbaa !2473
  %.val49.pre.i = load i8, ptr %i.t, align 8, !tbaa !813
  %.pre.i = zext i8 %.val49.pre.i to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit.loopexit.i, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit.loopexit.i ], [ %i.u, %bb.e ]
  %.val51.i = phi ptr [ %.val51.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit.loopexit.i ], [ %.val52.i, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.val51.i, i64 12
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.pre-phi.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %.val.i55.i = load i64, ptr %i.as, align 4
  store i64 %.val.i55.i, ptr %i.ar, align 1
  %i.at = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val54.i = load i8, ptr %i.at, align 2, !tbaa !813 ; 2 uses
  %i.au = zext i8 %.val54.i to i32
  %i.av = sub nsw i32 %i.au, %i.q
  %i.aw = sext i32 %i.av to i64
  %i.ax = zext nneg i8 %.sroa.speculated150 to i64 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ax ; 2 uses
  %.idx.i56.i = shl nuw nsw i64 %i.aw, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx.i56.i
  %.not1.i57.i = icmp eq i8 %.val54.i, %.sroa.speculated150
  br i1 %.not1.i57.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit64.i, label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit.i, %.lr.ph.i59.i
  %.03.i60.i = phi ptr [ %i.bb, %.lr.ph.i59.i ], [ %i.ab, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit.i ] ; 2 uses
  %.0122.i61.i = phi ptr [ %i.ba, %.lr.ph.i59.i ], [ %i.ay, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit.i ] ; 2 uses
  %.012.val.i62.i = load i64, ptr %.0122.i61.i, align 4
  store i64 %.012.val.i62.i, ptr %.03.i60.i, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0122.i61.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03.i60.i, i64 8
  %.not.i63.i = icmp eq ptr %i.ba, %i.az
  br i1 %.not.i63.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit64.i, label %.lr.ph.i59.i, !llvm.loop !655

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit64.i: ; preds = %.lr.ph.i59.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit.i
  %i.bc = getelementptr i8, ptr %i.h, i64 11
  %.val53.i = load i8, ptr %i.bc, align 1, !tbaa !813
  %.not.i65.i = icmp eq i8 %.val53.i, 0
  br i1 %.not.i65.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE23rebalance_right_to_leftEhPSA_PSaIS5_E.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE10transfer_nEmmmPSA_PSaIS5_E.exit64.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 3 uses
  %xtraiter177 = and i64 %i.ax, 1
  %i.bf = icmp samesign ult i8 %i.o, 2
  br i1 %i.bf, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ax, 30
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod179 = trunc i8 %.sroa.speculated150 to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %.val46.i.epil = load i8, ptr %i.i, align 2, !tbaa !813
  %i.bg = trunc i64 %indvars.iv.i.epil.init to i8
  %i.bh = add i8 %i.bg, 1
  %i.bi = add i8 %.val46.i.epil, %i.bh            ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i.epil.init
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !2473 ; 3 uses
  %i.bl = zext i8 %i.bi to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bl
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !2473
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i8 %i.bi, ptr %i.bn, align 1, !tbaa !813
  store ptr %i.h, ptr %i.bk, align 8, !tbaa !2473
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.at, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated150
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE23rebalance_right_to_leftEhPSA_PSaIS5_E.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bo = trunc nuw i64 %indvars.iv.next.i to i8
  %i.bp = add i8 %.val46.i, %i.bo                 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2473 ; 3 uses
  %i.bs = zext i8 %i.bp to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bs
  store ptr %i.br, ptr %i.bt, align 8, !tbaa !2473
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i8 %i.bp, ptr %i.bu, align 1, !tbaa !813
  store ptr %i.h, ptr %i.br, align 8, !tbaa !2473
  %.val46.i.1 = load i8, ptr %i.i, align 2, !tbaa !813
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.bv = trunc nuw i64 %indvars.iv.next.i.1 to i8
  %i.bw = add i8 %.val46.i.1, %i.bv               ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !2473 ; 3 uses
  %i.bz = zext i8 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bz
  store ptr %i.by, ptr %i.ca, align 8, !tbaa !2473
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i8 %i.bw, ptr %i.cb, align 1, !tbaa !813
  store ptr %i.h, ptr %i.by, align 8, !tbaa !2473
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.unr-lcssa, label %bb.f, !llvm.loop !18355

.lr.ph6.i:                                        ; preds = %.preheader.i, %.lr.ph6.i
  %.05.i = phi i8 [ %i.cj, %.lr.ph6.i ], [ 0, %.preheader.i ] ; 4 uses
  %i.cc = add i8 %.05.i, %.sroa.speculated150
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !2473 ; 3 uses
  %i.cg = zext i8 %.05.i to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cg
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !2473
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store i8 %.05.i, ptr %i.ci, align 1, !tbaa !813
  store ptr %i.b, ptr %i.cf, align 8, !tbaa !2473
  %i.cj = add i8 %.05.i, 1                        ; 2 uses
  %i.ck = zext i8 %i.cj to i32
  %.val45.i = load i8, ptr %i.at, align 2, !tbaa !813
  %i.cl = zext i8 %.val45.i to i32
  %i.cm = sub nsw i32 %i.cl, %i.q
  %.not.i = icmp slt i32 %i.cm, %i.ck
  br i1 %.not.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_18MultiKeyEJNS4_26TransparentPassThroughCompINS4_12MultiKeyCompEEEEEEE23rebalance_right_to_leftEhPSA_PSaIS5_E.exit, label %.lr.ph6.i, !llvm.loop !18356
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE16internal_emplaceIJRPS5_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSH_EESK_DpOT_:bb.a
  %.012.val.i.i.i = load i32, ptr %.0122.i.i.i, align 4, !tbaa !2497
  store i32 %.012.val.i.i.i, ptr %.03.i.i.i, align 4, !tbaa !2497
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 4
  %.not.i.i.i10 = icmp eq ptr %i.at, %i.af
  br i1 %.not.i.i.i10, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE16internal_emplaceIJRPS5_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSH_EESK_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i9, !llvm.loop !19007

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE16internal_emplaceIJRPS5_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSH_EESK_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i9, %middle.block, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  store i8 %.val13.i.i, ptr %i.av, align 2, !tbaa !813
  store i8 0, ptr %i.q, align 1, !tbaa !813
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE16clear_and_deleteEPSA_PS8_(ptr noundef nonnull %i.o)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aw, align 8, !tbaa !2498
  store ptr %i.z, ptr %0, align 8, !tbaa !2498
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSE_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE16internal_emplaceIJRPS5_EEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSH_EESK_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.ax = load ptr, ptr %4, align 8, !tbaa !2585  ; 5 uses
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !2584 ; 3 uses
  %i.az = trunc i32 %i.ay to i8                   ; 2 uses
  %.val8 = load ptr, ptr %3, align 8
  %i.ba = and i32 %i.ay, 255                      ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 10     ; 3 uses
  %.val21.i = load i8, ptr %i.bb, align 1, !tbaa !813 ; 3 uses
  %i.bc = icmp ugt i8 %.val21.i, %i.az
  %i.bd = zext nneg i32 %i.ba to i64              ; 2 uses
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd ; 2 uses
  %narrow.i = sub nuw i8 %.val21.i, %i.az
  %i.bg = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.bg, 2
  %i.bh = getelementptr i8, ptr %i.bf, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bh, ptr align 4 %i.bf, i64 %.idx.i.i, i1 false), !tbaa !2497
  %.val19.pre.i = load i8, ptr %i.bb, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %.val19.i = phi i8 [ %.val19.pre.i, %.lr.ph.preheader.i.i ], [ %.val21.i, %bb.f ]
  %.val23.val.i = load i32, ptr %.val8, align 4, !tbaa !2497
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bd
  store i32 %.val23.val.i, ptr %i.bj, align 4, !tbaa !2497
  %i.bk = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.bk, ptr %i.bb, align 1, !tbaa !813
  %i.bl = getelementptr i8, ptr %i.ax, i64 11
  %.val22.i = load i8, ptr %i.bl, align 1, !tbaa !813
  %.not.i24.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i24.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJRPS5_EEEvhPS8_DpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i
  %i.bm = zext i8 %i.bk to i32
  %i.bn = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.bo = icmp samesign ult i32 %i.bn, %i.bm
  br i1 %i.bo, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJRPS5_EEEvhPS8_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 256 ; 10 uses
  %i.bq = zext i8 %i.bk to i64                    ; 4 uses
  %i.br = zext nneg i32 %i.bn to i64
  %.mask = and i32 %i.ay, 255
  %i.bs = zext nneg i32 %.mask to i64             ; 2 uses
  %i.bt = xor i64 %i.bs, -1
  %i.bu = add nsw i64 %i.bt, %i.bq
  %i.bv = add nsw i64 %i.bq, -2
  %i.bw = sub nsw i64 %i.bv, %i.bs
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.bx, %.prol.preheader ], [ %i.bq, %.lr.ph.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.bx = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !2498 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.prol
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !2498
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !813
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !19008

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.bq, %.lr.ph.i ], [ %i.bx, %.prol.preheader ]
  %i.cd = icmp ult i64 %i.bw, 3
  br i1 %i.cd, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJRPS5_EEEvhPS8_DpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.cw, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.ce = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2498 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !2498
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = trunc nuw i64 %indvars.iv to i8
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !813
  %i.ck = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !2498 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ce
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !2498
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = trunc nuw i64 %i.ce to i8
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !813
  %i.cq = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !2498 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ck
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !2498
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = trunc nuw i64 %i.ck to i8
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !813
  %i.cw = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !2498 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cq
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !2498
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = trunc nuw i64 %i.cq to i8
  store i8 %i.db, ptr %i.da, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.cw, %i.br
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJRPS5_EEEvhPS8_DpOT_.exit, !llvm.loop !19009

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJRPS5_EEEvhPS8_DpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i, %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !2495
  %i.de = add i64 %i.dd, 1
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !2495
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERKS5_PSE_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.4128", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !2498   ; 13 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.val105 = load ptr, ptr %i.b, align 8, !tbaa !2498 ; 7 uses
  %.val117 = load ptr, ptr %0, align 8, !tbaa !2494
  %.not = icmp eq ptr %i.b, %.val117
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val103 = load i8, ptr %i.d, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val103, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i8 %.val103, -1
  %i.f = getelementptr inbounds nuw i8, ptr %.val105, i64 256
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2498 ; 11 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = getelementptr i8, ptr %i.i, i64 10       ; 7 uses
  %.val115 = load i8, ptr %i.k, align 1, !tbaa !813 ; 4 uses
  %i.l = icmp ult i8 %.val115, 61
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 61, %.val115
  %i.m = load i32, ptr %i.a, align 8, !tbaa !802
  %i.n = and i32 %i.m, 255                        ; 2 uses
  %i.o = icmp samesign ult i32 %i.n, 61
  %i.p = zext i1 %i.o to i8
  %i.q = lshr i8 %narrow, %i.p                    ; 2 uses
  %.sroa.speculated149 = tail call i8 @llvm.umax.i8(i8 %i.q, i8 1) ; 9 uses
  %i.r = zext nneg i8 %.sroa.speculated149 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.n, %i.r
  %narrow162 = add nuw nsw i8 %.sroa.speculated149, %.val115
  %i.s = icmp samesign ult i8 %narrow162, 61
  %or.cond = select i1 %.not85, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = zext nneg i8 %.val115 to i64             ; 2 uses
  %i.u = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %.val50.i = load i8, ptr %i.u, align 1, !tbaa !813
  %i.v = zext i8 %.val50.i to i64                 ; 2 uses
  %.val52.i = load ptr, ptr %i.i, align 8, !tbaa !2498
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.t ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val52.i, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.v
  %.val.i.i = load i32, ptr %i.z, align 4, !tbaa !2497
  store i32 %.val.i.i, ptr %i.x, align 4, !tbaa !2497
  %i.aa = add nsw i32 %i.r, -1                    ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 10 uses
  %.idx.i.i = shl nuw nsw i64 %i.ab, 2            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ae = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader227, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ah = shl nuw nsw i64 %i.t, 2
  %i.ai = add i64 %i.ah, %i.j
  %i.aj = sub i64 %i.ai, %i.c
  %i.ak = add i64 %i.aj, 3
  %diff.check = icmp ult i64 %i.ak, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader227, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 3 uses
  %i.al = shl i64 %n.vec, 2                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.x, i64 %i.al
  %i.an = getelementptr i8, ptr %i.ac, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ao ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.ac, i64 %i.ao ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aq = getelementptr i8, ptr %next.gep175, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep175, align 4, !tbaa !2497
  %wide.load176 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !2497
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %wide.load, ptr %i.ap, align 4, !tbaa !2497
  store <4 x i32> %wide.load176, ptr %i.ar, align 4, !tbaa !2497
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !19010

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i, label %.lr.ph.i.i.preheader227

.lr.ph.i.i.preheader227:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.03.i.pn.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.preheader ], [ %i.am, %middle.block ]
  %.0122.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader227, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i, %.lr.ph.i.i ], [ %.03.i.pn.i.ph, %.lr.ph.i.i.preheader227 ]
  %.0122.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %.0122.i.i.ph, %.lr.ph.i.i.preheader227 ] ; 2 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 4 ; 2 uses
  %.012.val.i.i = load i32, ptr %.0122.i.i, align 4, !tbaa !2497
  store i32 %.012.val.i.i, ptr %.03.i.i, align 4, !tbaa !2497
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !19011

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.val49.pre.i = load i8, ptr %i.u, align 8, !tbaa !813
  %.pre.i = zext i8 %.val49.pre.i to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i ], [ %i.v, %bb.e ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.pre-phi.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  %.val.i55.i = load i32, ptr %i.av, align 4, !tbaa !2497
  store i32 %.val.i55.i, ptr %i.au, align 4, !tbaa !2497
  %i.aw = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val54.i = load i8, ptr %i.aw, align 2, !tbaa !813 ; 3 uses
  %i.ax = zext i8 %.val54.i to i32
  %i.ay = sub nsw i32 %i.ax, %i.r
  %i.az = sext i32 %i.ay to i64
  %i.ba = zext nneg i8 %.sroa.speculated149 to i64 ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ba ; 4 uses
  %.idx.i56.i = shl nuw nsw i64 %i.az, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i56.i
  %.not1.i57.i = icmp eq i8 %.val54.i, %.sroa.speculated149
  br i1 %.not1.i57.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit64.i, label %.lr.ph.i59.i.preheader

.lr.ph.i59.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i
  %i.bd = zext i8 %.val54.i to i64
  %i.be = shl nuw nsw i64 %i.bd, 2
  %i.bf = shl nuw nsw i64 %i.ba, 2
  %i.bg = add nsw i64 %i.be, -4
  %i.bh = sub nsw i64 %i.bg, %i.bf                ; 2 uses
  %i.bi = lshr exact i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check179 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check179, label %.lr.ph.i59.i.preheader226, label %vector.ph180

vector.ph180:                                     ; preds = %.lr.ph.i59.i.preheader
  %n.vec181 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec181, 2                    ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ac, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bb, i64 %i.bk
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph180
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next188, %vector.body182 ] ; 2 uses
  %i.bn = shl i64 %index183, 2                    ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.ac, i64 %i.bn ; 2 uses
  %next.gep185 = getelementptr i8, ptr %i.bb, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep185, i64 16
  %wide.load186 = load <4 x i32>, ptr %next.gep185, align 4, !tbaa !2497
  %wide.load187 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !2497
  %i.bp = getelementptr i8, ptr %next.gep184, i64 16
  store <4 x i32> %wide.load186, ptr %next.gep184, align 4, !tbaa !2497
  store <4 x i32> %wide.load187, ptr %i.bp, align 4, !tbaa !2497
  %index.next188 = add nuw i64 %index183, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.bq, label %middle.block189, label %vector.body182, !llvm.loop !19012

middle.block189:                                  ; preds = %vector.body182
  %cmp.n190 = icmp eq i64 %i.bj, %n.vec181
  br i1 %cmp.n190, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit64.i, label %.lr.ph.i59.i.preheader226

.lr.ph.i59.i.preheader226:                        ; preds = %.lr.ph.i59.i.preheader, %middle.block189
  %.03.i60.i.ph = phi ptr [ %i.ac, %.lr.ph.i59.i.preheader ], [ %i.bl, %middle.block189 ]
  %.0122.i61.i.ph = phi ptr [ %i.bb, %.lr.ph.i59.i.preheader ], [ %i.bm, %middle.block189 ]
  br label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i.preheader226, %.lr.ph.i59.i
  %.03.i60.i = phi ptr [ %i.bs, %.lr.ph.i59.i ], [ %.03.i60.i.ph, %.lr.ph.i59.i.preheader226 ] ; 2 uses
  %.0122.i61.i = phi ptr [ %i.br, %.lr.ph.i59.i ], [ %.0122.i61.i.ph, %.lr.ph.i59.i.preheader226 ] ; 2 uses
  %.012.val.i62.i = load i32, ptr %.0122.i61.i, align 4, !tbaa !2497
  store i32 %.012.val.i62.i, ptr %.03.i60.i, align 4, !tbaa !2497
  %i.br = getelementptr inbounds nuw i8, ptr %.0122.i61.i, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.03.i60.i, i64 4
  %.not.i63.i = icmp eq ptr %i.br, %i.bc
  br i1 %.not.i63.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit64.i, label %.lr.ph.i59.i, !llvm.loop !19013

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit64.i: ; preds = %.lr.ph.i59.i, %middle.block189, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i
  %i.bt = getelementptr i8, ptr %i.i, i64 11
  %.val53.i = load i8, ptr %i.bt, align 1, !tbaa !813
  %.not.i65.i = icmp eq i8 %.val53.i, 0
  br i1 %.not.i65.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_right_to_leftEhPSA_PS8_.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit64.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 3 uses
  %xtraiter = and i64 %i.ba, 1
  %i.bw = icmp samesign ult i8 %i.q, 2
  br i1 %i.bw, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ba, 62
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod228 = trunc i8 %.sroa.speculated149 to i1
  tail call void @llvm.assume(i1 %lcmp.mod228)
  %.val46.i.epil = load i8, ptr %i.k, align 2, !tbaa !813
  %i.bx = trunc i64 %indvars.iv.i.epil.init to i8
  %i.by = add i8 %i.bx, 1
  %i.bz = add i8 %.val46.i.epil, %i.by            ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.epil.init
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2498 ; 3 uses
  %i.cc = zext i8 %i.bz to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cc
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !2498
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i8 %i.bz, ptr %i.ce, align 1, !tbaa !813
  store ptr %i.i, ptr %i.cb, align 8, !tbaa !2498
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.aw, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated149
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_right_to_leftEhPSA_PS8_.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.k, align 2, !tbaa !813
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cf = trunc nuw i64 %indvars.iv.next.i to i8
  %i.cg = add i8 %.val46.i, %i.cf                 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2498 ; 3 uses
  %i.cj = zext i8 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cj
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !2498
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.cg, ptr %i.cl, align 1, !tbaa !813
  store ptr %i.i, ptr %i.ci, align 8, !tbaa !2498
  %.val46.i.1 = load i8, ptr %i.k, align 2, !tbaa !813
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.cm = trunc nuw i64 %indvars.iv.next.i.1 to i8
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE16internal_emplaceIJPS5_EEENS1_14btree_iteratorINS1_10btree_nodeISC_EERKS5_PSJ_EESM_DpOT_:bb.a
  %.012.val.i.i.i = load i32, ptr %.0122.i.i.i, align 4, !tbaa !2497
  store i32 %.012.val.i.i.i, ptr %.03.i.i.i, align 4, !tbaa !2497
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 4
  %.not.i.i.i10 = icmp eq ptr %i.at, %i.af
  br i1 %.not.i.i.i10, label %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE16internal_emplaceIJPS5_EEENS1_14btree_iteratorINS1_10btree_nodeISC_EERKS5_PSJ_EESM_DpOT_ENKUlhE_clEh.exit, label %.lr.ph.i.i.i9, !llvm.loop !19081

_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE16internal_emplaceIJPS5_EEENS1_14btree_iteratorINS1_10btree_nodeISC_EERKS5_PSJ_EESM_DpOT_ENKUlhE_clEh.exit: ; preds = %.lr.ph.i.i.i9, %middle.block, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  store i8 %.val13.i.i, ptr %i.av, align 2, !tbaa !813
  store i8 0, ptr %i.q, align 1, !tbaa !813
  tail call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE16clear_and_deleteEPSD_PS8_(ptr noundef nonnull %i.o)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.aw, align 8, !tbaa !2526
  store ptr %i.z, ptr %0, align 8, !tbaa !2526
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISC_EERKS5_PSH_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %_ZZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE16internal_emplaceIJPS5_EEENS1_14btree_iteratorINS1_10btree_nodeISC_EERKS5_PSJ_EESM_DpOT_ENKUlhE_clEh.exit, %bb.e, %bb.b
  %i.ax = load ptr, ptr %4, align 8, !tbaa !2592  ; 5 uses
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !2591 ; 3 uses
  %i.az = trunc i32 %i.ay to i8                   ; 2 uses
  %.val8 = load ptr, ptr %3, align 8
  %i.ba = and i32 %i.ay, 255                      ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 10     ; 3 uses
  %.val21.i = load i8, ptr %i.bb, align 1, !tbaa !813 ; 3 uses
  %i.bc = icmp ugt i8 %.val21.i, %i.az
  %i.bd = zext nneg i32 %i.ba to i64              ; 2 uses
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.bd ; 2 uses
  %narrow.i = sub nuw i8 %.val21.i, %i.az
  %i.bg = zext i8 %narrow.i to i64
  %.idx.i.i = shl nuw nsw i64 %i.bg, 2
  %i.bh = getelementptr i8, ptr %i.bf, i64 4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.bh, ptr align 4 %i.bf, i64 %.idx.i.i, i1 false), !tbaa !2497
  %.val19.pre.i = load i8, ptr %i.bb, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.f
  %.val19.i = phi i8 [ %.val19.pre.i, %.lr.ph.preheader.i.i ], [ %.val21.i, %bb.f ]
  %.val23.val.i = load i32, ptr %.val8, align 4, !tbaa !2497
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bd
  store i32 %.val23.val.i, ptr %i.bj, align 4, !tbaa !2497
  %i.bk = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.bk, ptr %i.bb, align 1, !tbaa !813
  %i.bl = getelementptr i8, ptr %i.ax, i64 11
  %.val22.i = load i8, ptr %i.bl, align 1, !tbaa !813
  %.not.i24.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i24.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i
  %i.bm = zext i8 %i.bk to i32
  %i.bn = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.bo = icmp samesign ult i32 %i.bn, %i.bm
  br i1 %i.bo, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 256 ; 10 uses
  %i.bq = zext i8 %i.bk to i64                    ; 4 uses
  %i.br = zext nneg i32 %i.bn to i64
  %.mask = and i32 %i.ay, 255
  %i.bs = zext nneg i32 %.mask to i64             ; 2 uses
  %i.bt = xor i64 %i.bs, -1
  %i.bu = add nsw i64 %i.bt, %i.bq
  %i.bv = add nsw i64 %i.bq, -2
  %i.bw = sub nsw i64 %i.bv, %i.bs
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.bx, %.prol.preheader ], [ %i.bq, %.lr.ph.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.bx = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !2526 ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.prol
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !2526
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !813
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !19082

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.bq, %.lr.ph.i ], [ %i.bx, %.prol.preheader ]
  %i.cd = icmp ult i64 %i.bw, 3
  br i1 %i.cd, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.cw, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.ce = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ce
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2526 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !2526
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = trunc nuw i64 %indvars.iv to i8
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !813
  %i.ck = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !2526 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ce
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !2526
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = trunc nuw i64 %i.ce to i8
  store i8 %i.cp, ptr %i.co, align 1, !tbaa !813
  %i.cq = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !2526 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ck
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !2526
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = trunc nuw i64 %i.ck to i8
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !813
  %i.cw = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !2526 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cq
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !2526
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = trunc nuw i64 %i.cq to i8
  store i8 %i.db, ptr %i.da, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.cw, %i.br
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit, !llvm.loop !685

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPS5_EEEvhPS8_DpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i, %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !2525
  %i.de = add i64 %i.dd, 1
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !2525
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISC_EERKS5_PSH_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.4142", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !2526   ; 13 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 2 uses
  %.val105 = load ptr, ptr %i.b, align 8, !tbaa !2526 ; 7 uses
  %.val118 = load ptr, ptr %0, align 8, !tbaa !2524
  %.not = icmp eq ptr %i.b, %.val118
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val103 = load i8, ptr %i.d, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val103, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i8 %.val103, -1
  %i.f = getelementptr inbounds nuw i8, ptr %.val105, i64 256
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2526 ; 11 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = getelementptr i8, ptr %i.i, i64 10       ; 7 uses
  %.val116 = load i8, ptr %i.k, align 1, !tbaa !813 ; 4 uses
  %i.l = icmp ult i8 %.val116, 61
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 61, %.val116
  %i.m = load i32, ptr %i.a, align 8, !tbaa !802
  %i.n = and i32 %i.m, 255                        ; 2 uses
  %i.o = icmp samesign ult i32 %i.n, 61
  %i.p = zext i1 %i.o to i8
  %i.q = lshr i8 %narrow, %i.p                    ; 2 uses
  %.sroa.speculated149 = tail call i8 @llvm.umax.i8(i8 %i.q, i8 1) ; 9 uses
  %i.r = zext nneg i8 %.sroa.speculated149 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.n, %i.r
  %narrow162 = add nuw nsw i8 %.sroa.speculated149, %.val116
  %i.s = icmp samesign ult i8 %narrow162, 61
  %or.cond = select i1 %.not85, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = zext nneg i8 %.val116 to i64             ; 2 uses
  %i.u = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %.val50.i = load i8, ptr %i.u, align 1, !tbaa !813
  %i.v = zext i8 %.val50.i to i64                 ; 2 uses
  %.val52.i = load ptr, ptr %i.i, align 8, !tbaa !2526
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.t ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val52.i, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.v
  %.val.i.i = load i32, ptr %i.z, align 4, !tbaa !2497
  store i32 %.val.i.i, ptr %i.x, align 4, !tbaa !2497
  %i.aa = add nsw i32 %i.r, -1                    ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 10 uses
  %.idx.i.i = shl nuw nsw i64 %i.ab, 2            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i
  %.not1.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ae = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader227, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ah = shl nuw nsw i64 %i.t, 2
  %i.ai = add i64 %i.ah, %i.j
  %i.aj = sub i64 %i.ai, %i.c
  %i.ak = add i64 %i.aj, 3
  %diff.check = icmp ult i64 %i.ak, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader227, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 3 uses
  %i.al = shl i64 %n.vec, 2                       ; 2 uses
  %i.am = getelementptr i8, ptr %i.x, i64 %i.al
  %i.an = getelementptr i8, ptr %i.ac, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ao ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.ac, i64 %i.ao ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aq = getelementptr i8, ptr %next.gep175, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep175, align 4, !tbaa !2497
  %wide.load176 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !2497
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  store <4 x i32> %wide.load, ptr %i.ap, align 4, !tbaa !2497
  store <4 x i32> %wide.load176, ptr %i.ar, align 4, !tbaa !2497
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !19083

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i, label %.lr.ph.i.i.preheader227

.lr.ph.i.i.preheader227:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.03.i.pn.i.ph = phi ptr [ %i.x, %vector.memcheck ], [ %i.x, %.lr.ph.i.i.preheader ], [ %i.am, %middle.block ]
  %.0122.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader227, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i, %.lr.ph.i.i ], [ %.03.i.pn.i.ph, %.lr.ph.i.i.preheader227 ]
  %.0122.i.i = phi ptr [ %i.at, %.lr.ph.i.i ], [ %.0122.i.i.ph, %.lr.ph.i.i.preheader227 ] ; 2 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 4 ; 2 uses
  %.012.val.i.i = load i32, ptr %.0122.i.i, align 4, !tbaa !2497
  store i32 %.012.val.i.i, ptr %.03.i.i, align 4, !tbaa !2497
  %i.at = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.ad
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !19084

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.val49.pre.i = load i8, ptr %i.u, align 8, !tbaa !813
  %.pre.i = zext i8 %.val49.pre.i to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i ], [ %i.v, %bb.e ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.pre-phi.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  %.val.i55.i = load i32, ptr %i.av, align 4, !tbaa !2497
  store i32 %.val.i55.i, ptr %i.au, align 4, !tbaa !2497
  %i.aw = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val54.i = load i8, ptr %i.aw, align 2, !tbaa !813 ; 3 uses
  %i.ax = zext i8 %.val54.i to i32
  %i.ay = sub nsw i32 %i.ax, %i.r
  %i.az = sext i32 %i.ay to i64
  %i.ba = zext nneg i8 %.sroa.speculated149 to i64 ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ba ; 4 uses
  %.idx.i56.i = shl nuw nsw i64 %i.az, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i56.i
  %.not1.i57.i = icmp eq i8 %.val54.i, %.sroa.speculated149
  br i1 %.not1.i57.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit64.i, label %.lr.ph.i59.i.preheader

.lr.ph.i59.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i
  %i.bd = zext i8 %.val54.i to i64
  %i.be = shl nuw nsw i64 %i.bd, 2
  %i.bf = shl nuw nsw i64 %i.ba, 2
  %i.bg = add nsw i64 %i.be, -4
  %i.bh = sub nsw i64 %i.bg, %i.bf                ; 2 uses
  %i.bi = lshr exact i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check179 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check179, label %.lr.ph.i59.i.preheader226, label %vector.ph180

vector.ph180:                                     ; preds = %.lr.ph.i59.i.preheader
  %n.vec181 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec181, 2                    ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ac, i64 %i.bk
  %i.bm = getelementptr i8, ptr %i.bb, i64 %i.bk
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph180
  %index183 = phi i64 [ 0, %vector.ph180 ], [ %index.next188, %vector.body182 ] ; 2 uses
  %i.bn = shl i64 %index183, 2                    ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.ac, i64 %i.bn ; 2 uses
  %next.gep185 = getelementptr i8, ptr %i.bb, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep185, i64 16
  %wide.load186 = load <4 x i32>, ptr %next.gep185, align 4, !tbaa !2497
  %wide.load187 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !2497
  %i.bp = getelementptr i8, ptr %next.gep184, i64 16
  store <4 x i32> %wide.load186, ptr %next.gep184, align 4, !tbaa !2497
  store <4 x i32> %wide.load187, ptr %i.bp, align 4, !tbaa !2497
  %index.next188 = add nuw i64 %index183, 8       ; 2 uses
  %i.bq = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.bq, label %middle.block189, label %vector.body182, !llvm.loop !19085

middle.block189:                                  ; preds = %vector.body182
  %cmp.n190 = icmp eq i64 %i.bj, %n.vec181
  br i1 %cmp.n190, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit64.i, label %.lr.ph.i59.i.preheader226

.lr.ph.i59.i.preheader226:                        ; preds = %.lr.ph.i59.i.preheader, %middle.block189
  %.03.i60.i.ph = phi ptr [ %i.ac, %.lr.ph.i59.i.preheader ], [ %i.bl, %middle.block189 ]
  %.0122.i61.i.ph = phi ptr [ %i.bb, %.lr.ph.i59.i.preheader ], [ %i.bm, %middle.block189 ]
  br label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %.lr.ph.i59.i.preheader226, %.lr.ph.i59.i
  %.03.i60.i = phi ptr [ %i.bs, %.lr.ph.i59.i ], [ %.03.i60.i.ph, %.lr.ph.i59.i.preheader226 ] ; 2 uses
  %.0122.i61.i = phi ptr [ %i.br, %.lr.ph.i59.i ], [ %.0122.i61.i.ph, %.lr.ph.i59.i.preheader226 ] ; 2 uses
  %.012.val.i62.i = load i32, ptr %.0122.i61.i, align 4, !tbaa !2497
  store i32 %.012.val.i62.i, ptr %.03.i60.i, align 4, !tbaa !2497
  %i.br = getelementptr inbounds nuw i8, ptr %.0122.i61.i, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.03.i60.i, i64 4
  %.not.i63.i = icmp eq ptr %i.br, %i.bc
  br i1 %.not.i63.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit64.i, label %.lr.ph.i59.i, !llvm.loop !19086

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit64.i: ; preds = %.lr.ph.i59.i, %middle.block189, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i
  %i.bt = getelementptr i8, ptr %i.i, i64 11
  %.val53.i = load i8, ptr %i.bt, align 1, !tbaa !813
  %.not.i65.i = icmp eq i8 %.val53.i, 0
  br i1 %.not.i65.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_right_to_leftEhPSD_PS8_.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit64.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 256 ; 3 uses
  %xtraiter = and i64 %i.ba, 1
  %i.bw = icmp samesign ult i8 %i.q, 2
  br i1 %i.bw, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ba, 62
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod228 = trunc i8 %.sroa.speculated149 to i1
  tail call void @llvm.assume(i1 %lcmp.mod228)
  %.val46.i.epil = load i8, ptr %i.k, align 2, !tbaa !813
  %i.bx = trunc i64 %indvars.iv.i.epil.init to i8
  %i.by = add i8 %i.bx, 1
  %i.bz = add i8 %.val46.i.epil, %i.by            ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i.epil.init
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2526 ; 3 uses
  %i.cc = zext i8 %i.bz to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cc
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !2526
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i8 %i.bz, ptr %i.ce, align 1, !tbaa !813
  store ptr %i.i, ptr %i.cb, align 8, !tbaa !2526
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.aw, align 2, !tbaa !813
  %.not4.i = icmp ult i8 %.val453.i, %.sroa.speculated149
  br i1 %.not4.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_right_to_leftEhPSD_PS8_.exit, label %.lr.ph6.i

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %.val46.i = load i8, ptr %i.k, align 2, !tbaa !813
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cf = trunc nuw i64 %indvars.iv.next.i to i8
  %i.cg = add i8 %.val46.i, %i.cf                 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !2526 ; 3 uses
  %i.cj = zext i8 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.cj
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !2526
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i8 %i.cg, ptr %i.cl, align 1, !tbaa !813
  store ptr %i.i, ptr %i.ci, align 8, !tbaa !2526
  %.val46.i.1 = load i8, ptr %i.k, align 2, !tbaa !813
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.cm = trunc nuw i64 %indvars.iv.next.i.1 to i8
end_hunk_16
begin_hunk_17_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE16internal_emplaceIJRPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKS5_iEPSL_EESO_DpOT_:bb.a
  %i.bo = icmp ult i64 %i.bi, 56
  br i1 %i.bo, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.i = phi ptr [ %i.ck, %.lr.ph.i.i ], [ %.03.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0142.i.i = phi ptr [ %i.cl, %.lr.ph.i.i ], [ %.0142.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %i.bp = getelementptr inbounds i8, ptr %.03.i.i, i64 -8
  %i.bq = getelementptr inbounds i8, ptr %.0142.i.i, i64 -8
  %i.br = load <2 x i32>, ptr %i.bq, align 4, !tbaa !802
  store <2 x i32> %i.br, ptr %i.bp, align 4, !tbaa !802
  %i.bs = getelementptr inbounds i8, ptr %.03.i.i, i64 -16
  %i.bt = getelementptr inbounds i8, ptr %.0142.i.i, i64 -16
  %i.bu = load <2 x i32>, ptr %i.bt, align 4, !tbaa !802
  store <2 x i32> %i.bu, ptr %i.bs, align 4, !tbaa !802
  %i.bv = getelementptr inbounds i8, ptr %.03.i.i, i64 -24
  %i.bw = getelementptr inbounds i8, ptr %.0142.i.i, i64 -24
  %i.bx = load <2 x i32>, ptr %i.bw, align 4, !tbaa !802
  store <2 x i32> %i.bx, ptr %i.bv, align 4, !tbaa !802
  %i.by = getelementptr inbounds i8, ptr %.03.i.i, i64 -32
  %i.bz = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.ca = load <2 x i32>, ptr %i.bz, align 4, !tbaa !802
  store <2 x i32> %i.ca, ptr %i.by, align 4, !tbaa !802
  %i.cb = getelementptr inbounds i8, ptr %.03.i.i, i64 -40
  %i.cc = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40
  %i.cd = load <2 x i32>, ptr %i.cc, align 4, !tbaa !802
  store <2 x i32> %i.cd, ptr %i.cb, align 4, !tbaa !802
  %i.ce = getelementptr inbounds i8, ptr %.03.i.i, i64 -48
  %i.cf = getelementptr inbounds i8, ptr %.0142.i.i, i64 -48
  %i.cg = load <2 x i32>, ptr %i.cf, align 4, !tbaa !802
  store <2 x i32> %i.cg, ptr %i.ce, align 4, !tbaa !802
  %i.ch = getelementptr inbounds i8, ptr %.03.i.i, i64 -56
  %i.ci = getelementptr inbounds i8, ptr %.0142.i.i, i64 -56
  %i.cj = load <2 x i32>, ptr %i.ci, align 4, !tbaa !802
  store <2 x i32> %i.cj, ptr %i.ch, align 4, !tbaa !802
  %i.ck = getelementptr inbounds i8, ptr %.03.i.i, i64 -64 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.0142.i.i, i64 -64 ; 3 uses
  %i.cm = load <2 x i32>, ptr %i.cl, align 4, !tbaa !802
  store <2 x i32> %i.cm, ptr %i.ck, align 4, !tbaa !802
  %.not.i.i12.7 = icmp eq ptr %i.cl, %i.bd
  br i1 %.not.i.i12.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !688

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val19.pre.i = load i8, ptr %i.az, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.loopexit.i, %bb.f
  %.val19.i = phi i8 [ %.val19.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.loopexit.i ], [ %.val21.i, %bb.f ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.bb
  %i.cp = load <2 x i32>, ptr %.val8, align 4, !tbaa !802
  store <2 x i32> %i.cp, ptr %i.co, align 4, !tbaa !802
  %i.cq = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.cq, ptr %i.az, align 1, !tbaa !813
  %i.cr = getelementptr i8, ptr %i.av, i64 11
  %.val22.i = load i8, ptr %i.cr, align 1, !tbaa !813
  %.not.i25.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i25.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJRPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i
  %i.cs = zext i8 %i.cq to i32
  %i.ct = add nuw nsw i32 %i.ay, 1                ; 2 uses
  %i.cu = icmp samesign ult i32 %i.ct, %i.cs
  br i1 %i.cu, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJRPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %i.av, i64 256 ; 10 uses
  %i.cw = zext i8 %i.cq to i64                    ; 4 uses
  %i.cx = zext nneg i32 %i.ct to i64
  %i.cy = xor i64 %i.bb, -1
  %i.cz = add nsw i64 %i.cy, %i.cw
  %i.da = add nsw i64 %i.cw, -2
  %i.db = sub nsw i64 %i.da, %i.bb
  %xtraiter38 = and i64 %i.cz, 3                  ; 2 uses
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.dc, %.prol.preheader ], [ %i.cw, %.lr.ph.i ] ; 3 uses
  %prol.iter40 = phi i64 [ %prol.iter40.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.dc = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !2543 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.prol
  store ptr %i.de, ptr %i.df, align 8, !tbaa !2543
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !813
  %prol.iter40.next = add i64 %prol.iter40, 1     ; 2 uses
  %prol.iter40.cmp.not = icmp eq i64 %prol.iter40.next, %xtraiter38
  br i1 %prol.iter40.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !19134

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.cw, %.lr.ph.i ], [ %i.dc, %.prol.preheader ]
  %i.di = icmp ult i64 %i.db, 3
  br i1 %i.di, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJRPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.eb, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.dj = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !2543 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !2543
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = trunc nuw i64 %indvars.iv to i8
  store i8 %i.do, ptr %i.dn, align 1, !tbaa !813
  %i.dp = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2543 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dj
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !2543
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = trunc nuw i64 %i.dj to i8
  store i8 %i.du, ptr %i.dt, align 1, !tbaa !813
  %i.dv = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !2543 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dp
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !2543
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = trunc nuw i64 %i.dp to i8
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !813
  %i.eb = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !2543 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dv
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !2543
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eg = trunc nuw i64 %i.dv to i8
  store i8 %i.eg, ptr %i.ef, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.eb, %i.cx
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJRPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit, !llvm.loop !19135

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE13emplace_valueIJRPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE19transfer_n_backwardEmmmPSA_PS8_.exit.i, %bb.g
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !2542
  %i.ej = add i64 %i.ei, 1
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !2542
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.av, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %i.aw, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKS5_iEPSG_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.4158", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !2543   ; 16 uses
  %.val105 = load ptr, ptr %i.b, align 8, !tbaa !2543 ; 7 uses
  %.val117 = load ptr, ptr %0, align 8, !tbaa !2541
  %.not = icmp eq ptr %i.b, %.val117
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val103 = load i8, ptr %i.c, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val103, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val103, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val105, i64 256
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2543 ; 14 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 7 uses
  %.val115 = load i8, ptr %i.i, align 1, !tbaa !813 ; 4 uses
  %i.j = icmp ult i8 %.val115, 30
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 30, %.val115
  %i.k = load i32, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.l = and i32 %i.k, 254
  %i.m = icmp samesign ult i32 %i.l, 30
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n                    ; 3 uses
  %.sroa.speculated151 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 9 uses
  %i.p = and i32 %i.k, 255
  %i.q = zext nneg i8 %.sroa.speculated151 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.p, %i.q
  %narrow164 = add nuw nsw i8 %.sroa.speculated151, %.val115
  %i.r = icmp samesign ult i8 %narrow164, 30
  %or.cond = select i1 %.not85, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i8 %.val115 to i64             ; 2 uses
  %i.t = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val50.i = load i8, ptr %i.t, align 1, !tbaa !813
  %i.u = zext i8 %.val50.i to i64                 ; 2 uses
  %.val52.i = load ptr, ptr %i.h, align 8, !tbaa !2543
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val52.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  %i.z = load <2 x i32>, ptr %i.y, align 4, !tbaa !802
  store <2 x i32> %i.z, ptr %i.w, align 4, !tbaa !802
  %i.aa = add nsw i32 %i.q, -1                    ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr i8, ptr %i.b, i64 12      ; 13 uses
  %.idx.i.i = shl nuw nsw i64 %i.ab, 3            ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 %.idx.i.i ; 2 uses
  %.not1.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ae = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 280
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader256, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ah = shl nuw nsw i64 %i.s, 3                 ; 4 uses
  %i.ai = getelementptr i8, ptr %i.h, i64 %i.ah
  %scevgep = getelementptr i8, ptr %i.ai, i64 20
  %i.aj = getelementptr i8, ptr %i.h, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.idx.i.i
  %scevgep177 = getelementptr i8, ptr %i.ak, i64 16
  %i.al = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1)
  %i.am = shl nuw i8 %i.al, 3
  %i.an = zext i8 %i.am to i64
  %scevgep178 = getelementptr i8, ptr %i.b, i64 %i.an
  %i.ao = getelementptr i8, ptr %i.h, i64 %i.ah
  %scevgep179 = getelementptr i8, ptr %i.ao, i64 24
  %i.ap = getelementptr i8, ptr %i.h, i64 %i.ah
  %i.aq = getelementptr i8, ptr %i.ap, i64 %.idx.i.i
  %scevgep180 = getelementptr i8, ptr %i.aq, i64 20
  %scevgep181 = getelementptr i8, ptr %i.b, i64 16
  %bound0 = icmp ult ptr %scevgep, %scevgep178
  %bound1 = icmp ult ptr %i.ac, %scevgep177
  %found.conflict = and i1 %bound0, %bound1
  %bound0182 = icmp ult ptr %scevgep179, %i.ad
  %bound1183 = icmp ult ptr %scevgep181, %scevgep180
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx = or i1 %found.conflict, %found.conflict184
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader256, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.w, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.ac, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 3 uses
  %i.av = or disjoint i64 %i.au, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.au
  %next.gep185 = getelementptr i8, ptr %i.w, i64 %i.av
  %next.gep186 = getelementptr i8, ptr %i.ac, i64 %i.au
  %next.gep187 = getelementptr i8, ptr %i.ac, i64 %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %next.gep185, i64 8
  %wide.vec = load <4 x i32>, ptr %next.gep186, align 4, !tbaa !802
  %wide.vec189 = load <4 x i32>, ptr %next.gep187, align 4, !tbaa !802
  store <4 x i32> %wide.vec, ptr %i.aw, align 4, !tbaa !802
  store <4 x i32> %wide.vec189, ptr %i.ax, align 4, !tbaa !802
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !19136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i, label %.lr.ph.i.i.preheader256

.lr.ph.i.i.preheader256:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.03.i.pn.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.preheader ], [ %i.as, %middle.block ]
  %.0122.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader256, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i, %.lr.ph.i.i ], [ %.03.i.pn.i.ph, %.lr.ph.i.i.preheader256 ]
  %.0122.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %.0122.i.i.ph, %.lr.ph.i.i.preheader256 ] ; 2 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8 ; 2 uses
  %i.az = load <2 x i32>, ptr %.0122.i.i, align 4, !tbaa !802
  store <2 x i32> %i.az, ptr %.03.i.i, align 4, !tbaa !802
  %i.ba = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.ad
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !19137

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.val49.pre.i = load i8, ptr %i.t, align 8, !tbaa !813
  %.pre.i = zext i8 %.val49.pre.i to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.loopexit.i ], [ %i.u, %bb.e ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.pre-phi.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.bd = load <2 x i32>, ptr %i.bc, align 4, !tbaa !802
  store <2 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !802
  %i.be = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val54.i = load i8, ptr %i.be, align 2, !tbaa !813 ; 3 uses
  %i.bf = zext i8 %.val54.i to i32
  %i.bg = sub nsw i32 %i.bf, %i.q
  %i.bh = sext i32 %i.bg to i64
  %i.bi = zext nneg i8 %.sroa.speculated151 to i64 ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bi ; 5 uses
  %.idx.i57.i = shl nuw nsw i64 %i.bh, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx.i57.i
  %.not1.i58.i = icmp eq i8 %.val54.i, %.sroa.speculated151
  br i1 %.not1.i58.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit66.i, label %.lr.ph.i60.i.preheader

.lr.ph.i60.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i
  %i.bl = zext i8 %.val54.i to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = shl nuw nsw i64 %i.bi, 3
  %i.bo = add nsw i64 %i.bm, -8
  %i.bp = sub nsw i64 %i.bo, %i.bn                ; 2 uses
  %i.bq = lshr exact i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check195 = icmp ult i64 %i.bp, 24
  br i1 %min.iters.check195, label %.lr.ph.i60.i.preheader255, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph.i60.i.preheader
  %n.vec197 = and i64 %i.br, 4611686018427387900  ; 3 uses
  %i.bs = shl i64 %n.vec197, 3                    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.ac, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bj, i64 %i.bs
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph196
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next212, %vector.body198 ] ; 2 uses
  %i.bv = shl i64 %index199, 3                    ; 3 uses
  %i.bw = or disjoint i64 %i.bv, 16               ; 2 uses
  %next.gep200 = getelementptr i8, ptr %i.ac, i64 %i.bv
  %next.gep201 = getelementptr i8, ptr %i.ac, i64 %i.bw
  %next.gep202 = getelementptr i8, ptr %i.bj, i64 %i.bv
  %next.gep203 = getelementptr i8, ptr %i.bj, i64 %i.bw
  %wide.vec204 = load <4 x i32>, ptr %next.gep202, align 4, !tbaa !802
  %wide.vec207 = load <4 x i32>, ptr %next.gep203, align 4, !tbaa !802
  store <4 x i32> %wide.vec204, ptr %next.gep200, align 4, !tbaa !802
  store <4 x i32> %wide.vec207, ptr %next.gep201, align 4, !tbaa !802
  %index.next212 = add nuw i64 %index199, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next212, %n.vec197
  br i1 %i.bx, label %middle.block213, label %vector.body198, !llvm.loop !19138

middle.block213:                                  ; preds = %vector.body198
  %cmp.n214 = icmp eq i64 %i.br, %n.vec197
  br i1 %cmp.n214, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit66.i, label %.lr.ph.i60.i.preheader255

.lr.ph.i60.i.preheader255:                        ; preds = %.lr.ph.i60.i.preheader, %middle.block213
  %.03.i61.i.ph = phi ptr [ %i.ac, %.lr.ph.i60.i.preheader ], [ %i.bt, %middle.block213 ]
  %.0122.i62.i.ph = phi ptr [ %i.bj, %.lr.ph.i60.i.preheader ], [ %i.bu, %middle.block213 ]
  br label %.lr.ph.i60.i

.lr.ph.i60.i:                                     ; preds = %.lr.ph.i60.i.preheader255, %.lr.ph.i60.i
  %.03.i61.i = phi ptr [ %i.ca, %.lr.ph.i60.i ], [ %.03.i61.i.ph, %.lr.ph.i60.i.preheader255 ] ; 2 uses
  %.0122.i62.i = phi ptr [ %i.bz, %.lr.ph.i60.i ], [ %.0122.i62.i.ph, %.lr.ph.i60.i.preheader255 ] ; 2 uses
  %i.by = load <2 x i32>, ptr %.0122.i62.i, align 4, !tbaa !802
  store <2 x i32> %i.by, ptr %.03.i61.i, align 4, !tbaa !802
  %i.bz = getelementptr inbounds nuw i8, ptr %.0122.i62.i, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.03.i61.i, i64 8
  %.not.i65.i = icmp eq ptr %i.bz, %i.bk
  br i1 %.not.i65.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit66.i, label %.lr.ph.i60.i, !llvm.loop !19139

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit66.i: ; preds = %.lr.ph.i60.i, %middle.block213, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit.i
  %i.cb = getelementptr i8, ptr %i.h, i64 11
  %.val53.i = load i8, ptr %i.cb, align 1, !tbaa !813
  %.not.i67.i = icmp eq i8 %.val53.i, 0
  br i1 %.not.i67.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE23rebalance_right_to_leftEhPSA_PS8_.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EEEEEE10transfer_nEmmmPSA_PS8_.exit66.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 3 uses
  %xtraiter = and i64 %i.bi, 1
  %i.ce = icmp samesign ult i8 %i.o, 2
  br i1 %i.ce, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bi, 30
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod257 = trunc i8 %.sroa.speculated151 to i1
  tail call void @llvm.assume(i1 %lcmp.mod257)
  %.val46.i.epil = load i8, ptr %i.i, align 2, !tbaa !813
  %i.cf = trunc i64 %indvars.iv.i.epil.init to i8
  %i.cg = add i8 %i.cf, 1
  %i.ch = add i8 %.val46.i.epil, %i.cg            ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.i.epil.init
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2543 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !2543
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !813
  store ptr %i.h, ptr %i.cj, align 8, !tbaa !2543
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.be, align 2, !tbaa !813
end_hunk_17
begin_hunk_18_@_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE16internal_emplaceIJPNS1_13map_slot_typeIS5_iEEEEENS1_14btree_iteratorINS1_10btree_nodeISC_EERSt4pairIKS5_iEPSN_EESQ_DpOT_:bb.a
  %.03.i.i.unr = phi ptr [ %i.bg, %.lr.ph.preheader.i.i ], [ %i.bl, %.lr.ph.i.i.prol ]
  %.0142.i.i.unr = phi ptr [ %i.bh, %.lr.ph.preheader.i.i ], [ %i.bm, %.lr.ph.i.i.prol ]
  %i.bo = icmp ult i64 %i.bi, 56
  br i1 %i.bo, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.03.i.i = phi ptr [ %i.ck, %.lr.ph.i.i ], [ %.03.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %.0142.i.i = phi ptr [ %i.cl, %.lr.ph.i.i ], [ %.0142.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 8 uses
  %i.bp = getelementptr inbounds i8, ptr %.03.i.i, i64 -8
  %i.bq = getelementptr inbounds i8, ptr %.0142.i.i, i64 -8
  %i.br = load <2 x i32>, ptr %i.bq, align 4, !tbaa !802
  store <2 x i32> %i.br, ptr %i.bp, align 4, !tbaa !802
  %i.bs = getelementptr inbounds i8, ptr %.03.i.i, i64 -16
  %i.bt = getelementptr inbounds i8, ptr %.0142.i.i, i64 -16
  %i.bu = load <2 x i32>, ptr %i.bt, align 4, !tbaa !802
  store <2 x i32> %i.bu, ptr %i.bs, align 4, !tbaa !802
  %i.bv = getelementptr inbounds i8, ptr %.03.i.i, i64 -24
  %i.bw = getelementptr inbounds i8, ptr %.0142.i.i, i64 -24
  %i.bx = load <2 x i32>, ptr %i.bw, align 4, !tbaa !802
  store <2 x i32> %i.bx, ptr %i.bv, align 4, !tbaa !802
  %i.by = getelementptr inbounds i8, ptr %.03.i.i, i64 -32
  %i.bz = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.ca = load <2 x i32>, ptr %i.bz, align 4, !tbaa !802
  store <2 x i32> %i.ca, ptr %i.by, align 4, !tbaa !802
  %i.cb = getelementptr inbounds i8, ptr %.03.i.i, i64 -40
  %i.cc = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40
  %i.cd = load <2 x i32>, ptr %i.cc, align 4, !tbaa !802
  store <2 x i32> %i.cd, ptr %i.cb, align 4, !tbaa !802
  %i.ce = getelementptr inbounds i8, ptr %.03.i.i, i64 -48
  %i.cf = getelementptr inbounds i8, ptr %.0142.i.i, i64 -48
  %i.cg = load <2 x i32>, ptr %i.cf, align 4, !tbaa !802
  store <2 x i32> %i.cg, ptr %i.ce, align 4, !tbaa !802
  %i.ch = getelementptr inbounds i8, ptr %.03.i.i, i64 -56
  %i.ci = getelementptr inbounds i8, ptr %.0142.i.i, i64 -56
  %i.cj = load <2 x i32>, ptr %i.ci, align 4, !tbaa !802
  store <2 x i32> %i.cj, ptr %i.ch, align 4, !tbaa !802
  %i.ck = getelementptr inbounds i8, ptr %.03.i.i, i64 -64 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.0142.i.i, i64 -64 ; 3 uses
  %i.cm = load <2 x i32>, ptr %i.cl, align 4, !tbaa !802
  store <2 x i32> %i.cm, ptr %i.ck, align 4, !tbaa !802
  %.not.i.i12.7 = icmp eq ptr %i.cl, %i.bd
  br i1 %.not.i.i12.7, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !693

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.val19.pre.i = load i8, ptr %i.az, align 1, !tbaa !813
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.loopexit.i, %bb.f
  %.val19.i = phi i8 [ %.val19.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.loopexit.i ], [ %.val21.i, %bb.f ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.bb
  %i.cp = load <2 x i32>, ptr %.val8, align 4, !tbaa !802
  store <2 x i32> %i.cp, ptr %i.co, align 4, !tbaa !802
  %i.cq = add i8 %.val19.i, 1                     ; 3 uses
  store i8 %i.cq, ptr %i.az, align 1, !tbaa !813
  %i.cr = getelementptr i8, ptr %i.av, i64 11
  %.val22.i = load i8, ptr %i.cr, align 1, !tbaa !813
  %.not.i25.i = icmp eq i8 %.val22.i, 0
  br i1 %.not.i25.i, label %bb.g, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i
  %i.cs = zext i8 %i.cq to i32
  %i.ct = add nuw nsw i32 %i.ay, 1                ; 2 uses
  %i.cu = icmp samesign ult i32 %i.ct, %i.cs
  br i1 %i.cu, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %i.av, i64 256 ; 10 uses
  %i.cw = zext i8 %i.cq to i64                    ; 4 uses
  %i.cx = zext nneg i32 %i.ct to i64
  %i.cy = xor i64 %i.bb, -1
  %i.cz = add nsw i64 %i.cy, %i.cw
  %i.da = add nsw i64 %i.cw, -2
  %i.db = sub nsw i64 %i.da, %i.bb
  %xtraiter17 = and i64 %i.cz, 3                  ; 2 uses
  %lcmp.mod18.not = icmp eq i64 %xtraiter17, 0
  br i1 %lcmp.mod18.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.dc, %.prol.preheader ], [ %i.cw, %.lr.ph.i ] ; 3 uses
  %prol.iter19 = phi i64 [ %prol.iter19.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.dc = add nsw i64 %indvars.iv.prol, -1        ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !2573 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.prol
  store ptr %i.de, ptr %i.df, align 8, !tbaa !2573
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = trunc nuw i64 %indvars.iv.prol to i8
  store i8 %i.dh, ptr %i.dg, align 1, !tbaa !813
  %prol.iter19.next = add i64 %prol.iter19, 1     ; 2 uses
  %prol.iter19.cmp.not = icmp eq i64 %prol.iter19.next, %xtraiter17
  br i1 %prol.iter19.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !19260

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.cw, %.lr.ph.i ], [ %i.dc, %.prol.preheader ]
  %i.di = icmp ult i64 %i.db, 3
  br i1 %i.di, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.eb, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 6 uses
  %i.dj = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !2573 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !2573
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = trunc nuw i64 %indvars.iv to i8
  store i8 %i.do, ptr %i.dn, align 1, !tbaa !813
  %i.dp = add nsw i64 %indvars.iv, -2             ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !2573 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dj
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !2573
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = trunc nuw i64 %i.dj to i8
  store i8 %i.du, ptr %i.dt, align 1, !tbaa !813
  %i.dv = add nsw i64 %indvars.iv, -3             ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dv
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !2573 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dp
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !2573
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = trunc nuw i64 %i.dp to i8
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !813
  %i.eb = add nsw i64 %indvars.iv, -4             ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !2573 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.dv
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !2573
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eg = trunc nuw i64 %i.dv to i8
  store i8 %i.eg, ptr %i.ef, align 1, !tbaa !813
  %.wide.3 = icmp ugt i64 %i.eb, %i.cx
  br i1 %.wide.3, label %.lr.ph.i.new, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit, !llvm.loop !694

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE13emplace_valueIJPNS1_13map_slot_typeIS5_iEEEEEvhPS8_DpOT_.exit: ; preds = %.prol.loopexit, %.lr.ph.i.new, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE19transfer_n_backwardEmmmPSD_PS8_.exit.i, %bb.g
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !2572
  %i.ej = add i64 %i.ei, 1
  store i64 %i.ej, ptr %i.eh, align 8, !tbaa !2572
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISC_EERSt4pairIKS5_iEPSJ_EE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.4180", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !2573   ; 16 uses
  %.val105 = load ptr, ptr %i.b, align 8, !tbaa !2573 ; 7 uses
  %.val118 = load ptr, ptr %0, align 8, !tbaa !2571
  %.not = icmp eq ptr %i.b, %.val118
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %.val103 = load i8, ptr %i.c, align 8, !tbaa !813 ; 6 uses
  %.not84 = icmp eq i8 %.val103, 0
  br i1 %.not84, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %.val103, -1
  %i.e = getelementptr inbounds nuw i8, ptr %.val105, i64 256
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2573 ; 14 uses
  %i.i = getelementptr i8, ptr %i.h, i64 10       ; 7 uses
  %.val116 = load i8, ptr %i.i, align 1, !tbaa !813 ; 4 uses
  %i.j = icmp ult i8 %.val116, 30
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %narrow = sub nuw nsw i8 30, %.val116
  %i.k = load i32, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %i.l = and i32 %i.k, 254
  %i.m = icmp samesign ult i32 %i.l, 30
  %i.n = zext i1 %i.m to i8
  %i.o = lshr i8 %narrow, %i.n                    ; 3 uses
  %.sroa.speculated151 = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1) ; 9 uses
  %i.p = and i32 %i.k, 255
  %i.q = zext nneg i8 %.sroa.speculated151 to i32 ; 5 uses
  %.not85 = icmp samesign uge i32 %i.p, %i.q
  %narrow164 = add nuw nsw i8 %.sroa.speculated151, %.val116
  %i.r = icmp samesign ult i8 %narrow164, 30
  %or.cond = select i1 %.not85, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i8 %.val116 to i64             ; 2 uses
  %i.t = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val50.i = load i8, ptr %i.t, align 1, !tbaa !813
  %i.u = zext i8 %.val50.i to i64                 ; 2 uses
  %.val52.i = load ptr, ptr %i.h, align 8, !tbaa !2573
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.s ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val52.i, i64 12 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.u
  %i.z = load <2 x i32>, ptr %i.y, align 4, !tbaa !802
  store <2 x i32> %i.z, ptr %i.w, align 4, !tbaa !802
  %i.aa = add nsw i32 %i.q, -1                    ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr i8, ptr %i.b, i64 12      ; 13 uses
  %.idx.i.i = shl nuw nsw i64 %i.ab, 3            ; 4 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 %.idx.i.i ; 2 uses
  %.not1.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not1.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.ae = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 280
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader256, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.ah = shl nuw nsw i64 %i.s, 3                 ; 4 uses
  %i.ai = getelementptr i8, ptr %i.h, i64 %i.ah
  %scevgep = getelementptr i8, ptr %i.ai, i64 20
  %i.aj = getelementptr i8, ptr %i.h, i64 %i.ah
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.idx.i.i
  %scevgep177 = getelementptr i8, ptr %i.ak, i64 16
  %i.al = tail call i8 @llvm.umax.i8(i8 %i.o, i8 1)
  %i.am = shl nuw i8 %i.al, 3
  %i.an = zext i8 %i.am to i64
  %scevgep178 = getelementptr i8, ptr %i.b, i64 %i.an
  %i.ao = getelementptr i8, ptr %i.h, i64 %i.ah
  %scevgep179 = getelementptr i8, ptr %i.ao, i64 24
  %i.ap = getelementptr i8, ptr %i.h, i64 %i.ah
  %i.aq = getelementptr i8, ptr %i.ap, i64 %.idx.i.i
  %scevgep180 = getelementptr i8, ptr %i.aq, i64 20
  %scevgep181 = getelementptr i8, ptr %i.b, i64 16
  %bound0 = icmp ult ptr %scevgep, %scevgep178
  %bound1 = icmp ult ptr %i.ac, %scevgep177
  %found.conflict = and i1 %bound0, %bound1
  %bound0182 = icmp ult ptr %scevgep179, %i.ad
  %bound1183 = icmp ult ptr %scevgep181, %scevgep180
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx = or i1 %found.conflict, %found.conflict184
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader256, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.ar = shl i64 %n.vec, 3                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.w, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.ac, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 3                       ; 3 uses
  %i.av = or disjoint i64 %i.au, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.au
  %next.gep185 = getelementptr i8, ptr %i.w, i64 %i.av
  %next.gep186 = getelementptr i8, ptr %i.ac, i64 %i.au
  %next.gep187 = getelementptr i8, ptr %i.ac, i64 %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %next.gep185, i64 8
  %wide.vec = load <4 x i32>, ptr %next.gep186, align 4, !tbaa !802
  %wide.vec189 = load <4 x i32>, ptr %next.gep187, align 4, !tbaa !802
  store <4 x i32> %wide.vec, ptr %i.aw, align 4, !tbaa !802
  store <4 x i32> %wide.vec189, ptr %i.ax, align 4, !tbaa !802
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !19261

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i, label %.lr.ph.i.i.preheader256

.lr.ph.i.i.preheader256:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.03.i.pn.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.preheader ], [ %i.as, %middle.block ]
  %.0122.i.i.ph = phi ptr [ %i.ac, %vector.memcheck ], [ %i.ac, %.lr.ph.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader256, %.lr.ph.i.i
  %.03.i.pn.i = phi ptr [ %.03.i.i, %.lr.ph.i.i ], [ %.03.i.pn.i.ph, %.lr.ph.i.i.preheader256 ]
  %.0122.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %.0122.i.i.ph, %.lr.ph.i.i.preheader256 ] ; 2 uses
  %.03.i.i = getelementptr inbounds nuw i8, ptr %.03.i.pn.i, i64 8 ; 2 uses
  %i.az = load <2 x i32>, ptr %.0122.i.i, align 4, !tbaa !802
  store <2 x i32> %i.az, ptr %.03.i.i, align 4, !tbaa !802
  %i.ba = getelementptr inbounds nuw i8, ptr %.0122.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.ad
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !19262

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.val49.pre.i = load i8, ptr %i.t, align 8, !tbaa !813
  %.pre.i = zext i8 %.val49.pre.i to i64
  br label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i: ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i, %bb.e
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.loopexit.i ], [ %i.u, %bb.e ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.pre-phi.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ab
  %i.bd = load <2 x i32>, ptr %i.bc, align 4, !tbaa !802
  store <2 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !802
  %i.be = getelementptr i8, ptr %i.b, i64 10      ; 5 uses
  %.val54.i = load i8, ptr %i.be, align 2, !tbaa !813 ; 3 uses
  %i.bf = zext i8 %.val54.i to i32
  %i.bg = sub nsw i32 %i.bf, %i.q
  %i.bh = sext i32 %i.bg to i64
  %i.bi = zext nneg i8 %.sroa.speculated151 to i64 ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bi ; 5 uses
  %.idx.i57.i = shl nuw nsw i64 %i.bh, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx.i57.i
  %.not1.i58.i = icmp eq i8 %.val54.i, %.sroa.speculated151
  br i1 %.not1.i58.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit66.i, label %.lr.ph.i60.i.preheader

.lr.ph.i60.i.preheader:                           ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i
  %i.bl = zext i8 %.val54.i to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = shl nuw nsw i64 %i.bi, 3
  %i.bo = add nsw i64 %i.bm, -8
  %i.bp = sub nsw i64 %i.bo, %i.bn                ; 2 uses
  %i.bq = lshr exact i64 %i.bp, 3
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check195 = icmp ult i64 %i.bp, 24
  br i1 %min.iters.check195, label %.lr.ph.i60.i.preheader255, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph.i60.i.preheader
  %n.vec197 = and i64 %i.br, 4611686018427387900  ; 3 uses
  %i.bs = shl i64 %n.vec197, 3                    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.ac, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bj, i64 %i.bs
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph196
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next212, %vector.body198 ] ; 2 uses
  %i.bv = shl i64 %index199, 3                    ; 3 uses
  %i.bw = or disjoint i64 %i.bv, 16               ; 2 uses
  %next.gep200 = getelementptr i8, ptr %i.ac, i64 %i.bv
  %next.gep201 = getelementptr i8, ptr %i.ac, i64 %i.bw
  %next.gep202 = getelementptr i8, ptr %i.bj, i64 %i.bv
  %next.gep203 = getelementptr i8, ptr %i.bj, i64 %i.bw
  %wide.vec204 = load <4 x i32>, ptr %next.gep202, align 4, !tbaa !802
  %wide.vec207 = load <4 x i32>, ptr %next.gep203, align 4, !tbaa !802
  store <4 x i32> %wide.vec204, ptr %next.gep200, align 4, !tbaa !802
  store <4 x i32> %wide.vec207, ptr %next.gep201, align 4, !tbaa !802
  %index.next212 = add nuw i64 %index199, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next212, %n.vec197
  br i1 %i.bx, label %middle.block213, label %vector.body198, !llvm.loop !19263

middle.block213:                                  ; preds = %vector.body198
  %cmp.n214 = icmp eq i64 %i.br, %n.vec197
  br i1 %cmp.n214, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit66.i, label %.lr.ph.i60.i.preheader255

.lr.ph.i60.i.preheader255:                        ; preds = %.lr.ph.i60.i.preheader, %middle.block213
  %.03.i61.i.ph = phi ptr [ %i.ac, %.lr.ph.i60.i.preheader ], [ %i.bt, %middle.block213 ]
  %.0122.i62.i.ph = phi ptr [ %i.bj, %.lr.ph.i60.i.preheader ], [ %i.bu, %middle.block213 ]
  br label %.lr.ph.i60.i

.lr.ph.i60.i:                                     ; preds = %.lr.ph.i60.i.preheader255, %.lr.ph.i60.i
  %.03.i61.i = phi ptr [ %i.ca, %.lr.ph.i60.i ], [ %.03.i61.i.ph, %.lr.ph.i60.i.preheader255 ] ; 2 uses
  %.0122.i62.i = phi ptr [ %i.bz, %.lr.ph.i60.i ], [ %.0122.i62.i.ph, %.lr.ph.i60.i.preheader255 ] ; 2 uses
  %i.by = load <2 x i32>, ptr %.0122.i62.i, align 4, !tbaa !802
  store <2 x i32> %i.by, ptr %.03.i61.i, align 4, !tbaa !802
  %i.bz = getelementptr inbounds nuw i8, ptr %.0122.i62.i, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.03.i61.i, i64 8
  %.not.i65.i = icmp eq ptr %i.bz, %i.bk
  br i1 %.not.i65.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit66.i, label %.lr.ph.i60.i, !llvm.loop !19264

_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit66.i: ; preds = %.lr.ph.i60.i, %middle.block213, %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit.i
  %i.cb = getelementptr i8, ptr %i.h, i64 11
  %.val53.i = load i8, ptr %i.cb, align 1, !tbaa !813
  %.not.i67.i = icmp eq i8 %.val53.i, 0
  br i1 %.not.i67.i, label %.lr.ph.i, label %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE23rebalance_right_to_leftEhPSD_PS8_.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implINS1_12_GLOBAL__N_128OnlyConstructibleByAllocatorEiJNS4_32OnlyConstructibleByAllocatorCompENS4_26OnlyConstructibleAllocatorIS5_EESt17integral_constantIiLi256EES9_IbLb1EEEEEE10transfer_nEmmmPSD_PS8_.exit66.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 3 uses
  %xtraiter = and i64 %i.bi, 1
  %i.ce = icmp samesign ult i8 %i.o, 2
  br i1 %i.ce, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.bi, 30
  br label %bb.f

.preheader.i.unr-lcssa:                           ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.unr-lcssa ] ; 2 uses
  %lcmp.mod257 = trunc i8 %.sroa.speculated151 to i1
  tail call void @llvm.assume(i1 %lcmp.mod257)
  %.val46.i.epil = load i8, ptr %i.i, align 2, !tbaa !813
  %i.cf = trunc i64 %indvars.iv.i.epil.init to i8
  %i.cg = add i8 %i.cf, 1
  %i.ch = add i8 %.val46.i.epil, %i.cg            ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.i.epil.init
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !2573 ; 3 uses
  %i.ck = zext i8 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ck
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !2573
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.ch, ptr %i.cm, align 1, !tbaa !813
  store ptr %i.h, ptr %i.cj, align 8, !tbaa !2573
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.unr-lcssa, %.epil.preheader
  %.val453.i = load i8, ptr %i.be, align 2, !tbaa !813
end_hunk_18
