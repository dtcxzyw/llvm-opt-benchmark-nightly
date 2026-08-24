Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_lowlevel_ivf?download=true
inline.NumInlined: 1639
inline.NumDeleted: 784
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN30TestLowLevelIVF_IVFBinary_Test8TestBodyEv:bb.a
          cleanup                                 ; 2 uses
  %i.ku = load ptr, ptr %4, align 8, !tbaa !87, !noalias !84 ; 2 uses
  %i.kv = icmp eq ptr %i.ku, %i.cl
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i: ; preds = %bb.bl
  %i.kw = load i64, ptr %i.cl, align 8, !tbaa !19, !noalias !84
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.kx) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i, %bb.bk
  %.pn.i277.i = phi { ptr, i32 } [ %i.ks, %bb.bk ], [ %i.kt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i ], [ %i.kt, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !84
  %i.ky = load ptr, ptr %3, align 8, !tbaa !87, !noalias !84 ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.cm
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i
  %i.la = load i64, ptr %i.cm, align 8, !tbaa !19, !noalias !84
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !84
  br label %.body279.i

.noexc196.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !84
  br label %_ZN7testing8internal8EqHelper7CompareIfiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i

_ZN7testing8internal8EqHelper7CompareIfiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i: ; preds = %.noexc196.i, %bb.bh
  %i.lc = load i8, ptr %8, align 8, !tbaa !91, !range !100, !noundef !101
  %i.ld = trunc nuw i8 %i.lc to i1
  br i1 %i.ld, label %bb.bx, label %bb.bo

bb.bm:                                            ; preds = %bb.bf
  %i.le = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bn:                                            ; preds = %bb.bi, %bb.bh
  %i.lf = landingpad { ptr, i32 }
          cleanup
  br label %.body279.i

bb.bo:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIfiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bp unwind label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.lg = load ptr, ptr %i.cn, align 8, !tbaa !102 ; 2 uses
  %.not.i.i197.i = icmp eq ptr %i.lg, null
  br i1 %.not.i.i197.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i

_ZNK7testing15AssertionResult15failure_messageEv.exit.i: ; preds = %bb.bq, %bb.bp
  %i.li = phi ptr [ %i.lh, %bb.bq ], [ @.str.29, %bb.bp ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 528, ptr noundef %i.li)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %bb.br
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.lj = load ptr, ptr %9, align 8, !tbaa !103   ; 3 uses
  %.not.i.i198.i = icmp eq ptr %i.lj, null
  br i1 %.not.i.i198.i, label %_ZN7testing7MessageD2Ev.exit.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.bs
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !22
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8
  call void %i.lm(ptr noundef nonnull align 8 dereferenceable(128) %i.lj) #19, !inline_history !105
  br label %_ZN7testing7MessageD2Ev.exit.i

_ZN7testing7MessageD2Ev.exit.i:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.bx

bb.bt:                                            ; preds = %bb.bo
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit201.i

bb.bu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bv:                                            ; preds = %bb.br
  %i.lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #19
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %.pn110.i = phi { ptr, i32 } [ %i.lp, %bb.bv ], [ %i.lo, %bb.bu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.lq = load ptr, ptr %9, align 8, !tbaa !103   ; 3 uses
  %.not.i.i199.i = icmp eq ptr %i.lq, null
  br i1 %.not.i.i199.i, label %_ZN7testing7MessageD2Ev.exit201.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200.i: ; preds = %bb.bw
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !22
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8
  call void %i.lt(ptr noundef nonnull align 8 dereferenceable(128) %i.lq) #19, !inline_history !105
  br label %_ZN7testing7MessageD2Ev.exit201.i

_ZN7testing7MessageD2Ev.exit201.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200.i, %bb.bw, %bb.bt
  %.pn110.pn.i = phi { ptr, i32 } [ %i.ln, %bb.bt ], [ %.pn110.i, %bb.bw ], [ %.pn110.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #19
  br label %.body279.i

bb.bx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit.i, %_ZN7testing8internal8EqHelper7CompareIfiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i
  %i.lu = load ptr, ptr %i.cn, align 8, !tbaa !102 ; 4 uses
  %.not.i.i202.i = icmp eq ptr %i.lu, null
  br i1 %.not.i.i202.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !87 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 2 uses
  %i.lx = icmp eq ptr %i.lv, %i.lw
  br i1 %i.lx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.by
  %i.ly = load i64, ptr %i.lw, align 8, !tbaa !19
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lv, i64 noundef %i.lz) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef 32) #20
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ma = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62
  %i.mb = sext i32 %i.ma to i64
  %i.mc = icmp slt i64 %indvars.iv.next.i, %i.mb
  br i1 %i.mc, label %.lr.ph.i, label %.critedge.i, !llvm.loop !106

.body279.i:                                       ; preds = %_ZN7testing7MessageD2Ev.exit201.i, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i
  %.pn110.pn.pn.i = phi { ptr, i32 } [ %.pn110.pn.i, %_ZN7testing7MessageD2Ev.exit201.i ], [ %i.lf, %bb.bn ], [ %.pn.i277.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.ca

bb.ca:                                            ; preds = %.body279.i, %bb.bm
  %.pn110.pn.pn.pn.i = phi { ptr, i32 } [ %.pn110.pn.pn.i, %.body279.i ], [ %i.le, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit194.i

.critedge.i:                                      ; preds = %bb.bz, %.lr.ph.i, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit.i, %bb.as
  %indvars.iv.next592.i = add nuw nsw i64 %indvars.iv591.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next592.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.as, !llvm.loop !107

._crit_edge359.i:                                 ; preds = %bb.ed, %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit.i
  %.not.i.i.i203.i = icmp eq ptr %.sroa.013.0.i, null
  br i1 %.not.i.i.i203.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit204.i, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge359.i
  %i.md = ptrtoint ptr %.sroa.013.0.i to i64
  %i.me = sub i64 %.sroa.15.0.i, %i.md
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.013.0.i, i64 noundef %i.me) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit204.i

_ZNSt6vectorIiSaIiEED2Ev.exit204.i:               ; preds = %bb.cb, %._crit_edge359.i
  %.not.i.i.i205.i = icmp eq ptr %.sroa.024.0688708.i, null
  br i1 %.not.i.i.i205.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit206.i, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit204.i
  %i.mf = ptrtoint ptr %.sroa.024.0688708.i to i64
  %i.mg = sub i64 %.sroa.13.0703707.i, %i.mf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.024.0688708.i, i64 noundef %i.mg) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit206.i

_ZNSt6vectorIlSaIlEED2Ev.exit206.i:               ; preds = %bb.cc, %_ZNSt6vectorIiSaIiEED2Ev.exit204.i
  %i.mh = add nuw nsw i64 %.055360.i, 1           ; 2 uses
  %exitcond602.not.i = icmp eq i64 %i.mh, 200
  br i1 %exitcond602.not.i, label %_ZNSt10unique_ptrIN5faiss25BinaryInvertedListScannerESt14default_deleteIS1_EED2Ev.exit.i, label %bb.ai, !llvm.loop !108

bb.cd:                                            ; preds = %bb.ed, %.lr.ph358.i
  %indvars.iv599.i = phi i64 [ 0, %.lr.ph358.i ], [ %indvars.iv.next600.i, %bb.ed ] ; 3 uses
  %i.mi = phi i32 [ %i.ev, %.lr.ph358.i ], [ %i.ra, %bb.ed ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.013.0.i, i64 %indvars.iv599.i ; 5 uses
  %20 = sext i32 %i.mi to i64
  %i.mk = mul nsw i64 %i.ho, %20
  %i.ml = getelementptr [4 x i8], ptr %.sroa.053.0.i, i64 %i.mk
  %i.mm = getelementptr i8, ptr %i.ml, i64 -4     ; 2 uses
  %i.mn = load i32, ptr %i.mj, align 4, !tbaa !62, !noalias !109
  %i.mo = load i32, ptr %i.mm, align 4, !tbaa !62, !noalias !109
  %.not.i207.i = icmp sgt i32 %i.mn, %i.mo
  br i1 %.not.i207.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i unwind label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.85, ptr noundef nonnull align 4 dereferenceable(4) %i.mj, ptr noundef nonnull align 4 dereferenceable(4) %i.mm, ptr noundef nonnull @.str.89)
          to label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i unwind label %bb.cg

_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i: ; preds = %bb.cf, %bb.ce
  %i.mp = load i8, ptr %11, align 8, !tbaa !91, !range !100, !noundef !101
  %i.mq = trunc nuw i8 %i.mp to i1
  br i1 %i.mq, label %bb.cq, label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit194.thread.i

bb.ch:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ci unwind label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.ms = load ptr, ptr %i.co, align 8, !tbaa !102 ; 2 uses
  %.not.i.i210.i = icmp eq ptr %i.ms, null
  br i1 %.not.i.i210.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit211.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit211.i

_ZNK7testing15AssertionResult15failure_messageEv.exit211.i: ; preds = %bb.cj, %bb.ci
  %i.mu = phi ptr [ %i.mt, %bb.cj ], [ @.str.29, %bb.ci ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 541, ptr noundef %i.mu)
          to label %bb.ck unwind label %bb.cn

bb.ck:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit211.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.cl unwind label %bb.co

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.mv = load ptr, ptr %12, align 8, !tbaa !103  ; 3 uses
  %.not.i.i212.i = icmp eq ptr %i.mv, null
  br i1 %.not.i.i212.i, label %_ZN7testing7MessageD2Ev.exit214.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213.i: ; preds = %bb.cl
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !22
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(128) %i.mv) #19, !inline_history !105
  br label %_ZN7testing7MessageD2Ev.exit214.i

