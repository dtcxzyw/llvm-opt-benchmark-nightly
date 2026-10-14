Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 695
loop-unroll.NumUnrolled: 833
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_146Btree_MovesComparisonsCopiesSwapsTracking_Test8TestBodyEv:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 32) #36
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit113 unwind label %bb.as

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit113: ; preds = %bb.aq
  %i.cp = load i8, ptr %15, align 8, !tbaa !842, !range !843, !noundef !844
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.bc, label %bb.at

bb.ar:                                            ; preds = %_ZN7testing7MessageD2Ev.exit105, %bb.ae
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn30.pn, %_ZN7testing7MessageD2Ev.exit105 ], [ %i.bs, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.bx

bb.as:                                            ; preds = %bb.aq
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.at:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit113
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !845 ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i114, label %_ZNK7testing15AssertionResult15failure_messageEv.exit115, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !810
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit115

_ZNK7testing15AssertionResult15failure_messageEv.exit115: ; preds = %bb.av, %bb.au
  %i.cv = phi ptr [ %i.cu, %bb.av ], [ @.str.192, %bb.au ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1380, ptr noundef %i.cv)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit115
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.cw = load ptr, ptr %16, align 8, !tbaa !827  ; 3 uses
  %.not.i.i116 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i116, label %_ZN7testing7MessageD2Ev.exit118, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117: ; preds = %bb.ax
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !816
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit118

_ZN7testing7MessageD2Ev.exit118:                  ; preds = %bb.ax, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.bc

bb.ay:                                            ; preds = %bb.at
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit121

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit115
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aw
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #37
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn34 = phi { ptr, i32 } [ %i.dc, %bb.ba ], [ %i.db, %bb.az ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.dd = load ptr, ptr %16, align 8, !tbaa !827  ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i119, label %_ZN7testing7MessageD2Ev.exit121, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120: ; preds = %bb.bb
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !816
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(128) %i.dd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit121

_ZN7testing7MessageD2Ev.exit121:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120, %bb.bb, %bb.ay
  %.pn34.pn = phi { ptr, i32 } [ %i.da, %bb.ay ], [ %.pn34, %bb.bb ], [ %.pn34, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #37
  br label %bb.bv

bb.bc:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit113, %_ZN7testing7MessageD2Ev.exit118
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !845 ; 4 uses
  %.not.i.i122 = icmp eq ptr %i.di, null
  br i1 %.not.i.i122, label %_ZN7testing15AssertionResultD2Ev.exit126, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !810 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123: ; preds = %bb.bd
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !813
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit126

_ZN7testing15AssertionResultD2Ev.exit126:         ; preds = %bb.bc, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %.val47 = load ptr, ptr %5, align 8, !tbaa !869
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %.val48 = load ptr, ptr %i.do, align 8, !tbaa !869
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi4ESt4lessIS6_EEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 56540, i32 noundef 134212, ptr %.val47, ptr %.val48, ptr noundef %1, ptr noundef %2)
          to label %bb.be unwind label %bb.bw

bb.be:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit126
  %.val53 = load ptr, ptr %5, align 8, !tbaa !869
  %.val54 = load ptr, ptr %i.do, align 8, !tbaa !869
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi61ESt4lessIS6_EEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 386718, i32 noundef 129807, ptr %.val53, ptr %.val54, ptr noundef %1, ptr noundef %3)
          to label %bb.bf unwind label %bb.bw

bb.bf:                                            ; preds = %bb.be
  %.val59 = load ptr, ptr %5, align 8, !tbaa !869
  %.val60 = load ptr, ptr %i.do, align 8, !tbaa !869
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi100ESt4lessIS6_EEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 586761, i32 noundef 130310, ptr %.val59, ptr %.val60, ptr noundef %1, ptr noundef %4)
          to label %bb.bg unwind label %bb.bw

