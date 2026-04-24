inline.NumInlined: 14
inline.NumDeleted: 3
begin_hunk_0_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  br i1 %exitcond411.not.7, label %._crit_edge343, label %vec.epilog.scalar.ph608, !llvm.loop !34

._crit_edge343:                                   ; preds = %vec.epilog.scalar.ph608.prol.loopexit, %vec.epilog.scalar.ph608, %middle.block604, %vec.epilog.middle.block619, %.preheader
  %.2198.lcssa = phi ptr [ %.1197, %.preheader ], [ %i.hv, %vec.epilog.middle.block619 ], [ %i.gu, %middle.block604 ], [ %.lcssa673.unr, %vec.epilog.scalar.ph608.prol.loopexit ], [ %i.kv, %vec.epilog.scalar.ph608 ] ; 8 uses
  %.0.lcssa = phi i8 [ 0, %.preheader ], [ %.1209, %vec.epilog.middle.block619 ], [ %.1209, %middle.block604 ], [ %.1209, %vec.epilog.scalar.ph608 ], [ %.1209, %vec.epilog.scalar.ph608.prol.loopexit ] ; 5 uses
  %.2198.lcssa624 = ptrtoaddr ptr %.2198.lcssa to i64
  %i.kw = zext nneg i8 %.1209 to i32
  %.neg249 = sub nsw i32 %i.kw, %i.gp
  %i.kx = sext i32 %.neg249 to i64
  %i.ky = getelementptr inbounds i8, ptr %.2.lcssa435, i64 %i.kx ; 7 uses
  %i.kz = icmp slt i8 %.0.lcssa, %.1218.fr
  br i1 %i.kz, label %iter.check645, label %._crit_edge351

end_hunk_0
begin_hunk_1_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a

vector.ph630:                                     ; preds = %vector.main.loop.iter.check628
  %n.mod.vf631 = and i64 %i.ld, 28
  %n.vec632 = and i64 %i.ld, 480                  ; 6 uses
  %.cast = trunc i64 %n.vec632 to i8
  %i.lj = add i8 %.0.lcssa, %.cast
  %i.lk = getelementptr i8, ptr %i.ky, i64 %n.vec632 ; 2 uses
  %i.ll = getelementptr i8, ptr %.2198.lcssa, i64 %n.vec632 ; 2 uses
  br label %vector.body633

vector.body633:                                   ; preds = %vector.body633, %vector.ph630
  %index634 = phi i64 [ 0, %vector.ph630 ], [ %index.next639, %vector.body633 ] ; 3 uses
  %next.gep635 = getelementptr i8, ptr %i.ky, i64 %index634 ; 2 uses
  %next.gep636 = getelementptr i8, ptr %.2198.lcssa, i64 %index634 ; 2 uses
  %i.lm = getelementptr i8, ptr %next.gep635, i64 16
  %wide.load637.a = load <16 x i8>, ptr %next.gep635, align 1
  %wide.load638.a = load <16 x i8>, ptr %i.lm, align 1
  %i.ln = getelementptr i8, ptr %next.gep636, i64 16
  store <16 x i8> %wide.load637.a, ptr %next.gep636, align 1
  store <16 x i8> %wide.load638.a, ptr %i.ln, align 1
  %index.next639 = add nuw i64 %index634, 32      ; 2 uses
  %i.lo = icmp eq i64 %index.next639, %n.vec632
  br i1 %i.lo, label %middle.block640, label %vector.body633, !llvm.loop !35

middle.block640:                                  ; preds = %vector.body633
  %cmp.n641 = icmp eq i64 %i.ld, %n.vec632
  br i1 %cmp.n641, label %._crit_edge351, label %vec.epilog.iter.check647

end_hunk_1
begin_hunk_2_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  store <4 x i8> %wide.load657, ptr %next.gep656, align 1
  %index.next658 = add nuw i64 %index654, 4       ; 2 uses
  %i.ls = icmp eq i64 %index.next658, %n.vec651
  br i1 %i.ls, label %vec.epilog.middle.block659, label %vec.epilog.vector.body653, !llvm.loop !36

vec.epilog.middle.block659:                       ; preds = %vec.epilog.vector.body653
  %cmp.n660 = icmp eq i64 %i.ld, %n.vec651