_ZN7testing7MessageD2Ev.exit214.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213.i, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.cq

bb.cm:                                            ; preds = %bb.ch
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit217.i

bb.cn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit211.i
  %i.na = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.ck
  %i.nb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #19
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pn.i = phi { ptr, i32 } [ %i.nb, %bb.co ], [ %i.na, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %i.nc = load ptr, ptr %12, align 8, !tbaa !103  ; 3 uses
  %.not.i.i215.i = icmp eq ptr %i.nc, null
  br i1 %.not.i.i215.i, label %_ZN7testing7MessageD2Ev.exit217.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216.i: ; preds = %bb.cp
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !22
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8
  call void %i.nf(ptr noundef nonnull align 8 dereferenceable(128) %i.nc) #19, !inline_history !105
  br label %_ZN7testing7MessageD2Ev.exit217.i

_ZN7testing7MessageD2Ev.exit217.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216.i, %bb.cp, %bb.cm
  %.pn.pn.i = phi { ptr, i32 } [ %i.mz, %bb.cm ], [ %.pn.i, %bb.cp ], [ %.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #19
  br label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit194.thread.i

bb.cq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit214.i, %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i
  %i.ng = load ptr, ptr %i.co, align 8, !tbaa !102 ; 4 uses
  %.not.i.i218.i = icmp eq ptr %i.ng, null
  br i1 %.not.i.i218.i, label %_ZN7testing15AssertionResultD2Ev.exit222.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !87 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 16 ; 2 uses
  %i.nj = icmp eq ptr %i.nh, %i.ni
  br i1 %i.nj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219.i: ; preds = %bb.cr
  %i.nk = load i64, ptr %i.ni, align 8, !tbaa !19
  %i.nl = add i64 %i.nk, 1
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nl) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220.i: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit222.i

_ZN7testing15AssertionResultD2Ev.exit222.i:       ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220.i, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.nm = load i32, ptr %i.mj, align 4, !tbaa !62
  %i.nn = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62 ; 5 uses
  %i.no = sext i32 %i.nn to i64                   ; 3 uses
  %i.np = mul nsw i64 %i.ho, %i.no
  %i.nq = getelementptr [4 x i8], ptr %.sroa.053.0.i, i64 %i.np
  %i.nr = getelementptr i8, ptr %i.nq, i64 -4
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !62
  %i.nt = icmp slt i32 %i.nm, %i.ns
  br i1 %i.nt, label %bb.cs, label %bb.ed

bb.cs:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit222.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.nu = icmp sgt i32 %i.nn, 0
  br i1 %i.nu, label %.lr.ph355.i, label %._crit_edge356.i

.lr.ph355.i:                                      ; preds = %bb.cs
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.024.0688708.i, i64 %indvars.iv599.i
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !63
  %i.nx = mul nuw nsw i64 %.055360.i, %i.no
  %i.ny = getelementptr [8 x i8], ptr %.sroa.063.0677685.i, i64 %i.nx
  %wide.trip.count597.i = zext nneg i32 %i.nn to i64
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cu, %.lr.ph355.i
  %indvars.iv594.i = phi i64 [ 0, %.lr.ph355.i ], [ %indvars.iv.next595.i, %bb.cu ] ; 3 uses
  %i.nz = getelementptr [8 x i8], ptr %i.ny, i64 %indvars.iv594.i
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !63
  %i.ob = icmp eq i64 %i.nw, %i.oa
  br i1 %i.ob, label %bb.cv, label %bb.cu

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit194.thread.i: ; preds = %_ZN7testing7MessageD2Ev.exit217.i, %bb.cg
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %_ZN7testing7MessageD2Ev.exit217.i ], [ %i.mr, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ee

bb.cu:                                            ; preds = %bb.ct
  %indvars.iv.next595.i = add nuw nsw i64 %indvars.iv594.i, 1 ; 2 uses
  %exitcond598.not.i = icmp eq i64 %indvars.iv.next595.i, %wide.trip.count597.i
  br i1 %exitcond598.not.i, label %._crit_edge356.i, label %bb.ct, !llvm.loop !112

bb.cv:                                            ; preds = %bb.ct
  %i.oc = trunc nuw nsw i64 %indvars.iv594.i to i32
  store i32 %i.oc, ptr %i.b, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14)
          to label %_ZN7testing8internal11CmpHelperLTIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i unwind label %bb.cw

._crit_edge356.i:                                 ; preds = %bb.cu, %bb.cs
  %storemerge.lcssa.i = phi i32 [ 0, %bb.cs ], [ %i.nn, %bb.cu ]
  store i32 %storemerge.lcssa.i, ptr %i.b, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) @_ZN12_GLOBAL__N_11kE, ptr noundef nonnull @.str.18)
          to label %_ZN7testing8internal11CmpHelperLTIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i unwind label %bb.cw

_ZN7testing8internal11CmpHelperLTIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i: ; preds = %._crit_edge356.i, %bb.cv
  %i.od = load i8, ptr %14, align 8, !tbaa !91, !range !100, !noundef !101
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %bb.dg, label %bb.cx

bb.cw:                                            ; preds = %._crit_edge356.i, %bb.cv
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

bb.cx:                                            ; preds = %_ZN7testing8internal11CmpHelperLTIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.cy unwind label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.og = load ptr, ptr %i.cp, align 8, !tbaa !102 ; 2 uses
  %.not.i.i225.i = icmp eq ptr %i.og, null
  br i1 %.not.i.i225.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit226.i, label %bb.cz
