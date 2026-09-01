Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmSystemTools?download=true
inline.NumInlined: 3100
inline.NumDeleted: 997
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN13cmSystemTools20GetEnvPathNormalizedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !15
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !28
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !27
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !27
  store ptr %i.ax, ptr %.056.i.i.i.i.i, align 8, !tbaa !15
  store i64 0, ptr %i.be, align 8, !tbaa !27
  store i8 0, ptr %i.ax, align 8, !tbaa !28
  %i.bh = load ptr, ptr %i.ar, align 8, !tbaa !118
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store ptr %i.bi, ptr %i.ar, align 8, !tbaa !118
  br label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.at, ptr noundef nonnull align 8 dereferenceable(32) %.056.i.i.i.i.i)
          to label %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.i.i.i.i.i unwind label %bb.p

_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.i.i.i.i.i: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 32
  %i.bk = add nsw i64 %.07.i.i.i.i.i, -1
  %i.bl = icmp sgt i64 %.07.i.i.i.i.i, 1
  br i1 %i.bl, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISB_EET0_T_SG_SF_.exit.loopexit, !llvm.loop !350

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISB_EET0_T_SG_SF_.exit.loopexit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEEaSEOS6_.exit.i.i.i.i.i
  %.pre25 = load ptr, ptr %4, align 8, !tbaa !147
  %.pre26 = load ptr, ptr %i.ag, align 8, !tbaa !118
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISB_EET0_T_SG_SF_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISB_EET0_T_SG_SF_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISB_EET0_T_SG_SF_.exit.loopexit, %bb.i
  %i.bm = phi ptr [ %.pre26, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISB_EET0_T_SG_SF_.exit.loopexit ], [ %i.al, %bb.i ] ; 2 uses
  %i.bn = phi ptr [ %.pre25, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISB_EET0_T_SG_SF_.exit.loopexit ], [ %i.ak, %bb.i ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.bn, %i.bm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISB_EET0_T_SG_SF_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bn, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISB_EET0_T_SG_SF_.exit ] ; 3 uses
  %i.bo = load ptr, ptr %.05.i.i.i, align 8, !tbaa !15 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !28
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #35
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bt, %i.bm
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !148

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !147
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISB_EET0_T_SG_SF_.exit
  %i.bu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bn, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESt20back_insert_iteratorISB_EET0_T_SG_SF_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !120
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #35
  br label %bb.r

bb.o:                                             ; preds = %bb.g
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body11

bb.p:                                             ; preds = %bb.m
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #34
  br label %.body11

.body11:                                          ; preds = %bb.o, %bb.h, %bb.p
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.p ], [ %i.ca, %bb.o ], [ %i.aj, %bb.h ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.cc = load i8, ptr %i.a, align 8, !tbaa !342, !range !160, !noundef !161
  %i.cd = trunc nuw i8 %i.cc to i1
  store i8 0, ptr %i.a, align 8, !tbaa !342
  br i1 %i.cd, label %bb.q, label %.body

bb.q:                                             ; preds = %.body11
  %i.ce = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i14: ; preds = %bb.q
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !28
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #35
  br label %.body

bb.r:                                             ; preds = %bb.n, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %.pre27 = load i8, ptr %i.a, align 8, !tbaa !342, !range !160
  %i.cj = trunc nuw i8 %.pre27 to i1
  store i8 0, ptr %i.a, align 8, !tbaa !342
  br i1 %i.cj, label %bb.s, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16: ; preds = %bb.s
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !28
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #35
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18.critedge: ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !344
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18.critedge, %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i, %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret void

.body:                                            ; preds = %bb.q, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i14, %.body11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19
  %.pn.pn = phi { ptr, i32 } [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19 ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i14 ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.thread ], [ %.pn, %.body11 ], [ %i.n, %bb.f ], [ %.pn, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13cmSystemTools22SplitEnvPathNormalizedB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, i64 %1, ptr %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN13cmSystemTools12SplitEnvPathB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, i64 %1, ptr %2)
  %i.a = load ptr, ptr %0, align 8, !tbaa !146    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.d = invoke ptr @_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_PFS7_S7_EET0_T_SG_SF_T1_(ptr %i.a, ptr %i.c, ptr %i.a, ptr noundef nonnull @_ZN13cmSystemTools22ToNormalizedPathOnDiskENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #34
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13cmSystemTools12SplitEnvPathB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, i64 %1, ptr %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.a = load atomic i8, ptr @_ZGVZN13cmSystemTools12SplitEnvPathB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3sep acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !351

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN13cmSystemTools12SplitEnvPathB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3sep) #34
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @_ZZN13cmSystemTools12SplitEnvPathB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3sep.0, align 8
  store ptr @.str.29, ptr @_ZZN13cmSystemTools12SplitEnvPathB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3sep.1, align 8, !tbaa !24
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN13cmSystemTools12SplitEnvPathB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3sep) #34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not62 = icmp eq i64 %1, 0
  br i1 %.not62, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit.thread, label %.lr.ph.i.i.lr.ph