bb.bg:                                            ; preds = %bb.bf
  %i.dp = load ptr, ptr %5, align 8, !tbaa !869   ; 5 uses
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !869 ; 5 uses
  %.not.i.i127 = icmp eq ptr %i.dp, %i.dq
  br i1 %.not.i.i127, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 2
  %i.dv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = shl nuw nsw i64 %i.dv, 1
  %i.dx = xor i64 %i.dw, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.dp, ptr %i.dq, i64 noundef %i.dx)
          to label %.noexc128 unwind label %bb.bw

.noexc128:                                        ; preds = %bb.bh
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.dp, ptr %i.dq)
          to label %.noexc128._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge unwind label %bb.bw

.noexc128._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge: ; preds = %.noexc128
  %.val45.pre = load ptr, ptr %5, align 8, !tbaa !869
  %.val46.pre = load ptr, ptr %i.do, align 8, !tbaa !869
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.noexc128._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge, %bb.bg
  %.val46 = phi ptr [ %.val46.pre, %.noexc128._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge ], [ %i.dq, %bb.bg ]
  %.val45 = phi ptr [ %.val45.pre, %.noexc128._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge ], [ %i.dp, %bb.bg ]
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi4ESt4lessIS6_EEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 24972, i32 noundef 85563, ptr %.val45, ptr %.val46, ptr noundef %1, ptr noundef %2)
          to label %bb.bi unwind label %bb.bw

bb.bi:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  %.val51 = load ptr, ptr %5, align 8, !tbaa !869
  %.val52 = load ptr, ptr %i.do, align 8, !tbaa !869
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi61ESt4lessIS6_EEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 20208, i32 noundef 87757, ptr %.val51, ptr %.val52, ptr noundef %1, ptr noundef %3)
          to label %bb.bj unwind label %bb.bw

bb.bj:                                            ; preds = %bb.bi
  %.val57 = load ptr, ptr %5, align 8, !tbaa !869
  %.val58 = load ptr, ptr %i.do, align 8, !tbaa !869
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi100ESt4lessIS6_EEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 20124, i32 noundef 96583, ptr %.val57, ptr %.val58, ptr noundef %1, ptr noundef %4)
          to label %bb.bk unwind label %bb.bw

bb.bk:                                            ; preds = %bb.bj
  %i.dy = load ptr, ptr %5, align 8, !tbaa !869   ; 10 uses
  %i.dz = load ptr, ptr %i.do, align 8, !tbaa !869 ; 6 uses
  %i.ea = icmp ne ptr %i.dy, %i.dz
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.dz, i64 -4 ; 5 uses
  %i.eb = icmp ult ptr %i.dy, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.bk
  %i.ec = ptrtoaddr ptr %i.dz to i64
  %18 = add i64 %i.ec, -8
  %19 = ptrtoaddr ptr %i.dy to i64                ; 3 uses
  %i.ed = add i64 %19, 4
  %i.ee = call i64 @llvm.umax.i64(i64 %18, i64 %i.ed)
  %i.ef = add i64 %i.ee, -4                       ; 2 uses
  %i.eg = icmp ne i64 %i.ef, %19
  %i.eh = zext i1 %i.eg to i64                    ; 3 uses
  %i.ei = add i64 %19, %i.eh
  %i.ej = sub i64 %i.ef, %i.ei                    ; 2 uses
  %i.ek = lshr i64 %i.ej, 3
  %i.el = add nuw nsw i64 %i.ek, %i.eh            ; 2 uses
  %i.em = add nuw nsw i64 %i.el, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.el, 31
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader175, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.en = lshr i64 %i.ej, 3
  %i.eo = add nuw nsw i64 %i.en, %i.eh
  %i.ep = shl nuw i64 %i.eo, 2                    ; 2 uses
  %i.eq = getelementptr i8, ptr %i.dy, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  %i.es = sub nuw nsw i64 -4, %i.ep
  %i.et = getelementptr i8, ptr %i.dz, i64 %i.es
  %bound0 = icmp ult ptr %i.dy, %i.dz
  %bound1 = icmp ult ptr %i.et, %i.er
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader175, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.em, 9223372036854775804     ; 4 uses
  %i.eu = mul i64 %n.vec, -4
  %i.ev = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.eu
  %i.ew = shl i64 %n.vec, 2
  %i.ex = getelementptr i8, ptr %i.dy, i64 %i.ew
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ey = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.ey
  %i.ez = shl i64 %index, 2
  %next.gep171 = getelementptr i8, ptr %i.dy, i64 %i.ez ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep171, align 4, !tbaa !802, !alias.scope !10031, !noalias !10032
  %i.fa = getelementptr i8, ptr %next.gep, i64 -12 ; 2 uses
  %wide.load172 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !802, !alias.scope !10032
  %reverse = shufflevector <4 x i32> %wide.load172, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep171, align 4, !tbaa !802, !alias.scope !10031, !noalias !10032
  %reverse173 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse173, ptr %i.fa, align 4, !tbaa !802, !alias.scope !10032
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !10026

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.em, %n.vec
  br i1 %cmp.n, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %.lr.ph.i.i.preheader175