end_hunk_0
begin_hunk_1_@_ZN35TestLowLevelIVF_ThreadedSearch_Test8TestBodyEv:bb.a

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i:        ; preds = %bb.ba
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.kb
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !63
  %i.km = fcmp oeq float %i.ke, %i.kg
  %i.kn = icmp sgt i64 %i.kl, %i.ki
  %i.ko = and i1 %i.km, %i.kn
  br i1 %i.ko, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i, label %bb.bb

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i, %bb.ba, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i.i
  %i.kp = phi float [ %.pre.i.i.i.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i.i.i.i ], [ %i.ke, %bb.ba ], [ %i.ke, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i ] ; 3 uses
  %i.kq = fcmp ogt float %i.jw, %i.kp
  br i1 %i.kq, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i:      ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.kb
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !63 ; 2 uses
  %i.kt = fcmp oeq float %i.jw, %i.kp
  %i.ku = icmp sgt i64 %i.jy, %i.ks
  %i.kv = and i1 %i.kt, %i.ku
  br i1 %i.kv, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %bb.bc

bb.bb:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i.i.i.i
  %i.kw = fcmp ogt float %i.jw, %i.kg
  br i1 %i.kw, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i:      ; preds = %bb.bb
  %i.kx = fcmp oeq float %i.jw, %i.kg
  %i.ky = icmp sgt i64 %i.jy, %i.ki
  %i.kz = and i1 %i.kx, %i.ky
  br i1 %i.kz, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i
  %.sink79.i.i.i.i = phi float [ %i.kp, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i ], [ %i.kg, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.ks, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i ], [ %i.ki, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i ]
  %.1.i.i.i.i = phi i64 [ %i.kb, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i ], [ %i.ka, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i ] ; 3 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %.062.i.i.i.i
  store float %.sink79.i.i.i.i, ptr %i.la, align 4, !tbaa !78
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %.062.i.i.i.i
  store i64 %.sink.i.i.i.i, ptr %i.lb, align 8, !tbaa !63
  %i.lc = shl i64 %.1.i.i.i.i, 1                  ; 3 uses
  %i.ld = or disjoint i64 %i.lc, 1
  %i.le = icmp ugt i64 %i.lc, %i.ju
  br i1 %i.le, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !182

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i: ; preds = %bb.bc, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i, %bb.bb, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i
  %.0.lcssa.ph.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.bc ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i.i.i ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i.i.i ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i.i.i ], [ %.062.i.i.i.i, %bb.bb ]
  %.pre68.i.i.i.i = load float, ptr %i.jv, align 4, !tbaa !78
  %.pre69.i.i.i.i = load i64, ptr %i.jx, align 8, !tbaa !63
  br label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i

_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i, %bb.az
  %i.lf = phi i64 [ %i.jy, %bb.az ], [ %.pre69.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i ]
  %i.lg = phi float [ %i.jw, %bb.az ], [ %.pre68.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ 1, %bb.az ], [ %.0.lcssa.ph.i.i.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i.i.i ] ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %.0.lcssa.i.i.i.i
  store float %i.lg, ptr %i.lh, align 4, !tbaa !78
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %.0.lcssa.i.i.i.i
  store i64 %i.lf, ptr %i.li, align 8, !tbaa !63
  %i.lj = xor i64 %.041.i.i.i, -1
  %i.lk = add i64 %i.lj, %i.jn                    ; 2 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.lk
  store float %i.js, ptr %i.ll, align 4, !tbaa !78
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.lk
  store i64 %i.jt, ptr %i.lm, align 8, !tbaa !63
  %.not.i.i131.i = icmp ne i64 %i.jt, -1
  %i.ln = zext i1 %.not.i.i131.i to i64
  %spec.select.i.i.i = add i64 %.041.i.i.i, %i.ln ; 2 uses
  %i.lo = add nuw i64 %.03740.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.lo, %i.jn
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.az, !llvm.loop !183

._crit_edge.i.i.i:                                ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i, %bb.ay
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.ay ], [ %spec.select.i.i.i, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i ] ; 8 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jn
  %i.lq = sub i64 0, %.0.lcssa.i.i.i              ; 2 uses
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.lp, i64 %i.lq
  %i.ls = shl i64 %.0.lcssa.i.i.i, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.jo, ptr align 4 %i.lr, i64 %i.ls, i1 false)
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jn
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.lq
  %i.lv = shl i64 %.0.lcssa.i.i.i, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.jp, ptr align 8 %i.lu, i64 %i.lv, i1 false)
  %i.lw = icmp ult i64 %.0.lcssa.i.i.i, %i.jn
  br i1 %i.lw, label %.lr.ph44.i.i.i.preheader, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i

.lr.ph44.i.i.i.preheader:                         ; preds = %._crit_edge.i.i.i
  %i.lx = sub nuw i64 %i.jn, %.0.lcssa.i.i.i      ; 3 uses
  %min.iters.check = icmp ult i64 %i.lx, 4
  br i1 %min.iters.check, label %.lr.ph44.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.i.i.preheader
  %n.vec = and i64 %i.lx, -4                      ; 3 uses
  %i.ly = add i64 %.0.lcssa.i.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lz = add nuw i64 %.0.lcssa.i.i.i, %index     ; 2 uses
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.lz ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ma, align 4, !tbaa !78
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.mb, align 4, !tbaa !78
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.lz ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.mc, align 8, !tbaa !63
  store <2 x i64> splat (i64 -1), ptr %i.md, align 8, !tbaa !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.me = icmp eq i64 %index.next, %n.vec
  br i1 %i.me, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lx, %n.vec
  br i1 %cmp.n, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i, label %.lr.ph44.i.i.i.preheader121

.lr.ph44.i.i.i.preheader121:                      ; preds = %.lr.ph44.i.i.i.preheader, %middle.block
  %.242.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i, %.lr.ph44.i.i.i.preheader ], [ %i.ly, %middle.block ]
  br label %.lr.ph44.i.i.i

.lr.ph44.i.i.i:                                   ; preds = %.lr.ph44.i.i.i.preheader121, %.lr.ph44.i.i.i
  %.242.i.i.i = phi i64 [ %i.mh, %.lr.ph44.i.i.i ], [ %.242.i.i.i.ph, %.lr.ph44.i.i.i.preheader121 ] ; 3 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %.242.i.i.i
  store float f0x7F7FFFFF, ptr %i.mf, align 4, !tbaa !78
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %.242.i.i.i
  store i64 -1, ptr %i.mg, align 8, !tbaa !63
  %i.mh = add nuw i64 %.242.i.i.i, 1              ; 2 uses
  %exitcond47.not.i.i.i = icmp eq i64 %i.mh, %i.jn
  br i1 %exitcond47.not.i.i.i, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i, label %.lr.ph44.i.i.i, !llvm.loop !185

_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i:     ; preds = %.lr.ph44.i.i.i, %middle.block, %._crit_edge.i.i.i
  %i.mi = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62 ; 2 uses
  %i.mj = icmp sgt i32 %i.mi, 0
  br i1 %i.mj, label %.lr.ph.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.1:      ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i
  %.05.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.1 = load i64, ptr %.05.i.i.i.i.ptr.1, align 8, !tbaa !63
  %.not.i.i.i.i.i.i.i.1 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.1, 0
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.2, label %bb.bd

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.2:      ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.1
  %.05.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.2 = load i64, ptr %.05.i.i.i.i.ptr.2, align 8, !tbaa !63
  %.not.i.i.i.i.i.i.i.2 = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.2, 0
  br i1 %.not.i.i.i.i.i.i.i.2, label %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i, label %bb.bd

