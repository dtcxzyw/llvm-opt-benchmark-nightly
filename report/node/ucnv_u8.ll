inline.NumInlined: 14
inline.NumDeleted: 3
begin_hunk_0_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  br i1 %exitcond411.not.7, label %._crit_edge343, label %vec.epilog.scalar.ph608, !llvm.loop !34

._crit_edge343:                                   ; preds = %vec.epilog.scalar.ph608.prol.loopexit, %vec.epilog.scalar.ph608, %middle.block604, %vec.epilog.middle.block619, %.preheader
  %.2198.lcssa = phi ptr [ %.1197, %.preheader ], [ %i.hv, %vec.epilog.middle.block619 ], [ %i.gu, %middle.block604 ], [ %.lcssa673.unr, %vec.epilog.scalar.ph608.prol.loopexit ], [ %i.kv, %vec.epilog.scalar.ph608 ] ; 23 uses
  %.0.lcssa = phi i8 [ 0, %.preheader ], [ %.1209, %vec.epilog.middle.block619 ], [ %.1209, %middle.block604 ], [ %.1209, %vec.epilog.scalar.ph608 ], [ %.1209, %vec.epilog.scalar.ph608.prol.loopexit ] ; 5 uses
  %.2198.lcssa624 = ptrtoaddr ptr %.2198.lcssa to i64
  %i.kw = zext nneg i8 %.1209 to i32
  %.neg249 = sub nsw i32 %i.kw, %i.gp
  %i.kx = sext i32 %.neg249 to i64
  %i.ky = getelementptr inbounds i8, ptr %.2.lcssa435, i64 %i.kx ; 22 uses
  %i.kz = icmp slt i8 %.0.lcssa, %.1218.fr
  br i1 %i.kz, label %iter.check645, label %._crit_edge351

end_hunk_0
begin_hunk_1_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a

vector.ph630:                                     ; preds = %vector.main.loop.iter.check628
  %n.mod.vf631 = and i64 %i.ld, 28
  %n.vec632 = and i64 %i.ld, 480                  ; 12 uses
  %.cast = trunc i64 %n.vec632 to i8
  %i.lj = add i8 %.0.lcssa, %.cast
  %3 = getelementptr i8, ptr %i.ky, i64 %n.vec632 ; 2 uses
  %4 = getelementptr i8, ptr %.2198.lcssa, i64 %n.vec632 ; 2 uses
  %i.lk = getelementptr i8, ptr %i.ky, i64 16
  %wide.load637 = load <16 x i8>, ptr %i.ky, align 1
  %wide.load638 = load <16 x i8>, ptr %i.lk, align 1
  %i.ll = getelementptr i8, ptr %.2198.lcssa, i64 16
  store <16 x i8> %wide.load637, ptr %.2198.lcssa, align 1
  store <16 x i8> %wide.load638, ptr %i.ll, align 1
  %5 = icmp eq i64 %n.vec632, 32
  br i1 %5, label %middle.block640, label %vector.body633.1

vector.body633.1:                                 ; preds = %vector.ph630
  %next.gep635.1 = getelementptr i8, ptr %i.ky, i64 32
  %next.gep636.1 = getelementptr i8, ptr %.2198.lcssa, i64 32
  %6 = getelementptr i8, ptr %i.ky, i64 48
  %wide.load637.1 = load <16 x i8>, ptr %next.gep635.1, align 1
  %wide.load638.1 = load <16 x i8>, ptr %6, align 1
  %7 = getelementptr i8, ptr %.2198.lcssa, i64 48
  store <16 x i8> %wide.load637.1, ptr %next.gep636.1, align 1
  store <16 x i8> %wide.load638.1, ptr %7, align 1
  %8 = icmp eq i64 %n.vec632, 64
  br i1 %8, label %middle.block640, label %vector.body633.2

vector.body633.2:                                 ; preds = %vector.body633.1
  %next.gep635.2 = getelementptr i8, ptr %i.ky, i64 64
  %next.gep636.2 = getelementptr i8, ptr %.2198.lcssa, i64 64
  %9 = getelementptr i8, ptr %i.ky, i64 80
  %wide.load637.2 = load <16 x i8>, ptr %next.gep635.2, align 1
  %wide.load638.2 = load <16 x i8>, ptr %9, align 1
  %10 = getelementptr i8, ptr %.2198.lcssa, i64 80
  store <16 x i8> %wide.load637.2, ptr %next.gep636.2, align 1
  store <16 x i8> %wide.load638.2, ptr %10, align 1
  %11 = icmp eq i64 %n.vec632, 96
  br i1 %11, label %middle.block640, label %vector.body633.3