.lr.ph.i.i.preheader175:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %vector.memcheck ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ], [ %i.ev, %middle.block ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.dy, %vector.memcheck ], [ %i.dy, %.lr.ph.i.i.preheader ], [ %i.ex, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader175, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader175 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.fe, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader175 ] ; 3 uses
  %i.fc = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !802
  %i.fd = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !802
  store i32 %i.fd, ptr %.sroa.05.09.i.i, align 4, !tbaa !802
  store i32 %i.fc, ptr %.sroa.0.010.i.i, align 4, !tbaa !802
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.ff = icmp ult ptr %i.fe, %.sroa.0.0.i.i
  br i1 %i.ff, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, !llvm.loop !10027

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.bk
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi4ESt4lessIS6_EEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 54949, i32 noundef 127531, ptr %i.dy, ptr %i.dz, ptr noundef %1, ptr noundef %2)
          to label %bb.bl unwind label %bb.bw

bb.bl:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  %.val49 = load ptr, ptr %5, align 8, !tbaa !869
  %.val50 = load ptr, ptr %i.do, align 8, !tbaa !869
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi61ESt4lessIS6_EEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 338813, i32 noundef 118266, ptr %.val49, ptr %.val50, ptr noundef %1, ptr noundef %3)
          to label %bb.bm unwind label %bb.bw

bb.bm:                                            ; preds = %bb.bl
  %.val55 = load ptr, ptr %5, align 8, !tbaa !869
  %.val56 = load ptr, ptr %i.do, align 8, !tbaa !869
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi100ESt4lessIS6_EEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 534529, i32 noundef 125279, ptr %.val55, ptr %.val56, ptr noundef %1, ptr noundef %4)
          to label %bb.bn unwind label %bb.bw

bb.bn:                                            ; preds = %bb.bm
  %i.fg = load ptr, ptr %5, align 8, !tbaa !868   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !870
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fl) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val64 = load i64, ptr %i.q, align 8, !tbaa !1505
  %i.fm = icmp eq i64 %.val64, 0
  br i1 %i.fm, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.val63 = load ptr, ptr %4, align 8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE16clear_and_deleteEPSF_PSB_(ptr noundef %.val63)
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %.val68 = load i64, ptr %i.o, align 8, !tbaa !1498
  %i.fn = icmp eq i64 %.val68, 0
  br i1 %i.fn, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi504EEEEEEEED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit
  %.val67 = load ptr, ptr %3, align 8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE16clear_and_deleteEPSF_PSB_(ptr noundef %.val67)
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi504EEEEEEEED2Ev.exit

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi504EEEEEEEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %.val72 = load i64, ptr %i.m, align 8, !tbaa !1491
  %i.fo = icmp eq i64 %.val72, 0
  br i1 %i.fo, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi48EEEEEEEED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi504EEEEEEEED2Ev.exit
  %.val71 = load ptr, ptr %2, align 8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi48EEEEEE16clear_and_deleteEPSF_PSB_(ptr noundef %.val71)
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi48EEEEEEEED2Ev.exit

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi48EEEEEEEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi504EEEEEEEED2Ev.exit, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.fp = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !802
  %i.fq = load i32, ptr %1, align 4, !tbaa !1419
  %.not.i = icmp eq i32 %i.fp, %i.fq
  br i1 %.not.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi48EEEEEEEED2Ev.exit
  call void @abort() #39
  unreachable