_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i:        ; preds = %_ZN7testing15AssertionResultD2Ev.exit.i, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ff, align 8, !tbaa !63
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.1, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.2, %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.1, %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i
  call void @_ZSt9terminatev() #23
  unreachable

_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6threadEvPT_.exit.i.i.i.i.2
  %i.mk = load ptr, ptr %i.bd, align 8, !tbaa !166
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.ff to i64
  %i.mn = sub i64 %i.ml, %i.mm
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.mn) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.mo = load ptr, ptr %11, align 8, !tbaa !124  ; 3 uses
  %.not.i.i.i133.i = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i133.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit134.i, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.mp = load ptr, ptr %i.ba, align 8, !tbaa !142
  %i.mq = ptrtoint ptr %i.mp to i64
  %i.mr = ptrtoint ptr %i.mo to i64
  %i.ms = sub i64 %i.mq, %i.mr
  call void @_ZdlPvm(ptr noundef nonnull %i.mo, i64 noundef %i.ms) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit134.i

_ZNSt6vectorIfSaIfEED2Ev.exit134.i:               ; preds = %bb.be, %_ZSt8_DestroyIPSt6threadS0_EvT_S2_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.mt = load ptr, ptr %10, align 8, !tbaa !139  ; 3 uses
  %.not.i.i.i135.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i135.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit136.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit134.i
  %i.mu = load ptr, ptr %i.ay, align 8, !tbaa !140
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.mt to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %i.mt, i64 noundef %i.mx) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit136.i

_ZNSt6vectorIlSaIlEED2Ev.exit136.i:               ; preds = %bb.bf, %_ZNSt6vectorIfSaIfEED2Ev.exit134.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  %i.my = add nuw nsw i64 %.04775.i, 1            ; 2 uses
  %exitcond87.not.i = icmp eq i64 %i.my, 200
  br i1 %exitcond87.not.i, label %bb.t, label %bb.ad, !llvm.loop !186

.lr.ph.i:                                         ; preds = %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i, %_ZN7testing15AssertionResultD2Ev.exit.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %_ZN7testing15AssertionResultD2Ev.exit.i ], [ 0, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i ] ; 3 uses
  %i.mz = phi i32 [ %i.oy, %_ZN7testing15AssertionResultD2Ev.exit.i ], [ %i.mi, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.na = load ptr, ptr %10, align 8, !tbaa !139
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %indvars.iv84.i ; 2 uses
  %16 = sext i32 %i.mz to i64
  %i.nc = mul nsw i64 %.04775.i, %16
  %i.nd = load ptr, ptr %7, align 8, !tbaa !139
  %i.ne = getelementptr [8 x i8], ptr %i.nd, i64 %i.nc
  %i.nf = getelementptr [8 x i8], ptr %i.ne, i64 %indvars.iv84.i ; 2 uses
  %i.ng = load i64, ptr %i.nb, align 8, !tbaa !63, !noalias !187
  %i.nh = load i64, ptr %i.nf, align 8, !tbaa !63, !noalias !187
  %i.ni = icmp eq i64 %i.ng, %i.nh
  br i1 %i.ni, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13)
          to label %_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i unwind label %bb.bl

bb.bh:                                            ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19, !noalias !192
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.nb)
          to label %.noexc168.i unwind label %bb.bl

.noexc168.i:                                      ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !192
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.nf)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i unwind label %bb.bj, !noalias !192

_ZN7testing8internal33FormatForComparisonFailureMessageIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i: ; preds = %.noexc168.i
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i
  %i.nj = load ptr, ptr %2, align 8, !tbaa !87, !noalias !192 ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.be
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bi
  %i.nl = load i64, ptr %i.be, align 8, !tbaa !19, !noalias !192
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !192
  %i.nn = load ptr, ptr %1, align 8, !tbaa !87, !noalias !192 ; 2 uses
  %i.no = icmp eq ptr %i.nn, %i.bf
  br i1 %i.no, label %.noexc138.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.np = load i64, ptr %i.bf, align 8, !tbaa !19, !noalias !192
  %i.nq = add i64 %i.np, 1
  call void @_ZdlPvm(ptr noundef %i.nn, i64 noundef %i.nq) #20
  br label %.noexc138.i

bb.bj:                                            ; preds = %.noexc168.i
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