vector.body633.3:                                 ; preds = %vector.body633.2
  %next.gep635.3 = getelementptr i8, ptr %i.ky, i64 96
  %next.gep636.3 = getelementptr i8, ptr %.2198.lcssa, i64 96
  %12 = getelementptr i8, ptr %i.ky, i64 112
  %wide.load637.3 = load <16 x i8>, ptr %next.gep635.3, align 1
  %wide.load638.3 = load <16 x i8>, ptr %12, align 1
  %13 = getelementptr i8, ptr %.2198.lcssa, i64 112
  store <16 x i8> %wide.load637.3, ptr %next.gep636.3, align 1
  store <16 x i8> %wide.load638.3, ptr %13, align 1
  %14 = icmp eq i64 %n.vec632, 128
  br i1 %14, label %middle.block640, label %vector.body633.4

vector.body633.4:                                 ; preds = %vector.body633.3
  %next.gep635.4 = getelementptr i8, ptr %i.ky, i64 128
  %next.gep636.4 = getelementptr i8, ptr %.2198.lcssa, i64 128
  %15 = getelementptr i8, ptr %i.ky, i64 144
  %wide.load637.4 = load <16 x i8>, ptr %next.gep635.4, align 1
  %wide.load638.4 = load <16 x i8>, ptr %15, align 1
  %16 = getelementptr i8, ptr %.2198.lcssa, i64 144
  store <16 x i8> %wide.load637.4, ptr %next.gep636.4, align 1
  store <16 x i8> %wide.load638.4, ptr %16, align 1
  %17 = icmp eq i64 %n.vec632, 160
  br i1 %17, label %middle.block640, label %vector.body633.5

vector.body633.5:                                 ; preds = %vector.body633.4
  %next.gep635.5 = getelementptr i8, ptr %i.ky, i64 160
  %next.gep636.5 = getelementptr i8, ptr %.2198.lcssa, i64 160
  %18 = getelementptr i8, ptr %i.ky, i64 176
  %wide.load637.5 = load <16 x i8>, ptr %next.gep635.5, align 1
  %wide.load638.5 = load <16 x i8>, ptr %18, align 1
  %19 = getelementptr i8, ptr %.2198.lcssa, i64 176
  store <16 x i8> %wide.load637.5, ptr %next.gep636.5, align 1
  store <16 x i8> %wide.load638.5, ptr %19, align 1
  %20 = icmp eq i64 %n.vec632, 192
  br i1 %20, label %middle.block640, label %vector.body633

vector.body633:                                   ; preds = %vector.body633.5
  %next.gep635 = getelementptr i8, ptr %i.ky, i64 192
  %next.gep636 = getelementptr i8, ptr %.2198.lcssa, i64 192
  %i.lm = getelementptr i8, ptr %i.ky, i64 208
  %wide.load637.a = load <16 x i8>, ptr %next.gep635, align 1
  %wide.load638.a = load <16 x i8>, ptr %i.lm, align 1
  %i.ln = getelementptr i8, ptr %.2198.lcssa, i64 208
  store <16 x i8> %wide.load637.a, ptr %next.gep636, align 1
  store <16 x i8> %wide.load638.a, ptr %i.ln, align 1
  %i.lo = icmp eq i64 %n.vec632, 224
  br i1 %i.lo, label %middle.block640, label %vector.body633.7

vector.body633.7:                                 ; preds = %vector.body633
  %next.gep635.7 = getelementptr i8, ptr %i.ky, i64 224
  %next.gep636.7 = getelementptr i8, ptr %.2198.lcssa, i64 224
  %21 = getelementptr i8, ptr %i.ky, i64 240
  %wide.load637.7 = load <16 x i8>, ptr %next.gep635.7, align 1
  %wide.load638.7 = load <16 x i8>, ptr %21, align 1
  %22 = getelementptr i8, ptr %.2198.lcssa, i64 240
  store <16 x i8> %wide.load637.7, ptr %next.gep636.7, align 1
  store <16 x i8> %wide.load638.7, ptr %22, align 1
  br label %middle.block640

middle.block640:                                  ; preds = %vector.body633.7, %vector.body633, %vector.body633.5, %vector.body633.4, %vector.body633.3, %vector.body633.2, %vector.body633.1, %vector.ph630
  %cmp.n641 = icmp eq i64 %i.ld, %n.vec632
  br i1 %cmp.n641, label %._crit_edge351, label %vec.epilog.iter.check647

