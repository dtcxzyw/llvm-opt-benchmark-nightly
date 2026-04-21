inline.NumInlined: 796
inline.NumDeleted: 284
begin_hunk_0_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = ashr exact i64 %i.d, 1                   ; 33 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag:bb.a
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.q, %bb.r, %bb.s
  %i.ee = getelementptr i8, ptr %i.dy, i64 %i.ea  ; 8 uses
  %i.ef = icmp sgt i64 %i.e, 0
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i.i.i.i51.preheader.a, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit55

.lr.ph.i.i.i.i.i.i.i.i51.preheader.a:             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %min.iters.check195 = icmp ult i64 %i.e, 4
  br i1 %min.iters.check195, label %.lr.ph.i.i.i.i.i.i.i.i51.preheader211, label %vector.memcheck189

vector.memcheck189:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i51.preheader.a
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag:bb.a
  %bound0192 = icmp ult ptr %i.ee, %3
  %bound1193 = icmp ult ptr %2, %scevgep190
  %found.conflict194 = and i1 %bound0192, %bound1193
  br i1 %found.conflict194, label %.lr.ph.i.i.i.i.i.i.i.i51.preheader211, label %vector.main.loop.iter.check196

vector.main.loop.iter.check196:                   ; preds = %vector.memcheck189
  %min.iters.check197 = icmp ult i64 %i.e, 16
  br i1 %min.iters.check197, label %vec.epilog.ph218, label %vector.ph196

vector.ph196:                                     ; preds = %vector.main.loop.iter.check196
  %n.vec198 = and i64 %i.e, 9223372036854775792   ; 5 uses
  %i.ei = and i64 %i.e, 15
  %i.ej = getelementptr i8, ptr %i.ee, i64 %n.vec198 ; 2 uses
  %i.ek = shl nuw i64 %n.vec198, 1
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag:bb.a
  store <8 x i8> %i.eo, ptr %i.ep, align 1, !alias.scope !56, !noalias !53
  %index.next206 = add nuw i64 %index200, 16      ; 2 uses
  %i.eq = icmp eq i64 %index.next206, %n.vec198
  br i1 %i.eq, label %middle.block209, label %vector.body199, !llvm.loop !58

middle.block209:                                  ; preds = %vector.body199
  %cmp.n210 = icmp eq i64 %i.e, %n.vec198
  br i1 %cmp.n210, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit55, label %vec.epilog.iter.check216

vec.epilog.iter.check216:                         ; preds = %middle.block209
  %4 = and i64 %i.d, 24
  %min.epilog.iters.check217 = icmp eq i64 %4, 0
  br i1 %min.epilog.iters.check217, label %.lr.ph.i.i.i.i.i.i.i.i51.preheader211, label %vec.epilog.ph218, !prof !34

vec.epilog.ph218:                                 ; preds = %vector.main.loop.iter.check196, %vec.epilog.iter.check216
  %vec.epilog.resume.val211 = phi i64 [ %n.vec198, %vec.epilog.iter.check216 ], [ 0, %vector.main.loop.iter.check196 ]
  %n.vec220 = and i64 %i.e, 9223372036854775804   ; 4 uses
  %5 = and i64 %i.e, 3
  %6 = getelementptr i8, ptr %i.ee, i64 %n.vec220 ; 2 uses
  %7 = shl nuw i64 %n.vec220, 1
  %8 = getelementptr i8, ptr %2, i64 %7
  br label %vec.epilog.vector.body221

vec.epilog.vector.body221:                        ; preds = %vec.epilog.vector.body221, %vec.epilog.ph218
  %index222 = phi i64 [ %vec.epilog.resume.val211, %vec.epilog.ph218 ], [ %index.next226, %vec.epilog.vector.body221 ] ; 3 uses
  %next.gep223 = getelementptr i8, ptr %i.ee, i64 %index222
  %9 = shl i64 %index222, 1
  %next.gep224 = getelementptr i8, ptr %2, i64 %9
  %wide.load225 = load <4 x i16>, ptr %next.gep224, align 2, !alias.scope !53
  %10 = trunc <4 x i16> %wide.load225 to <4 x i8>
  store <4 x i8> %10, ptr %next.gep223, align 1, !alias.scope !56, !noalias !53
  %index.next226 = add nuw i64 %index222, 4       ; 2 uses
  %11 = icmp eq i64 %index.next226, %n.vec220
  br i1 %11, label %middle.block207, label %vec.epilog.vector.body221, !llvm.loop !59