bb.bk:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIllEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i.i
  %i.ns = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nt = load ptr, ptr %2, align 8, !tbaa !87, !noalias !192 ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.be
  br i1 %i.nu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i: ; preds = %bb.bk
  %i.nv = load i64, ptr %i.be, align 8, !tbaa !19, !noalias !192
  %i.nw = add i64 %i.nv, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i, %bb.bj
  %.pn.i.i = phi { ptr, i32 } [ %i.nr, %bb.bj ], [ %i.ns, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i ], [ %i.ns, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !192
  %i.nx = load ptr, ptr %1, align 8, !tbaa !87, !noalias !192 ; 2 uses
  %i.ny = icmp eq ptr %i.nx, %i.bf
  br i1 %i.ny, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i
  %i.nz = load i64, ptr %i.bf, align 8, !tbaa !19, !noalias !192
  %i.oa = add i64 %i.nz, 1
  call void @_ZdlPvm(ptr noundef %i.nx, i64 noundef %i.oa) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19, !noalias !192
  br label %.body169.i

.noexc138.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19, !noalias !192
  br label %_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i

_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i: ; preds = %.noexc138.i, %bb.bg
  %i.ob = load i8, ptr %13, align 8, !tbaa !91, !range !100, !noundef !101
  %i.oc = trunc nuw i8 %i.ob to i1
  br i1 %i.oc, label %bb.bv, label %bb.bm

bb.bl:                                            ; preds = %bb.bh, %bb.bg
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %.body169.i

bb.bm:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bn unwind label %bb.br

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.oe = load ptr, ptr %i.bg, align 8, !tbaa !102 ; 2 uses
  %.not.i.i139.i = icmp eq ptr %i.oe, null
  br i1 %.not.i.i139.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit.i

_ZNK7testing15AssertionResult15failure_messageEv.exit.i: ; preds = %bb.bo, %bb.bn
  %i.og = phi ptr [ %i.of, %bb.bo ], [ @.str.29, %bb.bn ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 711, ptr noundef %i.og)
          to label %bb.bp unwind label %bb.bs

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.oh = load ptr, ptr %14, align 8, !tbaa !103  ; 3 uses
  %.not.i.i140.i = icmp eq ptr %i.oh, null
  br i1 %.not.i.i140.i, label %_ZN7testing7MessageD2Ev.exit.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.bq
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !22
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8
  call void %i.ok(ptr noundef nonnull align 8 dereferenceable(128) %i.oh) #19, !inline_history !195
  br label %_ZN7testing7MessageD2Ev.exit.i

_ZN7testing7MessageD2Ev.exit.i:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.bv

bb.br:                                            ; preds = %bb.bm
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit143.i

bb.bs:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit.i
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bp
  %i.on = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #19
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.pn.i = phi { ptr, i32 } [ %i.on, %bb.bt ], [ %i.om, %bb.bs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.oo = load ptr, ptr %14, align 8, !tbaa !103  ; 3 uses
  %.not.i.i141.i = icmp eq ptr %i.oo, null
  br i1 %.not.i.i141.i, label %_ZN7testing7MessageD2Ev.exit143.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142.i: ; preds = %bb.bu
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !22
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load ptr, ptr %i.oq, align 8
  call void %i.or(ptr noundef nonnull align 8 dereferenceable(128) %i.oo) #19, !inline_history !195
  br label %_ZN7testing7MessageD2Ev.exit143.i

_ZN7testing7MessageD2Ev.exit143.i:                ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142.i, %bb.bu, %bb.br
  %.pn.pn.i = phi { ptr, i32 } [ %i.ol, %bb.br ], [ %.pn.i, %bb.bu ], [ %.pn.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #19
  br label %.body169.i

bb.bv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit.i, %_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit.i
  %i.os = load ptr, ptr %i.bg, align 8, !tbaa !102 ; 4 uses
  %.not.i.i144.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i144.i, label %_ZN7testing15AssertionResultD2Ev.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !87 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 16 ; 2 uses
  %i.ov = icmp eq ptr %i.ot, %i.ou
  br i1 %i.ov, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.bw
  %i.ow = load i64, ptr %i.ou, align 8, !tbaa !19
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ox) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.os, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit.i

_ZN7testing15AssertionResultD2Ev.exit.i:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_128test_get_InvertedListScannerEPN5faiss8IndexIVFEPKNS0_17IndexPreTransformESt6vectorIhSaIhEESt10unique_ptrINS0_19InvertedListScannerESt14default_deleteISA_EES6_IfSaIfEES6_IlSaIlEESF_NS0_10MetricTypeEbf:bb.a
  br i1 %.not46.i.i156, label %._crit_edge.i.i172, label %.lr.ph.i.i157

.lr.ph.i.i157:                                    ; preds = %bb.be
  %i.iu = getelementptr inbounds i8, ptr %.sroa.0236.0, i64 -4 ; 4 uses
  %i.iv = getelementptr inbounds i8, ptr %.sroa.0246.0676690, i64 -8 ; 5 uses
  br label %bb.bf

bb.bf:                                            ; preds = %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, %.lr.ph.i.i157
  %.041.i.i158 = phi i64 [ 0, %.lr.ph.i.i157 ], [ %spec.select.i.i170, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ] ; 2 uses
  %.03740.i.i159 = phi i64 [ 0, %.lr.ph.i.i157 ], [ %i.ks, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ] ; 2 uses
  %i.iw = load float, ptr %.sroa.0236.0, align 4, !tbaa !78
  %i.ix = load i64, ptr %.sroa.0246.0676690, align 8, !tbaa !63 ; 2 uses
  %i.iy = sub nuw i64 %i.ck, %.03740.i.i159       ; 5 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.iy ; 3 uses
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !78 ; 5 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.iy ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !63 ; 3 uses
  %i.jd = icmp ult i64 %i.iy, 2
  br i1 %i.jd, label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, label %.lr.ph.i.i.i160

.lr.ph.i.i.i160:                                  ; preds = %bb.bf, %bb.bi
  %i.je = phi i64 [ %i.kh, %bb.bi ], [ 3, %bb.bf ]
  %i.jf = phi i64 [ %i.kg, %bb.bi ], [ 2, %bb.bf ] ; 7 uses
  %.062.i.i.i161 = phi i64 [ %.1.i.i.i164, %bb.bi ], [ 1, %bb.bf ] ; 6 uses
  %i.jg = icmp eq i64 %i.jf, %i.iy
  br i1 %i.jg, label %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i, label %bb.bg

.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i: ; preds = %.lr.ph.i.i.i160
  %.pre.i.i.i177 = load float, ptr %i.iz, align 4, !tbaa !78
  br label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i

bb.bg:                                            ; preds = %.lr.ph.i.i.i160
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.jf
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !78 ; 4 uses
  %i.jj = getelementptr [4 x i8], ptr %.sroa.0236.0, i64 %i.jf
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !78 ; 5 uses
  %i.jl = getelementptr [8 x i8], ptr %.sroa.0246.0676690, i64 %i.jf
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !63 ; 3 uses
  %i.jn = fcmp olt float %i.ji, %i.jk
  br i1 %i.jn, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i:          ; preds = %bb.bg
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.jf
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !63
  %i.jq = fcmp oeq float %i.ji, %i.jk
  %i.jr = icmp slt i64 %i.jp, %i.jm
  %i.js = and i1 %i.jq, %i.jr
  br i1 %i.js, label %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i, label %bb.bh

_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i:   ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i, %bb.bg, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i
  %i.jt = phi float [ %.pre.i.i.i177, %.lr.ph._ZN5faiss4CMinIflE4cmp2Effll.exit.thread_crit_edge.i.i.i ], [ %i.ji, %bb.bg ], [ %i.ji, %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i ] ; 3 uses
  %i.ju = fcmp olt float %i.ja, %i.jt
  br i1 %i.ju, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i:        ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.jf
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !63 ; 2 uses
  %i.jx = fcmp oeq float %i.ja, %i.jt
  %i.jy = icmp slt i64 %i.jc, %i.jw
  %i.jz = and i1 %i.jx, %i.jy
  br i1 %i.jz, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %bb.bi

bb.bh:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit.i.i.i
  %i.ka = fcmp olt float %i.ja, %i.jk
  br i1 %i.ka, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i

_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i:        ; preds = %bb.bh
  %i.kb = fcmp oeq float %i.ja, %i.jk
  %i.kc = icmp slt i64 %i.jc, %i.jm
  %i.kd = and i1 %i.kb, %i.kc
  br i1 %i.kd, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i
  %.sink79.i.i.i162 = phi float [ %i.jt, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %i.jk, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ]
  %.sink.i.i.i163 = phi i64 [ %i.jw, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %i.jm, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ]
  %.1.i.i.i164 = phi i64 [ %i.jf, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %i.je, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %.062.i.i.i161
  store float %.sink79.i.i.i162, ptr %i.ke, align 4, !tbaa !78
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.062.i.i.i161
  store i64 %.sink.i.i.i163, ptr %i.kf, align 8, !tbaa !63
  %i.kg = shl i64 %.1.i.i.i164, 1                 ; 3 uses
  %i.kh = or disjoint i64 %i.kg, 1
  %i.ki = icmp ugt i64 %i.kg, %i.iy
  br i1 %i.ki, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, label %.lr.ph.i.i.i160, !llvm.loop !259

_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i: ; preds = %bb.bi, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i, %bb.bh, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i
  %.0.lcssa.ph.i.i.i165 = phi i64 [ %.1.i.i.i164, %bb.bi ], [ %.062.i.i.i161, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i.i ], [ %.062.i.i.i161, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i.i ], [ %.062.i.i.i161, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i.i ], [ %.062.i.i.i161, %bb.bh ]
  %.pre68.i.i.i166 = load float, ptr %i.iz, align 4, !tbaa !78
  %.pre69.i.i.i167 = load i64, ptr %i.jb, align 8, !tbaa !63
  br label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i

_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i, %bb.bf
  %i.kj = phi i64 [ %i.jc, %bb.bf ], [ %.pre69.i.i.i167, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %i.kk = phi float [ %i.ja, %bb.bf ], [ %.pre68.i.i.i166, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ]
  %.0.lcssa.i.i.i168 = phi i64 [ 1, %bb.bf ], [ %.0.lcssa.ph.i.i.i165, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i.i ] ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %.0.lcssa.i.i.i168
  store float %i.kk, ptr %i.kl, align 4, !tbaa !78
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.0.lcssa.i.i.i168
  store i64 %i.kj, ptr %i.km, align 8, !tbaa !63
  %i.kn = xor i64 %.041.i.i158, -1
  %i.ko = add i64 %i.kn, %i.ck                    ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0236.0, i64 %i.ko
  store float %i.iw, ptr %i.kp, align 4, !tbaa !78
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.0676690, i64 %i.ko
  store i64 %i.ix, ptr %i.kq, align 8, !tbaa !63
  %.not.i.i169 = icmp ne i64 %i.ix, -1
  %i.kr = zext i1 %.not.i.i169 to i64
  %spec.select.i.i170 = add i64 %.041.i.i158, %i.kr ; 2 uses
  %i.ks = add nuw i64 %.03740.i.i159, 1           ; 2 uses
  %exitcond.not.i.i171 = icmp eq i64 %i.ks, %i.ck
  br i1 %exitcond.not.i.i171, label %._crit_edge.i.i172, label %bb.bf, !llvm.loop !260

._crit_edge.i.i172:                               ; preds = %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, %bb.be
  %.0.lcssa.i.i173 = phi i64 [ 0, %bb.be ], [ %spec.select.i.i170, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ] ; 8 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0236.0, i64 %i.ck
  %i.ku = sub i64 0, %.0.lcssa.i.i173             ; 2 uses
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.ku
  %i.kw = shl i64 %.0.lcssa.i.i173, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.0236.0, ptr align 4 %i.kv, i64 %i.kw, i1 false)
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.0676690, i64 %i.ck
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.ku
  %i.kz = shl i64 %.0.lcssa.i.i173, 3             ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.0246.0676690, ptr align 8 %i.ky, i64 %i.kz, i1 false)
  %i.la = icmp ult i64 %.0.lcssa.i.i173, %i.ck
  br i1 %i.la, label %.lr.ph44.i.i174.preheader, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit

.lr.ph44.i.i174.preheader:                        ; preds = %._crit_edge.i.i172
  %scevgep609 = getelementptr i8, ptr %.sroa.0246.0676690, i64 %i.kz
  %i.lb = sub nuw i64 %i.ck, %.0.lcssa.i.i173     ; 4 uses
  %i.lc = shl i64 %i.lb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep609, i8 -1, i64 %i.lc, i1 false), !tbaa !63
  %min.iters.check = icmp ult i64 %i.lb, 8
  br i1 %min.iters.check, label %.lr.ph44.i.i174.preheader1007, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.i174.preheader
  %n.vec = and i64 %i.lb, -8                      ; 3 uses
  %i.ld = add i64 %.0.lcssa.i.i173, %n.vec
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0236.0, i64 %.0.lcssa.i.i173
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %index ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.lf, align 4, !tbaa !78
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.lg, align 4, !tbaa !78
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lh = icmp eq i64 %index.next, %n.vec
  br i1 %i.lh, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lb, %n.vec
  br i1 %cmp.n, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit, label %.lr.ph44.i.i174.preheader1007

.lr.ph44.i.i174.preheader1007:                    ; preds = %.lr.ph44.i.i174.preheader, %middle.block
  %.242.i.i175.ph = phi i64 [ %.0.lcssa.i.i173, %.lr.ph44.i.i174.preheader ], [ %i.ld, %middle.block ]
  br label %.lr.ph44.i.i174

.lr.ph44.i.i174:                                  ; preds = %.lr.ph44.i.i174.preheader1007, %.lr.ph44.i.i174
  %.242.i.i175 = phi i64 [ %i.lj, %.lr.ph44.i.i174 ], [ %.242.i.i175.ph, %.lr.ph44.i.i174.preheader1007 ] ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0236.0, i64 %.242.i.i175
  store float f0xFF7FFFFF, ptr %i.li, align 4, !tbaa !78
  %i.lj = add nuw i64 %.242.i.i175, 1             ; 2 uses
  %exitcond47.not.i.i176 = icmp eq i64 %i.lj, %i.ck
  br i1 %exitcond47.not.i.i176, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit, label %.lr.ph44.i.i174, !llvm.loop !262

_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit:       ; preds = %.lr.ph44.i.i, %.lr.ph44.i.i174, %middle.block994, %middle.block, %._crit_edge.i.i172, %._crit_edge.i.i
  %i.lk = icmp sgt i32 %i.cj, 0
  br i1 %i.lk, label %.lr.ph454, label %._crit_edge455

._crit_edge455:                                   ; preds = %bb.cf, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0236.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge455
  %i.ll = ptrtoint ptr %.sroa.0236.0 to i64
  %i.lm = sub i64 %.sroa.15.0, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0236.0, i64 noundef %i.lm) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge455, %bb.bj
  %.not.i.i.i178 = icmp eq ptr %.sroa.0246.0676690, null
  br i1 %.not.i.i.i178, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.ln = ptrtoint ptr %.sroa.0246.0676690 to i64
  %i.lo = sub i64 %.sroa.14253.0685689, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0246.0676690, i64 noundef %i.lo) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.bk
  %i.lp = add nuw nsw i64 %.063456, 1             ; 2 uses
  %exitcond613.not = icmp eq i64 %i.lp, 200
  br i1 %exitcond613.not, label %bb.l, label %bb.o, !llvm.loop !263

