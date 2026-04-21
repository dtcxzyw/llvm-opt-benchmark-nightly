inline.NumInlined: 796
inline.NumDeleted: 284
begin_hunk_0_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 1                   ; 29 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag:bb.a
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.q, %bb.r, %bb.s
  %i.ee = getelementptr i8, ptr %i.dy, i64 %i.ea  ; 6 uses
  %i.ef = icmp sgt i64 %i.e, 0
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i.i.i.i51.preheader.a, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit55

.lr.ph.i.i.i.i.i.i.i.i51.preheader.a:             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %min.iters.check195 = icmp ult i64 %i.e, 16
  br i1 %min.iters.check195, label %.lr.ph.i.i.i.i.i.i.i.i51.preheader211, label %vector.memcheck189

vector.memcheck189:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i51.preheader.a
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag:bb.a
  %bound0192 = icmp ult ptr %i.ee, %3
  %bound1193 = icmp ult ptr %2, %scevgep190
  %found.conflict194 = and i1 %bound0192, %bound1193
  br i1 %found.conflict194, label %.lr.ph.i.i.i.i.i.i.i.i51.preheader211, label %vector.ph196

vector.ph196:                                     ; preds = %vector.memcheck189
  %n.vec198 = and i64 %i.e, 9223372036854775792   ; 4 uses
  %i.ei = and i64 %i.e, 15
  %i.ej = getelementptr i8, ptr %i.ee, i64 %n.vec198 ; 2 uses
  %i.ek = shl nuw i64 %n.vec198, 1
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag:bb.a
  store <8 x i8> %i.eo, ptr %i.ep, align 1, !alias.scope !56, !noalias !53
  %index.next206 = add nuw i64 %index200, 16      ; 2 uses
  %i.eq = icmp eq i64 %index.next206, %n.vec198
  br i1 %i.eq, label %middle.block207, label %vector.body199, !llvm.loop !58

middle.block207:                                  ; preds = %vector.body199
  %cmp.n208 = icmp eq i64 %i.e, %n.vec198
  br i1 %cmp.n208, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit55, label %.lr.ph.i.i.i.i.i.i.i.i51.preheader211

.lr.ph.i.i.i.i.i.i.i.i51.preheader211:            ; preds = %vector.memcheck189, %.lr.ph.i.i.i.i.i.i.i.i51.preheader.a, %middle.block207
  %.012.i.i.i.i.i.i.i.i52.ph = phi i64 [ %i.e, %vector.memcheck189 ], [ %i.e, %.lr.ph.i.i.i.i.i.i.i.i51.preheader.a ], [ %i.ei, %middle.block207 ]
  %.0811.i.i.i.i.i.i.i.i53.ph = phi ptr [ %i.ee, %vector.memcheck189 ], [ %i.ee, %.lr.ph.i.i.i.i.i.i.i.i51.preheader.a ], [ %i.ej, %middle.block207 ]
  %.0910.i.i.i.i.i.i.i.i54.ph = phi ptr [ %2, %vector.memcheck189 ], [ %2, %.lr.ph.i.i.i.i.i.i.i.i51.preheader.a ], [ %i.el, %middle.block207 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i51

.lr.ph.i.i.i.i.i.i.i.i51:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i51.preheader211, %.lr.ph.i.i.i.i.i.i.i.i51
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag:bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i53, i64 1 ; 2 uses
  %i.ev = add nsw i64 %.012.i.i.i.i.i.i.i.i52, -1
  %i.ew = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i52, 1
  br i1 %i.ew, label %.lr.ph.i.i.i.i.i.i.i.i51, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit55, !llvm.loop !59

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit55: ; preds = %.lr.ph.i.i.i.i.i.i.i.i51, %middle.block207, %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %.08.lcssa.i.i.i.i.i.i.i.i50 = phi ptr [ %i.ee, %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit ], [ %i.ej, %middle.block207 ], [ %i.eu, %.lr.ph.i.i.i.i.i.i.i.i51 ] ; 3 uses
  %i.ex = sub i64 %i.k, %i.dz                     ; 4 uses
  %i.ey = icmp sgt i64 %i.ex, 1
  br i1 %i.ey, label %bb.t, label %bb.u, !prof !25
end_hunk_4
begin_hunk_5_@_ZN8v8_crdtp4cbor12_GLOBAL__N_111CBOREncoderD0Ev:bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20, !inline_history !60
  br label %_ZN8v8_crdtp4cbor12_GLOBAL__N_111CBOREncoderD2Ev.exit

_ZN8v8_crdtp4cbor12_GLOBAL__N_111CBOREncoderD2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_5
begin_hunk_6_@_ZN8v8_crdtp4cbor12_GLOBAL__N_111CBOREncoder14HandleMapBeginEv:bb.a
  %next.gep = getelementptr i8, ptr %i.w, i64 %offset.idx ; 2 uses
  %offset.idx11 = shl i64 %index, 3
  %next.gep12 = getelementptr i8, ptr %i.l, i64 %offset.idx11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.ai = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !alias.scope !64, !noalias !61
  %wide.load13 = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !64, !noalias !61
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !61, !noalias !64
  store <2 x i64> %wide.load13, ptr %i.aj, align 8, !alias.scope !61, !noalias !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
end_hunk_6
begin_hunk_7_@_ZN8v8_crdtp4cbor12_GLOBAL__N_111CBOREncoder14HandleMapBeginEv:bb.a
.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !64, !noalias !61
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !alias.scope !61, !noalias !64
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8v8_crdtp4cbor15EnvelopeEncoderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !67

_ZNSt6vectorIN8v8_crdtp4cbor15EnvelopeEncoderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN8v8_crdtp4cbor15EnvelopeEncoderESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorIN8v8_crdtp4cbor15EnvelopeEncoderESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ] ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN8v8_crdtp4cbor12_GLOBAL__N_111CBOREncoder16HandleArrayBeginEv:bb.a
  %next.gep = getelementptr i8, ptr %i.w, i64 %offset.idx ; 2 uses
  %offset.idx11 = shl i64 %index, 3
  %next.gep12 = getelementptr i8, ptr %i.l, i64 %offset.idx11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.ai = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !alias.scope !71, !noalias !68
  %wide.load13 = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !71, !noalias !68
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !68, !noalias !71
  store <2 x i64> %wide.load13, ptr %i.aj, align 8, !alias.scope !68, !noalias !71
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
end_hunk_8
begin_hunk_9_@_ZN8v8_crdtp4cbor12_GLOBAL__N_111CBOREncoder16HandleArrayBeginEv:bb.a
.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !71, !noalias !68
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !alias.scope !68, !noalias !71
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8v8_crdtp4cbor15EnvelopeEncoderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !74