bb.bt:                                            ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi48EEEEEEEED2Ev.exit
  %i.fr = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !802
  %i.fs = load i32, ptr %i.b, align 4, !tbaa !1420
  %.not1.i = icmp eq i32 %i.fr, %i.fs
  br i1 %.not1.i, label %_ZN4absl12lts_2026052613test_internal15InstanceTrackerD2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @abort() #39
  unreachable

_ZN4absl12lts_2026052613test_internal15InstanceTrackerD2Ev.exit: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  ret void

bb.bv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit121, %bb.as
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %_ZN7testing7MessageD2Ev.exit121 ], [ %i.cr, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.bx

bb.bw:                                            ; preds = %.noexc128, %bb.bh, %bb.bf, %bb.bj, %bb.bm, %bb.be, %bb.bi, %bb.bl, %_ZN7testing15AssertionResultD2Ev.exit126, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.ar, %bb.ad, %bb.p
  %.pn38 = phi { ptr, i32 } [ %i.ft, %bb.bw ], [ %.pn34.pn.pn, %bb.bv ], [ %.pn30.pn.pn, %bb.ar ], [ %.pn26.pn.pn, %bb.ad ], [ %.pn.pn.pn, %bb.p ] ; 2 uses
  %i.fu = load ptr, ptr %5, align 8, !tbaa !868   ; 3 uses
  %.not.i.i.i130 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIiSaIiEED2Ev.exit131, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !870
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.fu to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef %i.fz) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit131

_ZNSt6vectorIiSaIiEED2Ev.exit131:                 ; preds = %bb.by, %bb.bx
  %.val62.pr = load i64, ptr %i.q, align 8, !tbaa !1505
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ga = icmp eq i64 %.val62.pr, 0
  br i1 %i.ga, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit132, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit131
  %.val61 = load ptr, ptr %4, align 8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi816EEEEEE16clear_and_deleteEPSF_PSB_(ptr noundef %.val61)
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit132

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit132: ; preds = %bb.bz, %_ZNSt6vectorIiSaIiEED2Ev.exit131, %_ZNSt6vectorIiSaIiEED2Ev.exit131.thread
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn38, %bb.bz ], [ %i.t, %_ZNSt6vectorIiSaIiEED2Ev.exit131.thread ], [ %.pn38, %_ZNSt6vectorIiSaIiEED2Ev.exit131 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %.val66 = load i64, ptr %i.o, align 8, !tbaa !1498
  %i.gb = icmp eq i64 %.val66, 0
  br i1 %i.gb, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi504EEEEEEEED2Ev.exit133, label %bb.ca

bb.ca:                                            ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS6_EEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit132
  %.val65 = load ptr, ptr %3, align 8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpISt4lessIS5_EEESaIS5_ESt17integral_constantIiLi504EEEEEE16clear_and_deleteEPSF_PSB_(ptr noundef %.val65)
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_161Btree_MovesComparisonsCopiesSwapsTrackingThreeWayCompare_Test8TestBodyEv:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef 32) #36
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i108, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
          to label %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit113 unwind label %bb.as

_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit113: ; preds = %bb.aq
  %i.cp = load i8, ptr %15, align 8, !tbaa !842, !range !843, !noundef !844
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.bc, label %bb.at