.lr.ph454:                                        ; preds = %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit, %bb.cf
  %i.lq = phi i32 [ %i.od, %bb.cf ], [ %i.cj, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit ] ; 3 uses
  %indvars.iv610 = phi i64 [ %indvars.iv.next611, %bb.cf ], [ 0, %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit ] ; 6 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0246.0676690, i64 %indvars.iv610
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !63
  %21 = sext i32 %i.lq to i64
  %i.lt = mul nsw i64 %.063456, %21               ; 2 uses
  %i.lu = add nsw i64 %i.lt, %indvars.iv610       ; 2 uses
  %i.lv = load ptr, ptr %5, align 8, !tbaa !139
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %i.lu
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !63
  %.not98 = icmp eq i64 %i.ls, %i.lx
  br i1 %.not98, label %.sink.split, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph454
  %i.ly = load float, ptr %i.a, align 4, !tbaa !78
  %i.lz = fcmp oeq float %i.ly, 1.000000e+00
  %.pre616 = load ptr, ptr %6, align 8, !tbaa !124 ; 2 uses
  br i1 %i.lz, label %bb.bm, label %bb.ce

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0236.0, i64 %indvars.iv610 ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.pre616, i64 %i.lu ; 2 uses
  %i.mc = load float, ptr %i.ma, align 4, !tbaa !78, !noalias !264
  %i.md = load float, ptr %i.mb, align 4, !tbaa !78, !noalias !264
  %i.me = fcmp oeq float %i.mc, %i.md
  br i1 %i.me, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15)
          to label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bs

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19, !noalias !269
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %i.ma)
          to label %.noexc223 unwind label %bb.bs

.noexc223:                                        ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19, !noalias !269
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 4 dereferenceable(4) %i.mb)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.bq, !noalias !269

_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc223
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %15, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i1 noundef zeroext false)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.mf = load ptr, ptr %11, align 8, !tbaa !87, !noalias !269 ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.at
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bp
  %i.mh = load i64, ptr %i.at, align 8, !tbaa !19, !noalias !269
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !269
  %i.mj = load ptr, ptr %10, align 8, !tbaa !87, !noalias !269 ; 2 uses
  %i.mk = icmp eq ptr %i.mj, %i.au
  br i1 %i.mk, label %.noexc180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ml = load i64, ptr %i.au, align 8, !tbaa !19, !noalias !269
  %i.mm = add i64 %i.ml, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mm) #20
  br label %.noexc180

