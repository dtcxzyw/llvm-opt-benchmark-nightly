inline.NumInlined: 667
inline.NumDeleted: 261
begin_hunk_0_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.e, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.g, %bb.d ], [ %.082.be, %.backedge ] ; 20 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 24 uses
  %i.au = sub nsw i64 %.086, %.082                ; 12 uses
  %i.av = icmp slt i64 %.082, %i.au
  br i1 %i.av, label %bb.f, label %bb.i

end_hunk_0
begin_hunk_1_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  br i1 %i.bb, label %.lr.ph109.preheader.a, label %._crit_edge110

.lr.ph109.preheader.a:                            ; preds = %bb.g
  %i.bc = getelementptr i8, ptr %.058, i64 %.082  ; 5 uses
  %min.iters.check = icmp ult i64 %i.au, 64
  br i1 %min.iters.check, label %.lr.ph109.preheader239, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph109.preheader.a
end_hunk_1
begin_hunk_2_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %bound0 = icmp ult ptr %.058, %scevgep135
  %bound1 = icmp ult ptr %i.bc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph109.preheader239, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.au, 9223372036854775744     ; 5 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 %n.vec
  %i.be = getelementptr i8, ptr %.058, i64 %n.vec ; 2 uses
  br label %vector.body
end_hunk_2
begin_hunk_3_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  store <32 x i8> %wide.load137, ptr %i.bg, align 1, !tbaa !12, !alias.scope !158
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block.a, label %vector.body, !llvm.loop !160

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n.a, label %._crit_edge110, label %.lr.ph109.preheader239

.lr.ph109.preheader239:                           ; preds = %vector.memcheck, %.lr.ph109.preheader.a, %middle.block.a
  %.054107.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph109.preheader.a ], [ %n.vec, %middle.block.a ] ; 3 uses
  %.055106.ph = phi ptr [ %i.bc, %vector.memcheck ], [ %i.bc, %.lr.ph109.preheader.a ], [ %i.bd, %middle.block.a ] ; 2 uses
  %.159105.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %.lr.ph109.preheader.a ], [ %i.be, %middle.block.a ] ; 2 uses
  %i.bi = sub i64 %.086, %.082
  %xtraiter246 = and i64 %i.bi, 3                 ; 2 uses
  %lcmp.mod247.not = icmp eq i64 %xtraiter246, 0
end_hunk_3
begin_hunk_4_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.bn = add nuw nsw i64 %.054107.prol, 1        ; 2 uses
  %prol.iter248.next = add i64 %prol.iter248, 1   ; 2 uses
  %prol.iter248.cmp.not = icmp eq i64 %prol.iter248.next, %xtraiter246
  br i1 %prol.iter248.cmp.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol, !llvm.loop !161

.lr.ph109.prol.loopexit:                          ; preds = %.lr.ph109.prol, %.lr.ph109.preheader239
  %.lcssa.unr = phi ptr [ poison, %.lr.ph109.preheader239 ], [ %i.bl, %.lr.ph109.prol ]
end_hunk_4
begin_hunk_5_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109, %middle.block.a, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.be, %middle.block.a ], [ %.lcssa.unr, %.lr.ph109.prol.loopexit ], [ %i.cg, %.lr.ph109 ]
  %i.br = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.br, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit, label %bb.h
end_hunk_5
begin_hunk_6_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %.055106, i64 4
  %i.ci = add nuw nsw i64 %.054107, 4             ; 2 uses
  %exitcond118.not.3 = icmp eq i64 %i.ci, %i.au
  br i1 %exitcond118.not.3, label %._crit_edge110, label %.lr.ph109, !llvm.loop !162

bb.h:                                             ; preds = %._crit_edge110
  %i.cj = sub nsw i64 %.082, %i.br