_ZNSt6vectorIN8v8_crdtp4cbor15EnvelopeEncoderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN8v8_crdtp4cbor15EnvelopeEncoderESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorIN8v8_crdtp4cbor15EnvelopeEncoderESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ] ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN8v8_crdtp4cbor12_GLOBAL__N_116ParseUTF16StringEPNS0_13CBORTokenizerEPNS_13ParserHandlerE:bb.a
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 2 uses
  %i.av = add i64 %.021, 2                        ; 2 uses
  %i.aw = icmp ult i64 %i.av, %.0.i.i
  br i1 %i.aw, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !75
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_10
begin_hunk_11_@_ZN8v8_crdtp4cbor12_GLOBAL__N_18ParseMapEiPNS0_13CBORTokenizerEPNS_13ParserHandlerE:bb.a

_ZN8v8_crdtp4cbor12_GLOBAL__N_115ParseUTF8StringEPNS0_13CBORTokenizerEPNS_13ParserHandlerE.exit: ; preds = %bb.h, %bb.g, %bb.g, %bb.i
  %i.ai = tail call fastcc noundef zeroext i1 @_ZN8v8_crdtp4cbor12_GLOBAL__N_110ParseValueEiPNS0_13CBORTokenizerEPNS_13ParserHandlerE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br i1 %i.ai, label %bb.c, label %_ZN8v8_crdtp4cbor13CBORTokenizer4NextEv.exit37, !llvm.loop !76

bb.k:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %2, align 8
end_hunk_11
begin_hunk_12_@_ZN8v8_crdtp4cbor12_GLOBAL__N_110ParseArrayEiPNS0_13CBORTokenizerEPNS_13ParserHandlerE:bb.a

bb.g:                                             ; preds = %bb.d
  %i.n = tail call fastcc noundef zeroext i1 @_ZN8v8_crdtp4cbor12_GLOBAL__N_110ParseValueEiPNS0_13CBORTokenizerEPNS_13ParserHandlerE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br i1 %i.n, label %bb.c, label %_ZN8v8_crdtp4cbor13CBORTokenizer4NextEv.exit21, !llvm.loop !77

bb.h:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %2, align 8
end_hunk_12
begin_hunk_13_@llvm.bswap.i32
!56 = !{!57}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !6, !32, !33}
!59 = distinct !{!59, !6, !32}
!60 = !{ptr @_ZN8v8_crdtp4cbor12_GLOBAL__N_111CBOREncoderD2Ev}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_ZSt19__relocate_object_aIN8v8_crdtp4cbor15EnvelopeEncoderES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!63 = distinct !{!63, !"_ZSt19__relocate_object_aIN8v8_crdtp4cbor15EnvelopeEncoderES2_SaIS2_EEvPT_PT0_RT1_"}
!64 = !{!65}
!65 = distinct !{!65, !63, !"_ZSt19__relocate_object_aIN8v8_crdtp4cbor15EnvelopeEncoderES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!66 = distinct !{!66, !6, !32, !33}
!67 = distinct !{!67, !6, !32}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZSt19__relocate_object_aIN8v8_crdtp4cbor15EnvelopeEncoderES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!70 = distinct !{!70, !"_ZSt19__relocate_object_aIN8v8_crdtp4cbor15EnvelopeEncoderES2_SaIS2_EEvPT_PT0_RT1_"}
!71 = !{!72}
!72 = distinct !{!72, !70, !"_ZSt19__relocate_object_aIN8v8_crdtp4cbor15EnvelopeEncoderES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!73 = distinct !{!73, !6, !32, !33}
!74 = distinct !{!74, !6, !32}
!75 = distinct !{!75, !6}
!76 = distinct !{!76, !6}
!77 = distinct !{!77, !6}
end_hunk_13