bb.bq:                                            ; preds = %.noexc223
  %i.mn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.br:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.mo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mp = load ptr, ptr %11, align 8, !tbaa !87, !noalias !269 ; 2 uses
  %i.mq = icmp eq ptr %i.mp, %i.at
  br i1 %i.mq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %bb.br
  %i.mr = load i64, ptr %i.at, align 8, !tbaa !19, !noalias !269
  %i.ms = add i64 %i.mr, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.ms) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.bq
  %.pn.i = phi { ptr, i32 } [ %i.mn, %bb.bq ], [ %i.mo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ], [ %i.mo, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !269
  %i.mt = load ptr, ptr %10, align 8, !tbaa !87, !noalias !269 ; 2 uses
  %i.mu = icmp eq ptr %i.mt, %i.au
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i
  %i.mv = load i64, ptr %i.au, align 8, !tbaa !19, !noalias !269
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.mt, i64 noundef %i.mw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !269
  br label %.body

.noexc180:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !269
  br label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %.noexc180, %bb.bn
  %i.mx = load i8, ptr %15, align 8, !tbaa !91, !range !100, !noundef !101
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %bb.cc, label %bb.bt

bb.bs:                                            ; preds = %bb.bo, %bb.bn
  %i.mz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bt:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.na = load ptr, ptr %i.av, align 8, !tbaa !102 ; 2 uses
  %.not.i.i181 = icmp eq ptr %i.na, null
  br i1 %.not.i.i181, label %_ZNK7testing15AssertionResult15failure_messageEv.exit182, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit182

_ZNK7testing15AssertionResult15failure_messageEv.exit182: ; preds = %bb.bv, %bb.bu
  %i.nc = phi ptr [ %i.nb, %bb.bv ], [ @.str.29, %bb.bu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 276, ptr noundef %i.nc)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit182
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.nd = load ptr, ptr %16, align 8, !tbaa !103  ; 3 uses
  %.not.i.i183 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i183, label %_ZN7testing7MessageD2Ev.exit185, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184: ; preds = %bb.bx
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !22
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8
  call void %i.ng(ptr noundef nonnull align 8 dereferenceable(128) %i.nd) #19, !inline_history !211
  br label %_ZN7testing7MessageD2Ev.exit185

_ZN7testing7MessageD2Ev.exit185:                  ; preds = %bb.bx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.cc

bb.by:                                            ; preds = %bb.bt
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit188

bb.bz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit182
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bw
  %i.nj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #19
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn99 = phi { ptr, i32 } [ %i.nj, %bb.ca ], [ %i.ni, %bb.bz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.nk = load ptr, ptr %16, align 8, !tbaa !103  ; 3 uses
  %.not.i.i186 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i186, label %_ZN7testing7MessageD2Ev.exit188, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187: ; preds = %bb.cb
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !22
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8
  call void %i.nn(ptr noundef nonnull align 8 dereferenceable(128) %i.nk) #19, !inline_history !211
  br label %_ZN7testing7MessageD2Ev.exit188

_ZN7testing7MessageD2Ev.exit188:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187, %bb.cb, %bb.by
  %.pn99.pn = phi { ptr, i32 } [ %i.nh, %bb.by ], [ %.pn99, %bb.cb ], [ %.pn99, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #19
  br label %.body

bb.cc:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit185
  %i.no = load ptr, ptr %i.av, align 8, !tbaa !102 ; 4 uses
  %.not.i.i189 = icmp eq ptr %i.no, null
  br i1 %.not.i.i189, label %_ZN7testing15AssertionResultD2Ev.exit193, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !87 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 16 ; 2 uses
  %i.nr = icmp eq ptr %i.np, %i.nq
  br i1 %i.nr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190: ; preds = %bb.cd
  %i.ns = load i64, ptr %i.nq, align 8, !tbaa !19
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.np, i64 noundef %i.nt) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190
  call void @_ZdlPvm(ptr noundef nonnull %i.no, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit193

_ZN7testing15AssertionResultD2Ev.exit193:         ; preds = %bb.cc, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %.pre614 = load i32, ptr @_ZN12_GLOBAL__N_11kE, align 4, !tbaa !62 ; 2 uses
  %.pre615 = load ptr, ptr %6, align 8, !tbaa !124
  %.pre617 = sext i32 %.pre614 to i64
  %.pre618 = mul nsw i64 %.063456, %.pre617
  br label %bb.ce

.body:                                            ; preds = %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %_ZN7testing7MessageD2Ev.exit188
  %.pn99.pn.pn = phi { ptr, i32 } [ %.pn99.pn, %_ZN7testing7MessageD2Ev.exit188 ], [ %i.mz, %bb.bs ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit148.thread

bb.ce:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit193, %bb.bl
  %.pre-phi619 = phi i64 [ %.pre618, %_ZN7testing15AssertionResultD2Ev.exit193 ], [ %i.lt, %bb.bl ]
  %i.nu = phi i32 [ %.pre614, %_ZN7testing15AssertionResultD2Ev.exit193 ], [ %i.lq, %bb.bl ] ; 2 uses
  %22 = phi ptr [ %.pre615, %_ZN7testing15AssertionResultD2Ev.exit193 ], [ %.pre616, %bb.bl ]
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0236.0, i64 %indvars.iv610
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !78
  %i.nx = getelementptr [4 x i8], ptr %22, i64 %.pre-phi619
  %i.ny = getelementptr [4 x i8], ptr %i.nx, i64 %indvars.iv610
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !78
  %i.oa = fcmp oeq float %i.nw, %i.nz
  br i1 %i.oa, label %.sink.split, label %bb.cf

.sink.split:                                      ; preds = %.lr.ph454, %bb.ce
  %.ph = phi i32 [ %i.nu, %bb.ce ], [ %i.lq, %.lr.ph454 ]
  %i.ob = load float, ptr %i.b, align 4, !tbaa !78
  %i.oc = fadd float %i.ob, 1.000000e+00
  store float %i.oc, ptr %i.b, align 4, !tbaa !78
  br label %bb.cf

bb.cf:                                            ; preds = %.sink.split, %bb.ce
  %i.od = phi i32 [ %i.nu, %bb.ce ], [ %.ph, %.sink.split ] ; 2 uses
  %indvars.iv.next611 = add nuw nsw i64 %indvars.iv610, 1 ; 2 uses
  %i.oe = sext i32 %i.od to i64
  %i.of = icmp slt i64 %indvars.iv.next611, %i.oe
  br i1 %i.of, label %.lr.ph454, label %._crit_edge455, !llvm.loop !272

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit148: ; preds = %bb.ac, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit147, %bb.ab, %bb.ak, %bb.t
  %.pn108.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.t ], [ %i.eb, %bb.ac ], [ %i.ea, %bb.ab ], [ %i.ff, %bb.ak ], [ %.pn104, %_ZN5faiss13InvertedLists9ScopedIdsD2Ev.exit147 ] ; 2 uses
  %.not.i.i.i194 = icmp eq ptr %.sroa.0236.0, null
  br i1 %.not.i.i.i194, label %_ZNSt6vectorIfSaIfEED2Ev.exit195, label %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit148.thread

_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit148.thread: ; preds = %.body, %bb.ay, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit148
  %.pn108.pn.pn.pn.pn.pn285 = phi { ptr, i32 } [ %.pn108.pn.pn.pn.pn.pn, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit148 ], [ %.pn108.pn.pn, %bb.ay ], [ %.pn99.pn.pn, %.body ]
  %i.og = ptrtoint ptr %.sroa.0236.0 to i64
  %i.oh = sub i64 %.sroa.15.0, %i.og
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0236.0, i64 noundef %i.oh) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit195

_ZNSt6vectorIfSaIfEED2Ev.exit195:                 ; preds = %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit148.thread, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit148
  %.pn108.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn108.pn.pn.pn.pn.pn285, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit148.thread ], [ %.pn108.pn.pn.pn.pn.pn, %_ZN5faiss13InvertedLists11ScopedCodesD2Ev.exit148 ] ; 2 uses
  %.not.i.i.i196 = icmp eq ptr %.sroa.0246.0676690, null
  br i1 %.not.i.i.i196, label %_ZNSt6vectorIlSaIlEED2Ev.exit197, label %_ZNSt6vectorIfSaIfEED2Ev.exit195.thread

_ZNSt6vectorIfSaIfEED2Ev.exit195.thread:          ; preds = %.loopexit.split-lp302, %.loopexit301, %_ZNSt6vectorIfSaIfEED2Ev.exit195
  %.pn108.pn.pn.pn.pn.pn.pn697 = phi { ptr, i32 } [ %.pn108.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit195 ], [ %lpad.loopexit.split-lp304, %.loopexit.split-lp302 ], [ %lpad.loopexit303, %.loopexit301 ]
  %.sroa.0246.0677696 = phi ptr [ %.sroa.0246.0676690, %_ZNSt6vectorIfSaIfEED2Ev.exit195 ], [ %i.bi, %.loopexit.split-lp302 ], [ %i.bi, %.loopexit301 ] ; 2 uses
  %.sroa.14253.0684695 = phi i64 [ %.sroa.14253.0685689, %_ZNSt6vectorIfSaIfEED2Ev.exit195 ], [ %i.bk, %.loopexit.split-lp302 ], [ %i.bk, %.loopexit301 ]
  %i.oi = ptrtoint ptr %.sroa.0246.0677696 to i64
  %i.oj = sub i64 %.sroa.14253.0684695, %i.oi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0246.0677696, i64 noundef %i.oj) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit197