end_hunk_6
begin_hunk_7_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %next.gep157 = getelementptr i8, ptr %i.cu, i64 %offset.idx156 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %next.gep157, i64 -32 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %next.gep157, i64 -64 ; 2 uses
  %wide.load158 = load <32 x i8>, ptr %i.da, align 1, !tbaa !12, !alias.scope !163, !noalias !166
  %wide.load159 = load <32 x i8>, ptr %i.db, align 1, !tbaa !12, !alias.scope !163, !noalias !166
  %i.dc = getelementptr inbounds i8, ptr %next.gep155, i64 -32 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %next.gep155, i64 -64 ; 2 uses
  %wide.load161 = load <32 x i8>, ptr %i.dc, align 1, !tbaa !12, !alias.scope !166
  %wide.load162 = load <32 x i8>, ptr %i.dd, align 1, !tbaa !12, !alias.scope !166
  store <32 x i8> %wide.load161, ptr %i.da, align 1, !tbaa !12, !alias.scope !163, !noalias !166
  store <32 x i8> %wide.load162, ptr %i.db, align 1, !tbaa !12, !alias.scope !163, !noalias !166
  store <32 x i8> %wide.load158, ptr %i.dc, align 1, !tbaa !12, !alias.scope !166
  store <32 x i8> %wide.load159, ptr %i.dd, align 1, !tbaa !12, !alias.scope !166
  %index.next169 = add nuw i64 %index154, 64      ; 2 uses
  %i.de = icmp eq i64 %index.next169, %n.vec152
  br i1 %i.de, label %middle.block170, label %vector.body153, !llvm.loop !168

middle.block170:                                  ; preds = %vector.body153
  %cmp.n171 = icmp eq i64 %.082, %n.vec152
end_hunk_7
begin_hunk_8_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a

vec.epilog.iter.check.a:                          ; preds = %middle.block170
  %min.epilog.iters.check.a = icmp eq i64 %n.mod.vf151, 0
  br i1 %min.epilog.iters.check.a, label %.lr.ph.preheader, label %vec.epilog.ph.a, !prof !169

vec.epilog.ph.a:                                  ; preds = %vector.main.loop.iter.check.a, %vec.epilog.iter.check.a
  %vec.epilog.resume.val.a = phi i64 [ %n.vec152, %vec.epilog.iter.check.a ], [ 0, %vector.main.loop.iter.check.a ]
end_hunk_8
begin_hunk_9_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.dk = sub i64 0, %index176
  %next.gep178 = getelementptr i8, ptr %i.cu, i64 %i.dk
  %i.dl = getelementptr inbounds i8, ptr %next.gep178, i64 -8 ; 2 uses
  %wide.load179 = load <8 x i8>, ptr %i.dl, align 1, !tbaa !12, !alias.scope !163, !noalias !166
  %i.dm = getelementptr inbounds i8, ptr %next.gep177, i64 -8 ; 2 uses
  %wide.load181 = load <8 x i8>, ptr %i.dm, align 1, !tbaa !12, !alias.scope !166
  store <8 x i8> %wide.load181, ptr %i.dl, align 1, !tbaa !12, !alias.scope !163, !noalias !166
  store <8 x i8> %wide.load179, ptr %i.dm, align 1, !tbaa !12, !alias.scope !166
  %index.next185 = add nuw i64 %index176, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next185, %n.vec175
  br i1 %i.dn, label %vec.epilog.middle.block, label %vec.epilog.vector.body.a, !llvm.loop !170

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body.a
  %cmp.n186 = icmp eq i64 %.082, %n.vec175