bb.ar:                                            ; preds = %_ZN7testing7MessageD2Ev.exit105, %bb.ae
  %.pn30.pn.pn = phi { ptr, i32 } [ %.pn30.pn, %_ZN7testing7MessageD2Ev.exit105 ], [ %i.bs, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.bx

bb.as:                                            ; preds = %bb.aq
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.at:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit113
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.au unwind label %bb.ay

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !845 ; 2 uses
  %.not.i.i114 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i114, label %_ZNK7testing15AssertionResult15failure_messageEv.exit115, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !810
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit115

_ZNK7testing15AssertionResult15failure_messageEv.exit115: ; preds = %bb.av, %bb.au
  %i.cv = phi ptr [ %i.cu, %bb.av ], [ @.str.192, %bb.au ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 1438, ptr noundef %i.cv)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit115
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ax unwind label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.cw = load ptr, ptr %16, align 8, !tbaa !827  ; 3 uses
  %.not.i.i116 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i116, label %_ZN7testing7MessageD2Ev.exit118, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117: ; preds = %bb.ax
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !816
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit118

_ZN7testing7MessageD2Ev.exit118:                  ; preds = %bb.ax, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.bc

bb.ay:                                            ; preds = %bb.at
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit121

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit115
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aw
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #37
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn34 = phi { ptr, i32 } [ %i.dc, %bb.ba ], [ %i.db, %bb.az ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.dd = load ptr, ptr %16, align 8, !tbaa !827  ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i119, label %_ZN7testing7MessageD2Ev.exit121, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120: ; preds = %bb.bb
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !816
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(128) %i.dd) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit121

_ZN7testing7MessageD2Ev.exit121:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120, %bb.bb, %bb.ay
  %.pn34.pn = phi { ptr, i32 } [ %i.da, %bb.ay ], [ %.pn34, %bb.bb ], [ %.pn34, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #37
  br label %bb.bv

bb.bc:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit113, %_ZN7testing7MessageD2Ev.exit118
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !845 ; 4 uses
  %.not.i.i122 = icmp eq ptr %i.di, null
  br i1 %.not.i.i122, label %_ZN7testing15AssertionResultD2Ev.exit126, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !810 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk
  br i1 %i.dl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123: ; preds = %bb.bd
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !813
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dn) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit126

_ZN7testing15AssertionResultD2Ev.exit126:         ; preds = %bb.bc, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  %.val47 = load ptr, ptr %5, align 8, !tbaa !869
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 10 uses
  %.val48 = load ptr, ptr %i.do, align 8, !tbaa !869
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi4ENS2_34MovableOnlyInstanceThreeWayCompareEEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 56540, i32 noundef 124221, ptr %.val47, ptr %.val48, ptr noundef %1, ptr noundef %2)
          to label %bb.be unwind label %bb.bw

bb.be:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit126
  %.val53 = load ptr, ptr %5, align 8, !tbaa !869
  %.val54 = load ptr, ptr %i.do, align 8, !tbaa !869
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi61ENS2_34MovableOnlyInstanceThreeWayCompareEEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 386718, i32 noundef 119816, ptr %.val53, ptr %.val54, ptr noundef %1, ptr noundef %3)
          to label %bb.bf unwind label %bb.bw

bb.bf:                                            ; preds = %bb.be
  %.val59 = load ptr, ptr %5, align 8, !tbaa !869
  %.val60 = load ptr, ptr %i.do, align 8, !tbaa !869
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi100ENS2_34MovableOnlyInstanceThreeWayCompareEEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 586761, i32 noundef 120319, ptr %.val59, ptr %.val60, ptr noundef %1, ptr noundef %4)
          to label %bb.bg unwind label %bb.bw

bb.bg:                                            ; preds = %bb.bf
  %i.dp = load ptr, ptr %5, align 8, !tbaa !869   ; 5 uses
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !869 ; 5 uses
  %.not.i.i127 = icmp eq ptr %i.dp, %i.dq
  br i1 %.not.i.i127, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 2
  %i.dv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = shl nuw nsw i64 %i.dv, 1
  %i.dx = xor i64 %i.dw, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.dp, ptr %i.dq, i64 noundef %i.dx)
          to label %.noexc128 unwind label %bb.bw