end_hunk_2
begin_hunk_3_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a

.lr.ph350.preheader:                              ; preds = %vector.memcheck623, %iter.check645, %vec.epilog.iter.check647, %vec.epilog.middle.block659
  %.1348.ph = phi i8 [ %.0.lcssa, %iter.check645 ], [ %.0.lcssa, %vector.memcheck623 ], [ %i.lj, %vec.epilog.iter.check647 ], [ %i.lp, %vec.epilog.middle.block659 ] ; 4 uses
  %.5347.ph = phi ptr [ %i.ky, %iter.check645 ], [ %i.ky, %vector.memcheck623 ], [ %i.lk, %vec.epilog.iter.check647 ], [ %i.lq, %vec.epilog.middle.block659 ] ; 2 uses
  %.3199346.ph = phi ptr [ %.2198.lcssa, %iter.check645 ], [ %.2198.lcssa, %vector.memcheck623 ], [ %i.ll, %vec.epilog.iter.check647 ], [ %i.lr, %vec.epilog.middle.block659 ] ; 2 uses
  %i.lt = sub i8 %.1218.fr, %.1348.ph
  %xtraiter721 = and i8 %i.lt, 7                  ; 2 uses
  %lcmp.mod722.not = icmp eq i8 %xtraiter721, 0
end_hunk_3
begin_hunk_4_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.lx = add nuw nsw i8 %.1348.prol, 1           ; 2 uses
  %prol.iter723.next = add i8 %prol.iter723, 1    ; 2 uses
  %prol.iter723.cmp.not = icmp eq i8 %prol.iter723.next, %xtraiter721
  br i1 %prol.iter723.cmp.not, label %.lr.ph350.prol.loopexit, label %.lr.ph350.prol, !llvm.loop !37

.lr.ph350.prol.loopexit:                          ; preds = %.lr.ph350.prol, %.lr.ph350.preheader
  %.lcssa672.unr = phi ptr [ poison, %.lr.ph350.preheader ], [ %i.lu, %.lr.ph350.prol ]
end_hunk_4
begin_hunk_5_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  store i8 %i.mw, ptr %i.mu, align 1
  %i.my = add nuw nsw i8 %.1348, 8                ; 2 uses
  %exitcond412.not.7 = icmp eq i8 %i.my, %.1218.fr
  br i1 %exitcond412.not.7, label %._crit_edge351, label %.lr.ph350, !llvm.loop !38

._crit_edge351:                                   ; preds = %.lr.ph350.prol.loopexit, %.lr.ph350, %middle.block640, %vec.epilog.middle.block659, %._crit_edge343
  %.3199.lcssa = phi ptr [ %.2198.lcssa, %._crit_edge343 ], [ %i.lr, %vec.epilog.middle.block659 ], [ %i.ll, %middle.block640 ], [ %.lcssa671.unr, %.lr.ph350.prol.loopexit ], [ %i.mx, %.lr.ph350 ]
  %.5.lcssa = phi ptr [ %i.ky, %._crit_edge343 ], [ %i.lq, %vec.epilog.middle.block659 ], [ %i.lk, %middle.block640 ], [ %.lcssa672.unr, %.lr.ph350.prol.loopexit ], [ %i.mv, %.lr.ph350 ]
  %i.mz = sub nsw i32 %.3203, %i.gp
  br label %.preheader261, !llvm.loop !20

end_hunk_5
begin_hunk_6_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  store i8 %i.oe, ptr %i.pc, align 1
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oc, i64 1 ; 3 uses
  %i.pe = icmp eq ptr %i.pd, %i.g
  br i1 %i.pe, label %._crit_edge302, label %bb.at, !llvm.loop !39

bb.ba:                                            ; preds = %bb.ar
  store i32 -127, ptr %2, align 4
end_hunk_6
begin_hunk_7_@llvm.umax.i64
!33 = distinct !{!33, !6, !15}
!34 = distinct !{!34, !6, !15}
!35 = distinct !{!35, !6, !15, !16}
!36 = distinct !{!36, !6, !15, !16}
!37 = distinct !{!37, !25}
!38 = distinct !{!38, !6, !15}
!39 = distinct !{!39, !6}
end_hunk_7