end_hunk_9
begin_hunk_10_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %i.ds = add nuw nsw i64 %.0104.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !171

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0104.unr = phi i64 [ %.0104.ph, %.lr.ph.preheader ], [ %i.ds, %.lr.ph.prol ]
end_hunk_10
begin_hunk_11_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.au, %._crit_edge ]
  %.082.be = phi i64 [ %i.cj, %bb.h ], [ %i.dv, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !172

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0104 = phi i64 [ %i.em, %.lr.ph ], [ %.0104.unr, %.lr.ph.prol.loopexit ]
end_hunk_11
begin_hunk_12_@_ZNSt3_V28__rotateIPcEET_S2_S2_S2_St26random_access_iterator_tag:bb.a
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !12
  %i.em = add nuw nsw i64 %.0104, 4               ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.em, %.082
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !173

_ZSt11swap_rangesIPcS0_ET0_T_S2_S1_.exit:         ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block216, %vec.epilog.middle.block235, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.at, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit ], [ %i.at, %_ZSt4moveIPcS0_ET0_T_S2_S1_.exit ], [ %1, %middle.block216 ], [ %1, %.lr.ph.i.prol.loopexit ], [ %1, %vec.epilog.middle.block235 ], [ %1, %.lr.ph.i ], [ %i.at, %._crit_edge110 ], [ %i.at, %._crit_edge ]
end_hunk_12
begin_hunk_13_@_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EdEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi:bb.a
  store i8 48, ptr %i.ad, align 1, !tbaa !12
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter152
  br i1 %prol.iter.cmp.not, label %.lr.ph104.i.prol.loopexit, label %.lr.ph104.i.prol, !llvm.loop !174

.lr.ph104.i.prol.loopexit:                        ; preds = %.lr.ph104.i.prol, %.lr.ph104.i.preheader
  %.044102.i.unr = phi i64 [ %i.z, %.lr.ph104.i.preheader ], [ %i.ac, %.lr.ph104.i.prol ]
end_hunk_13
begin_hunk_14_@_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EdEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi:bb.a
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !36
  store i8 48, ptr %i.an, align 1, !tbaa !12
  %.not58.i.3 = icmp eq i64 %i.am, 0
  br i1 %.not58.i.3, label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph104.i, !llvm.loop !175

bb.g:                                             ; preds = %bb.b
  %i.ap = icmp samesign ult i32 %1, -60
end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EdEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi:bb.a
  %i.bj = mul nuw i64 %.097.i, 10                 ; 3 uses
  %i.bk = add nsw i32 %i.bi, -1                   ; 2 uses
  %.not55.i = icmp ugt i64 %i.bj, %i.as
  br i1 %.not55.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !176

.loopexit.i:                                      ; preds = %.preheader.i
  store i32 %i.bk, ptr %4, align 4, !tbaa !3
end_hunk_15
begin_hunk_16_@_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EdEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi:bb.a
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !12
  %i.cz = add nsw i64 %.143100.i, -2              ; 2 uses
  %.not56.i.1 = icmp eq i64 %i.cz, 0
  br i1 %.not56.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !177

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.n
  %.3.lcssa.i = phi i64 [ %.292.i, %bb.n ], [ %.lcssa147.unr, %.lr.ph.i.prol.loopexit ], [ %i.cv, %.lr.ph.i ]
end_hunk_16
begin_hunk_17_@_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EdEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi:bb.a
  store i8 48, ptr %i.ez, align 1, !tbaa !12
  %prol.iter156.next = add i64 %prol.iter156, 1   ; 2 uses
  %prol.iter156.cmp.not = icmp eq i64 %prol.iter156.next, %xtraiter154
  br i1 %prol.iter156.cmp.not, label %.lr.ph104.i57.prol.loopexit, label %.lr.ph104.i57.prol, !llvm.loop !178

.lr.ph104.i57.prol.loopexit:                      ; preds = %.lr.ph104.i57.prol, %.lr.ph104.i57.preheader
  %.044102.i58.unr = phi i64 [ %i.ev, %.lr.ph104.i57.preheader ], [ %i.ey, %.lr.ph104.i57.prol ]