.noexc128:                                        ; preds = %bb.bh
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.dp, ptr %i.dq)
          to label %.noexc128._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge unwind label %bb.bw

.noexc128._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge: ; preds = %.noexc128
  %.val45.pre = load ptr, ptr %5, align 8, !tbaa !869
  %.val46.pre = load ptr, ptr %i.do, align 8, !tbaa !869
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.noexc128._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge, %bb.bg
  %.val46 = phi ptr [ %.val46.pre, %.noexc128._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge ], [ %i.dq, %bb.bg ]
  %.val45 = phi ptr [ %.val45.pre, %.noexc128._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit_crit_edge ], [ %i.dp, %bb.bg ]
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi4ENS2_34MovableOnlyInstanceThreeWayCompareEEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 24972, i32 noundef 85563, ptr %.val45, ptr %.val46, ptr noundef %1, ptr noundef %2)
          to label %bb.bi unwind label %bb.bw

bb.bi:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  %.val51 = load ptr, ptr %5, align 8, !tbaa !869
  %.val52 = load ptr, ptr %i.do, align 8, !tbaa !869
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi61ENS2_34MovableOnlyInstanceThreeWayCompareEEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 20208, i32 noundef 87757, ptr %.val51, ptr %.val52, ptr noundef %1, ptr noundef %3)
          to label %bb.bj unwind label %bb.bw

bb.bj:                                            ; preds = %bb.bi
  %.val57 = load ptr, ptr %5, align 8, !tbaa !869
  %.val58 = load ptr, ptr %i.do, align 8, !tbaa !869
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi100ENS2_34MovableOnlyInstanceThreeWayCompareEEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 20124, i32 noundef 96583, ptr %.val57, ptr %.val58, ptr noundef %1, ptr noundef %4)
          to label %bb.bk unwind label %bb.bw

bb.bk:                                            ; preds = %bb.bj
  %i.dy = load ptr, ptr %5, align 8, !tbaa !869   ; 10 uses
  %i.dz = load ptr, ptr %i.do, align 8, !tbaa !869 ; 6 uses
  %i.ea = icmp ne ptr %i.dy, %i.dz
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.dz, i64 -4 ; 5 uses
  %i.eb = icmp ult ptr %i.dy, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.bk
  %i.ec = ptrtoaddr ptr %i.dz to i64
  %18 = add i64 %i.ec, -8
  %19 = ptrtoaddr ptr %i.dy to i64                ; 3 uses
  %i.ed = add i64 %19, 4
  %i.ee = call i64 @llvm.umax.i64(i64 %18, i64 %i.ed)
  %i.ef = add i64 %i.ee, -4                       ; 2 uses
  %i.eg = icmp ne i64 %i.ef, %19
  %i.eh = zext i1 %i.eg to i64                    ; 3 uses
  %i.ei = add i64 %19, %i.eh
  %i.ej = sub i64 %i.ef, %i.ei                    ; 2 uses
  %i.ek = lshr i64 %i.ej, 3
  %i.el = add nuw nsw i64 %i.ek, %i.eh            ; 2 uses
  %i.em = add nuw nsw i64 %i.el, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.el, 31
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader175, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.en = lshr i64 %i.ej, 3
  %i.eo = add nuw nsw i64 %i.en, %i.eh
  %i.ep = shl nuw i64 %i.eo, 2                    ; 2 uses
  %i.eq = getelementptr i8, ptr %i.dy, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 4
  %i.es = sub nuw nsw i64 -4, %i.ep
  %i.et = getelementptr i8, ptr %i.dz, i64 %i.es
  %bound0 = icmp ult ptr %i.dy, %i.dz
  %bound1 = icmp ult ptr %i.et, %i.er
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader175, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.em, 9223372036854775804     ; 4 uses
  %i.eu = mul i64 %n.vec, -4
  %i.ev = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.eu
  %i.ew = shl i64 %n.vec, 2
  %i.ex = getelementptr i8, ptr %i.dy, i64 %i.ew
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ey = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.ey
  %i.ez = shl i64 %index, 2
  %next.gep171 = getelementptr i8, ptr %i.dy, i64 %i.ez ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep171, align 4, !tbaa !802, !alias.scope !10144, !noalias !10145
  %i.fa = getelementptr i8, ptr %next.gep, i64 -12 ; 2 uses
  %wide.load172 = load <4 x i32>, ptr %i.fa, align 4, !tbaa !802, !alias.scope !10145
  %reverse = shufflevector <4 x i32> %wide.load172, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep171, align 4, !tbaa !802, !alias.scope !10144, !noalias !10145
  %reverse173 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse173, ptr %i.fa, align 4, !tbaa !802, !alias.scope !10145
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !10139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.em, %n.vec
  br i1 %cmp.n, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %.lr.ph.i.i.preheader175