middle.block207:                                  ; preds = %vec.epilog.vector.body221
  %cmp.n208 = icmp eq i64 %i.e, %n.vec220
  br i1 %cmp.n208, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit55, label %.lr.ph.i.i.i.i.i.i.i.i51.preheader211

.lr.ph.i.i.i.i.i.i.i.i51.preheader211:            ; preds = %vector.memcheck189, %.lr.ph.i.i.i.i.i.i.i.i51.preheader.a, %vec.epilog.iter.check216, %middle.block207
  %.012.i.i.i.i.i.i.i.i52.ph = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.i.i.i51.preheader.a ], [ %i.e, %vector.memcheck189 ], [ %i.ei, %vec.epilog.iter.check216 ], [ %5, %middle.block207 ]
  %.0811.i.i.i.i.i.i.i.i53.ph = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i.i.i.i51.preheader.a ], [ %i.ee, %vector.memcheck189 ], [ %i.ej, %vec.epilog.iter.check216 ], [ %6, %middle.block207 ]
  %.0910.i.i.i.i.i.i.i.i54.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i.i.i51.preheader.a ], [ %2, %vector.memcheck189 ], [ %i.el, %vec.epilog.iter.check216 ], [ %8, %middle.block207 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i51

.lr.ph.i.i.i.i.i.i.i.i51:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i51.preheader211, %.lr.ph.i.i.i.i.i.i.i.i51
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS5_Lm18446744073709551615EEEEEEvNS4_IPhS1_EET_SC_St20forward_iterator_tag:bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i53, i64 1 ; 2 uses
  %i.ev = add nsw i64 %.012.i.i.i.i.i.i.i.i52, -1
  %i.ew = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i52, 1
  br i1 %i.ew, label %.lr.ph.i.i.i.i.i.i.i.i51, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit55, !llvm.loop !60

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt4spanIS2_Lm18446744073709551615EEEEPhhET0_T_S9_S8_RSaIT1_E.exit55: ; preds = %.lr.ph.i.i.i.i.i.i.i.i51, %middle.block209, %middle.block207, %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %.08.lcssa.i.i.i.i.i.i.i.i50 = phi ptr [ %i.ee, %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit ], [ %6, %middle.block207 ], [ %i.ej, %middle.block209 ], [ %i.eu, %.lr.ph.i.i.i.i.i.i.i.i51 ] ; 3 uses
  %i.ex = sub i64 %i.k, %i.dz                     ; 4 uses
  %i.ey = icmp sgt i64 %i.ex, 1
  br i1 %i.ey, label %bb.t, label %bb.u, !prof !25
end_hunk_4
begin_hunk_5_@_ZN8v8_crdtp4cbor12_GLOBAL__N_111CBOREncoderD0Ev:bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20, !inline_history !61
  br label %_ZN8v8_crdtp4cbor12_GLOBAL__N_111CBOREncoderD2Ev.exit

_ZN8v8_crdtp4cbor12_GLOBAL__N_111CBOREncoderD2Ev.exit: ; preds = %bb.a, %bb.b
end_hunk_5
begin_hunk_6_@_ZN8v8_crdtp4cbor12_GLOBAL__N_111CBOREncoder14HandleMapBeginEv:bb.a
  %next.gep = getelementptr i8, ptr %i.w, i64 %offset.idx ; 2 uses
  %offset.idx11 = shl i64 %index, 3
  %next.gep12 = getelementptr i8, ptr %i.l, i64 %offset.idx11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.ai = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !alias.scope !65, !noalias !62
  %wide.load13 = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !65, !noalias !62
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !62, !noalias !65
  store <2 x i64> %wide.load13, ptr %i.aj, align 8, !alias.scope !62, !noalias !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
end_hunk_6
begin_hunk_7_@_ZN8v8_crdtp4cbor12_GLOBAL__N_111CBOREncoder14HandleMapBeginEv:bb.a
.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !65, !noalias !62
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !alias.scope !62, !noalias !65
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8v8_crdtp4cbor15EnvelopeEncoderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !68

_ZNSt6vectorIN8v8_crdtp4cbor15EnvelopeEncoderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN8v8_crdtp4cbor15EnvelopeEncoderESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorIN8v8_crdtp4cbor15EnvelopeEncoderESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ] ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN8v8_crdtp4cbor12_GLOBAL__N_111CBOREncoder16HandleArrayBeginEv:bb.a
  %next.gep = getelementptr i8, ptr %i.w, i64 %offset.idx ; 2 uses
  %offset.idx11 = shl i64 %index, 3
  %next.gep12 = getelementptr i8, ptr %i.l, i64 %offset.idx11 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.ai = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !alias.scope !72, !noalias !69
  %wide.load13 = load <2 x i64>, ptr %i.ai, align 8, !alias.scope !72, !noalias !69
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !69, !noalias !72
  store <2 x i64> %wide.load13, ptr %i.aj, align 8, !alias.scope !69, !noalias !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