.lr.ph.i.i.lr.ph:                                 ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.lr.ph, %bb.l
  %.01759 = phi i64 [ 0, %.lr.ph.i.i.lr.ph ], [ %.0111420.i.i, %bb.l ] ; 2 uses
  %.sroa.01.0.copyload60.b = load i1, ptr @_ZZN13cmSystemTools12SplitEnvPathB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3sep.0, align 8 ; 2 uses
  %.sroa.01.0.copyload60 = zext i1 %.sroa.01.0.copyload60.b to i64 ; 2 uses
  %.sroa.22.0.copyload61 = load ptr, ptr @_ZZN13cmSystemTools12SplitEnvPathB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEE3sep.1, align 8, !tbaa !24 ; 2 uses
  br i1 %.sroa.01.0.copyload60.b, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %.lr.ph.i.i, %bb.e
  %.0710.i.i = phi i64 [ %i.i, %bb.e ], [ %.01759, %.lr.ph.i.i ] ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.0710.i.i
  %i.f = load i8, ptr %i.e, align 1, !tbaa !28
  %i.g = sext i8 %i.f to i32
  %i.h = call ptr @memchr(ptr noundef %.sroa.22.0.copyload61, i32 noundef %i.g, i64 noundef %.sroa.01.0.copyload60) #34
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.i = add i64 %.0710.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.i, %1
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !352

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %.0710.i.i
  %i.k = icmp eq i64 %.0710.i.i, -1
  br i1 %i.k, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit.thread, label %5

5:                                                ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit
  %6 = icmp ult i64 %.0710.i.i, %1
  br i1 %6, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i26, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.thread

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i26:   ; preds = %5, %bb.f
  %.0111420.i.i = phi i64 [ %i.p, %bb.f ], [ %.0710.i.i, %5 ] ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %.0111420.i.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !28
  %i.n = sext i8 %i.m to i32
  %i.o = call ptr @memchr(ptr noundef %.sroa.22.0.copyload61, i32 noundef %i.n, i64 noundef %.sroa.01.0.copyload60) #34
  %.not13.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not13.not.i.i, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i26
  %i.p = add i64 %.0111420.i.i, 1                 ; 2 uses
  %exitcond.not.i.i27 = icmp eq i64 %i.p, %1
  br i1 %exitcond.not.i.i27, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i26

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i26
  %i.q = icmp eq i64 %.0111420.i.i, -1
  br i1 %i.q, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.thread, label %bb.k

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.thread: ; preds = %.lr.ph.i.i, %5, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit, %bb.f
  %.0.i.i414447 = phi i64 [ %.0710.i.i, %bb.f ], [ %.01759, %.lr.ph.i.i ], [ %.0710.i.i, %5 ], [ %.0710.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.r = icmp ugt i64 %.0.i.i414447, %1
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.thread
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, i64 noundef %.0.i.i414447, i64 noundef %1) #36
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.thread
  %i.s = sub nuw i64 %1, %.0.i.i414447
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.0.i.i414447
  store i64 %i.s, ptr %3, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.t, ptr %i.u, align 8
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.i unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit.thread

bb.j:                                             ; preds = %bb.g, %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.m

bb.k:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.x = sub i64 %.0111420.i.i, %.0710.i.i
  %7 = sub nuw i64 %1, %.0710.i.i
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %7, i64 %i.x)
  store i64 %.sroa.speculated.i, ptr %4, align 8
  store ptr %i.j, ptr %i.d, align 8
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.l unwind label %.loopexit  ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  %i.z = icmp ult i64 %.0111420.i.i, %1
  br i1 %i.z, label %.lr.ph.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit.thread

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.j
  %.pn = phi { ptr, i32 } [ %i.w, %bb.j ], [ %lpad.loopexit, %.loopexit ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #34
  resume { ptr, i32 } %.pn

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofES2_m.exit, %bb.l, %bb.e, %bb.d, %bb.i
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJSt17basic_string_viewIcS3_EEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !29 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !26
  %i.g = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.h = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.h, %i.g
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.67) #36
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !29
  %i.i = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !15
  %i.k = load i64, ptr %i.a, align 8, !tbaa !29
  store i64 %i.k, ptr %i.f, align 8, !tbaa !28
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.c
  %i.l = phi ptr [ %i.j, %.noexc.i.i.i ], [ %i.f, %bb.c ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !28
  store i8 %i.m, ptr %i.l, align 1, !tbaa !28
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !27
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  store ptr %i.s, ptr %i.b, align 8, !tbaa !118
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJSt17basic_string_viewIcS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !146
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit
  %i.t = phi ptr [ %.pre, %bb.f ], [ %i.s, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JSt17basic_string_viewIcS3_EEEEvPT_DpOT0_.exit ]
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -32
  ret ptr %i.u
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_PFS7_S7_EET0_T_SG_SF_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  %.sroa.0.017 = phi ptr [ %2, %.lr.ph ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ] ; 10 uses
  %.sroa.010.016 = phi ptr [ %0, %.lr.ph ], [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  store ptr %i.b, ptr %5, align 8, !tbaa !26
  %i.f = load ptr, ptr %.sroa.010.016, align 8, !tbaa !15 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.010.016, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.h, ptr %i.a, align 8, !tbaa !29
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !15
  %i.k = load i64, ptr %i.a, align 8, !tbaa !29
  store i64 %i.k, ptr %i.b, align 8, !tbaa !28
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !28
  store i8 %i.m, ptr %i.l, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  store i64 %i.n, ptr %i.c, align 8, !tbaa !27
  %i.o = load ptr, ptr %5, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 0, ptr %i.p, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  invoke void %3(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 %5)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = load ptr, ptr %.sroa.0.017, align 8, !tbaa !15 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  %i.t = load ptr, ptr %4, align 8, !tbaa !15     ; 6 uses
  %i.u = icmp eq ptr %i.t, %i.d                   ; 2 uses
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.u, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.u, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.v = load i64, ptr %i.e, align 8, !tbaa !27   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %.not21.i = icmp eq ptr %4, %.sroa.0.017
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.g, !prof !155

bb.g:                                             ; preds = %bb.f
  switch i64 %i.v, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]
end_hunk_0