.lr.ph.i.i.preheader175:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %vector.memcheck ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ], [ %i.ev, %middle.block ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.dy, %vector.memcheck ], [ %i.dy, %.lr.ph.i.i.preheader ], [ %i.ex, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader175, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader175 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.fe, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader175 ] ; 3 uses
  %i.fc = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !802
  %i.fd = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !802
  store i32 %i.fd, ptr %.sroa.05.09.i.i, align 4, !tbaa !802
  store i32 %i.fc, ptr %.sroa.0.010.i.i, align 4, !tbaa !802
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.ff = icmp ult ptr %i.fe, %.sroa.0.0.i.i
  br i1 %i.ff, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, !llvm.loop !10140

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.bk
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi4ENS2_34MovableOnlyInstanceThreeWayCompareEEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 54949, i32 noundef 117532, ptr %i.dy, ptr %i.dz, ptr noundef %1, ptr noundef %2)
          to label %bb.bl unwind label %bb.bw

bb.bl:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  %.val49 = load ptr, ptr %5, align 8, !tbaa !869
  %.val50 = load ptr, ptr %i.do, align 8, !tbaa !869
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi61ENS2_34MovableOnlyInstanceThreeWayCompareEEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 338813, i32 noundef 108267, ptr %.val49, ptr %.val50, ptr noundef %1, ptr noundef %3)
          to label %bb.bm unwind label %bb.bw

bb.bm:                                            ; preds = %bb.bl
  %.val55 = load ptr, ptr %5, align 8, !tbaa !869
  %.val56 = load ptr, ptr %i.do, align 8, !tbaa !869
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_121ExpectOperationCountsINS2_13SizedBtreeSetINS0_13test_internal19MovableOnlyInstanceELi100ENS2_34MovableOnlyInstanceThreeWayCompareEEEEEviiRKSt6vectorIiSaIiEEPNS5_15InstanceTrackerEPT_(i32 noundef 534529, i32 noundef 115280, ptr %.val55, ptr %.val56, ptr noundef %1, ptr noundef %4)
          to label %bb.bn unwind label %bb.bw

bb.bn:                                            ; preds = %bb.bm
  %i.fg = load ptr, ptr %5, align 8, !tbaa !868   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !870
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.fg to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.fl) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bn, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %.val64 = load i64, ptr %i.q, align 8, !tbaa !1538
  %i.fm = icmp eq i64 %.val64, 0
  br i1 %i.fm, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.val63 = load ptr, ptr %4, align 8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE16clear_and_deleteEPSE_PSA_(ptr noundef %.val63)
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %.val68 = load i64, ptr %i.o, align 8, !tbaa !1531
  %i.fn = icmp eq i64 %.val68, 0
  br i1 %i.fn, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi504EEEEEEEED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit
  %.val67 = load ptr, ptr %3, align 8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE16clear_and_deleteEPSE_PSA_(ptr noundef %.val67)
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi504EEEEEEEED2Ev.exit

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi504EEEEEEEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  %.val72 = load i64, ptr %i.m, align 8, !tbaa !1524
  %i.fo = icmp eq i64 %.val72, 0
  br i1 %i.fo, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi48EEEEEEEED2Ev.exit, label %bb.br