end_hunk_1
begin_hunk_2_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  store <4 x i8> %wide.load657, ptr %next.gep656, align 1
  %index.next658 = add nuw i64 %index654, 4       ; 2 uses
  %i.ls = icmp eq i64 %index.next658, %n.vec651
  br i1 %i.ls, label %vec.epilog.middle.block659, label %vec.epilog.vector.body653, !llvm.loop !35

vec.epilog.middle.block659:                       ; preds = %vec.epilog.vector.body653
  %cmp.n660 = icmp eq i64 %i.ld, %n.vec651
end_hunk_2
begin_hunk_3_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a

.lr.ph350.preheader:                              ; preds = %vector.memcheck623, %iter.check645, %vec.epilog.iter.check647, %vec.epilog.middle.block659
  %.1348.ph = phi i8 [ %.0.lcssa, %iter.check645 ], [ %.0.lcssa, %vector.memcheck623 ], [ %i.lj, %vec.epilog.iter.check647 ], [ %i.lp, %vec.epilog.middle.block659 ] ; 4 uses
  %.5347.ph = phi ptr [ %i.ky, %iter.check645 ], [ %i.ky, %vector.memcheck623 ], [ %3, %vec.epilog.iter.check647 ], [ %i.lq, %vec.epilog.middle.block659 ] ; 2 uses
  %.3199346.ph = phi ptr [ %.2198.lcssa, %iter.check645 ], [ %.2198.lcssa, %vector.memcheck623 ], [ %4, %vec.epilog.iter.check647 ], [ %i.lr, %vec.epilog.middle.block659 ] ; 2 uses
  %i.lt = sub i8 %.1218.fr, %.1348.ph
  %xtraiter721 = and i8 %i.lt, 7                  ; 2 uses
  %lcmp.mod722.not = icmp eq i8 %xtraiter721, 0
end_hunk_3
begin_hunk_4_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.lx = add nuw nsw i8 %.1348.prol, 1           ; 2 uses
  %prol.iter723.next = add i8 %prol.iter723, 1    ; 2 uses
  %prol.iter723.cmp.not = icmp eq i8 %prol.iter723.next, %xtraiter721
  br i1 %prol.iter723.cmp.not, label %.lr.ph350.prol.loopexit, label %.lr.ph350.prol, !llvm.loop !36

.lr.ph350.prol.loopexit:                          ; preds = %.lr.ph350.prol, %.lr.ph350.preheader
  %.lcssa672.unr = phi ptr [ poison, %.lr.ph350.preheader ], [ %i.lu, %.lr.ph350.prol ]
end_hunk_4
begin_hunk_5_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  store i8 %i.mw, ptr %i.mu, align 1
  %i.my = add nuw nsw i8 %.1348, 8                ; 2 uses
  %exitcond412.not.7 = icmp eq i8 %i.my, %.1218.fr
  br i1 %exitcond412.not.7, label %._crit_edge351, label %.lr.ph350, !llvm.loop !37

._crit_edge351:                                   ; preds = %.lr.ph350.prol.loopexit, %.lr.ph350, %middle.block640, %vec.epilog.middle.block659, %._crit_edge343
  %.3199.lcssa = phi ptr [ %.2198.lcssa, %._crit_edge343 ], [ %i.lr, %vec.epilog.middle.block659 ], [ %4, %middle.block640 ], [ %.lcssa671.unr, %.lr.ph350.prol.loopexit ], [ %i.mx, %.lr.ph350 ]
  %.5.lcssa = phi ptr [ %i.ky, %._crit_edge343 ], [ %i.lq, %vec.epilog.middle.block659 ], [ %3, %middle.block640 ], [ %.lcssa672.unr, %.lr.ph350.prol.loopexit ], [ %i.mv, %.lr.ph350 ]
  %i.mz = sub nsw i32 %.3203, %i.gp
  br label %.preheader261, !llvm.loop !20

end_hunk_5
begin_hunk_6_@_ZL17ucnv_UTF8FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  store i8 %i.oe, ptr %i.pc, align 1
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oc, i64 1 ; 3 uses
  %i.pe = icmp eq ptr %i.pd, %i.g
  br i1 %i.pe, label %._crit_edge302, label %bb.at, !llvm.loop !38

bb.ba:                                            ; preds = %bb.ar
  store i32 -127, ptr %2, align 4
end_hunk_6
begin_hunk_7_@llvm.umax.i64
!33 = distinct !{!33, !6, !15}
!34 = distinct !{!34, !6, !15}
!35 = distinct !{!35, !6, !15, !16}
!36 = distinct !{!36, !25}
!37 = distinct !{!37, !6, !15}
!38 = distinct !{!38, !6}
end_hunk_7