end_hunk_17
begin_hunk_18_@_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EdEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi:bb.a
  store ptr %i.fk, ptr %i.c, align 8, !tbaa !36
  store i8 48, ptr %i.fj, align 1, !tbaa !12
  %.not58.i59.3 = icmp eq i64 %i.fi, 0
  br i1 %.not58.i59.3, label %_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_117FloatToBufferImplIodLNS2_11FormatStyleE1EEEbT_imPNS2_6BufferEPi.exit, label %.lr.ph104.i57, !llvm.loop !179

bb.z:                                             ; preds = %bb.g
  %i.fl = zext i64 %0 to i128                     ; 3 uses
end_hunk_18
begin_hunk_19_@_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EdEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi:bb.a
  %i.ge = mul nuw i128 %.097.i46, 10              ; 3 uses
  %i.gf = add nsw i32 %i.gd, -1                   ; 2 uses
  %.not55.i47 = icmp ugt i128 %i.ge, %i.fp
  br i1 %.not55.i47, label %.loopexit.i48, label %.preheader.i45, !llvm.loop !180

.loopexit.i48:                                    ; preds = %.preheader.i45
  store i32 %i.gf, ptr %4, align 4, !tbaa !3
end_hunk_19
begin_hunk_20_@_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_113FloatToBufferILNS2_11FormatStyleE1EdEEbNS2_10DecomposedIT0_EEmPNS2_6BufferEPi:bb.a
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !12
  %i.hu = add nsw i64 %.143100.i21, -2            ; 2 uses
  %.not56.i23.1 = icmp eq i64 %i.hu, 0
  br i1 %.not56.i23.1, label %._crit_edge.i24, label %.lr.ph.i20, !llvm.loop !181

._crit_edge.i24:                                  ; preds = %.lr.ph.i20.prol.loopexit, %.lr.ph.i20, %bb.ag
  %.3.lcssa.i25 = phi i128 [ %.292.i17, %bb.ag ], [ %.lcssa141.unr, %.lr.ph.i20.prol.loopexit ], [ %i.hq, %.lr.ph.i20 ]
end_hunk_20
begin_hunk_21_@_ZN4absl12lts_2024011619str_format_internal12_GLOBAL__N_118FallbackToSnprintfIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  store i8 37, ptr %i.a, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !7, !noalias !182
  call void @_ZN4absl12lts_2024011619str_format_internal13FlagsToStringB5cxx11ENS1_5FlagsE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i8 noundef zeroext %i.i)
  %i.j = load ptr, ptr %3, align 8, !tbaa !70     ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_21
begin_hunk_22_@llvm.smin.i32
!158 = !{!159}
!159 = distinct !{!159, !157}
!160 = distinct !{!160, !34, !149, !150}
!161 = distinct !{!161, !41}
!162 = distinct !{!162, !34, !149}
!163 = !{!164}
!164 = distinct !{!164, !165}
!165 = distinct !{!165, !"LVerDomain"}
!166 = !{!167}
!167 = distinct !{!167, !165}
!168 = distinct !{!168, !34, !149, !150}
!169 = !{!"branch_weights", i32 8, i32 56}
!170 = distinct !{!170, !34, !149, !150}
!171 = distinct !{!171, !41}
!172 = distinct !{!172, !34}
!173 = distinct !{!173, !34, !149}
!174 = distinct !{!174, !41}
!175 = distinct !{!175, !34}
!176 = distinct !{!176, !34}
!177 = distinct !{!177, !34}
!178 = distinct !{!178, !41}
!179 = distinct !{!179, !34}
!180 = distinct !{!180, !34}
!181 = distinct !{!181, !34}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZN4absl12lts_2024011619str_format_internal30FormatConversionSpecImplFriend13FlagsToStringB5cxx11ERKNS1_24FormatConversionSpecImplE: argument 0"}
!184 = distinct !{!184, !"_ZN4absl12lts_2024011619str_format_internal30FormatConversionSpecImplFriend13FlagsToStringB5cxx11ERKNS1_24FormatConversionSpecImplE"}
end_hunk_22