end_hunk_8
begin_hunk_9_@_ZN8v8_crdtp4cbor12_GLOBAL__N_111CBOREncoder16HandleArrayBeginEv:bb.a
.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader15, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader15 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.al = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !72, !noalias !69
  store i64 %i.al, ptr %.012.i.i.i.i.i, align 8, !alias.scope !69, !noalias !72
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.am, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8v8_crdtp4cbor15EnvelopeEncoderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !75

_ZNSt6vectorIN8v8_crdtp4cbor15EnvelopeEncoderESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN8v8_crdtp4cbor15EnvelopeEncoderESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.w, %_ZNKSt6vectorIN8v8_crdtp4cbor15EnvelopeEncoderESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.af, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i.i ] ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN8v8_crdtp4cbor12_GLOBAL__N_116ParseUTF16StringEPNS0_13CBORTokenizerEPNS_13ParserHandlerE:bb.a
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 2 uses
  %i.av = add i64 %.021, 2                        ; 2 uses
  %i.aw = icmp ult i64 %i.av, %.0.i.i
  br i1 %i.aw, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !76
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_10
begin_hunk_11_@_ZN8v8_crdtp4cbor12_GLOBAL__N_18ParseMapEiPNS0_13CBORTokenizerEPNS_13ParserHandlerE:bb.a

_ZN8v8_crdtp4cbor12_GLOBAL__N_115ParseUTF8StringEPNS0_13CBORTokenizerEPNS_13ParserHandlerE.exit: ; preds = %bb.h, %bb.g, %bb.g, %bb.i
  %i.ai = tail call fastcc noundef zeroext i1 @_ZN8v8_crdtp4cbor12_GLOBAL__N_110ParseValueEiPNS0_13CBORTokenizerEPNS_13ParserHandlerE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br i1 %i.ai, label %bb.c, label %_ZN8v8_crdtp4cbor13CBORTokenizer4NextEv.exit37, !llvm.loop !77

bb.k:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %2, align 8
end_hunk_11
begin_hunk_12_@_ZN8v8_crdtp4cbor12_GLOBAL__N_110ParseArrayEiPNS0_13CBORTokenizerEPNS_13ParserHandlerE:bb.a

bb.g:                                             ; preds = %bb.d
  %i.n = tail call fastcc noundef zeroext i1 @_ZN8v8_crdtp4cbor12_GLOBAL__N_110ParseValueEiPNS0_13CBORTokenizerEPNS_13ParserHandlerE(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br i1 %i.n, label %bb.c, label %_ZN8v8_crdtp4cbor13CBORTokenizer4NextEv.exit21, !llvm.loop !78

bb.h:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %2, align 8
end_hunk_12
begin_hunk_13_@llvm.bswap.i32
!56 = !{!57}
!57 = distinct !{!57, !55}
!58 = distinct !{!58, !6, !32, !33}
!59 = distinct !{!59, !6, !32, !33}
!60 = distinct !{!60, !6, !32}
!61 = !{ptr @_ZN8v8_crdtp4cbor12_GLOBAL__N_111CBOREncoderD2Ev}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZSt19__relocate_object_aIN8v8_crdtp4cbor15EnvelopeEncoderES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!64 = distinct !{!64, !"_ZSt19__relocate_object_aIN8v8_crdtp4cbor15EnvelopeEncoderES2_SaIS2_EEvPT_PT0_RT1_"}
!65 = !{!66}
!66 = distinct !{!66, !64, !"_ZSt19__relocate_object_aIN8v8_crdtp4cbor15EnvelopeEncoderES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!67 = distinct !{!67, !6, !32, !33}
!68 = distinct !{!68, !6, !32}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZSt19__relocate_object_aIN8v8_crdtp4cbor15EnvelopeEncoderES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!71 = distinct !{!71, !"_ZSt19__relocate_object_aIN8v8_crdtp4cbor15EnvelopeEncoderES2_SaIS2_EEvPT_PT0_RT1_"}
!72 = !{!73}
!73 = distinct !{!73, !71, !"_ZSt19__relocate_object_aIN8v8_crdtp4cbor15EnvelopeEncoderES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!74 = distinct !{!74, !6, !32, !33}
!75 = distinct !{!75, !6, !32}
!76 = distinct !{!76, !6}
!77 = distinct !{!77, !6}
!78 = distinct !{!78, !6}
end_hunk_13