bb.br:                                            ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi504EEEEEEEED2Ev.exit
  %.val71 = load ptr, ptr %2, align 8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi48EEEEEE16clear_and_deleteEPSE_PSA_(ptr noundef %.val71)
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi48EEEEEEEED2Ev.exit

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi48EEEEEEEED2Ev.exit: ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi504EEEEEEEED2Ev.exit, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  %i.fp = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !802
  %i.fq = load i32, ptr %1, align 4, !tbaa !1419
  %.not.i = icmp eq i32 %i.fp, %i.fq
  br i1 %.not.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi48EEEEEEEED2Ev.exit
  call void @abort() #39
  unreachable

bb.bt:                                            ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi48EEEEEEEED2Ev.exit
  %i.fr = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !802
  %i.fs = load i32, ptr %i.b, align 4, !tbaa !1420
  %.not1.i = icmp eq i32 %i.fr, %i.fs
  br i1 %.not1.i, label %_ZN4absl12lts_2026052613test_internal15InstanceTrackerD2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  call void @abort() #39
  unreachable

_ZN4absl12lts_2026052613test_internal15InstanceTrackerD2Ev.exit: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  ret void

bb.bv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit121, %bb.as
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %_ZN7testing7MessageD2Ev.exit121 ], [ %i.cr, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.bx

bb.bw:                                            ; preds = %.noexc128, %bb.bh, %bb.bf, %bb.bj, %bb.bm, %bb.be, %bb.bi, %bb.bl, %_ZN7testing15AssertionResultD2Ev.exit126, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.ar, %bb.ad, %bb.p
  %.pn38 = phi { ptr, i32 } [ %i.ft, %bb.bw ], [ %.pn34.pn.pn, %bb.bv ], [ %.pn30.pn.pn, %bb.ar ], [ %.pn26.pn.pn, %bb.ad ], [ %.pn.pn.pn, %bb.p ] ; 2 uses
  %i.fu = load ptr, ptr %5, align 8, !tbaa !868   ; 3 uses
  %.not.i.i.i130 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i130, label %_ZNSt6vectorIiSaIiEED2Ev.exit131, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !870
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.fu to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef %i.fz) #36
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit131

_ZNSt6vectorIiSaIiEED2Ev.exit131:                 ; preds = %bb.by, %bb.bx
  %.val62.pr = load i64, ptr %i.q, align 8, !tbaa !1538
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.ga = icmp eq i64 %.val62.pr, 0
  br i1 %i.ga, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit132, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit131
  %.val61 = load ptr, ptr %4, align 8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi816EEEEEE16clear_and_deleteEPSE_PSA_(ptr noundef %.val61)
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit132

_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit132: ; preds = %bb.bz, %_ZNSt6vectorIiSaIiEED2Ev.exit131, %_ZNSt6vectorIiSaIiEED2Ev.exit131.thread
  %.pn38.pn.pn = phi { ptr, i32 } [ %.pn38, %bb.bz ], [ %i.t, %_ZNSt6vectorIiSaIiEED2Ev.exit131.thread ], [ %.pn38, %_ZNSt6vectorIiSaIiEED2Ev.exit131 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  %.val66 = load i64, ptr %i.o, align 8, !tbaa !1531
  %i.gb = icmp eq i64 %.val66, 0
  br i1 %i.gb, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi504EEEEEEEED2Ev.exit133, label %bb.ca

bb.ca:                                            ; preds = %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS7_34MovableOnlyInstanceThreeWayCompareEEESaIS6_ESt17integral_constantIiLi816EEEEEEEED2Ev.exit132
  %.val65 = load ptr, ptr %3, align 8
  call fastcc void @_ZN4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implINS0_13test_internal19MovableOnlyInstanceEJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpINS6_34MovableOnlyInstanceThreeWayCompareEEESaIS5_ESt17integral_constantIiLi504EEEEEE16clear_and_deleteEPSE_PSA_(ptr noundef %.val65)
end_hunk_1