_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.m, %bb.n
  %i.ok = load i8, ptr %18, align 8, !tbaa !91, !range !100, !noundef !101
  %i.ol = trunc nuw i8 %i.ok to i1
  br i1 %i.ol, label %bb.cq, label %bb.ch

bb.cg:                                            ; preds = %bb.n, %bb.m
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ch:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ci unwind label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  %i.on = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !102 ; 2 uses
  %.not.i.i198 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i198, label %_ZNK7testing15AssertionResult15failure_messageEv.exit199, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !87
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit199

_ZNK7testing15AssertionResult15failure_messageEv.exit199: ; preds = %bb.cj, %bb.ci
  %i.oq = phi ptr [ %i.op, %bb.cj ], [ @.str.29, %bb.ci ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 287, ptr noundef %i.oq)
          to label %bb.ck unwind label %bb.cn

bb.ck:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit199
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.cl unwind label %bb.co

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %i.or = load ptr, ptr %19, align 8, !tbaa !103  ; 3 uses
  %.not.i.i200 = icmp eq ptr %i.or, null
  br i1 %.not.i.i200, label %_ZN7testing7MessageD2Ev.exit202, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201: ; preds = %bb.cl
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !22
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load ptr, ptr %i.ot, align 8
  call void %i.ou(ptr noundef nonnull align 8 dereferenceable(128) %i.or) #19, !inline_history !211
  br label %_ZN7testing7MessageD2Ev.exit202

_ZN7testing7MessageD2Ev.exit202:                  ; preds = %bb.cl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.cq

bb.cm:                                            ; preds = %bb.ch
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit205

bb.cn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit199
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.ck
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #19
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pn = phi { ptr, i32 } [ %i.ox, %bb.co ], [ %i.ow, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %i.oy = load ptr, ptr %19, align 8, !tbaa !103  ; 3 uses
  %.not.i.i203 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i203, label %_ZN7testing7MessageD2Ev.exit205, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204: ; preds = %bb.cp
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !22
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8
  call void %i.pb(ptr noundef nonnull align 8 dereferenceable(128) %i.oy) #19, !inline_history !211
  br label %_ZN7testing7MessageD2Ev.exit205

_ZN7testing7MessageD2Ev.exit205:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204, %bb.cp, %bb.cm
  %.pn.pn = phi { ptr, i32 } [ %i.ov, %bb.cm ], [ %.pn, %bb.cp ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #19
  br label %bb.cu

bb.cq:                                            ; preds = %_ZN7testing8internal11CmpHelperGEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit202
  %i.pc = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !102 ; 4 uses
  %.not.i.i206 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i206, label %_ZN7testing15AssertionResultD2Ev.exit210, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !87 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 16 ; 2 uses
  %i.pg = icmp eq ptr %i.pe, %i.pf
  br i1 %i.pg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i207: ; preds = %bb.cr
  %i.ph = load i64, ptr %i.pf, align 8, !tbaa !19
  %i.pi = add i64 %i.ph, 1
  call void @_ZdlPvm(ptr noundef %i.pe, i64 noundef %i.pi) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i208

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i208: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i207
  call void @_ZdlPvm(ptr noundef nonnull %i.pd, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit210

_ZN7testing15AssertionResultD2Ev.exit210:         ; preds = %bb.cq, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i208
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %.not.i.i.i211 = icmp eq ptr %.sroa.0258.0, null
  br i1 %.not.i.i.i211, label %_ZNSt6vectorIfSaIfEED2Ev.exit212, label %bb.cs

bb.cs:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit210
  %i.pj = ptrtoint ptr %.sroa.0258.0 to i64
  %i.pk = sub i64 %.sroa.11.0, %i.pj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0258.0, i64 noundef %i.pk) #20
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit212

_ZNSt6vectorIfSaIfEED2Ev.exit212:                 ; preds = %_ZN7testing15AssertionResultD2Ev.exit210, %bb.cs
  %.not.i.i.i213 = icmp eq ptr %.sroa.0265.0281, null
  br i1 %.not.i.i.i213, label %_ZNSt6vectorIlSaIlEED2Ev.exit214, label %bb.ct

bb.ct:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit212
  %i.pl = ptrtoint ptr %.sroa.11270.0278 to i64
  %i.pm = ptrtoint ptr %.sroa.0265.0281 to i64
  %i.pn = sub i64 %i.pl, %i.pm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0265.0281, i64 noundef %i.pn) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit214

_ZNSt6vectorIlSaIlEED2Ev.exit214:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit212, %bb.ct
  %.not.i215 = icmp eq ptr %.sroa.0272.0, null
  br i1 %.not.i215, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit214
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0272.0) #20
  br label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit214, %_ZNKSt14default_deleteIA_fEclIfEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i
  ret void

bb.cu:                                            ; preds = %_ZN7testing7MessageD2Ev.exit205, %bb.cg
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit205 ], [ %i.om, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit197

_ZNSt6vectorIlSaIlEED2Ev.exit197:                 ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt6vectorIfSaIfEED2Ev.exit195, %_ZNSt6vectorIfSaIfEED2Ev.exit195.thread, %bb.cu
  %.pn108.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.cu ], [ %.pn108.pn.pn.pn.pn.pn.pn697, %_ZNSt6vectorIfSaIfEED2Ev.exit195.thread ], [ %.pn108.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit195 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.cv

end_hunk_2
